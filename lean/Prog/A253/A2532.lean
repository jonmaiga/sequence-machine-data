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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A253203: The least square larger than n with same parity as n.

The programs for A253203, the canonical program `A253203.P13303616197894554342` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253203 has offset 1).

The definition of A253203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256244, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253203.P13303616197894554342

`A256244(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253203

/-- `A256244(n+1)²` -/
def P13303616197894554342.Spec : Prop :=
  ∀ n, P13303616197894554342.a n = A253203 (n + 1)

theorem P13303616197894554342.correct : P13303616197894554342.Spec := by
  intro n
  simp only [A253203, Nat.add_sub_cancel]

end A253203

/-! ## A253203.P11686427439614057669

`(or(1, comp[2*(C(n, 2)-1)]+1)-n)²`
-/

namespace A253203.P11686427439614057669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 2 : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - (n : ℤ)) ^ 2

end

end A253203.P11686427439614057669

namespace A253203

/-- `(or(1, comp[2*(C(n, 2)-1)]+1)-n)²` -/
def P11686427439614057669.Spec : Prop :=
  ∀ n, P11686427439614057669.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P15776652332389881767

`(or(1, comp[2*(C(n, 2)-1)]+1)-n)^2`
-/

namespace A253203.P15776652332389881767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 2 : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - (n : ℤ)) ^ 2

end

end A253203.P15776652332389881767

namespace A253203

/-- `(or(1, comp[2*(C(n, 2)-1)]+1)-n)^2` -/
def P15776652332389881767.Spec : Prop :=
  ∀ n, P15776652332389881767.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P9422640812556693384

`Δ[A256243(n+1)]²`
-/

namespace A253203.P9422640812556693384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A253203.P9422640812556693384

namespace A253203

/-- `Δ[A256243(n+1)]²` -/
def P9422640812556693384.Spec : Prop :=
  ∀ n, P9422640812556693384.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P1170955724783622901

`(A257564(n+1)+2)²`
-/

namespace A253203.P1170955724783622901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257564 (n + 1) + 2) ^ 2

end

end A253203.P1170955724783622901

namespace A253203

/-- `(A257564(n+1)+2)²` -/
def P1170955724783622901.Spec : Prop :=
  ∀ n, P1170955724783622901.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P41354214714755040

`(A086520(n+3)+1)²`
-/

namespace A253203.P41354214714755040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086520 (n + 3) + 1) ^ 2

end

end A253203.P41354214714755040

namespace A253203

/-- `(A086520(n+3)+1)²` -/
def P41354214714755040.Spec : Prop :=
  ∀ n, P41354214714755040.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P9827215535495239903

`A197702(or(2, n+1))²`
-/

namespace A253203.P9827215535495239903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (Nat.lor 2 (n + 1)) ^ 2

end

end A253203.P9827215535495239903

namespace A253203

/-- `A197702(or(2, n+1))²` -/
def P9827215535495239903.Spec : Prop :=
  ∀ n, P9827215535495239903.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P9173736317831705581

`A256244(C(n+1, n))^2`
-/

namespace A253203.P9173736317831705581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (Nat.choose (n + 1) n) ^ 2

end

end A253203.P9173736317831705581

namespace A253203

/-- `A256244(C(n+1, n))^2` -/
def P9173736317831705581.Spec : Prop :=
  ∀ n, P9173736317831705581.a n = A253203 (n + 1)

theorem P9173736317831705581.correct : P9173736317831705581.Spec := by
  intro n
  simp only [A253203, Nat.add_sub_cancel, A253203.P9173736317831705581.a, A253203.P13303616197894554342.a, SequenceMachineLib.memo_apply]
  try simp

end A253203

/-! ## A253203.P16140177886886239005

`A256244(-xor(n, -1))^2`
-/

namespace A253203.P16140177886886239005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A253203.P16140177886886239005

namespace A253203

/-- `A256244(-xor(n, -1))^2` -/
def P16140177886886239005.Spec : Prop :=
  ∀ n, P16140177886886239005.a n = A253203 (n + 1)

end A253203

/-! ## A253203.P9147057200565798390

`A197702(A174091(n+1))²`
-/

namespace A253203.P9147057200565798390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (A174091 (n + 1)).toNat ^ 2

end

end A253203.P9147057200565798390

namespace A253203

/-- `A197702(A174091(n+1))²` -/
def P9147057200565798390.Spec : Prop :=
  ∀ n, P9147057200565798390.a n = A253203 (n + 1)

end A253203

/-!
# A253204: a(1) = 1; for n>1, a(n) is a prime power p^h (h>=1) with the property that its k-th smallest divisor, for all 1 <= k <= tau(p^h), contains exactly k "1" digits in its binary representation.

The programs for A253204, there is no canonical definition to state claims against.
-/

/-! ## A253204.P6711081460734750595

`∩[A143512(n+1), A354724(n+1)]`
-/

namespace A253204.P6711081460734750595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253204.P6711081460734750595

/-! ## A253204.P5099473666985585875

`filter[A255401(n+1), A324290(#)]`
-/

namespace A253204.P5099473666985585875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A253204.P5099473666985585875

/-! ## A253204.P7961121944510997011

`filter[A255401(n+1), A354923(#)]`
-/

namespace A253204.P7961121944510997011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A253204.P7961121944510997011

/-!
# A253205: Natural numbers n such that n-1 is divisible by the sum of the decimal digits of n.

The programs for A253205, the canonical program `A253205.P9230231232005101634` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253205 has offset 1).

The definition of A253205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253205.P9230231232005101634

`record[gcd(n+1, n%A007953(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253205

/-- `record[gcd(n+1, n%A007953(n+1))]` -/
def P9230231232005101634.Spec : Prop :=
  ∀ n, (P9230231232005101634.a n : ℤ) = A253205 (n + 1)

theorem P9230231232005101634.correct : P9230231232005101634.Spec := by
  intro n
  simp only [A253205, Nat.add_sub_cancel]

end A253205

/-! ## A253205.P3607598642591949795

`eq[n-1, lcm(n-1, A062028(n)-n)]`
-/

namespace A253205.P3607598642591949795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A062028 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A253205.P3607598642591949795

namespace A253205

/-- `eq[n-1, lcm(n-1, A062028(n)-n)]` -/
def P3607598642591949795.Spec : Prop :=
  ∀ n, (P3607598642591949795.a n : ℤ) = A253205 (n + 1)

end A253205

/-! ## A253205.P14124952470460889483

`eq[gcd(1-n, A007953(n)), A007953(n)]`
-/

namespace A253205.P14124952470460889483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A007953 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253205.P14124952470460889483

namespace A253205

/-- `eq[gcd(1-n, A007953(n)), A007953(n)]` -/
def P14124952470460889483.Spec : Prop :=
  ∀ n, (P14124952470460889483.a n : ℤ) = A253205 (n + 1)

end A253205

/-! ## A253205.P4155661145549052408

`eq[n-1, lcm(A007953(n), A024000(n))]`
-/

namespace A253205.P4155661145549052408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007953 n) (A024000 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A253205.P4155661145549052408

namespace A253205

/-- `eq[n-1, lcm(A007953(n), A024000(n))]` -/
def P4155661145549052408.Spec : Prop :=
  ∀ n, (P4155661145549052408.a n : ℤ) = A253205 (n + 1)

end A253205

/-! ## A253205.P16482535831076194200

`eq[n-1, lcm(n-1, A004092(A008706(n)))]`
-/

namespace A253205.P16482535831076194200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A004092 (A008706 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A253205.P16482535831076194200

namespace A253205

/-- `eq[n-1, lcm(n-1, A004092(A008706(n)))]` -/
def P16482535831076194200.Spec : Prop :=
  ∀ n, (P16482535831076194200.a n : ℤ) = A253205 (n + 1)

end A253205

/-!
# A253206: Coefficients of the Dirichlet series for zeta(5*s)/zeta(s).

The programs for A253206, the canonical program `A253206.P16651869948344728529` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253206 has offset 1).

The definition of A253206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253206.P18191510537129422338

`∏{e}[n+1, A010891(#)]`
-/

namespace A253206.P18191510537129422338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010891 (Nat.factorization (f1 n) p)

end

end A253206.P18191510537129422338

namespace A253206

/-- `∏{e}[n+1, A010891(#)]` -/
def P18191510537129422338.Spec : Prop :=
  ∀ n, P18191510537129422338.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P1510530771045783819

`∏{e}[n+1, A011644(#)]`
-/

namespace A253206.P1510530771045783819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011644 (Nat.factorization (f1 n) p)

end

end A253206.P1510530771045783819

namespace A253206

/-- `∏{e}[n+1, A011644(#)]` -/
def P1510530771045783819.Spec : Prop :=
  ∀ n, P1510530771045783819.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P16923892787486785783

`∏{e}[n+1, A011647(#)]`
-/

namespace A253206.P16923892787486785783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011647 (Nat.factorization (f1 n) p)

end

end A253206.P16923892787486785783

namespace A253206

/-- `∏{e}[n+1, A011647(#)]` -/
def P16923892787486785783.Spec : Prop :=
  ∀ n, P16923892787486785783.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P7547012766788458884

`∏{e}[n+1, A011653(#)]`
-/

namespace A253206.P7547012766788458884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011653 (Nat.factorization (f1 n) p)

end

end A253206.P7547012766788458884

namespace A253206

/-- `∏{e}[n+1, A011653(#)]` -/
def P7547012766788458884.Spec : Prop :=
  ∀ n, P7547012766788458884.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P16651869948344728529

`A117444(A007426(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253206

/-- `A117444(A007426(n+1))` -/
def P16651869948344728529.Spec : Prop :=
  ∀ n, P16651869948344728529.a n = A253206 (n + 1)

theorem P16651869948344728529.correct : P16651869948344728529.Spec := by
  intro n
  simp only [A253206, Nat.add_sub_cancel]

end A253206

/-! ## A253206.P11349319711017178833

`∑{d}[n+1, A307420(#)*A391793((n+1)/#)]`
-/

namespace A253206.P11349319711017178833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d * A391793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253206.P11349319711017178833

namespace A253206

/-- `∑{d}[n+1, A307420(#)*A391793((n+1)/#)]` -/
def P11349319711017178833.Spec : Prop :=
  ∀ n, P11349319711017178833.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P4927281959392662699

`A185276(A383657(n+1))`
-/

namespace A253206.P4927281959392662699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185276 (A383657 (n + 1)).toNat

end

end A253206.P4927281959392662699

namespace A253206

/-- `A185276(A383657(n+1))` -/
def P4927281959392662699.Spec : Prop :=
  ∀ n, P4927281959392662699.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P7197850134912047391

`A117444(A397686(n+1))`
-/

namespace A253206.P7197850134912047391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A397686 (n + 1)).toNat

end

end A253206.P7197850134912047391

namespace A253206

/-- `A117444(A397686(n+1))` -/
def P7197850134912047391.Spec : Prop :=
  ∀ n, P7197850134912047391.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P1511464646707297921

`A359551(A354202(n+1))`
-/

namespace A253206.P1511464646707297921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A354202 (n + 1)).toNat

end

end A253206.P1511464646707297921

namespace A253206

/-- `A359551(A354202(n+1))` -/
def P1511464646707297921.Spec : Prop :=
  ∀ n, P1511464646707297921.a n = A253206 (n + 1)

end A253206

/-! ## A253206.P10363666763905185160

`A359551(A357852(n+1))`
-/

namespace A253206.P10363666763905185160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A357852 (n + 1)).toNat

end

end A253206.P10363666763905185160

namespace A253206

/-- `A359551(A357852(n+1))` -/
def P10363666763905185160.Spec : Prop :=
  ∀ n, P10363666763905185160.a n = A253206 (n + 1)

end A253206

/-!
# A253208: a(n) = 4^n + 3.

The programs for A253208, the canonical program `A253208.P7310356758826146029` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253208 has offset 0).

The definition of A253208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+3` (program `A253208.P7310356758826146029`, by `A253208.P7310356758826146029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253208.P7310356758826146029

`4^n+3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253208

/-- `4^n+3` -/
def P7310356758826146029.Spec : Prop :=
  ∀ n, (P7310356758826146029.a n : ℤ) = A253208 n

theorem P7310356758826146029.correct : P7310356758826146029.Spec := by
  intro n
  simp only [A253208]

end A253208

/-!
# A253209: a(n) = 6^n + 5.

The programs for A253209, the canonical program `A253209.P16301065234557695078` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253209 has offset 0).

The definition of A253209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+5` (program `A253209.P16301065234557695078`, by `A253209.P16301065234557695078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253209.P16301065234557695078

`6^n+5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253209

/-- `6^n+5` -/
def P16301065234557695078.Spec : Prop :=
  ∀ n, (P16301065234557695078.a n : ℤ) = A253209 n

theorem P16301065234557695078.correct : P16301065234557695078.Spec := by
  intro n
  simp only [A253209]

end A253209

/-!
# A253210: a(n) = 7^n + 6.

The programs for A253210, the canonical program `A253210.P6119189852490201678` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253210 has offset 0).

The definition of A253210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+6` (program `A253210.P6119189852490201678`, by `A253210.P6119189852490201678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253210.P6119189852490201678

`7^n+6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253210

/-- `7^n+6` -/
def P6119189852490201678.Spec : Prop :=
  ∀ n, (P6119189852490201678.a n : ℤ) = A253210 n

theorem P6119189852490201678.correct : P6119189852490201678.Spec := by
  intro n
  simp only [A253210]

end A253210

/-!
# A253211: a(n) = 8^n + 7.

The programs for A253211, the canonical program `A253211.P6683939507278467991` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253211 has offset 0).

The definition of A253211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+7` (program `A253211.P6683939507278467991`, by `A253211.P6683939507278467991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253211.P6683939507278467991

`8^n+7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253211

/-- `8^n+7` -/
def P6683939507278467991.Spec : Prop :=
  ∀ n, (P6683939507278467991.a n : ℤ) = A253211 n

theorem P6683939507278467991.correct : P6683939507278467991.Spec := by
  intro n
  simp only [A253211]

end A253211

/-!
# A253212: a(n) = 9^n + 8.

The programs for A253212, the canonical program `A253212.P13521079029123716091` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253212 has offset 0).

The definition of A253212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+8` (program `A253212.P13521079029123716091`, by `A253212.P13521079029123716091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253212.P13521079029123716091

`9^n+8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253212

/-- `9^n+8` -/
def P13521079029123716091.Spec : Prop :=
  ∀ n, (P13521079029123716091.a n : ℤ) = A253212 n

theorem P13521079029123716091.correct : P13521079029123716091.Spec := by
  intro n
  simp only [A253212]

end A253212

/-!
# A253213: a(n) = 10^n + 9.

The programs for A253213, the canonical program `A253213.P2298809245132178670` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253213 has offset 0).

The definition of A253213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+9` (program `A253213.P2298809245132178670`, by `A253213.P2298809245132178670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253213.P2298809245132178670

`10^n+9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253213

/-- `10^n+9` -/
def P2298809245132178670.Spec : Prop :=
  ∀ n, (P2298809245132178670.a n : ℤ) = A253213 n

theorem P2298809245132178670.correct : P2298809245132178670.Spec := by
  intro n
  simp only [A253213]

end A253213

/-!
# A253214: Decimal expansion of log(640320^3)/sqrt(163), a Ramanujan constant producing 16 correct digits of Pi.

The programs for A253214, there is no canonical definition to state claims against.
-/

/-! ## A253214.P12298731865112143159

`A000796(n)-A326461(A326461(n)²²)`
-/

namespace A253214.P12298731865112143159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A326461 ((A326461 n ^ 2) ^ 2).toNat

end

end A253214.P12298731865112143159

/-! ## A253214.P10871292542820252682

`A000796(n)-A326461(A272457(A326461(n)))`
-/

namespace A253214.P10871292542820252682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A326461 (A272457 (A326461 n).toNat).toNat

end

end A253214.P10871292542820252682

/-! ## A253214.P1570768696619286487

`A000796(n)-A124737(A185036(n))`
-/

namespace A253214.P1570768696619286487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A124737 (A185036 n).toNat

end

end A253214.P1570768696619286487

/-! ## A253214.P8848895096777843026

`A000796(n)-A338732(A213003(n))`
-/

namespace A253214.P8848895096777843026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A338732 (A213003 n).toNat

end

end A253214.P8848895096777843026

/-! ## A253214.P12232698924859629918

`A000796(n)-A160380(A147430(n+1))`
-/

namespace A253214.P12232698924859629918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A160380 (A147430 (n + 1)).toNat

end

end A253214.P12232698924859629918

/-!
# A253215: a(n) is the greatest positive integer m such that phi(m) <= n where phi is Euler's totient function.

The programs for A253215, there is no canonical definition to state claims against.
-/

/-! ## A253215.P12742330697149651785

`A139795(n+2)-1`
-/

namespace A253215.P12742330697149651785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (n + 2) - 1

end

end A253215.P12742330697149651785

/-! ## A253215.P17400266331795056318

`∑[abs(Δ[A139795(n+1)])]`
-/

namespace A253215.P17400266331795056318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253215.P17400266331795056318

/-! ## A253215.P10387734455982010228

`A004442(A139795(n+2))`
-/

namespace A253215.P10387734455982010228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A139795 (n + 2)).toNat

end

end A253215.P10387734455982010228

/-! ## A253215.P15667196376357923933

`A000027(xor(1, A139795(n+2)))`
-/

namespace A253215.P15667196376357923933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (A139795 (n + 2))).toNat

end

end A253215.P15667196376357923933

/-! ## A253215.P6892753681055920040

`A036913(∑[char[A036912(n+1)-1]])`
-/

namespace A253215.P6892753681055920040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036912 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253215.P6892753681055920040

/-! ## A253215.P2425261181497235463

`xor(A001222(A006512(n+1)), A139795(n+2))`
-/

namespace A253215.P2425261181497235463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A006512 (n + 1)).toNat) (A139795 (n + 2))

end

end A253215.P2425261181497235463

/-! ## A253215.P15605742704753837861

`xor(A139795(n+2), A143201(A000040(n+1)))`
-/

namespace A253215.P15605742704753837861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A139795 (n + 2)) (A143201 (A000040 (n + 1)).toNat)

end

end A253215.P15605742704753837861

/-! ## A253215.P6451208298508538367

`xor(A014963(74*(n+1)), A139795(n+2))`
-/

namespace A253215.P6451208298508538367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (74 * (n + 1))) (A139795 (n + 2))

end

end A253215.P6451208298508538367

/-!
# A253217: Number of n X n nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253217, there is no canonical definition to state claims against.
-/

/-! ## A253217.P7899740201419504847

`A253223((n+1)²+n²)`
-/

namespace A253217.P7899740201419504847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 ((n + 1) ^ 2 + n ^ 2)

end

end A253217.P7899740201419504847

/-! ## A253217.P3102119780845558861

`lcm(or(n, -1), A253223(A001844(n)))`
-/

namespace A253217.P3102119780845558861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A253223 (A001844 n).toNat)

end

end A253217.P3102119780845558861

/-! ## A253217.P15116662166382481359

`A253223(A001844(n))+A025439(n)`
-/

namespace A253217.P15116662166382481359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A001844 n).toNat + A025439 n

end

end A253217.P15116662166382481359

/-! ## A253217.P6156061603368351595

`A057427(n)*A253223(A001844(n))`
-/

namespace A253217.P6156061603368351595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A253223 (A001844 n).toNat

end

end A253217.P6156061603368351595

/-!
# A253218: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253218, the canonical program `A253218.P16528329304761036592` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253218 has offset 1).

The definition of A253218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253218.P16528329304761036592

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=19, a(4)=102, a(5)=263, a(6)=504`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253218

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16528329304761036592.Spec : Prop :=
  ∀ n, P16528329304761036592.a n = A253218 (n + 1)

theorem P16528329304761036592.correct : P16528329304761036592.Spec := by
  intro n
  simp only [A253218, Nat.add_sub_cancel]

end A253218

/-! ## A253218.P11431502917439276378

`A253223(∑[n+2]+4)`
-/

namespace A253218.P11431502917439276378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253218.P11431502917439276378

namespace A253218

/-- `A253223(∑[n+2]+4)` -/
def P11431502917439276378.Spec : Prop :=
  ∀ n, P11431502917439276378.a n = A253218 (n + 1)

end A253218

/-! ## A253218.P3698696723702093522

`A253223(A167614(n+1))%(2*10^n)`
-/

namespace A253218.P3698696723702093522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253223 (A167614 (n + 1)).toNat) (2 * 10 ^ n : ℤ)

end

end A253218.P3698696723702093522

namespace A253218

/-- `A253223(A167614(n+1))%(2*10^n)` -/
def P3698696723702093522.Spec : Prop :=
  ∀ n, P3698696723702093522.a n = A253218 (n + 1)

end A253218

/-! ## A253218.P1396272280792688717

`or(A000035(n), A253223(A167614(n+1)))`
-/

namespace A253218.P1396272280792688717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A253223 (A167614 (n + 1)).toNat)

end

end A253218.P1396272280792688717

namespace A253218

/-- `or(A000035(n), A253223(A167614(n+1)))` -/
def P1396272280792688717.Spec : Prop :=
  ∀ n, P1396272280792688717.a n = A253218 (n + 1)

end A253218

/-! ## A253218.P4618382314989609731

`A253223(A167614(n+1))+A000035(2*n)`
-/

namespace A253218.P4618382314989609731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A253218.P4618382314989609731

namespace A253218

/-- `A253223(A167614(n+1))+A000035(2*n)` -/
def P4618382314989609731.Spec : Prop :=
  ∀ n, P4618382314989609731.a n = A253218 (n + 1)

end A253218

/-! ## A253218.P5174525391208545390

`A000034(2*n)*A253223(A167614(n+1))`
-/

namespace A253218.P5174525391208545390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A253223 (A167614 (n + 1)).toNat

end

end A253218.P5174525391208545390

namespace A253218

/-- `A000034(2*n)*A253223(A167614(n+1))` -/
def P5174525391208545390.Spec : Prop :=
  ∀ n, P5174525391208545390.a n = A253218 (n + 1)

end A253218

/-!
# A253219: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253219, there is no canonical definition to state claims against.
-/

/-! ## A253219.P13907114255949991258

`A253223(A374004(n+1))`
-/

namespace A253219.P13907114255949991258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A374004 (n + 1)).toNat

end

end A253219.P13907114255949991258

/-! ## A253219.P11623388411945399248

`A253223(A052905(n)+9)`
-/

namespace A253219.P11623388411945399248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A052905 n + 9).toNat

end

end A253219.P11623388411945399248

/-! ## A253219.P3697930829613567647

`A253223(A055999(n)+10)`
-/

namespace A253219.P3697930829613567647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A055999 n + 10).toNat

end

end A253219.P3697930829613567647

/-! ## A253219.P6832083141528034268

`A253223(A167614(n+2)+1)`
-/

namespace A253219.P6832083141528034268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167614 (n + 2) + 1).toNat

end

end A253219.P6832083141528034268

/-! ## A253219.P14273659507693617627

`A253223(A166136(n+2)-2)`
-/

namespace A253219.P14273659507693617627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A166136 (n + 2) - 2).toNat

end

end A253219.P14273659507693617627

/-! ## A253219.P12010234931444039256

`A253223(A000096(n+2)+5)`
-/

namespace A253219.P12010234931444039256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000096 (n + 2) + 5).toNat

end

end A253219.P12010234931444039256

/-! ## A253219.P9861873039057880932

`A253223(A000217(n+3)+4)`
-/

namespace A253219.P9861873039057880932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000217 (n + 3) + 4).toNat

end

end A253219.P9861873039057880932

/-! ## A253219.P14683760644993616090

`A253223(A166136(n+1)+1+n)`
-/

namespace A253219.P14683760644993616090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A253219.P14683760644993616090

/-! ## A253219.P896585651879664306

`A253223(A034856(n+1)+A020723(n))`
-/

namespace A253219.P896585651879664306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A034856 (n + 1) + A020723 n).toNat

end

end A253219.P896585651879664306

/-! ## A253219.P4429107574815848497

`A253223(∑[n+4]+3)`
-/

namespace A253219.P4429107574815848497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253219.P4429107574815848497

/-!
# A253220: Number of n X 5 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253220, there is no canonical definition to state claims against.
-/

/-! ## A253220.P4193824665937685091

`A253223(A374005(n+1))`
-/

namespace A253220.P4193824665937685091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A374005 (n + 1)).toNat

end

end A253220.P4193824665937685091

/-! ## A253220.P10801077581701466548

`A253223(A167499(n+3))`
-/

namespace A253220.P10801077581701466548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167499 (n + 3)).toNat

end

end A253220.P10801077581701466548

/-! ## A253220.P2859739171863515305

`A253223(A000124(n+4)+4)`
-/

namespace A253220.P2859739171863515305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000124 (n + 4) + 4).toNat

end

end A253220.P2859739171863515305

/-! ## A253220.P5090042030190269534

`A253223(∑[n+5]+6)`
-/

namespace A253220.P5090042030190269534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253220.P5090042030190269534

/-! ## A253220.P14489516869805288499

`lcm(A054977(n), A253223(A046691(n+3)))`
-/

namespace A253220.P14489516869805288499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A253223 (A046691 (n + 3)).toNat)

end

end A253220.P14489516869805288499

/-! ## A253220.P1197734551975003432

`A253223(A046691(n+3))*A253240(A000217(n))`
-/

namespace A253220.P1197734551975003432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A046691 (n + 3)).toNat * A253240 (A000217 n).toNat

end

end A253220.P1197734551975003432

/-! ## A253220.P14247205198717683094

`A253223(A046691(n+3))+A175253(A007609(n+1))`
-/

namespace A253220.P14247205198717683094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A046691 (n + 3)).toNat + A175253 (A007609 (n + 1)).toNat

end

end A253220.P14247205198717683094

/-! ## A253220.P4829474713685459910

`A253244(A253238(n+1))+A253223(A046691(n+3))`
-/

namespace A253220.P4829474713685459910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253244 (A253238 (n + 1)).toNat + A253223 (A046691 (n + 3)).toNat

end

end A253220.P4829474713685459910

/-!
# A253221: Number of n X 6 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253221, there is no canonical definition to state claims against.
-/

/-! ## A253221.P14264431459825804128

`A253223(A374007(n+1))`
-/

namespace A253221.P14264431459825804128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A374007 (n + 1)).toNat

end

end A253221.P14264431459825804128

/-! ## A253221.P1909324440681894916

`A253223(A167499(n+4)+1)`
-/

namespace A253221.P1909324440681894916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167499 (n + 4) + 1).toNat

end

end A253221.P1909324440681894916

/-! ## A253221.P7926962194328067004

`A253223(A167614(n+4)+3)`
-/

namespace A253221.P7926962194328067004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167614 (n + 4) + 3).toNat

end

end A253221.P7926962194328067004

/-! ## A253221.P4553852171995039225

`A253223(A000217(n+5)+6)`
-/

namespace A253221.P4553852171995039225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000217 (n + 5) + 6).toNat

end

end A253221.P4553852171995039225

/-! ## A253221.P13159063265922248763

`A253223(A052905(n+3))`
-/

namespace A253221.P13159063265922248763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A052905 (n + 3)).toNat

end

end A253221.P13159063265922248763

/-! ## A253221.P9977928461461037353

`A253223(A056119(n)+16)`
-/

namespace A253221.P9977928461461037353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A056119 n + 16).toNat

end

end A253221.P9977928461461037353

/-!
# A253222: Number of n X 7 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253222, there is no canonical definition to state claims against.
-/

/-! ## A253222.P14317748679457632421

`A253223(A374008(n+1))`
-/

namespace A253222.P14317748679457632421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A374008 (n + 1)).toNat

end

end A253222.P14317748679457632421

/-! ## A253222.P6745785843470296232

`A253223(A167499(n+5)+2)`
-/

namespace A253222.P6745785843470296232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A167499 (n + 5) + 2).toNat

end

end A253222.P6745785843470296232

/-! ## A253222.P15527320170768702480

`A253223(A000124(n+6)+6)`
-/

namespace A253222.P15527320170768702480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000124 (n + 6) + 6).toNat

end

end A253222.P15527320170768702480

/-! ## A253222.P18333921152465309022

`A253223(A052905(n+3)+12)`
-/

namespace A253222.P18333921152465309022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A052905 (n + 3) + 12).toNat

end

end A253222.P18333921152465309022

/-! ## A253222.P12788363728352034392

`A253223(A055999(n+4))`
-/

namespace A253222.P12788363728352034392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A055999 (n + 4)).toNat

end

end A253222.P12788363728352034392

/-! ## A253222.P12840790170731244072

`A253223(A000217(n+6)+1+n)`
-/

namespace A253222.P12840790170731244072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253223 (A000217 (n + 6) + 1 + (n : ℤ)).toNat

end

end A253222.P12840790170731244072

/-!
# A253223: T(n,k) = number of n X k nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 2 and every value within 2 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253223, there is no canonical definition to state claims against.
-/

/-! ## A253223.P16266870847007378214

`and(A002061(A158462(n+1)), A252983(n+1))`
-/

namespace A253223.P16266870847007378214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002061 (A158462 (n + 1)).toNat) (A252983 (n + 1))

end

end A253223.P16266870847007378214

/-! ## A253223.P14279547884686352281

`and(A008578(A256810(n+1)), A252983(n+1))`
-/

namespace A253223.P14279547884686352281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008578 (A256810 (n + 1)).toNat) (A252983 (n + 1))

end

end A253223.P14279547884686352281

/-! ## A253223.P2413856891833725258

`A283762(A080045(n+1)+A028240(n))`
-/

namespace A253223.P2413856891833725258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283762 (A080045 (n + 1) + A028240 n).toNat

end

end A253223.P2413856891833725258

/-! ## A253223.P17237522196547365243

`and(A006530(A255756(n+1)), A252983(n+1))`
-/

namespace A253223.P17237522196547365243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A255756 (n + 1)).toNat) (A252983 (n + 1))

end

end A253223.P17237522196547365243

/-!
# A253224: Number of (n+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253224, there is no canonical definition to state claims against.
-/

/-! ## A253224.P568503660197317474

`A253231((n+1)²+n²)`
-/

namespace A253224.P568503660197317474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 ((n + 1) ^ 2 + n ^ 2)

end

end A253224.P568503660197317474

/-! ## A253224.P15164030948552890186

`lcm(2, A253231(A001844(n)))`
-/

namespace A253224.P15164030948552890186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253231 (A001844 n).toNat)

end

end A253224.P15164030948552890186

/-! ## A253224.P11016044591195709418

`record[gcd(A114327(n), A253231(n+1))]`
-/

namespace A253224.P11016044591195709418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253231 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253224.P11016044591195709418

/-! ## A253224.P4068471500588910223

`A253231(A001844(n))+A025439(n)`
-/

namespace A253224.P4068471500588910223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A001844 n).toNat + A025439 n

end

end A253224.P4068471500588910223

/-! ## A253224.P10425877748531628963

`A253231(A001844(n))%A001016(n+2)`
-/

namespace A253224.P10425877748531628963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253231 (A001844 n).toNat) (A001016 (n + 2))

end

end A253224.P10425877748531628963

/-!
# A253225: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253225, there is no canonical definition to state claims against.
-/

/-! ## A253225.P15237245237287518542

`A253231(∑[n+1]+2)`
-/

namespace A253225.P15237245237287518542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253225.P15237245237287518542

/-! ## A253225.P18265082190957047390

`record[A253231(A133263(abs(1-n)))]`
-/

namespace A253225.P18265082190957047390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253225.P18265082190957047390

/-! ## A253225.P16097782678196518839

`or(A000007(n), A253231(A000217(n+1)+2))`
-/

namespace A253225.P16097782678196518839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253231 (A000217 (n + 1) + 2).toNat)

end

end A253225.P16097782678196518839

/-! ## A253225.P16723337518586635699

`or(A000007(n), A253231(A000096(n+1)))`
-/

namespace A253225.P16723337518586635699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253231 (A000096 (n + 1)).toNat)

end

end A253225.P16723337518586635699

/-! ## A253225.P5970648281867182239

`A253231(A000096(n+1))+A000007(n+1)`
-/

namespace A253225.P5970648281867182239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A253225.P5970648281867182239

/-!
# A253226: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253226, there is no canonical definition to state claims against.
-/

/-! ## A253226.P17517670144490384569

`A253231(A167614(n+1))`
-/

namespace A253226.P17517670144490384569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A167614 (n + 1)).toNat

end

end A253226.P17517670144490384569

/-! ## A253226.P3976974050959521433

`A253231(A373663(n+1))`
-/

namespace A253226.P3976974050959521433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A373663 (n + 1)).toNat

end

end A253226.P3976974050959521433

/-! ## A253226.P10008156937438251793

`A253231(A055998(n)+6)`
-/

namespace A253226.P10008156937438251793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A055998 n + 6).toNat

end

end A253226.P10008156937438251793

/-! ## A253226.P11980742590555040397

`A253231(A046691(n)+7)`
-/

namespace A253226.P11980742590555040397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A046691 n + 7).toNat

end

end A253226.P11980742590555040397

/-! ## A253226.P3608663254609300948

`A253231(A167499(n)+n)`
-/

namespace A253226.P3608663254609300948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A167499 n + (n : ℤ)).toNat

end

end A253226.P3608663254609300948

/-!
# A253227: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253227, there is no canonical definition to state claims against.
-/

/-! ## A253227.P3133071977770292336

`A253231(∑[n+3]+7)`
-/

namespace A253227.P3133071977770292336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253227.P3133071977770292336

/-! ## A253227.P3535665834233862546

`or(A000007(n), A253231(A052905(n)+9))`
-/

namespace A253227.P3535665834233862546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253231 (A052905 n + 9).toNat)

end

end A253227.P3535665834233862546

/-! ## A253227.P7424110932357165619

`or(A000038(n), A253231(A052905(n)+9))`
-/

namespace A253227.P7424110932357165619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A253231 (A052905 n + 9).toNat)

end

end A253227.P7424110932357165619

/-! ## A253227.P3973612591731542096

`A253231(A052905(n)+9)+A000038(n+1)`
-/

namespace A253227.P3973612591731542096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A052905 n + 9).toNat + A000038 (n + 1)

end

end A253227.P3973612591731542096

/-! ## A253227.P5998004253841561029

`log2(A020639(2*(n+1)))*A253231(A052905(n)+9)`
-/

namespace A253227.P5998004253841561029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A253231 (A052905 n + 9).toNat : ℝ)

end

end A253227.P5998004253841561029

/-!
# A253228: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253228, there is no canonical definition to state claims against.
-/

/-! ## A253228.P11220374628120360102

`A253231(∑[n+4]+11)`
-/

namespace A253228.P11220374628120360102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253228.P11220374628120360102

/-! ## A253228.P9064082664854131122

`A253231(A167499(n+3))%A204614(n+1)`
-/

namespace A253228.P9064082664854131122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253231 (A167499 (n + 3)).toNat) (A204614 (n + 1))

end

end A253228.P9064082664854131122

/-! ## A253228.P15556021275964733924

`A253231(A167499(n+3))+char[A253231(2*(n+2))]`
-/

namespace A253228.P15556021275964733924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253228.P15556021275964733924

/-! ## A253228.P15709238608057025877

`A253231(A167499(n+3))%A125145(A167499(n))`
-/

namespace A253228.P15709238608057025877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253231 (A167499 (n + 3)).toNat) (A125145 (A167499 n).toNat)

end

end A253228.P15709238608057025877

/-!
# A253229: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253229, there is no canonical definition to state claims against.
-/

/-! ## A253229.P15954452079346189032

`A253231(A374007(n+1))`
-/

namespace A253229.P15954452079346189032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A374007 (n + 1)).toNat

end

end A253229.P15954452079346189032

/-! ## A253229.P3097120926406972207

`lcm(A054977(n), A253231(A166136(n+4)))`
-/

namespace A253229.P3097120926406972207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A253231 (A166136 (n + 4)).toNat)

end

end A253229.P3097120926406972207

/-! ## A253229.P3508427461761968024

`A253231(A166136(n+4))%A253230(n+1)`
-/

namespace A253229.P3508427461761968024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253231 (A166136 (n + 4)).toNat) (A253230 (n + 1))

end

end A253229.P3508427461761968024

/-! ## A253229.P13795238268078360165

`A253231(A000124(n+5)+5)%A222815(n+1)`
-/

namespace A253229.P13795238268078360165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253231 (A000124 (n + 5) + 5).toNat) (A222815 (n + 1))

end

end A253229.P13795238268078360165

/-! ## A253229.P17909252258027827295

`and(1, A163383(n+1))*A253231(A000217(n+5)+6)`
-/

namespace A253229.P17909252258027827295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A163383 (n + 1)) * A253231 (A000217 (n + 5) + 6).toNat

end

end A253229.P17909252258027827295

/-!
# A253230: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253230, there is no canonical definition to state claims against.
-/

/-! ## A253230.P14766809358181114374

`A253231(A374008(n+1))`
-/

namespace A253230.P14766809358181114374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A374008 (n + 1)).toNat

end

end A253230.P14766809358181114374

/-! ## A253230.P11741124377169880738

`A253231(A000217(n+6)+7)`
-/

namespace A253230.P11741124377169880738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A000217 (n + 6) + 7).toNat

end

end A253230.P11741124377169880738

/-! ## A253230.P757452437740385184

`A253231(A155212(n+4)-2*n)`
-/

namespace A253230.P757452437740385184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A253230.P757452437740385184

/-! ## A253230.P15877717600078510847

`A253231(A055999(n+4))`
-/

namespace A253230.P15877717600078510847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A055999 (n + 4)).toNat

end

end A253230.P15877717600078510847

/-! ## A253230.P16024502425628595157

`A253231(A000124(n+7)-7)`
-/

namespace A253230.P16024502425628595157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A000124 (n + 7) - 7).toNat

end

end A253230.P16024502425628595157

/-!
# A253231: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock diagonal minimum minus antidiagonal minimum nondecreasing horizontally and diagonal maximum minus antidiagonal maximum nondecreasing vertically.

The programs for A253231, there is no canonical definition to state claims against.
-/

/-! ## A253231.P15572631450465398182

`A204616(n+1)-A179219(A141696(n+1))`
-/

namespace A253231.P15572631450465398182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (n + 1) - A179219 (A141696 (n + 1)).toNat

end

end A253231.P15572631450465398182

/-! ## A253231.P12773280475485366055

`A204616(n+1)-A179219(A142458(n+1))`
-/

namespace A253231.P12773280475485366055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (n + 1) - A179219 (A142458 (n + 1)).toNat

end

end A253231.P12773280475485366055

/-!
# A253235: Numbers k such that the k-th cyclotomic polynomial has no root mod p for all primes p <= k.

The programs for A253235, the canonical program `A253235.P7507897381358703633` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253235 has offset 1).

The definition of A253235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253235.P7507897381358703633

`comp[A342256(n+1)-1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253235

/-- `comp[A342256(n+1)-1]+1` -/
def P7507897381358703633.Spec : Prop :=
  ∀ n, (P7507897381358703633.a n : ℤ) = A253235 (n + 1)

theorem P7507897381358703633.correct : P7507897381358703633.Spec := by
  intro n
  simp only [A253235, Nat.add_sub_cancel]

end A253235

/-! ## A253235.P6285916985920613188

`eq[1, A342257(n+1)]+1`
-/

namespace A253235.P6285916985920613188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253235.P6285916985920613188

namespace A253235

/-- `eq[1, A342257(n+1)]+1` -/
def P6285916985920613188.Spec : Prop :=
  ∀ n, (P6285916985920613188.a n : ℤ) = A253235 (n + 1)

end A253235

/-! ## A253235.P831828625356036371

`lt[A253236(n+1), 1]+1`
-/

namespace A253235.P831828625356036371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A253235.P831828625356036371

namespace A253235

/-- `lt[A253236(n+1), 1]+1` -/
def P831828625356036371.Spec : Prop :=
  ∀ n, (P831828625356036371.a n : ℤ) = A253235 (n + 1)

end A253235

/-! ## A253235.P16584732255044144484

`eq[1, A020639(A253236(n+1)+1)]+1`
-/

namespace A253235.P16584732255044144484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253236 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253235.P16584732255044144484

namespace A253235

/-- `eq[1, A020639(A253236(n+1)+1)]+1` -/
def P16584732255044144484.Spec : Prop :=
  ∀ n, (P16584732255044144484.a n : ℤ) = A253235 (n + 1)

end A253235

/-! ## A253235.P3516285657551037078

`record[n+1-A004917(n+1)*A253236(n+1)]`
-/

namespace A253235.P3516285657551037078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004917 (n + 1) * A253236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253235.P3516285657551037078

namespace A253235

/-- `record[n+1-A004917(n+1)*A253236(n+1)]` -/
def P3516285657551037078.Spec : Prop :=
  ∀ n, P3516285657551037078.a n = A253235 (n + 1)

end A253235

/-! ## A253235.P7619216621132669382

`record[n+1-A045033(n+1)*A253236(n+1)]`
-/

namespace A253235.P7619216621132669382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045033 (n + 1) * A253236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253235.P7619216621132669382

namespace A253235

/-- `record[n+1-A045033(n+1)*A253236(n+1)]` -/
def P7619216621132669382.Spec : Prop :=
  ∀ n, P7619216621132669382.a n = A253235 (n + 1)

end A253235

/-! ## A253235.P3503604521519524124

`record[n+1-A228732(n+1)*A253236(n+1)]`
-/

namespace A253235.P3503604521519524124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A228732 (n + 1) * A253236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253235.P3503604521519524124

namespace A253235

/-- `record[n+1-A228732(n+1)*A253236(n+1)]` -/
def P3503604521519524124.Spec : Prop :=
  ∀ n, P3503604521519524124.a n = A253235 (n + 1)

end A253235

/-!
# A253236: The unique prime p <= n such that n-th cyclotomic polynomial has a root mod p, or 0 if no such p exists.

The programs for A253236, the canonical program `A253236.P9116711881590204222` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253236 has offset 1).

The definition of A253236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253236.P4402173891319325282

`∑{p}[A342257(n+1), #]`
-/

namespace A253236.P4402173891319325282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A253236.P4402173891319325282

namespace A253236

/-- `∑{p}[A342257(n+1), #]` -/
def P4402173891319325282.Spec : Prop :=
  ∀ n, (P4402173891319325282.a n : ℤ) = A253236 (n + 1)

end A253236

/-! ## A253236.P14060828156947143021

`A001414(A342257(n+1))`
-/

namespace A253236.P14060828156947143021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A342257 (n + 1)).toNat

end

end A253236.P14060828156947143021

namespace A253236

/-- `A001414(A342257(n+1))` -/
def P14060828156947143021.Spec : Prop :=
  ∀ n, P14060828156947143021.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P1225642132032567579

`A120007(A275823(n+1))`
-/

namespace A253236.P1225642132032567579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A275823 (n + 1)).toNat

end

end A253236.P1225642132032567579

namespace A253236

/-- `A120007(A275823(n+1))` -/
def P1225642132032567579.Spec : Prop :=
  ∀ n, P1225642132032567579.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P9116711881590204222

`∑{p}[A014963((n+1)/gcd(n+1, 1-A006530(n+1))), #]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A253236

/-- `∑{p}[A014963((n+1)/gcd(n+1, 1-A006530(n+1))), #]` -/
def P9116711881590204222.Spec : Prop :=
  ∀ n, (P9116711881590204222.a n : ℤ) = A253236 (n + 1)

theorem P9116711881590204222.correct : P9116711881590204222.Spec := by
  intro n
  simp only [A253236, Nat.add_sub_cancel]

end A253236

/-! ## A253236.P13016151337935835540

`A001221(A342257(n+1))*A006530(n+1)`
-/

namespace A253236.P13016151337935835540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A342257 (n + 1)).toNat * A006530 (n + 1)

end

end A253236.P13016151337935835540

namespace A253236

/-- `A001221(A342257(n+1))*A006530(n+1)` -/
def P13016151337935835540.Spec : Prop :=
  ∀ n, P13016151337935835540.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P4375920609423627803

`A020513(2*A342257(n+1))`
-/

namespace A253236.P4375920609423627803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (2 * A342257 (n + 1)).toNat

end

end A253236.P4375920609423627803

namespace A253236

/-- `A020513(2*A342257(n+1))` -/
def P4375920609423627803.Spec : Prop :=
  ∀ n, P4375920609423627803.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P971549424924191971

`A020513(A342257(n+1)+A342257(n+1))`
-/

namespace A253236.P971549424924191971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A342257 (n + 1) + A342257 (n + 1)).toNat

end

end A253236.P971549424924191971

namespace A253236

/-- `A020513(A342257(n+1)+A342257(n+1))` -/
def P971549424924191971.Spec : Prop :=
  ∀ n, P971549424924191971.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P13368199042258038583

`A342257(lcm(2, n+1))%A342257(n+1)²`
-/

namespace A253236.P13368199042258038583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342257 (Nat.lcm 2 (n + 1))) (A342257 (n + 1) ^ 2)

end

end A253236.P13368199042258038583

namespace A253236

/-- `A342257(lcm(2, n+1))%A342257(n+1)²` -/
def P13368199042258038583.Spec : Prop :=
  ∀ n, P13368199042258038583.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P17469200824894024430

`A342257(n+1)²-A000010(A342257(n+1)²)`
-/

namespace A253236.P17469200824894024430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1) ^ 2 - A000010 (A342257 (n + 1) ^ 2).toNat

end

end A253236.P17469200824894024430

namespace A253236

/-- `A342257(n+1)²-A000010(A342257(n+1)²)` -/
def P17469200824894024430.Spec : Prop :=
  ∀ n, P17469200824894024430.a n = A253236 (n + 1)

end A253236

/-! ## A253236.P5620597243145652942

`A001222(A342257(n+1))*A342257(A342257(n+1)²)`
-/

namespace A253236.P5620597243145652942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A342257 (n + 1)).toNat * A342257 (A342257 (n + 1) ^ 2).toNat

end

end A253236.P5620597243145652942

namespace A253236

/-- `A001222(A342257(n+1))*A342257(A342257(n+1)²)` -/
def P5620597243145652942.Spec : Prop :=
  ∀ n, P5620597243145652942.a n = A253236 (n + 1)

end A253236

/-!
# A253238: Number of ways to write n as a sum of a perfect power (>1) and a prime.

The programs for A253238, there is no canonical definition to state claims against.
-/

/-! ## A253238.P934197608595666430

`A196228(n+1)-char[A151800(n)]`
-/

namespace A253238.P934197608595666430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P934197608595666430

/-! ## A253238.P1055752379676776601

`A196228(n+1)-char[A000040(n+1)]`
-/

namespace A253238.P1055752379676776601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P1055752379676776601

/-! ## A253238.P14792179180808144522

`A196228(n+1)-char[A267101(n+1)]`
-/

namespace A253238.P14792179180808144522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P14792179180808144522

/-! ## A253238.P9591386692811608936

`A276711(n+1)-A010051(n+1)-char[A151800(n)]`
-/

namespace A253238.P9591386692811608936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - A010051 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P9591386692811608936

/-! ## A253238.P11573340932026888569

`A276711(n+1)-A010051(n+1)-char[A000040(n+1)]`
-/

namespace A253238.P11573340932026888569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - A010051 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P11573340932026888569

/-! ## A253238.P9458661216493602912

`A276711(n+1)-A010051(n+1)-char[A014692(n+1)+n]`
-/

namespace A253238.P9458661216493602912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1) - A010051 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253238.P9458661216493602912

/-!
# A253239: Numbers k such that k^2 + k + 72491 is prime.

The programs for A253239, there is no canonical definition to state claims against.
-/

/-! ## A253239.P17793717764290081287

`∑[∏{e}[A101247(A187581(n+1)), #]]`
-/

namespace A253239.P17793717764290081287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101247 (A187581 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253239.P17793717764290081287

/-!
# A253241: The "Reverse and Add!" problem in base 12: sequence lists the final palindrome number for n, or -1 if no palindrome is ever reached. (Written in base 10.)

The programs for A253241, there is no canonical definition to state claims against.
-/

/-! ## A253241.P15082656565305795448

`A029957(A300437(∑[n]))`
-/

namespace A253241.P15082656565305795448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (A300437 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253241.P15082656565305795448

/-! ## A253241.P12382937602455394411

`A048309(2*A004917(n+1))`
-/

namespace A253241.P12382937602455394411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 (2 * A004917 (n + 1)).toNat

end

end A253241.P12382937602455394411

/-! ## A253241.P13537401565195995887

`A048336(2*A004906(n+1))`
-/

namespace A253241.P13537401565195995887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 (2 * A004906 (n + 1)).toNat

end

end A253241.P13537401565195995887

/-! ## A253241.P14586637801076446688

`A048323(2*A004917(n+1))`
-/

namespace A253241.P14586637801076446688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 (2 * A004917 (n + 1)).toNat

end

end A253241.P14586637801076446688

/-! ## A253241.P934189264578036778

`A048336(2*A004917(n+1))`
-/

namespace A253241.P934189264578036778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 (2 * A004917 (n + 1)).toNat

end

end A253241.P934189264578036778

/-!
# A253243: Expansion of phi(-x^2) * psi(x^3) * chi(x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A253243, the canonical program `A253243.P16913495343360513967` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253243 has offset 0).

The definition of A253243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253243.P16913495343360513967

`A123530(2*n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253243

/-- `A123530(2*n)` -/
def P16913495343360513967.Spec : Prop :=
  ∀ n, P16913495343360513967.a n = A253243 n

theorem P16913495343360513967.correct : P16913495343360513967.Spec := by
  intro n
  simp only [A253243]

end A253243

/-! ## A253243.P3256112790067841490

`A097109(4*n+1)`
-/

namespace A253243.P3256112790067841490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (4 * n + 1)

end

end A253243.P3256112790067841490

namespace A253243

/-- `A097109(4*n+1)` -/
def P3256112790067841490.Spec : Prop :=
  ∀ n, P3256112790067841490.a n = A253243 n

end A253243

/-! ## A253243.P1493524335562893907

`A112848(4*n+1)`
-/

namespace A253243.P1493524335562893907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (4 * n + 1)

end

end A253243.P1493524335562893907

namespace A253243

/-- `A112848(4*n+1)` -/
def P1493524335562893907.Spec : Prop :=
  ∀ n, P1493524335562893907.a n = A253243 n

end A253243

/-! ## A253243.P3576180956549604166

`A123477(4*n+1)`
-/

namespace A253243.P3576180956549604166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123477 (4 * n + 1)

end

end A253243.P3576180956549604166

namespace A253243

/-- `A123477(4*n+1)` -/
def P3576180956549604166.Spec : Prop :=
  ∀ n, P3576180956549604166.a n = A253243 n

end A253243

/-! ## A253243.P3497469278387430477

`A132419(n)*A262774(n)`
-/

namespace A253243.P3497469278387430477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 n * A262774 n

end

end A253243.P3497469278387430477

namespace A253243

/-- `A132419(n)*A262774(n)` -/
def P3497469278387430477.Spec : Prop :=
  ∀ n, P3497469278387430477.a n = A253243 n

end A253243

/-! ## A253243.P16524241667086313937

`A061347(n+1)*A112604(n)`
-/

namespace A253243.P16524241667086313937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A112604 n

end

end A253243.P16524241667086313937

namespace A253243

/-- `A061347(n+1)*A112604(n)` -/
def P16524241667086313937.Spec : Prop :=
  ∀ n, P16524241667086313937.a n = A253243 n

end A253243

/-! ## A253243.P13082741012298938545

`(A010872(n+1)-A010872(n))*A112604(n)`
-/

namespace A253243.P13082741012298938545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 1) - A010872 n) * A112604 n

end

end A253243.P13082741012298938545

namespace A253243

/-- `(A010872(n+1)-A010872(n))*A112604(n)` -/
def P13082741012298938545.Spec : Prop :=
  ∀ n, P13082741012298938545.a n = A253243 n

end A253243

/-! ## A253243.P2867471563613613087

`A057079(n+2)*A262774(n)`
-/

namespace A253243.P2867471563613613087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A262774 n

end

end A253243.P2867471563613613087

namespace A253243

/-- `A057079(n+2)*A262774(n)` -/
def P2867471563613613087.Spec : Prop :=
  ∀ n, P2867471563613613087.a n = A253243 n

end A253243

/-! ## A253243.P1268908239032445868

`A033762(2*n)*A131713(n+2)`
-/

namespace A253243.P1268908239032445868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n) * A131713 (n + 2)

end

end A253243.P1268908239032445868

namespace A253243

/-- `A033762(2*n)*A131713(n+2)` -/
def P1268908239032445868.Spec : Prop :=
  ∀ n, P1268908239032445868.a n = A253243 n

end A253243

/-! ## A253243.P5178090377155825166

`A005881(2*n)/(1-A099837(n+1))`
-/

namespace A253243.P5178090377155825166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 (2 * n) : ℚ) / (1 - A099837 (n + 1) : ℚ)

end

end A253243.P5178090377155825166

namespace A253243

/-- `A005881(2*n)/(1-A099837(n+1))` -/
def P5178090377155825166.Spec : Prop :=
  ∀ n, P5178090377155825166.a n = (A253243 n : ℚ)

end A253243

/-! ## A253243.P18176737696282204571

`A005881(2*n)/(1-A131756(n+1))`
-/

namespace A253243.P18176737696282204571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 (2 * n) : ℚ) / (1 - A131756 (n + 1) : ℚ)

end

end A253243.P18176737696282204571

namespace A253243

/-- `A005881(2*n)/(1-A131756(n+1))` -/
def P18176737696282204571.Spec : Prop :=
  ∀ n, P18176737696282204571.a n = (A253243 n : ℚ)

end A253243

/-! ## A253243.P5990904157653860744

`A057079(2*n)*A112604(n)`
-/

namespace A253243.P5990904157653860744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A112604 n

end

end A253243.P5990904157653860744

namespace A253243

/-- `A057079(2*n)*A112604(n)` -/
def P5990904157653860744.Spec : Prop :=
  ∀ n, P5990904157653860744.a n = A253243 n

end A253243

/-! ## A253243.P10873743086270203304

`A057079(2*n)*A129449(2*n)`
-/

namespace A253243.P10873743086270203304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A129449 (2 * n)

end

end A253243.P10873743086270203304

namespace A253243

/-- `A057079(2*n)*A129449(2*n)` -/
def P10873743086270203304.Spec : Prop :=
  ∀ n, P10873743086270203304.a n = A253243 n

end A253243

/-! ## A253243.P9556471856152029767

`A129449(2*n)*A132954(2*n)`
-/

namespace A253243.P9556471856152029767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (2 * n) * A132954 (2 * n)

end

end A253243.P9556471856152029767

namespace A253243

/-- `A129449(2*n)*A132954(2*n)` -/
def P9556471856152029767.Spec : Prop :=
  ∀ n, P9556471856152029767.a n = A253243 n

end A253243

/-! ## A253243.P3361720614550055318

`A005881(2*n)/A131756(2*n)`
-/

namespace A253243.P3361720614550055318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 (2 * n) : ℚ) / (A131756 (2 * n) : ℚ)

end

end A253243.P3361720614550055318

namespace A253243

/-- `A005881(2*n)/A131756(2*n)` -/
def P3361720614550055318.Spec : Prop :=
  ∀ n, P3361720614550055318.a n = (A253243 n : ℚ)

end A253243

/-! ## A253243.P10127009269324201178

`(A049347(2*n)-A057078(n+1))*A033762(2*n)`
-/

namespace A253243.P10127009269324201178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 (2 * n) - A057078 (n + 1)) * A033762 (2 * n)

end

end A253243.P10127009269324201178

namespace A253243

/-- `(A049347(2*n)-A057078(n+1))*A033762(2*n)` -/
def P10127009269324201178.Spec : Prop :=
  ∀ n, P10127009269324201178.a n = A253243 n

end A253243

/-! ## A253243.P15548027036378556826

`(A057078(2*n+1)+A049347(2*n))*A033762(2*n)`
-/

namespace A253243.P15548027036378556826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (2 * n + 1) + A049347 (2 * n)) * A033762 (2 * n)

end

end A253243.P15548027036378556826

namespace A253243

/-- `(A057078(2*n+1)+A049347(2*n))*A033762(2*n)` -/
def P15548027036378556826.Spec : Prop :=
  ∀ n, P15548027036378556826.a n = A253243 n

end A253243

/-! ## A253243.P8471693535191913644

`A260945(4*n+1)`
-/

namespace A253243.P8471693535191913644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (4 * n + 1)

end

end A253243.P8471693535191913644

namespace A253243

/-- `A260945(4*n+1)` -/
def P8471693535191913644.Spec : Prop :=
  ∀ n, P8471693535191913644.a n = A253243 n

end A253243

/-!
# A253244: Number of unlabeled rooted trees with n nodes where the outdegrees (branching factors) of at least one pair of adjacent nodes differ by at least two and the outdegrees of at least one pair of adjacent nodes are equal.

The programs for A253244, there is no canonical definition to state claims against.
-/

/-! ## A253244.P14402569764918778513

`A000081(n)-A260353(n)-A260403(n)+A257654(n)`
-/

namespace A253244.P14402569764918778513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - A260353 n - A260403 n + A257654 n

end

end A253244.P14402569764918778513

/-! ## A253244.P13842107856125786643

`A000194(5*A293045(n))`
-/

namespace A253244.P13842107856125786643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (5 * A293045 n).toNat

end

end A253244.P13842107856125786643

/-! ## A253244.P4344975706204523694

`A236627(A020072(n)+n)`
-/

namespace A253244.P4344975706204523694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236627 (A020072 n + (n : ℤ)).toNat

end

end A253244.P4344975706204523694

/-! ## A253244.P6592175963929294833

`∑[A156875(A355229(n)+1)]`
-/

namespace A253244.P6592175963929294833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A355229 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253244.P6592175963929294833

/-! ## A253244.P17102820522193755083

`A241063(n²%A073193(n))`
-/

namespace A253244.P17102820522193755083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241063 (Int.tmod (n ^ 2 : ℤ) (A073193 n)).toNat

end

end A253244.P17102820522193755083

/-!
# A253245: Primes that are the concatenation of prime(n) and prime(n+2).

The programs for A253245, there is no canonical definition to state claims against.
-/

/-! ## A253245.P18182983075241369846

`p?[A090311(∑[n+2])]`
-/

namespace A253245.P18182983075241369846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090311 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253245.P18182983075241369846

/-! ## A253245.P10055246974591342102

`p?[and(A090311(n+1), A167374(n))]`
-/

namespace A253245.P10055246974591342102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090311 (n + 1)) (A167374 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253245.P10055246974591342102

/-! ## A253245.P12132554666267119657

`p?[A037276(A090076(n+1))]`
-/

namespace A253245.P12132554666267119657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A090076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253245.P12132554666267119657

/-! ## A253245.P2053846555337369080

`p?[A025581(n)*A090311(n+1)]`
-/

namespace A253245.P2053846555337369080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A090311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253245.P2053846555337369080

/-!
# A253246: Pisano period of A006190 to mod prime(n).

The programs for A253246, there is no canonical definition to state claims against.
-/

/-! ## A253246.P3918267046725544987

`A175182(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A253246.P3918267046725544987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A253246.P3918267046725544987

/-! ## A253246.P18120486608019871955

`A175182(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A253246.P18120486608019871955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A253246.P18120486608019871955

/-! ## A253246.P11790964835833205242

`A175182(Δ[A007504(n)])`
-/

namespace A253246.P11790964835833205242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (n + 1) - f1 n).toNat

end

end A253246.P11790964835833205242

/-! ## A253246.P8294407663049171463

`A175182(record[A051698(n)])`
-/

namespace A253246.P8294407663049171463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253246.P8294407663049171463

/-! ## A253246.P7116496299883039422

`A175182(p?[A259153(n)])`
-/

namespace A253246.P7116496299883039422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253246.P7116496299883039422

/-! ## A253246.P9976234150100144074

`A175182(A000040(n+1))`
-/

namespace A253246.P9976234150100144074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A000040 (n + 1)).toNat

end

end A253246.P9976234150100144074

/-! ## A253246.P11676200197603626992

`A175182(A008578(n+2))`
-/

namespace A253246.P11676200197603626992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A008578 (n + 2)).toNat

end

end A253246.P11676200197603626992

/-! ## A253246.P859303866149386756

`A175182(A182986(n+2))`
-/

namespace A253246.P859303866149386756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A182986 (n + 2)).toNat

end

end A253246.P859303866149386756

/-! ## A253246.P6565571170736709967

`A175182(eq[1, A003415(n)])`
-/

namespace A253246.P6565571170736709967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253246.P6565571170736709967

/-! ## A253246.P5368075793851781329

`A175182(eq[1, A032741(n)])`
-/

namespace A253246.P5368075793851781329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253246.P5368075793851781329

/-! ## A253246.P8585946317646330062

`A175182(record[A006530(n+2)])`
-/

namespace A253246.P8585946317646330062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253246.P8585946317646330062

/-! ## A253246.P2981564297624811333

`A175182(record[A014963(n+2)])`
-/

namespace A253246.P2981564297624811333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253246.P2981564297624811333

/-! ## A253246.P15108805722501859295

`A175182(record[A020639(n+2)])`
-/

namespace A253246.P15108805722501859295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253246.P15108805722501859295

/-! ## A253246.P4158053992105951512

`A175182(A175221(n+1)-4)`
-/

namespace A253246.P4158053992105951512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A175221 (n + 1) - 4).toNat

end

end A253246.P4158053992105951512

/-! ## A253246.P8791946993240505306

`A175182(A001748(n+1)/3)`
-/

namespace A253246.P8791946993240505306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A253246.P8791946993240505306

/-! ## A253246.P2069360924245229312

`A175182(A001749(n+1)/4)`
-/

namespace A253246.P2069360924245229312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 4)).toNat

end

end A253246.P2069360924245229312

/-! ## A253246.P13606791324058972133

`A175182(A001750(n+1)/5)`
-/

namespace A253246.P13606791324058972133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat

end

end A253246.P13606791324058972133

/-! ## A253246.P1720761805202334822

`A175182(record[A000010(n+1)+1])`
-/

namespace A253246.P1720761805202334822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253246.P1720761805202334822

/-! ## A253246.P4884842317802222655

`A175182(A007504(n+1)-A007504(n))`
-/

namespace A253246.P4884842317802222655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A007504 (n + 1) - A007504 n).toNat

end

end A253246.P4884842317802222655

/-!
# A253247: Pisano period of A006190(n^2) divided by Pisano period of A006190(n).

The programs for A253247, there is no canonical definition to state claims against.
-/

/-! ## A253247.P17828140970156231082

`A175182((n+1)²)/A175182(n+1)`
-/

namespace A253247.P17828140970156231082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 ((n + 1) ^ 2) : ℚ) / (A175182 (n + 1) : ℚ)

end

end A253247.P17828140970156231082

/-! ## A253247.P14991891825524881134

`A034699(n+1)%A089837(3*n+4)`
-/

namespace A253247.P14991891825524881134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (n + 1)) (A089837 (3 * n + 4))

end

end A253247.P14991891825524881134

/-! ## A253247.P7373553004629696895

`A309639(n+1)%A089837(3*n+4)`
-/

namespace A253247.P7373553004629696895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309639 (n + 1)) (A089837 (3 * n + 4))

end

end A253247.P7373553004629696895

/-! ## A253247.P928456375189253487

`A034699(n+1)-A000122(A060982(n))`
-/

namespace A253247.P928456375189253487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A000122 (A060982 n).toNat

end

end A253247.P928456375189253487

/-! ## A253247.P16176521921021825587

`A034699(n+1)^A053864(A332638(2*n))`
-/

namespace A253247.P16176521921021825587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) ^ (A053864 (A332638 (2 * n)).toNat : ℤ)

end

end A253247.P16176521921021825587

/-!
# A253248: Number of k <= n with A000203(k) <= A000203(n).

The programs for A253248, there is no canonical definition to state claims against.
-/

/-! ## A253248.P3865702543692538305

`2-A034380(A171560(n+1))+n`
-/

namespace A253248.P3865702543692538305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A034380 (A171560 (n + 1)).toNat + (n : ℤ)

end

end A253248.P3865702543692538305

/-! ## A253248.P11410244231781469542

`A111850(A133812(n+1)+A007445(n+1))`
-/

namespace A253248.P11410244231781469542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A133812 (n + 1) + A007445 (n + 1)).toNat

end

end A253248.P11410244231781469542

/-! ## A253248.P17335724797782106103

`A004526(A187829(n+1)+A079788(n+1))`
-/

namespace A253248.P17335724797782106103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187829 (n + 1) + A079788 (n + 1)).toNat

end

end A253248.P17335724797782106103

/-! ## A253248.P14893253118120569549

`A123108(A187829(n+1)+A079788(n+1))`
-/

namespace A253248.P14893253118120569549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A187829 (n + 1) + A079788 (n + 1)).toNat

end

end A253248.P14893253118120569549

/-! ## A253248.P2526423897977556034

`A304818(n+1)+A160093(A002013(n))`
-/

namespace A253248.P2526423897977556034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) + A160093 (A002013 n).toNat

end

end A253248.P2526423897977556034

/-!
# A253249: Number of nonempty chains in the divides relation on the divisors of n.

The programs for A253249, there is no canonical definition to state claims against.
-/

/-! ## A253249.P16623243873493491070

`A337256(n+1)-1`
-/

namespace A253249.P16623243873493491070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337256 (n + 1) - 1

end

end A253249.P16623243873493491070

/-! ## A253249.P2169540408653476883

`∑{d}[n+1, A067824(#)]`
-/

namespace A253249.P2169540408653476883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d

end

end A253249.P2169540408653476883

/-! ## A253249.P3946080897347848236

`2*A067824(n+1)-1`
-/

namespace A253249.P3946080897347848236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067824 (n + 1) - 1

end

end A253249.P3946080897347848236

/-! ## A253249.P1670492548158209488

`2*∑{d}[n+1, A074206(#)]-1`
-/

namespace A253249.P1670492548158209488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A074206 d) - 1

end

end A253249.P1670492548158209488

/-! ## A253249.P14018845036916952564

`2*∑{d}[n+1, A002033(#-1)]-1`
-/

namespace A253249.P14018845036916952564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1)) - 1

end

end A253249.P14018845036916952564

/-! ## A253249.P7585313461120698475

`A002033(n)*A040002(n)-1`
-/

namespace A253249.P7585313461120698475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A040002 n - 1

end

end A253249.P7585313461120698475

/-! ## A253249.P15652464129160094093

`A040002(n)*A074206(n+1)-1`
-/

namespace A253249.P15652464129160094093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A074206 (n + 1) - 1

end

end A253249.P15652464129160094093

/-! ## A253249.P2624600609514831682

`∑{d}[n+1, A000005(#)*A074206((n+1)/#)]`
-/

namespace A253249.P2624600609514831682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P2624600609514831682

/-! ## A253249.P11192320794675907987

`∑{d}[n+1, A007425(#)*A174725((n+1)/#)]`
-/

namespace A253249.P11192320794675907987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P11192320794675907987

/-! ## A253249.P11605551003128708500

`∑{d}[n+1, A023900(#)*A191161((n+1)/#)]`
-/

namespace A253249.P11605551003128708500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P11605551003128708500

/-! ## A253249.P11411967920207274639

`∑{d}[n+1, A000203(#)*A323912((n+1)/#)]`
-/

namespace A253249.P11411967920207274639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P11411967920207274639

/-! ## A253249.P15015655906111055407

`∑{d}[n+1, A007429(#)*A323910((n+1)/#)]`
-/

namespace A253249.P15015655906111055407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P15015655906111055407

/-! ## A253249.P6037364402354848001

`∑{d}[n+1, A001511(#)*A378223((n+1)/#)]`
-/

namespace A253249.P6037364402354848001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P6037364402354848001

/-! ## A253249.P6619858281859587037

`∑{d}[n+1, A007430(#)*A378432((n+1)/#)]`
-/

namespace A253249.P6619858281859587037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P6619858281859587037

/-! ## A253249.P2239401343266000009

`∑{d}[n+1, A130054(#)*A330575((n+1)/#)]`
-/

namespace A253249.P2239401343266000009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P2239401343266000009

/-! ## A253249.P9390706908119836450

`∑{d}[n+1, A129628(#)*A345182((n+1)/#)]`
-/

namespace A253249.P9390706908119836450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253249.P9390706908119836450

/-! ## A253249.P8525747985460715803

`A067824(n+1)+A153881(n+2)+A067824(n+1)`
-/

namespace A253249.P8525747985460715803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1) + (A153881 (n + 2) + A067824 (n + 1))

end

end A253249.P8525747985460715803

/-! ## A253249.P11253749379046385522

`A000265(A067824(n+1)+A067824(n+1)-1)`
-/

namespace A253249.P11253749379046385522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067824 (n + 1) + (A067824 (n + 1) - 1)).toNat

end

end A253249.P11253749379046385522

/-! ## A253249.P9243986689543970986

`A052410(A067824(n+1)+A067824(n+1)-1)`
-/

namespace A253249.P9243986689543970986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A067824 (n + 1) + (A067824 (n + 1) - 1)).toNat

end

end A253249.P9243986689543970986

/-!
# A253250: First differences of A049880.

The programs for A253250, there is no canonical definition to state claims against.
-/

/-! ## A253250.P4438278290889014132

`Δ[A049880(n+2)]`
-/

namespace A253250.P4438278290889014132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049880 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253250.P4438278290889014132

/-! ## A253250.P13096982085364492664

`A049880(n+3)-A049880(n+2)`
-/

namespace A253250.P13096982085364492664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049880 (n + 3) - A049880 (n + 2)

end

end A253250.P13096982085364492664

/-! ## A253250.P10506736329220784737

`A083060(n+3)+1`
-/

namespace A253250.P10506736329220784737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083060 (n + 3) + 1

end

end A253250.P10506736329220784737

/-! ## A253250.P10030454806872975331

`A049880(n+3)+A001478(A049880(n+2)+1)+1`
-/

namespace A253250.P10030454806872975331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049880 (n + 3) + A001478 (A049880 (n + 2) + 1).toNat + 1

end

end A253250.P10030454806872975331

/-! ## A253250.P9761492626654080429

`Δ[A362882(n+1)]+1`
-/

namespace A253250.P9761492626654080429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A253250.P9761492626654080429

/-!
# A253251: a(1) = 1, and for n > 0, a(n+1) = a(n) + floor(10^k/a(n)), where k is the least integer such that 10^k >= a(n).

The programs for A253251, the canonical program `A253251.P7156480629485270913` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253251 has offset 1).

The definition of A253251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253251.P7156480629485270913

`A052038(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253251

/-- `A052038(a(n-1))+a(n-1)` -/
def P7156480629485270913.Spec : Prop :=
  ∀ n, P7156480629485270913.a n = A253251 (n + 1)

theorem P7156480629485270913.correct : P7156480629485270913.Spec := by
  intro n
  simp only [A253251, Nat.add_sub_cancel]

end A253251

/-! ## A253251.P1305018369960369365

`A052038(a(n-1))-A001489(a(n-1))` with `a(0)=1`
-/

namespace A253251.P1305018369960369365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052038 (a (n - 1)).toNat - A001489 (a (n - 1)).toNat

end

end A253251.P1305018369960369365

namespace A253251

/-- `A052038(a(n-1))-A001489(a(n-1))` -/
def P1305018369960369365.Spec : Prop :=
  ∀ n, P1305018369960369365.a n = A253251 (n + 1)

end A253251

/-!
# A253252: Twin primes with equal number of odd and even digits.

The programs for A253252, there is no canonical definition to state claims against.
-/

/-! ## A253252.P18124927223259246000

`∩[A001097(n+1), A144226(n+1)]`
-/

namespace A253252.P18124927223259246000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P18124927223259246000

/-! ## A253252.P3011008807615750490

`∩[A132247(n+1), A144226(n+1)]`
-/

namespace A253252.P3011008807615750490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P3011008807615750490

/-! ## A253252.P5063407706203782431

`∩[A144226(n+1), A171688(n+1)]`
-/

namespace A253252.P5063407706203782431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P5063407706203782431

/-! ## A253252.P12216283035481770687

`∩[A144226(n+1), A171821(n+1)]`
-/

namespace A253252.P12216283035481770687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P12216283035481770687

/-! ## A253252.P1643346169582106136

`∩[A144226(n+1), A265760(n+1)]`
-/

namespace A253252.P1643346169582106136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P1643346169582106136

/-! ## A253252.P8745134537975501873

`∩[A001097(n+1), A375214(n+1)]`
-/

namespace A253252.P8745134537975501873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P8745134537975501873

/-! ## A253252.P7637758208808553343

`∩[A132247(n+1), A375214(n+1)]`
-/

namespace A253252.P7637758208808553343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P7637758208808553343

/-! ## A253252.P14214677744088255906

`∩[A171688(n+1), A375214(n+1)]`
-/

namespace A253252.P14214677744088255906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P14214677744088255906

/-! ## A253252.P10731389288078616418

`∩[A171821(n+1), A375214(n+1)]`
-/

namespace A253252.P10731389288078616418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P10731389288078616418

/-! ## A253252.P2204692032032258399

`∩[A265760(n+1), A375214(n+1)]`
-/

namespace A253252.P2204692032032258399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P2204692032032258399

/-! ## A253252.P5035647558744039631

`∩[A001097(n+1), A227870(n+1)]`
-/

namespace A253252.P5035647558744039631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P5035647558744039631

/-! ## A253252.P1977480451528415161

`∩[A132247(n+1), A227870(n+1)]`
-/

namespace A253252.P1977480451528415161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P1977480451528415161

/-! ## A253252.P2848441137105260447

`∩[A171688(n+1), A227870(n+1)]`
-/

namespace A253252.P2848441137105260447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P2848441137105260447

/-! ## A253252.P8025058341212826916

`∩[A171821(n+1), A227870(n+1)]`
-/

namespace A253252.P8025058341212826916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P8025058341212826916

/-! ## A253252.P15790839962740514613

`∩[A227870(n+1), A265760(n+1)]`
-/

namespace A253252.P15790839962740514613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253252.P15790839962740514613

/-! ## A253252.P10891744206588445317

`p?[A072963(A144226(n+1))]`
-/

namespace A253252.P10891744206588445317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A144226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253252.P10891744206588445317

/-! ## A253252.P3573589693432854419

`record[A072963(A144226(n+2))]`
-/

namespace A253252.P3573589693432854419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A144226 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253252.P3573589693432854419

/-! ## A253252.P12224300270175688717

`filter[A144226(n+1), A164292(#)]`
-/

namespace A253252.P12224300270175688717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A253252.P12224300270175688717

/-! ## A253252.P10445807214203257505

`filter[A375214(n+1), A164292(#)]`
-/

namespace A253252.P10445807214203257505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A253252.P10445807214203257505

/-! ## A253252.P13036506549014516867

`p?[A072963(p?[A227870(n+1)])]`
-/

namespace A253252.P13036506549014516867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253252.P13036506549014516867

/-!
# A253254: Largest prime factor of the n-th 11-gonal number.

The programs for A253254, the canonical program `A253254.P2920591398926409598` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253254 has offset 2).

The definition of A253254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253254.P2920591398926409598

`A006530(A006530(n+2)*A075677(3*n+4))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253254

/-- `A006530(A006530(n+2)*A075677(3*n+4))` -/
def P2920591398926409598.Spec : Prop :=
  ∀ n, P2920591398926409598.a n = A253254 (n + 2)

theorem P2920591398926409598.correct : P2920591398926409598.Spec := by
  intro n
  simp only [A253254, Nat.add_sub_cancel]

end A253254

/-! ## A253254.P10317069540484338432

`A006530(∏{p}[A051682(n+2), #])`
-/

namespace A253254.P10317069540484338432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A253254.P10317069540484338432

namespace A253254

/-- `A006530(∏{p}[A051682(n+2), #])` -/
def P10317069540484338432.Spec : Prop :=
  ∀ n, P10317069540484338432.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P10702721110283657669

`A006530(∏{p}[A213479(2*(n+1)), #])`
-/

namespace A253254.P10702721110283657669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A253254.P10702721110283657669

namespace A253254

/-- `A006530(∏{p}[A213479(2*(n+1)), #])` -/
def P10702721110283657669.Spec : Prop :=
  ∀ n, P10702721110283657669.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P18015061386526257434

`A006530(∏{p}[A000217(3*n+4)+n+1, #])`
-/

namespace A253254.P18015061386526257434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 4) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A253254.P18015061386526257434

namespace A253254

/-- `A006530(∏{p}[A000217(3*n+4)+n+1, #])` -/
def P18015061386526257434.Spec : Prop :=
  ∀ n, P18015061386526257434.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P14629460720504858700

`A006530(A006530(n+2)*A165367(3*(n+1)))`
-/

namespace A253254.P14629460720504858700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A165367 (3 * (n + 1))).toNat

end

end A253254.P14629460720504858700

namespace A253254

/-- `A006530(A006530(n+2)*A165367(3*(n+1)))` -/
def P14629460720504858700.Spec : Prop :=
  ∀ n, P14629460720504858700.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P15888391604513838866

`A006530(∑[9*n+10]+1)`
-/

namespace A253254.P15888391604513838866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253254.P15888391604513838866

namespace A253254

/-- `A006530(∑[9*n+10]+1)` -/
def P15888391604513838866.Spec : Prop :=
  ∀ n, P15888391604513838866.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P10560751804234209278

`p?[A006530(A026381(2*(n+1)))]`
-/

namespace A253254.P10560751804234209278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A026381 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253254.P10560751804234209278

namespace A253254

/-- `p?[A006530(A026381(2*(n+1)))]` -/
def P10560751804234209278.Spec : Prop :=
  ∀ n, P10560751804234209278.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P4004456251997170178

`or(1, A006530(A024401(3*n+4)))`
-/

namespace A253254.P4004456251997170178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A024401 (3 * n + 4)).toNat)

end

end A253254.P4004456251997170178

namespace A253254

/-- `or(1, A006530(A024401(3*n+4)))` -/
def P4004456251997170178.Spec : Prop :=
  ∀ n, P4004456251997170178.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P15338996422120870509

`lcm(A006530(A051682(n+2)), A065357(n))`
-/

namespace A253254.P15338996422120870509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A051682 (n + 2)).toNat) (A065357 n)

end

end A253254.P15338996422120870509

namespace A253254

/-- `lcm(A006530(A051682(n+2)), A065357(n))` -/
def P15338996422120870509.Spec : Prop :=
  ∀ n, (P15338996422120870509.a n : ℤ) = A253254 (n + 2)

end A253254

/-! ## A253254.P1208341177497868334

`abs(A020985(n))*A006530(A051682(n+2))`
-/

namespace A253254.P1208341177497868334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n| * A006530 (A051682 (n + 2)).toNat

end

end A253254.P1208341177497868334

namespace A253254

/-- `abs(A020985(n))*A006530(A051682(n+2))` -/
def P1208341177497868334.Spec : Prop :=
  ∀ n, P1208341177497868334.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P16895420255205159072

`p?[A006530(A026381(n+2))-A000035(n)]`
-/

namespace A253254.P16895420255205159072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A026381 (n + 2)).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253254.P16895420255205159072

namespace A253254

/-- `p?[A006530(A026381(n+2))-A000035(n)]` -/
def P16895420255205159072.Spec : Prop :=
  ∀ n, P16895420255205159072.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P13263515811273727465

`A006530(A051682(n+2))%A051682(n+3)`
-/

namespace A253254.P13263515811273727465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A051682 (n + 2)).toNat) (A051682 (n + 3))

end

end A253254.P13263515811273727465

namespace A253254

/-- `A006530(A051682(n+2))%A051682(n+3)` -/
def P13263515811273727465.Spec : Prop :=
  ∀ n, P13263515811273727465.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P13107509130663615713

`A007318(C(2, n))*A006530(A051682(n+2))`
-/

namespace A253254.P13107509130663615713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A006530 (A051682 (n + 2)).toNat

end

end A253254.P13107509130663615713

namespace A253254

/-- `A007318(C(2, n))*A006530(A051682(n+2))` -/
def P13107509130663615713.Spec : Prop :=
  ∀ n, P13107509130663615713.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P2744260483627447262

`A007318((-1)^n+1)*A006530(A051682(n+2))`
-/

namespace A253254.P2744260483627447262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 1).toNat * A006530 (A051682 (n + 2)).toNat

end

end A253254.P2744260483627447262

namespace A253254

/-- `A007318((-1)^n+1)*A006530(A051682(n+2))` -/
def P2744260483627447262.Spec : Prop :=
  ∀ n, P2744260483627447262.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P15943534897214001850

`A014963(A165603(n))*A006530(A051682(n+2))`
-/

namespace A253254.P15943534897214001850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165603 n).toNat * A006530 (A051682 (n + 2)).toNat

end

end A253254.P15943534897214001850

namespace A253254

/-- `A014963(A165603(n))*A006530(A051682(n+2))` -/
def P15943534897214001850.Spec : Prop :=
  ∀ n, P15943534897214001850.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P9057865504821163742

`or(1, A006530(A152995(n+2)))`
-/

namespace A253254.P9057865504821163742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A152995 (n + 2)).toNat)

end

end A253254.P9057865504821163742

namespace A253254

/-- `or(1, A006530(A152995(n+2)))` -/
def P9057865504821163742.Spec : Prop :=
  ∀ n, P9057865504821163742.a n = A253254 (n + 2)

end A253254

/-! ## A253254.P16044826962852915343

`A006530(A152995(n+2))%A006564(n+2)`
-/

namespace A253254.P16044826962852915343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A152995 (n + 2)).toNat) (A006564 (n + 2))

end

end A253254.P16044826962852915343

namespace A253254

/-- `A006530(A152995(n+2))%A006564(n+2)` -/
def P16044826962852915343.Spec : Prop :=
  ∀ n, P16044826962852915343.a n = A253254 (n + 2)

end A253254

/-!
# A253255: G.f. satisfies: A(x) = (1 - x^3*A(x)^3)^2 / (1 - x*A(x))^4.

The programs for A253255, there is no canonical definition to state claims against.
-/

/-! ## A253255.P16081975824646596761

`A036470(A006002(n)+n)`
-/

namespace A253255.P16081975824646596761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036470 (A006002 n + (n : ℤ)).toNat

end

end A253255.P16081975824646596761

/-!
# A253256: G.f. satisfies: A(x) = (1 - x^3*A(x)^6) / (1 - x*A(x)^2)^2.

The programs for A253256, there is no canonical definition to state claims against.
-/

/-! ## A253256.P2036697757778727455

`A223092(A046092(n))/(n+1)`
-/

namespace A253256.P2036697757778727455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223092 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A253256.P2036697757778727455

/-! ## A253256.P122011545431242549

`or(A014963(A086441(n+2)), A086441(2*n+1))`
-/

namespace A253256.P122011545431242549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A086441 (n + 2)).toNat) (A086441 (2 * n + 1))

end

end A253256.P122011545431242549

/-!
# A253259: Number of factorizations of m^n into 4 factors, where m is a product of exactly 4 distinct primes and each factor is a product of n primes (counted with multiplicity).

The programs for A253259, there is no canonical definition to state claims against.
-/

/-! ## A253259.P14545990906416730848

`A257463(A155212(n)+12)`
-/

namespace A253259.P14545990906416730848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (A155212 n + 12).toNat

end

end A253259.P14545990906416730848

/-! ## A253259.P11747968521426905082

`A257463(A056000(n)+14)`
-/

namespace A253259.P11747968521426905082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (A056000 n + 14).toNat

end

end A253259.P11747968521426905082

/-! ## A253259.P7502874025060810409

`A257463(eq[4, A002262(n)])`
-/

namespace A253259.P7502874025060810409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253259.P7502874025060810409

/-! ## A253259.P11129214694857607565

`A257463(A141214(n+1)+7)`
-/

namespace A253259.P11129214694857607565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (A141214 (n + 1) + 7).toNat

end

end A253259.P11129214694857607565

/-! ## A253259.P11460095823594080171

`A257463(eq[4, A144328(n+1)])`
-/

namespace A253259.P11460095823594080171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253259.P11460095823594080171

/-!
# A253260: Brazilian squares.

The programs for A253260, the canonical program `A253260.P9231036617430178530` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253260 has offset 1).

The definition of A253260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253260.P9231036617430178530

`eq[n, A135684(A233583(n+1))]²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253260

/-- `eq[n, A135684(A233583(n+1))]²` -/
def P9231036617430178530.Spec : Prop :=
  ∀ n, (P9231036617430178530.a n : ℤ) = A253260 (n + 1)

theorem P9231036617430178530.correct : P9231036617430178530.Spec := by
  intro n
  simp only [A253260, Nat.add_sub_cancel]

end A253260

/-! ## A253260.P17647406013699292220

`lt[A143062(2*n), A086134(n)]²`
-/

namespace A253260.P17647406013699292220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A253260.P17647406013699292220

namespace A253260

/-- `lt[A143062(2*n), A086134(n)]²` -/
def P17647406013699292220.Spec : Prop :=
  ∀ n, (P17647406013699292220.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P6149948177588038459

`∪[A002808(n+1), A132285(n+1)]²`
-/

namespace A253260.P6149948177588038459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A253260.P6149948177588038459

namespace A253260

/-- `∪[A002808(n+1), A132285(n+1)]²` -/
def P6149948177588038459.Spec : Prop :=
  ∀ n, (P6149948177588038459.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P16201467321811295798

`∪[A002808(n+1), A190944(n+1)]²`
-/

namespace A253260.P16201467321811295798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A253260.P16201467321811295798

namespace A253260

/-- `∪[A002808(n+1), A190944(n+1)]²` -/
def P16201467321811295798.Spec : Prop :=
  ∀ n, (P16201467321811295798.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P12541879138495436241

`∪[A002808(n+1), A257129(n+1)]²`
-/

namespace A253260.P12541879138495436241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A253260.P12541879138495436241

namespace A253260

/-- `∪[A002808(n+1), A257129(n+1)]²` -/
def P12541879138495436241.Spec : Prop :=
  ∀ n, (P12541879138495436241.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P15807061249044707408

`∪[A020449(3*n+1), A002808(n+1)]²`
-/

namespace A253260.P15807061249044707408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A253260.P15807061249044707408

namespace A253260

/-- `∪[A020449(3*n+1), A002808(n+1)]²` -/
def P15807061249044707408.Spec : Prop :=
  ∀ n, (P15807061249044707408.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P17062643348975928438

`record[gcd(n, A065827(n+1)*A339579(n+1))²]`
-/

namespace A253260.P17062643348975928438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A065827 (n + 1) * A339579 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253260.P17062643348975928438

namespace A253260

/-- `record[gcd(n, A065827(n+1)*A339579(n+1))²]` -/
def P17062643348975928438.Spec : Prop :=
  ∀ n, (P17062643348975928438.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P13312381390180948781

`lt[A028609(A028609(n)), A032741(n)]²`
-/

namespace A253260.P13312381390180948781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (A028609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A253260.P13312381390180948781

namespace A253260

/-- `lt[A028609(A028609(n)), A032741(n)]²` -/
def P13312381390180948781.Spec : Prop :=
  ∀ n, (P13312381390180948781.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P4482217928468065974

`lt[A033723(A033723(n)), A032741(n)]²`
-/

namespace A253260.P4482217928468065974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (A033723 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A253260.P4482217928468065974

namespace A253260

/-- `lt[A033723(A033723(n)), A032741(n)]²` -/
def P4482217928468065974.Spec : Prop :=
  ∀ n, (P4482217928468065974.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P16193305645028509435

`eq[A007953(A055672(n)), A339579(n+1)]²`
-/

namespace A253260.P16193305645028509435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A253260.P16193305645028509435

namespace A253260

/-- `eq[A007953(A055672(n)), A339579(n+1)]²` -/
def P16193305645028509435.Spec : Prop :=
  ∀ n, (P16193305645028509435.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P945469288403254114

`eq[A035930(n)*A339579(n+1), A339579(n+1)]²`
-/

namespace A253260.P945469288403254114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n * A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A253260.P945469288403254114

namespace A253260

/-- `eq[A035930(n)*A339579(n+1), A339579(n+1)]²` -/
def P945469288403254114.Spec : Prop :=
  ∀ n, (P945469288403254114.a n : ℤ) = A253260 (n + 1)

end A253260

/-! ## A253260.P4945838486703935936

`eq[A088117(n)*A339579(n+1), A339579(n+1)]²`
-/

namespace A253260.P4945838486703935936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088117 n * A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A253260.P4945838486703935936

namespace A253260

/-- `eq[A088117(n)*A339579(n+1), A339579(n+1)]²` -/
def P4945838486703935936.Spec : Prop :=
  ∀ n, (P4945838486703935936.a n : ℤ) = A253260 (n + 1)

end A253260

/-!
# A253261: Odd Brazilian squares.

The programs for A253261, there is no canonical definition to state claims against.
-/

/-! ## A253261.P2995213871603480972

`record[A135684(2*n+9)²]`
-/

namespace A253261.P2995213871603480972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (2 * n + 9) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253261.P2995213871603480972

/-! ## A253261.P676137802434986289

`filter[A253260(n+1), A039982(#)]`
-/

namespace A253261.P676137802434986289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A253261.P676137802434986289

/-! ## A253261.P1050838060481173695

`filter[A253260(n+1), A098108(#)]`
-/

namespace A253261.P1050838060481173695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098108 (f1 j).toNat = 1) n)

end

end A253261.P1050838060481173695

/-! ## A253261.P3622242586447473512

`filter[A253260(n+1), A098725(#)]`
-/

namespace A253261.P3622242586447473512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A253261.P3622242586447473512

/-! ## A253261.P3442244606161162697

`filter[A253260(n+1), A166486(#)]`
-/

namespace A253261.P3442244606161162697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A253261.P3442244606161162697

/-!
# A253262: Expansion of (x + x^2 + x^3) / (1 - x + x^2 - x^3 + x^4) in powers of x.

The programs for A253262, the canonical program `A253262.P8879625062386023026` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253262 has offset 0).

The definition of A253262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253262.P8879625062386023026

`-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253262

/-- `-a(n-5)` -/
def P8879625062386023026.Spec : Prop :=
  ∀ n, P8879625062386023026.a n = A253262 n

theorem P8879625062386023026.correct : P8879625062386023026.Spec := by
  intro n
  simp only [A253262]

end A253262

/-!
# A253263: Number of factorizations of m^n into 5 factors, where m is a product of exactly 5 distinct primes and each factor is a product of n primes (counted with multiplicity).

The programs for A253263, there is no canonical definition to state claims against.
-/

/-! ## A253263.P3513347597917960698

`A257463(eq[5, A002262(n)])`
-/

namespace A253263.P3513347597917960698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253263.P3513347597917960698

/-! ## A253263.P1761790265375468609

`A257463(eq[6, A193738(n)])`
-/

namespace A253263.P1761790265375468609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253263.P1761790265375468609

/-! ## A253263.P3207988990587765679

`A257463(eq[32, A059268(n)])`
-/

namespace A253263.P3207988990587765679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253263.P3207988990587765679

/-! ## A253263.P5308868599234426617

`A257463(eq[5, A144328(n+1)])`
-/

namespace A253263.P5308868599234426617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253263.P5308868599234426617

/-! ## A253263.P2404930728347047038

`A257463(eq[6, A002260(n+1)])`
-/

namespace A253263.P2404930728347047038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253263.P2404930728347047038

/-!
# A253265: The number of tilings of 2 X n boards with squares of 2 colors and dominoes of 3 colors.

The programs for A253265, the canonical program `A253265.P10922438618397498141` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253265 has offset 0).

The definition of A253265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253265.P10922438618397498141

`10*a(n-1)+12*a(n-2)-27*a(n-3)` with `a(0)=1, a(1)=7, a(2)=82`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253265

/-- `10*a(n-1)+12*a(n-2)-27*a(n-3)` -/
def P10922438618397498141.Spec : Prop :=
  ∀ n, P10922438618397498141.a n = A253265 n

theorem P10922438618397498141.correct : P10922438618397498141.Spec := by
  intro n
  simp only [A253265]

end A253265

/-!
# A253268: Product_{k=1..n} Fibonacci(k)^k.

The programs for A253268, there is no canonical definition to state claims against.
-/

/-! ## A253268.P16466751956106695207

`∏[A100399(n+1)]`
-/

namespace A253268.P16466751956106695207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253268.P16466751956106695207

/-! ## A253268.P15219311621156340734

`∏[A131609(∑[n+2])]`
-/

namespace A253268.P15219311621156340734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131609 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253268.P15219311621156340734

/-! ## A253268.P16854063644004785612

`∏[A000045(n+1)^(n+1)]`
-/

namespace A253268.P16854063644004785612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253268.P16854063644004785612

/-! ## A253268.P5342052263164195025

`∏[A243063(n+1)^A243020(n+1)]`
-/

namespace A253268.P5342052263164195025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243063 (n + 1) : ℚ) ^ (A243020 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253268.P5342052263164195025

/-! ## A253268.P608834000580708690

`(Δ[A000045(n)]+A000045(n))^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A253268.P608834000580708690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) - f1 n + A000045 n) ^ (n + 1) * a (n - 1)

end

end A253268.P608834000580708690

/-!
# A253272: Triangular array read by rows: T(h,k) = number of steps from (h,k) to (0,0), where one step is (x,y) -> (x-1, y) if x is odd or (x,y) -> (y, x/2) if x is even, except that (2,0) -> (1,0).

The programs for A253272, there is no canonical definition to state claims against.
-/

/-! ## A253272.P13469130159394620889

`A358372(A377209(n+1))-1`
-/

namespace A253272.P13469130159394620889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A377209 (n + 1)).toNat - 1

end

end A253272.P13469130159394620889

/-! ## A253272.P8544154582927932847

`A084558(A036847(n+1)*A110449(n))`
-/

namespace A253272.P8544154582927932847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A036847 (n + 1) * A110449 n).toNat

end

end A253272.P8544154582927932847

/-! ## A253272.P461171311062707362

`A084558(A194968(n+1)*A240179(n))`
-/

namespace A253272.P461171311062707362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A194968 (n + 1) * A240179 n).toNat

end

end A253272.P461171311062707362

/-!
# A253273: Triangle T(n,k) = Sum_{j=0..n-k+1} binomial(k+j,k-j+1)*binomial(n-k,j-1), read by rows.

The programs for A253273, there is no canonical definition to state claims against.
-/

/-! ## A253273.P12393835251434574961

`A208337(n+1)-A124762(A179937(n+1))`
-/

namespace A253273.P12393835251434574961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (n + 1) - A124762 (A179937 (n + 1)).toNat

end

end A253273.P12393835251434574961

/-! ## A253273.P5020527524619775128

`A120835(A238339(comp[∑[n+1]]))`
-/

namespace A253273.P5020527524619775128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A238339 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A253273.P5020527524619775128

/-! ## A253273.P11724179099282866349

`A260999(A055129(n+1)²)`
-/

namespace A253273.P11724179099282866349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A055129 (n + 1) ^ 2).toNat

end

end A253273.P11724179099282866349

/-! ## A253273.P11109143518045374916

`A335174(comp[∑[n]]*A227578(n))`
-/

namespace A253273.P11109143518045374916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335174 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A227578 n).toNat

end

end A253273.P11109143518045374916

/-! ## A253273.P6029790709339530340

`A180493(A128710(n))-A008288(n)`
-/

namespace A253273.P6029790709339530340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A128710 n).toNat - A008288 n

end

end A253273.P6029790709339530340

/-!
# A253274: Exponent of the highest power of 2 dividing A007497(n).

The programs for A253274, there is no canonical definition to state claims against.
-/

/-! ## A253274.P5301163131487513937

`val(A007497(n+1), 2)`
-/

namespace A253274.P5301163131487513937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007497 (n + 1)).toNat 2

end

end A253274.P5301163131487513937

/-! ## A253274.P7091857194372920356

`log2(gcd(A007497(n+1), A020707(n)))`
-/

namespace A253274.P7091857194372920356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A007497 (n + 1)) (A020707 n) : ℝ)

end

end A253274.P7091857194372920356

/-! ## A253274.P9317235211405896938

`A001222(and(-A007497(n+1), A007497(n+1)))`
-/

namespace A253274.P9317235211405896938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A007497 (n + 1)) (A007497 (n + 1))).toNat

end

end A253274.P9317235211405896938

/-! ## A253274.P3786863067804439907

`val(record[A000203(a(n-2))], 2)` with `a(0)=2, a(1)=1`
-/

namespace A253274.P3786863067804439907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A000203 (f1 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A253274.P3786863067804439907

/-! ## A253274.P17911130447505616928

`A007814(A007497(n+1))`
-/

namespace A253274.P17911130447505616928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007497 (n + 1)).toNat

end

end A253274.P17911130447505616928

/-!
# A253275: a(n) = Sum_{i=1..floor(n/2)} d( i*(n-i) ), where d(n) = the number of divisors of n.

The programs for A253275, there is no canonical definition to state claims against.
-/

/-! ## A253275.P10659858094784633558

`A111660(A134869(n+1)-A059268(n))`
-/

namespace A253275.P10659858094784633558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A134869 (n + 1) - A059268 n).toNat

end

end A253275.P10659858094784633558

/-! ## A253275.P919306342457681675

`lt[A173122(2*n+3), A001359(A118851(n))]`
-/

namespace A253275.P919306342457681675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173122 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A118851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253275.P919306342457681675

/-!
# A253276: Number of undirected labeled graphs on 2n nodes with exactly n cycle graphs as connected components.

The programs for A253276, there is no canonical definition to state claims against.
-/

/-! ## A253276.P2486461625842395233

`A215771(∑[4*n])`
-/

namespace A253276.P2486461625842395233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253276.P2486461625842395233

/-! ## A253276.P13158476063330328013

`A215771(A046092(n))+A025466(n)`
-/

namespace A253276.P13158476063330328013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A046092 n).toNat + A025466 n

end

end A253276.P13158476063330328013

/-! ## A253276.P18111045506863679048

`gcd(A000038(n), A215771(A046092(n)))`
-/

namespace A253276.P18111045506863679048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215771 (A046092 n).toNat)

end

end A253276.P18111045506863679048

/-! ## A253276.P11592248763740263920

`lcm(A106400(n), A215771(A046092(n)))`
-/

namespace A253276.P11592248763740263920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A215771 (A046092 n).toNat)

end

end A253276.P11592248763740263920

/-! ## A253276.P8625695656261209470

`A007318(C(2, n+2))*A215771(A046092(n))`
-/

namespace A253276.P8625695656261209470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A215771 (A046092 n).toNat

end

end A253276.P8625695656261209470

/-!
# A253277: Integer area A of triangles with side lengths in the commutative ring Z[sqrt(3)].

The programs for A253277, there is no canonical definition to state claims against.
-/

/-! ## A253277.P1939333529422642567

`3*A230313(A077168(n))`
-/

namespace A253277.P1939333529422642567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230313 (A077168 n).toNat

end

end A253277.P1939333529422642567

/-! ## A253277.P12440172309678077509

`3*A099735(A311612(n))`
-/

namespace A253277.P12440172309678077509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A099735 (A311612 n).toNat

end

end A253277.P12440172309678077509

/-! ## A253277.P4697721036690677439

`eq[A014184(n), A128033(n)]`
-/

namespace A253277.P4697721036690677439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253277.P4697721036690677439

/-! ## A253277.P10793596051839607075

`eq[A014359(n), A128033(n)]`
-/

namespace A253277.P10793596051839607075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253277.P10793596051839607075

/-!
# A253281: Triangular array read by rows: T(h,k) = number of steps from (h,k) to (0,0), where allowable steps are as follows: (x,y) -> (x-r, y) if r > 0, and (x,y) -> (y, r/3) otherwise, where r = x mod 3.

The programs for A253281, there is no canonical definition to state claims against.
-/

/-! ## A253281.P12823364342227381002

`A144968(n)-A336137(A003520(n))`
-/

namespace A253281.P12823364342227381002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n - A336137 (A003520 n).toNat

end

end A253281.P12823364342227381002

/-! ## A253281.P1551939409689829204

`A072649(n+1)-A284271(A075462(n+1)*A216622(n+1))`
-/

namespace A253281.P1551939409689829204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A284271 (A075462 (n + 1) * A216622 (n + 1)).toNat

end

end A253281.P1551939409689829204

/-! ## A253281.P1570547616829450637

`A144968(n)-A196564(A209424(n))`
-/

namespace A253281.P1570547616829450637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n - A196564 (A209424 n).toNat

end

end A253281.P1570547616829450637

/-! ## A253281.P7086735777705930427

`A144968(n)-A005136(A001263(n+1))`
-/

namespace A253281.P7086735777705930427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n - A005136 (A001263 (n + 1)).toNat

end

end A253281.P7086735777705930427

/-! ## A253281.P17135116746761512543

`A144968(n)-A124976(A124976(n+1))`
-/

namespace A253281.P17135116746761512543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n - A124976 (A124976 (n + 1)).toNat

end

end A253281.P17135116746761512543

/-!
# A253282: Coefficients in the expansion of sn(t * x, m) / t in powers of x where t = sqrt( -1/2 - sqrt(1/6)), m = 5 - sqrt(24), and sn() is a Jacobi elliptic function.

The programs for A253282, there is no canonical definition to state claims against.
-/

/-! ## A253282.P11240044484725222222

`A057363(A195895(n)+1)`
-/

namespace A253282.P11240044484725222222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A195895 n + 1).toNat

end

end A253282.P11240044484725222222

/-! ## A253282.P7179708577651141922

`A005942(∑[∑[A327227(n)]])`
-/

namespace A253282.P7179708577651141922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253282.P7179708577651141922

/-!
# A253283: Triangle read by rows: coefficients of the partial fraction decomposition of [d^n/dx^n] (x/(1-x))^n/n!.

The programs for A253283, the canonical program `A253283.P6460536467449515030` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253283 has offset 0).

The definition of A253283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253283.P6460536467449515030

`A059481(n)*A097805(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253283

/-- `A059481(n)*A097805(n)` -/
def P6460536467449515030.Spec : Prop :=
  ∀ n, P6460536467449515030.a n = A253283 n

theorem P6460536467449515030.correct : P6460536467449515030.Spec := by
  intro n
  simp only [A253283]

end A253283

/-! ## A253283.P18274775536876926209

`A007318(n)*A097805(A245300(n))`
-/

namespace A253283.P18274775536876926209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097805 (A245300 n).toNat

end

end A253283.P18274775536876926209

namespace A253283

/-- `A007318(n)*A097805(A245300(n))` -/
def P18274775536876926209.Spec : Prop :=
  ∀ n, P18274775536876926209.a n = A253283 n

end A253283

/-! ## A253283.P4242589553269414462

`A097805(A245300(n))*A135227(n)`
-/

namespace A253283.P4242589553269414462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n).toNat * A135227 n

end

end A253283.P4242589553269414462

namespace A253283

/-- `A097805(A245300(n))*A135227(n)` -/
def P4242589553269414462.Spec : Prop :=
  ∀ n, P4242589553269414462.a n = A253283 n

end A253283

/-! ## A253283.P15764403099294011235

`A097805(A014132(n+1))*A097805(A245300(n))`
-/

namespace A253283.P15764403099294011235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A014132 (n + 1)).toNat * A097805 (A245300 n).toNat

end

end A253283.P15764403099294011235

namespace A253283

/-- `A097805(A014132(n+1))*A097805(A245300(n))` -/
def P15764403099294011235.Spec : Prop :=
  ∀ n, P15764403099294011235.a n = A253283 n

end A253283

/-! ## A253283.P7782647589552006764

`A097805(n)*A097805(A245300(n)+A025581(n))`
-/

namespace A253283.P7782647589552006764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A097805 (A245300 n + A025581 n).toNat

end

end A253283.P7782647589552006764

namespace A253283

/-- `A097805(n)*A097805(A245300(n)+A025581(n))` -/
def P7782647589552006764.Spec : Prop :=
  ∀ n, P7782647589552006764.a n = A253283 n

end A253283

/-! ## A253283.P10384713722870551803

`A370983(n)/A165680(n+1)`
-/

namespace A253283.P10384713722870551803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370983 n : ℚ) / (A165680 (n + 1) : ℚ)

end

end A253283.P10384713722870551803

namespace A253283

/-- `A370983(n)/A165680(n+1)` -/
def P10384713722870551803.Spec : Prop :=
  ∀ n, P10384713722870551803.a n = (A253283 n : ℚ)

end A253283

/-! ## A253283.P8573665552853222018

`A156991(n)/A098361(n)`
-/

namespace A253283.P8573665552853222018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156991 n : ℚ) / (A098361 n : ℚ)

end

end A253283.P8573665552853222018

namespace A253283

/-- `A156991(n)/A098361(n)` -/
def P8573665552853222018.Spec : Prop :=
  ∀ n, P8573665552853222018.a n = (A253283 n : ℚ)

end A253283

/-! ## A253283.P6375020865581894204

`A000007(n)+A063007(n)-A123160(n)`
-/

namespace A253283.P6375020865581894204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A063007 n - A123160 n)

end

end A253283.P6375020865581894204

namespace A253283

/-- `A000007(n)+A063007(n)-A123160(n)` -/
def P6375020865581894204.Spec : Prop :=
  ∀ n, P6375020865581894204.a n = A253283 n

end A253283

/-!
# A253284: Triangle read by rows, T(n,k) = (k+1)*(n+1)!*(n+k)!/((k+1)!^2*(n-k)!) with n >= 0 and 0 <= k <= n.

The programs for A253284, the canonical program `A253284.P16495861320394303083` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253284 has offset 0).

The definition of A253284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253284.P17041895900632537457

`∑[char[∑[n]]]!*A088617(n)`
-/

namespace A253284.P17041895900632537457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A088617 n

end

end A253284.P17041895900632537457

namespace A253284

/-- `∑[char[∑[n]]]!*A088617(n)` -/
def P17041895900632537457.Spec : Prop :=
  ∀ n, P17041895900632537457.a n = A253284 n

end A253284

/-! ## A253284.P16495861320394303083

`Δ[A200748(n)]*A088617(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A253284

/-- `Δ[A200748(n)]*A088617(n)` -/
def P16495861320394303083.Spec : Prop :=
  ∀ n, P16495861320394303083.a n = A253284 n

theorem P16495861320394303083.correct : P16495861320394303083.Spec := by
  intro n
  simp only [A253284]

end A253284

/-! ## A253284.P15790528910532904148

`A357367(n+1)+A357367(n)`
-/

namespace A253284.P15790528910532904148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357367 (n + 1) + A357367 n

end

end A253284.P15790528910532904148

namespace A253284

/-- `A357367(n+1)+A357367(n)` -/
def P15790528910532904148.Spec : Prop :=
  ∀ n, P15790528910532904148.a n = A253284 n

end A253284

/-! ## A253284.P18159571120156371153

`A063007(n)*A094310(n+1)`
-/

namespace A253284.P18159571120156371153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A094310 (n + 1)

end

end A253284.P18159571120156371153

namespace A253284

/-- `A063007(n)*A094310(n+1)` -/
def P18159571120156371153.Spec : Prop :=
  ∀ n, P18159571120156371153.a n = A253284 n

end A253284

/-! ## A253284.P13675811982842305368

`A088617(n)*A130493(n+1)`
-/

namespace A253284.P13675811982842305368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 n * A130493 (n + 1)

end

end A253284.P13675811982842305368

namespace A253284

/-- `A088617(n)*A130493(n+1)` -/
def P13675811982842305368.Spec : Prop :=
  ∀ n, P13675811982842305368.a n = A253284 n

end A253284

/-! ## A253284.P10409098068720797195

`A113025(n)*A173333(n+1)`
-/

namespace A253284.P10409098068720797195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 n * A173333 (n + 1)

end

end A253284.P10409098068720797195

namespace A253284

/-- `A113025(n)*A173333(n+1)` -/
def P10409098068720797195.Spec : Prop :=
  ∀ n, P10409098068720797195.a n = A253284 n

end A253284

/-! ## A253284.P4736751310796144537

`A103371(n)*A377660(n)`
-/

namespace A253284.P4736751310796144537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n * A377660 n

end

end A253284.P4736751310796144537

namespace A253284

/-- `A103371(n)*A377660(n)` -/
def P4736751310796144537.Spec : Prop :=
  ∀ n, P4736751310796144537.a n = A253284 n

end A253284

/-! ## A253284.P12994923036820737262

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n+1-C(∑[char[∑[n]]], 2))!*∑[char[∑[n]]]!`
-/

namespace A253284.P12994923036820737262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

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
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f12 j) : ℚ)

end

end A253284.P12994923036820737262

namespace A253284

/-- `floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n+1-C(∑[char[∑[n]]], 2))!*∑[char[∑[n]]]!` -/
def P12994923036820737262.Spec : Prop :=
  ∀ n, P12994923036820737262.a n = (A253284 n : ℚ)

end A253284

/-!
# A253285: a(n) = RF(n+1,3)*C(n+2,n-1), where RF(a,n) is the rising factorial.

The programs for A253285, the canonical program `A253285.P16683541272754563670` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253285 has offset 0).

The definition of A253285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253285.P16683541272754563670

`n*((n+1)*(n+2))²*(n+3)/6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253285

/-- `n*((n+1)*(n+2))²*(n+3)/6` -/
def P16683541272754563670.Spec : Prop :=
  ∀ n, P16683541272754563670.a n = (A253285 n : ℚ)

end A253285

/-! ## A253285.P11770918499746330237

`∑[(n+2)*lcm(n, (n+1)^3)]`
-/

namespace A253285.P11770918499746330237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.lcm n ((n + 1) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P11770918499746330237

namespace A253285

/-- `∑[(n+2)*lcm(n, (n+1)^3)]` -/
def P11770918499746330237.Spec : Prop :=
  ∀ n, (P11770918499746330237.a n : ℤ) = A253285 n

end A253285

/-! ## A253285.P15825435234149776471

`(n+1)^5+a(n-1)-(n+1)^3` with `a(0)=0`
-/

namespace A253285.P15825435234149776471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 5 : ℤ) + (a (n - 1) - ((n + 1) ^ 3 : ℤ))

end

end A253285.P15825435234149776471

namespace A253285

/-- `(n+1)^5+a(n-1)-(n+1)^3` -/
def P15825435234149776471.Spec : Prop :=
  ∀ n, P15825435234149776471.a n = A253285 n

end A253285

/-! ## A253285.P16582768697252927713

`∑[A133754(n+1)]`
-/

namespace A253285.P16582768697252927713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P16582768697252927713

namespace A253285

/-- `∑[A133754(n+1)]` -/
def P16582768697252927713.Spec : Prop :=
  ∀ n, P16582768697252927713.a n = A253285 n

end A253285

/-! ## A253285.P3044046535300473102

`4*A071910(n)/3`
-/

namespace A253285.P3044046535300473102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A071910 n : ℚ) / 3

end

end A253285.P3044046535300473102

namespace A253285

/-- `4*A071910(n)/3` -/
def P3044046535300473102.Spec : Prop :=
  ∀ n, P3044046535300473102.a n = (A253285 n : ℚ)

end A253285

/-! ## A253285.P14898601638497977178

`∑[3*A143945(n+1)]`
-/

namespace A253285.P14898601638497977178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A143945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P14898601638497977178

namespace A253285

/-- `∑[3*A143945(n+1)]` -/
def P14898601638497977178.Spec : Prop :=
  ∀ n, P14898601638497977178.a n = A253285 n

end A253285

/-! ## A253285.P1300509901970669384

`∑[(n+2)*A085540(n)]`
-/

namespace A253285.P1300509901970669384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A085540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P1300509901970669384

namespace A253285

/-- `∑[(n+2)*A085540(n)]` -/
def P1300509901970669384.Spec : Prop :=
  ∀ n, P1300509901970669384.a n = A253285 n

end A253285

/-! ## A253285.P17669077650915326502

`∑[n*A179824(n+2)]`
-/

namespace A253285.P17669077650915326502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A179824 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P17669077650915326502

namespace A253285

/-- `∑[n*A179824(n+2)]` -/
def P17669077650915326502.Spec : Prop :=
  ∀ n, P17669077650915326502.a n = A253285 n

end A253285

/-! ## A253285.P4386346383685427741

`∑[(n+1)*A047928(n+2)]`
-/

namespace A253285.P4386346383685427741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P4386346383685427741

namespace A253285

/-- `∑[(n+1)*A047928(n+2)]` -/
def P4386346383685427741.Spec : Prop :=
  ∀ n, P4386346383685427741.a n = A253285 n

end A253285

/-! ## A253285.P6898966877427713119

`∑[(n+2)*A085537(n+1)]`
-/

namespace A253285.P6898966877427713119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A085537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P6898966877427713119

namespace A253285

/-- `∑[(n+2)*A085537(n+1)]` -/
def P6898966877427713119.Spec : Prop :=
  ∀ n, P6898966877427713119.a n = A253285 n

end A253285

/-! ## A253285.P16728402593743319797

`∑[A136038(n+1)/(n+1)]`
-/

namespace A253285.P16728402593743319797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136038 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P16728402593743319797

namespace A253285

/-- `∑[A136038(n+1)/(n+1)]` -/
def P16728402593743319797.Spec : Prop :=
  ∀ n, P16728402593743319797.a n = (A253285 n : ℚ)

end A253285

/-! ## A253285.P12185287667147813602

`∑[2*(n+1)²*A027480(n)]`
-/

namespace A253285.P12185287667147813602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P12185287667147813602

namespace A253285

/-- `∑[2*(n+1)²*A027480(n)]` -/
def P12185287667147813602.Spec : Prop :=
  ∀ n, P12185287667147813602.a n = A253285 n

end A253285

/-! ## A253285.P11934698186208913503

`∑[record[A133754(A273943(n))]]`
-/

namespace A253285.P11934698186208913503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 (A273943 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P11934698186208913503

namespace A253285

/-- `∑[record[A133754(A273943(n))]]` -/
def P11934698186208913503.Spec : Prop :=
  ∀ n, P11934698186208913503.a n = A253285 n

end A253285

/-! ## A253285.P16393245514043330303

`∑[lcm(A005563(n), A085540(n))]`
-/

namespace A253285.P16393245514043330303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005563 n) (A085540 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P16393245514043330303

namespace A253285

/-- `∑[lcm(A005563(n), A085540(n))]` -/
def P16393245514043330303.Spec : Prop :=
  ∀ n, (P16393245514043330303.a n : ℤ) = A253285 n

end A253285

/-! ## A253285.P1515874139200890976

`(n+1)²*A002417(n+1)-A002417(n+1)`
-/

namespace A253285.P1515874139200890976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002417 (n + 1) - A002417 (n + 1)

end

end A253285.P1515874139200890976

namespace A253285

/-- `(n+1)²*A002417(n+1)-A002417(n+1)` -/
def P1515874139200890976.Spec : Prop :=
  ∀ n, P1515874139200890976.a n = A253285 n

end A253285

/-! ## A253285.P4427804298905262721

`A033488(n)+A028387(n)*A033488(n)`
-/

namespace A253285.P4427804298905262721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n + A028387 n * A033488 n

end

end A253285.P4427804298905262721

namespace A253285

/-- `A033488(n)+A028387(n)*A033488(n)` -/
def P4427804298905262721.Spec : Prop :=
  ∀ n, P4427804298905262721.a n = A253285 n

end A253285

/-! ## A253285.P13732566766213685542

`A162668(n)+A000096(n)*A162668(n)`
-/

namespace A253285.P13732566766213685542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + A000096 n * A162668 n

end

end A253285.P13732566766213685542

namespace A253285

/-- `A162668(n)+A000096(n)*A162668(n)` -/
def P13732566766213685542.Spec : Prop :=
  ∀ n, P13732566766213685542.a n = A253285 n

end A253285

/-! ## A253285.P16303812894201318929

`∑[2*A321672(n+1)]`
-/

namespace A253285.P16303812894201318929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P16303812894201318929

namespace A253285

/-- `∑[2*A321672(n+1)]` -/
def P16303812894201318929.Spec : Prop :=
  ∀ n, P16303812894201318929.a n = A253285 n

end A253285

/-! ## A253285.P11623817073735580990

`∑[∑[n]*A181617(n+2)]`
-/

namespace A253285.P11623817073735580990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A181617 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P11623817073735580990

namespace A253285

/-- `∑[∑[n]*A181617(n+2)]` -/
def P11623817073735580990.Spec : Prop :=
  ∀ n, P11623817073735580990.a n = A253285 n

end A253285

/-! ## A253285.P6984470437588201046

`∑[A133070(n+1)+(n+1)²]`
-/

namespace A253285.P6984470437588201046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133070 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253285.P6984470437588201046

namespace A253285

/-- `∑[A133070(n+1)+(n+1)²]` -/
def P6984470437588201046.Spec : Prop :=
  ∀ n, P6984470437588201046.a n = A253285 n

end A253285

/-!
# A253286: Square array read by upward antidiagonals, A(n,k) = Sum_{j=0..n} (n-j)!*C(n,n-j)* C(n-1,n-j)*k^j, for n>=0 and k>=0.

The programs for A253286, there is no canonical definition to state claims against.
-/

/-! ## A253286.P2663261262942250960

`A124761(A086645(n))+A085771(n)`
-/

namespace A253286.P2663261262942250960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A086645 n).toNat + A085771 n

end

end A253286.P2663261262942250960

/-! ## A253286.P14625032832948542035

`A250002(A142992(n))+A085771(n)`
-/

namespace A253286.P14625032832948542035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A142992 n).toNat + A085771 n

end

end A253286.P14625032832948542035

/-! ## A253286.P14590820023292517852

`and(A003961(A022098(n)), A344499(n))`
-/

namespace A253286.P14590820023292517852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (A022098 n).toNat) (A344499 n)

end

end A253286.P14590820023292517852

/-! ## A253286.P2393728026506949264

`and(A145897(A145903(n)), A344499(n))`
-/

namespace A253286.P2393728026506949264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145897 (A145903 n).toNat) (A344499 n)

end

end A253286.P2393728026506949264

/-! ## A253286.P526799612769090184

`A089865(A085771(n))`
-/

namespace A253286.P526799612769090184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089865 (A085771 n).toNat

end

end A253286.P526799612769090184

/-!
# A253289: G.f.: Product_{k>=1} 1/(1-x^k)^(2*k-1).

The programs for A253289, there is no canonical definition to state claims against.
-/

/-! ## A253289.P12009294853155090342

`A068494(A090338(n))+A002835(n)`
-/

namespace A253289.P12009294853155090342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (A090338 n).toNat + A002835 n

end

end A253289.P12009294853155090342

/-! ## A253289.P12322626834954974303

`A086077(A000140(n+1))+A002835(n)`
-/

namespace A253289.P12322626834954974303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086077 (A000140 (n + 1)).toNat + A002835 n

end

end A253289.P12322626834954974303

/-! ## A253289.P8743397165678010718

`A122285(A255380(n+4))+A002835(n)`
-/

namespace A253289.P8743397165678010718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (A255380 (n + 4)).toNat + A002835 n

end

end A253289.P8743397165678010718

/-!
# A253290: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253290, there is no canonical definition to state claims against.
-/

/-! ## A253290.P8361971025308341625

`A253294(∑[n+1]+2)`
-/

namespace A253290.P8361971025308341625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253290.P8361971025308341625

/-! ## A253290.P4251779506902323391

`record[A253294(A347629(n+1)+1)]`
-/

namespace A253290.P4251779506902323391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A347629 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253290.P4251779506902323391

/-! ## A253290.P16951859564029611107

`record[root(A253294(n+2), A253273(n))]`
-/

namespace A253290.P16951859564029611107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253294 (n + 2) : ℝ) ^ (1 / (A253273 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253290.P16951859564029611107

/-! ## A253290.P8406403337369596296

`record[root(A253294(n+2), A208337(n+1))]`
-/

namespace A253290.P8406403337369596296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253294 (n + 2) : ℝ) ^ (1 / (A208337 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253290.P8406403337369596296

/-! ## A253290.P3141705859501436463

`record[gcd(A253283(n+1), A253294(n+3))]`
-/

namespace A253290.P3141705859501436463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253283 (n + 1)) (A253294 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253290.P3141705859501436463

/-!
# A253291: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253291, there is no canonical definition to state claims against.
-/

/-! ## A253291.P9403973296573171954

`A253294(∑[n+2]+4)`
-/

namespace A253291.P9403973296573171954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253291.P9403973296573171954

/-! ## A253291.P9286958115814774996

`lcm(2, A253294(A167614(n+1)))`
-/

namespace A253291.P9286958115814774996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253294 (A167614 (n + 1)).toNat)

end

end A253291.P9286958115814774996

/-! ## A253291.P16355630868488986384

`record[A253294(A347629(n+1)+2)]`
-/

namespace A253291.P16355630868488986384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A347629 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253291.P16355630868488986384

/-! ## A253291.P12352724273818428735

`record[A253294(A257504(n+2)+2)]`
-/

namespace A253291.P12352724273818428735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A257504 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253291.P12352724273818428735

/-! ## A253291.P3127068725235368728

`record[A023531(n)*A253294(n+4)]`
-/

namespace A253291.P3127068725235368728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A253294 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253291.P3127068725235368728

/-!
# A253292: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253292, there is no canonical definition to state claims against.
-/

/-! ## A253292.P17584865180249910687

`A253294(∑[n+3]+7)`
-/

namespace A253292.P17584865180249910687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253292.P17584865180249910687

/-!
# A253293: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically, diagonally and antidiagonally.

The programs for A253293, there is no canonical definition to state claims against.
-/

/-! ## A253293.P513394916096436347

`A253294(A374005(n+1))`
-/

namespace A253293.P513394916096436347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A374005 (n + 1)).toNat

end

end A253293.P513394916096436347

/-! ## A253293.P15685063615021143644

`A253294(A167499(n+3))`
-/

namespace A253293.P15685063615021143644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A167499 (n + 3)).toNat

end

end A253293.P15685063615021143644

/-! ## A253293.P7137795054574860470

`A253294(A155212(n)+13)`
-/

namespace A253293.P7137795054574860470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A155212 n + 13).toNat

end

end A253293.P7137795054574860470

/-! ## A253293.P9902884040719819197

`A253294(A056000(n)+15)`
-/

namespace A253293.P9902884040719819197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (A056000 n + 15).toNat

end

end A253293.P9902884040719819197

/-! ## A253293.P19472474103919350

`A253294(eq[7, A066657(n)])`
-/

namespace A253293.P19472474103919350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253294 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253293.P19472474103919350

/-!
# A253296: Numbers with more composite divisors than prime divisors such that all the prime divisors are smaller than the composite divisors.

The programs for A253296, there is no canonical definition to state claims against.
-/

/-! ## A253296.P7429939772599057314

`A063539(comp[A286703(n²)])`
-/

namespace A253296.P7429939772599057314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253296.P7429939772599057314

/-! ## A253296.P11285512719509995532

`A063539(comp[A247505(11*n)])`
-/

namespace A253296.P11285512719509995532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (11 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253296.P11285512719509995532

/-! ## A253296.P18374940092980878591

`A063539(comp[Δ[A113200(3*n+1)]])`
-/

namespace A253296.P18374940092980878591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113200 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253296.P18374940092980878591

/-! ## A253296.P13955290079875379355

`A063539(A051882(n+1))%A107610(2*(n+2))`
-/

namespace A253296.P13955290079875379355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063539 (A051882 (n + 1)).toNat) (A107610 (2 * (n + 2)))

end

end A253296.P13955290079875379355

/-! ## A253296.P3472329750091624929

`A063539(comp[A236104(3*(n+1))-∑[22*n]]+2)`
-/

namespace A253296.P3472329750091624929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (3 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A253296.P3472329750091624929

/-!
# A253297: Primes p for which some multiple k*p > 2*p appears before p does in A098550.

The programs for A253297, there is no canonical definition to state claims against.
-/

/-! ## A253297.P4203479807047165181

`A162707(record[A162981(n+1)])`
-/

namespace A253297.P4203479807047165181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253297.P4203479807047165181

/-! ## A253297.P4666277599918992276

`p?[∑[A100380(A001175(n+1))]]`
-/

namespace A253297.P4666277599918992276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (A001175 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253297.P4666277599918992276

/-! ## A253297.P1008113928492367152

`p?[A079578(∑[A085229(n+2)])]`
-/

namespace A253297.P1008113928492367152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253297.P1008113928492367152

/-! ## A253297.P13692981778073871669

`p?[record[A074147(A022838(n+1))]]`
-/

namespace A253297.P13692981778073871669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A022838 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253297.P13692981778073871669

/-! ## A253297.P16274011313411917764

`p?[A002264(record[A251618(n+1)])]`
-/

namespace A253297.P16274011313411917764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251618 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253297.P16274011313411917764

/-!
# A253298: Digital root for the following sequences, F(4*n)/F(4); F(12*n)/F(12); F(20*n)/F(20), where the pattern increases by 8, ad infinitum, with the Fibonacci numbers F = A000045.

The programs for A253298, the canonical program `A253298.P7872477572229613860` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253298 has offset 1).

The definition of A253298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253298.P7872477572229613860

`dr((n+1)*gcd(2, n+1)^3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253298

/-- `dr((n+1)*gcd(2, n+1)^3)` -/
def P7872477572229613860.Spec : Prop :=
  ∀ n, (P7872477572229613860.a n : ℤ) = A253298 (n + 1)

theorem P7872477572229613860.correct : P7872477572229613860.Spec := by
  intro n
  simp only [A253298, Nat.add_sub_cancel]

end A253298

