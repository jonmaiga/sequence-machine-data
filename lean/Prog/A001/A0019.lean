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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
# A001900: Successive numerators of Wallis's approximation to Pi/2 (unreduced).

The programs for A001900, the canonical program `A001900.P13307122421506575962` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001900 has offset 0).

The definition of A001900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001900.P13307122421506575962

`(n+n%2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001900

/-- `(n+n%2)*a(n-1)` -/
def P13307122421506575962.Spec : Prop :=
  ∀ n, (P13307122421506575962.a n : ℤ) = A001900 n

theorem P13307122421506575962.correct : P13307122421506575962.Spec := by
  intro n
  simp only [A001900]

end A001900

/-! ## A001900.P13764242131986364235

`2^n*A010551(n)`
-/

namespace A001900.P13764242131986364235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010551 n

end

end A001900.P13764242131986364235

namespace A001900

/-- `2^n*A010551(n)` -/
def P13764242131986364235.Spec : Prop :=
  ∀ n, P13764242131986364235.a n = A001900 n

end A001900

/-! ## A001900.P18208464404350602452

`∏[(n%2)^n+n]`
-/

namespace A001900.P18208464404350602452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001900.P18208464404350602452

namespace A001900

/-- `∏[(n%2)^n+n]` -/
def P18208464404350602452.Spec : Prop :=
  ∀ n, (P18208464404350602452.a n : ℤ) = A001900 n

end A001900

/-! ## A001900.P11693651603250134787

`∏[and(1, n)^n+n]`
-/

namespace A001900.P11693651603250134787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001900.P11693651603250134787

namespace A001900

/-- `∏[and(1, n)^n+n]` -/
def P11693651603250134787.Spec : Prop :=
  ∀ n, (P11693651603250134787.a n : ℤ) = A001900 n

end A001900

/-! ## A001900.P11388252275971567977

`∏[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001900.P11388252275971567977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001900.P11388252275971567977

namespace A001900

/-- `∏[a(n-2)+2]` -/
def P11388252275971567977.Spec : Prop :=
  ∀ n, (P11388252275971567977.a n : ℤ) = A001900 n

end A001900

/-! ## A001900.P17159425681846456920

`∏[char[comp[2*(n+1)]]+n]`
-/

namespace A001900.P17159425681846456920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001900.P17159425681846456920

namespace A001900

/-- `∏[char[comp[2*(n+1)]]+n]` -/
def P17159425681846456920.Spec : Prop :=
  ∀ n, (P17159425681846456920.a n : ℤ) = A001900 n

end A001900

/-! ## A001900.P1685904072290734590

`(and(1, n)+n)*a(n-1)` with `a(0)=1`
-/

namespace A001900.P1685904072290734590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 n + n) * a (n - 1)

end

end A001900.P1685904072290734590

namespace A001900

/-- `(and(1, n)+n)*a(n-1)` -/
def P1685904072290734590.Spec : Prop :=
  ∀ n, (P1685904072290734590.a n : ℤ) = A001900 n

end A001900

/-! ## A001900.P7186546929563258031

`a(n-1)*∑[(2*n)%4]` with `a(0)=1`
-/

namespace A001900.P7186546929563258031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 4

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001900.P7186546929563258031

namespace A001900

/-- `a(n-1)*∑[(2*n)%4]` -/
def P7186546929563258031.Spec : Prop :=
  ∀ n, (P7186546929563258031.a n : ℤ) = A001900 n

end A001900

/-!
# A001901: Successive numerators of Wallis's approximation to Pi/2 (reduced).

The programs for A001901, the canonical program `A001901.P5133503621029390084` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001901 has offset 0).

The definition of A001901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001901.P5133503621029390084

`∏[gcd(2^n, ∑[2*n])]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001901

/-- `∏[gcd(2^n, ∑[2*n])]` -/
def P5133503621029390084.Spec : Prop :=
  ∀ n, (P5133503621029390084.a n : ℤ) = A001901 n

theorem P5133503621029390084.correct : P5133503621029390084.Spec := by
  intro n
  simp only [A001901]

end A001901

/-! ## A001901.P7818306095249017419

`2^∑[∑{e}[and(n+1, -n), #]]`
-/

namespace A001901.P7818306095249017419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001901.P7818306095249017419

namespace A001901

/-- `2^∑[∑{e}[and(n+1, -n), #]]` -/
def P7818306095249017419.Spec : Prop :=
  ∀ n, (P7818306095249017419.a n : ℤ) = A001901 n

end A001901

/-! ## A001901.P17622563399942186544

`and(n+1, -n)*a(n-1)` with `a(0)=1`
-/

namespace A001901.P17622563399942186544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n + 1 : ℤ) (-(n : ℤ)) * a (n - 1)

end

end A001901.P17622563399942186544

namespace A001901

/-- `and(n+1, -n)*a(n-1)` -/
def P17622563399942186544.Spec : Prop :=
  ∀ n, P17622563399942186544.a n = A001901 n

end A001901

/-! ## A001901.P15145422043925089377

`2^n*a(∑[char[or(2, n)+1]])` with `a(0)=1`
-/

namespace A001901.P15145422043925089377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n * a (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001901.P15145422043925089377

namespace A001901

/-- `2^n*a(∑[char[or(2, n)+1]])` -/
def P15145422043925089377.Spec : Prop :=
  ∀ n, (P15145422043925089377.a n : ℤ) = A001901 n

end A001901

/-! ## A001901.P14590025667045734141

`2*gcd(a(n-1), ∑[n])*a(n-1)` with `a(0)=1`
-/

namespace A001901.P14590025667045734141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.gcd (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A001901.P14590025667045734141

namespace A001901

/-- `2*gcd(a(n-1), ∑[n])*a(n-1)` -/
def P14590025667045734141.Spec : Prop :=
  ∀ n, (P14590025667045734141.a n : ℤ) = A001901 n

end A001901

/-! ## A001901.P667288474845773657

`floor(and(n+1, n-2*n)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001901.P667288474845773657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - (2 * n : ℤ)) * a (n - 1)

end

end A001901.P667288474845773657

namespace A001901

/-- `floor(and(n+1, n-2*n)*a(n-1))` -/
def P667288474845773657.Spec : Prop :=
  ∀ n, P667288474845773657.a n = A001901 n

end A001901

/-! ## A001901.P7883636201828738024

`∏[(2^val(n+1, 2))²]/2^val(n+1, 2)`
-/

namespace A001901.P7883636201828738024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A001901.P7883636201828738024

namespace A001901

/-- `∏[(2^val(n+1, 2))²]/2^val(n+1, 2)` -/
def P7883636201828738024.Spec : Prop :=
  ∀ n, P7883636201828738024.a n = (A001901 n : ℚ)

end A001901

/-! ## A001901.P15132324692505946946

`(n+1-and(n+1, n-1))*a(n-1)` with `a(0)=1`
-/

namespace A001901.P15132324692505946946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) - Int.land (n + 1 : ℤ) ((n : ℤ) - 1)) * a (n - 1)

end

end A001901.P15132324692505946946

namespace A001901

/-- `(n+1-and(n+1, n-1))*a(n-1)` -/
def P15132324692505946946.Spec : Prop :=
  ∀ n, P15132324692505946946.a n = A001901 n

end A001901

/-! ## A001901.P2207613467052422475

`(or(n+1, n-1)-(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A001901.P2207613467052422475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor (n + 1 : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)) * a (n - 1)

end

end A001901.P2207613467052422475

namespace A001901

/-- `(or(n+1, n-1)-(n-1))*a(n-1)` -/
def P2207613467052422475.Spec : Prop :=
  ∀ n, P2207613467052422475.a n = A001901 n

end A001901

/-! ## A001901.P15674641029346831622

`2^(A378992(n)+n)`
-/

namespace A001901.P15674641029346831622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A378992 n + (n : ℤ) : ℤ)

end

end A001901.P15674641029346831622

namespace A001901

/-- `2^(A378992(n)+n)` -/
def P15674641029346831622.Spec : Prop :=
  ∀ n, P15674641029346831622.a n = (A001901 n : ℚ)

end A001901

/-! ## A001901.P8837932212902755610

`2^A378992(Δ[n²])`
-/

namespace A001901.P8837932212902755610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A378992 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A001901.P8837932212902755610

namespace A001901

/-- `2^A378992(Δ[n²])` -/
def P8837932212902755610.Spec : Prop :=
  ∀ n, P8837932212902755610.a n = (A001901 n : ℚ)

end A001901

/-! ## A001901.P3861355212337359253

`∏[and(n+1, -A028310(n))]`
-/

namespace A001901.P3861355212337359253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-A028310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001901.P3861355212337359253

namespace A001901

/-- `∏[and(n+1, -A028310(n))]` -/
def P3861355212337359253.Spec : Prop :=
  ∀ n, P3861355212337359253.a n = A001901 n

end A001901

/-! ## A001901.P485342189611979451

`a(n-1)*A065176(n+1)` with `a(0)=1`
-/

namespace A001901.P485342189611979451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A065176 (n + 1)

end

end A001901.P485342189611979451

namespace A001901

/-- `a(n-1)*A065176(n+1)` -/
def P485342189611979451.Spec : Prop :=
  ∀ n, P485342189611979451.a n = A001901 n

end A001901

/-! ## A001901.P14610846957787570571

`A011782(∑[A136480(n)])`
-/

namespace A001901.P14610846957787570571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001901.P14610846957787570571

namespace A001901

/-- `A011782(∑[A136480(n)])` -/
def P14610846957787570571.Spec : Prop :=
  ∀ n, P14610846957787570571.a n = A001901 n

end A001901

/-! ## A001901.P6436217925422139620

`A131577(∑[A136480(n)])`
-/

namespace A001901.P6436217925422139620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001901.P6436217925422139620

namespace A001901

/-- `A131577(∑[A136480(n)])` -/
def P6436217925422139620.Spec : Prop :=
  ∀ n, P6436217925422139620.a n = A001901 n

end A001901

/-! ## A001901.P16659921884082594814

`A060818(n+1)*A060818(n)`
-/

namespace A001901.P16659921884082594814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (n + 1) * A060818 n

end

end A001901.P16659921884082594814

namespace A001901

/-- `A060818(n+1)*A060818(n)` -/
def P16659921884082594814.Spec : Prop :=
  ∀ n, P16659921884082594814.a n = A001901 n

end A001901

/-! ## A001901.P6451761253418701850

`A006519(n+1)*A124399(n)`
-/

namespace A001901.P6451761253418701850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A124399 n

end

end A001901.P6451761253418701850

namespace A001901

/-- `A006519(n+1)*A124399(n)` -/
def P6451761253418701850.Spec : Prop :=
  ∀ n, P6451761253418701850.a n = A001901 n

end A001901

/-! ## A001901.P11109932067535355784

`A124399(n+1)/A006519(n+1)`
-/

namespace A001901.P11109932067535355784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124399 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A001901.P11109932067535355784

namespace A001901

/-- `A124399(n+1)/A006519(n+1)` -/
def P11109932067535355784.Spec : Prop :=
  ∀ n, P11109932067535355784.a n = (A001901 n : ℚ)

end A001901

/-! ## A001901.P6200595902694942524

`abs(∏[A118827(n+1)²]/A118827(n+1))`
-/

namespace A001901.P6200595902694942524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A118827 (n + 1) : ℚ)|

end

end A001901.P6200595902694942524

namespace A001901

/-- `abs(∏[A118827(n+1)²]/A118827(n+1))` -/
def P6200595902694942524.Spec : Prop :=
  ∀ n, P6200595902694942524.a n = (A001901 n : ℚ)

end A001901

/-! ## A001901.P17213842679721214068

`abs(∏[A118830(n+1)²]/A118830(n+1))`
-/

namespace A001901.P17213842679721214068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A118830 (n + 1) : ℚ)|

end

end A001901.P17213842679721214068

namespace A001901

/-- `abs(∏[A118830(n+1)²]/A118830(n+1))` -/
def P17213842679721214068.Spec : Prop :=
  ∀ n, P17213842679721214068.a n = (A001901 n : ℚ)

end A001901

/-!
# A001902: Successive denominators of Wallis's approximation to Pi/2 (reduced).

The programs for A001902, the canonical program `A001902.P7559069142259162924` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001902 has offset 0).

The definition of A001902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001902.P7559069142259162924

`A163590(n+1)*A163590(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001902

/-- `A163590(n+1)*A163590(n)` -/
def P7559069142259162924.Spec : Prop :=
  ∀ n, P7559069142259162924.a n = A001902 n

theorem P7559069142259162924.correct : P7559069142259162924.Spec := by
  intro n
  simp only [A001902]

end A001902

/-! ## A001902.P2884741749551600412

`A000265(n+1)*A038534(ceil(n/2))`
-/

namespace A001902.P2884741749551600412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A038534 ⌈(n : ℚ) / 2⌉.toNat

end

end A001902.P2884741749551600412

namespace A001902

/-- `A000265(n+1)*A038534(ceil(n/2))` -/
def P2884741749551600412.Spec : Prop :=
  ∀ n, P2884741749551600412.a n = A001902 n

end A001902

/-! ## A001902.P3690296199903975860

`A001790(A065033(n))²*A000265(n+1)`
-/

namespace A001902.P3690296199903975860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A065033 n).toNat ^ 2 * A000265 (n + 1)

end

end A001902.P3690296199903975860

namespace A001902

/-- `A001790(A065033(n))²*A000265(n+1)` -/
def P3690296199903975860.Spec : Prop :=
  ∀ n, P3690296199903975860.a n = A001902 n

end A001902

/-! ## A001902.P10857055270080023992

`A001790(A110654(n))²*A000265(n+1)`
-/

namespace A001902.P10857055270080023992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A110654 n).toNat ^ 2 * A000265 (n + 1)

end

end A001902.P10857055270080023992

namespace A001902

/-- `A001790(A110654(n))²*A000265(n+1)` -/
def P10857055270080023992.Spec : Prop :=
  ∀ n, P10857055270080023992.a n = A001902 n

end A001902

/-! ## A001902.P1621501257783305644

`A000246(n+1)/A001900(n)*A001901(n)`
-/

namespace A001902.P1621501257783305644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000246 (n + 1) : ℚ) / (A001900 n : ℚ) * (A001901 n : ℚ)

end

end A001902.P1621501257783305644

namespace A001902

/-- `A000246(n+1)/A001900(n)*A001901(n)` -/
def P1621501257783305644.Spec : Prop :=
  ∀ n, P1621501257783305644.a n = (A001902 n : ℚ)

end A001902

/-!
# A001903: Final digit of 7^n.

The programs for A001903, the canonical program `A001903.P8736674538851160968` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001903 has offset 0).

The definition of A001903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001903.P8736674538851160968

`10-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001903

/-- `10-a(n-2)` -/
def P8736674538851160968.Spec : Prop :=
  ∀ n, P8736674538851160968.a n = A001903 n

theorem P8736674538851160968.correct : P8736674538851160968.Spec := by
  intro n
  simp only [A001903]

end A001903

/-!
# A001906: F(2n) = bisection of Fibonacci sequence: a(n) = 3*a(n-1) - a(n-2).

The programs for A001906, the canonical program `A001906.P15149022156944616941` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001906 has offset 0).

The definition of A001906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A001906.P15149022156944616941`, by `A001906.P15149022156944616941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001906.P3911163747725433399

`A249450(n)+2`
-/

namespace A001906.P3911163747725433399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 n + 2

end

end A001906.P3911163747725433399

namespace A001906

/-- `A249450(n)+2` -/
def P3911163747725433399.Spec : Prop :=
  ∀ n, P3911163747725433399.a n = A001906 n

end A001906

/-! ## A001906.P10945474717298243355

`A000045(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001906.P10945474717298243355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

end

end A001906.P10945474717298243355

namespace A001906

/-- `A000045(2*n)` -/
def P10945474717298243355.Spec : Prop :=
  ∀ n, P10945474717298243355.a n = A001906 n

end A001906

/-! ## A001906.P7838965129726081048

`n+A054452(n)`
-/

namespace A001906.P7838965129726081048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A054452 n

end

end A001906.P7838965129726081048

namespace A001906

/-- `n+A054452(n)` -/
def P7838965129726081048.Spec : Prop :=
  ∀ n, P7838965129726081048.a n = A001906 n

end A001906

/-! ## A001906.P15149022156944616941

`3*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001906

/-- `3*a(n-1)-a(n-2)` -/
def P15149022156944616941.Spec : Prop :=
  ∀ n, P15149022156944616941.a n = A001906 n

theorem P15149022156944616941.correct : P15149022156944616941.Spec := by
  intro n
  simp only [A001906]

end A001906

/-! ## A001906.P744604521737169654

`sqrt((A005248(n)²-4)/5)`
-/

namespace A001906.P744604521737169654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A005248 n ^ 2 - 4 : ℚ) / 5 : ℝ)

end

end A001906.P744604521737169654

namespace A001906

/-- `sqrt((A005248(n)²-4)/5)` -/
def P744604521737169654.Spec : Prop :=
  ∀ n, P744604521737169654.a n = (A001906 n : ℝ)

end A001906

/-! ## A001906.P5219003231719154548

`ogf(x/(1-3x+x^2))`
-/

namespace A001906.P5219003231719154548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 1] n

end

end A001906.P5219003231719154548

namespace A001906

/-- `ogf(x/(1-3x+x^2))` -/
def P5219003231719154548.Spec : Prop :=
  ∀ n, P5219003231719154548.a n = A001906 n

end A001906

/-! ## A001906.P5326400968968396663

`ceil(ϕ²*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P5326400968968396663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A001906.P5326400968968396663

namespace A001906

/-- `ceil(ϕ²*a(n-1))` -/
def P5326400968968396663.Spec : Prop :=
  ∀ n, P5326400968968396663.a n = A001906 n

end A001906

/-! ## A001906.P6122569866381453874

`round(ϕ²*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P6122569866381453874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A001906.P6122569866381453874

namespace A001906

/-- `round(ϕ²*a(n-1))` -/
def P6122569866381453874.Spec : Prop :=
  ∀ n, P6122569866381453874.a n = A001906 n

end A001906

/-! ## A001906.P327231177533428560

`ceil(a(n-1)/(2-ϕ))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P327231177533428560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A001906.P327231177533428560

namespace A001906

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P327231177533428560.Spec : Prop :=
  ∀ n, P327231177533428560.a n = A001906 n

end A001906

/-! ## A001906.P4096923140866710509

`round(a(n-1)/(2-ϕ))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P4096923140866710509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (2 - Real.goldenRatio))

end

end A001906.P4096923140866710509

namespace A001906

/-- `round(a(n-1)/(2-ϕ))` -/
def P4096923140866710509.Spec : Prop :=
  ∀ n, P4096923140866710509.a n = A001906 n

end A001906

/-! ## A001906.P3752376445600026264

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P3752376445600026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A001906.P3752376445600026264

namespace A001906

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P3752376445600026264.Spec : Prop :=
  ∀ n, P3752376445600026264.a n = A001906 n

end A001906

/-! ## A001906.P11458840090130611982

`round(ϕ*ϕ*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P11458840090130611982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A001906.P11458840090130611982

namespace A001906

/-- `round(ϕ*ϕ*a(n-1))` -/
def P11458840090130611982.Spec : Prop :=
  ∀ n, P11458840090130611982.a n = A001906 n

end A001906

/-! ## A001906.P1044630605534234009

`∑[floor(ϕ²*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A001906.P1044630605534234009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001906.P1044630605534234009

namespace A001906

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P1044630605534234009.Spec : Prop :=
  ∀ n, P1044630605534234009.a n = A001906 n

end A001906

/-! ## A001906.P71130203101280210

`∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A001906.P71130203101280210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001906.P71130203101280210

namespace A001906

/-- `∑[floor(ϕ*ϕ*a(n-1))]` -/
def P71130203101280210.Spec : Prop :=
  ∀ n, P71130203101280210.a n = A001906 n

end A001906

/-! ## A001906.P4936921892861272684

`record[a(n-2)-a(n-1)]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001906.P4936921892861272684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A001906.P4936921892861272684

namespace A001906

/-- `record[a(n-2)-a(n-1)]+a(n-1)` -/
def P4936921892861272684.Spec : Prop :=
  ∀ n, P4936921892861272684.a n = A001906 n

end A001906

/-! ## A001906.P6602675517586019542

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001906.P6602675517586019542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A001906.P6602675517586019542

namespace A001906

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P6602675517586019542.Spec : Prop :=
  ∀ n, P6602675517586019542.a n = A001906 n

theorem P6602675517586019542.correct : P6602675517586019542.Spec := by
  intro n
  simp only [A001906, Nat.add_sub_cancel, A001906.P6602675517586019542.a, A001906.P15149022156944616941.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001906

/-! ## A001906.P4569467899678438361

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001906.P4569467899678438361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A001906.P4569467899678438361

namespace A001906

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P4569467899678438361.Spec : Prop :=
  ∀ n, P4569467899678438361.a n = A001906 n

theorem P4569467899678438361.correct : P4569467899678438361.Spec := by
  intro n
  simp only [A001906, Nat.add_sub_cancel, A001906.P4569467899678438361.a, A001906.P15149022156944616941.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001906

/-! ## A001906.P1231996233931140274

`record[A098054(n)]`
-/

namespace A001906.P1231996233931140274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001906.P1231996233931140274

namespace A001906

/-- `record[A098054(n)]` -/
def P1231996233931140274.Spec : Prop :=
  ∀ n, P1231996233931140274.a n = A001906 n

end A001906

/-! ## A001906.P11385390240454586485

`A055588(n)-1`
-/

namespace A001906.P11385390240454586485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - 1

end

end A001906.P11385390240454586485

namespace A001906

/-- `A055588(n)-1` -/
def P11385390240454586485.Spec : Prop :=
  ∀ n, P11385390240454586485.a n = A001906 n

end A001906

/-! ## A001906.P6470917468174655754

`A094966(2*n)`
-/

namespace A001906.P6470917468174655754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * n)

end

end A001906.P6470917468174655754

namespace A001906

/-- `A094966(2*n)` -/
def P6470917468174655754.Spec : Prop :=
  ∀ n, P6470917468174655754.a n = A001906 n

end A001906

/-!
# A001907: Expansion of e.g.f. exp(-x)/(1-4*x).

The programs for A001907, the canonical program `A001907.P4936815631694932807` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001907 has offset 0).

The definition of A001907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001907.P4936815631694932807

`(4*n-1)*a(n-1)+4*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001907

/-- `(4*n-1)*a(n-1)+4*(n-1)*a(n-2)` -/
def P4936815631694932807.Spec : Prop :=
  ∀ n, P4936815631694932807.a n = A001907 n

theorem P4936815631694932807.correct : P4936815631694932807.Spec := by
  intro n
  simp only [A001907]

end A001907

/-! ## A001907.P8047229108594576548

`(-1)^n+4*n*a(n-1)` with `a(0)=1`
-/

namespace A001907.P8047229108594576548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (4 * n : ℤ) * a (n - 1)

end

end A001907.P8047229108594576548

namespace A001907

/-- `(-1)^n+4*n*a(n-1)` -/
def P8047229108594576548.Spec : Prop :=
  ∀ n, P8047229108594576548.a n = A001907 n

end A001907

/-! ## A001907.P11175918808432916833

`abs(Δ[A354419(n)])`
-/

namespace A001907.P11175918808432916833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001907.P11175918808432916833

namespace A001907

/-- `abs(Δ[A354419(n)])` -/
def P11175918808432916833.Spec : Prop :=
  ∀ n, P11175918808432916833.a n = A001907 n

end A001907

/-! ## A001907.P7850104480140065740

`∑[A271217(2*n)]`
-/

namespace A001907.P7850104480140065740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001907.P7850104480140065740

namespace A001907

/-- `∑[A271217(2*n)]` -/
def P7850104480140065740.Spec : Prop :=
  ∀ n, P7850104480140065740.a n = A001907 n

end A001907

/-! ## A001907.P15273893977950677790

`A271217(Δ[n²])/2`
-/

namespace A001907.P15273893977950677790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A001907.P15273893977950677790

namespace A001907

/-- `A271217(Δ[n²])/2` -/
def P15273893977950677790.Spec : Prop :=
  ∀ n, P15273893977950677790.a n = (A001907 n : ℚ)

end A001907

/-! ## A001907.P15535709435915567179

`2*a(n-1)*2*n-A062157(n)` with `a(0)=1`
-/

namespace A001907.P15535709435915567179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * (2 * n : ℤ) - A062157 n

end

end A001907.P15535709435915567179

namespace A001907

/-- `2*a(n-1)*2*n-A062157(n)` -/
def P15535709435915567179.Spec : Prop :=
  ∀ n, P15535709435915567179.a n = A001907 n

end A001907

/-! ## A001907.P5174584877451356705

`a(n-1)*A008574(n)-(n-xor(1, n))` with `a(0)=1`
-/

namespace A001907.P5174584877451356705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008574 n - ((n : ℤ) - (Nat.xor 1 n : ℤ))

end

end A001907.P5174584877451356705

namespace A001907

/-- `a(n-1)*A008574(n)-(n-xor(1, n))` -/
def P5174584877451356705.Spec : Prop :=
  ∀ n, P5174584877451356705.a n = A001907 n

end A001907

/-! ## A001907.P2100154860879005553

`a(n-1)*A004277(2*n)-A033999(n+1)` with `a(0)=1`
-/

namespace A001907.P2100154860879005553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004277 (2 * n) - A033999 (n + 1)

end

end A001907.P2100154860879005553

namespace A001907

/-- `a(n-1)*A004277(2*n)-A033999(n+1)` -/
def P2100154860879005553.Spec : Prop :=
  ∀ n, P2100154860879005553.a n = A001907 n

end A001907

/-! ## A001907.P14279681516260204194

`A320032(A000217(n+5)-5)`
-/

namespace A001907.P14279681516260204194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320032 (A000217 (n + 5) - 5).toNat

end

end A001907.P14279681516260204194

namespace A001907

/-- `A320032(A000217(n+5)-5)` -/
def P14279681516260204194.Spec : Prop :=
  ∀ n, P14279681516260204194.a n = A001907 n

end A001907

/-!
# A001908: E.g.f. exp(-x)/(1-5*x).

The programs for A001908, there is no canonical definition to state claims against.
-/

/-! ## A001908.P8899856487573159456

`xor(1, 5*n*a(n-1))` with `a(0)=1`
-/

namespace A001908.P8899856487573159456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (5 * (n * a (n - 1)))

end

end A001908.P8899856487573159456

/-! ## A001908.P13009418020104267840

`xor(1, a(n-1)*A008587(n))` with `a(0)=1`
-/

namespace A001908.P13009418020104267840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A008587 n)

end

end A001908.P13009418020104267840

/-! ## A001908.P2180798748358398826

`xor(1, a(n-1)*A008706(n))` with `a(0)=1`
-/

namespace A001908.P2180798748358398826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A008706 n)

end

end A001908.P2180798748358398826

/-! ## A001908.P7989049070307278356

`a(n-1)*A008706(n)-A062157(n)` with `a(0)=1`
-/

namespace A001908.P7989049070307278356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008706 n - A062157 n

end

end A001908.P7989049070307278356

/-! ## A001908.P13915367815655036230

`a(n-1)*A008706(n)-(A120765(n)-A061714(n))` with `a(0)=1`
-/

namespace A001908.P13915367815655036230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008706 n - (A120765 n - A061714 n)

end

end A001908.P13915367815655036230

/-!
# A001909: a(n) = n*a(n-1) + (n-4)*a(n-2), a(2) = 0, a(3) = 1.

The programs for A001909, the canonical program `A001909.P7832302043248265296` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001909 has offset 2).

The definition of A001909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*a(n-1)+(n-2)*a(n-2)` (program `A001909.P7832302043248265296`, by `A001909.P7832302043248265296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001909.P7832302043248265296

`(n+2)*a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001909

/-- `(n+2)*a(n-1)+(n-2)*a(n-2)` -/
def P7832302043248265296.Spec : Prop :=
  ∀ n, P7832302043248265296.a n = A001909 (n + 2)

theorem P7832302043248265296.correct : P7832302043248265296.Spec := by
  intro n
  simp only [A001909, Nat.add_sub_cancel]

end A001909

/-! ## A001909.P14680656726822961648

`A247490(A052905(n+2))`
-/

namespace A001909.P14680656726822961648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247490 (A052905 (n + 2)).toNat

end

end A001909.P14680656726822961648

namespace A001909

/-- `A247490(A052905(n+2))` -/
def P14680656726822961648.Spec : Prop :=
  ∀ n, P14680656726822961648.a n = A001909 (n + 2)

end A001909

/-! ## A001909.P6293729192205689506

`record[A010054(n+5)*A060475(n)]`
-/

namespace A001909.P6293729192205689506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 5) * A060475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001909.P6293729192205689506

namespace A001909

/-- `record[A010054(n+5)*A060475(n)]` -/
def P6293729192205689506.Spec : Prop :=
  ∀ n, P6293729192205689506.a n = A001909 (n + 2)

end A001909

/-! ## A001909.P607189150827885756

`record[A060475(A282737(A141310(n)))]`
-/

namespace A001909.P607189150827885756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A282737 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001909.P607189150827885756

namespace A001909

/-- `record[A060475(A282737(A141310(n)))]` -/
def P607189150827885756.Spec : Prop :=
  ∀ n, P607189150827885756.a n = A001909 (n + 2)

end A001909

/-! ## A001909.P18372132840363748131

`record[A060475(n)*A342955(A025581(n))]`
-/

namespace A001909.P18372132840363748131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n * A342955 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001909.P18372132840363748131

namespace A001909

/-- `record[A060475(n)*A342955(A025581(n))]` -/
def P18372132840363748131.Spec : Prop :=
  ∀ n, P18372132840363748131.a n = A001909 (n + 2)

end A001909

/-! ## A001909.P721619491314429311

`A060475(A028552(n+1)-A175631(n+2))`
-/

namespace A001909.P721619491314429311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A028552 (n + 1) - A175631 (n + 2)).toNat

end

end A001909.P721619491314429311

namespace A001909

/-- `A060475(A028552(n+1)-A175631(n+2))` -/
def P721619491314429311.Spec : Prop :=
  ∀ n, P721619491314429311.a n = A001909 (n + 2)

end A001909

/-! ## A001909.P8577595641904910274

`A060475(A052905(n+1)%A094803(n+2))`
-/

namespace A001909.P8577595641904910274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (Int.tmod (A052905 (n + 1)) (A094803 (n + 2))).toNat

end

end A001909.P8577595641904910274

namespace A001909

/-- `A060475(A052905(n+1)%A094803(n+2))` -/
def P8577595641904910274.Spec : Prop :=
  ∀ n, P8577595641904910274.a n = A001909 (n + 2)

end A001909

/-!
# A001910: a(n) = n*a(n-1) + (n-5)*a(n-2).

The programs for A001910, the canonical program `A001910.P7397736713618137757` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001910 has offset 3).

The definition of A001910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*a(n-1)+(n-2)*a(n-2)` (program `A001910.P7397736713618137757`, by `A001910.P7397736713618137757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001910.P7397736713618137757

`(n+3)*a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001910

/-- `(n+3)*a(n-1)+(n-2)*a(n-2)` -/
def P7397736713618137757.Spec : Prop :=
  ∀ n, P7397736713618137757.a n = A001910 (n + 3)

theorem P7397736713618137757.correct : P7397736713618137757.Spec := by
  intro n
  simp only [A001910, Nat.add_sub_cancel]

end A001910

/-! ## A001910.P14132707556028178185

`record[A060475(n)*A083916(A004736(n+1))]`
-/

namespace A001910.P14132707556028178185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n * A083916 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001910.P14132707556028178185

namespace A001910

/-- `record[A060475(n)*A083916(A004736(n+1))]` -/
def P14132707556028178185.Spec : Prop :=
  ∀ n, P14132707556028178185.a n = A001910 (n + 3)

end A001910

/-! ## A001910.P15530665336509643609

`A060475(A055999(n+2)%A003215(n+1))`
-/

namespace A001910.P15530665336509643609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (Int.tmod (A055999 (n + 2)) (A003215 (n + 1))).toNat

end

end A001910.P15530665336509643609

namespace A001910

/-- `A060475(A055999(n+2)%A003215(n+1))` -/
def P15530665336509643609.Spec : Prop :=
  ∀ n, P15530665336509643609.a n = A001910 (n + 3)

end A001910

/-! ## A001910.P6437752727360705043

`A086764(A167499(n+3)^(n²%(n+1)))`
-/

namespace A001910.P6437752727360705043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A167499 (n + 3) ^ (n ^ 2 % (n + 1))).toNat

end

end A001910.P6437752727360705043

namespace A001910

/-- `A086764(A167499(n+3)^(n²%(n+1)))` -/
def P6437752727360705043.Spec : Prop :=
  ∀ n, P6437752727360705043.a n = A001910 (n + 3)

end A001910

/-! ## A001910.P9256744676981545886

`A057427(n)*A086764(A056000(n)+15)`
-/

namespace A001910.P9256744676981545886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A086764 (A056000 n + 15).toNat

end

end A001910.P9256744676981545886

namespace A001910

/-- `A057427(n)*A086764(A056000(n)+15)` -/
def P9256744676981545886.Spec : Prop :=
  ∀ n, P9256744676981545886.a n = A001910 (n + 3)

end A001910

/-!
# A001911: a(n) = Fibonacci(n+3) - 2.

The programs for A001911, the canonical program `A001911.P2299546665043418976` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001911 has offset 0).

The definition of A001911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+3)-2` (program `A001911.P2299546665043418976`, by `A001911.P2299546665043418976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001911.P7827382253027062797

`a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A001911.P7827382253027062797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + 2

end

end A001911.P7827382253027062797

namespace A001911

/-- `a(n-1)+a(n-2)+2` -/
def P7827382253027062797.Spec : Prop :=
  ∀ n, (P7827382253027062797.a n : ℤ) = A001911 n

end A001911

/-! ## A001911.P2299546665043418976

`A000045(n+3)-2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001911

/-- `A000045(n+3)-2` -/
def P2299546665043418976.Spec : Prop :=
  ∀ n, P2299546665043418976.a n = A001911 n

theorem P2299546665043418976.correct : P2299546665043418976.Spec := by
  intro n
  simp only [A001911]

end A001911

/-! ## A001911.P4459725658874101419

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A001911.P4459725658874101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A001911.P4459725658874101419

namespace A001911

/-- `2*a(n-1)-a(n-3)` -/
def P4459725658874101419.Spec : Prop :=
  ∀ n, P4459725658874101419.a n = A001911 n

end A001911

/-! ## A001911.P7636430830044631638

`ogf((x+x^2)/(1-2x+x^3))`
-/

namespace A001911.P7636430830044631638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -2, 0, 1] n

end

end A001911.P7636430830044631638

namespace A001911

/-- `ogf((x+x^2)/(1-2x+x^3))` -/
def P7636430830044631638.Spec : Prop :=
  ∀ n, P7636430830044631638.a n = A001911 n

end A001911

/-! ## A001911.P2114793917938206777

`floor(ϕ*(a(n-1)+1))` with `a(0)=0`
-/

namespace A001911.P2114793917938206777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌋

end

end A001911.P2114793917938206777

namespace A001911

/-- `floor(ϕ*(a(n-1)+1))` -/
def P2114793917938206777.Spec : Prop :=
  ∀ n, P2114793917938206777.a n = A001911 n

end A001911

/-! ## A001911.P8209998686050389800

`ceil(ϕ*a(n-1))+1` with `a(0)=0`
-/

namespace A001911.P8209998686050389800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 1

end

end A001911.P8209998686050389800

namespace A001911

/-- `ceil(ϕ*a(n-1))+1` -/
def P8209998686050389800.Spec : Prop :=
  ∀ n, P8209998686050389800.a n = A001911 n

end A001911

/-! ## A001911.P14456929461252090421

`round(ϕ*a(n-1))+1` with `a(0)=0`
-/

namespace A001911.P14456929461252090421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 1

end

end A001911.P14456929461252090421

namespace A001911

/-- `round(ϕ*a(n-1))+1` -/
def P14456929461252090421.Spec : Prop :=
  ∀ n, P14456929461252090421.a n = A001911 n

end A001911

/-! ## A001911.P3507490431099786536

`1-floor(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A001911.P3507490431099786536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊-(Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A001911.P3507490431099786536

namespace A001911

/-- `1-floor(-(ϕ*a(n-1)))` -/
def P3507490431099786536.Spec : Prop :=
  ∀ n, P3507490431099786536.a n = A001911 n

end A001911

/-! ## A001911.P12657968614686479754

`1-round(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A001911.P12657968614686479754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A001911.P12657968614686479754

namespace A001911

/-- `1-round(-(ϕ*a(n-1)))` -/
def P12657968614686479754.Spec : Prop :=
  ∀ n, P12657968614686479754.a n = A001911 n

end A001911

/-! ## A001911.P5986884133100998334

`floor((a(n-1)+1)/(ϕ-1))` with `a(0)=0`
-/

namespace A001911.P5986884133100998334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 1 : ℝ) / (Real.goldenRatio - 1)⌋

end

end A001911.P5986884133100998334

namespace A001911

/-- `floor((a(n-1)+1)/(ϕ-1))` -/
def P5986884133100998334.Spec : Prop :=
  ∀ n, P5986884133100998334.a n = A001911 n

end A001911

/-! ## A001911.P3516318734838855448

`1-floor(a(n-1)/(1-ϕ))` with `a(0)=0`
-/

namespace A001911.P3516318734838855448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A001911.P3516318734838855448

namespace A001911

/-- `1-floor(a(n-1)/(1-ϕ))` -/
def P3516318734838855448.Spec : Prop :=
  ∀ n, P3516318734838855448.a n = A001911 n

end A001911

/-! ## A001911.P1912107473379997380

`∑[floor(ϕ*a(n-1))]-n` with `a(0)=0, a(1)=2`
-/

namespace A001911.P1912107473379997380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A001911.P1912107473379997380

namespace A001911

/-- `∑[floor(ϕ*a(n-1))]-n` -/
def P1912107473379997380.Spec : Prop :=
  ∀ n, P1912107473379997380.a n = A001911 n

end A001911

/-! ## A001911.P9949961106628798561

`3-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001911.P9949961106628798561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2))

end

end A001911.P9949961106628798561

namespace A001911

/-- `3-floor(1-a(n-1)-a(n-2))` -/
def P9949961106628798561.Spec : Prop :=
  ∀ n, P9949961106628798561.a n = A001911 n

end A001911

/-! ## A001911.P13621138265407252595

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A001911.P13621138265407252595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001911.P13621138265407252595

namespace A001911

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P13621138265407252595.Spec : Prop :=
  ∀ n, P13621138265407252595.a n = A001911 n

end A001911

/-! ## A001911.P8751366988246475537

`4-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001911.P8751366988246475537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A001911.P8751366988246475537

namespace A001911

/-- `4-(4/2-a(n-1)-a(n-2))` -/
def P8751366988246475537.Spec : Prop :=
  ∀ n, P8751366988246475537.a n = (A001911 n : ℚ)

end A001911

/-! ## A001911.P17950508535416857889

`3-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001911.P17950508535416857889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A001911.P17950508535416857889

namespace A001911

/-- `3-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P17950508535416857889.Spec : Prop :=
  ∀ n, P17950508535416857889.a n = A001911 n

end A001911

/-! ## A001911.P16587922804492133759

`A020695(n)-2`
-/

namespace A001911.P16587922804492133759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - 2

end

end A001911.P16587922804492133759

namespace A001911

/-- `A020695(n)-2` -/
def P16587922804492133759.Spec : Prop :=
  ∀ n, P16587922804492133759.a n = A001911 n

end A001911

/-! ## A001911.P4113414669073626732

`A048577(n)-3`
-/

namespace A001911.P4113414669073626732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - 3

end

end A001911.P4113414669073626732

namespace A001911

/-- `A048577(n)-3` -/
def P4113414669073626732.Spec : Prop :=
  ∀ n, P4113414669073626732.a n = A001911 n

end A001911

/-! ## A001911.P6982036518252239545

`A094707(2*n)`
-/

namespace A001911.P6982036518252239545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n)

end

end A001911.P6982036518252239545

namespace A001911

/-- `A094707(2*n)` -/
def P6982036518252239545.Spec : Prop :=
  ∀ n, P6982036518252239545.a n = A001911 n

end A001911

/-! ## A001911.P11086619476318449759

`A018910(n)-4`
-/

namespace A001911.P11086619476318449759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 4

end

end A001911.P11086619476318449759

namespace A001911

/-- `A018910(n)-4` -/
def P11086619476318449759.Spec : Prop :=
  ∀ n, P11086619476318449759.a n = A001911 n

end A001911

/-!
# A001912: Numbers k such that 4*k^2 + 1 is prime.

The programs for A001912, the canonical program `A001912.P6372335498254371482` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001912 has offset 1).

The definition of A001912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001912.P6372335498254371482

`A005574(n+2)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A001912

/-- `A005574(n+2)/2` -/
def P6372335498254371482.Spec : Prop :=
  ∀ n, P6372335498254371482.a n = (A001912 (n + 1) : ℚ)

end A001912

/-! ## A001912.P7720947716496902074

`A214517(n)+a(n-1)` with `a(0)=1`
-/

namespace A001912.P7720947716496902074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214517 n + a (n - 1)

end

end A001912.P7720947716496902074

namespace A001912

/-- `A214517(n)+a(n-1)` -/
def P7720947716496902074.Spec : Prop :=
  ∀ n, P7720947716496902074.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P15372114702593247754

`∑[ceil(A214516(n+1)/2)]`
-/

namespace A001912.P15372114702593247754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214516 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001912.P15372114702593247754

namespace A001912

/-- `∑[ceil(A214516(n+1)/2)]` -/
def P15372114702593247754.Spec : Prop :=
  ∀ n, P15372114702593247754.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P1584497086527414041

`∑[A214517(A028310(n))]`
-/

namespace A001912.P1584497086527414041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001912.P1584497086527414041

namespace A001912

/-- `∑[A214517(A028310(n))]` -/
def P1584497086527414041.Spec : Prop :=
  ∀ n, P1584497086527414041.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P13838830852302379031

`∑[A032742(A214516(n+1))]`
-/

namespace A001912.P13838830852302379031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A214516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001912.P13838830852302379031

namespace A001912

/-- `∑[A032742(A214516(n+1))]` -/
def P13838830852302379031.Spec : Prop :=
  ∀ n, P13838830852302379031.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P4177858815679755232

`A059793(n+1)/4`
-/

namespace A001912.P4177858815679755232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 (n + 1) : ℚ) / 4

end

end A001912.P4177858815679755232

namespace A001912

/-- `A059793(n+1)/4` -/
def P4177858815679755232.Spec : Prop :=
  ∀ n, P4177858815679755232.a n = (A001912 (n + 1) : ℚ)

end A001912

/-! ## A001912.P3796527706495443424

`sqrt(A075408(n+2))/2`
-/

namespace A001912.P3796527706495443424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 2) : ℝ) / 2

end

end A001912.P3796527706495443424

namespace A001912

/-- `sqrt(A075408(n+2))/2` -/
def P3796527706495443424.Spec : Prop :=
  ∀ n, P3796527706495443424.a n = (A001912 (n + 1) : ℝ)

end A001912

/-! ## A001912.P12925422731223601633

`ceil(A089593(n+2)/2)`
-/

namespace A001912.P12925422731223601633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089593 (n + 2) : ℚ) / 2⌉

end

end A001912.P12925422731223601633

namespace A001912

/-- `ceil(A089593(n+2)/2)` -/
def P12925422731223601633.Spec : Prop :=
  ∀ n, P12925422731223601633.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P419780257924154274

`(A090693(n+2)-1)/2`
-/

namespace A001912.P419780257924154274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090693 (n + 2) - 1 : ℚ) / 2

end

end A001912.P419780257924154274

namespace A001912

/-- `(A090693(n+2)-1)/2` -/
def P419780257924154274.Spec : Prop :=
  ∀ n, P419780257924154274.a n = (A001912 (n + 1) : ℚ)

end A001912

/-! ## A001912.P8373558500835504311

`floor(sqrt(A002496(n+2))/2)`
-/

namespace A001912.P8373558500835504311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A002496 (n + 2) : ℝ) / 2⌋

end

end A001912.P8373558500835504311

namespace A001912

/-- `floor(sqrt(A002496(n+2))/2)` -/
def P8373558500835504311.Spec : Prop :=
  ∀ n, P8373558500835504311.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P3787667010719606932

`∑[A032742(Δ[A090693(n+1)])]`
-/

namespace A001912.P3787667010719606932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001912.P3787667010719606932

namespace A001912

/-- `∑[A032742(Δ[A090693(n+1)])]` -/
def P3787667010719606932.Spec : Prop :=
  ∀ n, P3787667010719606932.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P11615202991593206699

`eq[0, A366193(n)]`
-/

namespace A001912.P11615202991593206699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001912.P11615202991593206699

namespace A001912

/-- `eq[0, A366193(n)]` -/
def P11615202991593206699.Spec : Prop :=
  ∀ n, (P11615202991593206699.a n : ℤ) = A001912 (n + 1)

end A001912

/-! ## A001912.P10276125508277869295

`lt[n², A256970(n+1)]+1`
-/

namespace A001912.P10276125508277869295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001912.P10276125508277869295

namespace A001912

/-- `lt[n², A256970(n+1)]+1` -/
def P10276125508277869295.Spec : Prop :=
  ∀ n, (P10276125508277869295.a n : ℤ) = A001912 (n + 1)

end A001912

/-! ## A001912.P1555676724108265929

`A249122(A005574(n+2)+1)`
-/

namespace A001912.P1555676724108265929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A005574 (n + 2) + 1).toNat

end

end A001912.P1555676724108265929

namespace A001912

/-- `A249122(A005574(n+2)+1)` -/
def P1555676724108265929.Spec : Prop :=
  ∀ n, P1555676724108265929.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P8273799401142045239

`floor(sqrt(A168024(n+1))/2)`
-/

namespace A001912.P8273799401142045239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A168024 (n + 1) : ℝ) / 2⌋

end

end A001912.P8273799401142045239

namespace A001912

/-- `floor(sqrt(A168024(n+1))/2)` -/
def P8273799401142045239.Spec : Prop :=
  ∀ n, P8273799401142045239.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P9081553574986176154

`∑[A214517(A233583(n+1))]`
-/

namespace A001912.P9081553574986176154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001912.P9081553574986176154

namespace A001912

/-- `∑[A214517(A233583(n+1))]` -/
def P9081553574986176154.Spec : Prop :=
  ∀ n, P9081553574986176154.a n = A001912 (n + 1)

end A001912

/-! ## A001912.P17006181013961750297

`eq[1, A053000(2*n)]`
-/

namespace A001912.P17006181013961750297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001912.P17006181013961750297

namespace A001912

/-- `eq[1, A053000(2*n)]` -/
def P17006181013961750297.Spec : Prop :=
  ∀ n, (P17006181013961750297.a n : ℤ) = A001912 (n + 1)

end A001912

/-! ## A001912.P17993994126665181082

`eq[1, A193330(2*n)]`
-/

namespace A001912.P17993994126665181082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001912.P17993994126665181082

namespace A001912

/-- `eq[1, A193330(2*n)]` -/
def P17993994126665181082.Spec : Prop :=
  ∀ n, (P17993994126665181082.a n : ℤ) = A001912 (n + 1)

end A001912

/-! ## A001912.P19578205754580884

`eq[1, A284376(2*n)]`
-/

namespace A001912.P19578205754580884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001912.P19578205754580884

namespace A001912

/-- `eq[1, A284376(2*n)]` -/
def P19578205754580884.Spec : Prop :=
  ∀ n, (P19578205754580884.a n : ℤ) = A001912 (n + 1)

end A001912

/-! ## A001912.P16947758764444437616

`eq[2, A193432(2*n)]`
-/

namespace A001912.P16947758764444437616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001912.P16947758764444437616

namespace A001912

/-- `eq[2, A193432(2*n)]` -/
def P16947758764444437616.Spec : Prop :=
  ∀ n, (P16947758764444437616.a n : ℤ) = A001912 (n + 1)

end A001912

/-!
# A001913: Full reptend primes: primes with primitive root 10.

The programs for A001913, there is no canonical definition to state claims against.
-/

/-! ## A001913.P7554377495134892236

`A006883(n+2)`
-/

namespace A001913.P7554377495134892236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 2)

end

end A001913.P7554377495134892236

/-! ## A001913.P6846993402577920627

`p?[A306355(n+3)]`
-/

namespace A001913.P6846993402577920627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001913.P6846993402577920627

/-! ## A001913.P6311575437023369058

`p?[A167797(n+1)]`
-/

namespace A001913.P6311575437023369058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001913.P6311575437023369058

/-! ## A001913.P7475551325923829083

`record[A002371(n+4)+1]`
-/

namespace A001913.P7475551325923829083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001913.P7475551325923829083

/-! ## A001913.P11210823285446782587

`A002371(A060257(n+1))+1`
-/

namespace A001913.P11210823285446782587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A060257 (n + 1)).toNat + 1

end

end A001913.P11210823285446782587

/-! ## A001913.P11675836898289128477

`∩[A038880(n+1), A306355(n+1)]`
-/

namespace A001913.P11675836898289128477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001913.P11675836898289128477

/-! ## A001913.P13938880266571446049

`record[2*A068958(n+4)+1]`
-/

namespace A001913.P13938880266571446049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068958 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001913.P13938880266571446049

/-! ## A001913.P5691964198511790114

`A000040(A060257(n+1))`
-/

namespace A001913.P5691964198511790114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060257 (n + 1)).toNat

end

end A001913.P5691964198511790114

/-! ## A001913.P12409610183021870677

`A004139(eq[1, A060370(n+2)])`
-/

namespace A001913.P12409610183021870677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001913.P12409610183021870677

/-! ## A001913.P17904391991970561662

`∩[A093515(n+1), A167797(n+1)]`
-/

namespace A001913.P17904391991970561662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001913.P17904391991970561662

/-! ## A001913.P8293912671667549725

`A045319(lt[A060370(n+1)*A261143(n), 2])`
-/

namespace A001913.P8293912671667549725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1) * A261143 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A001913.P8293912671667549725

/-! ## A001913.P763525365560185375

`A045319(lt[A060370(n+1), 2/A261143(n)])`
-/

namespace A001913.P763525365560185375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A261143 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A001913.P763525365560185375

/-! ## A001913.P11146227666684162410

`∩[A167797(n+1), A260442(n)]`
-/

namespace A001913.P11146227666684162410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001913.P11146227666684162410

/-! ## A001913.P10726765616548070230

`filter[A167797(n+1), A008966(#)]`
-/

namespace A001913.P10726765616548070230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A001913.P10726765616548070230

/-! ## A001913.P116501374262724026

`filter[A167797(n+1), A010051(#)]`
-/

namespace A001913.P116501374262724026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A001913.P116501374262724026

/-! ## A001913.P16483883351479951401

`filter[A306355(n+1), A359172(#)]`
-/

namespace A001913.P16483883351479951401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A001913.P16483883351479951401

/-! ## A001913.P4848920894932872949

`filter[A306355(n+2), A359377(#)]`
-/

namespace A001913.P4848920894932872949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A001913.P4848920894932872949

/-! ## A001913.P10965713023303152648

`filter[A306355(n+2), A361022(#)]`
-/

namespace A001913.P10965713023303152648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A001913.P10965713023303152648

/-! ## A001913.P4989914342294909760

`filter[A306355(n+2), A369961(#)]`
-/

namespace A001913.P4989914342294909760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A001913.P4989914342294909760

/-! ## A001913.P17569449087834183304

`filter[A306355(n+2), A373154(#)]`
-/

namespace A001913.P17569449087834183304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A001913.P17569449087834183304

/-!
# A001914: Cyclic numbers: 10 is a quadratic residue modulo p and class of mantissa is 2.

The programs for A001914, there is no canonical definition to state claims against.
-/

/-! ## A001914.P12053515259860550352

`A097443(n+1)-A000007(n)`
-/

namespace A001914.P12053515259860550352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A000007 n

end

end A001914.P12053515259860550352

/-! ## A001914.P9028395142175317028

`A097443(n+1)+1-A054977(n)`
-/

namespace A001914.P9028395142175317028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) + (1 - A054977 n)

end

end A001914.P9028395142175317028

/-! ## A001914.P750626322062753158

`A097443(n+1)-A010051(2*(n+1))`
-/

namespace A001914.P750626322062753158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A010051 (2 * (n + 1))

end

end A001914.P750626322062753158

/-! ## A001914.P447070587283263135

`xor(A000007(A007953(n)), A097443(n+1))`
-/

namespace A001914.P447070587283263135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A007953 n).toNat) (A097443 (n + 1))

end

end A001914.P447070587283263135

/-! ## A001914.P9116244856387028867

`xor(A000007(A214365(n)), A097443(n+1))`
-/

namespace A001914.P9116244856387028867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A214365 n).toNat) (A097443 (n + 1))

end

end A001914.P9116244856387028867

/-! ## A001914.P1155462313381364415

`xor(A000007(A321474(n)), A097443(n+1))`
-/

namespace A001914.P1155462313381364415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A321474 n).toNat) (A097443 (n + 1))

end

end A001914.P1155462313381364415

/-! ## A001914.P2688239820921430480

`A097443(n+1)-A078442(A079088(n+1))`
-/

namespace A001914.P2688239820921430480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A078442 (A079088 (n + 1)).toNat

end

end A001914.P2688239820921430480

/-! ## A001914.P3504043606750516186

`A097443(n+1)-A145649(A046523(n+1))`
-/

namespace A001914.P3504043606750516186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A145649 (A046523 (n + 1)).toNat

end

end A001914.P3504043606750516186

/-! ## A001914.P17953630781185119122

`A097443(n+1)-A010054(A348044(n+1))`
-/

namespace A001914.P17953630781185119122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A010054 (A348044 (n + 1)).toNat

end

end A001914.P17953630781185119122

/-! ## A001914.P8560846602168455862

`A097443(n+1)+A010816(a(A000360(n)))` with `a(0)=2`
-/

namespace A001914.P8560846602168455862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097443 (n + 1) + A010816 (a (A000360 n).toNat).toNat

end

end A001914.P8560846602168455862

/-! ## A001914.P4095556902919467003

`A097443(n+1)-A049084(2*(n+1))`
-/

namespace A001914.P4095556902919467003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A049084 (2 * (n + 1))

end

end A001914.P4095556902919467003

/-! ## A001914.P13353155065738609220

`A045319(eq[2, A060370(n+1)])`
-/

namespace A001914.P13353155065738609220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001914.P13353155065738609220

/-! ## A001914.P744072432019795887

`A045344(eq[2, A060370(n+1)])`
-/

namespace A001914.P744072432019795887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001914.P744072432019795887

/-! ## A001914.P12332515866090357171

`A097443(n+1)+A015404(a(A000360(n)))` with `a(0)=2`
-/

namespace A001914.P12332515866090357171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097443 (n + 1) + A015404 (a (A000360 n).toNat).toNat

end

end A001914.P12332515866090357171

/-! ## A001914.P11553557199503920416

`A097443(n+1)-A035192(A006883(n+1))`
-/

namespace A001914.P11553557199503920416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - A035192 (A006883 (n + 1)).toNat

end

end A001914.P11553557199503920416

/-! ## A001914.P15011933849285820778

`A064614(A097443(n+1))`
-/

namespace A001914.P15011933849285820778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A097443 (n + 1)).toNat

end

end A001914.P15011933849285820778

/-! ## A001914.P11845640322976284286

`A326178(eq[n, 2*A007732(n+1)])`
-/

namespace A001914.P11845640322976284286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001914.P11845640322976284286

/-! ## A001914.P9956480768713847544

`A326178(eq[2, n/A007732(n+1)])`
-/

namespace A001914.P9956480768713847544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007732 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A001914.P9956480768713847544

/-! ## A001914.P15742593555486663152

`A326178(eq[n-A007732(n+1), A007732(n+1)])`
-/

namespace A001914.P15742593555486663152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A001914.P15742593555486663152

/-!
# A001915: Primes p such that the congruence 2^x == 3 (mod p) is solvable.

The programs for A001915, there is no canonical definition to state claims against.
-/

/-! ## A001915.P14603117891243420448

`p?[A137735(A152947(A314672(n)))]`
-/

namespace A001915.P14603117891243420448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A152947 (A314672 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001915.P14603117891243420448

/-! ## A001915.P7740728643020877251

`record[A141792(A194065(n+1))]`
-/

namespace A001915.P7740728643020877251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141792 (A194065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001915.P7740728643020877251

/-! ## A001915.P11657908784767543888

`A238242(lt[A358156(3*n+4), A028387(3*(n+1))])`
-/

namespace A001915.P11657908784767543888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358156 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001915.P11657908784767543888

/-! ## A001915.P9443938738528040277

`A238242(lt[A358156(3*n+4), A347452(2*(n+2))])`
-/

namespace A001915.P9443938738528040277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358156 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347452 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001915.P9443938738528040277

/-! ## A001915.P1104029634784284911

`A216371(n+2)-A212355(A262700(n+1))`
-/

namespace A001915.P1104029634784284911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 2) - A212355 (A262700 (n + 1)).toNat

end

end A001915.P1104029634784284911

/-!
# A001916: Primes p such that the congruence 2^x = 5 (mod p) is solvable.

The programs for A001916, there is no canonical definition to state claims against.
-/

/-! ## A001916.P7528402634583801308

`p?[A064429(A166937(n+1))]`
-/

namespace A001916.P7528402634583801308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A166937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001916.P7528402634583801308

/-! ## A001916.P885623932908478048

`∩[A225184(n+1), A377463(n+1)]`
-/

namespace A001916.P885623932908478048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001916.P885623932908478048

/-! ## A001916.P14322141714323660973

`p?[lt[A071458(n+1), A119624(3*n+5)]]`
-/

namespace A001916.P14322141714323660973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071458 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001916.P14322141714323660973

/-! ## A001916.P17674942803888197865

`A003629(n+1)-A000122(A000129(n))`
-/

namespace A001916.P17674942803888197865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1) - A000122 (A000129 n).toNat

end

end A001916.P17674942803888197865

/-!
# A001917: (p-1)/x, where p = prime(n) and x = ord(2,p), the smallest positive integer such that 2^x == 1 (mod p).

The programs for A001917, there is no canonical definition to state claims against.
-/

/-! ## A001917.P6965794549060940736

`gcd(A037166(n+1), A054505(n+2))`
-/

namespace A001917.P6965794549060940736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A054505 (n + 2))

end

end A001917.P6965794549060940736

/-! ## A001917.P3298749195662328921

`(A065091(n+1)-1)/A014664(n+2)`
-/

namespace A001917.P3298749195662328921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / (A014664 (n + 2) : ℚ)

end

end A001917.P3298749195662328921

/-! ## A001917.P17802480318669232966

`2*A005097(n+1)/A014664(n+2)`
-/

namespace A001917.P17802480318669232966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A005097 (n + 1) : ℚ) / (A014664 (n + 2) : ℚ))

end

end A001917.P17802480318669232966

/-! ## A001917.P3934084773468643693

`A006093(n+2)/A014664(n+2)`
-/

namespace A001917.P3934084773468643693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (A014664 (n + 2) : ℚ)

end

end A001917.P3934084773468643693

/-! ## A001917.P6263687938164863141

`record[A000010(n+3)]/A014664(n+2)`
-/

namespace A001917.P6263687938164863141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A014664 (n + 2) : ℚ)

end

end A001917.P6263687938164863141

/-! ## A001917.P2486266770576471799

`A000010(A065091(n+1))/A014664(n+2)`
-/

namespace A001917.P2486266770576471799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A065091 (n + 1)).toNat : ℚ) / (A014664 (n + 2) : ℚ)

end

end A001917.P2486266770576471799

/-! ## A001917.P1317837623993411540

`A006694(A005097(n+1))`
-/

namespace A001917.P1317837623993411540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A005097 (n + 1)).toNat

end

end A001917.P1317837623993411540

/-! ## A001917.P2708570797899124128

`A006694(A102781(n+2))`
-/

namespace A001917.P2708570797899124128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A102781 (n + 2)).toNat

end

end A001917.P2708570797899124128

/-! ## A001917.P17987545303860793930

`A006694(A130290(n+2))`
-/

namespace A001917.P17987545303860793930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A130290 (n + 2)).toNat

end

end A001917.P17987545303860793930

/-! ## A001917.P9543205239824355903

`A037226(eq[2, A119323(n+1)])`
-/

namespace A001917.P9543205239824355903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001917.P9543205239824355903

/-! ## A001917.P13381198898063483428

`A005843(A005097(n+1))/A014664(n+2)`
-/

namespace A001917.P13381198898063483428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A005097 (n + 1)).toNat : ℚ) / (A014664 (n + 2) : ℚ)

end

end A001917.P13381198898063483428

/-! ## A001917.P14885612972608331050

`A318622(p?[2*n+1])`
-/

namespace A001917.P14885612972608331050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A001917.P14885612972608331050

/-! ## A001917.P14061647493207479670

`A318622(A045319(n+1))`
-/

namespace A001917.P14061647493207479670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A045319 (n + 1)).toNat

end

end A001917.P14061647493207479670

/-! ## A001917.P13468844533199609317

`A318622(A045344(n+1))`
-/

namespace A001917.P13468844533199609317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A045344 (n + 1)).toNat

end

end A001917.P13468844533199609317

/-! ## A001917.P14024722393261303012

`A318622(A065091(n+1))`
-/

namespace A001917.P14024722393261303012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A065091 (n + 1)).toNat

end

end A001917.P14024722393261303012

/-! ## A001917.P12683986429442581643

`A318622(A140475(n+1))`
-/

namespace A001917.P12683986429442581643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A140475 (n + 1)).toNat

end

end A001917.P12683986429442581643

/-! ## A001917.P14172769033846564717

`A318622(A387959(n+1))`
-/

namespace A001917.P14172769033846564717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A387959 (n + 1)).toNat

end

end A001917.P14172769033846564717

/-! ## A001917.P16370139203236748814

`A318622(A000040(n+2))`
-/

namespace A001917.P16370139203236748814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A000040 (n + 2)).toNat

end

end A001917.P16370139203236748814

/-! ## A001917.P8376531897524661925

`A318622(A006005(n+2))`
-/

namespace A001917.P8376531897524661925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A006005 (n + 2)).toNat

end

end A001917.P8376531897524661925

/-! ## A001917.P11823841615436143718

`A318622(A161847(n+2))`
-/

namespace A001917.P11823841615436143718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A161847 (n + 2)).toNat

end

end A001917.P11823841615436143718

/-!
# A001918: Least positive primitive root of n-th prime.

The programs for A001918, there is no canonical definition to state claims against.
-/

/-! ## A001918.P5788785386127458854

`A071894(n+1)-A128906(n+1)`
-/

namespace A001918.P5788785386127458854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071894 (n + 1) - A128906 (n + 1)

end

end A001918.P5788785386127458854

/-! ## A001918.P14918898630552573501

`A000040(n+1)-(A128906(n+1)+A002199(n+1))`
-/

namespace A001918.P14918898630552573501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A128906 (n + 1) + A002199 (n + 1))

end

end A001918.P14918898630552573501

/-! ## A001918.P6571645809885098745

`A046145(p?[comp[n²]])`
-/

namespace A001918.P6571645809885098745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A001918.P6571645809885098745

/-! ## A001918.P2428305528018823935

`A046145(Δ[A007504(n)])`
-/

namespace A001918.P2428305528018823935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (n + 1) - f1 n).toNat

end

end A001918.P2428305528018823935

/-! ## A001918.P6524706250347266615

`A111076(Δ[A007504(n)])`
-/

namespace A001918.P6524706250347266615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (n + 1) - f1 n).toNat

end

end A001918.P6524706250347266615

/-! ## A001918.P15514115824467970728

`A046145(A000040(n+1))`
-/

namespace A001918.P15514115824467970728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A000040 (n + 1)).toNat

end

end A001918.P15514115824467970728

/-! ## A001918.P8260979502269060472

`A111076(A006005(n+1))`
-/

namespace A001918.P8260979502269060472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A006005 (n + 1)).toNat

end

end A001918.P8260979502269060472

/-! ## A001918.P6566239979444500884

`A046145(A008578(n+2))`
-/

namespace A001918.P6566239979444500884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A008578 (n + 2)).toNat

end

end A001918.P6566239979444500884

/-! ## A001918.P757647326611488057

`A111076(A075643(n+2))`
-/

namespace A001918.P757647326611488057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A075643 (n + 2)).toNat

end

end A001918.P757647326611488057

/-! ## A001918.P7502269074672690251

`A046145(A182986(n+2))`
-/

namespace A001918.P7502269074672690251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A182986 (n + 2)).toNat

end

end A001918.P7502269074672690251

/-! ## A001918.P14767890935835579552

`A046145(eq[1, A032741(n)])`
-/

namespace A001918.P14767890935835579552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001918.P14767890935835579552

/-! ## A001918.P6851749598708941074

`A046145(eq[3, A226602(n)])`
-/

namespace A001918.P6851749598708941074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001918.P6851749598708941074

/-! ## A001918.P10497083389013362512

`A046145(sqrt(A001248(n+1)))`
-/

namespace A001918.P10497083389013362512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A001918.P10497083389013362512

/-! ## A001918.P8135567792672611040

`A046145(record[A111089(n+1)])`
-/

namespace A001918.P8135567792672611040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001918.P8135567792672611040

/-! ## A001918.P14273275182559460011

`A046145(record[A006530(n+2)])`
-/

namespace A001918.P14273275182559460011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001918.P14273275182559460011

/-! ## A001918.P8303365938355850284

`A046145(record[A020639(n+2)])`
-/

namespace A001918.P8303365938355850284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001918.P8303365938355850284

/-! ## A001918.P16889042012159076579

`A111076(record[A006530(n+2)])`
-/

namespace A001918.P16889042012159076579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001918.P16889042012159076579

/-! ## A001918.P2573944674548247527

`A111076(record[A020639(n+2)])`
-/

namespace A001918.P2573944674548247527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001918.P2573944674548247527

/-! ## A001918.P7057577242336948108

`A111076(A006093(n+1)+1)`
-/

namespace A001918.P7057577242336948108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A006093 (n + 1) + 1).toNat

end

end A001918.P7057577242336948108

/-! ## A001918.P1384164901421292564

`A046145(A100484(n+1)/2)`
-/

namespace A001918.P1384164901421292564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A001918.P1384164901421292564

/-!
# A001919: Eighth column of quadrinomial coefficients.

The programs for A001919, the canonical program `A001919.P17973059972441841009` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001919 has offset 3).

The definition of A001919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001919.P6494997903135051346

`C(n+5, 5)*((n+3)²+21*(n+3)+180)/42`
-/

namespace A001919.P6494997903135051346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 * ((n + 3) ^ 2 + 21 * (n + 3) + 180) : ℚ) / 42

end

end A001919.P6494997903135051346

namespace A001919

/-- `C(n+5, 5)*((n+3)²+21*(n+3)+180)/42` -/
def P6494997903135051346.Spec : Prop :=
  ∀ n, P6494997903135051346.a n = (A001919 (n + 3) : ℚ)

theorem P6494997903135051346.correct : P6494997903135051346.Spec := by
  intro n
  simp only [A001919, Nat.add_sub_cancel, A001919.P6494997903135051346.a, A001919.P17973059972441841009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001919

/-! ## A001919.P17973059972441841009

`6*C(n+3, 3)+16*C(n+3, 4)+15*C(n+3, 5)+6*C(n+3, 6)+C(n+3, 7)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001919

/-- `6*C(n+3, 3)+16*C(n+3, 4)+15*C(n+3, 5)+6*C(n+3, 6)+C(n+3, 7)` -/
def P17973059972441841009.Spec : Prop :=
  ∀ n, (P17973059972441841009.a n : ℤ) = A001919 (n + 3)

theorem P17973059972441841009.correct : P17973059972441841009.Spec := by
  intro n
  simp only [A001919, Nat.add_sub_cancel]

end A001919

/-! ## A001919.P11136240554935327468

`∑[∑[∑[∑[∑[∑[n+3]+3]]]]]`
-/

namespace A001919.P11136240554935327468
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001919.P11136240554935327468

namespace A001919

/-- `∑[∑[∑[∑[∑[∑[n+3]+3]]]]]` -/
def P11136240554935327468.Spec : Prop :=
  ∀ n, (P11136240554935327468.a n : ℤ) = A001919 (n + 3)

end A001919

/-! ## A001919.P1323261474040488917

`A062990(n)+A005714(n+3)`
-/

namespace A001919.P1323261474040488917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062990 n + A005714 (n + 3)

end

end A001919.P1323261474040488917

namespace A001919

/-- `A062990(n)+A005714(n+3)` -/
def P1323261474040488917.Spec : Prop :=
  ∀ n, P1323261474040488917.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P14416186857915787051

`Δ[A064058(n)-A034263(n)]`
-/

namespace A001919.P14416186857915787051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n - A034263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001919.P14416186857915787051

namespace A001919

/-- `Δ[A064058(n)-A034263(n)]` -/
def P14416186857915787051.Spec : Prop :=
  ∀ n, P14416186857915787051.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P13527236171655174269

`A258731(n+1)-Δ[A063258(n)]`
-/

namespace A001919.P13527236171655174269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258731 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001919.P13527236171655174269

namespace A001919

/-- `A258731(n+1)-Δ[A063258(n)]` -/
def P13527236171655174269.Spec : Prop :=
  ∀ n, P13527236171655174269.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P11985918853630568911

`A064058(n+1)-A000581(n+9)`
-/

namespace A001919.P11985918853630568911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1) - A000581 (n + 9)

end

end A001919.P11985918853630568911

namespace A001919

/-- `A064058(n+1)-A000581(n+9)` -/
def P11985918853630568911.Spec : Prop :=
  ∀ n, P11985918853630568911.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P8439625985035529411

`Δ[A005716(n+4)-∑[A040977(n)]]`
-/

namespace A001919.P8439625985035529411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001919.P8439625985035529411

namespace A001919

/-- `Δ[A005716(n+4)-∑[A040977(n)]]` -/
def P8439625985035529411.Spec : Prop :=
  ∀ n, P8439625985035529411.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P16209378567822744081

`Δ[∑[A064058(n)]-A000582(n+9)]`
-/

namespace A001919.P16209378567822744081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001919.P16209378567822744081

namespace A001919

/-- `Δ[∑[A064058(n)]-A000582(n+9)]` -/
def P16209378567822744081.Spec : Prop :=
  ∀ n, P16209378567822744081.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P3743361288051391127

`A064058(n+1)-Δ[A000582(n+9)]`
-/

namespace A001919.P3743361288051391127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001919.P3743361288051391127

namespace A001919

/-- `A064058(n+1)-Δ[A000582(n+9)]` -/
def P3743361288051391127.Spec : Prop :=
  ∀ n, P3743361288051391127.a n = A001919 (n + 3)

end A001919

/-! ## A001919.P15646292985674269992

`A253942(n+4)+A095663(n)`
-/

namespace A001919.P15646292985674269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + A095663 n

end

end A001919.P15646292985674269992

namespace A001919

/-- `A253942(n+4)+A095663(n)` -/
def P15646292985674269992.Spec : Prop :=
  ∀ n, P15646292985674269992.a n = A001919 (n + 3)

end A001919

/-!
# A001920: Expansion of 1/(1+759*x^2+2576*x^3+759*x^4+x^6).

The programs for A001920, there is no canonical definition to state claims against.
-/

/-! ## A001920.P3248540912859895257

`A157830(4*n)`
-/

namespace A001920.P3248540912859895257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 (4 * n)

end

end A001920.P3248540912859895257

/-! ## A001920.P16689322029633878474

`floor(A157830(A008574(n))+acot(n))`
-/

namespace A001920.P16689322029633878474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157830 (A008574 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A001920.P16689322029633878474

/-! ## A001920.P11401109477364229044

`A157830(A008574(n))+A000007(n)`
-/

namespace A001920.P11401109477364229044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 (A008574 n).toNat + A000007 n

end

end A001920.P11401109477364229044

/-! ## A001920.P18351313451760113360

`A157830(A008574(n))+A023929(n)`
-/

namespace A001920.P18351313451760113360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 (A008574 n).toNat + A023929 n

end

end A001920.P18351313451760113360

/-! ## A001920.P10992552426909637644

`A157830(A008574(n))+A023931(n)`
-/

namespace A001920.P10992552426909637644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 (A008574 n).toNat + A023931 n

end

end A001920.P10992552426909637644

/-!
# A001921: a(n) = 14*a(n-1) - a(n-2) + 6 for n>1, a(0)=0, a(1)=7.

The programs for A001921, the canonical program `A001921.P746869014017220361` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001921 has offset 0).

The definition of A001921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)+6` (program `A001921.P746869014017220361`, by `A001921.P746869014017220361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001921.P746869014017220361

`14*a(n-1)-a(n-2)+6` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001921

/-- `14*a(n-1)-a(n-2)+6` -/
def P746869014017220361.Spec : Prop :=
  ∀ n, P746869014017220361.a n = A001921 n

theorem P746869014017220361.correct : P746869014017220361.Spec := by
  intro n
  simp only [A001921]

end A001921

/-! ## A001921.P6485299974286426064

`(A028230(n+1)-1)/2`
-/

namespace A001921.P6485299974286426064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028230 (n + 1) - 1 : ℚ) / 2

end

end A001921.P6485299974286426064

namespace A001921

/-- `(A028230(n+1)-1)/2` -/
def P6485299974286426064.Spec : Prop :=
  ∀ n, P6485299974286426064.a n = (A001921 n : ℚ)

end A001921

/-! ## A001921.P11947678992254888432

`∑[ogf((1-7x)/(1-14x+x^2))]-1`
-/

namespace A001921.P11947678992254888432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001921.P11947678992254888432

namespace A001921

/-- `∑[ogf((1-7x)/(1-14x+x^2))]-1` -/
def P11947678992254888432.Spec : Prop :=
  ∀ n, P11947678992254888432.a n = A001921 n

end A001921

/-! ## A001921.P17225944091583544003

`floor(∑[round(((sqrt(3)+2)^n)²)]/2)`
-/

namespace A001921.P17225944091583544003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A001921.P17225944091583544003

namespace A001921

/-- `floor(∑[round(((sqrt(3)+2)^n)²)]/2)` -/
def P17225944091583544003.Spec : Prop :=
  ∀ n, P17225944091583544003.a n = A001921 n

end A001921

/-! ## A001921.P16110421960912615610

`floor((sqrt(3)+2)²*a(n-1))+7` with `a(0)=0`
-/

namespace A001921.P16110421960912615610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 7

end

end A001921.P16110421960912615610

namespace A001921

/-- `floor((sqrt(3)+2)²*a(n-1))+7` -/
def P16110421960912615610.Spec : Prop :=
  ∀ n, P16110421960912615610.a n = A001921 n

end A001921

/-! ## A001921.P376763949520665547

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=7, a(2)=97`
-/

namespace A001921.P376763949520665547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 97] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001921.P376763949520665547

namespace A001921

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P376763949520665547.Spec : Prop :=
  ∀ n, P376763949520665547.a n = A001921 n

end A001921

/-! ## A001921.P3483980023313687011

`A001922(n)-1`
-/

namespace A001921.P3483980023313687011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001922 n - 1

end

end A001921.P3483980023313687011

namespace A001921

/-- `A001922(n)-1` -/
def P3483980023313687011.Spec : Prop :=
  ∀ n, P3483980023313687011.a n = A001921 n

end A001921

/-! ## A001921.P4416153535031726467

`A157088(n)/3`
-/

namespace A001921.P4416153535031726467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157088 n : ℚ) / 3

end

end A001921.P4416153535031726467

namespace A001921

/-- `A157088(n)/3` -/
def P4416153535031726467.Spec : Prop :=
  ∀ n, P4416153535031726467.a n = (A001921 n : ℚ)

end A001921

/-! ## A001921.P15780637369449308117

`A251963(n+1)/2`
-/

namespace A001921.P15780637369449308117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251963 (n + 1) : ℚ) / 2

end

end A001921.P15780637369449308117

namespace A001921

/-- `A251963(n+1)/2` -/
def P15780637369449308117.Spec : Prop :=
  ∀ n, P15780637369449308117.a n = (A001921 n : ℚ)

end A001921

/-! ## A001921.P4586130089943106826

`(A028231(n)-1)/3`
-/

namespace A001921.P4586130089943106826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028231 n - 1 : ℚ) / 3

end

end A001921.P4586130089943106826

namespace A001921

/-- `(A028231(n)-1)/3` -/
def P4586130089943106826.Spec : Prop :=
  ∀ n, P4586130089943106826.a n = (A001921 n : ℚ)

end A001921

/-!
# A001922: Numbers k such that 3*k^2 - 3*k + 1 is both a square (A000290) and a centered hexagonal number (A003215).

The programs for A001922, the canonical program `A001922.P13441099582543714703` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001922 has offset 0).

The definition of A001922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001922.P13441099582543714703

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=105`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001922

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P13441099582543714703.Spec : Prop :=
  ∀ n, P13441099582543714703.a n = A001922 n

theorem P13441099582543714703.correct : P13441099582543714703.Spec := by
  intro n
  simp only [A001922]

end A001922

/-! ## A001922.P14851277423609900961

`1+A001921(n)`
-/

namespace A001922.P14851277423609900961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001921 n

end

end A001922.P14851277423609900961

namespace A001922

/-- `1+A001921(n)` -/
def P14851277423609900961.Spec : Prop :=
  ∀ n, P14851277423609900961.a n = A001922 n

end A001922

/-! ## A001922.P16067772227540166648

`A001075(n)*A001353(n+1)`
-/

namespace A001922.P16067772227540166648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n * A001353 (n + 1)

end

end A001922.P16067772227540166648

namespace A001922

/-- `A001075(n)*A001353(n+1)` -/
def P16067772227540166648.Spec : Prop :=
  ∀ n, P16067772227540166648.a n = A001922 n

end A001922

/-! ## A001922.P7122168343330877424

`A076139(n+1)-7*A076139(n)`
-/

namespace A001922.P7122168343330877424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (n + 1) - 7 * A076139 n

end

end A001922.P7122168343330877424

namespace A001922

/-- `A076139(n+1)-7*A076139(n)` -/
def P7122168343330877424.Spec : Prop :=
  ∀ n, P7122168343330877424.a n = A001922 n

end A001922

/-! ## A001922.P18375231183743280985

`∑[ogf((1-7x)/(1-14x+x^2))]`
-/

namespace A001922.P18375231183743280985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001922.P18375231183743280985

namespace A001922

/-- `∑[ogf((1-7x)/(1-14x+x^2))]` -/
def P18375231183743280985.Spec : Prop :=
  ∀ n, P18375231183743280985.a n = A001922 n

end A001922

/-! ## A001922.P13929929712151898167

`ogf((1-7x)/(1-15x+15x^2-x^3))`
-/

namespace A001922.P13929929712151898167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -15, 15, -1] n

end

end A001922.P13929929712151898167

namespace A001922

/-- `ogf((1-7x)/(1-15x+15x^2-x^3))` -/
def P13929929712151898167.Spec : Prop :=
  ∀ n, P13929929712151898167.a n = A001922 n

end A001922

/-! ## A001922.P10828165711408802063

`ceil(∑[round(((sqrt(3)+2)^n)²)]/2)`
-/

namespace A001922.P10828165711408802063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A001922.P10828165711408802063

namespace A001922

/-- `ceil(∑[round(((sqrt(3)+2)^n)²)]/2)` -/
def P10828165711408802063.Spec : Prop :=
  ∀ n, P10828165711408802063.a n = A001922 n

end A001922

/-! ## A001922.P6060565266123993296

`∑[floor((sqrt(3)+2)²*a(n-1))]` with `a(0)=1, a(1)=7`
-/

namespace A001922.P6060565266123993296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001922.P6060565266123993296

namespace A001922

/-- `∑[floor((sqrt(3)+2)²*a(n-1))]` -/
def P6060565266123993296.Spec : Prop :=
  ∀ n, P6060565266123993296.a n = A001922 n

end A001922

/-! ## A001922.P12914254567773958001

`∑[14*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=7`
-/

namespace A001922.P12914254567773958001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001922.P12914254567773958001

namespace A001922

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P12914254567773958001.Spec : Prop :=
  ∀ n, P12914254567773958001.a n = A001922 n

end A001922

/-! ## A001922.P12382986385652736877

`14*a(n-1)-a(n-2)-6` with `a(0)=1, a(1)=8`
-/

namespace A001922.P12382986385652736877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  14 * a (n - 1) - a (n - 2) - 6

end

end A001922.P12382986385652736877

namespace A001922

/-- `14*a(n-1)-a(n-2)-6` -/
def P12382986385652736877.Spec : Prop :=
  ∀ n, P12382986385652736877.a n = A001922 n

end A001922

/-!
# A001923: a(n) = Sum_{k=1..n} k^k.

The programs for A001923, the canonical program `A001923.P5884315793935045378` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001923 has offset 0).

The definition of A001923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001923.P6095785931159823113

`A062970(n)-1`
-/

namespace A001923.P6095785931159823113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n - 1

end

end A001923.P6095785931159823113

namespace A001923

/-- `A062970(n)-1` -/
def P6095785931159823113.Spec : Prop :=
  ∀ n, P6095785931159823113.a n = A001923 n

theorem P6095785931159823113.correct : P6095785931159823113.Spec := by
  intro n
  simp only [A001923, Nat.add_sub_cancel, A001923.P6095785931159823113.a, A001923.P5884315793935045378.a, A000312, A000312.P3932771318196185165.a, A062970, A062970.P9271376026130432570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001923

/-! ## A001923.P5884315793935045378

`a(n-1)+A000312(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001923

/-- `a(n-1)+A000312(n)` -/
def P5884315793935045378.Spec : Prop :=
  ∀ n, P5884315793935045378.a n = A001923 n

theorem P5884315793935045378.correct : P5884315793935045378.Spec := by
  intro n
  simp only [A001923]

end A001923

/-! ## A001923.P9244604455668136117

`∑[n^n]-1`
-/

namespace A001923.P9244604455668136117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A001923.P9244604455668136117

namespace A001923

/-- `∑[n^n]-1` -/
def P9244604455668136117.Spec : Prop :=
  ∀ n, P9244604455668136117.a n = A001923 n

end A001923

/-! ## A001923.P6775900200703823559

`∑[lcm(n, (-n)^n)]`
-/

namespace A001923.P6775900200703823559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001923.P6775900200703823559

namespace A001923

/-- `∑[lcm(n, (-n)^n)]` -/
def P6775900200703823559.Spec : Prop :=
  ∀ n, (P6775900200703823559.a n : ℤ) = A001923 n

end A001923

/-! ## A001923.P9072735583795817619

`xor(2, ∑[n^n]+1)`
-/

namespace A001923.P9072735583795817619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001923.P9072735583795817619

namespace A001923

/-- `xor(2, ∑[n^n]+1)` -/
def P9072735583795817619.Spec : Prop :=
  ∀ n, (P9072735583795817619.a n : ℤ) = A001923 n

end A001923

/-! ## A001923.P8195577751373576603

`floor(∑[cot(1/n^n)])`
-/

namespace A001923.P8195577751373576603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 / (n ^ n : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A001923.P8195577751373576603

namespace A001923

/-- `floor(∑[cot(1/n^n)])` -/
def P8195577751373576603.Spec : Prop :=
  ∀ n, P8195577751373576603.a n = A001923 n

end A001923

/-! ## A001923.P9074030425986875384

`∑[n^round(1/acot(n))]`
-/

namespace A001923.P9074030425986875384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001923.P9074030425986875384

namespace A001923

/-- `∑[n^round(1/acot(n))]` -/
def P9074030425986875384.Spec : Prop :=
  ∀ n, P9074030425986875384.a n = (A001923 n : ℚ)

end A001923

/-! ## A001923.P10068072643590365064

`∑[n^gcd(n, ∏{d}[n, #])]`
-/

namespace A001923.P10068072643590365064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001923.P10068072643590365064

namespace A001923

/-- `∑[n^gcd(n, ∏{d}[n, #])]` -/
def P10068072643590365064.Spec : Prop :=
  ∀ n, (P10068072643590365064.a n : ℤ) = A001923 n

end A001923

/-! ## A001923.P4840466971495600068

`∑[n^floor(acot(n)+n)]`
-/

namespace A001923.P4840466971495600068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001923.P4840466971495600068

namespace A001923

/-- `∑[n^floor(acot(n)+n)]` -/
def P4840466971495600068.Spec : Prop :=
  ∀ n, P4840466971495600068.a n = (A001923 n : ℚ)

end A001923

/-! ## A001923.P3538861067464387809

`∑[n^n*ceil(tanh(n))]`
-/

namespace A001923.P3538861067464387809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * ⌈Real.tanh (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001923.P3538861067464387809

namespace A001923

/-- `∑[n^n*ceil(tanh(n))]` -/
def P3538861067464387809.Spec : Prop :=
  ∀ n, P3538861067464387809.a n = A001923 n

end A001923

/-!
# A001924: Apply partial sum operator twice to Fibonacci numbers.

The programs for A001924, the canonical program `A001924.P6748893244149044388` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001924 has offset 0).

The definition of A001924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001924.P6748893244149044388

`a(n-1)+a(n-2)+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001924

/-- `a(n-1)+a(n-2)+n` -/
def P6748893244149044388.Spec : Prop :=
  ∀ n, (P6748893244149044388.a n : ℤ) = A001924 n

theorem P6748893244149044388.correct : P6748893244149044388.Spec := by
  intro n
  simp only [A001924]

end A001924

/-! ## A001924.P7250508287293479184

`A000126(n+1)-1`
-/

namespace A001924.P7250508287293479184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - 1

end

end A001924.P7250508287293479184

namespace A001924

/-- `A000126(n+1)-1` -/
def P7250508287293479184.Spec : Prop :=
  ∀ n, P7250508287293479184.a n = A001924 n

end A001924

/-! ## A001924.P3114537523739284574

`A065220(n+4)+1`
-/

namespace A001924.P3114537523739284574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 4) + 1

end

end A001924.P3114537523739284574

namespace A001924

/-- `A065220(n+4)+1` -/
def P3114537523739284574.Spec : Prop :=
  ∀ n, P3114537523739284574.a n = A001924 n

end A001924

/-! ## A001924.P9819078012216390008

`A000045(n+4)-(3+n)`
-/

namespace A001924.P9819078012216390008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - (3 + n : ℤ)

end

end A001924.P9819078012216390008

namespace A001924

/-- `A000045(n+4)-(3+n)` -/
def P9819078012216390008.Spec : Prop :=
  ∀ n, P9819078012216390008.a n = A001924 n

end A001924

/-! ## A001924.P4347156601638661576

`a(n-1)+A000071(n+2)` with `a(0)=0`
-/

namespace A001924.P4347156601638661576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000071 (n + 2)

end

end A001924.P4347156601638661576

namespace A001924

/-- `a(n-1)+A000071(n+2)` -/
def P4347156601638661576.Spec : Prop :=
  ∀ n, P4347156601638661576.a n = A001924 n

end A001924

/-! ## A001924.P11848034638372118648

`A001891(n)-a(n-1)` with `a(0)=0`
-/

namespace A001924.P11848034638372118648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001891 n - a (n - 1)

end

end A001924.P11848034638372118648

namespace A001924

/-- `A001891(n)-a(n-1)` -/
def P11848034638372118648.Spec : Prop :=
  ∀ n, P11848034638372118648.a n = A001924 n

end A001924

/-! ## A001924.P11642823051905732087

`∑[ogf(x/(1-2x+x^3))]`
-/

namespace A001924.P11642823051905732087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P11642823051905732087

namespace A001924

/-- `∑[ogf(x/(1-2x+x^3))]` -/
def P11642823051905732087.Spec : Prop :=
  ∀ n, P11642823051905732087.a n = A001924 n

end A001924

/-! ## A001924.P6925623630780230302

`ogf(x/(1-3x+2x^2+x^3-x^4))`
-/

namespace A001924.P6925623630780230302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 2, 1, -1] n

end

end A001924.P6925623630780230302

namespace A001924

/-- `ogf(x/(1-3x+2x^2+x^3-x^4))` -/
def P6925623630780230302.Spec : Prop :=
  ∀ n, P6925623630780230302.a n = A001924 n

end A001924

/-! ## A001924.P8728279647548290614

`∑[floor(ϕ*a(n-1))+1]` with `a(0)=0`
-/

namespace A001924.P8728279647548290614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P8728279647548290614

namespace A001924

/-- `∑[floor(ϕ*a(n-1))+1]` -/
def P8728279647548290614.Spec : Prop :=
  ∀ n, P8728279647548290614.a n = A001924 n

end A001924

/-! ## A001924.P13976928371181831250

`∑[2*a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001924.P13976928371181831250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P13976928371181831250

namespace A001924

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P13976928371181831250.Spec : Prop :=
  ∀ n, P13976928371181831250.a n = A001924 n

end A001924

/-! ## A001924.P18237218283320030239

`2*n-(n-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001924.P18237218283320030239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A001924.P18237218283320030239

namespace A001924

/-- `2*n-(n-a(n-1)-a(n-2))` -/
def P18237218283320030239.Spec : Prop :=
  ∀ n, P18237218283320030239.a n = A001924 n

end A001924

/-! ## A001924.P1999398341260507595

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001924.P1999398341260507595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P1999398341260507595

namespace A001924

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P1999398341260507595.Spec : Prop :=
  ∀ n, P1999398341260507595.a n = A001924 n

end A001924

/-! ## A001924.P17724480385210947691

`∑[∑[A000045(n)]]`
-/

namespace A001924.P17724480385210947691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P17724480385210947691

namespace A001924

/-- `∑[∑[A000045(n)]]` -/
def P17724480385210947691.Spec : Prop :=
  ∀ n, P17724480385210947691.a n = A001924 n

end A001924

/-! ## A001924.P3992646790984458636

`∑[A000071(n+2)]`
-/

namespace A001924.P3992646790984458636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P3992646790984458636

namespace A001924

/-- `∑[A000071(n+2)]` -/
def P3992646790984458636.Spec : Prop :=
  ∀ n, P3992646790984458636.a n = A001924 n

end A001924

/-! ## A001924.P15683549980785503317

`∑[A339572(2*n)]`
-/

namespace A001924.P15683549980785503317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P15683549980785503317

namespace A001924

/-- `∑[A339572(2*n)]` -/
def P15683549980785503317.Spec : Prop :=
  ∀ n, P15683549980785503317.a n = A001924 n

end A001924

/-! ## A001924.P250440438266627157

`∑[A321664(3*n)]`
-/

namespace A001924.P250440438266627157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P250440438266627157

namespace A001924

/-- `∑[A321664(3*n)]` -/
def P250440438266627157.Spec : Prop :=
  ∀ n, P250440438266627157.a n = A001924 n

end A001924

/-! ## A001924.P11123597854604798343

`∑[∑[abs(A236191(n))]]`
-/

namespace A001924.P11123597854604798343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P11123597854604798343

namespace A001924

/-- `∑[∑[abs(A236191(n))]]` -/
def P11123597854604798343.Spec : Prop :=
  ∀ n, P11123597854604798343.a n = A001924 n

end A001924

/-! ## A001924.P3244844180279453772

`∑[∑[abs(A333378(n))]]`
-/

namespace A001924.P3244844180279453772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A333378 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P3244844180279453772

namespace A001924

/-- `∑[∑[abs(A333378(n))]]` -/
def P3244844180279453772.Spec : Prop :=
  ∀ n, P3244844180279453772.a n = A001924 n

end A001924

/-! ## A001924.P8287911553649498304

`∑[A131524(Δ[n²])]`
-/

namespace A001924.P8287911553649498304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001924.P8287911553649498304

namespace A001924

/-- `∑[A131524(Δ[n²])]` -/
def P8287911553649498304.Spec : Prop :=
  ∀ n, P8287911553649498304.a n = A001924 n

end A001924

/-!
# A001925: From rook polynomials.

The programs for A001925, the canonical program `A001925.P1594397707320357394` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001925 has offset 0).

The definition of A001925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001925.P2969823968433820594

`∑[∑[∑[ogf((1+x)/(1-2x-x^2+2x^3+x^4))]]]`
-/

namespace A001925.P2969823968433820594
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P2969823968433820594

namespace A001925

/-- `∑[∑[∑[ogf((1+x)/(1-2x-x^2+2x^3+x^4))]]]` -/
def P2969823968433820594.Spec : Prop :=
  ∀ n, P2969823968433820594.a n = A001925 n

end A001925

/-! ## A001925.P1594397707320357394

`∑[∑[∑[A023610(n)]]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001925

/-- `∑[∑[∑[A023610(n)]]]` -/
def P1594397707320357394.Spec : Prop :=
  ∀ n, P1594397707320357394.a n = A001925 n

theorem P1594397707320357394.correct : P1594397707320357394.Spec := by
  intro n
  simp only [A001925]

end A001925

/-! ## A001925.P11527499186865461108

`∑[∑[A002940(n+1)]]`
-/

namespace A001925.P11527499186865461108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P11527499186865461108

namespace A001925

/-- `∑[∑[A002940(n+1)]]` -/
def P11527499186865461108.Spec : Prop :=
  ∀ n, P11527499186865461108.a n = A001925 n

end A001925

/-! ## A001925.P280520075963648673

`∑[∑[∑[A113684(n)+1+n]]]`
-/

namespace A001925.P280520075963648673
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 n + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P280520075963648673

namespace A001925

/-- `∑[∑[∑[A113684(n)+1+n]]]` -/
def P280520075963648673.Spec : Prop :=
  ∀ n, P280520075963648673.a n = A001925 n

end A001925

/-! ## A001925.P5449876525596666781

`∑[∑[A014286(n+1)+A001629(n+1)]]`
-/

namespace A001925.P5449876525596666781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + A001629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P5449876525596666781

namespace A001925

/-- `∑[∑[A014286(n+1)+A001629(n+1)]]` -/
def P5449876525596666781.Spec : Prop :=
  ∀ n, P5449876525596666781.a n = A001925 n

end A001925

/-! ## A001925.P10451662838844173863

`∑[∑[A178523(n+3)-A067331(n+1)]]`
-/

namespace A001925.P10451662838844173863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 3) - A067331 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P10451662838844173863

namespace A001925

/-- `∑[∑[A178523(n+3)-A067331(n+1)]]` -/
def P10451662838844173863.Spec : Prop :=
  ∀ n, P10451662838844173863.a n = A001925 n

end A001925

/-! ## A001925.P8993356348379987310

`A259454(∑[n+2]-1)`
-/

namespace A001925.P8993356348379987310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001925.P8993356348379987310

namespace A001925

/-- `A259454(∑[n+2]-1)` -/
def P8993356348379987310.Spec : Prop :=
  ∀ n, P8993356348379987310.a n = A001925 n

end A001925

/-! ## A001925.P2225419328724620349

`record[gcd(A259454(n), A259475(n+1))]`
-/

namespace A001925.P2225419328724620349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259454 n) (A259475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001925.P2225419328724620349

namespace A001925

/-- `record[gcd(A259454(n), A259475(n+1))]` -/
def P2225419328724620349.Spec : Prop :=
  ∀ n, (P2225419328724620349.a n : ℤ) = A001925 n

end A001925

/-! ## A001925.P4305538463817807137

`∑[∑[A046741(∑[n+2]-1)]]`
-/

namespace A001925.P4305538463817807137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (∑ j ∈ Finset.range (n + 1), f3 j - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001925.P4305538463817807137

namespace A001925

/-- `∑[∑[A046741(∑[n+2]-1)]]` -/
def P4305538463817807137.Spec : Prop :=
  ∀ n, P4305538463817807137.a n = A001925 n

end A001925

/-!
# A001926: G.f.: (1+x)^2/[(1-x)^4(1-x-x^2)^3].

The programs for A001926, the canonical program `A001926.P6115818722661566997` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001926 has offset 0).

The definition of A001926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001926.P6115818722661566997

`∑[∑[A002941(n+1)]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001926

/-- `∑[∑[A002941(n+1)]]` -/
def P6115818722661566997.Spec : Prop :=
  ∀ n, P6115818722661566997.a n = A001926 n

theorem P6115818722661566997.correct : P6115818722661566997.Spec := by
  intro n
  simp only [A001926]

end A001926

/-! ## A001926.P11044332643628458378

`A259454(∑[n+3])`
-/

namespace A001926.P11044332643628458378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001926.P11044332643628458378

namespace A001926

/-- `A259454(∑[n+3])` -/
def P11044332643628458378.Spec : Prop :=
  ∀ n, P11044332643628458378.a n = A001926 n

end A001926

/-! ## A001926.P1482159417194758062

`record[gcd(A259454(n), A259475(n+2))]`
-/

namespace A001926.P1482159417194758062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259454 n) (A259475 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P1482159417194758062

namespace A001926

/-- `record[gcd(A259454(n), A259475(n+2))]` -/
def P1482159417194758062.Spec : Prop :=
  ∀ n, (P1482159417194758062.a n : ℤ) = A001926 n

end A001926

/-! ## A001926.P13548657628146773621

`record[A259454(A027379(A008624(n)))]`
-/

namespace A001926.P13548657628146773621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A027379 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P13548657628146773621

namespace A001926

/-- `record[A259454(A027379(A008624(n)))]` -/
def P13548657628146773621.Spec : Prop :=
  ∀ n, P13548657628146773621.a n = A001926 n

end A001926

/-! ## A001926.P2242549478133942059

`record[A259454(A055998(A008611(n)))]`
-/

namespace A001926.P2242549478133942059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P2242549478133942059

namespace A001926

/-- `record[A259454(A055998(A008611(n)))]` -/
def P2242549478133942059.Spec : Prop :=
  ∀ n, P2242549478133942059.a n = A001926 n

end A001926

/-! ## A001926.P13408751169919679436

`record[A259454(A055998(A057979(n)))]`
-/

namespace A001926.P13408751169919679436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P13408751169919679436

namespace A001926

/-- `record[A259454(A055998(A057979(n)))]` -/
def P13408751169919679436.Spec : Prop :=
  ∀ n, P13408751169919679436.a n = A001926 n

end A001926

/-! ## A001926.P17110614615279731865

`record[A259454(A055998(A103221(n)))]`
-/

namespace A001926.P17110614615279731865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P17110614615279731865

namespace A001926

/-- `record[A259454(A055998(A103221(n)))]` -/
def P17110614615279731865.Spec : Prop :=
  ∀ n, P17110614615279731865.a n = A001926 n

end A001926

/-! ## A001926.P13687958949618651462

`record[A259454(A165157(A014681(n)))]`
-/

namespace A001926.P13687958949618651462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A165157 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P13687958949618651462

namespace A001926

/-- `record[A259454(A165157(A014681(n)))]` -/
def P13687958949618651462.Spec : Prop :=
  ∀ n, P13687958949618651462.a n = A001926 n

end A001926

/-! ## A001926.P13689461835594434284

`record[A259454(A055998(A126759(n)))]`
-/

namespace A001926.P13689461835594434284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P13689461835594434284

namespace A001926

/-- `record[A259454(A055998(A126759(n)))]` -/
def P13689461835594434284.Spec : Prop :=
  ∀ n, P13689461835594434284.a n = A001926 n

end A001926

/-! ## A001926.P1968932822730485796

`record[A259454(A055998(A002260(n+1)))]`
-/

namespace A001926.P1968932822730485796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P1968932822730485796

namespace A001926

/-- `record[A259454(A055998(A002260(n+1)))]` -/
def P1968932822730485796.Spec : Prop :=
  ∀ n, P1968932822730485796.a n = A001926 n

end A001926

/-! ## A001926.P7591347114021928014

`record[A259454(A055998(A004736(n+1)))]`
-/

namespace A001926.P7591347114021928014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P7591347114021928014

namespace A001926

/-- `record[A259454(A055998(A004736(n+1)))]` -/
def P7591347114021928014.Spec : Prop :=
  ∀ n, P7591347114021928014.a n = A001926 n

end A001926

/-! ## A001926.P1623965841336144290

`record[A259454(A055998(A061395(n+1)))]`
-/

namespace A001926.P1623965841336144290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A061395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P1623965841336144290

namespace A001926

/-- `record[A259454(A055998(A061395(n+1)))]` -/
def P1623965841336144290.Spec : Prop :=
  ∀ n, P1623965841336144290.a n = A001926 n

end A001926

/-! ## A001926.P6406353686804639521

`record[A259454(A055998(A290103(n+1)))]`
-/

namespace A001926.P6406353686804639521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259454 (A055998 (A290103 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001926.P6406353686804639521

namespace A001926

/-- `record[A259454(A055998(A290103(n+1)))]` -/
def P6406353686804639521.Spec : Prop :=
  ∀ n, P6406353686804639521.a n = A001926 n

end A001926

/-! ## A001926.P6124580463366600760

`∑[∑[A046741(∑[n+3])]]`
-/

namespace A001926.P6124580463366600760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001926.P6124580463366600760

namespace A001926

/-- `∑[∑[A046741(∑[n+3])]]` -/
def P6124580463366600760.Spec : Prop :=
  ∀ n, P6124580463366600760.a n = A001926 n

end A001926

/-!
# A001927: Number of connected partially ordered sets with n labeled points.

The programs for A001927, there is no canonical definition to state claims against.
-/

/-! ## A001927.P2889812216208617011

`A001035(n)+A046906(n)-A046908(n)`
-/

namespace A001927.P2889812216208617011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n + (A046906 n - A046908 n)

end

end A001927.P2889812216208617011

/-! ## A001927.P12668614145132377801

`abs(record[Δ[A352399(n)]])`
-/

namespace A001927.P12668614145132377801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A001927.P12668614145132377801

/-! ## A001927.P13967671860900182439

`A352399(∑[char[1]+n])`
-/

namespace A001927.P13967671860900182439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001927.P13967671860900182439

/-! ## A001927.P18023709554035765579

`record[A352399(n+1)]+floor(acot(n))`
-/

namespace A001927.P18023709554035765579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A001927.P18023709554035765579

/-! ## A001927.P16762628668730505267

`gcd(A108658(n), A352399(A000124(n)))`
-/

namespace A001927.P16762628668730505267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108658 n) (A352399 (A000124 n).toNat)

end

end A001927.P16762628668730505267

/-!
# A001928: Number of connected topologies with n unlabeled nodes.

The programs for A001928, there is no canonical definition to state claims against.
-/

/-! ## A001928.P18253175720844395296

`A001930(n)+A046909(n)-A046911(n)`
-/

namespace A001928.P18253175720844395296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n + (A046909 n - A046911 n)

end

end A001928.P18253175720844395296

/-! ## A001928.P8069077782529286683

`A095775(A020888(n!))`
-/

namespace A001928.P8069077782529286683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A020888 (Nat.factorial n)).toNat

end

end A001928.P8069077782529286683

/-! ## A001928.P17293616646532071865

`A110656(7*A071075(n))`
-/

namespace A001928.P17293616646532071865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A071075 n).toNat

end

end A001928.P17293616646532071865

/-!
# A001929: Number of connected topologies on n labeled points.

The programs for A001929, there is no canonical definition to state claims against.
-/

/-! ## A001929.P14911440520843193490

`A247232(C(n, 2)+1)`
-/

namespace A001929.P14911440520843193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247232 (Nat.choose n 2 + 1)

end

end A001929.P14911440520843193490

/-! ## A001929.P15917494718426894298

`A247232(∑[abs(1-n)])`
-/

namespace A001929.P15917494718426894298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001929.P15917494718426894298

/-! ## A001929.P10662802581878507988

`or(1, A247232(A152947(n+1)))`
-/

namespace A001929.P10662802581878507988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247232 (A152947 (n + 1)).toNat)

end

end A001929.P10662802581878507988

/-! ## A001929.P12687351343723110805

`A000798(n)+A046910(n)-A046912(n)`
-/

namespace A001929.P12687351343723110805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n + (A046910 n - A046912 n)

end

end A001929.P12687351343723110805

/-!
# A001930: Number of topologies, or transitive digraphs with n unlabeled nodes.

The programs for A001930, there is no canonical definition to state claims against.
-/

/-! ## A001930.P8170855510347820283

`A269381(A189846(n+1)-n)`
-/

namespace A001930.P8170855510347820283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A189846 (n + 1) - (n : ℤ)).toNat

end

end A001930.P8170855510347820283

/-! ## A001930.P11848109370156810594

`A293606(record[gcd(n, ∑[n])])`
-/

namespace A001930.P11848109370156810594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A001930.P11848109370156810594

/-!
# A001931: Number of fixed 3-dimensional polycubes with n cells; lattice animals in the simple cubic lattice (6 nearest neighbors), face-connected cubes.

The programs for A001931, there is no canonical definition to state claims against.
-/

/-! ## A001931.P9800857635557335721

`A048663(n+1)/(n+1)`
-/

namespace A001931.P9800857635557335721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048663 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001931.P9800857635557335721

/-! ## A001931.P3622758553195206546

`floor(A048663(A348553(n))/A348553(n))`
-/

namespace A001931.P3622758553195206546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048663 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌋

end

end A001931.P3622758553195206546

/-! ## A001931.P8191353023153397806

`ceil(A048663(A348553(n))/A291769(n))`
-/

namespace A001931.P8191353023153397806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048663 (A348553 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A001931.P8191353023153397806

/-! ## A001931.P16724051429693595620

`record[A048663(A065033(n))/A008619(n)]`
-/

namespace A001931.P16724051429693595620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048663 (A065033 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001931.P16724051429693595620

/-! ## A001931.P9758057332883225589

`A385291(A167614(n+1))`
-/

namespace A001931.P9758057332883225589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385291 (A167614 (n + 1)).toNat

end

end A001931.P9758057332883225589

/-!
# A001932: Sum of Fibonacci (A000045) and Pell (A000129) numbers.

The programs for A001932, the canonical program `A001932.P5972703990113433722` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001932 has offset 0).

The definition of A001932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001932.P9454491753412297482

`ogf((2x-3x^2-2x^3)/(1-3x+3x^3+x^4))`
-/

namespace A001932.P9454491753412297482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, -2] [1, -3, 0, 3, 1] n

end

end A001932.P9454491753412297482

namespace A001932

/-- `ogf((2x-3x^2-2x^3)/(1-3x+3x^3+x^4))` -/
def P9454491753412297482.Spec : Prop :=
  ∀ n, P9454491753412297482.a n = A001932 n

end A001932

/-! ## A001932.P5972703990113433722

`A000129(n)+A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001932

/-- `A000129(n)+A000045(n)` -/
def P5972703990113433722.Spec : Prop :=
  ∀ n, P5972703990113433722.a n = A001932 n

theorem P5972703990113433722.correct : P5972703990113433722.Spec := by
  intro n
  simp only [A001932]

end A001932

/-! ## A001932.P500536360864081089

`A209971(n)+A065220(n)`
-/

namespace A001932.P500536360864081089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n + A065220 n

end

end A001932.P500536360864081089

namespace A001932

/-- `A209971(n)+A065220(n)` -/
def P500536360864081089.Spec : Prop :=
  ∀ n, P500536360864081089.a n = A001932 n

theorem P500536360864081089.correct : P500536360864081089.Spec := by
  intro n
  simp only [A001932, Nat.add_sub_cancel, A001932.P500536360864081089.a, A001932.P5972703990113433722.a, A000045, A000045.P11838749114346432762.a, A000129, A000129.P3563729298025900801.a, A065220, A065220.P6653459094866898540.a, A209971, A209971.P2063977723074773376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001932

/-! ## A001932.P6847750677815507973

`A060405(n)-A118658(n)`
-/

namespace A001932.P6847750677815507973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060405 n - A118658 n

end

end A001932.P6847750677815507973

namespace A001932

/-- `A060405(n)-A118658(n)` -/
def P6847750677815507973.Spec : Prop :=
  ∀ n, P6847750677815507973.a n = A001932 n

end A001932

/-! ## A001932.P4825169157029718885

`A118658(n+1)+A006684(n)`
-/

namespace A001932.P4825169157029718885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A006684 n

end

end A001932.P4825169157029718885

namespace A001932

/-- `A118658(n+1)+A006684(n)` -/
def P4825169157029718885.Spec : Prop :=
  ∀ n, P4825169157029718885.a n = A001932 n

end A001932

/-! ## A001932.P14173758771678762299

`A212804(n+1)+A000129(n)`
-/

namespace A001932.P14173758771678762299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A000129 n

end

end A001932.P14173758771678762299

namespace A001932

/-- `A212804(n+1)+A000129(n)` -/
def P14173758771678762299.Spec : Prop :=
  ∀ n, P14173758771678762299.a n = A001932 n

end A001932

/-! ## A001932.P4324272837807388502

`A000129(n)+A001611(n)-1`
-/

namespace A001932.P4324272837807388502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A001611 n - 1)

end

end A001932.P4324272837807388502

namespace A001932

/-- `A000129(n)+A001611(n)-1` -/
def P4324272837807388502.Spec : Prop :=
  ∀ n, P4324272837807388502.a n = A001932 n

theorem P4324272837807388502.correct : P4324272837807388502.Spec := by
  intro n
  simp only [A001932, Nat.add_sub_cancel, A001932.P4324272837807388502.a, A001932.P5972703990113433722.a, A000045, A000045.P11838749114346432762.a, A000129, A000129.P3563729298025900801.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001932

/-! ## A001932.P18197035252036895938

`A000045(n)+A174191(n)-1`
-/

namespace A001932.P18197035252036895938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A174191 n - 1)

end

end A001932.P18197035252036895938

namespace A001932

/-- `A000045(n)+A174191(n)-1` -/
def P18197035252036895938.Spec : Prop :=
  ∀ n, P18197035252036895938.a n = A001932 n

end A001932

/-! ## A001932.P4308613168541896653

`A000045(n)-A176981(n+1)`
-/

namespace A001932.P4308613168541896653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A176981 (n + 1)

end

end A001932.P4308613168541896653

namespace A001932

/-- `A000045(n)-A176981(n+1)` -/
def P4308613168541896653.Spec : Prop :=
  ∀ n, P4308613168541896653.a n = A001932 n

end A001932

/-! ## A001932.P16108200269841648584

`A228748(n)+A118658(n+2)`
-/

namespace A001932.P16108200269841648584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228748 n + A118658 (n + 2)

end

end A001932.P16108200269841648584

namespace A001932

/-- `A228748(n)+A118658(n+2)` -/
def P16108200269841648584.Spec : Prop :=
  ∀ n, P16108200269841648584.a n = A001932 n

end A001932

/-! ## A001932.P10552070241081128344

`A000129(n)-A152163(n+2)`
-/

namespace A001932.P10552070241081128344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A152163 (n + 2)

end

end A001932.P10552070241081128344

namespace A001932

/-- `A000129(n)-A152163(n+2)` -/
def P10552070241081128344.Spec : Prop :=
  ∀ n, P10552070241081128344.a n = A001932 n

end A001932

/-! ## A001932.P3732268134554305920

`A000129(n)+A157725(n)-2`
-/

namespace A001932.P3732268134554305920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A157725 n - 2)

end

end A001932.P3732268134554305920

namespace A001932

/-- `A000129(n)+A157725(n)-2` -/
def P3732268134554305920.Spec : Prop :=
  ∀ n, P3732268134554305920.a n = A001932 n

theorem P3732268134554305920.correct : P3732268134554305920.Spec := by
  intro n
  simp only [A001932, Nat.add_sub_cancel, A001932.P3732268134554305920.a, A001932.P5972703990113433722.a, A000045, A000045.P11838749114346432762.a, A000129, A000129.P3563729298025900801.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001932

/-! ## A001932.P14746456336027866899

`A001611(n)+A174191(n)-2`
-/

namespace A001932.P14746456336027866899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A174191 n - 2)

end

end A001932.P14746456336027866899

namespace A001932

/-- `A001611(n)+A174191(n)-2` -/
def P14746456336027866899.Spec : Prop :=
  ∀ n, P14746456336027866899.a n = A001932 n

end A001932

/-! ## A001932.P11342013964194331476

`A002965(2*n)+A000045(n)`
-/

namespace A001932.P11342013964194331476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) + A000045 n

end

end A001932.P11342013964194331476

namespace A001932

/-- `A002965(2*n)+A000045(n)` -/
def P11342013964194331476.Spec : Prop :=
  ∀ n, P11342013964194331476.a n = A001932 n

end A001932

/-! ## A001932.P10991723226515889372

`A006684(n)+2*A000045(n)`
-/

namespace A001932.P10991723226515889372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n + 2 * A000045 n

end

end A001932.P10991723226515889372

namespace A001932

/-- `A006684(n)+2*A000045(n)` -/
def P10991723226515889372.Spec : Prop :=
  ∀ n, P10991723226515889372.a n = A001932 n

end A001932

/-! ## A001932.P15093990329904994439

`A135153(2*n)+A000045(n)`
-/

namespace A001932.P15093990329904994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) + A000045 n

end

end A001932.P15093990329904994439

namespace A001932

/-- `A135153(2*n)+A000045(n)` -/
def P15093990329904994439.Spec : Prop :=
  ∀ n, P15093990329904994439.a n = A001932 n

end A001932

/-! ## A001932.P17789747497563249509

`A249576(3*n)+A000045(n)`
-/

namespace A001932.P17789747497563249509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) + A000045 n

end

end A001932.P17789747497563249509

namespace A001932

/-- `A249576(3*n)+A000045(n)` -/
def P17789747497563249509.Spec : Prop :=
  ∀ n, P17789747497563249509.a n = A001932 n

end A001932

/-! ## A001932.P7146017973065620769

`A116560(6*n)+A000045(n)`
-/

namespace A001932.P7146017973065620769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n) + A000045 n

end

end A001932.P7146017973065620769

namespace A001932

/-- `A116560(6*n)+A000045(n)` -/
def P7146017973065620769.Spec : Prop :=
  ∀ n, P7146017973065620769.a n = A001932 n

end A001932

/-! ## A001932.P8038151821737975393

`A000045(n)+xor(1, A111954(n))`
-/

namespace A001932.P8038151821737975393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + Int.xor 1 (A111954 n)

end

end A001932.P8038151821737975393

namespace A001932

/-- `A000045(n)+xor(1, A111954(n))` -/
def P8038151821737975393.Spec : Prop :=
  ∀ n, P8038151821737975393.a n = A001932 n

end A001932

/-! ## A001932.P9806232093787727447

`A000045(n)+A209971(n)-n`
-/

namespace A001932.P9806232093787727447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A209971 n - (n : ℤ))

end

end A001932.P9806232093787727447

namespace A001932

/-- `A000045(n)+A209971(n)-n` -/
def P9806232093787727447.Spec : Prop :=
  ∀ n, P9806232093787727447.a n = A001932 n

theorem P9806232093787727447.correct : P9806232093787727447.Spec := by
  intro n
  simp only [A001932, Nat.add_sub_cancel, A001932.P9806232093787727447.a, A001932.P5972703990113433722.a, A000045, A000045.P11838749114346432762.a, A000129, A000129.P3563729298025900801.a, A209971, A209971.P2063977723074773376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001932

/-!
# A001934: Expansion of 1/theta_4(q)^2 in powers of q.

The programs for A001934, there is no canonical definition to state claims against.
-/

/-! ## A001934.P7727504931857978536

`(-1)^n*A004403(n)`
-/

namespace A001934.P7727504931857978536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004403 n

end

end A001934.P7727504931857978536

/-! ## A001934.P10744366340215501536

`abs(A004403(n))`
-/

namespace A001934.P10744366340215501536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004403 n|

end

end A001934.P10744366340215501536

/-! ## A001934.P1424856017372242696

`A004403(n)*A033999(n)`
-/

namespace A001934.P1424856017372242696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004403 n * A033999 n

end

end A001934.P1424856017372242696

/-! ## A001934.P8986006713093194778

`gcd(A000038(n), A004403(n))`
-/

namespace A001934.P8986006713093194778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004403 n)

end

end A001934.P8986006713093194778

/-! ## A001934.P9040102994753917869

`lcm(A000034(n), A004403(n))`
-/

namespace A001934.P9040102994753917869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004403 n)

end

end A001934.P9040102994753917869

/-! ## A001934.P9070329171001516541

`A288515(∑[n+3])`
-/

namespace A001934.P9070329171001516541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001934.P9070329171001516541

/-!
# A001935: Number of partitions with no even part repeated; partitions of n in which no parts are multiples of 4.

The programs for A001935, there is no canonical definition to state claims against.
-/

/-! ## A001935.P37021626832676049

`A098491(n)+A098492(n)`
-/

namespace A001935.P37021626832676049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098491 n + A098492 n

end

end A001935.P37021626832676049

/-! ## A001935.P15591786337260764731

`abs(A083365(n))`
-/

namespace A001935.P15591786337260764731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n|

end

end A001935.P15591786337260764731

/-! ## A001935.P11800502860191745448

`∑[A117275(n)]`
-/

namespace A001935.P11800502860191745448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001935.P11800502860191745448

/-! ## A001935.P8618704139006740335

`A033999(n)*A083365(n)`
-/

namespace A001935.P8618704139006740335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083365 n

end

end A001935.P8618704139006740335

/-! ## A001935.P9099301048996936671

`gcd(A000038(n), A083365(n))`
-/

namespace A001935.P9099301048996936671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A083365 n)

end

end A001935.P9099301048996936671

/-! ## A001935.P64818203485054635

`lcm(A006466(n), A083365(n))`
-/

namespace A001935.P64818203485054635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A083365 n)

end

end A001935.P64818203485054635

/-! ## A001935.P5381580083828271215

`A083365(and(1, -n))*A083365(n)`
-/

namespace A001935.P5381580083828271215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 (Int.land 1 (-(n : ℤ))).toNat * A083365 n

end

end A001935.P5381580083828271215

/-! ## A001935.P7402860949764577506

`A080054(n)/A108494(n)*A083365(n)`
-/

namespace A001935.P7402860949764577506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A108494 n : ℚ) * (A083365 n : ℚ)

end

end A001935.P7402860949764577506

/-! ## A001935.P7018030073170564493

`Δ[A117276(n)]`
-/

namespace A001935.P7018030073170564493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001935.P7018030073170564493

/-! ## A001935.P13045348683181547880

`A117276(n+1)-A117276(n)`
-/

namespace A001935.P13045348683181547880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 (n + 1) - A117276 n

end

end A001935.P13045348683181547880

/-! ## A001935.P6893902790735801207

`Δ[A014605(n+3)]`
-/

namespace A001935.P6893902790735801207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001935.P6893902790735801207

/-! ## A001935.P2484998925962875266

`A001937(n)/A187053(n)*A083365(n)`
-/

namespace A001935.P2484998925962875266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A187053 n : ℚ) * (A083365 n : ℚ)

end

end A001935.P2484998925962875266

/-! ## A001935.P17257876575577854893

`A001938(n)/A093160(n)*A083365(n)`
-/

namespace A001935.P17257876575577854893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A093160 n : ℚ) * (A083365 n : ℚ)

end

end A001935.P17257876575577854893

/-! ## A001935.P5099237357314688040

`abs(A092869(4*n))`
-/

namespace A001935.P5099237357314688040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092869 (4 * n)|

end

end A001935.P5099237357314688040

/-! ## A001935.P6711744139836776769

`abs(A111374(4*n+1))`
-/

namespace A001935.P6711744139836776769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111374 (4 * n + 1)|

end

end A001935.P6711744139836776769

/-! ## A001935.P14807170516300858625

`A112171(A008586(n)+1)/2`
-/

namespace A001935.P14807170516300858625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112171 (A008586 n + 1).toNat : ℚ) / 2

end

end A001935.P14807170516300858625

/-! ## A001935.P13441700516240586784

`A001939(n)/A195861(n)*A083365(n)`
-/

namespace A001935.P13441700516240586784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A195861 n : ℚ) * (A083365 n : ℚ)

end

end A001935.P13441700516240586784

/-! ## A001935.P15563556867482827694

`A001936(n)/A079006(n)*A083365(n)`
-/

namespace A001935.P15563556867482827694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A083365 n : ℚ)

end

end A001935.P15563556867482827694

/-! ## A001935.P6283366870142058337

`A001940(n)*A083365(n)/A320049(n)`
-/

namespace A001935.P6283366870142058337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001940 n * A083365 n : ℚ) / (A320049 n : ℚ)

end

end A001935.P6283366870142058337

/-! ## A001935.P13795462836161350325

`A000041(n)-A295342(n)`
-/

namespace A001935.P13795462836161350325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A295342 n

end

end A001935.P13795462836161350325

/-!
# A001936: Expansion of q^(-1/4) * (eta(q^4) / eta(q))^2 in powers of q.

The programs for A001936, there is no canonical definition to state claims against.
-/

/-! ## A001936.P6536826185188361629

`abs(A079006(n))`
-/

namespace A001936.P6536826185188361629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079006 n|

end

end A001936.P6536826185188361629

/-! ## A001936.P4162223263006838065

`record[abs(A281731(n))]`
-/

namespace A001936.P4162223263006838065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281731 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001936.P4162223263006838065

/-! ## A001936.P14529203850746908406

`abs(A281731(2*n))`
-/

namespace A001936.P14529203850746908406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281731 (2 * n)|

end

end A001936.P14529203850746908406

/-! ## A001936.P15918179429731576335

`abs(A127392(n)/2)`
-/

namespace A001936.P15918179429731576335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127392 n : ℚ) / 2|

end

end A001936.P15918179429731576335

/-! ## A001936.P190820904568102266

`A058630(Δ[n²])/2`
-/

namespace A001936.P190820904568102266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A001936.P190820904568102266

/-! ## A001936.P2081038607563535789

`record[abs(A214639(Δ[n²]))]`
-/

namespace A001936.P2081038607563535789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001936.P2081038607563535789

/-! ## A001936.P6049978469238074181

`A112151(2*n+1)/4`
-/

namespace A001936.P6049978469238074181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112151 (2 * n + 1) : ℚ) / 4

end

end A001936.P6049978469238074181

/-! ## A001936.P3597135844783863812

`record[abs(A127391(n+1)/2)]`
-/

namespace A001936.P3597135844783863812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127391 (n + 1) : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001936.P3597135844783863812

/-! ## A001936.P4550593911720405607

`record[Δ[A281731(2*n+1)]]`
-/

namespace A001936.P4550593911720405607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281731 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001936.P4550593911720405607

/-! ## A001936.P6941229603674451233

`abs(A029841(2*n+1)/4)`
-/

namespace A001936.P6941229603674451233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A029841 (2 * n + 1) : ℚ) / 4|

end

end A001936.P6941229603674451233

/-! ## A001936.P17951668663911061365

`abs(record[Δ[A214639(2*n+1)]])`
-/

namespace A001936.P17951668663911061365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214639 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A001936.P17951668663911061365

/-! ## A001936.P2461346602182209636

`abs(A214639(A016813(n)))`
-/

namespace A001936.P2461346602182209636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214639 (A016813 n).toNat|

end

end A001936.P2461346602182209636

/-! ## A001936.P10087606754697611854

`A033999(n)*A079006(n)`
-/

namespace A001936.P10087606754697611854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A079006 n

end

end A001936.P10087606754697611854

/-! ## A001936.P4687034083426101054

`gcd(A000038(n), A079006(n))`
-/

namespace A001936.P4687034083426101054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079006 n)

end

end A001936.P4687034083426101054

/-! ## A001936.P6615135646136520255

`lcm(A000034(n), A079006(n))`
-/

namespace A001936.P6615135646136520255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A079006 n)

end

end A001936.P6615135646136520255

/-! ## A001936.P11534183851229070588

`A001934(n)/A004403(n)*A079006(n)`
-/

namespace A001936.P11534183851229070588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A079006 n : ℚ)

end

end A001936.P11534183851229070588

/-! ## A001936.P17049404038985956064

`A001935(n)*A079006(n)/A083365(n)`
-/

namespace A001936.P17049404038985956064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A079006 n : ℚ) / (A083365 n : ℚ)

end

end A001936.P17049404038985956064

/-! ## A001936.P11495969000781824577

`A001938(n)*A079006(n)/A093160(n)`
-/

namespace A001936.P11495969000781824577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n * A079006 n : ℚ) / (A093160 n : ℚ)

end

end A001936.P11495969000781824577

/-! ## A001936.P10322724466831925461

`A007096(n)*A079006(n)/A189925(n)`
-/

namespace A001936.P10322724466831925461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n * A079006 n : ℚ) / (A189925 n : ℚ)

end

end A001936.P10322724466831925461

/-! ## A001936.P14175350705038665129

`A079006(n)*A112128(n)/A208933(n)`
-/

namespace A001936.P14175350705038665129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079006 n * A112128 n : ℚ) / (A208933 n : ℚ)

end

end A001936.P14175350705038665129

/-!
# A001937: Expansion of (psi(x^2) / psi(-x))^3 in powers of x where psi() is a Ramanujan theta function.

The programs for A001937, there is no canonical definition to state claims against.
-/

/-! ## A001937.P6283112601251011273

`abs(A187053(n))`
-/

namespace A001937.P6283112601251011273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187053 n|

end

end A001937.P6283112601251011273

/-! ## A001937.P3929739013605465172

`A033999(n)*A187053(n)`
-/

namespace A001937.P3929739013605465172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A187053 n

end

end A001937.P3929739013605465172

/-! ## A001937.P1667008964517687714

`gcd(A000038(n), A187053(n))`
-/

namespace A001937.P1667008964517687714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A187053 n)

end

end A001937.P1667008964517687714

/-! ## A001937.P3411928013761688827

`lcm(A020985(n), A187053(n))`
-/

namespace A001937.P3411928013761688827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A187053 n)

end

end A001937.P3411928013761688827

/-! ## A001937.P14123885626053163913

`A001935(n)/A083365(n)*A187053(n)`
-/

namespace A001937.P14123885626053163913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A083365 n : ℚ) * (A187053 n : ℚ)

end

end A001937.P14123885626053163913

/-! ## A001937.P14150997628164436716

`A001934(n)/A004403(n)*A187053(n)`
-/

namespace A001937.P14150997628164436716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A187053 n : ℚ)

end

end A001937.P14150997628164436716

/-! ## A001937.P1338296544355408401

`A001940(n)/A320049(n)*A187053(n)`
-/

namespace A001937.P1338296544355408401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001940 n : ℚ) / (A320049 n : ℚ) * (A187053 n : ℚ)

end

end A001937.P1338296544355408401

/-!
# A001938: Expansion of k/(4*q^(1/2)) in powers of q, where k defined by sqrt(k) = theta_2(0, q)/theta_3(0, q).

The programs for A001938, there is no canonical definition to state claims against.
-/

/-! ## A001938.P7017591461049195552

`(-1)^n*A093160(n)`
-/

namespace A001938.P7017591461049195552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093160 n

end

end A001938.P7017591461049195552

/-! ## A001938.P18341769807337480759

`A093160(n)/A033999(n)`
-/

namespace A001938.P18341769807337480759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 n : ℚ) / (A033999 n : ℚ)

end

end A001938.P18341769807337480759

/-! ## A001938.P5240936834367337616

`A033999(n)*A123655(2*n+1)`
-/

namespace A001938.P5240936834367337616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123655 (2 * n + 1)

end

end A001938.P5240936834367337616

/-! ## A001938.P1812510278694897163

`A093160(n)/A112151(n)*A112152(n)`
-/

namespace A001938.P1812510278694897163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 n : ℚ) / (A112151 n : ℚ) * (A112152 n : ℚ)

end

end A001938.P1812510278694897163

/-! ## A001938.P16639707710870853169

`A093160(n)/A112128(n)*A208933(n)`
-/

namespace A001938.P16639707710870853169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 n : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A001938.P16639707710870853169

/-! ## A001938.P2311486036220250685

`A208933(2*n+1)/A084099(2*n+1)`
-/

namespace A001938.P2311486036220250685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (2 * n + 1) : ℚ) / (A084099 (2 * n + 1) : ℚ)

end

end A001938.P2311486036220250685

/-! ## A001938.P8016182951624887100

`A007096(2*n+1)/((1-6/2)*A280560(n+1))`
-/

namespace A001938.P8016182951624887100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (2 * n + 1) : ℚ) / ((1 - (6 : ℚ) / 2) * (A280560 (n + 1) : ℚ))

end

end A001938.P8016182951624887100

/-! ## A001938.P9337685764237555458

`A033999(n)*A208605(2*n+1)`
-/

namespace A001938.P9337685764237555458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208605 (2 * n + 1)

end

end A001938.P9337685764237555458

/-! ## A001938.P8948821558287826886

`A112128(2*n+1)/A280560(n+1)`
-/

namespace A001938.P8948821558287826886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A001938.P8948821558287826886

/-! ## A001938.P9144888891894176850

`A112128(2*n+1)/(2*A033999(n+1))`
-/

namespace A001938.P9144888891894176850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A001938.P9144888891894176850

/-! ## A001938.P13524379451743497021

`A112128(2*n+1)/A007096(n+1)*A112128(n+1)`
-/

namespace A001938.P13524379451743497021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (A007096 (n + 1) : ℚ) * (A112128 (n + 1) : ℚ)

end

end A001938.P13524379451743497021

/-! ## A001938.P6394042175261522848

`A112128(2*n+1)/A014969(n+1)*A210066(n+1)`
-/

namespace A001938.P6394042175261522848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) : ℚ) / (A014969 (n + 1) : ℚ) * (A210066 (n + 1) : ℚ)

end

end A001938.P6394042175261522848

/-! ## A001938.P4229936131637917779

`A134746(2*n+1)/4`
-/

namespace A001938.P4229936131637917779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134746 (2 * n + 1) : ℚ) / 4

end

end A001938.P4229936131637917779

/-! ## A001938.P4395715109238900622

`A189925(2*n+1)/(2*A280560(n+1))`
-/

namespace A001938.P4395715109238900622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (2 * n + 1) : ℚ) / (2 * A280560 (n + 1) : ℚ)

end

end A001938.P4395715109238900622

/-! ## A001938.P14539163038577655285

`A216060(4*n+2)/4`
-/

namespace A001938.P14539163038577655285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216060 (4 * n + 2) : ℚ) / 4

end

end A001938.P14539163038577655285

/-! ## A001938.P6384576922635805490

`A029841(n)*A093160(n)/A112143(n)`
-/

namespace A001938.P6384576922635805490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 n * A093160 n : ℚ) / (A112143 n : ℚ)

end

end A001938.P6384576922635805490

/-! ## A001938.P6359100769046813929

`A093160(n)*A123655(n+1)/A208605(n+1)`
-/

namespace A001938.P6359100769046813929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 n * A123655 (n + 1) : ℚ) / (A208605 (n + 1) : ℚ)

end

end A001938.P6359100769046813929

/-! ## A001938.P3590829765709065052

`A001936(n)*A093160(n)/A079006(n)`
-/

namespace A001938.P3590829765709065052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A093160 n : ℚ) / (A079006 n : ℚ)

end

end A001938.P3590829765709065052

/-! ## A001938.P13597022281792493434

`A112128(2*n+1)*A208933(2*n+1)/A210067(2*n+1)`
-/

namespace A001938.P13597022281792493434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * n + 1) * A208933 (2 * n + 1) : ℚ) / (A210067 (2 * n + 1) : ℚ)

end

end A001938.P13597022281792493434

/-! ## A001938.P16275056820917368353

`A210067(2*n+1)/A210067(A115638(2*n+1)²)`
-/

namespace A001938.P16275056820917368353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210067 (2 * n + 1) : ℚ) / (A210067 (A115638 (2 * n + 1) ^ 2).toNat : ℚ)

end

end A001938.P16275056820917368353

/-!
# A001939: Expansion of (psi(-x) / phi(-x))^5 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A001939, there is no canonical definition to state claims against.
-/

/-! ## A001939.P8682029993783579048

`(-1)^n*A195861(n)`
-/

namespace A001939.P8682029993783579048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A195861 n

end

end A001939.P8682029993783579048

/-! ## A001939.P1849929320220764762

`abs(A195861(n))`
-/

namespace A001939.P1849929320220764762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195861 n|

end

end A001939.P1849929320220764762

/-! ## A001939.P11955355089494183979

`gcd(A000038(n), A195861(n))`
-/

namespace A001939.P11955355089494183979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A195861 n)

end

end A001939.P11955355089494183979

/-! ## A001939.P15100836633854209287

`lcm(A020985(n), A195861(n))`
-/

namespace A001939.P15100836633854209287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A195861 n)

end

end A001939.P15100836633854209287

/-! ## A001939.P12604608245584653155

`A001935(n)*A195861(n)/A083365(n)`
-/

namespace A001939.P12604608245584653155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A195861 n : ℚ) / (A083365 n : ℚ)

end

end A001939.P12604608245584653155

/-!
# A001940: Absolute value of coefficients of an elliptic function.

The programs for A001940, there is no canonical definition to state claims against.
-/

/-! ## A001940.P1467849476372907488

`abs(A320049(n))`
-/

namespace A001940.P1467849476372907488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320049 n|

end

end A001940.P1467849476372907488

/-! ## A001940.P4226487528260523200

`A033999(n)*A320049(n)`
-/

namespace A001940.P4226487528260523200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A320049 n

end

end A001940.P4226487528260523200

/-! ## A001940.P5132345443471616893

`gcd(A000038(n), A320049(n))`
-/

namespace A001940.P5132345443471616893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A320049 n)

end

end A001940.P5132345443471616893

/-! ## A001940.P2249390236186354857

`lcm(A000034(n), A320049(n))`
-/

namespace A001940.P2249390236186354857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A320049 n)

end

end A001940.P2249390236186354857

/-! ## A001940.P11417715518466045016

`(1-Δ[A109613(n)])*A320049(n)`
-/

namespace A001940.P11417715518466045016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A320049 n

end

end A001940.P11417715518466045016

/-! ## A001940.P5574652620784563361

`A320049(n)/(Δ[A109613(n+1)]-1)`
-/

namespace A001940.P5574652620784563361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320049 n : ℚ) / (f1 (n + 1) - f1 n - 1 : ℚ)

end

end A001940.P5574652620784563361

/-! ## A001940.P12779785797600931324

`A001936(n)/A079006(n)*A320049(n)`
-/

namespace A001940.P12779785797600931324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A320049 n : ℚ)

end

end A001940.P12779785797600931324

/-! ## A001940.P5290533846347681050

`A001935(n)/A083365(n)*A320049(n)`
-/

namespace A001940.P5290533846347681050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A083365 n : ℚ) * (A320049 n : ℚ)

end

end A001940.P5290533846347681050

/-! ## A001940.P7899556670884357320

`A001937(n)/A187053(n)*A320049(n)`
-/

namespace A001940.P7899556670884357320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A187053 n : ℚ) * (A320049 n : ℚ)

end

end A001940.P7899556670884357320

/-! ## A001940.P7204297093650101823

`A001939(n)/A195861(n)*A320049(n)`
-/

namespace A001940.P7204297093650101823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A195861 n : ℚ) * (A320049 n : ℚ)

end

end A001940.P7204297093650101823

/-!
# A001941: Absolute values of coefficients of an elliptic function.

The programs for A001941, there is no canonical definition to state claims against.
-/

/-! ## A001941.P4463124650968906358

`abs(A320050(n))`
-/

namespace A001941.P4463124650968906358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320050 n|

end

end A001941.P4463124650968906358

/-! ## A001941.P141433592915121368

`A033999(n)*A320050(n)`
-/

namespace A001941.P141433592915121368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A320050 n

end

end A001941.P141433592915121368

/-! ## A001941.P13890378585651381198

`gcd(A000038(n), A320050(n))`
-/

namespace A001941.P13890378585651381198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A320050 n)

end

end A001941.P13890378585651381198

/-! ## A001941.P1517053207783482707

`lcm(A020985(n), A320050(n))`
-/

namespace A001941.P1517053207783482707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A320050 n)

end

end A001941.P1517053207783482707

/-! ## A001941.P12481620013842111734

`A001936(n)/A079006(n)*A320050(n)`
-/

namespace A001941.P12481620013842111734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A320050 n : ℚ)

end

end A001941.P12481620013842111734

/-! ## A001941.P4231550164974484738

`A001935(n)/A083365(n)*A320050(n)`
-/

namespace A001941.P4231550164974484738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A083365 n : ℚ) * (A320050 n : ℚ)

end

end A001941.P4231550164974484738

/-! ## A001941.P7473519298613499203

`A001937(n)/A187053(n)*A320050(n)`
-/

namespace A001941.P7473519298613499203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A187053 n : ℚ) * (A320050 n : ℚ)

end

end A001941.P7473519298613499203

/-! ## A001941.P17877174896787020423

`A001939(n)/A195861(n)*A320050(n)`
-/

namespace A001941.P17877174896787020423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A195861 n : ℚ) * (A320050 n : ℚ)

end

end A001941.P17877174896787020423

/-! ## A001941.P2822226196236100516

`A001940(n)/A320049(n)*A320050(n)`
-/

namespace A001941.P2822226196236100516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001940 n : ℚ) / (A320049 n : ℚ) * (A320050 n : ℚ)

end

end A001941.P2822226196236100516

/-!
# A001944: Numbers that are the sum of 4 distinct squares: of form w^2 + x^2 + y^2 + z^2 with 0 <= w < x < y < z.

The programs for A001944, there is no canonical definition to state claims against.
-/

/-! ## A001944.P1671752106614335486

`∪[A004432(n+1), A004433(n+1)]`
-/

namespace A001944.P1671752106614335486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001944.P1671752106614335486

/-! ## A001944.P16120726720406002052

`lt[0, A025437(n)]`
-/

namespace A001944.P16120726720406002052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001944.P16120726720406002052

/-! ## A001944.P4425490238981863943

`eq[1, A000010(a(A025437(n)))]` with `a(0)=3`
-/

namespace A001944.P4425490238981863943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A025437 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001944.P4425490238981863943

/-! ## A001944.P10209833225985279463

`eq[1, A000045(a(A025437(n)))]` with `a(0)=3`
-/

namespace A001944.P10209833225985279463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A025437 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001944.P10209833225985279463

/-! ## A001944.P8016976504427094878

`eq[1, A007318(a(A025437(n)))]` with `a(0)=4`
-/

namespace A001944.P8016976504427094878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A025437 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001944.P8016976504427094878

/-! ## A001944.P2436455337997701119

`eq[2, A000005(a(A025437(n)))]` with `a(0)=4`
-/

namespace A001944.P2436455337997701119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A025437 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001944.P2436455337997701119

/-! ## A001944.P3425162308059530159

`eq[0, A000038(n)^A025437(n)]`
-/

namespace A001944.P3425162308059530159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A025437 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A001944.P3425162308059530159

/-! ## A001944.P9542153248578825480

`eq[A000038(n+1), A000038(A025437(n))]`
-/

namespace A001944.P9542153248578825480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001944.P9542153248578825480

/-! ## A001944.P5436500939331883617

`eq[2*A000007(n), A000007(A025437(n))]`
-/

namespace A001944.P5436500939331883617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001944.P5436500939331883617

/-! ## A001944.P3972067557426507688

`lt[2*A000164(2*n), A002635(2*n)]`
-/

namespace A001944.P3972067557426507688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000164 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001944.P3972067557426507688

/-! ## A001944.P9765407291429827925

`lt[A002635(2*n), 2*A025428(2*n)]`
-/

namespace A001944.P9765407291429827925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001944.P9765407291429827925

/-!
# A001945: a(n+6) = -a(n+5) + a(n+4) + 3a(n+3) + a(n+2) - a(n+1) - a(n). a(n) = sign(n) if abs(n)<=3.

The programs for A001945, the canonical program `A001945.P17638672492670160984` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001945 has offset 0).

The definition of A001945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001945.P17638672492670160984

`A001608(n)+A078712(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001945

/-- `A001608(n)+A078712(n)` -/
def P17638672492670160984.Spec : Prop :=
  ∀ n, P17638672492670160984.a n = A001945 n

theorem P17638672492670160984.correct : P17638672492670160984.Spec := by
  intro n
  simp only [A001945]

end A001945

/-! ## A001945.P9364996979227169449

`A001608(n)-∑[A078712(A020705(n))]`
-/

namespace A001945.P9364996979227169449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001945.P9364996979227169449

namespace A001945

/-- `A001608(n)-∑[A078712(A020705(n))]` -/
def P9364996979227169449.Spec : Prop :=
  ∀ n, P9364996979227169449.a n = A001945 n

end A001945

/-! ## A001945.P15790751880505748548

`A078027(n)+A141038(n)+A078712(n)`
-/

namespace A001945.P15790751880505748548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n + (A141038 n + A078712 n)

end

end A001945.P15790751880505748548

namespace A001945

/-- `A078027(n)+A141038(n)+A078712(n)` -/
def P15790751880505748548.Spec : Prop :=
  ∀ n, P15790751880505748548.a n = A001945 n

end A001945

/-! ## A001945.P5261838861483261401

`A078712(n)+A000931(n)+2*A182097(n)`
-/

namespace A001945.P5261838861483261401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 n + (A000931 n + 2 * A182097 n)

end

end A001945.P5261838861483261401

namespace A001945

/-- `A078712(n)+A000931(n)+2*A182097(n)` -/
def P5261838861483261401.Spec : Prop :=
  ∀ n, P5261838861483261401.a n = A001945 n

end A001945

/-! ## A001945.P11486974427296339197

`A001608(n)+A104769(n+1)-2*A176971(n)`
-/

namespace A001945.P11486974427296339197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n + (A104769 (n + 1) - 2 * A176971 n)

end

end A001945.P11486974427296339197

namespace A001945

/-- `A001608(n)+A104769(n+1)-2*A176971(n)` -/
def P11486974427296339197.Spec : Prop :=
  ∀ n, P11486974427296339197.a n = A001945 n

end A001945

/-! ## A001945.P8518548679214964628

`A001608(n)+∑[A247917(n+1)+A104771(n+1)]`
-/

namespace A001945.P8518548679214964628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) + A104771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001945.P8518548679214964628

namespace A001945

/-- `A001608(n)+∑[A247917(n+1)+A104771(n+1)]` -/
def P8518548679214964628.Spec : Prop :=
  ∀ n, P8518548679214964628.a n = A001945 n

end A001945

/-! ## A001945.P15695284076079954140

`A078712(n)+Δ[A290612(n+5)]`
-/

namespace A001945.P15695284076079954140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078712 n + (f1 (n + 1) - f1 n)

end

end A001945.P15695284076079954140

namespace A001945

/-- `A078712(n)+Δ[A290612(n+5)]` -/
def P15695284076079954140.Spec : Prop :=
  ∀ n, P15695284076079954140.a n = A001945 n

end A001945

/-! ## A001945.P8977002011816115945

`A078712(n)+sqrt(A192932(n))`
-/

namespace A001945.P8977002011816115945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078712 n : ℝ) + Real.sqrt (A192932 n : ℝ)

end

end A001945.P8977002011816115945

namespace A001945

/-- `A078712(n)+sqrt(A192932(n))` -/
def P8977002011816115945.Spec : Prop :=
  ∀ n, P8977002011816115945.a n = (A001945 n : ℝ)

end A001945

/-! ## A001945.P3015724382683575628

`A306646(A034856(n+1))+A078712(n)`
-/

namespace A001945.P3015724382683575628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A034856 (n + 1)).toNat + A078712 n

end

end A001945.P3015724382683575628

namespace A001945

/-- `A306646(A034856(n+1))+A078712(n)` -/
def P3015724382683575628.Spec : Prop :=
  ∀ n, P3015724382683575628.a n = A001945 n

end A001945

/-!
# A001946: a(n) = 11*a(n-1) + a(n-2).

The programs for A001946, the canonical program `A001946.P10808318879424931210` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001946 has offset 0).

The definition of A001946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)+a(n-2)` (program `A001946.P10808318879424931210`, by `A001946.P10808318879424931210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001946.P10808318879424931210

`11*a(n-1)+a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001946

/-- `11*a(n-1)+a(n-2)` -/
def P10808318879424931210.Spec : Prop :=
  ∀ n, (P10808318879424931210.a n : ℤ) = A001946 n

theorem P10808318879424931210.correct : P10808318879424931210.Spec := by
  intro n
  simp only [A001946]

end A001946

/-! ## A001946.P8987514705734924384

`A000032(5*n)`
-/

namespace A001946.P8987514705734924384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (5 * n)

end

end A001946.P8987514705734924384

namespace A001946

/-- `A000032(5*n)` -/
def P8987514705734924384.Spec : Prop :=
  ∀ n, P8987514705734924384.a n = A001946 n

end A001946

/-! ## A001946.P10956804884404413241

`ogf((-2+11x)/(-1+11x+x^2))`
-/

namespace A001946.P10956804884404413241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, -1] n

end

end A001946.P10956804884404413241

namespace A001946

/-- `ogf((-2+11x)/(-1+11x+x^2))` -/
def P10956804884404413241.Spec : Prop :=
  ∀ n, P10956804884404413241.a n = A001946 n

end A001946

/-! ## A001946.P2943792135049625372

`round(ϕ^round(1/acot(5*n)))`
-/

namespace A001946.P2943792135049625372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) : ℤ))

end

end A001946.P2943792135049625372

namespace A001946

/-- `round(ϕ^round(1/acot(5*n)))` -/
def P2943792135049625372.Spec : Prop :=
  ∀ n, P2943792135049625372.a n = A001946 n

end A001946

/-! ## A001946.P1432198270876693495

`((11+5*sqrt(5))/2)^n+((11-5*sqrt(5))/2)^n`
-/

namespace A001946.P1432198270876693495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + 5 * Real.sqrt (5 : ℝ)) / 2) ^ n + ((11 - 5 * Real.sqrt (5 : ℝ)) / 2) ^ n

end

end A001946.P1432198270876693495

namespace A001946

/-- `((11+5*sqrt(5))/2)^n+((11-5*sqrt(5))/2)^n` -/
def P1432198270876693495.Spec : Prop :=
  ∀ n, P1432198270876693495.a n = (A001946 n : ℝ)

theorem P1432198270876693495.correct : P1432198270876693495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001946, Nat.add_sub_cancel, A001946.P1432198270876693495.a, A001946.P10808318879424931210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001946, Nat.add_sub_cancel, A001946.P1432198270876693495.a, A001946.P10808318879424931210.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001946

/-! ## A001946.P7555579316035672848

`A127218(10*n)`
-/

namespace A001946.P7555579316035672848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (10 * n)

end

end A001946.P7555579316035672848

namespace A001946

/-- `A127218(10*n)` -/
def P7555579316035672848.Spec : Prop :=
  ∀ n, P7555579316035672848.a n = A001946 n

end A001946

/-! ## A001946.P15163687343045338579

`A303427(10*n)`
-/

namespace A001946.P15163687343045338579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (10 * n)

end

end A001946.P15163687343045338579

namespace A001946

/-- `A303427(10*n)` -/
def P15163687343045338579.Spec : Prop :=
  ∀ n, P15163687343045338579.a n = A001946 n

end A001946

/-! ## A001946.P9680518819436781397

`A080023(A008706(n))`
-/

namespace A001946.P9680518819436781397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (A008706 n).toNat

end

end A001946.P9680518819436781397

namespace A001946

/-- `A080023(A008706(n))` -/
def P9680518819436781397.Spec : Prop :=
  ∀ n, P9680518819436781397.a n = A001946 n

end A001946

/-! ## A001946.P1062690573996570158

`A090244(A017281(n))`
-/

namespace A001946.P1062690573996570158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A017281 n).toNat

end

end A001946.P1062690573996570158

namespace A001946

/-- `A090244(A017281(n))` -/
def P1062690573996570158.Spec : Prop :=
  ∀ n, P1062690573996570158.a n = A001946 n

end A001946

/-! ## A001946.P8402553577828530908

`A329723(A016873(n))`
-/

namespace A001946.P8402553577828530908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A016873 n).toNat

end

end A001946.P8402553577828530908

namespace A001946

/-- `A329723(A016873(n))` -/
def P8402553577828530908.Spec : Prop :=
  ∀ n, P8402553577828530908.a n = A001946 n

end A001946

/-!
# A001947: a(n) = Lucas(5*n+2).

The programs for A001947, the canonical program `A001947.P2405845606710186316` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001947 has offset 0).

The definition of A001947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(5*n+2)` (program `A001947.P2405845606710186316`, by `A001947.P2405845606710186316.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001947.P13457094211900498799

`11*a(n-1)+a(n-2)` with `a(0)=3, a(1)=29`
-/

namespace A001947.P13457094211900498799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 29] fun n a =>
  11 * a (n - 1) + a (n - 2)

end

end A001947.P13457094211900498799

namespace A001947

/-- `11*a(n-1)+a(n-2)` -/
def P13457094211900498799.Spec : Prop :=
  ∀ n, (P13457094211900498799.a n : ℤ) = A001947 n

end A001947

/-! ## A001947.P2405845606710186316

`A000032(5*n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001947

/-- `A000032(5*n+2)` -/
def P2405845606710186316.Spec : Prop :=
  ∀ n, P2405845606710186316.a n = A001947 n

theorem P2405845606710186316.correct : P2405845606710186316.Spec := by
  intro n
  simp only [A001947]

end A001947

/-! ## A001947.P7155032078446961340

`ogf((-3+4x)/(-1+11x+x^2))`
-/

namespace A001947.P7155032078446961340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -11, -1] n

end

end A001947.P7155032078446961340

namespace A001947

/-- `ogf((-3+4x)/(-1+11x+x^2))` -/
def P7155032078446961340.Spec : Prop :=
  ∀ n, P7155032078446961340.a n = A001947 n

end A001947

/-! ## A001947.P12055394729784170199

`round(ϕ^(5*n+2))`
-/

namespace A001947.P12055394729784170199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (5 * n + 2))

end

end A001947.P12055394729784170199

namespace A001947

/-- `round(ϕ^(5*n+2))` -/
def P12055394729784170199.Spec : Prop :=
  ∀ n, P12055394729784170199.a n = A001947 n

end A001947

/-! ## A001947.P1556062926390543961

`A082587(10*n)`
-/

namespace A001947.P1556062926390543961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (10 * n)

end

end A001947.P1556062926390543961

namespace A001947

/-- `A082587(10*n)` -/
def P1556062926390543961.Spec : Prop :=
  ∀ n, P1556062926390543961.a n = A001947 n

end A001947

/-! ## A001947.P5042593322830250109

`A000204(5*n+2)`
-/

namespace A001947.P5042593322830250109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (5 * n + 2)

end

end A001947.P5042593322830250109

namespace A001947

/-- `A000204(5*n+2)` -/
def P5042593322830250109.Spec : Prop :=
  ∀ n, P5042593322830250109.a n = A001947 n

end A001947

/-! ## A001947.P16665752836582096112

`A014739(5*n)+2`
-/

namespace A001947.P16665752836582096112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (5 * n) + 2

end

end A001947.P16665752836582096112

namespace A001947

/-- `A014739(5*n)+2` -/
def P16665752836582096112.Spec : Prop :=
  ∀ n, P16665752836582096112.a n = A001947 n

end A001947

/-! ## A001947.P6484256524870680143

`A090244(5*(2*n+1))`
-/

namespace A001947.P6484256524870680143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (5 * (2 * n + 1))

end

end A001947.P6484256524870680143

namespace A001947

/-- `A090244(5*(2*n+1))` -/
def P6484256524870680143.Spec : Prop :=
  ∀ n, P6484256524870680143.a n = A001947 n

end A001947

/-! ## A001947.P16954679253265813272

`A302126(5*(2*n+1))`
-/

namespace A001947.P16954679253265813272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (5 * (2 * n + 1))

end

end A001947.P16954679253265813272

namespace A001947

/-- `A302126(5*(2*n+1))` -/
def P16954679253265813272.Spec : Prop :=
  ∀ n, P16954679253265813272.a n = A001947 n

end A001947

/-! ## A001947.P11145768098930140862

`A115339(A017317(n))`
-/

namespace A001947.P11145768098930140862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A017317 n).toNat

end

end A001947.P11145768098930140862

namespace A001947

/-- `A115339(A017317(n))` -/
def P11145768098930140862.Spec : Prop :=
  ∀ n, P11145768098930140862.a n = A001947 n

end A001947

/-!
# A001948: These numbers when multiplied by all powers of 4 give the numbers that are not the sums of 4 distinct squares.

The programs for A001948, there is no canonical definition to state claims against.
-/

/-! ## A001948.P799835340919960106

`lt[n*A025437(n), n%4]`
-/

namespace A001948.P799835340919960106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025437 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001948.P799835340919960106

/-! ## A001948.P14653250373082838420

`eq[A025437(n), A035444(n)]`
-/

namespace A001948.P14653250373082838420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001948.P14653250373082838420

/-! ## A001948.P9665914756532835271

`eq[A025437(n), A239261(n)]`
-/

namespace A001948.P9665914756532835271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001948.P9665914756532835271

/-! ## A001948.P9858332466935591025

`eq[A025437(n), A265260(n)]`
-/

namespace A001948.P9858332466935591025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001948.P9858332466935591025

/-! ## A001948.P12003838220567349371

`lt[A025437(n), A166486(n)]`
-/

namespace A001948.P12003838220567349371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001948.P12003838220567349371

/-!
# A001949: Solutions of a fifth-order probability difference equation.

The programs for A001949, the canonical program `A001949.P1010122531761527976` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001949 has offset 0).

The definition of A001949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001949.P1010122531761527976

`1+a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001949

/-- `1+a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P1010122531761527976.Spec : Prop :=
  ∀ n, (P1010122531761527976.a n : ℤ) = A001949 n

theorem P1010122531761527976.correct : P1010122531761527976.Spec := by
  intro n
  simp only [A001949]

end A001949

/-! ## A001949.P10557573276375031970

`∑[A001591(abs(1-n))]`
-/

namespace A001949.P10557573276375031970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001949.P10557573276375031970

namespace A001949

/-- `∑[A001591(abs(1-n))]` -/
def P10557573276375031970.Spec : Prop :=
  ∀ n, P10557573276375031970.a n = A001949 n

end A001949

/-! ## A001949.P5442518741834486903

`A124313(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A001949.P5442518741834486903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A124313 n + a (n - 2)

end

end A001949.P5442518741834486903

namespace A001949

/-- `A124313(n)+a(n-2)` -/
def P5442518741834486903.Spec : Prop :=
  ∀ n, P5442518741834486903.a n = A001949 n

end A001949

/-! ## A001949.P14307966980681636695

`A251653(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A001949.P14307966980681636695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A251653 n + a (n - 3)

end

end A001949.P14307966980681636695

namespace A001949

/-- `A251653(n)+a(n-3)` -/
def P14307966980681636695.Spec : Prop :=
  ∀ n, P14307966980681636695.a n = A001949 n

end A001949

/-! ## A001949.P11081901566637534016

`A001591(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A001949.P11081901566637534016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001591 (n - 1) + a (n - 1)

end

end A001949.P11081901566637534016

namespace A001949

/-- `A001591(n-1)+a(n-1)` -/
def P11081901566637534016.Spec : Prop :=
  ∀ n, P11081901566637534016.a n = A001949 n

end A001949

/-! ## A001949.P17456376305374406500

`∑[A001591(n)]-A001591(n)`
-/

namespace A001949.P17456376305374406500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001591 n

end

end A001949.P17456376305374406500

namespace A001949

/-- `∑[A001591(n)]-A001591(n)` -/
def P17456376305374406500.Spec : Prop :=
  ∀ n, P17456376305374406500.a n = A001949 n

end A001949

/-! ## A001949.P14200834288393572486

`floor(A000322(n)/4)`
-/

namespace A001949.P14200834288393572486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000322 n : ℚ) / 4⌋

end

end A001949.P14200834288393572486

namespace A001949

/-- `floor(A000322(n)/4)` -/
def P14200834288393572486.Spec : Prop :=
  ∀ n, P14200834288393572486.a n = A001949 n

end A001949

/-! ## A001949.P12528151133233879083

`A135056(n)+1-∑[A000322(n)]`
-/

namespace A001949.P12528151133233879083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135056 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001949.P12528151133233879083

namespace A001949

/-- `A135056(n)+1-∑[A000322(n)]` -/
def P12528151133233879083.Spec : Prop :=
  ∀ n, P12528151133233879083.a n = A001949 n

end A001949

/-! ## A001949.P3600306630864249634

`(A135493(n+1)-A023424(n)-1)/4`
-/

namespace A001949.P3600306630864249634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135493 (n + 1) - A023424 n - 1 : ℚ) / 4

end

end A001949.P3600306630864249634

namespace A001949

/-- `(A135493(n+1)-A023424(n)-1)/4` -/
def P3600306630864249634.Spec : Prop :=
  ∀ n, P3600306630864249634.a n = (A001949 n : ℚ)

end A001949

/-! ## A001949.P12593223673564570825

`(A135493(n+1)-A074048(n+1)-1)/4`
-/

namespace A001949.P12593223673564570825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135493 (n + 1) - A074048 (n + 1) - 1 : ℚ) / 4

end

end A001949.P12593223673564570825

namespace A001949

/-- `(A135493(n+1)-A074048(n+1)-1)/4` -/
def P12593223673564570825.Spec : Prop :=
  ∀ n, P12593223673564570825.a n = (A001949 n : ℚ)

end A001949

/-! ## A001949.P2329710410159879348

`Δ[A145113(n)-Δ[A145113(n)]]`
-/

namespace A001949.P2329710410159879348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001949.P2329710410159879348

namespace A001949

/-- `Δ[A145113(n)-Δ[A145113(n)]]` -/
def P2329710410159879348.Spec : Prop :=
  ∀ n, P2329710410159879348.a n = A001949 n

end A001949

/-!
# A001950: Upper Wythoff sequence (a Beatty sequence): a(n) = floor(n*phi^2), where phi = (1+sqrt(5))/2.

The programs for A001950, the canonical program `A001950.P15777532840986476608` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001950 has offset 1).

The definition of A001950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*ϕ²)` (program `A001950.P15777532840986476608`, by `A001950.P15777532840986476608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001950.P15777532840986476608

`floor((n+1)*ϕ²)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001950

/-- `floor((n+1)*ϕ²)` -/
def P15777532840986476608.Spec : Prop :=
  ∀ n, P15777532840986476608.a n = A001950 (n + 1)

theorem P15777532840986476608.correct : P15777532840986476608.Spec := by
  intro n
  simp only [A001950, Nat.add_sub_cancel]

end A001950

/-! ## A001950.P11921384478461147322

`∑[or(2, Δ[floor(n/ϕ)])]`
-/

namespace A001950.P11921384478461147322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P11921384478461147322

namespace A001950

/-- `∑[or(2, Δ[floor(n/ϕ)])]` -/
def P11921384478461147322.Spec : Prop :=
  ∀ n, P11921384478461147322.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P15815495214954174034

`∑[xor(2, Δ[floor(n/ϕ)])]`
-/

namespace A001950.P15815495214954174034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P15815495214954174034

namespace A001950

/-- `∑[xor(2, Δ[floor(n/ϕ)])]` -/
def P15815495214954174034.Spec : Prop :=
  ∀ n, P15815495214954174034.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P9740244271866196407

`∑[dr(Δ[floor(n*ϕ²)])]`
-/

namespace A001950.P9740244271866196407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P9740244271866196407

namespace A001950

/-- `∑[dr(Δ[floor(n*ϕ²)])]` -/
def P9740244271866196407.Spec : Prop :=
  ∀ n, (P9740244271866196407.a n : ℤ) = A001950 (n + 1)

end A001950

/-! ## A001950.P9576013756874341322

`ceil(ϕ*C(n+1, n)+n)`
-/

namespace A001950.P9576013756874341322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + (n : ℝ)⌉

end

end A001950.P9576013756874341322

namespace A001950

/-- `ceil(ϕ*C(n+1, n)+n)` -/
def P9576013756874341322.Spec : Prop :=
  ∀ n, P9576013756874341322.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P15675199677687231455

`ceil(or(1, 2*n)+(n+1)/ϕ)`
-/

namespace A001950.P15675199677687231455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A001950.P15675199677687231455

namespace A001950

/-- `ceil(or(1, 2*n)+(n+1)/ϕ)` -/
def P15675199677687231455.Spec : Prop :=
  ∀ n, P15675199677687231455.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P1145405339009614867

`ceil(xor(1, 2*n)+(n+1)/ϕ)`
-/

namespace A001950.P1145405339009614867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉

end

end A001950.P1145405339009614867

namespace A001950

/-- `ceil(xor(1, 2*n)+(n+1)/ϕ)` -/
def P1145405339009614867.Spec : Prop :=
  ∀ n, P1145405339009614867.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P9450284085239965876

`floor(2*(n+1)*cos(π/5))+floor((n+1)*cos(2*π))`
-/

namespace A001950.P9450284085239965876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) * Real.cos (Real.pi / 5))⌋ + ⌊(n + 1 : ℝ) * Real.cos (2 * Real.pi)⌋

end

end A001950.P9450284085239965876

namespace A001950

/-- `floor(2*(n+1)*cos(π/5))+floor((n+1)*cos(2*π))` -/
def P9450284085239965876.Spec : Prop :=
  ∀ n, P9450284085239965876.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P13435533638277710205

`∑[A282162(n)]`
-/

namespace A001950.P13435533638277710205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P13435533638277710205

namespace A001950

/-- `∑[A282162(n)]` -/
def P13435533638277710205.Spec : Prop :=
  ∀ n, P13435533638277710205.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P8560552788094316477

`∑[A001468(n)+1]`
-/

namespace A001950.P8560552788094316477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P8560552788094316477

namespace A001950

/-- `∑[A001468(n)+1]` -/
def P8560552788094316477.Spec : Prop :=
  ∀ n, P8560552788094316477.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P13263706017078367736

`∑[A096270(n)+2]`
-/

namespace A001950.P13263706017078367736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001950.P13263706017078367736

namespace A001950

/-- `∑[A096270(n)+2]` -/
def P13263706017078367736.Spec : Prop :=
  ∀ n, P13263706017078367736.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P13074040704053821173

`Δ[A283733(n)]+n`
-/

namespace A001950.P13074040704053821173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A001950.P13074040704053821173

namespace A001950

/-- `Δ[A283733(n)]+n` -/
def P13074040704053821173.Spec : Prop :=
  ∀ n, P13074040704053821173.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P13017366966482727782

`A003622(n+1)+1`
-/

namespace A001950.P13017366966482727782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + 1

end

end A001950.P13017366966482727782

namespace A001950

/-- `A003622(n+1)+1` -/
def P13017366966482727782.Spec : Prop :=
  ∀ n, P13017366966482727782.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P13812658284460034794

`A004957(n+1)-1`
-/

namespace A001950.P13812658284460034794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1) - 1

end

end A001950.P13812658284460034794

namespace A001950

/-- `A004957(n+1)-1` -/
def P13812658284460034794.Spec : Prop :=
  ∀ n, P13812658284460034794.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P16040338171815198215

`A057843(n+1)+3`
-/

namespace A001950.P16040338171815198215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (n + 1) + 3

end

end A001950.P16040338171815198215

namespace A001950

/-- `A057843(n+1)+3` -/
def P16040338171815198215.Spec : Prop :=
  ∀ n, P16040338171815198215.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P789020312289942171

`A022413(n+1)-3`
-/

namespace A001950.P789020312289942171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (n + 1) - 3

end

end A001950.P789020312289942171

namespace A001950

/-- `A022413(n+1)-3` -/
def P789020312289942171.Spec : Prop :=
  ∀ n, P789020312289942171.a n = A001950 (n + 1)

end A001950

/-! ## A001950.P1418703335359847505

`n+1+A000201(n+1)`
-/

namespace A001950.P1418703335359847505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000201 (n + 1)

end

end A001950.P1418703335359847505

namespace A001950

/-- `n+1+A000201(n+1)` -/
def P1418703335359847505.Spec : Prop :=
  ∀ n, P1418703335359847505.a n = A001950 (n + 1)

end A001950

/-!
# A001951: A Beatty sequence: a(n) = floor(n*sqrt(2)).

The programs for A001951, the canonical program `A001951.P3206377842744091648` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001951 has offset 0).

The definition of A001951 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001951.anchor (n : ℕ) : A001951 n = ⌊(n : ℝ) * Real.sqrt 2⌋` in `Proof.A001.A001951`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001951.P17274045226277067317

`floor(sqrt(2)*n)`
-/

namespace A001951.P17274045226277067317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (n : ℝ)⌋

end

end A001951.P17274045226277067317

namespace A001951

/-- `floor(sqrt(2)*n)` -/
def P17274045226277067317.Spec : Prop :=
  ∀ n, P17274045226277067317.a n = A001951 n

end A001951

/-! ## A001951.P10679897964352356195

`floor(n*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001951.P10679897964352356195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A001951.P10679897964352356195

namespace A001951

/-- `floor(n*sqrt(2))` -/
def P10679897964352356195.Spec : Prop :=
  ∀ n, P10679897964352356195.a n = A001951 n

end A001951

/-! ## A001951.P3206377842744091648

`A000196(2*n²)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001951

/-- `A000196(2*n²)` -/
def P3206377842744091648.Spec : Prop :=
  ∀ n, P3206377842744091648.a n = A001951 n

theorem P3206377842744091648.correct : P3206377842744091648.Spec := by
  intro n
  simp only [A001951]

end A001951

/-! ## A001951.P15803294434062627904

`ceil(n*sqrt(2))%(n+1)+n`
-/

namespace A001951.P15803294434062627904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ (n + 1 : ℤ) + (n : ℤ)

end

end A001951.P15803294434062627904

namespace A001951

/-- `ceil(n*sqrt(2))%(n+1)+n` -/
def P15803294434062627904.Spec : Prop :=
  ∀ n, P15803294434062627904.a n = A001951 n

end A001951

/-! ## A001951.P16104822255053925807

`comp[ceil(n*sqrt(2))]-or(1, 2*n)`
-/

namespace A001951.P16104822255053925807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.lor 1 (2 * n) : ℤ)

end

end A001951.P16104822255053925807

namespace A001951

/-- `comp[ceil(n*sqrt(2))]-or(1, 2*n)` -/
def P16104822255053925807.Spec : Prop :=
  ∀ n, P16104822255053925807.a n = A001951 n

end A001951

/-! ## A001951.P10232134907446209560

`A097508(n)+n`
-/

namespace A001951.P10232134907446209560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + (n : ℤ)

end

end A001951.P10232134907446209560

namespace A001951

/-- `A097508(n)+n` -/
def P10232134907446209560.Spec : Prop :=
  ∀ n, P10232134907446209560.a n = A001951 n

theorem P10232134907446209560.correct : P10232134907446209560.Spec := by
  intro n
  simp only [A001951, Nat.add_sub_cancel, A001951.P10232134907446209560.a, A001951.P3206377842744091648.a, A000196, A000196.P15434771586934192083.a, A097508, A097508.P15482133836038292803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001951

/-! ## A001951.P8722829160050745846

`comp[A001952(n+1)]`
-/

namespace A001951.P8722829160050745846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001951.P8722829160050745846

namespace A001951

/-- `comp[A001952(n+1)]` -/
def P8722829160050745846.Spec : Prop :=
  ∀ n, (P8722829160050745846.a n : ℤ) = A001951 n

end A001951

/-! ## A001951.P12792135584941793314

`2*n-A195119(n)`
-/

namespace A001951.P12792135584941793314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A195119 n

end

end A001951.P12792135584941793314

namespace A001951

/-- `2*n-A195119(n)` -/
def P12792135584941793314.Spec : Prop :=
  ∀ n, P12792135584941793314.a n = A001951 n

end A001951

/-! ## A001951.P13504767213874748152

`3*n-A195176(n)`
-/

namespace A001951.P13504767213874748152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A195176 n

end

end A001951.P13504767213874748152

namespace A001951

/-- `3*n-A195176(n)` -/
def P13504767213874748152.Spec : Prop :=
  ∀ n, P13504767213874748152.a n = A001951 n

end A001951

/-! ## A001951.P6430090587450577089

`ceil(sqrt(A058331(n)))-1`
-/

namespace A001951.P6430090587450577089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A058331 n : ℝ)⌉ - 1

end

end A001951.P6430090587450577089

namespace A001951

/-- `ceil(sqrt(A058331(n)))-1` -/
def P6430090587450577089.Spec : Prop :=
  ∀ n, P6430090587450577089.a n = A001951 n

end A001951

/-! ## A001951.P10373550740454117484

`comp[∑[A276864(n+1)]]`
-/

namespace A001951.P10373550740454117484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001951.P10373550740454117484

namespace A001951

/-- `comp[∑[A276864(n+1)]]` -/
def P10373550740454117484.Spec : Prop :=
  ∀ n, (P10373550740454117484.a n : ℤ) = A001951 n

end A001951

/-! ## A001951.P14086245865799313185

`A083051(n)-Δ[n²]`
-/

namespace A001951.P14086245865799313185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001951.P14086245865799313185

namespace A001951

/-- `A083051(n)-Δ[n²]` -/
def P14086245865799313185.Spec : Prop :=
  ∀ n, P14086245865799313185.a n = A001951 n

theorem P14086245865799313185.correct : P14086245865799313185.Spec := by
  intro n
  simp only [A001951, Nat.add_sub_cancel, A001951.P14086245865799313185.f1, A001951.P14086245865799313185.a, A001951.P3206377842744091648.a, A000196, A000196.P15434771586934192083.a, A083051, A083051.P15776179668375550154.f1, A083051.P15776179668375550154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001951

/-! ## A001951.P1175071065362187650

`comp[A184922(n+1)+1]`
-/

namespace A001951.P1175071065362187650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001951.P1175071065362187650

namespace A001951

/-- `comp[A184922(n+1)+1]` -/
def P1175071065362187650.Spec : Prop :=
  ∀ n, (P1175071065362187650.a n : ℤ) = A001951 n

end A001951

/-! ## A001951.P11700845266620485634

`comp[A003152(2*(n+1))]`
-/

namespace A001951.P11700845266620485634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001951.P11700845266620485634

namespace A001951

/-- `comp[A003152(2*(n+1))]` -/
def P11700845266620485634.Spec : Prop :=
  ∀ n, (P11700845266620485634.a n : ℤ) = A001951 n

end A001951

/-! ## A001951.P17884922425129494909

`comp[A188375(2*(n+1))]`
-/

namespace A001951.P17884922425129494909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001951.P17884922425129494909

namespace A001951

/-- `comp[A188375(2*(n+1))]` -/
def P17884922425129494909.Spec : Prop :=
  ∀ n, (P17884922425129494909.a n : ℤ) = A001951 n

end A001951

/-! ## A001951.P950702385014766291

`A285075(n+1)-(n+2)`
-/

namespace A001951.P950702385014766291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1) - (n + 2 : ℤ)

end

end A001951.P950702385014766291

namespace A001951

/-- `A285075(n+1)-(n+2)` -/
def P950702385014766291.Spec : Prop :=
  ∀ n, P950702385014766291.a n = A001951 n

end A001951

/-! ## A001951.P5759424682332494156

`∑[char[A080754(n+1)]]+n`
-/

namespace A001951.P5759424682332494156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A001951.P5759424682332494156

namespace A001951

/-- `∑[char[A080754(n+1)]]+n` -/
def P5759424682332494156.Spec : Prop :=
  ∀ n, (P5759424682332494156.a n : ℤ) = A001951 n

end A001951

/-!
# A001952: A Beatty sequence: a(n) = floor(n*(2 + sqrt(2))).

The programs for A001952, the canonical program `A001952.P10508951561380553` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001952 has offset 1).

The definition of A001952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(2+sqrt(2)))` (program `A001952.P10508951561380553`, by `A001952.P10508951561380553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001952.P10508951561380553

`floor((n+1)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001952

/-- `floor((n+1)*(2+sqrt(2)))` -/
def P10508951561380553.Spec : Prop :=
  ∀ n, P10508951561380553.a n = A001952 (n + 1)

theorem P10508951561380553.correct : P10508951561380553.Spec := by
  intro n
  simp only [A001952, Nat.add_sub_cancel]

end A001952

/-! ## A001952.P464458504147267965

`2*(n+1)+A000196(2*(n+1)²)`
-/

namespace A001952.P464458504147267965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A000196 (2 * (n + 1) ^ 2)

end

end A001952.P464458504147267965

namespace A001952

/-- `2*(n+1)+A000196(2*(n+1)²)` -/
def P464458504147267965.Spec : Prop :=
  ∀ n, P464458504147267965.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P5264502886896358476

`∑[A276864(n+1)]`
-/

namespace A001952.P5264502886896358476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001952.P5264502886896358476

namespace A001952

/-- `∑[A276864(n+1)]` -/
def P5264502886896358476.Spec : Prop :=
  ∀ n, P5264502886896358476.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P15208754959361153555

`∑[A097509(n)]+n`
-/

namespace A001952.P15208754959361153555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A001952.P15208754959361153555

namespace A001952

/-- `∑[A097509(n)]+n` -/
def P15208754959361153555.Spec : Prop :=
  ∀ n, P15208754959361153555.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P15332163782076251417

`A184922(n+1)+1`
-/

namespace A001952.P15332163782076251417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + 1

end

end A001952.P15332163782076251417

namespace A001952

/-- `A184922(n+1)+1` -/
def P15332163782076251417.Spec : Prop :=
  ∀ n, P15332163782076251417.a n = A001952 (n + 1)

theorem P15332163782076251417.correct : P15332163782076251417.Spec := by
  intro n
  simp only [A001952, Nat.add_sub_cancel, A001952.P15332163782076251417.a, A001952.P10508951561380553.a, A184922, A184922.P3022455773076834712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001952

/-! ## A001952.P451643873822183047

`A286927(n+1)/2`
-/

namespace A001952.P451643873822183047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 (n + 1) : ℚ) / 2

end

end A001952.P451643873822183047

namespace A001952

/-- `A286927(n+1)/2` -/
def P451643873822183047.Spec : Prop :=
  ∀ n, P451643873822183047.a n = (A001952 (n + 1) : ℚ)

theorem P451643873822183047.correct : P451643873822183047.Spec := by
  intro n
  simp only [A001952, Nat.add_sub_cancel, A001952.P451643873822183047.a, A001952.P10508951561380553.a, A286927, A286927.P17246180618763280689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001952

/-! ## A001952.P9210189965612811327

`A080754(n+1)+n`
-/

namespace A001952.P9210189965612811327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + (n : ℤ)

end

end A001952.P9210189965612811327

namespace A001952

/-- `A080754(n+1)+n` -/
def P9210189965612811327.Spec : Prop :=
  ∀ n, P9210189965612811327.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P4001743721372379277

`A286923(n+1)-n`
-/

namespace A001952.P4001743721372379277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) - (n : ℤ)

end

end A001952.P4001743721372379277

namespace A001952

/-- `A286923(n+1)-n` -/
def P4001743721372379277.Spec : Prop :=
  ∀ n, P4001743721372379277.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P14332647307858938369

`∑[Δ[A001951(n)]+2]`
-/

namespace A001952.P14332647307858938369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001952.P14332647307858938369

namespace A001952

/-- `∑[Δ[A001951(n)]+2]` -/
def P14332647307858938369.Spec : Prop :=
  ∀ n, P14332647307858938369.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P10251350683057498552

`ceil(A286690(n+1)/2)`
-/

namespace A001952.P10251350683057498552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286690 (n + 1) : ℚ) / 2⌉

end

end A001952.P10251350683057498552

namespace A001952

/-- `ceil(A286690(n+1)/2)` -/
def P10251350683057498552.Spec : Prop :=
  ∀ n, P10251350683057498552.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P15607910314731984138

`∑[A188037(n+1)+3]`
-/

namespace A001952.P15607910314731984138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001952.P15607910314731984138

namespace A001952

/-- `∑[A188037(n+1)+3]` -/
def P15607910314731984138.Spec : Prop :=
  ∀ n, P15607910314731984138.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P6687551905108598269

`A003151(n+1)+1+n`
-/

namespace A001952.P6687551905108598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + 1 + (n : ℤ)

end

end A001952.P6687551905108598269

namespace A001952

/-- `A003151(n+1)+1+n` -/
def P6687551905108598269.Spec : Prop :=
  ∀ n, P6687551905108598269.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P6847518915191967913

`A187338(n+1)-(n+1)`
-/

namespace A001952.P6847518915191967913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187338 (n + 1) - (n + 1 : ℤ)

end

end A001952.P6847518915191967913

namespace A001952

/-- `A187338(n+1)-(n+1)` -/
def P6847518915191967913.Spec : Prop :=
  ∀ n, P6847518915191967913.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P2972677264891995998

`A286666(n+1)+2+n`
-/

namespace A001952.P2972677264891995998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + 2 + (n : ℤ)

end

end A001952.P2972677264891995998

namespace A001952

/-- `A286666(n+1)+2+n` -/
def P2972677264891995998.Spec : Prop :=
  ∀ n, P2972677264891995998.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P6135357911485886470

`A001951(n+1)+2*(n+1)`
-/

namespace A001952.P6135357911485886470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + (2 * (n + 1) : ℤ)

end

end A001952.P6135357911485886470

namespace A001952

/-- `A001951(n+1)+2*(n+1)` -/
def P6135357911485886470.Spec : Prop :=
  ∀ n, P6135357911485886470.a n = A001952 (n + 1)

end A001952

/-! ## A001952.P11056418569873154607

`A054071(n+1)+A016789(n)`
-/

namespace A001952.P11056418569873154607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + A016789 n

end

end A001952.P11056418569873154607

namespace A001952

/-- `A054071(n+1)+A016789(n)` -/
def P11056418569873154607.Spec : Prop :=
  ∀ n, P11056418569873154607.a n = A001952 (n + 1)

end A001952

/-!
# A001953: a(n) = floor((n + 1/2) * sqrt(2)).

The programs for A001953, the canonical program `A001953.P2047094880503061030` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001953 has offset 0).

The definition of A001953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001953.P2047094880503061030

`floor((2*n+1)/sqrt(2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001953

/-- `floor((2*n+1)/sqrt(2))` -/
def P2047094880503061030.Spec : Prop :=
  ∀ n, P2047094880503061030.a n = A001953 n

theorem P2047094880503061030.correct : P2047094880503061030.Spec := by
  intro n
  simp only [A001953]

end A001953

/-! ## A001953.P10388478555328930541

`floor((n+1/2)*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001953.P10388478555328930541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A001953.P10388478555328930541

namespace A001953

/-- `floor((n+1/2)*sqrt(2))` -/
def P10388478555328930541.Spec : Prop :=
  ∀ n, P10388478555328930541.a n = A001953 n

end A001953

/-! ## A001953.P15252323849450944645

`A136119(n+1)-1`
-/

namespace A001953.P15252323849450944645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) - 1

end

end A001953.P15252323849450944645

namespace A001953

/-- `A136119(n+1)-1` -/
def P15252323849450944645.Spec : Prop :=
  ∀ n, P15252323849450944645.a n = A001953 n

end A001953

/-! ## A001953.P11498888062369850637

`A000196(2*n*(n+1))`
-/

namespace A001953.P11498888062369850637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n * (n + 1))

end

end A001953.P11498888062369850637

namespace A001953

/-- `A000196(2*n*(n+1))` -/
def P11498888062369850637.Spec : Prop :=
  ∀ n, P11498888062369850637.a n = A001953 n

end A001953

/-! ## A001953.P2932464280487488691

`comp[A001954(n)]`
-/

namespace A001953.P2932464280487488691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001953.P2932464280487488691

namespace A001953

/-- `comp[A001954(n)]` -/
def P2932464280487488691.Spec : Prop :=
  ∀ n, (P2932464280487488691.a n : ℤ) = A001953 n

end A001953

/-! ## A001953.P7431507755638931808

`A189574(n+1)+n`
-/

namespace A001953.P7431507755638931808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + (n : ℤ)

end

end A001953.P7431507755638931808

namespace A001953

/-- `A189574(n+1)+n` -/
def P7431507755638931808.Spec : Prop :=
  ∀ n, P7431507755638931808.a n = A001953 n

end A001953

/-! ## A001953.P14625302236685337794

`ceil(sqrt(A001844(n)))-1`
-/

namespace A001953.P14625302236685337794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001844 n : ℝ)⌉ - 1

end

end A001953.P14625302236685337794

namespace A001953

/-- `ceil(sqrt(A001844(n)))-1` -/
def P14625302236685337794.Spec : Prop :=
  ∀ n, P14625302236685337794.a n = A001953 n

end A001953

/-! ## A001953.P12355756936124716965

`comp[A184119(n+1)-1]`
-/

namespace A001953.P12355756936124716965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001953.P12355756936124716965

namespace A001953

/-- `comp[A184119(n+1)-1]` -/
def P12355756936124716965.Spec : Prop :=
  ∀ n, (P12355756936124716965.a n : ℤ) = A001953 n

end A001953

/-! ## A001953.P15512461173445955834

`∑[A189572(n+1)]+n`
-/

namespace A001953.P15512461173445955834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A001953.P15512461173445955834

namespace A001953

/-- `∑[A189572(n+1)]+n` -/
def P15512461173445955834.Spec : Prop :=
  ∀ n, P15512461173445955834.a n = A001953 n

end A001953

/-! ## A001953.P16987160542306125779

`comp[A086377(n+1)+n]`
-/

namespace A001953.P16987160542306125779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001953.P16987160542306125779

namespace A001953

/-- `comp[A086377(n+1)+n]` -/
def P16987160542306125779.Spec : Prop :=
  ∀ n, (P16987160542306125779.a n : ℤ) = A001953 n

end A001953

/-! ## A001953.P6549381625955088025

`A080652(n+1)-(n+2)`
-/

namespace A001953.P6549381625955088025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - (n + 2 : ℤ)

end

end A001953.P6549381625955088025

namespace A001953

/-- `A080652(n+1)-(n+2)` -/
def P6549381625955088025.Spec : Prop :=
  ∀ n, P6549381625955088025.a n = A001953 n

end A001953

/-! ## A001953.P3437302735380102458

`ceil(sqrt(A046092(n)+1))-1`
-/

namespace A001953.P3437302735380102458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A046092 n + 1 : ℝ)⌉ - 1

end

end A001953.P3437302735380102458

namespace A001953

/-- `ceil(sqrt(A046092(n)+1))-1` -/
def P3437302735380102458.Spec : Prop :=
  ∀ n, P3437302735380102458.a n = A001953 n

end A001953

/-! ## A001953.P2562411124754886744

`a(n-1)+A004641(n)+1` with `a(0)=0`
-/

namespace A001953.P2562411124754886744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A004641 n + 1)

end

end A001953.P2562411124754886744

namespace A001953

/-- `a(n-1)+A004641(n)+1` -/
def P2562411124754886744.Spec : Prop :=
  ∀ n, P2562411124754886744.a n = A001953 n

end A001953

/-! ## A001953.P10860706419828236954

`A001954(n)%A157142(n)`
-/

namespace A001953.P10860706419828236954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001954 n) (A157142 n)

end

end A001953.P10860706419828236954

namespace A001953

/-- `A001954(n)%A157142(n)` -/
def P10860706419828236954.Spec : Prop :=
  ∀ n, P10860706419828236954.a n = A001953 n

end A001953

/-! ## A001953.P6644229669797949009

`A184119(n+1)%A103517(n)`
-/

namespace A001953.P6644229669797949009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184119 (n + 1)) (A103517 n)

end

end A001953.P6644229669797949009

namespace A001953

/-- `A184119(n+1)%A103517(n)` -/
def P6644229669797949009.Spec : Prop :=
  ∀ n, P6644229669797949009.a n = A001953 n

end A001953

/-!
# A001954: a(n) = floor((n+1/2)*(2+sqrt(2))); winning positions in the 2-Wythoff game.

The programs for A001954, the canonical program `A001954.P3123798433681886876` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001954 has offset 0).

The definition of A001954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)*(2+sqrt(2)))` (program `A001954.P3123798433681886876`, by `A001954.P3123798433681886876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001954.P3123798433681886876

`floor((n+1/2)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001954

/-- `floor((n+1/2)*(2+sqrt(2)))` -/
def P3123798433681886876.Spec : Prop :=
  ∀ n, P3123798433681886876.a n = A001954 n

theorem P3123798433681886876.correct : P3123798433681886876.Spec := by
  intro n
  simp only [A001954]

end A001954

/-! ## A001954.P16762132147892371614

`floor(2*(sqrt(∑[n])+n+1))-(1-and(2, n))²`
-/

namespace A001954.P16762132147892371614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ))⌋ - (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A001954.P16762132147892371614

namespace A001954

/-- `floor(2*(sqrt(∑[n])+n+1))-(1-and(2, n))²` -/
def P16762132147892371614.Spec : Prop :=
  ∀ n, P16762132147892371614.a n = A001954 n

end A001954

/-! ## A001954.P16494572259140436035

`A184119(n+1)-1`
-/

namespace A001954.P16494572259140436035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - 1

end

end A001954.P16494572259140436035

namespace A001954

/-- `A184119(n+1)-1` -/
def P16494572259140436035.Spec : Prop :=
  ∀ n, P16494572259140436035.a n = A001954 n

end A001954

/-! ## A001954.P10121547859382162950

`A086377(n+1)+n`
-/

namespace A001954.P10121547859382162950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) + (n : ℤ)

end

end A001954.P10121547859382162950

namespace A001954

/-- `A086377(n+1)+n` -/
def P10121547859382162950.Spec : Prop :=
  ∀ n, P10121547859382162950.a n = A001954 n

end A001954

/-! ## A001954.P12737610759929416543

`A001953(n)+Δ[n²]`
-/

namespace A001954.P12737610759929416543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001954.P12737610759929416543

namespace A001954

/-- `A001953(n)+Δ[n²]` -/
def P12737610759929416543.Spec : Prop :=
  ∀ n, P12737610759929416543.a n = A001954 n

end A001954

/-! ## A001954.P12592310707178791067

`A080652(n+1)-1+n`
-/

namespace A001954.P12592310707178791067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - 1 + (n : ℤ)

end

end A001954.P12592310707178791067

namespace A001954

/-- `A080652(n+1)-1+n` -/
def P12592310707178791067.Spec : Prop :=
  ∀ n, P12592310707178791067.a n = A001954 n

end A001954

/-! ## A001954.P9245293225706835473

`A136119(n+1)+2*n`
-/

namespace A001954.P9245293225706835473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) + (2 * n : ℤ)

end

end A001954.P9245293225706835473

namespace A001954

/-- `A136119(n+1)+2*n` -/
def P9245293225706835473.Spec : Prop :=
  ∀ n, P9245293225706835473.a n = A001954 n

end A001954

/-! ## A001954.P2699525879480389020

`a(n-1)+A001030(n)+2` with `a(0)=1`
-/

namespace A001954.P2699525879480389020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001030 n + 2)

end

end A001954.P2699525879480389020

namespace A001954

/-- `a(n-1)+A001030(n)+2` -/
def P2699525879480389020.Spec : Prop :=
  ∀ n, P2699525879480389020.a n = A001954 n

end A001954

/-! ## A001954.P964915575074619286

`A080652(n+1)+A023443(n)`
-/

namespace A001954.P964915575074619286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) + A023443 n

end

end A001954.P964915575074619286

namespace A001954

/-- `A080652(n+1)+A023443(n)` -/
def P964915575074619286.Spec : Prop :=
  ∀ n, P964915575074619286.a n = A001954 n

end A001954

/-! ## A001954.P8183721319354948288

`A189574(n+1)+A016777(n)`
-/

namespace A001954.P8183721319354948288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + A016777 n

end

end A001954.P8183721319354948288

namespace A001954

/-- `A189574(n+1)+A016777(n)` -/
def P8183721319354948288.Spec : Prop :=
  ∀ n, P8183721319354948288.a n = A001954 n

end A001954

/-! ## A001954.P10839804819317071919

`A080652(n+1)-A024000(n)`
-/

namespace A001954.P10839804819317071919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1) - A024000 n

end

end A001954.P10839804819317071919

namespace A001954

/-- `A080652(n+1)-A024000(n)` -/
def P10839804819317071919.Spec : Prop :=
  ∀ n, P10839804819317071919.a n = A001954 n

end A001954

/-! ## A001954.P5234558093649172272

`A342280(n)-A063957(n+1)`
-/

namespace A001954.P5234558093649172272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n - A063957 (n + 1)

end

end A001954.P5234558093649172272

namespace A001954

/-- `A342280(n)-A063957(n+1)` -/
def P5234558093649172272.Spec : Prop :=
  ∀ n, P5234558093649172272.a n = A001954 n

end A001954

/-! ## A001954.P8061459782170324765

`A064437(n+2)-2+n`
-/

namespace A001954.P8061459782170324765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 2 + (n : ℤ)

end

end A001954.P8061459782170324765

namespace A001954

/-- `A064437(n+2)-2+n` -/
def P8061459782170324765.Spec : Prop :=
  ∀ n, P8061459782170324765.a n = A001954 n

end A001954

/-! ## A001954.P10503860876552549944

`A003152(Δ[n²])`
-/

namespace A001954.P10503860876552549944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001954.P10503860876552549944

namespace A001954

/-- `A003152(Δ[n²])` -/
def P10503860876552549944.Spec : Prop :=
  ∀ n, P10503860876552549944.a n = A001954 n

end A001954

/-! ## A001954.P8894633904706040194

`A080755(Δ[n²])-1`
-/

namespace A001954.P8894633904706040194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A001954.P8894633904706040194

namespace A001954

/-- `A080755(Δ[n²])-1` -/
def P8894633904706040194.Spec : Prop :=
  ∀ n, P8894633904706040194.a n = A001954 n

end A001954

/-! ## A001954.P1452471669530884194

`A083088(Δ[n²])-1`
-/

namespace A001954.P1452471669530884194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A001954.P1452471669530884194

namespace A001954

/-- `A083088(Δ[n²])-1` -/
def P1452471669530884194.Spec : Prop :=
  ∀ n, P1452471669530884194.a n = A001954 n

end A001954

/-!
# A001955: Beatty sequence of 1 + 1/sqrt(11).

The programs for A001955, the canonical program `A001955.P16121870347333052339` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001955 has offset 1).

The definition of A001955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001955.P16121870347333052339

`floor((n+1)*(1+1/sqrt(11)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001955

/-- `floor((n+1)*(1+1/sqrt(11)))` -/
def P16121870347333052339.Spec : Prop :=
  ∀ n, P16121870347333052339.a n = A001955 (n + 1)

theorem P16121870347333052339.correct : P16121870347333052339.Spec := by
  intro n
  simp only [A001955, Nat.add_sub_cancel]

end A001955

/-! ## A001955.P16295665670572072536

`ceil((n+1)/sqrt(11))+n%(n+1)`
-/

namespace A001955.P16295665670572072536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (11 : ℝ)⌉ + ((n % (n + 1) : ℕ) : ℤ)

end

end A001955.P16295665670572072536

namespace A001955

/-- `ceil((n+1)/sqrt(11))+n%(n+1)` -/
def P16295665670572072536.Spec : Prop :=
  ∀ n, P16295665670572072536.a n = A001955 (n + 1)

end A001955

/-! ## A001955.P4701345304891471168

`∑[char[A171982(n+1)]+1]`
-/

namespace A001955.P4701345304891471168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171982 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001955.P4701345304891471168

namespace A001955

/-- `∑[char[A171982(n+1)]+1]` -/
def P4701345304891471168.Spec : Prop :=
  ∀ n, (P4701345304891471168.a n : ℤ) = A001955 (n + 1)

end A001955

/-! ## A001955.P17446691020461815614

`ceil(sqrt(A036409(n+1))+n)`
-/

namespace A001955.P17446691020461815614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A036409 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A001955.P17446691020461815614

namespace A001955

/-- `ceil(sqrt(A036409(n+1))+n)` -/
def P17446691020461815614.Spec : Prop :=
  ∀ n, P17446691020461815614.a n = A001955 (n + 1)

end A001955

/-! ## A001955.P1398622953349108266

`A234613(A234613(n))+ceil((n+1)/sqrt(11))`
-/

namespace A001955.P1398622953349108266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A234613 n).toNat + ⌈(n + 1 : ℝ) / Real.sqrt (11 : ℝ)⌉

end

end A001955.P1398622953349108266

namespace A001955

/-- `A234613(A234613(n))+ceil((n+1)/sqrt(11))` -/
def P1398622953349108266.Spec : Prop :=
  ∀ n, P1398622953349108266.a n = A001955 (n + 1)

end A001955

/-! ## A001955.P3009809715724515192

`A028310(ceil((n+1)/sqrt(11))+n)`
-/

namespace A001955.P3009809715724515192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈(n + 1 : ℝ) / Real.sqrt (11 : ℝ)⌉ + (n : ℤ)).toNat

end

end A001955.P3009809715724515192

namespace A001955

/-- `A028310(ceil((n+1)/sqrt(11))+n)` -/
def P3009809715724515192.Spec : Prop :=
  ∀ n, P3009809715724515192.a n = A001955 (n + 1)

end A001955

/-! ## A001955.P15205879963521556638

`A025480(A005843(n))+ceil((n+1)/sqrt(11))`
-/

namespace A001955.P15205879963521556638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A005843 n).toNat + ⌈(n + 1 : ℝ) / Real.sqrt (11 : ℝ)⌉

end

end A001955.P15205879963521556638

namespace A001955

/-- `A025480(A005843(n))+ceil((n+1)/sqrt(11))` -/
def P15205879963521556638.Spec : Prop :=
  ∀ n, P15205879963521556638.a n = A001955 (n + 1)

end A001955

/-! ## A001955.P3724401546417815895

`A135034(A036409(n+1))+n`
-/

namespace A001955.P3724401546417815895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A036409 (n + 1)).toNat + (n : ℤ)

end

end A001955.P3724401546417815895

namespace A001955

/-- `A135034(A036409(n+1))+n` -/
def P3724401546417815895.Spec : Prop :=
  ∀ n, P3724401546417815895.a n = A001955 (n + 1)

end A001955

/-!
# A001956: Beatty sequence of (5+sqrt(13))/2.

The programs for A001956, the canonical program `A001956.P6228377706762411076` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001956 has offset 1).

The definition of A001956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001956.P6228377706762411076

`floor((n+1)*(5+sqrt(13))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001956

/-- `floor((n+1)*(5+sqrt(13))/2)` -/
def P6228377706762411076.Spec : Prop :=
  ∀ n, P6228377706762411076.a n = A001956 (n + 1)

theorem P6228377706762411076.correct : P6228377706762411076.Spec := by
  intro n
  simp only [A001956, Nat.add_sub_cancel]

end A001956

/-! ## A001956.P12095287555204350252

`A080600(n+1)+n`
-/

namespace A001956.P12095287555204350252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) + (n : ℤ)

end

end A001956.P12095287555204350252

namespace A001956

/-- `A080600(n+1)+n` -/
def P12095287555204350252.Spec : Prop :=
  ∀ n, P12095287555204350252.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P9713454478746559724

`A080081(n+1)+1+n`
-/

namespace A001956.P9713454478746559724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080081 (n + 1) + 1 + (n : ℤ)

end

end A001956.P9713454478746559724

namespace A001956

/-- `A080081(n+1)+1+n` -/
def P9713454478746559724.Spec : Prop :=
  ∀ n, P9713454478746559724.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P8763396372440163838

`A184480(n+1)+3*(n+1)`
-/

namespace A001956.P8763396372440163838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1) + (3 * (n + 1) : ℤ)

end

end A001956.P8763396372440163838

namespace A001956

/-- `A184480(n+1)+3*(n+1)` -/
def P8763396372440163838.Spec : Prop :=
  ∀ n, P8763396372440163838.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P4985201616060112032

`A184480(n+1)+A004767(n)-n`
-/

namespace A001956.P4985201616060112032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1) + A004767 n - (n : ℤ)

end

end A001956.P4985201616060112032

namespace A001956

/-- `A184480(n+1)+A004767(n)-n` -/
def P4985201616060112032.Spec : Prop :=
  ∀ n, P4985201616060112032.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P455600242822827879

`n+1+A080667(n+1)+A184480(n+1)-A184482(n+1)`
-/

namespace A001956.P455600242822827879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A080667 (n + 1) + (A184480 (n + 1) - A184482 (n + 1)))

end

end A001956.P455600242822827879

namespace A001956

/-- `n+1+A080667(n+1)+A184480(n+1)-A184482(n+1)` -/
def P455600242822827879.Spec : Prop :=
  ∀ n, P455600242822827879.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P6204613045388317558

`A284675(n+2)-2`
-/

namespace A001956.P6204613045388317558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 2) - 2

end

end A001956.P6204613045388317558

namespace A001956

/-- `A284675(n+2)-2` -/
def P6204613045388317558.Spec : Prop :=
  ∀ n, P6204613045388317558.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P18318504716880888109

`A284678(n+2)-2`
-/

namespace A001956.P18318504716880888109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 2) - 2

end

end A001956.P18318504716880888109

namespace A001956

/-- `A284678(n+2)-2` -/
def P18318504716880888109.Spec : Prop :=
  ∀ n, P18318504716880888109.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P11281832238966196837

`∑[abs(Δ[A284678(n+1)])]`
-/

namespace A001956.P11281832238966196837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001956.P11281832238966196837

namespace A001956

/-- `∑[abs(Δ[A284678(n+1)])]` -/
def P11281832238966196837.Spec : Prop :=
  ∀ n, P11281832238966196837.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P10899558471008714025

`3*n+A284679(n+2)+1`
-/

namespace A001956.P10899558471008714025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A284679 (n + 2) + 1)

end

end A001956.P10899558471008714025

namespace A001956

/-- `3*n+A284679(n+2)+1` -/
def P10899558471008714025.Spec : Prop :=
  ∀ n, P10899558471008714025.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P12358731270453936097

`A284676(n+2)+3*n+1`
-/

namespace A001956.P12358731270453936097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 2) + (3 * n + 1 : ℤ)

end

end A001956.P12358731270453936097

namespace A001956

/-- `A284676(n+2)+3*n+1` -/
def P12358731270453936097.Spec : Prop :=
  ∀ n, P12358731270453936097.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P7863516340595021820

`∑[A103093(Δ[A284676(n+1)])+1]`
-/

namespace A001956.P7863516340595021820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103093 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001956.P7863516340595021820

namespace A001956

/-- `∑[A103093(Δ[A284676(n+1)])+1]` -/
def P7863516340595021820.Spec : Prop :=
  ∀ n, P7863516340595021820.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P4669279439900908290

`∑[A336112(Δ[A284678(n+1)])+1]`
-/

namespace A001956.P4669279439900908290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001956.P4669279439900908290

namespace A001956

/-- `∑[A336112(Δ[A284678(n+1)])+1]` -/
def P4669279439900908290.Spec : Prop :=
  ∀ n, P4669279439900908290.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P15544868195077046260

`A008585(n+1)+A284676(n+2)-2`
-/

namespace A001956.P15544868195077046260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A284676 (n + 2) - 2)

end

end A001956.P15544868195077046260

namespace A001956

/-- `A008585(n+1)+A284676(n+2)-2` -/
def P15544868195077046260.Spec : Prop :=
  ∀ n, P15544868195077046260.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P2698506659840710675

`A001478(n+2)+A284675(n+2)+n`
-/

namespace A001956.P2698506659840710675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 2) + (A284675 (n + 2) + (n : ℤ))

end

end A001956.P2698506659840710675

namespace A001956

/-- `A001478(n+2)+A284675(n+2)+n` -/
def P2698506659840710675.Spec : Prop :=
  ∀ n, P2698506659840710675.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P17774436432719568710

`A284679(n+2)-A165747(n+1)+n`
-/

namespace A001956.P17774436432719568710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 2) - A165747 (n + 1) + (n : ℤ)

end

end A001956.P17774436432719568710

namespace A001956

/-- `A284679(n+2)-A165747(n+1)+n` -/
def P17774436432719568710.Spec : Prop :=
  ∀ n, P17774436432719568710.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P10504629840376797337

`A284386(A184480(n+1))+A184483(n+1)`
-/

namespace A001956.P10504629840376797337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284386 (A184480 (n + 1)).toNat + A184483 (n + 1)

end

end A001956.P10504629840376797337

namespace A001956

/-- `A284386(A184480(n+1))+A184483(n+1)` -/
def P10504629840376797337.Spec : Prop :=
  ∀ n, P10504629840376797337.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P4530924382260151859

`A001957(A080081(n+1))`
-/

namespace A001956.P4530924382260151859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 (A080081 (n + 1)).toNat

end

end A001956.P4530924382260151859

namespace A001956

/-- `A001957(A080081(n+1))` -/
def P4530924382260151859.Spec : Prop :=
  ∀ n, P4530924382260151859.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P5270021331160687916

`A284676(A284676(n+2)+2*n)`
-/

namespace A001956.P5270021331160687916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284676 (n + 2) + (2 * n : ℤ)).toNat

end

end A001956.P5270021331160687916

namespace A001956

/-- `A284676(A284676(n+2)+2*n)` -/
def P5270021331160687916.Spec : Prop :=
  ∀ n, P5270021331160687916.a n = A001956 (n + 1)

end A001956

/-! ## A001956.P11768479644031509437

`A284679(A284679(n+2)+2*n)`
-/

namespace A001956.P11768479644031509437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (A284679 (n + 2) + (2 * n : ℤ)).toNat

end

end A001956.P11768479644031509437

namespace A001956

/-- `A284679(A284679(n+2)+2*n)` -/
def P11768479644031509437.Spec : Prop :=
  ∀ n, P11768479644031509437.a n = A001956 (n + 1)

end A001956

/-!
# A001957: u-pile positions in the 3-Wythoff game with i=1.

The programs for A001957, the canonical program `A001957.P14707788831764688568` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001957 has offset 0).

The definition of A001957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001957.P14707788831764688568

`floor((n+1/3)*(sqrt(13)-1)/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001957

/-- `floor((n+1/3)*(sqrt(13)-1)/2)` -/
def P14707788831764688568.Spec : Prop :=
  ∀ n, P14707788831764688568.a n = A001957 n

theorem P14707788831764688568.correct : P14707788831764688568.Spec := by
  intro n
  simp only [A001957]

end A001957

/-! ## A001957.P3342274224976290949

`comp[A001960(n)]`
-/

namespace A001957.P3342274224976290949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001960 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001957.P3342274224976290949

namespace A001957

/-- `comp[A001960(n)]` -/
def P3342274224976290949.Spec : Prop :=
  ∀ n, (P3342274224976290949.a n : ℤ) = A001957 n

end A001957

/-! ## A001957.P7551616103279324547

`A001958(n)-A016777(n)`
-/

namespace A001957.P7551616103279324547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001958 n - A016777 n

end

end A001957.P7551616103279324547

namespace A001957

/-- `A001958(n)-A016777(n)` -/
def P7551616103279324547.Spec : Prop :=
  ∀ n, P7551616103279324547.a n = A001957 n

end A001957

/-! ## A001957.P16956158232389403718

`A001958(n)%A165355(n)`
-/

namespace A001957.P16956158232389403718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001958 n) (A165355 n)

end

end A001957.P16956158232389403718

namespace A001957

/-- `A001958(n)%A165355(n)` -/
def P16956158232389403718.Spec : Prop :=
  ∀ n, P16956158232389403718.a n = A001957 n

end A001957

/-! ## A001957.P11805073478731647009

`A008619(A001959(2*n))-1`
-/

namespace A001957.P11805073478731647009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001959 (2 * n)).toNat - 1

end

end A001957.P11805073478731647009

namespace A001957

/-- `A008619(A001959(2*n))-1` -/
def P11805073478731647009.Spec : Prop :=
  ∀ n, P11805073478731647009.a n = A001957 n

end A001957

/-! ## A001957.P2539725032883757745

`A057428(n+1)+A008619(A001959(2*n))`
-/

namespace A001957.P2539725032883757745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A008619 (A001959 (2 * n)).toNat

end

end A001957.P2539725032883757745

namespace A001957

/-- `A057428(n+1)+A008619(A001959(2*n))` -/
def P2539725032883757745.Spec : Prop :=
  ∀ n, P2539725032883757745.a n = A001957 n

end A001957

/-! ## A001957.P14581223616539724090

`A004526(A001959(2*n))`
-/

namespace A001957.P14581223616539724090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001959 (2 * n)).toNat

end

end A001957.P14581223616539724090

namespace A001957

/-- `A004526(A001959(2*n))` -/
def P14581223616539724090.Spec : Prop :=
  ∀ n, P14581223616539724090.a n = A001957 n

end A001957

/-! ## A001957.P7336577839755070554

`A184480(A284675(n+1))-A284675(n+1)`
-/

namespace A001957.P7336577839755070554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A284675 (n + 1)).toNat - A284675 (n + 1)

end

end A001957.P7336577839755070554

namespace A001957

/-- `A184480(A284675(n+1))-A284675(n+1)` -/
def P7336577839755070554.Spec : Prop :=
  ∀ n, P7336577839755070554.a n = A001957 n

end A001957

/-! ## A001957.P6009777865576294857

`A184480(A284678(n+1))-A284678(n+1)`
-/

namespace A001957.P6009777865576294857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A284678 (n + 1)).toNat - A284678 (n + 1)

end

end A001957.P6009777865576294857

namespace A001957

/-- `A184480(A284678(n+1))-A284678(n+1)` -/
def P6009777865576294857.Spec : Prop :=
  ∀ n, P6009777865576294857.a n = A001957 n

end A001957

/-! ## A001957.P2715626917870667545

`A001956(A284675(n+1))%A284678(n+1)`
-/

namespace A001957.P2715626917870667545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001956 (A284675 (n + 1)).toNat) (A284678 (n + 1))

end

end A001957.P2715626917870667545

namespace A001957

/-- `A001956(A284675(n+1))%A284678(n+1)` -/
def P2715626917870667545.Spec : Prop :=
  ∀ n, P2715626917870667545.a n = A001957 n

end A001957

/-! ## A001957.P155196453455972826

`A284676(A001956(n+1)-1)-A001956(n+1)`
-/

namespace A001957.P155196453455972826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A001956 (n + 1) - 1).toNat - A001956 (n + 1)

end

end A001957.P155196453455972826

namespace A001957

/-- `A284676(A001956(n+1)-1)-A001956(n+1)` -/
def P155196453455972826.Spec : Prop :=
  ∀ n, P155196453455972826.a n = A001957 n

end A001957

/-! ## A001957.P190384356259429652

`A284679(A001956(n+1)-1)-A001956(n+1)`
-/

namespace A001957.P190384356259429652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (A001956 (n + 1) - 1).toNat - A001956 (n + 1)

end

end A001957.P190384356259429652

namespace A001957

/-- `A284679(A001956(n+1)-1)-A001956(n+1)` -/
def P190384356259429652.Spec : Prop :=
  ∀ n, P190384356259429652.a n = A001957 n

end A001957

/-! ## A001957.P10455199335172960777

`A001956(A080600(n)+1+n)%A284675(n+1)`
-/

namespace A001957.P10455199335172960777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001956 (A080600 n + 1 + (n : ℤ)).toNat) (A284675 (n + 1))

end

end A001957.P10455199335172960777

namespace A001957

/-- `A001956(A080600(n)+1+n)%A284675(n+1)` -/
def P10455199335172960777.Spec : Prop :=
  ∀ n, P10455199335172960777.a n = A001957 n

end A001957

/-! ## A001957.P5400712859411402530

`A184480(A284678(n+1))%(A080600(n)+1+n)`
-/

namespace A001957.P5400712859411402530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184480 (A284678 (n + 1)).toNat) (A080600 n + 1 + (n : ℤ))

end

end A001957.P5400712859411402530

namespace A001957

/-- `A184480(A284678(n+1))%(A080600(n)+1+n)` -/
def P5400712859411402530.Spec : Prop :=
  ∀ n, P5400712859411402530.a n = A001957 n

end A001957

/-! ## A001957.P5319456606331686640

`A284676(A284675(n+1)+1)-(A284675(n+1)+2)`
-/

namespace A001957.P5319456606331686640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284675 (n + 1) + 1).toNat - (A284675 (n + 1) + 2)

end

end A001957.P5319456606331686640

namespace A001957

/-- `A284676(A284675(n+1)+1)-(A284675(n+1)+2)` -/
def P5319456606331686640.Spec : Prop :=
  ∀ n, P5319456606331686640.a n = A001957 n

end A001957

/-! ## A001957.P1882762219827104645

`A284676(A284678(n+1)+1)-(A284678(n+1)+2)`
-/

namespace A001957.P1882762219827104645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284678 (n + 1) + 1).toNat - (A284678 (n + 1) + 2)

end

end A001957.P1882762219827104645

namespace A001957

/-- `A284676(A284678(n+1)+1)-(A284678(n+1)+2)` -/
def P1882762219827104645.Spec : Prop :=
  ∀ n, P1882762219827104645.a n = A001957 n

end A001957

/-! ## A001957.P810988090182858976

`A001956(A284679(n+1)+3*n)%A284675(n+1)`
-/

namespace A001957.P810988090182858976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001956 (A284679 (n + 1) + (3 * n : ℤ)).toNat) (A284675 (n + 1))

end

end A001957.P810988090182858976

namespace A001957

/-- `A001956(A284679(n+1)+3*n)%A284675(n+1)` -/
def P810988090182858976.Spec : Prop :=
  ∀ n, P810988090182858976.a n = A001957 n

end A001957

/-! ## A001957.P1211389589780249357

`A184480(comp[A284676(n+1)-1]+1)-(A080600(n)+1+n)`
-/

namespace A001957.P1211389589780249357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - (A080600 n + 1 + (n : ℤ))

end

end A001957.P1211389589780249357

namespace A001957

/-- `A184480(comp[A284676(n+1)-1]+1)-(A080600(n)+1+n)` -/
def P1211389589780249357.Spec : Prop :=
  ∀ n, P1211389589780249357.a n = A001957 n

end A001957

/-! ## A001957.P12564362762071412619

`A184480(comp[A284676(n+1)-1]+1)-(A284679(n+1)+3*n)`
-/

namespace A001957.P12564362762071412619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - (A284679 (n + 1) + (3 * n : ℤ))

end

end A001957.P12564362762071412619

namespace A001957

/-- `A184480(comp[A284676(n+1)-1]+1)-(A284679(n+1)+3*n)` -/
def P12564362762071412619.Spec : Prop :=
  ∀ n, P12564362762071412619.a n = A001957 n

end A001957

/-!
# A001958: v-pile numbers of the 3-Wythoff game with i=1.

The programs for A001958, the canonical program `A001958.P15868051791136865233` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001958 has offset 0).

The definition of A001958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001958.P15868051791136865233

`floor((n+1/3)*(5+sqrt(13))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001958

/-- `floor((n+1/3)*(5+sqrt(13))/2)` -/
def P15868051791136865233.Spec : Prop :=
  ∀ n, P15868051791136865233.a n = A001958 n

theorem P15868051791136865233.correct : P15868051791136865233.Spec := by
  intro n
  simp only [A001958]

end A001958

/-! ## A001958.P16308744645583531006

`A001957(n)+3*n+1`
-/

namespace A001958.P16308744645583531006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 n + (3 * n + 1 : ℤ)

end

end A001958.P16308744645583531006

namespace A001958

/-- `A001957(n)+3*n+1` -/
def P16308744645583531006.Spec : Prop :=
  ∀ n, P16308744645583531006.a n = A001958 n

end A001958

/-! ## A001958.P10930168816828892876

`A016777(n)+A001957(n)`
-/

namespace A001958.P10930168816828892876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A001957 n

end

end A001958.P10930168816828892876

namespace A001958

/-- `A016777(n)+A001957(n)` -/
def P10930168816828892876.Spec : Prop :=
  ∀ n, P10930168816828892876.a n = A001958 n

end A001958

/-! ## A001958.P1933438847862961682

`comp[A001959(n)]`
-/

namespace A001958.P1933438847862961682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001959 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001958.P1933438847862961682

namespace A001958

/-- `comp[A001959(n)]` -/
def P1933438847862961682.Spec : Prop :=
  ∀ n, (P1933438847862961682.a n : ℤ) = A001958 n

end A001958

/-! ## A001958.P14504437882689794870

`record[(A001959(n)+1)%A001959(n+1)]`
-/

namespace A001958.P14504437882689794870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001959 n + 1) (A001959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001958.P14504437882689794870

namespace A001958

/-- `record[(A001959(n)+1)%A001959(n+1)]` -/
def P14504437882689794870.Spec : Prop :=
  ∀ n, P14504437882689794870.a n = A001958 n

end A001958

/-! ## A001958.P3459978203400617276

`A001957(A005408(n)+A001957(n))`
-/

namespace A001958.P3459978203400617276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 (A005408 n + A001957 n).toNat

end

end A001958.P3459978203400617276

namespace A001958

/-- `A001957(A005408(n)+A001957(n))` -/
def P3459978203400617276.Spec : Prop :=
  ∀ n, P3459978203400617276.a n = A001958 n

end A001958

/-! ## A001958.P13150646413567560003

`A184480(A001956(n+1)-2)-A184480(n+1)`
-/

namespace A001958.P13150646413567560003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A001956 (n + 1) - 2).toNat - A184480 (n + 1)

end

end A001958.P13150646413567560003

namespace A001958

/-- `A184480(A001956(n+1)-2)-A184480(n+1)` -/
def P13150646413567560003.Spec : Prop :=
  ∀ n, P13150646413567560003.a n = A001958 n

end A001958

/-! ## A001958.P16100774653358553681

`A284676(A284675(n+1)+1)-(A284679(n+1)+1)`
-/

namespace A001958.P16100774653358553681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284675 (n + 1) + 1).toNat - (A284679 (n + 1) + 1)

end

end A001958.P16100774653358553681

namespace A001958

/-- `A284676(A284675(n+1)+1)-(A284679(n+1)+1)` -/
def P16100774653358553681.Spec : Prop :=
  ∀ n, P16100774653358553681.a n = A001958 n

end A001958

/-! ## A001958.P10729520350443495460

`A284676(A284678(n+1)+1)-(A284676(n+1)+1)`
-/

namespace A001958.P10729520350443495460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284678 (n + 1) + 1).toNat - (A284676 (n + 1) + 1)

end

end A001958.P10729520350443495460

namespace A001958

/-- `A284676(A284678(n+1)+1)-(A284676(n+1)+1)` -/
def P10729520350443495460.Spec : Prop :=
  ∀ n, P10729520350443495460.a n = A001958 n

end A001958

/-! ## A001958.P15111996102469736044

`A284675(n+1)-A284677(A284679(n+1)+A284675(n+1))`
-/

namespace A001958.P15111996102469736044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 1) - A284677 (A284679 (n + 1) + A284675 (n + 1)).toNat

end

end A001958.P15111996102469736044

namespace A001958

/-- `A284675(n+1)-A284677(A284679(n+1)+A284675(n+1))` -/
def P15111996102469736044.Spec : Prop :=
  ∀ n, P15111996102469736044.a n = A001958 n

end A001958

/-! ## A001958.P17461206812112089956

`A284678(n+1)-A284674(A284679(n+1)+A284678(n+1))`
-/

namespace A001958.P17461206812112089956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - A284674 (A284679 (n + 1) + A284678 (n + 1)).toNat

end

end A001958.P17461206812112089956

namespace A001958

/-- `A284678(n+1)-A284674(A284679(n+1)+A284678(n+1))` -/
def P17461206812112089956.Spec : Prop :=
  ∀ n, P17461206812112089956.a n = A001958 n

end A001958

/-! ## A001958.P16536752008507282385

`A002264(A001956(3*n+1))`
-/

namespace A001958.P16536752008507282385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001956 (3 * n + 1)).toNat

end

end A001958.P16536752008507282385

namespace A001958

/-- `A002264(A001956(3*n+1))` -/
def P16536752008507282385.Spec : Prop :=
  ∀ n, P16536752008507282385.a n = A001958 n

end A001958

/-!
# A001959: u-pile numbers for the 3-Wythoff game with i=2.

The programs for A001959, the canonical program `A001959.P15320651779509346909` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001959 has offset 0).

The definition of A001959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001959.P15320651779509346909

`floor((n+2/3)*(sqrt(13)-1)/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001959

/-- `floor((n+2/3)*(sqrt(13)-1)/2)` -/
def P15320651779509346909.Spec : Prop :=
  ∀ n, P15320651779509346909.a n = A001959 n

theorem P15320651779509346909.correct : P15320651779509346909.Spec := by
  intro n
  simp only [A001959]

end A001959

/-! ## A001959.P9378765293535185363

`comp[A001958(n)]`
-/

namespace A001959.P9378765293535185363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001959.P9378765293535185363

namespace A001959

/-- `comp[A001958(n)]` -/
def P9378765293535185363.Spec : Prop :=
  ∀ n, (P9378765293535185363.a n : ℤ) = A001959 n

end A001959

/-! ## A001959.P16575794234320080276

`A001960(n)-(3*n+2)`
-/

namespace A001959.P16575794234320080276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001960 n - (3 * n + 2 : ℤ)

end

end A001959.P16575794234320080276

namespace A001959

/-- `A001960(n)-(3*n+2)` -/
def P16575794234320080276.Spec : Prop :=
  ∀ n, P16575794234320080276.a n = A001959 n

end A001959

/-! ## A001959.P7507662850683682937

`A001960(n)%A016789(n)`
-/

namespace A001959.P7507662850683682937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001960 n) (A016789 n)

end

end A001959.P7507662850683682937

namespace A001959

/-- `A001960(n)%A016789(n)` -/
def P7507662850683682937.Spec : Prop :=
  ∀ n, P7507662850683682937.a n = A001959 n

end A001959

/-! ## A001959.P17916643780851837604

`comp[A001957(n+1+A001957(n)+n)]`
-/

namespace A001959.P17916643780851837604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 ((n + 1 : ℤ) + (A001957 n + (n : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001959.P17916643780851837604

namespace A001959

/-- `comp[A001957(n+1+A001957(n)+n)]` -/
def P17916643780851837604.Spec : Prop :=
  ∀ n, (P17916643780851837604.a n : ℤ) = A001959 n

end A001959

/-! ## A001959.P4841467389345422431

`A184480(A184483(n+1))-A184483(n+1)`
-/

namespace A001959.P4841467389345422431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A184483 (n + 1)).toNat - A184483 (n + 1)

end

end A001959.P4841467389345422431

namespace A001959

/-- `A184480(A184483(n+1))-A184483(n+1)` -/
def P4841467389345422431.Spec : Prop :=
  ∀ n, P4841467389345422431.a n = A001959 n

end A001959

/-! ## A001959.P580331871337714536

`A284676(A001956(n+1))-(A001956(n+1)+1)`
-/

namespace A001959.P580331871337714536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A001956 (n + 1)).toNat - (A001956 (n + 1) + 1)

end

end A001959.P580331871337714536

namespace A001959

/-- `A284676(A001956(n+1))-(A001956(n+1)+1)` -/
def P580331871337714536.Spec : Prop :=
  ∀ n, P580331871337714536.a n = A001959 n

end A001959

/-! ## A001959.P3612638770024243857

`A184480(A080667(n+1)+n)%A184483(n+1)`
-/

namespace A001959.P3612638770024243857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184480 (A080667 (n + 1) + (n : ℤ)).toNat) (A184483 (n + 1))

end

end A001959.P3612638770024243857

namespace A001959

/-- `A184480(A080667(n+1)+n)%A184483(n+1)` -/
def P3612638770024243857.Spec : Prop :=
  ∀ n, P3612638770024243857.a n = A001959 n

end A001959

/-! ## A001959.P4051358025790555685

`A184480(A080667(n+1)+n)-(comp[A184482(n+1)-1]+1)`
-/

namespace A001959.P4051358025790555685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A080667 (n + 1) + (n : ℤ)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A001959.P4051358025790555685

namespace A001959

/-- `A184480(A080667(n+1)+n)-(comp[A184482(n+1)-1]+1)` -/
def P4051358025790555685.Spec : Prop :=
  ∀ n, P4051358025790555685.a n = A001959 n

end A001959

/-!
# A001960: a(n) = floor((n+2/3)*(5+sqrt(13))/2); v-pile positions in the 3-Wythoff game.

The programs for A001960, the canonical program `A001960.P4608032758875939073` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001960 has offset 0).

The definition of A001960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2/3)*(5+sqrt(13))/2)` (program `A001960.P4608032758875939073`, by `A001960.P4608032758875939073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001960.P4608032758875939073

`floor((n+2/3)*(5+sqrt(13))/2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001960

/-- `floor((n+2/3)*(5+sqrt(13))/2)` -/
def P4608032758875939073.Spec : Prop :=
  ∀ n, P4608032758875939073.a n = A001960 n

theorem P4608032758875939073.correct : P4608032758875939073.Spec := by
  intro n
  simp only [A001960]

end A001960

/-! ## A001960.P8800672349898694032

`A016789(n)+A001959(n)`
-/

namespace A001960.P8800672349898694032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + A001959 n

end

end A001960.P8800672349898694032

namespace A001960

/-- `A016789(n)+A001959(n)` -/
def P8800672349898694032.Spec : Prop :=
  ∀ n, P8800672349898694032.a n = A001960 n

end A001960

/-! ## A001960.P9214620294890322320

`comp[A001957(n)]`
-/

namespace A001960.P9214620294890322320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001960.P9214620294890322320

namespace A001960

/-- `comp[A001957(n)]` -/
def P9214620294890322320.Spec : Prop :=
  ∀ n, (P9214620294890322320.a n : ℤ) = A001960 n

end A001960

/-! ## A001960.P471956725602916380

`A001959(A001959(n)+Δ[n²])`
-/

namespace A001960.P471956725602916380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001959 (A001959 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A001960.P471956725602916380

namespace A001960

/-- `A001959(A001959(n)+Δ[n²])` -/
def P471956725602916380.Spec : Prop :=
  ∀ n, P471956725602916380.a n = A001960 n

end A001960

/-! ## A001960.P5295126283179117595

`A001959(2*n+1+A001959(n))`
-/

namespace A001960.P5295126283179117595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001959 ((2 * n + 1 : ℤ) + A001959 n).toNat

end

end A001960.P5295126283179117595

namespace A001960

/-- `A001959(2*n+1+A001959(n))` -/
def P5295126283179117595.Spec : Prop :=
  ∀ n, P5295126283179117595.a n = A001960 n

end A001960

/-! ## A001960.P14177400456854555694

`A184480(A184483(n+1))-A184482(n+1)`
-/

namespace A001960.P14177400456854555694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A184483 (n + 1)).toNat - A184482 (n + 1)

end

end A001960.P14177400456854555694

namespace A001960

/-- `A184480(A184483(n+1))-A184482(n+1)` -/
def P14177400456854555694.Spec : Prop :=
  ∀ n, P14177400456854555694.a n = A001960 n

end A001960

/-! ## A001960.P2596588187460303137

`A284676(A001956(n+1))-A284679(n+2)`
-/

namespace A001960.P2596588187460303137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A001956 (n + 1)).toNat - A284679 (n + 2)

end

end A001960.P2596588187460303137

namespace A001960

/-- `A284676(A001956(n+1))-A284679(n+2)` -/
def P2596588187460303137.Spec : Prop :=
  ∀ n, P2596588187460303137.a n = A001960 n

end A001960

/-! ## A001960.P2780918348087073763

`A184480(A001956(n+1)-1)-A184480(n+1)`
-/

namespace A001960.P2780918348087073763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A001956 (n + 1) - 1).toNat - A184480 (n + 1)

end

end A001960.P2780918348087073763

namespace A001960

/-- `A184480(A001956(n+1)-1)-A184480(n+1)` -/
def P2780918348087073763.Spec : Prop :=
  ∀ n, P2780918348087073763.a n = A001960 n

end A001960

/-! ## A001960.P4328442222138453889

`A284676(A284675(n+2)-2)-A284676(n+2)`
-/

namespace A001960.P4328442222138453889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284675 (n + 2) - 2).toNat - A284676 (n + 2)

end

end A001960.P4328442222138453889

namespace A001960

/-- `A284676(A284675(n+2)-2)-A284676(n+2)` -/
def P4328442222138453889.Spec : Prop :=
  ∀ n, P4328442222138453889.a n = A001960 n

end A001960

/-! ## A001960.P3155444411876342069

`A284679(A284675(n+2)-2)-A284679(n+2)`
-/

namespace A001960.P3155444411876342069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (A284675 (n + 2) - 2).toNat - A284679 (n + 2)

end

end A001960.P3155444411876342069

namespace A001960

/-- `A284679(A284675(n+2)-2)-A284679(n+2)` -/
def P3155444411876342069.Spec : Prop :=
  ∀ n, P3155444411876342069.a n = A001960 n

end A001960

/-! ## A001960.P1342963777391741400

`A284676(A284678(n+2)-2)-A284676(n+2)`
-/

namespace A001960.P1342963777391741400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (A284678 (n + 2) - 2).toNat - A284676 (n + 2)

end

end A001960.P1342963777391741400

namespace A001960

/-- `A284676(A284678(n+2)-2)-A284676(n+2)` -/
def P1342963777391741400.Spec : Prop :=
  ∀ n, P1342963777391741400.a n = A001960 n

end A001960

/-! ## A001960.P13060074358789561770

`A184480(A184483(n+1))-ceil(A184480(3*n+2)/3)`
-/

namespace A001960.P13060074358789561770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A184483 (n + 1)).toNat - ⌈(A184480 (3 * n + 2) : ℚ) / 3⌉

end

end A001960.P13060074358789561770

namespace A001960

/-- `A184480(A184483(n+1))-ceil(A184480(3*n+2)/3)` -/
def P13060074358789561770.Spec : Prop :=
  ∀ n, P13060074358789561770.a n = A001960 n

end A001960

/-! ## A001960.P6242080843588954485

`A184480(comp[A184482(n+1)-1]+1)-A184482(n+1)`
-/

namespace A001960.P6242080843588954485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - A184482 (n + 1)

end

end A001960.P6242080843588954485

namespace A001960

/-- `A184480(comp[A184482(n+1)-1]+1)-A184482(n+1)` -/
def P6242080843588954485.Spec : Prop :=
  ∀ n, P6242080843588954485.a n = A001960 n

end A001960

/-!
# A001961: A Beatty sequence: floor(n * (sqrt(5) - 1)).

The programs for A001961, the canonical program `A001961.P2282338956416030795` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001961 has offset 1).

The definition of A001961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001961.P3433713323226777968

`floor((n+1)*(sqrt(5)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001961.P3433713323226777968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.sqrt (5 : ℝ) - 1)⌋

end

end A001961.P3433713323226777968

namespace A001961

/-- `floor((n+1)*(sqrt(5)-1))` -/
def P3433713323226777968.Spec : Prop :=
  ∀ n, P3433713323226777968.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P2282338956416030795

`A005206(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001961

/-- `A005206(2*(n+1)-1)` -/
def P2282338956416030795.Spec : Prop :=
  ∀ n, P2282338956416030795.a n = A001961 (n + 1)

theorem P2282338956416030795.correct : P2282338956416030795.Spec := by
  intro n
  simp only [A001961, Nat.add_sub_cancel]

end A001961

/-! ## A001961.P7491723478739943757

`record[floor((xor(1, n)+1)/ϕ)]`
-/

namespace A001961.P7491723478739943757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001961.P7491723478739943757

namespace A001961

/-- `record[floor((xor(1, n)+1)/ϕ)]` -/
def P7491723478739943757.Spec : Prop :=
  ∀ n, P7491723478739943757.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P8181636692397935404

`-ceil(xor(2*n, -2)/ϕ)`
-/

namespace A001961.P8181636692397935404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (2 * n : ℤ) (-2) : ℝ) / Real.goldenRatio⌉

end

end A001961.P8181636692397935404

namespace A001961

/-- `-ceil(xor(2*n, -2)/ϕ)` -/
def P8181636692397935404.Spec : Prop :=
  ∀ n, P8181636692397935404.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P18204738395140172042

`record[C(floor((n+1)/ϕ), n%2)]`
-/

namespace A001961.P18204738395140172042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 1 : ℝ) / Real.goldenRatio⌋.toNat (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001961.P18204738395140172042

namespace A001961

/-- `record[C(floor((n+1)/ϕ), n%2)]` -/
def P18204738395140172042.Spec : Prop :=
  ∀ n, (P18204738395140172042.a n : ℤ) = A001961 (n + 1)

end A001961

/-! ## A001961.P8553983169457043078

`ceil((2*n+1)/(acot(2*n)+ϕ))`
-/

namespace A001961.P8553983169457043078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / (SequenceMachineLib.acot (2 * n : ℝ) + Real.goldenRatio)⌉

end

end A001961.P8553983169457043078

namespace A001961

/-- `ceil((2*n+1)/(acot(2*n)+ϕ))` -/
def P8553983169457043078.Spec : Prop :=
  ∀ n, P8553983169457043078.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P15654077026454557756

`∑[A081147(n)-1]`
-/

namespace A001961.P15654077026454557756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P15654077026454557756

namespace A001961

/-- `∑[A081147(n)-1]` -/
def P15654077026454557756.Spec : Prop :=
  ∀ n, P15654077026454557756.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P13964579125474886768

`comp[A004976(n)+n]`
-/

namespace A001961.P13964579125474886768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001961.P13964579125474886768

namespace A001961

/-- `comp[A004976(n)+n]` -/
def P13964579125474886768.Spec : Prop :=
  ∀ n, (P13964579125474886768.a n : ℤ) = A001961 (n + 1)

end A001961

/-! ## A001961.P6839702499269021214

`A319433(2*n)+1`
-/

namespace A001961.P6839702499269021214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (2 * n) + 1

end

end A001961.P6839702499269021214

namespace A001961

/-- `A319433(2*n)+1` -/
def P6839702499269021214.Spec : Prop :=
  ∀ n, P6839702499269021214.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P14422510536320962956

`A190511(n+1)-n`
-/

namespace A001961.P14422510536320962956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1) - (n : ℤ)

end

end A001961.P14422510536320962956

namespace A001961

/-- `A190511(n+1)-n` -/
def P14422510536320962956.Spec : Prop :=
  ∀ n, P14422510536320962956.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P11426321389760469044

`∑[2-Δ[A195172(n)]]`
-/

namespace A001961.P11426321389760469044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P11426321389760469044

namespace A001961

/-- `∑[2-Δ[A195172(n)]]` -/
def P11426321389760469044.Spec : Prop :=
  ∀ n, P11426321389760469044.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P11804005174696736233

`∑[3-Δ[A195173(n)]]`
-/

namespace A001961.P11804005174696736233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P11804005174696736233

namespace A001961

/-- `∑[3-Δ[A195173(n)]]` -/
def P11804005174696736233.Spec : Prop :=
  ∀ n, P11804005174696736233.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P5449838257686723253

`∑[A188187(n+1)+1]`
-/

namespace A001961.P5449838257686723253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P5449838257686723253

namespace A001961

/-- `∑[A188187(n+1)+1]` -/
def P5449838257686723253.Spec : Prop :=
  ∀ n, P5449838257686723253.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P11818055623902551973

`∑[A276863(n+1)-2]`
-/

namespace A001961.P11818055623902551973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P11818055623902551973

namespace A001961

/-- `∑[A276863(n+1)-2]` -/
def P11818055623902551973.Spec : Prop :=
  ∀ n, P11818055623902551973.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P8057389824650589067

`∑[A276866(n+1)-3]`
-/

namespace A001961.P8057389824650589067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001961.P8057389824650589067

namespace A001961

/-- `∑[A276866(n+1)-3]` -/
def P8057389824650589067.Spec : Prop :=
  ∀ n, P8057389824650589067.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P15993429893674247778

`comp[A026352(2*n)-1]`
-/

namespace A001961.P15993429893674247778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001961.P15993429893674247778

namespace A001961

/-- `comp[A026352(2*n)-1]` -/
def P15993429893674247778.Spec : Prop :=
  ∀ n, (P15993429893674247778.a n : ℤ) = A001961 (n + 1)

end A001961

/-! ## A001961.P11584597954918101096

`comp[A276854(n)+2*n]`
-/

namespace A001961.P11584597954918101096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001961.P11584597954918101096

namespace A001961

/-- `comp[A276854(n)+2*n]` -/
def P11584597954918101096.Spec : Prop :=
  ∀ n, (P11584597954918101096.a n : ℤ) = A001961 (n + 1)

end A001961

/-! ## A001961.P15324956118573476470

`A022839(n+1)-(n+1)`
-/

namespace A001961.P15324956118573476470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) - (n + 1 : ℤ)

end

end A001961.P15324956118573476470

namespace A001961

/-- `A022839(n+1)-(n+1)` -/
def P15324956118573476470.Spec : Prop :=
  ∀ n, P15324956118573476470.a n = A001961 (n + 1)

end A001961

/-! ## A001961.P15313428272749640491

`A198082(n+1)-(n+2)`
-/

namespace A001961.P15313428272749640491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (n + 1) - (n + 2 : ℤ)

end

end A001961.P15313428272749640491

namespace A001961

/-- `A198082(n+1)-(n+2)` -/
def P15313428272749640491.Spec : Prop :=
  ∀ n, P15313428272749640491.a n = A001961 (n + 1)

end A001961

/-!
# A001962: A Beatty sequence: floor(n * (sqrt(5) + 3)).

The programs for A001962, the canonical program `A001962.P17556668907359697489` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001962 has offset 1).

The definition of A001962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(sqrt(5)+3))` (program `A001962.P17556668907359697489`, by `A001962.P17556668907359697489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001962.P17556668907359697489

`floor((n+1)*(sqrt(5)+3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001962

/-- `floor((n+1)*(sqrt(5)+3))` -/
def P17556668907359697489.Spec : Prop :=
  ∀ n, P17556668907359697489.a n = A001962 (n + 1)

theorem P17556668907359697489.correct : P17556668907359697489.Spec := by
  intro n
  simp only [A001962, Nat.add_sub_cancel]

end A001962

/-! ## A001962.P5973227025376619437

`∑[A081147(n)+3]`
-/

namespace A001962.P5973227025376619437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001962.P5973227025376619437

namespace A001962

/-- `∑[A081147(n)+3]` -/
def P5973227025376619437.Spec : Prop :=
  ∀ n, P5973227025376619437.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P10595838232657832920

`∑[A276866(n+1)+1]`
-/

namespace A001962.P10595838232657832920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001962.P10595838232657832920

namespace A001962

/-- `∑[A276866(n+1)+1]` -/
def P10595838232657832920.Spec : Prop :=
  ∀ n, P10595838232657832920.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P3739392248262573643

`∑[A276863(n+1)+2]`
-/

namespace A001962.P3739392248262573643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001962.P3739392248262573643

namespace A001962

/-- `∑[A276863(n+1)+2]` -/
def P3739392248262573643.Spec : Prop :=
  ∀ n, P3739392248262573643.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P7557967005539141234

`∑[A188187(n+1)+5]`
-/

namespace A001962.P7557967005539141234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001962.P7557967005539141234

namespace A001962

/-- `∑[A188187(n+1)+5]` -/
def P7557967005539141234.Spec : Prop :=
  ∀ n, P7557967005539141234.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P36279098137560367

`A003622(2*(n+1))+1`
-/

namespace A001962.P36279098137560367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * (n + 1)) + 1

end

end A001962.P36279098137560367

namespace A001962

/-- `A003622(2*(n+1))+1` -/
def P36279098137560367.Spec : Prop :=
  ∀ n, P36279098137560367.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P12239083331007860586

`A276854(n+1)+2*(n+1)`
-/

namespace A001962.P12239083331007860586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + (2 * (n + 1) : ℤ)

end

end A001962.P12239083331007860586

namespace A001962

/-- `A276854(n+1)+2*(n+1)` -/
def P12239083331007860586.Spec : Prop :=
  ∀ n, P12239083331007860586.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P5884732795010459374

`A022839(n+1)+3*(n+1)`
-/

namespace A001962.P5884732795010459374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + (3 * (n + 1) : ℤ)

end

end A001962.P5884732795010459374

namespace A001962

/-- `A022839(n+1)+3*(n+1)` -/
def P5884732795010459374.Spec : Prop :=
  ∀ n, P5884732795010459374.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P6122124263764203822

`4*(n+1)+A001961(n+1)`
-/

namespace A001962.P6122124263764203822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A001961 (n + 1)

end

end A001962.P6122124263764203822

namespace A001962

/-- `4*(n+1)+A001961(n+1)` -/
def P6122124263764203822.Spec : Prop :=
  ∀ n, P6122124263764203822.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P2096040823703139139

`A004771(n)-A187341(n+1)`
-/

namespace A001962.P2096040823703139139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A187341 (n + 1)

end

end A001962.P2096040823703139139

namespace A001962

/-- `A004771(n)-A187341(n+1)` -/
def P2096040823703139139.Spec : Prop :=
  ∀ n, P2096040823703139139.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P7238853988455047757

`A017365(n)-A190505(n+1)`
-/

namespace A001962.P7238853988455047757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A190505 (n + 1)

end

end A001962.P7238853988455047757

namespace A001962

/-- `A017365(n)-A190505(n+1)` -/
def P7238853988455047757.Spec : Prop :=
  ∀ n, P7238853988455047757.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P1669467042544549645

`A368649(n+1)+A000201(n+1)`
-/

namespace A001962.P1669467042544549645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368649 (n + 1) + A000201 (n + 1)

end

end A001962.P1669467042544549645

namespace A001962

/-- `A368649(n+1)+A000201(n+1)` -/
def P1669467042544549645.Spec : Prop :=
  ∀ n, P1669467042544549645.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P427191578960236940

`A189378(n+1)-A000201(n+1)`
-/

namespace A001962.P427191578960236940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1) - A000201 (n + 1)

end

end A001962.P427191578960236940

namespace A001962

/-- `A189378(n+1)-A000201(n+1)` -/
def P427191578960236940.Spec : Prop :=
  ∀ n, P427191578960236940.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P8248634981415815829

`A190508(n+1)-A003623(n+1)`
-/

namespace A001962.P8248634981415815829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (n + 1) - A003623 (n + 1)

end

end A001962.P8248634981415815829

namespace A001962

/-- `A190508(n+1)-A003623(n+1)` -/
def P8248634981415815829.Spec : Prop :=
  ∀ n, P8248634981415815829.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P14663514497350104888

`A321371(n+1)-A194152(n+1)`
-/

namespace A001962.P14663514497350104888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321371 (n + 1) - A194152 (n + 1)

end

end A001962.P14663514497350104888

namespace A001962

/-- `A321371(n+1)-A194152(n+1)` -/
def P14663514497350104888.Spec : Prop :=
  ∀ n, P14663514497350104888.a n = A001962 (n + 1)

theorem P14663514497350104888.correct : P14663514497350104888.Spec := by
  intro n
  simp only [A001962, Nat.add_sub_cancel, A001962.P14663514497350104888.a, A001962.P17556668907359697489.a, A194152, A194152.P720401562078837155.a, A321371, A321371.P7279978321700670498.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001962

/-! ## A001962.P10108950485432523709

`A004958(n+1)+n`
-/

namespace A001962.P10108950485432523709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (n + 1) + (n : ℤ)

end

end A001962.P10108950485432523709

namespace A001962

/-- `A004958(n+1)+n` -/
def P10108950485432523709.Spec : Prop :=
  ∀ n, P10108950485432523709.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P3698632465242749140

`A004976(n+1)+1+n`
-/

namespace A001962.P3698632465242749140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1) + 1 + (n : ℤ)

end

end A001962.P3698632465242749140

namespace A001962

/-- `A004976(n+1)+1+n` -/
def P3698632465242749140.Spec : Prop :=
  ∀ n, P3698632465242749140.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P12482016619200306828

`A001950(2*(n+1))`
-/

namespace A001962.P12482016619200306828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

end

end A001962.P12482016619200306828

namespace A001962

/-- `A001950(2*(n+1))` -/
def P12482016619200306828.Spec : Prop :=
  ∀ n, P12482016619200306828.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P12278687335736633915

`A026274(Δ[n²])+2`
-/

namespace A001962.P12278687335736633915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A001962.P12278687335736633915

namespace A001962

/-- `A026274(Δ[n²])+2` -/
def P12278687335736633915.Spec : Prop :=
  ∀ n, P12278687335736633915.a n = A001962 (n + 1)

end A001962

/-! ## A001962.P3000378466880987937

`A004957(2*(n+1))-1`
-/

namespace A001962.P3000378466880987937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (2 * (n + 1)) - 1

end

end A001962.P3000378466880987937

namespace A001962

/-- `A004957(2*(n+1))-1` -/
def P3000378466880987937.Spec : Prop :=
  ∀ n, P3000378466880987937.a n = A001962 (n + 1)

end A001962

/-!
# A001963: Winning positions in the u-pile of the 4-Wythoff game with i=1.

The programs for A001963, the canonical program `A001963.P5902665064407486757` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001963 has offset 0).

The definition of A001963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001963.P5902665064407486757

`floor((n+1/4)*(sqrt(5)-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001963

/-- `floor((n+1/4)*(sqrt(5)-1))` -/
def P5902665064407486757.Spec : Prop :=
  ∀ n, P5902665064407486757.a n = A001963 n

theorem P5902665064407486757.correct : P5902665064407486757.Spec := by
  intro n
  simp only [A001963]

end A001963

/-! ## A001963.P12772375440048921194

`comp[A001968(n)]`
-/

namespace A001963.P12772375440048921194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001968 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001963.P12772375440048921194

namespace A001963

/-- `comp[A001968(n)]` -/
def P12772375440048921194.Spec : Prop :=
  ∀ n, (P12772375440048921194.a n : ℤ) = A001963 n

end A001963

/-! ## A001963.P3052254317632252113

`comp[A188222(record[xor(3, n)])]`
-/

namespace A001963.P3052254317632252113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001963.P3052254317632252113

namespace A001963

/-- `comp[A188222(record[xor(3, n)])]` -/
def P3052254317632252113.Spec : Prop :=
  ∀ n, (P3052254317632252113.a n : ℤ) = A001963 n

end A001963

/-! ## A001963.P4503479301971499998

`A001964(n)-(4*n+1)`
-/

namespace A001963.P4503479301971499998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 n - (4 * n + 1 : ℤ)

end

end A001963.P4503479301971499998

namespace A001963

/-- `A001964(n)-(4*n+1)` -/
def P4503479301971499998.Spec : Prop :=
  ∀ n, P4503479301971499998.a n = A001963 n

end A001963

/-! ## A001963.P12104764010393766922

`A001964(n)%A016813(n)`
-/

namespace A001963.P12104764010393766922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001964 n) (A016813 n)

end

end A001963.P12104764010393766922

namespace A001963

/-- `A001964(n)%A016813(n)` -/
def P12104764010393766922.Spec : Prop :=
  ∀ n, P12104764010393766922.a n = A001963 n

end A001963

/-! ## A001963.P9774187030370733818

`2-(A004767(n)-A001964(n))`
-/

namespace A001963.P9774187030370733818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A004767 n - A001964 n)

end

end A001963.P9774187030370733818

namespace A001963

/-- `2-(A004767(n)-A001964(n))` -/
def P9774187030370733818.Spec : Prop :=
  ∀ n, P9774187030370733818.a n = A001963 n

end A001963

/-! ## A001963.P9952154669048160142

`eq[A006340(n*A085002(n+1)), A006340(n)]`
-/

namespace A001963.P9952154669048160142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 ((n : ℤ) * A085002 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001963.P9952154669048160142

namespace A001963

/-- `eq[A006340(n*A085002(n+1)), A006340(n)]` -/
def P9952154669048160142.Spec : Prop :=
  ∀ n, (P9952154669048160142.a n : ℤ) = A001963 n

end A001963

/-! ## A001963.P12610971007399875066

`A382116(2*n)-2*n`
-/

namespace A001963.P12610971007399875066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (2 * n) - (2 * n : ℤ)

end

end A001963.P12610971007399875066

namespace A001963

/-- `A382116(2*n)-2*n` -/
def P12610971007399875066.Spec : Prop :=
  ∀ n, P12610971007399875066.a n = A001963 n

end A001963

/-! ## A001963.P6294970376025886063

`A004526(A001965(2*n))`
-/

namespace A001963.P6294970376025886063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001965 (2 * n)).toNat

end

end A001963.P6294970376025886063

namespace A001963

/-- `A004526(A001965(2*n))` -/
def P6294970376025886063.Spec : Prop :=
  ∀ n, P6294970376025886063.a n = A001963 n

end A001963

/-! ## A001963.P12413253414901169870

`A004526(A005206(4*n))`
-/

namespace A001963.P12413253414901169870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005206 (4 * n)).toNat

end

end A001963.P12413253414901169870

namespace A001963

/-- `A004526(A005206(4*n))` -/
def P12413253414901169870.Spec : Prop :=
  ∀ n, P12413253414901169870.a n = A001963 n

end A001963

/-! ## A001963.P12513321009394947492

`A007067(A007067(2*n))-A001965(A007067(2*n))`
-/

namespace A001963.P12513321009394947492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007067 (2 * n)).toNat - A001965 (A007067 (2 * n)).toNat

end

end A001963.P12513321009394947492

namespace A001963

/-- `A007067(A007067(2*n))-A001965(A007067(2*n))` -/
def P12513321009394947492.Spec : Prop :=
  ∀ n, P12513321009394947492.a n = A001963 n

end A001963

/-! ## A001963.P18228403431360976163

`A060144(A184516(2*n+1)+A060144(2*n))`
-/

namespace A001963.P18228403431360976163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A184516 (2 * n + 1) + A060144 (2 * n)).toNat

end

end A001963.P18228403431360976163

namespace A001963

/-- `A060144(A184516(2*n+1)+A060144(2*n))` -/
def P18228403431360976163.Spec : Prop :=
  ∀ n, P18228403431360976163.a n = A001963 n

end A001963

/-! ## A001963.P5599720279665488000

`A000201(A000201(2*n+1))-A184516(A000201(2*n+1))`
-/

namespace A001963.P5599720279665488000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (2 * n + 1)).toNat - A184516 (A000201 (2 * n + 1)).toNat

end

end A001963.P5599720279665488000

namespace A001963

/-- `A000201(A000201(2*n+1))-A184516(A000201(2*n+1))` -/
def P5599720279665488000.Spec : Prop :=
  ∀ n, P5599720279665488000.a n = A001963 n

end A001963

/-! ## A001963.P11193662779519759490

`A002264(A005206(2*n)+A005206(4*n))`
-/

namespace A001963.P11193662779519759490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005206 (2 * n) + A005206 (4 * n)).toNat

end

end A001963.P11193662779519759490

namespace A001963

/-- `A002264(A005206(2*n)+A005206(4*n))` -/
def P11193662779519759490.Spec : Prop :=
  ∀ n, P11193662779519759490.a n = A001963 n

end A001963

/-! ## A001963.P2301985185875203975

`A004526(A005378(4*n))`
-/

namespace A001963.P2301985185875203975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005378 (4 * n)).toNat

end

end A001963.P2301985185875203975

namespace A001963

/-- `A004526(A005378(4*n))` -/
def P2301985185875203975.Spec : Prop :=
  ∀ n, P2301985185875203975.a n = A001963 n

end A001963

/-! ## A001963.P18144342206671196357

`A110654(A005378(4*n)-1)`
-/

namespace A001963.P18144342206671196357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005378 (4 * n) - 1).toNat

end

end A001963.P18144342206671196357

namespace A001963

/-- `A110654(A005378(4*n)-1)` -/
def P18144342206671196357.Spec : Prop :=
  ∀ n, P18144342206671196357.a n = A001963 n

end A001963

/-! ## A001963.P10227331510497391609

`record[n-A212831(A005206(2*n))]`
-/

namespace A001963.P10227331510497391609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A212831 (A005206 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001963.P10227331510497391609

namespace A001963

/-- `record[n-A212831(A005206(2*n))]` -/
def P10227331510497391609.Spec : Prop :=
  ∀ n, P10227331510497391609.a n = A001963 n

end A001963

/-! ## A001963.P3873211258207499113

`A000201(4*n+1)-A007064(2*n+1)`
-/

namespace A001963.P3873211258207499113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (4 * n + 1) - A007064 (2 * n + 1)

end

end A001963.P3873211258207499113

namespace A001963

/-- `A000201(4*n+1)-A007064(2*n+1)` -/
def P3873211258207499113.Spec : Prop :=
  ∀ n, P3873211258207499113.a n = A001963 n

end A001963

/-! ## A001963.P6137642868020020694

`A022342(4*n+1)+1-A007064(2*n+1)`
-/

namespace A001963.P6137642868020020694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (4 * n + 1) + (1 - A007064 (2 * n + 1))

end

end A001963.P6137642868020020694

namespace A001963

/-- `A022342(4*n+1)+1-A007064(2*n+1)` -/
def P6137642868020020694.Spec : Prop :=
  ∀ n, P6137642868020020694.a n = A001963 n

end A001963

/-! ## A001963.P14863753219304438963

`A060144(A060144(2*n)+A019446(4*n+1))`
-/

namespace A001963.P14863753219304438963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A060144 (2 * n) + A019446 (4 * n + 1)).toNat

end

end A001963.P14863753219304438963

namespace A001963

/-- `A060144(A060144(2*n)+A019446(4*n+1))` -/
def P14863753219304438963.Spec : Prop :=
  ∀ n, P14863753219304438963.a n = A001963 n

end A001963

/-!
# A001964: v-pile positions of the 4-Wythoff game with i=1.

The programs for A001964, the canonical program `A001964.P2387753669320337892` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001964 has offset 0).

The definition of A001964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001964.P2387753669320337892

`floor((n+1/4)*(3+sqrt(5)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001964

/-- `floor((n+1/4)*(3+sqrt(5)))` -/
def P2387753669320337892.Spec : Prop :=
  ∀ n, P2387753669320337892.a n = A001964 n

theorem P2387753669320337892.correct : P2387753669320337892.Spec := by
  intro n
  simp only [A001964]

end A001964

/-! ## A001964.P6717308571842787591

`4*n+A001963(n)+1`
-/

namespace A001964.P6717308571842787591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A001963 n + 1)

end

end A001964.P6717308571842787591

namespace A001964

/-- `4*n+A001963(n)+1` -/
def P6717308571842787591.Spec : Prop :=
  ∀ n, P6717308571842787591.a n = A001964 n

end A001964

/-! ## A001964.P3874443241713370381

`A016813(n)+A001963(n)`
-/

namespace A001964.P3874443241713370381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001963 n

end

end A001964.P3874443241713370381

namespace A001964

/-- `A016813(n)+A001963(n)` -/
def P3874443241713370381.Spec : Prop :=
  ∀ n, P3874443241713370381.a n = A001964 n

end A001964

/-! ## A001964.P12705142464657169716

`A016813(n)+comp[A001968(n)]`
-/

namespace A001964.P12705142464657169716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001968 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A001964.P12705142464657169716

namespace A001964

/-- `A016813(n)+comp[A001968(n)]` -/
def P12705142464657169716.Spec : Prop :=
  ∀ n, P12705142464657169716.a n = A001964 n

end A001964

/-! ## A001964.P10355586965994094173

`A001963(n)+A016777(n)+n`
-/

namespace A001964.P10355586965994094173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 n + (A016777 n + (n : ℤ))

end

end A001964.P10355586965994094173

namespace A001964

/-- `A001963(n)+A016777(n)+n` -/
def P10355586965994094173.Spec : Prop :=
  ∀ n, P10355586965994094173.a n = A001964 n

end A001964

/-! ## A001964.P3257517924768668132

`A382116(2*n)+2*n+1`
-/

namespace A001964.P3257517924768668132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (2 * n) + (2 * n + 1 : ℤ)

end

end A001964.P3257517924768668132

namespace A001964

/-- `A382116(2*n)+2*n+1` -/
def P3257517924768668132.Spec : Prop :=
  ∀ n, P3257517924768668132.a n = A001964 n

end A001964

/-! ## A001964.P14743946019300471706

`A001966(2*n)-A007064(2*n+1)`
-/

namespace A001964.P14743946019300471706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 (2 * n) - A007064 (2 * n + 1)

end

end A001964.P14743946019300471706

namespace A001964

/-- `A001966(2*n)-A007064(2*n+1)` -/
def P14743946019300471706.Spec : Prop :=
  ∀ n, P14743946019300471706.a n = A001964 n

end A001964

/-! ## A001964.P10035443110832104215

`A003622(4*n+1)+1-A007064(2*n+1)`
-/

namespace A001964.P10035443110832104215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (4 * n + 1) + (1 - A007064 (2 * n + 1))

end

end A001964.P10035443110832104215

namespace A001964

/-- `A003622(4*n+1)+1-A007064(2*n+1)` -/
def P10035443110832104215.Spec : Prop :=
  ∀ n, P10035443110832104215.a n = A001964 n

end A001964

/-! ## A001964.P15696950082596782294

`A000201(A382116(2*n)+1)`
-/

namespace A001964.P15696950082596782294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A382116 (2 * n) + 1).toNat

end

end A001964.P15696950082596782294

namespace A001964

/-- `A000201(A382116(2*n)+1)` -/
def P15696950082596782294.Spec : Prop :=
  ∀ n, P15696950082596782294.a n = A001964 n

end A001964

/-! ## A001964.P10128930539496849448

`A026351(A026351(2*n))-A190427(A026351(2*n))`
-/

namespace A001964.P10128930539496849448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026351 (2 * n)).toNat - A190427 (A026351 (2 * n)).toNat

end

end A001964.P10128930539496849448

namespace A001964

/-- `A026351(A026351(2*n))-A190427(A026351(2*n))` -/
def P10128930539496849448.Spec : Prop :=
  ∀ n, P10128930539496849448.a n = A001964 n

end A001964

/-! ## A001964.P3311201740045206241

`A188222(3*n+n+1)`
-/

namespace A001964.P3311201740045206241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (3 * n + (n + 1))

end

end A001964.P3311201740045206241

namespace A001964

/-- `A188222(3*n+n+1)` -/
def P3311201740045206241.Spec : Prop :=
  ∀ n, P3311201740045206241.a n = A001964 n

end A001964

/-! ## A001964.P16687711808742249000

`round((A001950(3*n+n+1)-1)/2)`
-/

namespace A001964.P16687711808742249000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001950 (3 * n + (n + 1)) - 1 : ℚ) / 2)

end

end A001964.P16687711808742249000

namespace A001964

/-- `round((A001950(3*n+n+1)-1)/2)` -/
def P16687711808742249000.Spec : Prop :=
  ∀ n, P16687711808742249000.a n = A001964 n

end A001964

/-! ## A001964.P8712258042708737822

`comp[A001967(n)]`
-/

namespace A001964.P8712258042708737822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001964.P8712258042708737822

namespace A001964

/-- `comp[A001967(n)]` -/
def P8712258042708737822.Spec : Prop :=
  ∀ n, (P8712258042708737822.a n : ℤ) = A001964 n

end A001964

/-! ## A001964.P17283459658942819024

`A005206(A035487(2*n+1)-1)`
-/

namespace A001964.P17283459658942819024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A035487 (2 * n + 1) - 1).toNat

end

end A001964.P17283459658942819024

namespace A001964

/-- `A005206(A035487(2*n+1)-1)` -/
def P17283459658942819024.Spec : Prop :=
  ∀ n, P17283459658942819024.a n = A001964 n

end A001964

/-! ## A001964.P778032661249557896

`A184738(A382116(2*n)+n+1)`
-/

namespace A001964.P778032661249557896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184738 (A382116 (2 * n) + (n + 1 : ℤ)).toNat

end

end A001964.P778032661249557896

namespace A001964

/-- `A184738(A382116(2*n)+n+1)` -/
def P778032661249557896.Spec : Prop :=
  ∀ n, P778032661249557896.a n = A001964 n

end A001964

/-! ## A001964.P499466608812030962

`A005206(A001966(2*n)-(2*n+1))`
-/

namespace A001964.P499466608812030962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A001966 (2 * n) - (2 * n + 1 : ℤ)).toNat

end

end A001964.P499466608812030962

namespace A001964

/-- `A005206(A001966(2*n)-(2*n+1))` -/
def P499466608812030962.Spec : Prop :=
  ∀ n, P499466608812030962.a n = A001964 n

end A001964

/-! ## A001964.P8852152145803389746

`A001963(A016777(n)+A001963(n))`
-/

namespace A001964.P8852152145803389746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 (A016777 n + A001963 n).toNat

end

end A001964.P8852152145803389746

namespace A001964

/-- `A001963(A016777(n)+A001963(n))` -/
def P8852152145803389746.Spec : Prop :=
  ∀ n, P8852152145803389746.a n = A001964 n

end A001964

/-! ## A001964.P14949176914784139959

`A001963(A001963(n)-(n-A016813(n)))`
-/

namespace A001964.P14949176914784139959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 (A001963 n - ((n : ℤ) - A016813 n)).toNat

end

end A001964.P14949176914784139959

namespace A001964

/-- `A001963(A001963(n)-(n-A016813(n)))` -/
def P14949176914784139959.Spec : Prop :=
  ∀ n, P14949176914784139959.a n = A001964 n

end A001964

/-! ## A001964.P7679669184769227714

`filter[A001963(n), A334414(#)]`
-/

namespace A001964.P7679669184769227714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334414 (f1 j).toNat = 1) n)

end

end A001964.P7679669184769227714

namespace A001964

/-- `filter[A001963(n), A334414(#)]` -/
def P7679669184769227714.Spec : Prop :=
  ∀ n, P7679669184769227714.a n = A001964 n

end A001964

/-! ## A001964.P4793124170878508319

`filter[A283766(n+1), A334414(#)]`
-/

namespace A001964.P4793124170878508319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334414 (f1 j).toNat = 1) n)

end

end A001964.P4793124170878508319

namespace A001964

/-- `filter[A283766(n+1), A334414(#)]` -/
def P4793124170878508319.Spec : Prop :=
  ∀ n, P4793124170878508319.a n = A001964 n

end A001964

/-!
# A001965: u-pile count for the 4-Wythoff game with i=2.

The programs for A001965, the canonical program `A001965.P8161936400494253645` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001965 has offset 0).

The definition of A001965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001965.P12460884901370247896

`floor((n+1/2)*(sqrt(5)-1))`
-/

namespace A001965.P12460884901370247896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 2 : ℝ) * (Real.sqrt (5 : ℝ) - 1)⌋

end

end A001965.P12460884901370247896

namespace A001965

/-- `floor((n+1/2)*(sqrt(5)-1))` -/
def P12460884901370247896.Spec : Prop :=
  ∀ n, P12460884901370247896.a n = A001965 n

end A001965

/-! ## A001965.P8161936400494253645

`A005206(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001965

/-- `A005206(2*n)` -/
def P8161936400494253645.Spec : Prop :=
  ∀ n, P8161936400494253645.a n = A001965 n

theorem P8161936400494253645.correct : P8161936400494253645.Spec := by
  intro n
  simp only [A001965]

end A001965

/-! ## A001965.P1351000806676904307

`A001966(n)-4*n-2`
-/

namespace A001965.P1351000806676904307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 n - (4 * n : ℤ) - 2

end

end A001965.P1351000806676904307

namespace A001965

/-- `A001966(n)-4*n-2` -/
def P1351000806676904307.Spec : Prop :=
  ∀ n, P1351000806676904307.a n = A001965 n

theorem P1351000806676904307.correct : P1351000806676904307.Spec := by
  intro n
  simp only [A001965, Nat.add_sub_cancel, A001965.P1351000806676904307.a, A001965.P8161936400494253645.a, A001966, A001966.P7022639990780230216.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001965

/-! ## A001965.P14355995066087270068

`ceil(or(1, 2*n)/ϕ)-1`
-/

namespace A001965.P14355995066087270068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio⌉ - 1

end

end A001965.P14355995066087270068

namespace A001965

/-- `ceil(or(1, 2*n)/ϕ)-1` -/
def P14355995066087270068.Spec : Prop :=
  ∀ n, P14355995066087270068.a n = A001965 n

end A001965

/-! ## A001965.P169602637015482477

`ceil(xor(1, 2*n)/ϕ)-1`
-/

namespace A001965.P169602637015482477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) / Real.goldenRatio⌉ - 1

end

end A001965.P169602637015482477

namespace A001965

/-- `ceil(xor(1, 2*n)/ϕ)-1` -/
def P169602637015482477.Spec : Prop :=
  ∀ n, P169602637015482477.a n = A001965 n

end A001965

/-! ## A001965.P12205002893155076690

`-ceil(xor(2*n, -1)/ϕ)`
-/

namespace A001965.P12205002893155076690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.xor (2 * n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

end

end A001965.P12205002893155076690

namespace A001965

/-- `-ceil(xor(2*n, -1)/ϕ)` -/
def P12205002893155076690.Spec : Prop :=
  ∀ n, P12205002893155076690.a n = A001965 n

end A001965

/-! ## A001965.P7586898700842940786

`record[floor((n+1)/ϕ)-n%2]`
-/

namespace A001965.P7586898700842940786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001965.P7586898700842940786

namespace A001965

/-- `record[floor((n+1)/ϕ)-n%2]` -/
def P7586898700842940786.Spec : Prop :=
  ∀ n, P7586898700842940786.a n = A001965 n

end A001965

/-! ## A001965.P12608438323603850790

`ceil(2*n/(acot(2*n)+ϕ))`
-/

namespace A001965.P12608438323603850790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / (SequenceMachineLib.acot (2 * n : ℝ) + Real.goldenRatio)⌉

end

end A001965.P12608438323603850790

namespace A001965

/-- `ceil(2*n/(acot(2*n)+ϕ))` -/
def P12608438323603850790.Spec : Prop :=
  ∀ n, P12608438323603850790.a n = A001965 n

end A001965

/-! ## A001965.P18152469480268342012

`-ceil(or(1, -(2*n+1))/ϕ)`
-/

namespace A001965.P18152469480268342012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor 1 (-(2 * n + 1 : ℤ)) : ℝ) / Real.goldenRatio⌉

end

end A001965.P18152469480268342012

namespace A001965

/-- `-ceil(or(1, -(2*n+1))/ϕ)` -/
def P18152469480268342012.Spec : Prop :=
  ∀ n, P18152469480268342012.a n = A001965 n

end A001965

/-! ## A001965.P16454348458436081547

`xor(-1, floor(-((2*n+1)/ϕ)))`
-/

namespace A001965.P16454348458436081547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ⌊-((2 * n + 1 : ℝ) / Real.goldenRatio)⌋

end

end A001965.P16454348458436081547

namespace A001965

/-- `xor(-1, floor(-((2*n+1)/ϕ)))` -/
def P16454348458436081547.Spec : Prop :=
  ∀ n, P16454348458436081547.a n = A001965 n

end A001965

/-! ## A001965.P17267052367763099372

`∪[floor((2*n+1)/ϕ), n^3]`
-/

namespace A001965.P17267052367763099372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A001965.P17267052367763099372

namespace A001965

/-- `∪[floor((2*n+1)/ϕ), n^3]` -/
def P17267052367763099372.Spec : Prop :=
  ∀ n, (P17267052367763099372.a n : ℤ) = A001965 n

end A001965

/-! ## A001965.P9274781491429398905

`floor((2*n+1)/ϕ)%(n+1)²`
-/

namespace A001965.P9274781491429398905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ ((n + 1) ^ 2 : ℤ)

end

end A001965.P9274781491429398905

namespace A001965

/-- `floor((2*n+1)/ϕ)%(n+1)²` -/
def P9274781491429398905.Spec : Prop :=
  ∀ n, P9274781491429398905.a n = A001965 n

end A001965

/-! ## A001965.P2916209535243526497

`floor((2*n+1)/ϕ)+and(2, n²)`
-/

namespace A001965.P2916209535243526497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ + (Nat.land 2 (n ^ 2) : ℤ)

end

end A001965.P2916209535243526497

namespace A001965

/-- `floor((2*n+1)/ϕ)+and(2, n²)` -/
def P2916209535243526497.Spec : Prop :=
  ∀ n, P2916209535243526497.a n = A001965 n

end A001965

/-! ## A001965.P3046405452269410566

`lcm(ϕ-ϕ², floor((2*n+1)/ϕ))`
-/

namespace A001965.P3046405452269410566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋

end

end A001965.P3046405452269410566

namespace A001965

/-- `lcm(ϕ-ϕ², floor((2*n+1)/ϕ))` -/
def P3046405452269410566.Spec : Prop :=
  ∀ n, (P3046405452269410566.a n : ℤ) = A001965 n

end A001965

/-! ## A001965.P3852296201838766130

`C(floor((2*n+1)/ϕ), ϕ²-ϕ)`
-/

namespace A001965.P3852296201838766130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋.toNat (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A001965.P3852296201838766130

namespace A001965

/-- `C(floor((2*n+1)/ϕ), ϕ²-ϕ)` -/
def P3852296201838766130.Spec : Prop :=
  ∀ n, (P3852296201838766130.a n : ℤ) = A001965 n

end A001965

/-! ## A001965.P13362442731407292405

`floor((2*n+1)/ϕ)+C(2, n+3)`
-/

namespace A001965.P13362442731407292405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ + (Nat.choose 2 (n + 3) : ℤ)

end

end A001965.P13362442731407292405

namespace A001965

/-- `floor((2*n+1)/ϕ)+C(2, n+3)` -/
def P13362442731407292405.Spec : Prop :=
  ∀ n, P13362442731407292405.a n = A001965 n

end A001965

/-! ## A001965.P11028681827228435064

`ceil(C(2*n+1, 2*n)/ϕ)-1`
-/

namespace A001965.P11028681827228435064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio⌉ - 1

end

end A001965.P11028681827228435064

namespace A001965

/-- `ceil(C(2*n+1, 2*n)/ϕ)-1` -/
def P11028681827228435064.Spec : Prop :=
  ∀ n, P11028681827228435064.a n = A001965 n

end A001965

/-! ## A001965.P10243722580281635836

`floor(ϕ*or(1, 2*n))-(2*n+1)`
-/

namespace A001965.P10243722580281635836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌋ - (2 * n + 1 : ℤ)

end

end A001965.P10243722580281635836

namespace A001965

/-- `floor(ϕ*or(1, 2*n))-(2*n+1)` -/
def P10243722580281635836.Spec : Prop :=
  ∀ n, P10243722580281635836.a n = A001965 n

end A001965

/-! ## A001965.P14757504214187424469

`floor(ϕ*xor(1, 2*n))-(2*n+1)`
-/

namespace A001965.P14757504214187424469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌋ - (2 * n + 1 : ℤ)

end

end A001965.P14757504214187424469

namespace A001965

/-- `floor(ϕ*xor(1, 2*n))-(2*n+1)` -/
def P14757504214187424469.Spec : Prop :=
  ∀ n, P14757504214187424469.a n = A001965 n

end A001965

/-!
# A001966: v-pile counts for the 4-Wythoff game with i=2.

The programs for A001966, the canonical program `A001966.P7022639990780230216` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001966 has offset 0).

The definition of A001966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001966.P11049144933576717331

`floor((n+1/2)*(sqrt(5)+3))`
-/

namespace A001966.P11049144933576717331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 2 : ℝ) * (Real.sqrt (5 : ℝ) + 3)⌋

end

end A001966.P11049144933576717331

namespace A001966

/-- `floor((n+1/2)*(sqrt(5)+3))` -/
def P11049144933576717331.Spec : Prop :=
  ∀ n, P11049144933576717331.a n = A001966 n

end A001966

/-! ## A001966.P7022639990780230216

`A001965(n)+4*n+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001966

/-- `A001965(n)+4*n+2` -/
def P7022639990780230216.Spec : Prop :=
  ∀ n, P7022639990780230216.a n = A001966 n

theorem P7022639990780230216.correct : P7022639990780230216.Spec := by
  intro n
  simp only [A001966]

end A001966

/-! ## A001966.P11521804822155234757

`A001950(2*n+1)`
-/

namespace A001966.P11521804822155234757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * n + 1)

end

end A001966.P11521804822155234757

namespace A001966

/-- `A001950(2*n+1)` -/
def P11521804822155234757.Spec : Prop :=
  ∀ n, P11521804822155234757.a n = A001966 n

end A001966

/-! ## A001966.P9044024635465952241

`ceil(2*n+ϕ*or(1, 2*n))`
-/

namespace A001966.P9044024635465952241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌉

end

end A001966.P9044024635465952241

namespace A001966

/-- `ceil(2*n+ϕ*or(1, 2*n))` -/
def P9044024635465952241.Spec : Prop :=
  ∀ n, P9044024635465952241.a n = A001966 n

end A001966

/-! ## A001966.P11573873237234627673

`ceil(2*n+ϕ*xor(1, 2*n))`
-/

namespace A001966.P11573873237234627673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌉

end

end A001966.P11573873237234627673

namespace A001966

/-- `ceil(2*n+ϕ*xor(1, 2*n))` -/
def P11573873237234627673.Spec : Prop :=
  ∀ n, P11573873237234627673.a n = A001966 n

end A001966

/-! ## A001966.P4856201400223699944

`ceil(lcm(2, 2*n)+ϕ*(2*n+1))`
-/

namespace A001966.P4856201400223699944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) + Real.goldenRatio * (2 * n + 1 : ℝ)⌉

end

end A001966.P4856201400223699944

namespace A001966

/-- `ceil(lcm(2, 2*n)+ϕ*(2*n+1))` -/
def P4856201400223699944.Spec : Prop :=
  ∀ n, P4856201400223699944.a n = A001966 n

end A001966

/-! ## A001966.P14827983210976849895

`floor(ϕ*or(1, 2*n))+2*n+1`
-/

namespace A001966.P14827983210976849895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌋ + (2 * n + 1 : ℤ)

end

end A001966.P14827983210976849895

namespace A001966

/-- `floor(ϕ*or(1, 2*n))+2*n+1` -/
def P14827983210976849895.Spec : Prop :=
  ∀ n, P14827983210976849895.a n = A001966 n

end A001966

/-! ## A001966.P179656098011582686

`floor(ϕ*xor(1, 2*n))+2*n+1`
-/

namespace A001966.P179656098011582686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌋ + (2 * n + 1 : ℤ)

end

end A001966.P179656098011582686

namespace A001966

/-- `floor(ϕ*xor(1, 2*n))+2*n+1` -/
def P179656098011582686.Spec : Prop :=
  ∀ n, P179656098011582686.a n = A001966 n

end A001966

/-! ## A001966.P17022687031621366838

`floor((2*n+1)*ϕ²)+C(2, n+3)`
-/

namespace A001966.P17022687031621366838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ + (Nat.choose 2 (n + 3) : ℤ)

end

end A001966.P17022687031621366838

namespace A001966

/-- `floor((2*n+1)*ϕ²)+C(2, n+3)` -/
def P17022687031621366838.Spec : Prop :=
  ∀ n, P17022687031621366838.a n = A001966 n

end A001966

/-! ## A001966.P36289064215178942

`floor((2*n+1)*ϕ²)+and(1, 2*n)`
-/

namespace A001966.P36289064215178942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ + (Nat.land 1 (2 * n) : ℤ)

end

end A001966.P36289064215178942

namespace A001966

/-- `floor((2*n+1)*ϕ²)+and(1, 2*n)` -/
def P36289064215178942.Spec : Prop :=
  ∀ n, P36289064215178942.a n = A001966 n

end A001966

/-! ## A001966.P10650944712430129921

`gcd(n, n+1)*floor((2*n+1)*ϕ²)`
-/

namespace A001966.P10650944712430129921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ⌊(2 * n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A001966.P10650944712430129921

namespace A001966

/-- `gcd(n, n+1)*floor((2*n+1)*ϕ²)` -/
def P10650944712430129921.Spec : Prop :=
  ∀ n, P10650944712430129921.a n = A001966 n

end A001966

/-! ## A001966.P1590094177902731570

`ceil(2*n+ϕ*C(2*n+1, 2*n))`
-/

namespace A001966.P1590094177902731570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌉

end

end A001966.P1590094177902731570

namespace A001966

/-- `ceil(2*n+ϕ*C(2*n+1, 2*n))` -/
def P1590094177902731570.Spec : Prop :=
  ∀ n, P1590094177902731570.a n = A001966 n

end A001966

/-! ## A001966.P15300990375514327449

`floor(ϕ*C(2*n+1, 2*n))+2*n+1`
-/

namespace A001966.P15300990375514327449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌋ + (2 * n + 1 : ℤ)

end

end A001966.P15300990375514327449

namespace A001966

/-- `floor(ϕ*C(2*n+1, 2*n))+2*n+1` -/
def P15300990375514327449.Spec : Prop :=
  ∀ n, P15300990375514327449.a n = A001966 n

end A001966

/-! ## A001966.P1828772688953147777

`ceil(and(2*n+1, 2*n)+ϕ*(2*n+1))`
-/

namespace A001966.P1828772688953147777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) + Real.goldenRatio * (2 * n + 1 : ℝ)⌉

end

end A001966.P1828772688953147777

namespace A001966

/-- `ceil(and(2*n+1, 2*n)+ϕ*(2*n+1))` -/
def P1828772688953147777.Spec : Prop :=
  ∀ n, P1828772688953147777.a n = A001966 n

end A001966

/-! ## A001966.P9437491940000851164

`A184517(n+1)-1`
-/

namespace A001966.P9437491940000851164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184517 (n + 1) - 1

end

end A001966.P9437491940000851164

namespace A001966

/-- `A184517(n+1)-1` -/
def P9437491940000851164.Spec : Prop :=
  ∀ n, P9437491940000851164.a n = A001966 n

end A001966

/-! ## A001966.P5690547333786094038

`A035487(n+1)+n`
-/

namespace A001966.P5690547333786094038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) + (n : ℤ)

end

end A001966.P5690547333786094038

namespace A001966

/-- `A035487(n+1)+n` -/
def P5690547333786094038.Spec : Prop :=
  ∀ n, P5690547333786094038.a n = A001966 n

end A001966

/-! ## A001966.P8456394377583715903

`A003622(Δ[n²])+1`
-/

namespace A001966.P8456394377583715903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A001966.P8456394377583715903

namespace A001966

/-- `A003622(Δ[n²])+1` -/
def P8456394377583715903.Spec : Prop :=
  ∀ n, P8456394377583715903.a n = A001966 n

end A001966

/-! ## A001966.P17989378205277967785

`A342279(n)+Δ[n²]`
-/

namespace A001966.P17989378205277967785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342279 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001966.P17989378205277967785

namespace A001966

/-- `A342279(n)+Δ[n²]` -/
def P17989378205277967785.Spec : Prop :=
  ∀ n, P17989378205277967785.a n = A001966 n

end A001966

/-! ## A001966.P10184261093081143581

`A016825(n)+A001965(n)`
-/

namespace A001966.P10184261093081143581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A001965 n

end

end A001966.P10184261093081143581

namespace A001966

/-- `A016825(n)+A001965(n)` -/
def P10184261093081143581.Spec : Prop :=
  ∀ n, P10184261093081143581.a n = A001966 n

theorem P10184261093081143581.correct : P10184261093081143581.Spec := by
  intro n
  simp only [A001966, Nat.add_sub_cancel, A001966.P10184261093081143581.a, A001966.P7022639990780230216.a, A001965, A001965.P8161936400494253645.a, A016825, A016825.P4712696052905976233.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001966

/-! ## A001966.P4174829521960669936

`A184516(n+1)+A016813(n)`
-/

namespace A001966.P4174829521960669936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1) + A016813 n

end

end A001966.P4174829521960669936

namespace A001966

/-- `A184516(n+1)+A016813(n)` -/
def P4174829521960669936.Spec : Prop :=
  ∀ n, P4174829521960669936.a n = A001966 n

end A001966

/-!
# A001967: u-pile positions for the 4-Wythoff game with i=3.

The programs for A001967, the canonical program `A001967.P8135432219699807016` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001967 has offset 0).

The definition of A001967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001967.P8135432219699807016

`floor((n+3/4)*(sqrt(5)-1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001967

/-- `floor((n+3/4)*(sqrt(5)-1))` -/
def P8135432219699807016.Spec : Prop :=
  ∀ n, P8135432219699807016.a n = A001967 n

theorem P8135432219699807016.correct : P8135432219699807016.Spec := by
  intro n
  simp only [A001967]

end A001967

/-! ## A001967.P12922478579064048210

`comp[A001964(n)]`
-/

namespace A001967.P12922478579064048210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001967.P12922478579064048210

namespace A001967

/-- `comp[A001964(n)]` -/
def P12922478579064048210.Spec : Prop :=
  ∀ n, (P12922478579064048210.a n : ℤ) = A001967 n

end A001967

/-! ## A001967.P11297340309510077773

`A001968(n)-(4*n+3)`
-/

namespace A001967.P11297340309510077773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001968 n - (4 * n + 3 : ℤ)

end

end A001967.P11297340309510077773

namespace A001967

/-- `A001968(n)-(4*n+3)` -/
def P11297340309510077773.Spec : Prop :=
  ∀ n, P11297340309510077773.a n = A001967 n

end A001967

/-! ## A001967.P13477172846009684670

`A001968(n)%A004767(n)`
-/

namespace A001967.P13477172846009684670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001968 n) (A004767 n)

end

end A001967.P13477172846009684670

namespace A001967

/-- `A001968(n)%A004767(n)` -/
def P13477172846009684670.Spec : Prop :=
  ∀ n, P13477172846009684670.a n = A001967 n

end A001967

/-! ## A001967.P17035931240392796460

`comp[A016813(n)+A001963(n)]`
-/

namespace A001967.P17035931240392796460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001963 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001967.P17035931240392796460

namespace A001967

/-- `comp[A016813(n)+A001963(n)]` -/
def P17035931240392796460.Spec : Prop :=
  ∀ n, (P17035931240392796460.a n : ℤ) = A001967 n

end A001967

/-! ## A001967.P14643400042533834629

`lt[char[A001964(n)]*A001316(n), 1]`
-/

namespace A001967.P14643400042533834629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001316 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A001967.P14643400042533834629

namespace A001967

/-- `lt[char[A001964(n)]*A001316(n), 1]` -/
def P14643400042533834629.Spec : Prop :=
  ∀ n, (P14643400042533834629.a n : ℤ) = A001967 n

end A001967

/-! ## A001967.P11812043941453252343

`A382116(2*n+1)-(2*n+1)`
-/

namespace A001967.P11812043941453252343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A001967.P11812043941453252343

namespace A001967

/-- `A382116(2*n+1)-(2*n+1)` -/
def P11812043941453252343.Spec : Prop :=
  ∀ n, P11812043941453252343.a n = A001967 n

end A001967

/-! ## A001967.P12118856245228921576

`A184516(2*(n+1))-(A184514(n+1)+1)`
-/

namespace A001967.P12118856245228921576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (2 * (n + 1)) - (A184514 (n + 1) + 1)

end

end A001967.P12118856245228921576

namespace A001967

/-- `A184516(2*(n+1))-(A184514(n+1)+1)` -/
def P12118856245228921576.Spec : Prop :=
  ∀ n, P12118856245228921576.a n = A001967 n

end A001967

/-! ## A001967.P17185221642977086739

`A110654(A001965(2*n+1)-1)`
-/

namespace A001967.P17185221642977086739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001965 (2 * n + 1) - 1).toNat

end

end A001967.P17185221642977086739

namespace A001967

/-- `A110654(A001965(2*n+1)-1)` -/
def P17185221642977086739.Spec : Prop :=
  ∀ n, P17185221642977086739.a n = A001967 n

end A001967

/-! ## A001967.P1982955007895272612

`A004526(A001965(2*n+1))`
-/

namespace A001967.P1982955007895272612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001965 (2 * n + 1)).toNat

end

end A001967.P1982955007895272612

namespace A001967

/-- `A004526(A001965(2*n+1))` -/
def P1982955007895272612.Spec : Prop :=
  ∀ n, P1982955007895272612.a n = A001967 n

end A001967

/-! ## A001967.P2331925564932110136

`A004526(A005206(4*n+2))`
-/

namespace A001967.P2331925564932110136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005206 (4 * n + 2)).toNat

end

end A001967.P2331925564932110136

namespace A001967

/-- `A004526(A005206(4*n+2))` -/
def P2331925564932110136.Spec : Prop :=
  ∀ n, P2331925564932110136.a n = A001967 n

end A001967

/-! ## A001967.P15026528945388666704

`A060144(A184516(2*(n+1))+A060144(2*n+1))`
-/

namespace A001967.P15026528945388666704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A184516 (2 * (n + 1)) + A060144 (2 * n + 1)).toNat

end

end A001967.P15026528945388666704

namespace A001967

/-- `A060144(A184516(2*(n+1))+A060144(2*n+1))` -/
def P15026528945388666704.Spec : Prop :=
  ∀ n, P15026528945388666704.a n = A001967 n

end A001967

/-! ## A001967.P12958771786948678820

`A007067(A007067(2*n+1))-A001965(A007067(2*n+1))`
-/

namespace A001967.P12958771786948678820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007067 (2 * n + 1)).toNat - A001965 (A007067 (2 * n + 1)).toNat

end

end A001967.P12958771786948678820

namespace A001967

/-- `A007067(A007067(2*n+1))-A001965(A007067(2*n+1))` -/
def P12958771786948678820.Spec : Prop :=
  ∀ n, P12958771786948678820.a n = A001967 n

end A001967

/-! ## A001967.P11428620443296606

`A000201(A000201(2*(n+1)))-A184516(A000201(2*(n+1)))`
-/

namespace A001967.P11428620443296606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (2 * (n + 1))).toNat - A184516 (A000201 (2 * (n + 1))).toNat

end

end A001967.P11428620443296606

namespace A001967

/-- `A000201(A000201(2*(n+1)))-A184516(A000201(2*(n+1)))` -/
def P11428620443296606.Spec : Prop :=
  ∀ n, P11428620443296606.a n = A001967 n

end A001967

/-! ## A001967.P15197664055719672052

`A188222(4*n+3)-(4*n+3)`
-/

namespace A001967.P15197664055719672052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (4 * n + 3) - (4 * n + 3 : ℤ)

end

end A001967.P15197664055719672052

namespace A001967

/-- `A188222(4*n+3)-(4*n+3)` -/
def P15197664055719672052.Spec : Prop :=
  ∀ n, P15197664055719672052.a n = A001967 n

end A001967

/-! ## A001967.P18100068784815781253

`A002265(2*A001965(2*n+1))`
-/

namespace A001967.P18100068784815781253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A001965 (2 * n + 1)).toNat

end

end A001967.P18100068784815781253

namespace A001967

/-- `A002265(2*A001965(2*n+1))` -/
def P18100068784815781253.Spec : Prop :=
  ∀ n, P18100068784815781253.a n = A001967 n

end A001967

/-! ## A001967.P11103848263769826349

`A060145(A001968(n))`
-/

namespace A001967.P11103848263769826349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A001968 n).toNat

end

end A001967.P11103848263769826349

namespace A001967

/-- `A060145(A001968(n))` -/
def P11103848263769826349.Spec : Prop :=
  ∀ n, P11103848263769826349.a n = A001967 n

end A001967

/-! ## A001967.P15449691553226530746

`A300763(A184739(n+1)+1)-1`
-/

namespace A001967.P15449691553226530746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A184739 (n + 1) + 1).toNat - 1

end

end A001967.P15449691553226530746

namespace A001967

/-- `A300763(A184739(n+1)+1)-1` -/
def P15449691553226530746.Spec : Prop :=
  ∀ n, P15449691553226530746.a n = A001967 n

end A001967

/-! ## A001967.P14441685320227941963

`A001961(A184515(n+1))-A184515(n+1)`
-/

namespace A001967.P14441685320227941963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A184515 (n + 1)).toNat - A184515 (n + 1)

end

end A001967.P14441685320227941963

namespace A001967

/-- `A001961(A184515(n+1))-A184515(n+1)` -/
def P14441685320227941963.Spec : Prop :=
  ∀ n, P14441685320227941963.a n = A001967 n

end A001967

/-! ## A001967.P7527112915650725105

`A001961(A003622(2*(n+1)))-A003622(2*(n+1))`
-/

namespace A001967.P7527112915650725105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A003622 (2 * (n + 1))).toNat - A003622 (2 * (n + 1))

end

end A001967.P7527112915650725105

namespace A001967

/-- `A001961(A003622(2*(n+1)))-A003622(2*(n+1))` -/
def P7527112915650725105.Spec : Prop :=
  ∀ n, P7527112915650725105.a n = A001967 n

end A001967

/-!
# A001968: v-pile positions of the 4-Wythoff game with i=3.

The programs for A001968, the canonical program `A001968.P8280833382828865771` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001968 has offset 0).

The definition of A001968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001968.P8280833382828865771

`floor((n+3/4)*(sqrt(5)+3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001968

/-- `floor((n+3/4)*(sqrt(5)+3))` -/
def P8280833382828865771.Spec : Prop :=
  ∀ n, P8280833382828865771.a n = A001968 n

theorem P8280833382828865771.correct : P8280833382828865771.Spec := by
  intro n
  simp only [A001968]

end A001968

/-! ## A001968.P13252764976636621652

`A001967(n)+record[xor(3, n)]`
-/

namespace A001968.P13252764976636621652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A001968.P13252764976636621652

namespace A001968

/-- `A001967(n)+record[xor(3, n)]` -/
def P13252764976636621652.Spec : Prop :=
  ∀ n, P13252764976636621652.a n = A001968 n

end A001968

/-! ## A001968.P3792102320049495236

`A004767(n)+A001967(n)`
-/

namespace A001968.P3792102320049495236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A001967 n

end

end A001968.P3792102320049495236

namespace A001968

/-- `A004767(n)+A001967(n)` -/
def P3792102320049495236.Spec : Prop :=
  ∀ n, P3792102320049495236.a n = A001968 n

end A001968

/-! ## A001968.P10097164032830808443

`A004767(n)+comp[A001964(n)]`
-/

namespace A001968.P10097164032830808443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A001968.P10097164032830808443

namespace A001968

/-- `A004767(n)+comp[A001964(n)]` -/
def P10097164032830808443.Spec : Prop :=
  ∀ n, P10097164032830808443.a n = A001968 n

end A001968

/-! ## A001968.P2350815556486322253

`A001966(2*n+1)-A007064(2*(n+1))`
-/

namespace A001968.P2350815556486322253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 (2 * n + 1) - A007064 (2 * (n + 1))

end

end A001968.P2350815556486322253

namespace A001968

/-- `A001966(2*n+1)-A007064(2*(n+1))` -/
def P2350815556486322253.Spec : Prop :=
  ∀ n, P2350815556486322253.a n = A001968 n

end A001968

/-! ## A001968.P742873253357029442

`A000201(A382116(2*n+1)+1)`
-/

namespace A001968.P742873253357029442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A382116 (2 * n + 1) + 1).toNat

end

end A001968.P742873253357029442

namespace A001968

/-- `A000201(A382116(2*n+1)+1)` -/
def P742873253357029442.Spec : Prop :=
  ∀ n, P742873253357029442.a n = A001968 n

end A001968

/-! ## A001968.P7148988039795024851

`A004956(A004956(2*n+1))-A190427(A004956(2*n+1))`
-/

namespace A001968.P7148988039795024851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A004956 (2 * n + 1)).toNat - A190427 (A004956 (2 * n + 1)).toNat

end

end A001968.P7148988039795024851

namespace A001968

/-- `A004956(A004956(2*n+1))-A190427(A004956(2*n+1))` -/
def P7148988039795024851.Spec : Prop :=
  ∀ n, P7148988039795024851.a n = A001968 n

end A001968

/-! ## A001968.P13906225302651384328

`A026351(A026351(2*n+1))-A190427(A026351(2*n+1))`
-/

namespace A001968.P13906225302651384328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026351 (2 * n + 1)).toNat - A190427 (A026351 (2 * n + 1)).toNat

end

end A001968.P13906225302651384328

namespace A001968

/-- `A026351(A026351(2*n+1))-A190427(A026351(2*n+1))` -/
def P13906225302651384328.Spec : Prop :=
  ∀ n, P13906225302651384328.a n = A001968 n

end A001968

/-! ## A001968.P13213478861364325827

`A188222(3*(n+1)+n)`
-/

namespace A001968.P13213478861364325827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (3 * (n + 1) + n)

end

end A001968.P13213478861364325827

namespace A001968

/-- `A188222(3*(n+1)+n)` -/
def P13213478861364325827.Spec : Prop :=
  ∀ n, P13213478861364325827.a n = A001968 n

end A001968

/-! ## A001968.P16735315331615830436

`round((A001950(Δ[n²]+2*(n+1))-1)/2)`
-/

namespace A001968.P16735315331615830436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * (n + 1) : ℤ)).toNat - 1 : ℚ) / 2)

end

end A001968.P16735315331615830436

namespace A001968

/-- `round((A001950(Δ[n²]+2*(n+1))-1)/2)` -/
def P16735315331615830436.Spec : Prop :=
  ∀ n, P16735315331615830436.a n = A001968 n

end A001968

/-! ## A001968.P69872367925595099

`A005206(A035487(2*(n+1))-1)`
-/

namespace A001968.P69872367925595099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A035487 (2 * (n + 1)) - 1).toNat

end

end A001968.P69872367925595099

namespace A001968

/-- `A005206(A035487(2*(n+1))-1)` -/
def P69872367925595099.Spec : Prop :=
  ∀ n, P69872367925595099.a n = A001968 n

end A001968

/-! ## A001968.P8875373443103253689

`comp[A001963(n)]`
-/

namespace A001968.P8875373443103253689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001968.P8875373443103253689

namespace A001968

/-- `comp[A001963(n)]` -/
def P8875373443103253689.Spec : Prop :=
  ∀ n, (P8875373443103253689.a n : ℤ) = A001968 n

end A001968

/-! ## A001968.P13564610601904402118

`filter[A001967(n), A334414(#)]`
-/

namespace A001968.P13564610601904402118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334414 (f1 j).toNat = 1) n)

end

end A001968.P13564610601904402118

namespace A001968

/-- `filter[A001967(n), A334414(#)]` -/
def P13564610601904402118.Spec : Prop :=
  ∀ n, P13564610601904402118.a n = A001968 n

end A001968

/-! ## A001968.P5244830891089226532

`filter[A283765(n+1), A334414(#)]`
-/

namespace A001968.P5244830891089226532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334414 (f1 j).toNat = 1) n)

end

end A001968.P5244830891089226532

namespace A001968

/-- `filter[A283765(n+1), A334414(#)]` -/
def P5244830891089226532.Spec : Prop :=
  ∀ n, P5244830891089226532.a n = A001968 n

end A001968

/-! ## A001968.P12179136896623688722

`eq[1, A085002(n+1)+A006340(n)]`
-/

namespace A001968.P12179136896623688722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + A006340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001968.P12179136896623688722

namespace A001968

/-- `eq[1, A085002(n+1)+A006340(n)]` -/
def P12179136896623688722.Spec : Prop :=
  ∀ n, (P12179136896623688722.a n : ℤ) = A001968 n

end A001968

/-! ## A001968.P5333384133384712366

`A001961(A184515(n+1))-A184514(n+1)`
-/

namespace A001968.P5333384133384712366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A184515 (n + 1)).toNat - A184514 (n + 1)

end

end A001968.P5333384133384712366

namespace A001968

/-- `A001961(A184515(n+1))-A184514(n+1)` -/
def P5333384133384712366.Spec : Prop :=
  ∀ n, P5333384133384712366.a n = A001968 n

end A001968

/-! ## A001968.P1040690801039741246

`A001961(A001962(n+1)-1)-A001961(n+1)`
-/

namespace A001968.P1040690801039741246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A001962 (n + 1) - 1).toNat - A001961 (n + 1)

end

end A001968.P1040690801039741246

namespace A001968

/-- `A001961(A001962(n+1)-1)-A001961(n+1)` -/
def P1040690801039741246.Spec : Prop :=
  ∀ n, P1040690801039741246.a n = A001968 n

end A001968

/-! ## A001968.P12721355800909894010

`A001961(A003622(2*(n+1)))-A005206(2*n+1)`
-/

namespace A001968.P12721355800909894010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A003622 (2 * (n + 1))).toNat - A005206 (2 * n + 1)

end

end A001968.P12721355800909894010

namespace A001968

/-- `A001961(A003622(2*(n+1)))-A005206(2*n+1)` -/
def P12721355800909894010.Spec : Prop :=
  ∀ n, P12721355800909894010.a n = A001968 n

end A001968

/-! ## A001968.P13818597145751295220

`A007067(A003622(2*(n+1)))-A000201(2*(n+1))`
-/

namespace A001968.P13818597145751295220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A003622 (2 * (n + 1))).toNat - A000201 (2 * (n + 1))

end

end A001968.P13818597145751295220

namespace A001968

/-- `A007067(A003622(2*(n+1)))-A000201(2*(n+1))` -/
def P13818597145751295220.Spec : Prop :=
  ∀ n, P13818597145751295220.a n = A001968 n

end A001968

/-! ## A001968.P1647882098307840342

`A007066(2*(n+1))-A089809(A007066(2*(n+1)))`
-/

namespace A001968.P1647882098307840342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (2 * (n + 1)) - A089809 (A007066 (2 * (n + 1))).toNat

end

end A001968.P1647882098307840342

namespace A001968

/-- `A007066(2*(n+1))-A089809(A007066(2*(n+1)))` -/
def P1647882098307840342.Spec : Prop :=
  ∀ n, P1647882098307840342.a n = A001968 n

end A001968

/-!
# A001969: Evil numbers: nonnegative integers with an even number of 1's in their binary expansion.

The programs for A001969, the canonical program `A001969.P9139304774861292784` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001969 has offset 1).

The definition of A001969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001969.P11864419136141183512

`2*n+A000120(n)%2`
-/

namespace A001969.P11864419136141183512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + Int.tmod (A000120 n) 2

end

end A001969.P11864419136141183512

namespace A001969

/-- `2*n+A000120(n)%2` -/
def P11864419136141183512.Spec : Prop :=
  ∀ n, P11864419136141183512.a n = A001969 (n + 1)

end A001969

/-! ## A001969.P9139304774861292784

`2*(n+1)-2+A010060(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001969

/-- `2*(n+1)-2+A010060(n)` -/
def P9139304774861292784.Spec : Prop :=
  ∀ n, P9139304774861292784.a n = A001969 (n + 1)

theorem P9139304774861292784.correct : P9139304774861292784.Spec := by
  intro n
  simp only [A001969, Nat.add_sub_cancel]

end A001969

/-! ## A001969.P2538380230331118782

`comp[xor(n, 2*n+1)]`
-/

namespace A001969.P2538380230331118782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001969.P2538380230331118782

namespace A001969

/-- `comp[xor(n, 2*n+1)]` -/
def P2538380230331118782.Spec : Prop :=
  ∀ n, (P2538380230331118782.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P18058615763384080815

`xor(1, comp[xor(n, 2*n)])`
-/

namespace A001969.P18058615763384080815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A001969.P18058615763384080815

namespace A001969

/-- `xor(1, comp[xor(n, 2*n)])` -/
def P18058615763384080815.Spec : Prop :=
  ∀ n, (P18058615763384080815.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P9504073792545728637

`lt[0, -a(and(n, n-1))]` with `a(0)=1`
-/

namespace A001969.P9504073792545728637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001969.P9504073792545728637

namespace A001969

/-- `lt[0, -a(and(n, n-1))]` -/
def P9504073792545728637.Spec : Prop :=
  ∀ n, (P9504073792545728637.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P7965541343264923283

`eq[1, -a(and(n, n-1))]` with `a(0)=1`
-/

namespace A001969.P7965541343264923283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001969.P7965541343264923283

namespace A001969

/-- `eq[1, -a(and(n, n-1))]` -/
def P7965541343264923283.Spec : Prop :=
  ∀ n, (P7965541343264923283.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P9196233886398894028

`eq[0, 1-a(and(n, n-1))]` with `a(0)=0`
-/

namespace A001969.P9196233886398894028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001969.P9196233886398894028

namespace A001969

/-- `eq[0, 1-a(and(n, n-1))]` -/
def P9196233886398894028.Spec : Prop :=
  ∀ n, (P9196233886398894028.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P293734581834215678

`comp[xor(n+1, n+1+n)+1]`
-/

namespace A001969.P293734581834215678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001969.P293734581834215678

namespace A001969

/-- `comp[xor(n+1, n+1+n)+1]` -/
def P293734581834215678.Spec : Prop :=
  ∀ n, (P293734581834215678.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P9318765820254996871

`char[xor(n, 2*n+1)]+2*n`
-/

namespace A001969.P9318765820254996871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * n

end

end A001969.P9318765820254996871

namespace A001969

/-- `char[xor(n, 2*n+1)]+2*n` -/
def P9318765820254996871.Spec : Prop :=
  ∀ n, (P9318765820254996871.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P2255530621734449559

`2*n+1-and(1, a(and(n, n-1)))` with `a(0)=0`
-/

namespace A001969.P2255530621734449559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℤ) - Int.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A001969.P2255530621734449559

namespace A001969

/-- `2*n+1-and(1, a(and(n, n-1)))` -/
def P2255530621734449559.Spec : Prop :=
  ∀ n, P2255530621734449559.a n = A001969 (n + 1)

end A001969

/-! ## A001969.P7088974249100938442

`lt[A065620(n), 1]`
-/

namespace A001969.P7088974249100938442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001969.P7088974249100938442

namespace A001969

/-- `lt[A065620(n), 1]` -/
def P7088974249100938442.Spec : Prop :=
  ∀ n, (P7088974249100938442.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P6379910592050298422

`comp[A000069(n+1)]`
-/

namespace A001969.P6379910592050298422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001969.P6379910592050298422

namespace A001969

/-- `comp[A000069(n+1)]` -/
def P6379910592050298422.Spec : Prop :=
  ∀ n, (P6379910592050298422.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P3832478629212594726

`comp[A268669(n+1)]`
-/

namespace A001969.P3832478629212594726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001969.P3832478629212594726

namespace A001969

/-- `comp[A268669(n+1)]` -/
def P3832478629212594726.Spec : Prop :=
  ∀ n, (P3832478629212594726.a n : ℤ) = A001969 (n + 1)

end A001969

/-! ## A001969.P11262158075670549841

`record[A339451(2*n)]`
-/

namespace A001969.P11262158075670549841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001969.P11262158075670549841

namespace A001969

/-- `record[A339451(2*n)]` -/
def P11262158075670549841.Spec : Prop :=
  ∀ n, P11262158075670549841.a n = A001969 (n + 1)

end A001969

/-! ## A001969.P719891383068020673

`A026147(n+1)-1`
-/

namespace A001969.P719891383068020673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) - 1

end

end A001969.P719891383068020673

namespace A001969

/-- `A026147(n+1)-1` -/
def P719891383068020673.Spec : Prop :=
  ∀ n, P719891383068020673.a n = A001969 (n + 1)

theorem P719891383068020673.correct : P719891383068020673.Spec := by
  intro n
  simp only [A001969, Nat.add_sub_cancel, A001969.P719891383068020673.a, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A026147, A026147.P16575442085374687038.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001969

/-! ## A001969.P11561400831074733158

`A140592(n+1)-2`
-/

namespace A001969.P11561400831074733158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - 2

end

end A001969.P11561400831074733158

namespace A001969

/-- `A140592(n+1)-2` -/
def P11561400831074733158.Spec : Prop :=
  ∀ n, P11561400831074733158.a n = A001969 (n + 1)

theorem P11561400831074733158.correct : P11561400831074733158.Spec := by
  intro n
  simp only [A001969, Nat.add_sub_cancel, A001969.P11561400831074733158.a, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A140592, A140592.P9802847602468291615.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001969

/-! ## A001969.P17380807674904036101

`A125592(n+1)/2`
-/

namespace A001969.P17380807674904036101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125592 (n + 1) : ℚ) / 2

end

end A001969.P17380807674904036101

namespace A001969

/-- `A125592(n+1)/2` -/
def P17380807674904036101.Spec : Prop :=
  ∀ n, P17380807674904036101.a n = (A001969 (n + 1) : ℚ)

end A001969

/-!
# A001970: Functional determinants; partitions of partitions; Euler transform applied twice to all 1's sequence.

The programs for A001970, there is no canonical definition to state claims against.
-/

/-! ## A001970.P644915484883863845

`∑[A317911(n)]`
-/

namespace A001970.P644915484883863845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001970.P644915484883863845

/-! ## A001970.P13914470984670913074

`Δ[A291552(n)]-A317911(n+1)`
-/

namespace A001970.P13914470984670913074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A317911 (n + 1)

end

end A001970.P13914470984670913074

/-! ## A001970.P1402325912601645561

`Δ[A291552(n)-A317911(n)]-A317911(n)`
-/

namespace A001970.P1402325912601645561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291552 n - A317911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A317911 n

end

end A001970.P1402325912601645561

/-! ## A001970.P8444408627881237408

`A291552(n+1)-(A317911(n+1)+A291552(n))`
-/

namespace A001970.P8444408627881237408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291552 (n + 1) - (A317911 (n + 1) + A291552 n)

end

end A001970.P8444408627881237408

/-! ## A001970.P5199609232862431311

`A055885(A179865(n+1))`
-/

namespace A001970.P5199609232862431311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055885 (A179865 (n + 1)).toNat

end

end A001970.P5199609232862431311

/-! ## A001970.P14097853289797336020

`A290353(∑[n+4]+2)`
-/

namespace A001970.P14097853289797336020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001970.P14097853289797336020

/-!
# A001971: Nearest integer to n^2/8.

The programs for A001971, the canonical program `A001971.P5634480524421253458` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001971 has offset 0).

The definition of A001971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001971.P5634480524421253458

`round(n²/8)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001971

/-- `round(n²/8)` -/
def P5634480524421253458.Spec : Prop :=
  ∀ n, P5634480524421253458.a n = A001971 n

theorem P5634480524421253458.correct : P5634480524421253458.Spec := by
  intro n
  simp only [A001971]

end A001971

/-! ## A001971.P14198582351170191198

`ceil(∑[and(n, -2)]/4)`
-/

namespace A001971.P14198582351170191198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A001971.P14198582351170191198

namespace A001971

/-- `ceil(∑[and(n, -2)]/4)` -/
def P14198582351170191198.Spec : Prop :=
  ∀ n, P14198582351170191198.a n = A001971 n

end A001971

/-! ## A001971.P2092810038808030964

`∑[floor(abs(xor(n, -2))/4)]`
-/

namespace A001971.P2092810038808030964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|Int.xor (n : ℤ) (-2)| : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P2092810038808030964

namespace A001971

/-- `∑[floor(abs(xor(n, -2))/4)]` -/
def P2092810038808030964.Spec : Prop :=
  ∀ n, P2092810038808030964.a n = A001971 n

end A001971

/-! ## A001971.P11310949141889393541

`∑[floor((xor(1, n)+1)/4)]`
-/

namespace A001971.P11310949141889393541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P11310949141889393541

namespace A001971

/-- `∑[floor((xor(1, n)+1)/4)]` -/
def P11310949141889393541.Spec : Prop :=
  ∀ n, P11310949141889393541.a n = A001971 n

end A001971

/-! ## A001971.P9750265130429826436

`∑[ceil(xor(1, n-2)/4)]`
-/

namespace A001971.P9750265130429826436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P9750265130429826436

namespace A001971

/-- `∑[ceil(xor(1, n-2)/4)]` -/
def P9750265130429826436.Spec : Prop :=
  ∀ n, P9750265130429826436.a n = A001971 n

end A001971

/-! ## A001971.P15977917731425419732

`∑[ceil(n/4)-n%2]`
-/

namespace A001971.P15977917731425419732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉ - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P15977917731425419732

namespace A001971

/-- `∑[ceil(n/4)-n%2]` -/
def P15977917731425419732.Spec : Prop :=
  ∀ n, P15977917731425419732.a n = A001971 n

end A001971

/-! ## A001971.P16543404361562572975

`∑[floor(ceil(xor(1, n)/2)/2)]`
-/

namespace A001971.P16543404361562572975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(Nat.xor 1 n : ℚ) / 2⌉ : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P16543404361562572975

namespace A001971

/-- `∑[floor(ceil(xor(1, n)/2)/2)]` -/
def P16543404361562572975.Spec : Prop :=
  ∀ n, P16543404361562572975.a n = A001971 n

end A001971

/-! ## A001971.P10901115502428849651

`ceil(C(∑[n], 2)/(n+1)²)`
-/

namespace A001971.P10901115502428849651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / ((n + 1) ^ 2 : ℚ)⌉

end

end A001971.P10901115502428849651

namespace A001971

/-- `ceil(C(∑[n], 2)/(n+1)²)` -/
def P10901115502428849651.Spec : Prop :=
  ∀ n, P10901115502428849651.a n = A001971 n

end A001971

/-! ## A001971.P3727621571317347125

`∑[a(n-4)+1]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A001971.P3727621571317347125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  f1 (n - 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P3727621571317347125

namespace A001971

/-- `∑[a(n-4)+1]` -/
def P3727621571317347125.Spec : Prop :=
  ∀ n, (P3727621571317347125.a n : ℤ) = A001971 n

end A001971

/-! ## A001971.P1982833237175513030

`ceil((n+2)/(8*acot(n-2)))`
-/

namespace A001971.P1982833237175513030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / (8 * SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ))⌉

end

end A001971.P1982833237175513030

namespace A001971

/-- `ceil((n+2)/(8*acot(n-2)))` -/
def P1982833237175513030.Spec : Prop :=
  ∀ n, P1982833237175513030.a n = A001971 n

end A001971

/-! ## A001971.P5796124870786506255

`n-2+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A001971.P5796124870786506255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  (n : ℤ) - 2 + a (n - 4)

end

end A001971.P5796124870786506255

namespace A001971

/-- `n-2+a(n-4)` -/
def P5796124870786506255.Spec : Prop :=
  ∀ n, P5796124870786506255.a n = A001971 n

end A001971

/-! ## A001971.P3590491982303726136

`n-(2-a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A001971.P3590491982303726136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  (n : ℤ) - (2 - a (n - 4))

end

end A001971.P3590491982303726136

namespace A001971

/-- `n-(2-a(n-4))` -/
def P3590491982303726136.Spec : Prop :=
  ∀ n, P3590491982303726136.a n = A001971 n

end A001971

/-! ## A001971.P12429218879067613973

`ceil(A002620(n)/2)`
-/

namespace A001971.P12429218879067613973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002620 n : ℚ) / 2⌉

end

end A001971.P12429218879067613973

namespace A001971

/-- `ceil(A002620(n)/2)` -/
def P12429218879067613973.Spec : Prop :=
  ∀ n, P12429218879067613973.a n = A001971 n

end A001971

/-! ## A001971.P8876164315893954358

`ceil(A033436(n)/3)`
-/

namespace A001971.P8876164315893954358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033436 n : ℚ) / 3⌉

end

end A001971.P8876164315893954358

namespace A001971

/-- `ceil(A033436(n)/3)` -/
def P8876164315893954358.Spec : Prop :=
  ∀ n, P8876164315893954358.a n = A001971 n

end A001971

/-! ## A001971.P334101398944487779

`∑[A059169(n+1)]`
-/

namespace A001971.P334101398944487779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P334101398944487779

namespace A001971

/-- `∑[A059169(n+1)]` -/
def P334101398944487779.Spec : Prop :=
  ∀ n, P334101398944487779.a n = A001971 n

end A001971

/-! ## A001971.P4728577203648063898

`∑[A265430(n)-n]`
-/

namespace A001971.P4728577203648063898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265430 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P4728577203648063898

namespace A001971

/-- `∑[A265430(n)-n]` -/
def P4728577203648063898.Spec : Prop :=
  ∀ n, P4728577203648063898.a n = A001971 n

end A001971

/-! ## A001971.P17408802647300768320

`A265431(n)-∑[n]`
-/

namespace A001971.P17408802647300768320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265431 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001971.P17408802647300768320

namespace A001971

/-- `A265431(n)-∑[n]` -/
def P17408802647300768320.Spec : Prop :=
  ∀ n, P17408802647300768320.a n = A001971 n

theorem P17408802647300768320.correct : P17408802647300768320.Spec := by
  intro n
  simp only [A001971, Nat.add_sub_cancel, A001971.P17408802647300768320.f1, A001971.P17408802647300768320.a, A001971.P5634480524421253458.a, A265431, A265431.P5926924290814023423.f1, A265431.P5926924290814023423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001971

/-! ## A001971.P5073194445067095024

`Δ[A173722(abs(1-n))]`
-/

namespace A001971.P5073194445067095024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173722 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001971.P5073194445067095024

namespace A001971

/-- `Δ[A173722(abs(1-n))]` -/
def P5073194445067095024.Spec : Prop :=
  ∀ n, P5073194445067095024.a n = A001971 n

end A001971

/-! ## A001971.P1224320457780821968

`∑[n+1-A265428(n)]`
-/

namespace A001971.P1224320457780821968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001971.P1224320457780821968

namespace A001971

/-- `∑[n+1-A265428(n)]` -/
def P1224320457780821968.Spec : Prop :=
  ∀ n, P1224320457780821968.a n = A001971 n

end A001971

/-! ## A001971.P6998715871369668376

`∑[n+1]-A265429(n)`
-/

namespace A001971.P6998715871369668376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A265429 n

end

end A001971.P6998715871369668376

namespace A001971

/-- `∑[n+1]-A265429(n)` -/
def P6998715871369668376.Spec : Prop :=
  ∀ n, P6998715871369668376.a n = A001971 n

theorem P6998715871369668376.correct : P6998715871369668376.Spec := by
  intro n
  simp only [A001971, Nat.add_sub_cancel, A001971.P6998715871369668376.f1, A001971.P6998715871369668376.a, A001971.P5634480524421253458.a, A265429, A265429.P17937643046909514164.f1, A265429.P17937643046909514164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001971

/-!
# A001972: Expansion of 1/((1-x)^2*(1-x^4)) = 1/( (1+x)*(1+x^2)*(1-x)^3 ).

The programs for A001972, the canonical program `A001972.P12474343448143324073` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001972 has offset 0).

The definition of A001972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001972.P12474343448143324073

`floor((n+3)²/8)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001972

/-- `floor((n+3)²/8)` -/
def P12474343448143324073.Spec : Prop :=
  ∀ n, P12474343448143324073.a n = A001972 n

theorem P12474343448143324073.correct : P12474343448143324073.Spec := by
  intro n
  simp only [A001972]

end A001972

/-! ## A001972.P15053395382107033459

`a(n-4)+n+1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A001972.P15053395382107033459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 4) + n + 1

end

end A001972.P15053395382107033459

namespace A001972

/-- `a(n-4)+n+1` -/
def P15053395382107033459.Spec : Prop :=
  ∀ n, (P15053395382107033459.a n : ℤ) = A001972 n

end A001972

/-! ## A001972.P13383072038123133573

`A130519(n+4)`
-/

namespace A001972.P13383072038123133573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 4)

end

end A001972.P13383072038123133573

namespace A001972

/-- `A130519(n+4)` -/
def P13383072038123133573.Spec : Prop :=
  ∀ n, P13383072038123133573.a n = A001972 n

theorem P13383072038123133573.correct : P13383072038123133573.Spec := by
  intro n
  simp only [A001972, Nat.add_sub_cancel, A001972.P13383072038123133573.a, A001972.P12474343448143324073.a, A130519, A130519.P16536430060004457997.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001972

/-! ## A001972.P5939002267496575715

`n²/8+3*n/4+15/16+(-1)^n/16+A056594(n+3)/4`
-/

namespace A001972.P5939002267496575715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 8 + (3 * n : ℚ) / 4 + (15 : ℚ) / 16 + ((-1) ^ n : ℚ) / 16 + (A056594 (n + 3) : ℚ) / 4

end

end A001972.P5939002267496575715

namespace A001972

/-- `n²/8+3*n/4+15/16+(-1)^n/16+A056594(n+3)/4` -/
def P5939002267496575715.Spec : Prop :=
  ∀ n, P5939002267496575715.a n = (A001972 n : ℚ)

end A001972

/-! ## A001972.P302331621125698836

`∑[or(3, n)+1]/4`
-/

namespace A001972.P302331621125698836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A001972.P302331621125698836

namespace A001972

/-- `∑[or(3, n)+1]/4` -/
def P302331621125698836.Spec : Prop :=
  ∀ n, P302331621125698836.a n = (A001972 n : ℚ)

end A001972

/-! ## A001972.P15374131458294188209

`record[floor((3-n)²/8)]`
-/

namespace A001972.P15374131458294188209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - (n : ℤ)) ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001972.P15374131458294188209

namespace A001972

/-- `record[floor((3-n)²/8)]` -/
def P15374131458294188209.Spec : Prop :=
  ∀ n, P15374131458294188209.a n = A001972 n

end A001972

/-! ## A001972.P8555791141860309942

`round(cot(8/(n+3)²))`
-/

namespace A001972.P8555791141860309942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (8 / ((n + 3) ^ 2 : ℚ) : ℝ))

end

end A001972.P8555791141860309942

namespace A001972

/-- `round(cot(8/(n+3)²))` -/
def P8555791141860309942.Spec : Prop :=
  ∀ n, P8555791141860309942.a n = A001972 n

end A001972

/-! ## A001972.P13199134587970411590

`and(-6, (n+3)²)/8`
-/

namespace A001972.P13199134587970411590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-6) ((n + 3) ^ 2 : ℤ) : ℚ) / 8

end

end A001972.P13199134587970411590

namespace A001972

/-- `and(-6, (n+3)²)/8` -/
def P13199134587970411590.Spec : Prop :=
  ∀ n, P13199134587970411590.a n = (A001972 n : ℚ)

end A001972

/-! ## A001972.P463887228839060026

`∑[∑[∑[ogf(1/(1+x+x^2+x^3))]]]`
-/

namespace A001972.P463887228839060026
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P463887228839060026

namespace A001972

/-- `∑[∑[∑[ogf(1/(1+x+x^2+x^3))]]]` -/
def P463887228839060026.Spec : Prop :=
  ∀ n, P463887228839060026.a n = A001972 n

end A001972

/-! ## A001972.P16693337671691838106

`∑[a(n-4)+1]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A001972.P16693337671691838106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P16693337671691838106

namespace A001972

/-- `∑[a(n-4)+1]` -/
def P16693337671691838106.Spec : Prop :=
  ∀ n, (P16693337671691838106.a n : ℤ) = A001972 n

end A001972

/-! ## A001972.P12770897441282092208

`∑[∑[a(n-4)²]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A001972.P12770897441282092208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f2 =>
  f2 (n - 4) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P12770897441282092208

namespace A001972

/-- `∑[∑[a(n-4)²]]` -/
def P12770897441282092208.Spec : Prop :=
  ∀ n, (P12770897441282092208.a n : ℤ) = A001972 n

end A001972

/-! ## A001972.P609273084735427576

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A001972.P609273084735427576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P609273084735427576

namespace A001972

/-- `∑[∑[floor(a(n-4))]]` -/
def P609273084735427576.Spec : Prop :=
  ∀ n, (P609273084735427576.a n : ℤ) = A001972 n

end A001972

/-! ## A001972.P6405408838297649659

`∑[∑[a(n-4)^3]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A001972.P6405408838297649659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f2 =>
  f2 (n - 4) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P6405408838297649659

namespace A001972

/-- `∑[∑[a(n-4)^3]]` -/
def P6405408838297649659.Spec : Prop :=
  ∀ n, (P6405408838297649659.a n : ℤ) = A001972 n

end A001972

/-! ## A001972.P3091507365965801186

`∑[∑[1-a(a(n-4))]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A001972.P3091507365965801186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f2 =>
  1 - f2 (f2 (n - 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P3091507365965801186

namespace A001972

/-- `∑[∑[1-a(a(n-4))]]` -/
def P3091507365965801186.Spec : Prop :=
  ∀ n, P3091507365965801186.a n = A001972 n

end A001972

/-! ## A001972.P5162634879086123515

`1-floor((3-n)/4-a(n-1))` with `a(0)=1`
-/

namespace A001972.P5162634879086123515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(3 - (n : ℤ) : ℚ) / 4 - (a (n - 1) : ℚ)⌋

end

end A001972.P5162634879086123515

namespace A001972

/-- `1-floor((3-n)/4-a(n-1))` -/
def P5162634879086123515.Spec : Prop :=
  ∀ n, P5162634879086123515.a n = A001972 n

end A001972

/-! ## A001972.P8462650626227620915

`∑[floor(C(n+1, 2)/(2*n+1))]+n+1`
-/

namespace A001972.P8462650626227620915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / (2 * n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A001972.P8462650626227620915

namespace A001972

/-- `∑[floor(C(n+1, 2)/(2*n+1))]+n+1` -/
def P8462650626227620915.Spec : Prop :=
  ∀ n, P8462650626227620915.a n = A001972 n

end A001972

/-! ## A001972.P3369712781557846168

`∑[A008621(n)]`
-/

namespace A001972.P3369712781557846168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P3369712781557846168

namespace A001972

/-- `∑[A008621(n)]` -/
def P3369712781557846168.Spec : Prop :=
  ∀ n, P3369712781557846168.a n = A001972 n

end A001972

/-! ## A001972.P15618711614828175368

`∑[∑[A121262(n)]]`
-/

namespace A001972.P15618711614828175368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P15618711614828175368

namespace A001972

/-- `∑[∑[A121262(n)]]` -/
def P15618711614828175368.Spec : Prop :=
  ∀ n, P15618711614828175368.a n = A001972 n

end A001972

/-! ## A001972.P8561133945520446647

`∑[A002265(n)+1]`
-/

namespace A001972.P8561133945520446647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001972.P8561133945520446647

namespace A001972

/-- `∑[A002265(n)+1]` -/
def P8561133945520446647.Spec : Prop :=
  ∀ n, P8561133945520446647.a n = A001972 n

end A001972

/-!
# A001973: Expansion of (1+x^3)/((1-x)*(1-x^2)^2*(1-x^3)).

The programs for A001973, the canonical program `A001973.P10710447077943804742` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001973 has offset 0).

The definition of A001973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` (program `A001973.P10710447077943804742`, by `A001973.P10710447077943804742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001973.P10710447077943804742

`ogf((1+x^3)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001973

/-- `ogf((1+x^3)/(1-x-2x^2+x^3+2x^4+x^5-2x^6-x^7+x^8))` -/
def P10710447077943804742.Spec : Prop :=
  ∀ n, P10710447077943804742.a n = A001973 n

theorem P10710447077943804742.correct : P10710447077943804742.Spec := by
  intro n
  simp only [A001973]

end A001973

/-! ## A001973.P419308741400202728

`floor((21*n+n^3)/36+5*n²/24+13/12)`
-/

namespace A001973.P419308741400202728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(21 * n + n ^ 3 : ℚ) / 36 + (5 * n ^ 2 : ℚ) / 24 + (13 : ℚ) / 12⌋

end

end A001973.P419308741400202728

namespace A001973

/-- `floor((21*n+n^3)/36+5*n²/24+13/12)` -/
def P419308741400202728.Spec : Prop :=
  ∀ n, P419308741400202728.a n = A001973 n

end A001973

/-! ## A001973.P8348290699500150865

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=8, a(5)=12, a(6)=18`
-/

namespace A001973.P8348290699500150865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 8, 12, 18] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A001973.P8348290699500150865

namespace A001973

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P8348290699500150865.Spec : Prop :=
  ∀ n, P8348290699500150865.a n = A001973 n

end A001973

/-! ## A001973.P12746798394336652394

`∑[floor(∑[n/3-floor(a(n-1))])]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001973.P12746798394336652394
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / 3 - (⌊f2 (n - 1)⌋ : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001973.P12746798394336652394

namespace A001973

/-- `∑[floor(∑[n/3-floor(a(n-1))])]` -/
def P12746798394336652394.Spec : Prop :=
  ∀ n, P12746798394336652394.a n = A001973 n

end A001973

/-! ## A001973.P1380003858585289934

`∑[ceil(∑[(n+1)/3]-a(n-1))]` with `a(0)=1`
-/

namespace A001973.P1380003858585289934
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j - (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001973.P1380003858585289934

namespace A001973

/-- `∑[ceil(∑[(n+1)/3]-a(n-1))]` -/
def P1380003858585289934.Spec : Prop :=
  ∀ n, P1380003858585289934.a n = A001973 n

end A001973

/-! ## A001973.P16139665937739666162

`∑[a(n-2)+n]-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001973.P16139665937739666162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A001973.P16139665937739666162

namespace A001973

/-- `∑[a(n-2)+n]-(a(n-1)+a(n-2))` -/
def P16139665937739666162.Spec : Prop :=
  ∀ n, P16139665937739666162.a n = A001973 n

end A001973

/-! ## A001973.P12010770219419316405

`∑[A008806(n)]`
-/

namespace A001973.P12010770219419316405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001973.P12010770219419316405

namespace A001973

/-- `∑[A008806(n)]` -/
def P12010770219419316405.Spec : Prop :=
  ∀ n, P12010770219419316405.a n = A001973 n

end A001973

/-! ## A001973.P10080087252029795383

`A181120(n)+A156040(n)`
-/

namespace A001973.P10080087252029795383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A156040 n

end

end A001973.P10080087252029795383

namespace A001973

/-- `A181120(n)+A156040(n)` -/
def P10080087252029795383.Spec : Prop :=
  ∀ n, P10080087252029795383.a n = A001973 n

end A001973

/-! ## A001973.P3238599646198014501

`∑[A103221(n)+∑[A008615(n)]]`
-/

namespace A001973.P3238599646198014501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001973.P3238599646198014501

namespace A001973

/-- `∑[A103221(n)+∑[A008615(n)]]` -/
def P3238599646198014501.Spec : Prop :=
  ∀ n, P3238599646198014501.a n = A001973 n

end A001973

/-! ## A001973.P10854769327942764331

`A014126(n)+A014126(n)-A002623(n)`
-/

namespace A001973.P10854769327942764331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n + (A014126 n - A002623 n)

end

end A001973.P10854769327942764331

namespace A001973

/-- `A014126(n)+A014126(n)-A002623(n)` -/
def P10854769327942764331.Spec : Prop :=
  ∀ n, P10854769327942764331.a n = A001973 n

end A001973

/-! ## A001973.P12964495344259339772

`A266769(n)+A008763(n+1)`
-/

namespace A001973.P12964495344259339772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A008763 (n + 1)

end

end A001973.P12964495344259339772

namespace A001973

/-- `A266769(n)+A008763(n+1)` -/
def P12964495344259339772.Spec : Prop :=
  ∀ n, P12964495344259339772.a n = A001973 n

end A001973

/-! ## A001973.P11937725782541072542

`A000601(n)-A069905(n+2)`
-/

namespace A001973.P11937725782541072542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A069905 (n + 2)

end

end A001973.P11937725782541072542

namespace A001973

/-- `A000601(n)-A069905(n+2)` -/
def P11937725782541072542.Spec : Prop :=
  ∀ n, P11937725782541072542.a n = A001973 n

end A001973

/-! ## A001973.P18009527820282184346

`A014126(n)+A266769(n)-A006918(n+1)`
-/

namespace A001973.P18009527820282184346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n + (A266769 n - A006918 (n + 1))

end

end A001973.P18009527820282184346

namespace A001973

/-- `A014126(n)+A266769(n)-A006918(n+1)` -/
def P18009527820282184346.Spec : Prop :=
  ∀ n, P18009527820282184346.a n = A001973 n

end A001973

/-! ## A001973.P3455050733939432436

`A000601(n+1)+A014126(n)-A014126(n+1)`
-/

namespace A001973.P3455050733939432436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) + (A014126 n - A014126 (n + 1))

end

end A001973.P3455050733939432436

namespace A001973

/-- `A000601(n+1)+A014126(n)-A014126(n+1)` -/
def P3455050733939432436.Spec : Prop :=
  ∀ n, P3455050733939432436.a n = A001973 n

end A001973

/-! ## A001973.P14378926575026179958

`A062890(2*n+1)+A001399(n)`
-/

namespace A001973.P14378926575026179958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (2 * n + 1) + A001399 n

end

end A001973.P14378926575026179958

namespace A001973

/-- `A062890(2*n+1)+A001399(n)` -/
def P14378926575026179958.Spec : Prop :=
  ∀ n, P14378926575026179958.a n = A001973 n

end A001973

/-! ## A001973.P1193641153591469008

`A000601(n)-A005044(2*n+1)`
-/

namespace A001973.P1193641153591469008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A005044 (2 * n + 1)

end

end A001973.P1193641153591469008

namespace A001973

/-- `A000601(n)-A005044(2*n+1)` -/
def P1193641153591469008.Spec : Prop :=
  ∀ n, P1193641153591469008.a n = A001973 n

end A001973

/-! ## A001973.P16780182543519005825

`A254594(2*n)-A069905(n+2)`
-/

namespace A001973.P16780182543519005825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n) - A069905 (n + 2)

end

end A001973.P16780182543519005825

namespace A001973

/-- `A254594(2*n)-A069905(n+2)` -/
def P16780182543519005825.Spec : Prop :=
  ∀ n, P16780182543519005825.a n = A001973 n

end A001973

/-! ## A001973.P8360313554674443524

`A001400(2*n)-A254594(2*n+1)`
-/

namespace A001973.P8360313554674443524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 * n) - A254594 (2 * n + 1)

end

end A001973.P8360313554674443524

namespace A001973

/-- `A001400(2*n)-A254594(2*n+1)` -/
def P8360313554674443524.Spec : Prop :=
  ∀ n, P8360313554674443524.a n = A001973 n

end A001973

/-! ## A001973.P421134495236777244

`A254594(2*n)-A005044(2*n+1)`
-/

namespace A001973.P421134495236777244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n) - A005044 (2 * n + 1)

end

end A001973.P421134495236777244

namespace A001973

/-- `A254594(2*n)-A005044(2*n+1)` -/
def P421134495236777244.Spec : Prop :=
  ∀ n, P421134495236777244.a n = A001973 n

end A001973

/-! ## A001973.P7989691784650829134

`A026924(2*(n+2))`
-/

namespace A001973.P7989691784650829134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026924 (2 * (n + 2))

end

end A001973.P7989691784650829134

namespace A001973

/-- `A026924(2*(n+2))` -/
def P7989691784650829134.Spec : Prop :=
  ∀ n, P7989691784650829134.a n = A001973 n

end A001973

/-!
# A001974: Numbers that are the sum of 3 distinct squares, i.e., numbers of the form x^2 + y^2 + z^2 with 0 <= x < y < z.

The programs for A001974, there is no canonical definition to state claims against.
-/

/-! ## A001974.P11036342805612829110

`∪[A004431(n+1), A004432(n+1)]`
-/

namespace A001974.P11036342805612829110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001974.P11036342805612829110

/-! ## A001974.P10032425662295380613

`lt[0, A025436(n)]`
-/

namespace A001974.P10032425662295380613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001974.P10032425662295380613

/-! ## A001974.P5476829186730483051

`eq[1, A054977(A025436(n)²)]`
-/

namespace A001974.P5476829186730483051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A025436 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P5476829186730483051

/-! ## A001974.P5248426460946265918

`eq[1, A057427(A025436(n)²)]`
-/

namespace A001974.P5248426460946265918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A025436 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P5248426460946265918

/-! ## A001974.P15765118740775383970

`eq[1, A054977(2*A025436(n))]`
-/

namespace A001974.P15765118740775383970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P15765118740775383970

/-! ## A001974.P2334897451546436690

`eq[1, A057427(2*A025436(n))]`
-/

namespace A001974.P2334897451546436690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P2334897451546436690

/-! ## A001974.P4199921241609901040

`eq[1, A300724(a(A025436(n)))]` with `a(0)=7`
-/

namespace A001974.P4199921241609901040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A300724 (f2 (A025436 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P4199921241609901040

/-! ## A001974.P3152691509958401910

`eq[A000038(n)², A000038(A025436(n))]`
-/

namespace A001974.P3152691509958401910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001974.P3152691509958401910

/-! ## A001974.P15705322950839941752

`eq[A000007(n+1), A000007(A025436(n))]`
-/

namespace A001974.P15705322950839941752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001974.P15705322950839941752

/-! ## A001974.P11192411275663166031

`eq[A000038(n+1), A000038(A025436(n))]`
-/

namespace A001974.P11192411275663166031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001974.P11192411275663166031

/-! ## A001974.P9082975048965228683

`eq[2*A000007(n), A000007(A025436(n))]`
-/

namespace A001974.P9082975048965228683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001974.P9082975048965228683

/-! ## A001974.P16874223624910517284

`eq[1, A014963(A102655(A025436(n)²+1))]`
-/

namespace A001974.P16874223624910517284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102655 (A025436 n ^ 2 + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001974.P16874223624910517284

/-!
# A001975: Number of partitions of floor(5n/2) into n nonnegative integers each no more than 5.

The programs for A001975, there is no canonical definition to state claims against.
-/

/-! ## A001975.P17330937302837721675

`A067059(∑[n+5]+15)`
-/

namespace A001975.P17330937302837721675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A001975.P17330937302837721675

/-! ## A001975.P10716094260115078675

`A316867(2*n+1)+A067059(A052905(n)+A004273(n+10))`
-/

namespace A001975.P10716094260115078675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (2 * n + 1) + A067059 (A052905 n + A004273 (n + 10)).toNat

end

end A001975.P10716094260115078675

/-! ## A001975.P10026536700630314465

`(2*(n+1)-(2*n+1))*A067059(Δ[A023551(n+1)])`
-/

namespace A001975.P10026536700630314465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (2 * n + 1 : ℤ)) * A067059 (f1 (n + 1) - f1 n).toNat

end

end A001975.P10026536700630314465

/-! ## A001975.P17789862761620913131

`or(A000007(n), A067059(A055999(n+3)))`
-/

namespace A001975.P17789862761620913131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A067059 (A055999 (n + 3)).toNat)

end

end A001975.P17789862761620913131

/-! ## A001975.P4917707200184837543

`A067059(Δ[A023551(n+1)])%A196655(n)`
-/

namespace A001975.P4917707200184837543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067059 (f1 (n + 1) - f1 n).toNat) (A196655 n)

end

end A001975.P4917707200184837543

/-!
# A001976: Number of partitions of floor(5n/2)-1 into n nonnegative integers each no more than 5.

The programs for A001976, there is no canonical definition to state claims against.
-/

/-! ## A001976.P15965546967028237701

`∑[∑[A032741(A191757(n))]]`
-/

namespace A001976.P15965546967028237701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A191757 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001976.P15965546967028237701

/-! ## A001976.P93688180185456143

`∑[eq[1, A110161(A103525(n+1))]]`
-/

namespace A001976.P93688180185456143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A103525 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001976.P93688180185456143

/-! ## A001976.P5368806699495019916

`∑[record[(A031165(n²+2)-n)%(n+1)]]`
-/

namespace A001976.P5368806699495019916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031165 (n ^ 2 + 2) - (n : ℤ)) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001976.P5368806699495019916

/-! ## A001976.P15429744594405189663

`A351290(∑[A325333(n)])`
-/

namespace A001976.P15429744594405189663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001976.P15429744594405189663

/-! ## A001976.P4195242386492043598

`∑[∑[A061398(A291000(n))]]`
-/

namespace A001976.P4195242386492043598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (A291000 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001976.P4195242386492043598

/-!
# A001977: Number of partitions of 3n into n parts from the set {0, 1, ..., 6} (repetitions admissible).

The programs for A001977, there is no canonical definition to state claims against.
-/

/-! ## A001977.P10625929402297915561

`A097852(n)+A001978(n)`
-/

namespace A001977.P10625929402297915561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 n + A001978 n

end

end A001977.P10625929402297915561

/-! ## A001977.P6266993307917594265

`A201503(∑[n+5]+5)`
-/

namespace A001977.P6266993307917594265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001977.P6266993307917594265

/-! ## A001977.P9328596358572359091

`and(A126646(n), A201503(A000217(n+5)-5))`
-/

namespace A001977.P9328596358572359091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A201503 (A000217 (n + 5) - 5).toNat)

end

end A001977.P9328596358572359091

/-! ## A001977.P13946905920921973786

`A201503(Δ[A023545(n+1)]-1)%A025094(n+1)`
-/

namespace A001977.P13946905920921973786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201503 (f1 (n + 1) - f1 n - 1).toNat) (A025094 (n + 1))

end

end A001977.P13946905920921973786

/-! ## A001977.P3887631742458254150

`A201503(A000217(n+5)-5)+A008683(A001248(n+1))`
-/

namespace A001977.P3887631742458254150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 5) - 5).toNat + A008683 (A001248 (n + 1)).toNat

end

end A001977.P3887631742458254150

/-! ## A001977.P16231377333531549916

`A183917(∑[n+2]-1)`
-/

namespace A001977.P16231377333531549916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001977.P16231377333531549916

/-! ## A001977.P1709119028617556168

`or(char[1], A183917(A034856(n+1)))`
-/

namespace A001977.P1709119028617556168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183917 (A034856 (n + 1)).toNat)

end

end A001977.P1709119028617556168

/-! ## A001977.P2935481437717909153

`A183917(Δ[A074742(n)])%A000032(n+3)`
-/

namespace A001977.P2935481437717909153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183917 (f1 (n + 1) - f1 n).toNat) (A000032 (n + 3))

end

end A001977.P2935481437717909153

/-! ## A001977.P6537658699436631826

`A183917(A034856(n+1))+A008683(4*(n+2))`
-/

namespace A001977.P6537658699436631826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A034856 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A001977.P6537658699436631826

/-!
# A001978: Number of partitions of 3n-1 into n nonnegative integers each no more than 6.

The programs for A001978, there is no canonical definition to state claims against.
-/

/-! ## A001978.P6958428791384147464

`A001977(n)-A097852(n)`
-/

namespace A001978.P6958428791384147464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 n - A097852 n

end

end A001978.P6958428791384147464

/-! ## A001978.P3912233495842729668

`A201503(∑[n+5]+5)-A097852(n)`
-/

namespace A001978.P3912233495842729668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (∑ j ∈ Finset.range (n + 1), f1 j + 5) - A097852 n

end

end A001978.P3912233495842729668

/-! ## A001978.P3844637558372154990

`and(A126646(n), A201503(A000217(n+5)-5))-A097852(n)`
-/

namespace A001978.P3844637558372154990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A201503 (A000217 (n + 5) - 5).toNat) - A097852 n

end

end A001978.P3844637558372154990

/-! ## A001978.P15804552740705236258

`A201503(Δ[A023545(n+1)]-1)%A025094(n+1)-A097852(n)`
-/

namespace A001978.P15804552740705236258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201503 (f1 (n + 1) - f1 n - 1).toNat) (A025094 (n + 1)) - A097852 n

end

end A001978.P15804552740705236258

/-! ## A001978.P1934049176068270960

`A201503(A000217(n+5)-5)+A008683(A001248(n+1))-A097852(n)`
-/

namespace A001978.P1934049176068270960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 5) - 5).toNat + A008683 (A001248 (n + 1)).toNat - A097852 n

end

end A001978.P1934049176068270960

/-! ## A001978.P2257751897953842138

`A183917(∑[n+2]-1)-A097852(n)`
-/

namespace A001978.P2257751897953842138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A097852 n

end

end A001978.P2257751897953842138

/-!
# A001979: Number of partitions of floor(7n/2) into n nonnegative integers each no more than 7.

The programs for A001979, there is no canonical definition to state claims against.
-/

/-! ## A001979.P9996446361392124857

`A067059(eq[7, A002262(n)])`
-/

namespace A001979.P9996446361392124857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001979.P9996446361392124857

/-! ## A001979.P16016259603171726931

`A067059(A167499(n+6)+2)`
-/

namespace A001979.P16016259603171726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A167499 (n + 6) + 2).toNat

end

end A001979.P16016259603171726931

/-! ## A001979.P5202798612782008041

`A067059(A167614(n+6)+4)`
-/

namespace A001979.P5202798612782008041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A167614 (n + 6) + 4).toNat

end

end A001979.P5202798612782008041

/-! ## A001979.P29318685649698549

`A067059(A000217(n+7)+7)`
-/

namespace A001979.P29318685649698549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A000217 (n + 7) + 7).toNat

end

end A001979.P29318685649698549

/-! ## A001979.P17595984411528989170

`A067059(A055998(n+5)+10)`
-/

namespace A001979.P17595984411528989170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A055998 (n + 5) + 10).toNat

end

end A001979.P17595984411528989170

/-!
# A001981: Restricted partitions.

The programs for A001981, there is no canonical definition to state claims against.
-/

/-! ## A001981.P6629272545968699788

`A097851(n)+A001982(n)`
-/

namespace A001981.P6629272545968699788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097851 n + A001982 n

end

end A001981.P6629272545968699788

/-! ## A001981.P2265970557025836495

`A201503(A133263(n+6)+6)`
-/

namespace A001981.P2265970557025836495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A133263 (n + 6) + 6).toNat

end

end A001981.P2265970557025836495

/-! ## A001981.P5141819717256880103

`A201503(A000217(n+6)+8)`
-/

namespace A001981.P5141819717256880103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 6) + 8).toNat

end

end A001981.P5141819717256880103

/-! ## A001981.P14264166750418364438

`A201503(A167614(n+4)+n+11)`
-/

namespace A001981.P14264166750418364438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 4) + (n + 11 : ℤ)).toNat

end

end A001981.P14264166750418364438

/-! ## A001981.P2679739190399463480

`A201503(A056000(n+3)+3)`
-/

namespace A001981.P2679739190399463480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A056000 (n + 3) + 3).toNat

end

end A001981.P2679739190399463480

/-! ## A001981.P7791378358486238548

`A201503(A027379(n+5)-4)`
-/

namespace A001981.P7791378358486238548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A027379 (n + 5) - 4).toNat

end

end A001981.P7791378358486238548

/-!
# A001982: Number of partitions of 4n-1 into n nonnegative integers each no greater than 8.

The programs for A001982, there is no canonical definition to state claims against.
-/

/-! ## A001982.P1497768289865211784

`A001981(n)-A097851(n)`
-/

namespace A001982.P1497768289865211784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 n - A097851 n

end

end A001982.P1497768289865211784

/-! ## A001982.P9435160232292082403

`A201503(A133263(n+6)+6)-A097851(n)`
-/

namespace A001982.P9435160232292082403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A133263 (n + 6) + 6).toNat - A097851 n

end

end A001982.P9435160232292082403

/-! ## A001982.P8876955329897750006

`A201503(A000217(n+6)+8)-A097851(n)`
-/

namespace A001982.P8876955329897750006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 6) + 8).toNat - A097851 n

end

end A001982.P8876955329897750006

/-! ## A001982.P13934429840570134606

`A201503(A167614(n+4)+n+11)-A097851(n)`
-/

namespace A001982.P13934429840570134606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 4) + (n + 11 : ℤ)).toNat - A097851 n

end

end A001982.P13934429840570134606

/-! ## A001982.P15103897188370067581

`A201503(A056000(n+3)+3)-A097851(n)`
-/

namespace A001982.P15103897188370067581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A056000 (n + 3) + 3).toNat - A097851 n

end

end A001982.P15103897188370067581

/-! ## A001982.P10031720003015010301

`A201503(A027379(n+5)-4)-A097851(n)`
-/

namespace A001982.P10031720003015010301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A027379 (n + 5) - 4).toNat - A097851 n

end

end A001982.P10031720003015010301

/-!
# A001983: Numbers that are the sum of 2 distinct squares: of form x^2 + y^2 with 0 <= x < y.

The programs for A001983, the canonical program `A001983.P13824621778224513815` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001983 has offset 1).

The definition of A001983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001983.P13824621778224513815

`∪[(n+1)², A004431(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001983

/-- `∪[(n+1)², A004431(n+1)]` -/
def P13824621778224513815.Spec : Prop :=
  ∀ n, (P13824621778224513815.a n : ℤ) = A001983 (n + 1)

theorem P13824621778224513815.correct : P13824621778224513815.Spec := by
  intro n
  simp only [A001983, Nat.add_sub_cancel]

end A001983

/-! ## A001983.P5594058733883112761

`∪[A004431(n+1), A363282(n+1)]`
-/

namespace A001983.P5594058733883112761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P5594058733883112761

namespace A001983

/-- `∪[A004431(n+1), A363282(n+1)]` -/
def P5594058733883112761.Spec : Prop :=
  ∀ n, (P5594058733883112761.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P3937439126803584231

`∪[A004431(n+1), A000290(A000027(n+1))]`
-/

namespace A001983.P3937439126803584231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000027 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P3937439126803584231

namespace A001983

/-- `∪[A004431(n+1), A000290(A000027(n+1))]` -/
def P3937439126803584231.Spec : Prop :=
  ∀ n, (P3937439126803584231.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P11151733952631470591

`A000404(A024515(n+1))/2`
-/

namespace A001983.P11151733952631470591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000404 (A024515 (n + 1)).toNat : ℚ) / 2

end

end A001983.P11151733952631470591

namespace A001983

/-- `A000404(A024515(n+1))/2` -/
def P11151733952631470591.Spec : Prop :=
  ∀ n, P11151733952631470591.a n = (A001983 (n + 1) : ℚ)

end A001983

/-! ## A001983.P14816606517477549851

`record[A000404(n+1)/A020639(A000404(n+1))]`
-/

namespace A001983.P14816606517477549851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000404 (n + 1) : ℚ) / (A020639 (A000404 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001983.P14816606517477549851

namespace A001983

/-- `record[A000404(n+1)/A020639(A000404(n+1))]` -/
def P14816606517477549851.Spec : Prop :=
  ∀ n, P14816606517477549851.a n = (A001983 (n + 1) : ℚ)

end A001983

/-! ## A001983.P5229069086870870802

`lt[0, A025435(n)]`
-/

namespace A001983.P5229069086870870802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P5229069086870870802

namespace A001983

/-- `lt[0, A025435(n)]` -/
def P5229069086870870802.Spec : Prop :=
  ∀ n, (P5229069086870870802.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P16082937686735394185

`lt[1, A000925(n)]`
-/

namespace A001983.P16082937686735394185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P16082937686735394185

namespace A001983

/-- `lt[1, A000925(n)]` -/
def P16082937686735394185.Spec : Prop :=
  ∀ n, (P16082937686735394185.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P8693556495901818394

`lt[n, 2*A143574(n)]`
-/

namespace A001983.P8693556495901818394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P8693556495901818394

namespace A001983

/-- `lt[n, 2*A143574(n)]` -/
def P8693556495901818394.Spec : Prop :=
  ∀ n, (P8693556495901818394.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P12619747348768557309

`lt[atan(1), A025426(2*n)]`
-/

namespace A001983.P12619747348768557309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A001983.P12619747348768557309

namespace A001983

/-- `lt[atan(1), A025426(2*n)]` -/
def P12619747348768557309.Spec : Prop :=
  ∀ n, (P12619747348768557309.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P17209645171804962189

`lt[n, A143574(n+1)]+1`
-/

namespace A001983.P17209645171804962189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001983.P17209645171804962189

namespace A001983

/-- `lt[n, A143574(n+1)]+1` -/
def P17209645171804962189.Spec : Prop :=
  ∀ n, (P17209645171804962189.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P3643118248629515194

`record[(n+1)%(A000925(n+1)+n)]`
-/

namespace A001983.P3643118248629515194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000925 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001983.P3643118248629515194

namespace A001983

/-- `record[(n+1)%(A000925(n+1)+n)]` -/
def P3643118248629515194.Spec : Prop :=
  ∀ n, P3643118248629515194.a n = A001983 (n + 1)

end A001983

/-! ## A001983.P15155772825793486694

`eq[1, A091247(2*A000925(n))]`
-/

namespace A001983.P15155772825793486694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001983.P15155772825793486694

namespace A001983

/-- `eq[1, A091247(2*A000925(n))]` -/
def P15155772825793486694.Spec : Prop :=
  ∀ n, (P15155772825793486694.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P9413116647179206918

`lt[A002828(n)+2, A004018(n)]`
-/

namespace A001983.P9413116647179206918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001983.P9413116647179206918

namespace A001983

/-- `lt[A002828(n)+2, A004018(n)]` -/
def P9413116647179206918.Spec : Prop :=
  ∀ n, (P9413116647179206918.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P4522844489434036520

`lt[char[2*n²], A000161(n)]`
-/

namespace A001983.P4522844489434036520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A001983.P4522844489434036520

namespace A001983

/-- `lt[char[2*n²], A000161(n)]` -/
def P4522844489434036520.Spec : Prop :=
  ∀ n, (P4522844489434036520.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P6948550266958816958

`lt[A000007(n), A025426(2*n)]`
-/

namespace A001983.P6948550266958816958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001983.P6948550266958816958

namespace A001983

/-- `lt[A000007(n), A025426(2*n)]` -/
def P6948550266958816958.Spec : Prop :=
  ∀ n, (P6948550266958816958.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P12322558871602250387

`lt[0, A063725(2*n)]`
-/

namespace A001983.P12322558871602250387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P12322558871602250387

namespace A001983

/-- `lt[0, A063725(2*n)]` -/
def P12322558871602250387.Spec : Prop :=
  ∀ n, (P12322558871602250387.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P10188461138714218941

`lt[1, A037214(2*n)+1]`
-/

namespace A001983.P10188461138714218941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P10188461138714218941

namespace A001983

/-- `lt[1, A037214(2*n)+1]` -/
def P10188461138714218941.Spec : Prop :=
  ∀ n, (P10188461138714218941.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P1712260981063388734

`lt[1, A347801(2*n)+1]`
-/

namespace A001983.P1712260981063388734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P1712260981063388734

namespace A001983

/-- `lt[1, A347801(2*n)+1]` -/
def P1712260981063388734.Spec : Prop :=
  ∀ n, (P1712260981063388734.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P10696516540012470874

`eq[1, A266314(2*n+1)]+1`
-/

namespace A001983.P10696516540012470874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001983.P10696516540012470874

namespace A001983

/-- `eq[1, A266314(2*n+1)]+1` -/
def P10696516540012470874.Spec : Prop :=
  ∀ n, (P10696516540012470874.a n : ℤ) = A001983 (n + 1)

end A001983

/-! ## A001983.P134292557255718110

`lt[1, A007504(A037214(2*n))]`
-/

namespace A001983.P134292557255718110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A037214 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001983.P134292557255718110

namespace A001983

/-- `lt[1, A007504(A037214(2*n))]` -/
def P134292557255718110.Spec : Prop :=
  ∀ n, (P134292557255718110.a n : ℤ) = A001983 (n + 1)

end A001983

/-!
# A001985: Class numbers of quadratic fields.

The programs for A001985, there is no canonical definition to state claims against.
-/

/-! ## A001985.P9750241309894909459

`A000003(A045535(n+1))`
-/

namespace A001985.P9750241309894909459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A045535 (n + 1)).toNat

end

end A001985.P9750241309894909459

/-! ## A001985.P11333968180366278533

`A000003(A002223(n+2))`
-/

namespace A001985.P11333968180366278533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A002223 (n + 2)).toNat

end

end A001985.P11333968180366278533

/-! ## A001985.P14715670045066226858

`A000003(A147972(n+2))`
-/

namespace A001985.P14715670045066226858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A147972 (n + 2)).toNat

end

end A001985.P14715670045066226858

/-! ## A001985.P2337582240662813581

`A000003(A000229(n+3))`
-/

namespace A001985.P2337582240662813581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A000229 (n + 3)).toNat

end

end A001985.P2337582240662813581

/-!
# A001986: Let p be the n-th odd prime. Then a(n) is the least prime congruent to 3 modulo 8 such that Legendre(-a(n), q) = -1 for all odd primes q <= p.

The programs for A001986, there is no canonical definition to state claims against.
-/

/-! ## A001986.P16312927012139238034

`A094841(A043316(n+1))`
-/

namespace A001986.P16312927012139238034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A043316 (n + 1)).toNat

end

end A001986.P16312927012139238034

/-! ## A001986.P7186287616369854786

`A094841(A044913(n+1))`
-/

namespace A001986.P7186287616369854786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A044913 (n + 1)).toNat

end

end A001986.P7186287616369854786

/-! ## A001986.P647536588356982220

`A094841(A049872(n+1))`
-/

namespace A001986.P647536588356982220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A049872 (n + 1)).toNat

end

end A001986.P647536588356982220

/-! ## A001986.P6553938136546913605

`A094841(A061147(n+1))`
-/

namespace A001986.P6553938136546913605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094841 (A061147 (n + 1)).toNat

end

end A001986.P6553938136546913605

/-!
# A001987: Class numbers associated with terms of A001986.

The programs for A001987, there is no canonical definition to state claims against.
-/

/-! ## A001987.P3571816818633556138

`A136640(A091916(n))`
-/

namespace A001987.P3571816818633556138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136640 (A091916 n).toNat

end

end A001987.P3571816818633556138

/-! ## A001987.P9975897457838642870

`79%A016825(A288549(n))`
-/

namespace A001987.P9975897457838642870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 79 (A016825 (A288549 (n + 10)).toNat)

end

end A001987.P9975897457838642870

/-! ## A001987.P2047779064634618301

`A302494(A055640(n)^A070770(n))`
-/

namespace A001987.P2047779064634618301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302494 (SequenceMachineLib.roundAway ((A055640 n : ℚ) ^ (A070770 n : ℤ))).toNat

end

end A001987.P2047779064634618301

/-! ## A001987.P10882192916066167882

`A309876(A147037(n+1))%A297094(n+1)`
-/

namespace A001987.P10882192916066167882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309876 (A147037 (n + 1)).toNat) (A297094 (n + 1))

end

end A001987.P10882192916066167882

/-! ## A001987.P8661645068492680032

`A292675(A229890(n))`
-/

namespace A001987.P8661645068492680032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292675 (A229890 n).toNat

end

end A001987.P8661645068492680032

/-!
# A001988: Let p be the n-th odd prime. a(n) is the least prime congruent to 7 modulo 8 such that Legendre(-a(n), q) = -Legendre(-1, q) for all odd primes q <= p.

The programs for A001988, there is no canonical definition to state claims against.
-/

/-! ## A001988.P15046138615226852054

`A140633(ceil(ratio[A099952(n+1)]))`
-/

namespace A001988.P15046138615226852054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A001988.P15046138615226852054

/-! ## A001988.P11222067543107776211

`A139987(A320509(n)%A068387(n+1))`
-/

namespace A001988.P11222067543107776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139987 (Int.tmod (A320509 n) (A068387 (n + 1))).toNat

end

end A001988.P11222067543107776211

/-!
# A001992: Let p = n-th odd prime. Then a(n) is the least prime congruent to 5 modulo 8 such that Legendre(a(n), q) = -1 for all odd primes q <= p.

The programs for A001992, there is no canonical definition to state claims against.
-/

/-! ## A001992.P15194620395356429712

`A213052(A228731(2*n+3)+A217152(2*n+1))`
-/

namespace A001992.P15194620395356429712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213052 (A228731 (2 * n + 3) + A217152 (2 * n + 1)).toNat

end

end A001992.P15194620395356429712

/-! ## A001992.P2728694689463950543

`A280508(A346372(n))+A094847(n+1)`
-/

namespace A001992.P2728694689463950543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A346372 n).toNat + A094847 (n + 1)

end

end A001992.P2728694689463950543

/-!
# A001993: Number of two-rowed partitions of length 3.

The programs for A001993, the canonical program `A001993.P18417217778146458521` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001993 has offset 0).

The definition of A001993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001993.P18417217778146458521

`A213506(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001993

/-- `A213506(n)+a(n-2)` -/
def P18417217778146458521.Spec : Prop :=
  ∀ n, P18417217778146458521.a n = A001993 n

theorem P18417217778146458521.correct : P18417217778146458521.Spec := by
  intro n
  simp only [A001993]

end A001993

/-! ## A001993.P10752632005413768545

`A115264(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001993.P10752632005413768545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A115264 n + a (n - 3)

end

end A001993.P10752632005413768545

namespace A001993

/-- `A115264(n)+a(n-3)` -/
def P10752632005413768545.Spec : Prop :=
  ∀ n, P10752632005413768545.a n = A001993 n

end A001993

/-! ## A001993.P5805690659354778925

`A117485(n+12)-A139672(n+4)`
-/

namespace A001993.P5805690659354778925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117485 (n + 12) - A139672 (n + 4)

end

end A001993.P5805690659354778925

namespace A001993

/-- `A117485(n+12)-A139672(n+4)` -/
def P5805690659354778925.Spec : Prop :=
  ∀ n, P5805690659354778925.a n = A001993 n

end A001993

/-! ## A001993.P10744196438092430059

`A029265(2*n)+∑[∑[A029265(2*n+1)]]`
-/

namespace A001993.P10744196438092430059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001993.P10744196438092430059

namespace A001993

/-- `A029265(2*n)+∑[∑[A029265(2*n+1)]]` -/
def P10744196438092430059.Spec : Prop :=
  ∀ n, P10744196438092430059.a n = A001993 n

end A001993

/-! ## A001993.P12899252213070571316

`A001994(n)+A003402(n)-A001401(n)`
-/

namespace A001993.P12899252213070571316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001994 n + (A003402 n - A001401 n)

end

end A001993.P12899252213070571316

namespace A001993

/-- `A001994(n)+A003402(n)-A001401(n)` -/
def P12899252213070571316.Spec : Prop :=
  ∀ n, P12899252213070571316.a n = A001993 n

end A001993

/-!
# A001994: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^4)*(1-x^5)).

The programs for A001994, the canonical program `A001994.P17494852253576274744` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001994 has offset 0).

The definition of A001994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+x^4+x^5+x^6-2x^8-2x^9+x^11+x^12+x^13+x^14-2x^15-x^16+x^17))` (program `A001994.P17494852253576274744`, by `A001994.P17494852253576274744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001994.P17494852253576274744

`ogf(1/(1-x-2x^2+x^3+x^4+x^5+x^6-2x^8-2x^9+x^11+x^12+x^13+x^14-2x^15-x^16+x^17))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001994

/-- `ogf(1/(1-x-2x^2+x^3+x^4+x^5+x^6-2x^8-2x^9+x^11+x^12+x^13+x^14-2x^15-x^16+x^17))` -/
def P17494852253576274744.Spec : Prop :=
  ∀ n, P17494852253576274744.a n = A001994 n

theorem P17494852253576274744.correct : P17494852253576274744.Spec := by
  intro n
  simp only [A001994]

end A001994

/-! ## A001994.P133657678911103182

`A002622(n)-a(n-1)` with `a(0)=1`
-/

namespace A001994.P133657678911103182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002622 n - a (n - 1)

end

end A001994.P133657678911103182

namespace A001994

/-- `A002622(n)-a(n-1)` -/
def P133657678911103182.Spec : Prop :=
  ∀ n, P133657678911103182.a n = A001994 n

end A001994

/-! ## A001994.P12202253029654669728

`A001401(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001994.P12202253029654669728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001401 n + a (n - 2)

end

end A001994.P12202253029654669728

namespace A001994

/-- `A001401(n)+a(n-2)` -/
def P12202253029654669728.Spec : Prop :=
  ∀ n, P12202253029654669728.a n = A001994 n

end A001994

/-! ## A001994.P15448442531553506365

`∑[∑[A008667(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A001994.P15448442531553506365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008667 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001994.P15448442531553506365

namespace A001994

/-- `∑[∑[A008667(n)-a(n-1)]]` -/
def P15448442531553506365.Spec : Prop :=
  ∀ n, P15448442531553506365.a n = A001994 n

end A001994

/-! ## A001994.P5648566172564105358

`A266768(2*n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001994.P5648566172564105358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A266768 (2 * n) + a (n - 2)

end

end A001994.P5648566172564105358

namespace A001994

/-- `A266768(2*n)+a(n-2)` -/
def P5648566172564105358.Spec : Prop :=
  ∀ n, P5648566172564105358.a n = A001994 n

end A001994

/-! ## A001994.P5593623411883204635

`∑[A026811(n+5)-a(n-1)]` with `a(0)=1`
-/

namespace A001994.P5593623411883204635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026811 (n + 5) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001994.P5593623411883204635

namespace A001994

/-- `∑[A026811(n+5)-a(n-1)]` -/
def P5593623411883204635.Spec : Prop :=
  ∀ n, P5593623411883204635.a n = A001994 n

end A001994

/-! ## A001994.P2999672721089933093

`∑[A029340(2*n)+∑[A029340(2*n+1)]]`
-/

namespace A001994.P2999672721089933093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001994.P2999672721089933093

namespace A001994

/-- `∑[A029340(2*n)+∑[A029340(2*n+1)]]` -/
def P2999672721089933093.Spec : Prop :=
  ∀ n, P2999672721089933093.a n = A001994 n

end A001994

/-!
# A001995: Numbers that are the sum of 5 distinct squares: of form v^2 + w^2 + x^2 + y^2 + z^2 with 0 <= v < w < x < y < z.

The programs for A001995, there is no canonical definition to state claims against.
-/

/-! ## A001995.P5372326931773229805

`eq[0, A151933(A025438(n))]`
-/

namespace A001995.P5372326931773229805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A025438 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001995.P5372326931773229805

/-!
# A001996: Number of partitions of n into parts 2, 3, 4, 5, 6, 7.

The programs for A001996, there is no canonical definition to state claims against.
-/

/-! ## A001996.P12246618204843460956

`Δ[A026813(n+6)]`
-/

namespace A001996.P12246618204843460956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P12246618204843460956

/-! ## A001996.P16431013070428855453

`Δ[A266770(2*n+5)]`
-/

namespace A001996.P16431013070428855453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P16431013070428855453

/-! ## A001996.P14909420085695193309

`A060026(n)+A026813(n)`
-/

namespace A001996.P14909420085695193309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060026 n + A026813 n

end

end A001996.P14909420085695193309

/-! ## A001996.P4404503936502496502

`A008636(n)-A026813(n+6)`
-/

namespace A001996.P4404503936502496502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026813 (n + 6)

end

end A001996.P4404503936502496502

/-! ## A001996.P96454508057473638

`Δ[A266770(A020735(n+1))%A006857(n)]`
-/

namespace A001996.P96454508057473638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266770 (A020735 (n + 1)).toNat) (A006857 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P96454508057473638

/-! ## A001996.P17320484750020380697

`Δ[A266770(A020735(n+1))]%A129210(n+5)`
-/

namespace A001996.P17320484750020380697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (A020735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A129210 (n + 5))

end

end A001996.P17320484750020380697

/-! ## A001996.P9426591639002990249

`A333925(A052905(n+4)-2)`
-/

namespace A001996.P9426591639002990249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A052905 (n + 4) - 2).toNat

end

end A001996.P9426591639002990249

/-! ## A001996.P15769809832404456238

`A333925(A000096(n+6)-6)`
-/

namespace A001996.P15769809832404456238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A000096 (n + 6) - 6).toNat

end

end A001996.P15769809832404456238

/-! ## A001996.P1662401085382249515

`A333925(A000217(n+7)-7)`
-/

namespace A001996.P1662401085382249515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A000217 (n + 7) - 7).toNat

end

end A001996.P1662401085382249515

/-! ## A001996.P3054367057006475311

`A333925(2*n+A000096(n+4)+7)`
-/

namespace A001996.P3054367057006475311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A001996.P3054367057006475311

/-! ## A001996.P5459478694513322513

`Δ[A072233(A167487(n+5))]`
-/

namespace A001996.P5459478694513322513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A167487 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P5459478694513322513

/-! ## A001996.P7600599377186387980

`Δ[A072233(A167499(n+5)+2)]`
-/

namespace A001996.P7600599377186387980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A167499 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P7600599377186387980

/-! ## A001996.P17957693613548447701

`Δ[A072233(A000124(n+6)+6)]`
-/

namespace A001996.P17957693613548447701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000124 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P17957693613548447701

/-! ## A001996.P2542010560059305089

`Δ[A072233(A000217(n+6)+7)]`
-/

namespace A001996.P2542010560059305089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001996.P2542010560059305089

/-!
# A001997: Number of different shapes formed by bending a piece of wire of length n in the plane.

The programs for A001997, there is no canonical definition to state claims against.
-/

/-! ## A001997.P17329951331098020749

`A000664(n)-A127324(A319787(n))`
-/

namespace A001997.P17329951331098020749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 n - A127324 (A319787 n).toNat

end

end A001997.P17329951331098020749

/-! ## A001997.P5810010113796028303

`A003104(n+1)-A004526(A308349(n+1))`
-/

namespace A001997.P5810010113796028303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003104 (n + 1) - A004526 (A308349 (n + 1)).toNat

end

end A001997.P5810010113796028303

/-! ## A001997.P17362150868460305746

`A003104(n+1)-A027868(A323927(n+1))`
-/

namespace A001997.P17362150868460305746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003104 (n + 1) - A027868 (A323927 (n + 1)).toNat

end

end A001997.P17362150868460305746

/-! ## A001997.P13038205526345869545

`A038142(n+1)-(A323851(n+1)+A004526(A308349(n+1)))`
-/

namespace A001997.P13038205526345869545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - (A323851 (n + 1) + A004526 (A308349 (n + 1)).toNat)

end

end A001997.P13038205526345869545

/-! ## A001997.P13889450099613360738

`A038142(n+1)-(A323851(n+1)+A027868(A323927(n+1)))`
-/

namespace A001997.P13889450099613360738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - (A323851 (n + 1) + A027868 (A323927 (n + 1)).toNat)

end

end A001997.P13889450099613360738

/-!
# A001998: Bending a piece of wire of length n+1; walks of length n+1 on a tetrahedron; also non-branched catafusenes with n+2 condensed hexagons.

The programs for A001998, the canonical program `A001998.P10252871859265119530` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001998 has offset 0).

The definition of A001998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001998.P10252871859265119530

`4*a(n-1)-12*a(n-3)+9*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001998

/-- `4*a(n-1)-12*a(n-3)+9*a(n-4)` -/
def P10252871859265119530.Spec : Prop :=
  ∀ n, P10252871859265119530.a n = A001998 n

theorem P10252871859265119530.correct : P10252871859265119530.Spec := by
  intro n
  simp only [A001998]

end A001998

/-! ## A001998.P13355939616476538307

`∑[3^(n-2)+3*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001998.P13355939616476538307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 3 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001998.P13355939616476538307

namespace A001998

/-- `∑[3^(n-2)+3*a(n-2)]` -/
def P13355939616476538307.Spec : Prop :=
  ∀ n, P13355939616476538307.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P3143906083652834698

`(3-1/gcd(a(n-1), a(n-2)))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001998.P3143906083652834698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 - 1 / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)) * a (n - 1)

end

end A001998.P3143906083652834698

namespace A001998

/-- `(3-1/gcd(a(n-1), a(n-2)))*a(n-1)` -/
def P3143906083652834698.Spec : Prop :=
  ∀ n, P3143906083652834698.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P723410080891970708

`∑{d}[n+1, A056332(#)]`
-/

namespace A001998.P723410080891970708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056332 d

end

end A001998.P723410080891970708

namespace A001998

/-- `∑{d}[n+1, A056332(#)]` -/
def P723410080891970708.Spec : Prop :=
  ∀ n, P723410080891970708.a n = A001998 n

end A001998

/-! ## A001998.P5965134673072195295

`A001444(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001998.P5965134673072195295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001444 (n - 1) + a (n - 1)

end

end A001998.P5965134673072195295

namespace A001998

/-- `A001444(n-1)+a(n-1)` -/
def P5965134673072195295.Spec : Prop :=
  ∀ n, P5965134673072195295.a n = A001998 n

end A001998

/-! ## A001998.P5332525150055754564

`A232801(n)+A122983(n)`
-/

namespace A001998.P5332525150055754564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 n + A122983 n

end

end A001998.P5332525150055754564

namespace A001998

/-- `A232801(n)+A122983(n)` -/
def P5332525150055754564.Spec : Prop :=
  ∀ n, P5332525150055754564.a n = A001998 n

end A001998

/-! ## A001998.P14208514299546612368

`∑[A001444(log2(A011782(n)))]`
-/

namespace A001998.P14208514299546612368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001998.P14208514299546612368

namespace A001998

/-- `∑[A001444(log2(A011782(n)))]` -/
def P14208514299546612368.Spec : Prop :=
  ∀ n, P14208514299546612368.a n = A001998 n

end A001998

/-! ## A001998.P957516916257697829

`(A038754(n)+A007051(n))/2`
-/

namespace A001998.P957516916257697829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 n + A007051 n : ℚ) / 2

end

end A001998.P957516916257697829

namespace A001998

/-- `(A038754(n)+A007051(n))/2` -/
def P957516916257697829.Spec : Prop :=
  ∀ n, P957516916257697829.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P11207049649848059706

`A056327(n+1)+A005418(n+1)`
-/

namespace A001998.P11207049649848059706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056327 (n + 1) + A005418 (n + 1)

end

end A001998.P11207049649848059706

namespace A001998

/-- `A056327(n+1)+A005418(n+1)` -/
def P11207049649848059706.Spec : Prop :=
  ∀ n, P11207049649848059706.a n = A001998 n

theorem P11207049649848059706.correct : P11207049649848059706.Spec := by
  intro n
  simp only [A001998, Nat.add_sub_cancel, A001998.P11207049649848059706.a, A001998.P10252871859265119530.a, A005418, A005418.P14643345169787210303.a, A056327, A056327.P11311420995062191100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001998

/-! ## A001998.P10956317261642204118

`1+A056326(n+1)+A056327(n+1)`
-/

namespace A001998.P10956317261642204118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A056326 (n + 1) + A056327 (n + 1)

end

end A001998.P10956317261642204118

namespace A001998

/-- `1+A056326(n+1)+A056327(n+1)` -/
def P10956317261642204118.Spec : Prop :=
  ∀ n, P10956317261642204118.a n = A001998 n

theorem P10956317261642204118.correct : P10956317261642204118.Spec := by
  intro n
  simp only [A001998, Nat.add_sub_cancel, A001998.P10956317261642204118.a, A001998.P10252871859265119530.a, A056326, A056326.P13285734018320765165.a, A056327, A056327.P11311420995062191100.a, A005418, A005418.P14643345169787210303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001998

/-! ## A001998.P18061802853597497221

`(A182522(n+1)+A124302(n+1))/2`
-/

namespace A001998.P18061802853597497221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182522 (n + 1) + A124302 (n + 1) : ℚ) / 2

end

end A001998.P18061802853597497221

namespace A001998

/-- `(A182522(n+1)+A124302(n+1))/2` -/
def P18061802853597497221.Spec : Prop :=
  ∀ n, P18061802853597497221.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P9721454200528542339

`∑[A001444(A004526(A004275(n)))]`
-/

namespace A001998.P9721454200528542339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001998.P9721454200528542339

namespace A001998

/-- `∑[A001444(A004526(A004275(n)))]` -/
def P9721454200528542339.Spec : Prop :=
  ∀ n, P9721454200528542339.a n = A001998 n

end A001998

/-! ## A001998.P2461696913904158812

`∑[A001444(A004526(A163985(n)))]`
-/

namespace A001998.P2461696913904158812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (A004526 (A163985 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001998.P2461696913904158812

namespace A001998

/-- `∑[A001444(A004526(A163985(n)))]` -/
def P2461696913904158812.Spec : Prop :=
  ∀ n, P2461696913904158812.a n = A001998 n

end A001998

/-! ## A001998.P2491418573581178780

`(A032120(n)+A007051(A004526(n)))/2`
-/

namespace A001998.P2491418573581178780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032120 n + A007051 (A004526 n).toNat : ℚ) / 2

end

end A001998.P2491418573581178780

namespace A001998

/-- `(A032120(n)+A007051(A004526(n)))/2` -/
def P2491418573581178780.Spec : Prop :=
  ∀ n, P2491418573581178780.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P15193875469210641862

`A007051(A004526(n+1))*A007051(A004526(n))`
-/

namespace A001998.P15193875469210641862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A004526 (n + 1)).toNat * A007051 (A004526 n).toNat

end

end A001998.P15193875469210641862

namespace A001998

/-- `A007051(A004526(n+1))*A007051(A004526(n))` -/
def P15193875469210641862.Spec : Prop :=
  ∀ n, P15193875469210641862.a n = A001998 n

end A001998

/-! ## A001998.P224455465373644409

`∑[A001444(n)]+1-A001444(n)`
-/

namespace A001998.P224455465373644409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A001444 n)

end

end A001998.P224455465373644409

namespace A001998

/-- `∑[A001444(n)]+1-A001444(n)` -/
def P224455465373644409.Spec : Prop :=
  ∀ n, P224455465373644409.a n = A001998 n

end A001998

/-! ## A001998.P14638803761034138263

`A001444(n)/A000244(n)*A032120(n)`
-/

namespace A001998.P14638803761034138263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001444 n : ℚ) / (A000244 n : ℚ) * (A032120 n : ℚ)

end

end A001998.P14638803761034138263

namespace A001998

/-- `A001444(n)/A000244(n)*A032120(n)` -/
def P14638803761034138263.Spec : Prop :=
  ∀ n, P14638803761034138263.a n = (A001998 n : ℚ)

end A001998

/-! ## A001998.P13735623970589423034

`A178778(n+1)-(A178778(n)+A001444(n))`
-/

namespace A001998.P13735623970589423034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178778 (n + 1) - (A178778 n + A001444 n)

end

end A001998.P13735623970589423034

namespace A001998

/-- `A178778(n+1)-(A178778(n)+A001444(n))` -/
def P13735623970589423034.Spec : Prop :=
  ∀ n, P13735623970589423034.a n = A001998 n

end A001998

/-! ## A001998.P915329038247712776

`A124302(n+1)+A167993(n+1)-A107767(n+1)`
-/

namespace A001998.P915329038247712776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + (A167993 (n + 1) - A107767 (n + 1))

end

end A001998.P915329038247712776

namespace A001998

/-- `A124302(n+1)+A167993(n+1)-A107767(n+1)` -/
def P915329038247712776.Spec : Prop :=
  ∀ n, P915329038247712776.a n = A001998 n

end A001998

/-! ## A001998.P16924764071637876562

`A107767(n+1)+A182522(n+1)-A167993(n+1)`
-/

namespace A001998.P16924764071637876562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (n + 1) + (A182522 (n + 1) - A167993 (n + 1))

end

end A001998.P16924764071637876562

namespace A001998

/-- `A107767(n+1)+A182522(n+1)-A167993(n+1)` -/
def P16924764071637876562.Spec : Prop :=
  ∀ n, P16924764071637876562.a n = A001998 n

end A001998

/-!
# A001999: 

The programs for A001999, there is no canonical definition to state claims against.
-/

/-! ## A001999.P2556267072710978144

`A005248(3^n)`
-/

namespace A001999.P2556267072710978144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (3 ^ n)

end

end A001999.P2556267072710978144

