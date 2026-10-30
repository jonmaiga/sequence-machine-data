import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C042
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
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
# A395801: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * (binomial(n+3*k,k) - binomial(n+3*k,k-1)).

The programs for A395801, there is no canonical definition to state claims against.
-/

/-! ## A395801.P15457928112060972211

`A378402(n)-A397384(n)`
-/

namespace A395801.P15457928112060972211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378402 n - A397384 n

end

end A395801.P15457928112060972211

/-!
# A395808: Number of factorizations of (p*q)^n into parts greater than 1 that contain at least one mixed factor (a part divisible by both p and q), where p and q are distinct primes.

The programs for A395808, there is no canonical definition to state claims against.
-/

/-! ## A395808.P12737210181781374351

`A002774(n)-A000041(n)²`
-/

namespace A395808.P12737210181781374351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A000041 n ^ 2

end

end A395808.P12737210181781374351

/-! ## A395808.P1684007523922272637

`A002774(n)-A001255(n)`
-/

namespace A395808.P1684007523922272637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A001255 n

end

end A395808.P1684007523922272637

/-! ## A395808.P7070672554694154017

`A331197(n)-A355390(n)`
-/

namespace A395808.P7070672554694154017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331197 n - A355390 n

end

end A395808.P7070672554694154017

/-!
# A395811: Number of Fibonacci divisors of n that are at most sqrt(n).

The programs for A395811, there is no canonical definition to state claims against.
-/

/-! ## A395811.P9129477417373507904

`A063962(A126960(n+1)%2+n)+1`
-/

namespace A395811.P9129477417373507904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (Int.tmod (A126960 (n + 1)) 2 + (n : ℤ)).toNat + 1

end

end A395811.P9129477417373507904

/-! ## A395811.P677463672066569691

`A063962(n+1)+A001221(A095103(n+1))`
-/

namespace A395811.P677463672066569691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) + A001221 (A095103 (n + 1)).toNat

end

end A395811.P677463672066569691

/-! ## A395811.P16019475891248570675

`A063962(n+1)+A000035(A344527(n+1))`
-/

namespace A395811.P16019475891248570675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) + A000035 (A344527 (n + 1)).toNat

end

end A395811.P16019475891248570675

/-! ## A395811.P4959720061347885931

`A063962(A025475(n+5))+A063962(n+1)`
-/

namespace A395811.P4959720061347885931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A025475 (n + 5)).toNat + A063962 (n + 1)

end

end A395811.P4959720061347885931

/-! ## A395811.P2697331271454630738

`A093178(A005893(2*(n+2)))+A063962(n+1)`
-/

namespace A395811.P2697331271454630738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A005893 (2 * (n + 2))).toNat + A063962 (n + 1)

end

end A395811.P2697331271454630738

/-!
# A395812: Positions of records in A001822.

The programs for A395812, there is no canonical definition to state claims against.
-/

/-! ## A395812.P15972101233057974799

`A003963(A343135(n+1))`
-/

namespace A395812.P15972101233057974799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A343135 (n + 1)).toNat

end

end A395812.P15972101233057974799

/-!
# A395813: Number of perfect matchings in the complete 4-partite graph K_{n,n,n,n}.

The programs for A395813, the canonical program `A395813.P11902416282784165986` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395813 has offset 0).

The definition of A395813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395813.P9344903286954177303

`∑{#}[n, (#!*C(n, #)²)²*(2*n-2*#)!]`
-/

namespace A395813.P9344903286954177303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial k * Nat.choose n k ^ 2) ^ 2 * Nat.factorial ((2 * n : ℤ) - (2 * k : ℤ)).toNat

end

end A395813.P9344903286954177303

namespace A395813

/-- `∑{#}[n, (#!*C(n, #)²)²*(2*n-2*#)!]` -/
def P9344903286954177303.Spec : Prop :=
  ∀ n, (P9344903286954177303.a n : ℤ) = A395813 n

end A395813

/-! ## A395813.P11902416282784165986

`(10*n²-10*n+3)*a(n-1)-9*(n-1)^4*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395813

/-- `(10*n²-10*n+3)*a(n-1)-9*(n-1)^4*a(n-2)` -/
def P11902416282784165986.Spec : Prop :=
  ∀ n, P11902416282784165986.a n = A395813 n

theorem P11902416282784165986.correct : P11902416282784165986.Spec := by
  intro n
  simp only [A395813]

end A395813

/-! ## A395813.P10966607165730189721

`n!²*A002893(n)`
-/

namespace A395813.P10966607165730189721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A002893 n

end

end A395813.P10966607165730189721

namespace A395813

/-- `n!²*A002893(n)` -/
def P10966607165730189721.Spec : Prop :=
  ∀ n, P10966607165730189721.a n = A395813 n

end A395813

/-! ## A395813.P15483364993228840716

`A000142(n)²*A002893(n)`
-/

namespace A395813.P15483364993228840716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A002893 n

end

end A395813.P15483364993228840716

namespace A395813

/-- `A000142(n)²*A002893(n)` -/
def P15483364993228840716.Spec : Prop :=
  ∀ n, P15483364993228840716.a n = A395813 n

end A395813

/-! ## A395813.P11500793072935779988

`∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]²*A002893(n)`
-/

namespace A395813.P11500793072935779988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000522 k : ℚ) * (Nat.choose n k : ℚ)) ^ 2 * (A002893 n : ℚ)

end

end A395813.P11500793072935779988

namespace A395813

/-- `∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]²*A002893(n)` -/
def P11500793072935779988.Spec : Prop :=
  ∀ n, P11500793072935779988.a n = (A395813 n : ℚ)

end A395813

/-!
# A395815: Number of perfect matchings in the complete tripartite graph K_{2n,2n,2n}.

The programs for A395815, the canonical program `A395815.P4122459993557326812` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395815 has offset 0).

The definition of A395815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395815.P4122459993557326812

`((2*n)!/n!)^3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395815

/-- `((2*n)!/n!)^3` -/
def P4122459993557326812.Spec : Prop :=
  ∀ n, P4122459993557326812.a n = (A395815 n : ℚ)

end A395815

/-! ## A395815.P9488996797979548549

`(4*n-2)^3*a(n-1)` with `a(0)=1`
-/

namespace A395815.P9488996797979548549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 2) ^ 3 * a (n - 1)

end

end A395815.P9488996797979548549

namespace A395815

/-- `(4*n-2)^3*a(n-1)` -/
def P9488996797979548549.Spec : Prop :=
  ∀ n, P9488996797979548549.a n = A395815 n

end A395815

/-! ## A395815.P8414334703881044201

`A001813(n)^3`
-/

namespace A395815.P8414334703881044201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n ^ 3

end

end A395815.P8414334703881044201

namespace A395815

/-- `A001813(n)^3` -/
def P8414334703881044201.Spec : Prop :=
  ∀ n, P8414334703881044201.a n = A395815 n

end A395815

/-! ## A395815.P3679489142567402571

`A048854(∑[n])^3`
-/

namespace A395815.P3679489142567402571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A395815.P3679489142567402571

namespace A395815

/-- `A048854(∑[n])^3` -/
def P3679489142567402571.Spec : Prop :=
  ∀ n, P3679489142567402571.a n = A395815 n

end A395815

/-! ## A395815.P15013239861215318452

`A081125(2*n)^3`
-/

namespace A395815.P15013239861215318452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (2 * n) ^ 3

end

end A395815.P15013239861215318452

namespace A395815

/-- `A081125(2*n)^3` -/
def P15013239861215318452.Spec : Prop :=
  ∀ n, P15013239861215318452.a n = A395815 n

end A395815

/-!
# A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

The programs for A395817, the canonical program `A395817.P7759252888401829851` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395817 has offset 1).

The definition of A395817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395817.P7759252888401829851

`A135210(1+n)+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395817

/-- `A135210(1+n)+1` -/
def P7759252888401829851.Spec : Prop :=
  ∀ n, P7759252888401829851.a n = A395817 (n + 1)

theorem P7759252888401829851.correct : P7759252888401829851.Spec := by
  intro n
  simp only [A395817, Nat.add_sub_cancel]

end A395817

/-! ## A395817.P4274292773748093645

`∩[A039148(n+1)+1, A007092(n)]`
-/

namespace A395817.P4274292773748093645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395817.P4274292773748093645

namespace A395817

/-- `∩[A039148(n+1)+1, A007092(n)]` -/
def P4274292773748093645.Spec : Prop :=
  ∀ n, (P4274292773748093645.a n : ℤ) = A395817 (n + 1)

end A395817

/-! ## A395817.P644046779777577387

`∑[runs[A167832(n)]]`
-/

namespace A395817.P644046779777577387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395817.P644046779777577387

namespace A395817

/-- `∑[runs[A167832(n)]]` -/
def P644046779777577387.Spec : Prop :=
  ∀ n, (P644046779777577387.a n : ℤ) = A395817 (n + 1)

end A395817

/-! ## A395817.P1061857641247874074

`record[A008621(2*A174025(n))]`
-/

namespace A395817.P1061857641247874074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A174025 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395817.P1061857641247874074

namespace A395817

/-- `record[A008621(2*A174025(n))]` -/
def P1061857641247874074.Spec : Prop :=
  ∀ n, P1061857641247874074.a n = A395817 (n + 1)

end A395817

/-! ## A395817.P6321413055916471545

`∑[runs[A392731(2*n)]]`
-/

namespace A395817.P6321413055916471545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392731 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395817.P6321413055916471545

namespace A395817

/-- `∑[runs[A392731(2*n)]]` -/
def P6321413055916471545.Spec : Prop :=
  ∀ n, (P6321413055916471545.a n : ℤ) = A395817 (n + 1)

end A395817

/-!
# A395820: a(n) is the largest k such that k*(k+1)/2 | n^n.

The programs for A395820, there is no canonical definition to state claims against.
-/

/-! ## A395820.P12725444465317764913

`A083312(A061537(n+1))`
-/

namespace A395820.P12725444465317764913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A061537 (n + 1)).toNat

end

end A395820.P12725444465317764913

/-! ## A395820.P9374554150122106345

`A083312(A062509(n+1))`
-/

namespace A395820.P9374554150122106345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A062509 (n + 1)).toNat

end

end A395820.P9374554150122106345

/-! ## A395820.P15264162348517488166

`A083312(A078599(n+1))`
-/

namespace A395820.P15264162348517488166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A078599 (n + 1)).toNat

end

end A395820.P15264162348517488166

/-! ## A395820.P13290589460516804377

`A083312(A133900(n+1))`
-/

namespace A395820.P13290589460516804377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A133900 (n + 1)).toNat

end

end A395820.P13290589460516804377

/-! ## A395820.P7497265546091422852

`A083312(A144872(n+1))`
-/

namespace A395820.P7497265546091422852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A144872 (n + 1)).toNat

end

end A395820.P7497265546091422852

/-!
# A395822: Degree of the minimal polynomial whose root is the square of the sidelength of the largest n-cube that fits inside a unit (n+1)-cube.

The programs for A395822, the canonical program `A395822.P4184873766019434530` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395822 has offset 0).

The definition of A395822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395822.P4184873766019434530

`ogf((x-3x^2-4x^3+10x^4+8x^5)/(1-4x-4x^2+16x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395822

/-- `ogf((x-3x^2-4x^3+10x^4+8x^5)/(1-4x-4x^2+16x^3))` -/
def P4184873766019434530.Spec : Prop :=
  ∀ n, P4184873766019434530.a n = A395822 n

theorem P4184873766019434530.correct : P4184873766019434530.Spec := by
  intro n
  simp only [A395822]

end A395822

/-! ## A395822.P12001892804668390953

`A398182(n)/2`
-/

namespace A395822.P12001892804668390953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398182 n : ℚ) / 2

end

end A395822.P12001892804668390953

namespace A395822

/-- `A398182(n)/2` -/
def P12001892804668390953.Spec : Prop :=
  ∀ n, P12001892804668390953.a n = (A395822 n : ℚ)

theorem P12001892804668390953.correct : P12001892804668390953.Spec := by
  intro n
  simp only [A395822, Nat.add_sub_cancel, A395822.P12001892804668390953.a, A395822.P4184873766019434530.a, A398182, A398182.P11134999281923761976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395822

/-! ## A395822.P15729161551763417297

`A014682(A398182(n))`
-/

namespace A395822.P15729161551763417297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A398182 n).toNat

end

end A395822.P15729161551763417297

namespace A395822

/-- `A014682(A398182(n))` -/
def P15729161551763417297.Spec : Prop :=
  ∀ n, P15729161551763417297.a n = A395822 n

end A395822

/-! ## A395822.P2122877048943891692

`A001281(A398182(n))`
-/

namespace A395822.P2122877048943891692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A398182 n).toNat

end

end A395822.P2122877048943891692

namespace A395822

/-- `A001281(A398182(n))` -/
def P2122877048943891692.Spec : Prop :=
  ∀ n, P2122877048943891692.a n = A395822 n

end A395822

/-!
# A395823: Record lengths of runs of consecutive integers k such that Omega(k) is odd.

The programs for A395823, there is no canonical definition to state claims against.
-/

/-! ## A395823.P6726525768293979576

`∑[runs[A175202(n+1)]]`
-/

namespace A395823.P6726525768293979576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175202 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395823.P6726525768293979576

/-!
# A395824: Record lengths of runs of consecutive integers k such that Omega(k) is even.

The programs for A395824, there is no canonical definition to state claims against.
-/

/-! ## A395824.P12328206251840883629

`∑[runs[A175201(n+1)]]`
-/

namespace A395824.P12328206251840883629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175201 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395824.P12328206251840883629

/-!
# A395827: a(n) is the number of possible outcomes having a run of 2 or more sixes when a die is rolled n times.

The programs for A395827, the canonical program `A395827.P16679499213790510204` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395827 has offset 0).

The definition of A395827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395827.P4844105220945454858

`ogf(x^2/(1-11x+25x^2+30x^3))`
-/

namespace A395827.P4844105220945454858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -11, 25, 30] n

end

end A395827.P4844105220945454858

namespace A395827

/-- `ogf(x^2/(1-11x+25x^2+30x^3))` -/
def P4844105220945454858.Spec : Prop :=
  ∀ n, P4844105220945454858.a n = A395827 n

end A395827

/-! ## A395827.P16679499213790510204

`6^n-A180033(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395827

/-- `6^n-A180033(n)` -/
def P16679499213790510204.Spec : Prop :=
  ∀ n, P16679499213790510204.a n = A395827 n

theorem P16679499213790510204.correct : P16679499213790510204.Spec := by
  intro n
  simp only [A395827]

end A395827

/-! ## A395827.P6252767943306325562

`A396158(A133263(n))%A391462(n)`
-/

namespace A395827.P6252767943306325562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396158 (A133263 n).toNat) (A391462 n)

end

end A395827.P6252767943306325562

namespace A395827

/-- `A396158(A133263(n))%A391462(n)` -/
def P6252767943306325562.Spec : Prop :=
  ∀ n, P6252767943306325562.a n = A395827 n

end A395827

/-!
# A395828: Number of septenary strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395828, the canonical program `A395828.P2810719931447247323` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395828 has offset 0).

The definition of A395828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395828.P13025221715129599963

`ogf(x^2/(1-13x+36x^2+42x^3))`
-/

namespace A395828.P13025221715129599963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -13, 36, 42] n

end

end A395828.P13025221715129599963

namespace A395828

/-- `ogf(x^2/(1-13x+36x^2+42x^3))` -/
def P13025221715129599963.Spec : Prop :=
  ∀ n, P13025221715129599963.a n = A395828 n

end A395828

/-! ## A395828.P2810719931447247323

`7^n-A180167(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395828

/-- `7^n-A180167(n)` -/
def P2810719931447247323.Spec : Prop :=
  ∀ n, P2810719931447247323.a n = A395828 n

theorem P2810719931447247323.correct : P2810719931447247323.Spec := by
  intro n
  simp only [A395828]

end A395828

/-!
# A395829: Number of octal strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395829, the canonical program `A395829.P11120994273887423255` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395829 has offset 0).

The definition of A395829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395829.P8271907707351090914

`ogf(x^2/(1-15x+49x^2+56x^3))`
-/

namespace A395829.P8271907707351090914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -15, 49, 56] n

end

end A395829.P8271907707351090914

namespace A395829

/-- `ogf(x^2/(1-15x+49x^2+56x^3))` -/
def P8271907707351090914.Spec : Prop :=
  ∀ n, P8271907707351090914.a n = A395829 n

end A395829

/-! ## A395829.P11120994273887423255

`8^n-A395831(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395829

/-- `8^n-A395831(n)` -/
def P11120994273887423255.Spec : Prop :=
  ∀ n, P11120994273887423255.a n = A395829 n

theorem P11120994273887423255.correct : P11120994273887423255.Spec := by
  intro n
  simp only [A395829]

end A395829

/-!
# A395830: Number of hexadecimal strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395830, the canonical program `A395830.P2485502439783120490` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395830 has offset 0).

The definition of A395830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395830.P2485502439783120490

`ogf(x^2/(1-31x+225x^2+240x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395830

/-- `ogf(x^2/(1-31x+225x^2+240x^3))` -/
def P2485502439783120490.Spec : Prop :=
  ∀ n, P2485502439783120490.a n = A395830 n

theorem P2485502439783120490.correct : P2485502439783120490.Spec := by
  intro n
  simp only [A395830]

end A395830

/-! ## A395830.P1699781659228115234

`16^n-A395832(n)`
-/

namespace A395830.P1699781659228115234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) - A395832 n

end

end A395830.P1699781659228115234

namespace A395830

/-- `16^n-A395832(n)` -/
def P1699781659228115234.Spec : Prop :=
  ∀ n, P1699781659228115234.a n = A395830 n

end A395830

/-! ## A395830.P3774343782634885290

`A000302(n)²%A395832(n)`
-/

namespace A395830.P3774343782634885290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n ^ 2) (A395832 n)

end

end A395830.P3774343782634885290

namespace A395830

/-- `A000302(n)²%A395832(n)` -/
def P3774343782634885290.Spec : Prop :=
  ∀ n, P3774343782634885290.a n = A395830 n

end A395830

/-!
# A395831: Number of octal strings of length n that do not contain a specific string xx (where x is a single digit).

The programs for A395831, the canonical program `A395831.P5367024056611957966` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395831 has offset 0).

The definition of A395831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395831.P5367024056611957966

`ogf((1+x)/(1-7x-7x^2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395831

/-- `ogf((1+x)/(1-7x-7x^2))` -/
def P5367024056611957966.Spec : Prop :=
  ∀ n, P5367024056611957966.a n = A395831 n

theorem P5367024056611957966.correct : P5367024056611957966.Spec := by
  intro n
  simp only [A395831]

end A395831

/-! ## A395831.P8969502115493771492

`8^n-A395829(n)`
-/

namespace A395831.P8969502115493771492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A395829 n

end

end A395831.P8969502115493771492

namespace A395831

/-- `8^n-A395829(n)` -/
def P8969502115493771492.Spec : Prop :=
  ∀ n, P8969502115493771492.a n = A395831 n

theorem P8969502115493771492.correct : P8969502115493771492.Spec := by
  intro n
  simp only [A395831, Nat.add_sub_cancel, A395831.P8969502115493771492.a, A395831.P5367024056611957966.a, A395829, A395829.P11120994273887423255.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A395831

/-! ## A395831.P4522594969490723447

`7*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A395831.P4522594969490723447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * (a (n - 1) + a (n - 2))

end

end A395831.P4522594969490723447

namespace A395831

/-- `7*(a(n-1)+a(n-2))` -/
def P4522594969490723447.Spec : Prop :=
  ∀ n, (P4522594969490723447.a n : ℤ) = A395831 n

end A395831

/-! ## A395831.P10598274016419348780

`A301402(n+1)/4`
-/

namespace A395831.P10598274016419348780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301402 (n + 1) : ℚ) / 4

end

end A395831.P10598274016419348780

namespace A395831

/-- `A301402(n+1)/4` -/
def P10598274016419348780.Spec : Prop :=
  ∀ n, P10598274016419348780.a n = (A395831 n : ℚ)

end A395831

/-! ## A395831.P417589406479396274

`A155130(n+1)/6`
-/

namespace A395831.P417589406479396274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155130 (n + 1) : ℚ) / 6

end

end A395831.P417589406479396274

namespace A395831

/-- `A155130(n+1)/6` -/
def P417589406479396274.Spec : Prop :=
  ∀ n, P417589406479396274.a n = (A395831 n : ℚ)

end A395831

/-! ## A395831.P15846430827198181888

`A057090(n+1)/7`
-/

namespace A395831.P15846430827198181888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057090 (n + 1) : ℚ) / 7

end

end A395831.P15846430827198181888

namespace A395831

/-- `A057090(n+1)/7` -/
def P15846430827198181888.Spec : Prop :=
  ∀ n, P15846430827198181888.a n = (A395831 n : ℚ)

end A395831

/-!
# A395832: Number of hexadecimal strings of length n that do not contain a specific string xx (where x is a single digit).

The programs for A395832, the canonical program `A395832.P1538237766821388229` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395832 has offset 0).

The definition of A395832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395832.P1538237766821388229

`ogf((1+x)/(1-15x-15x^2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395832

/-- `ogf((1+x)/(1-15x-15x^2))` -/
def P1538237766821388229.Spec : Prop :=
  ∀ n, P1538237766821388229.a n = A395832 n

theorem P1538237766821388229.correct : P1538237766821388229.Spec := by
  intro n
  simp only [A395832]

end A395832

/-! ## A395832.P8340300793960384826

`16^n-A395830(n)`
-/

namespace A395832.P8340300793960384826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) - A395830 n

end

end A395832.P8340300793960384826

namespace A395832

/-- `16^n-A395830(n)` -/
def P8340300793960384826.Spec : Prop :=
  ∀ n, P8340300793960384826.a n = A395832 n

end A395832

/-! ## A395832.P2270504092103478576

`15*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=16`
-/

namespace A395832.P2270504092103478576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * (a (n - 1) + a (n - 2))

end

end A395832.P2270504092103478576

namespace A395832

/-- `15*(a(n-1)+a(n-2))` -/
def P2270504092103478576.Spec : Prop :=
  ∀ n, (P2270504092103478576.a n : ℤ) = A395832 n

end A395832

/-!
# A395833: G.f. A(x) satisfies [x^n] A( x/A(x)^(2*n-1) ) = 0 for n > 1.

The programs for A395833, there is no canonical definition to state claims against.
-/

/-! ## A395833.P4958627833943251275

`A184242(A151090(n))`
-/

namespace A395833.P4958627833943251275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184242 (A151090 n).toNat

end

end A395833.P4958627833943251275

/-!
# A395835: Define F(n,x) as the power series in x satisfying F(n,x) = 1 + x*F(n,x)^2 - x^n*F(n,x)^(2*n), then for n >= 2, a(n) = M where x^M is the first power of x with a negative coefficient in F(n,x). Should no such M exist for some n, then there are no further terms and this sequence would be finite.

The programs for A395835, there is no canonical definition to state claims against.
-/

/-! ## A395835.P12055487906559602460

`∑[A395838(n+2)]`
-/

namespace A395835.P12055487906559602460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395835.P12055487906559602460

/-! ## A395835.P16073906783200605897

`∑[A001221(A298269(n))+2]+1`
-/

namespace A395835.P16073906783200605897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A298269 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A395835.P16073906783200605897

/-! ## A395835.P6636711348822330952

`A391538(n+3)+A000757(A001156(n))`
-/

namespace A395835.P6636711348822330952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391538 (n + 3) + A000757 (A001156 n).toNat

end

end A395835.P6636711348822330952

/-! ## A395835.P8841882605537556423

`A003059(A134918(A003059(A341400(A134918(n+1)))))`
-/

namespace A395835.P8841882605537556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A134918 (A003059 (A341400 (A134918 (n + 1)).toNat).toNat).toNat).toNat

end

end A395835.P8841882605537556423

/-! ## A395835.P9149195042381629882

`A243196(A025715(n))`
-/

namespace A395835.P9149195042381629882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243196 (A025715 n).toNat

end

end A395835.P9149195042381629882

/-!
# A395839: G.f. 10*C(x)^2 - C(x), where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A395839, the canonical program `A395839.P5228573350943917225` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395839 has offset 0).

The definition of A395839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395839.P5228573350943917225

`10*C(2*n+2, n)/(n+1)-C(2*n+1, n)/(2*n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395839

/-- `10*C(2*n+2, n)/(n+1)-C(2*n+1, n)/(2*n+1)` -/
def P5228573350943917225.Spec : Prop :=
  ∀ n, P5228573350943917225.a n = (A395839 n : ℚ)

end A395839

/-! ## A395839.P1843793885287197026

`A212345(n+4)+A000245(n)`
-/

namespace A395839.P1843793885287197026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212345 (n + 4) + A000245 n

end

end A395839.P1843793885287197026

namespace A395839

/-- `A212345(n+4)+A000245(n)` -/
def P1843793885287197026.Spec : Prop :=
  ∀ n, P1843793885287197026.a n = A395839 n

end A395839

/-! ## A395839.P6056402320701049442

`A212344(n+4)+A212344(n+4)-A000108(n)`
-/

namespace A395839.P6056402320701049442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212344 (n + 4) + (A212344 (n + 4) - A000108 n)

end

end A395839.P6056402320701049442

namespace A395839

/-- `A212344(n+4)+A212344(n+4)-A000108(n)` -/
def P6056402320701049442.Spec : Prop :=
  ∀ n, P6056402320701049442.a n = A395839 n

end A395839

/-! ## A395839.P5174431855938797785

`A008592(A000108(n+1))-A000108(n)`
-/

namespace A395839.P5174431855938797785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A000108 (n + 1)).toNat - A000108 n

end

end A395839.P5174431855938797785

namespace A395839

/-- `A008592(A000108(n+1))-A000108(n)` -/
def P5174431855938797785.Spec : Prop :=
  ∀ n, P5174431855938797785.a n = A395839 n

end A395839

/-!
# A395841: G.f. satisfies A(x) = sqrt( (1/x)*Series_Reversion( x/(1 + x*A(x)^3 + 2*x^2*A(x)^2*A'(x))^2 ) ).

The programs for A395841, there is no canonical definition to state claims against.
-/

/-! ## A395841.P7228612362143643145

`A332638(A256111(n))`
-/

namespace A395841.P7228612362143643145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332638 (A256111 n).toNat

end

end A395841.P7228612362143643145

/-!
# A395850: Divisors of the order of the Lyons group, |Ly| = 51765179004000000.

The programs for A395850, there is no canonical definition to state claims against.
-/

/-! ## A395850.P13754112518236062458

`∪[A051038(n+1), A299970(A382000(n+1))]`
-/

namespace A395850.P13754112518236062458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299970 (A382000 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395850.P13754112518236062458

/-! ## A395850.P16151589032721500361

`∪[A033637(n+1), A389575(A319590(n+1))]`
-/

namespace A395850.P16151589032721500361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389575 (A319590 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395850.P16151589032721500361

/-! ## A395850.P4163630231710091369

`∪[A051038(n+1), A114994(A330467(3*n))]`
-/

namespace A395850.P4163630231710091369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (A330467 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395850.P4163630231710091369

/-! ## A395850.P1424703912740914617

`∪[A051038(n+1), A347240(A134290(3*n))]`
-/

namespace A395850.P1424703912740914617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347240 (A134290 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395850.P1424703912740914617

/-! ## A395850.P6001867888802037892

`∪[A051038(n+1), A055676(A063782(3*n+2))]`
-/

namespace A395850.P6001867888802037892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055676 (A063782 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395850.P6001867888802037892

/-!
# A395851: Divisors of the order of the Janko group J_4, |J_4| = 86775571046077562880.

The programs for A395851, there is no canonical definition to state claims against.
-/

/-! ## A395851.P15444445926390607904

`lt[A243055(A337389(n)), A059975(n+1)]`
-/

namespace A395851.P15444445926390607904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A337389 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395851.P15444445926390607904

/-! ## A395851.P7714653682203265485

`lt[A323347(A305962(n)), A028233(n+1)]`
-/

namespace A395851.P7714653682203265485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 (A305962 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395851.P7714653682203265485

/-!
# A395852: Divisors of the order of the Tits group, |T| = 17971200.

The programs for A395852, there is no canonical definition to state claims against.
-/

/-! ## A395852.P819613487864988668

`A068095(n+1)%A002764(n)`
-/

namespace A395852.P819613487864988668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068095 (n + 1)) (A002764 n)

end

end A395852.P819613487864988668

/-! ## A395852.P1374048361765123121

`and(A068095(n+1), A359082(n+1))`
-/

namespace A395852.P1374048361765123121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A359082 (n + 1))

end

end A395852.P1374048361765123121

/-! ## A395852.P3658600516626937784

`A068095(n+1)*A370598(A329469(n+1))`
-/

namespace A395852.P3658600516626937784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1) * A370598 (A329469 (n + 1)).toNat

end

end A395852.P3658600516626937784

/-! ## A395852.P4168641327400805168

`and(A068095(n+1), A117060(n+1))`
-/

namespace A395852.P4168641327400805168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A117060 (n + 1))

end

end A395852.P4168641327400805168

/-! ## A395852.P8481040432578097143

`and(A068095(n+1), A145038(n+1))`
-/

namespace A395852.P8481040432578097143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A145038 (n + 1))

end

end A395852.P8481040432578097143

/-!
# A395853: Numbers that can be written as the sum of a Fibonacci number and the square of a Fibonacci number.

The programs for A395853, the canonical program `A395853.P3335866657025949553` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395853 has offset 1).

The definition of A395853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395853.P3335866657025949553

`comp[A354626(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395853

/-- `comp[A354626(n+1)]` -/
def P3335866657025949553.Spec : Prop :=
  ∀ n, (P3335866657025949553.a n : ℤ) = A395853 (n + 1)

theorem P3335866657025949553.correct : P3335866657025949553.Spec := by
  intro n
  simp only [A395853, Nat.add_sub_cancel]

end A395853

/-! ## A395853.P15143623546966434545

`comp[record[A354626(A059126(n))]]`
-/

namespace A395853.P15143623546966434545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354626 (A059126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395853.P15143623546966434545

namespace A395853

/-- `comp[record[A354626(A059126(n))]]` -/
def P15143623546966434545.Spec : Prop :=
  ∀ n, (P15143623546966434545.a n : ℤ) = A395853 (n + 1)

end A395853

/-!
# A395859: Number of enantiomorphic pairs among n-dimensional space groups.

The programs for A395859, there is no canonical definition to state claims against.
-/

/-! ## A395859.P16603271995319817776

`A006227(n)-A004029(n)`
-/

namespace A395859.P16603271995319817776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006227 n - A004029 n

end

end A395859.P16603271995319817776

/-!
# A395862: Triangle read by rows: T(n,k) = numerator(CF(n,k)), where CF(n,k) = (1/k!) * Sum_{j=0..k} (-1)^j * binomial(k,j) * (k/2-j)^n.

The programs for A395862, there is no canonical definition to state claims against.
-/

/-! ## A395862.P16804871889481074539

`A109375(A136630(n))`
-/

namespace A395862.P16804871889481074539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A136630 n).toNat

end

end A395862.P16804871889481074539

/-! ## A395862.P996242576943360920

`A385816(A136630(n)²)`
-/

namespace A395862.P996242576943360920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A136630 n ^ 2).toNat

end

end A395862.P996242576943360920

/-! ## A395862.P5138571107107662126

`A025428((2*A136630(n))²)`
-/

namespace A395862.P5138571107107662126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 ((2 * A136630 n) ^ 2).toNat

end

end A395862.P5138571107107662126

/-! ## A395862.P6218490315515849769

`A385816(A136630(n)*A136630(n))`
-/

namespace A395862.P6218490315515849769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (A136630 n * A136630 n).toNat

end

end A395862.P6218490315515849769

/-! ## A395862.P6991798884457822296

`A025428((A136630(n)+A136630(n))²)`
-/

namespace A395862.P6991798884457822296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 ((A136630 n + A136630 n) ^ 2).toNat

end

end A395862.P6991798884457822296

/-!
# A395864: Number of not-necessarily-reduced pipe dreams that represent the identity permutation.

The programs for A395864, there is no canonical definition to state claims against.
-/

/-! ## A395864.P6281338494515450115

`A078295(A148454(n))`
-/

namespace A395864.P6281338494515450115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078295 (A148454 n).toNat

end

end A395864.P6281338494515450115

/-! ## A395864.P8413499838213674056

`A008615(∑[A135407(n)])`
-/

namespace A395864.P8413499838213674056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395864.P8413499838213674056

/-!
# A395867: Number of oriented polyominoes in the {3,7} tessellation of the hyperbolic plane.

The programs for A395867, there is no canonical definition to state claims against.
-/

/-! ## A395867.P5628621103620388219

`A197460(n^A156080(n+1))`
-/

namespace A395867.P5628621103620388219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197460 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A156080 (n + 1) : ℤ))).toNat

end

end A395867.P5628621103620388219

/-!
# A395868: Number of oriented polyominoes in the {3,8} tessellation of the hyperbolic plane.

The programs for A395868, there is no canonical definition to state claims against.
-/

/-! ## A395868.P5344207243539315408

`A001683(n+3)*A166486(A331778(n))`
-/

namespace A395868.P5344207243539315408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 3) * A166486 (A331778 n).toNat

end

end A395868.P5344207243539315408

/-! ## A395868.P1144288859251526770

`A001683(n+3)^A000296(A130326(n))`
-/

namespace A395868.P1144288859251526770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001683 (n + 3) : ℚ) ^ (A000296 (A130326 n).toNat : ℤ)

end

end A395868.P1144288859251526770

/-! ## A395868.P5905388078378412723

`A001683(n+3)%A000203(A173323(n))`
-/

namespace A395868.P5905388078378412723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001683 (n + 3)) (A000203 (A173323 n).toNat)

end

end A395868.P5905388078378412723

/-! ## A395868.P8034066848527843970

`A186681(A160340(n+1))+A001683(n+3)`
-/

namespace A395868.P8034066848527843970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186681 (A160340 (n + 1)).toNat + A001683 (n + 3)

end

end A395868.P8034066848527843970

/-!
# A395869: Number of oriented polyominoes in the {4,5} tessellation of the hyperbolic plane.

The programs for A395869, there is no canonical definition to state claims against.
-/

/-! ## A395869.P5246184489353651019

`A390194(n+1)+A119611(n+1)`
-/

namespace A395869.P5246184489353651019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390194 (n + 1) + A119611 (n + 1)

end

end A395869.P5246184489353651019

/-! ## A395869.P4287362114481839652

`A076885(A150359(n))`
-/

namespace A395869.P4287362114481839652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150359 n).toNat

end

end A395869.P4287362114481839652

/-! ## A395869.P17462709516922335895

`A333249(n)+A330579(3*n+5)%(n+1)`
-/

namespace A395869.P17462709516922335895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333249 n + Int.tmod (A330579 (3 * n + 5)) (n + 1 : ℤ)

end

end A395869.P17462709516922335895

/-!
# A395870: Number of oriented polyominoes in the {4,6} tessellation of the hyperbolic plane.

The programs for A395870, there is no canonical definition to state claims against.
-/

/-! ## A395870.P17744751505019483667

`A247781(A150806(n))`
-/

namespace A395870.P17744751505019483667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A150806 n).toNat

end

end A395870.P17744751505019483667

/-! ## A395870.P4181156536437096292

`A276798(A150945(n))`
-/

namespace A395870.P4181156536437096292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150945 n).toNat

end

end A395870.P4181156536437096292

/-!
# A395871: Number of oriented polyominoes in the {4,7} tessellation of the hyperbolic plane.

The programs for A395871, there is no canonical definition to state claims against.
-/

/-! ## A395871.P1507256781965210921

`A005034(A037442(n+1))`
-/

namespace A395871.P1507256781965210921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037442 (n + 1)).toNat

end

end A395871.P1507256781965210921

/-! ## A395871.P455162557142679483

`A005034(A065666(n+1))`
-/

namespace A395871.P455162557142679483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A065666 (n + 1)).toNat

end

end A395871.P455162557142679483

/-! ## A395871.P11544579865735684287

`A005034(A073789(n+1))`
-/

namespace A395871.P11544579865735684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A073789 (n + 1)).toNat

end

end A395871.P11544579865735684287

/-!
# A395872: Number of oriented polyominoes in the {4,8} tessellation of the hyperbolic plane.

The programs for A395872, there is no canonical definition to state claims against.
-/

/-! ## A395872.P12259315531751827076

`A004151(A005034(n+1))`
-/

namespace A395872.P12259315531751827076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A005034 (n + 1)).toNat

end

end A395872.P12259315531751827076

/-! ## A395872.P6855308970328725279

`A005034(A037336(n+1))`
-/

namespace A395872.P6855308970328725279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037336 (n + 1)).toNat

end

end A395872.P6855308970328725279

/-! ## A395872.P7285344861056261378

`A005034(A037443(n+1))`
-/

namespace A395872.P7285344861056261378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037443 (n + 1)).toNat

end

end A395872.P7285344861056261378

/-! ## A395872.P7939546039604047364

`A005034(A073790(n+1))`
-/

namespace A395872.P7939546039604047364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A073790 (n + 1)).toNat

end

end A395872.P7939546039604047364

/-!
# A395873: Number of oriented polyominoes in the {5,4} tessellation of the hyperbolic plane.

The programs for A395873, there is no canonical definition to state claims against.
-/

/-! ## A395873.P16494283487622962619

`A001055(A005186(n+4)*A235359(n))`
-/

namespace A395873.P16494283487622962619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A005186 (n + 4) * A235359 n).toNat

end

end A395873.P16494283487622962619

/-! ## A395873.P13733472274224676004

`A367771(A000326(n+2))+A000166(n+1)`
-/

namespace A395873.P13733472274224676004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 (A000326 (n + 2)).toNat + A000166 (n + 1)

end

end A395873.P13733472274224676004

/-!
# A395874: Number of oriented polyominoes in the {5,5} tessellation of the hyperbolic plane.

The programs for A395874, there is no canonical definition to state claims against.
-/

/-! ## A395874.P3667199509314184319

`A100036(A330455(n))`
-/

namespace A395874.P3667199509314184319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100036 (A330455 n).toNat

end

end A395874.P3667199509314184319

/-! ## A395874.P4193190035449323206

`A342519((n+1)*A000212(n))`
-/

namespace A395874.P4193190035449323206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342519 ((n + 1 : ℤ) * A000212 n).toNat

end

end A395874.P4193190035449323206

/-!
# A395875: Number of oriented polyominoes in the {5,6} tessellation of the hyperbolic plane.

The programs for A395875, there is no canonical definition to state claims against.
-/

/-! ## A395875.P7598302488363253018

`A005038(n+1)-A334045(A371832(n))`
-/

namespace A395875.P7598302488363253018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005038 (n + 1) - A334045 (A371832 n).toNat

end

end A395875.P7598302488363253018

/-!
# A395878: Number of oriented polyominoes in the {6,4} tessellation of the hyperbolic plane.

The programs for A395878, there is no canonical definition to state claims against.
-/

/-! ## A395878.P3099427286897621458

`A112761(A368927(n))+A000949(n)`
-/

namespace A395878.P3099427286897621458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112761 (A368927 n).toNat + A000949 n

end

end A395878.P3099427286897621458

/-!
# A395879: Number of oriented polyominoes in the {6,5} tessellation of the hyperbolic plane.

The programs for A395879, there is no canonical definition to state claims against.
-/

/-! ## A395879.P13082810974693420798

`A215810(A148882(n))`
-/

namespace A395879.P13082810974693420798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (A148882 n).toNat

end

end A395879.P13082810974693420798

/-!
# A395883: Number of oriented polyominoes in the {7,3} tessellation of the hyperbolic plane.

The programs for A395883, there is no canonical definition to state claims against.
-/

/-! ## A395883.P8803145513107194695

`or(A330556(A351811(n)), A381024(n))`
-/

namespace A395883.P8803145513107194695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A330556 (A351811 n).toNat) (A381024 n)

end

end A395883.P8803145513107194695

/-! ## A395883.P18152194710859573383

`A000261(n+1)+A000030(A000186(n))`
-/

namespace A395883.P18152194710859573383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000261 (n + 1) + A000030 (A000186 n).toNat

end

end A395883.P18152194710859573383

/-!
# A395884: Number of oriented polyominoes in the {7,4} tessellation of the hyperbolic plane.

The programs for A395884, there is no canonical definition to state claims against.
-/

/-! ## A395884.P8140009464439096162

`A077472(∏{p}[1+n, #-1]+2*(n+1)*C(n+1, 4))`
-/

namespace A395884.P8140009464439096162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077472 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + (2 * (n + 1) * Nat.choose (n + 1) 4 : ℤ)).toNat

end

end A395884.P8140009464439096162

/-!
# A395885: Number of oriented polyominoes in the {7,5} tessellation of the hyperbolic plane.

The programs for A395885, there is no canonical definition to state claims against.
-/

/-! ## A395885.P17850217484520574078

`∏{p}[(2*n)!, #]-∑{d}[n, #]`
-/

namespace A395885.P17850217484520574078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A395885.P17850217484520574078

/-!
# A395886: Number of oriented polyominoes in the {7,6} tessellation of the hyperbolic plane.

The programs for A395886, there is no canonical definition to state claims against.
-/

/-! ## A395886.P5387975601534165523

`A028310(A389561(n+1))`
-/

namespace A395886.P5387975601534165523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A389561 (n + 1)).toNat

end

end A395886.P5387975601534165523

/-! ## A395886.P2654820851180166260

`A389561(∑[∑[A353881(n)]])`
-/

namespace A395886.P2654820851180166260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353881 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395886.P2654820851180166260

/-!
# A395887: Number of oriented polyominoes in the {7,7} tessellation of the hyperbolic plane.

The programs for A395887, there is no canonical definition to state claims against.
-/

/-! ## A395887.P11499252634687204829

`A052410(A389561(n+1))`
-/

namespace A395887.P11499252634687204829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A389561 (n + 1)).toNat

end

end A395887.P11499252634687204829

/-! ## A395887.P1245661405720487345

`A389561(∑[A367616(3*n+1)²])`
-/

namespace A395887.P1245661405720487345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395887.P1245661405720487345

/-! ## A395887.P6919975750213485660

`A389561((n+1)*A047040(n)^(n+1))`
-/

namespace A395887.P6919975750213485660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 ((n + 1 : ℤ) * A047040 n ^ (n + 1)).toNat

end

end A395887.P6919975750213485660

/-!
# A395888: Number of oriented polyominoes in the {7,8} tessellation of the hyperbolic plane.

The programs for A395888, there is no canonical definition to state claims against.
-/

/-! ## A395888.P17366500678548588688

`A389561(∑[A290830(n)])`
-/

namespace A395888.P17366500678548588688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395888.P17366500678548588688

/-! ## A395888.P18293008134531343988

`A389561(A290830(n)+n)`
-/

namespace A395888.P18293008134531343988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (A290830 n + (n : ℤ)).toNat

end

end A395888.P18293008134531343988

/-! ## A395888.P16457177368627266177

`A389561(A257814(n+1)-1)`
-/

namespace A395888.P16457177368627266177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (A257814 (n + 1) - 1).toNat

end

end A395888.P16457177368627266177

/-! ## A395888.P3801899718752980202

`A389561(∑[A283920(n+1)²])`
-/

namespace A395888.P3801899718752980202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283920 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395888.P3801899718752980202

/-!
# A395889: Number of oriented polyominoes in the {8,3} tessellation of the hyperbolic plane.

The programs for A395889, there is no canonical definition to state claims against.
-/

/-! ## A395889.P15384410398449046820

`A228883(n+1)-A178181(A364404(n+1))`
-/

namespace A395889.P15384410398449046820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228883 (n + 1) - A178181 (A364404 (n + 1)).toNat

end

end A395889.P15384410398449046820

/-!
# A395890: Number of oriented polyominoes in the {8,4} tessellation of the hyperbolic plane.

The programs for A395890, there is no canonical definition to state claims against.
-/

/-! ## A395890.P11084703974930122111

`A212295(A139597(n))`
-/

namespace A395890.P11084703974930122111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (A139597 n).toNat

end

end A395890.P11084703974930122111

/-!
# A395891: Number of oriented polyominoes in the {8,5} tessellation of the hyperbolic plane.

The programs for A395891, there is no canonical definition to state claims against.
-/

/-! ## A395891.P842927816260764649

`A154618(a(n-1))-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A395891.P842927816260764649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A154618 (a (n - 1)).toNat - (n + 1 : ℤ)

end

end A395891.P842927816260764649

/-!
# A395892: Number of oriented polyominoes in the {8,6} tessellation of the hyperbolic plane.

The programs for A395892, there is no canonical definition to state claims against.
-/

/-! ## A395892.P6916878073322384116

`A028310(A394862(n+1))`
-/

namespace A395892.P6916878073322384116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A394862 (n + 1)).toNat

end

end A395892.P6916878073322384116

/-! ## A395892.P2455625824234047405

`A389936(A061512(n)-n)`
-/

namespace A395892.P2455625824234047405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (A061512 n - (n : ℤ)).toNat

end

end A395892.P2455625824234047405

/-!
# A395893: Number of oriented polyominoes in the {8,7} tessellation of the hyperbolic plane.

The programs for A395893, there is no canonical definition to state claims against.
-/

/-! ## A395893.P16775224069042431230

`A394862(A138988(n+1))`
-/

namespace A395893.P16775224069042431230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 (A138988 (n + 1)).toNat

end

end A395893.P16775224069042431230

/-! ## A395893.P4705647511625315783

`A389936(∑[A060455(n)²])`
-/

namespace A395893.P4705647511625315783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395893.P4705647511625315783

/-! ## A395893.P10302220668958805664

`A394862(∑[A060455(n)²])`
-/

namespace A395893.P10302220668958805664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395893.P10302220668958805664

/-!
# A395894: Number of oriented polyominoes in the {9,3} tessellation of the hyperbolic plane.

The programs for A395894, there is no canonical definition to state claims against.
-/

/-! ## A395894.P8699423691075691248

`floor(A319781(3*n)/7)+1`
-/

namespace A395894.P8699423691075691248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319781 (3 * n) : ℚ) / 7⌋ + 1

end

end A395894.P8699423691075691248

/-!
# A395895: Number of nonperiodic autocorrelation functions of length n {-1,0,1} sequences.

The programs for A395895, there is no canonical definition to state claims against.
-/

/-! ## A395895.P16370031673539685945

`A186038(A002426(n+2))+A092687(n)`
-/

namespace A395895.P16370031673539685945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186038 (A002426 (n + 2)).toNat + A092687 n

end

end A395895.P16370031673539685945

/-! ## A395895.P9837035706866684970

`A007078(A024557(n))`
-/

namespace A395895.P9837035706866684970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A024557 n).toNat

end

end A395895.P9837035706866684970

/-!
# A395896: Number of k < m^2 such that both rad(k) and rad(k+1) divide m, where rad = A007947 and m = A019565(n).

The programs for A395896, there is no canonical definition to state claims against.
-/

/-! ## A395896.P13567568258002671463

`A395754(A246353(n))`
-/

namespace A395896.P13567568258002671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395754 (A246353 n).toNat

end

end A395896.P13567568258002671463

/-!
# A395897: a(n) = Sum_{1 <= i < j < k <= n} ( n!/(i*j*k) )^4.

The programs for A395897, there is no canonical definition to state claims against.
-/

/-! ## A395897.P2191129021435016854

`∑[n^4]^a(n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A395897.P2191129021435016854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ a (n - 1)

end

end A395897.P2191129021435016854

/-!
# A395899: Sphenic numbers k = p*q*r, primes p < q < r, such that r < p^3.

The programs for A395899, there is no canonical definition to state claims against.
-/

/-! ## A395899.P9636306246489694182

`filter[A393644(n+1), A354926(#)]`
-/

namespace A395899.P9636306246489694182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A395899.P9636306246489694182

/-! ## A395899.P6613518139922478596

`filter[A393644(n+1), A358753(#)]`
-/

namespace A395899.P6613518139922478596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A395899.P6613518139922478596

/-! ## A395899.P2225441583350289477

`∩[A007304(n+1), A393644(n+1)]`
-/

namespace A395899.P2225441583350289477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P2225441583350289477

/-! ## A395899.P15205319800981169103

`∩[A345382(n+1), A393644(n+1)]`
-/

namespace A395899.P15205319800981169103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P15205319800981169103

/-! ## A395899.P9504681413488404200

`∩[A225228(n+1), A393644(n+1)]`
-/

namespace A395899.P9504681413488404200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P9504681413488404200

/-! ## A395899.P10709327539795181

`∩[A030626(n+1), A393644(n+1)]`
-/

namespace A395899.P10709327539795181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P10709327539795181

/-! ## A395899.P2544571661039136177

`∩[A111398(n+1), A393644(n+1)]`
-/

namespace A395899.P2544571661039136177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P2544571661039136177

/-! ## A395899.P951534779935296593

`∩[A014612(n+1), A393644(n+1)]`
-/

namespace A395899.P951534779935296593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P951534779935296593

/-! ## A395899.P11580591438357519671

`∩[A217856(n+1), A393644(n+1)]`
-/

namespace A395899.P11580591438357519671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11580591438357519671

/-! ## A395899.P14743804494587383362

`∩[A393644(n+1), A399188(n+1)]`
-/

namespace A395899.P14743804494587383362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P14743804494587383362

/-! ## A395899.P11735986006751203866

`∩[A358763(n+1), A393644(n+1)]`
-/

namespace A395899.P11735986006751203866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11735986006751203866

/-! ## A395899.P11744673166446562483

`∩[A036456(n+1), A393644(n+1)]`
-/

namespace A395899.P11744673166446562483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11744673166446562483

/-! ## A395899.P14823205274859045716

`∩[A182859(n+1), A393644(n+1)]`
-/

namespace A395899.P14823205274859045716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P14823205274859045716

/-! ## A395899.P13279752892727990382

`∩[A123193(n+1), A393644(n+1)]`
-/

namespace A395899.P13279752892727990382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P13279752892727990382

/-! ## A395899.P10938968390425056755

`∩[A298207(n+1), A393644(n+1)]`
-/

namespace A395899.P10938968390425056755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P10938968390425056755

/-! ## A395899.P17931168901186771373

`∩[A033992(n+1), A393644(n+1)]`
-/

namespace A395899.P17931168901186771373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P17931168901186771373

/-! ## A395899.P3177266436305931841

`∩[A214195(n+1), A393644(n+1)]`
-/

namespace A395899.P3177266436305931841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P3177266436305931841

/-! ## A395899.P1017661901179197001

`filter[A393644(n+1), A101605(#)]`
-/

namespace A395899.P1017661901179197001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A395899.P1017661901179197001

/-! ## A395899.P4571661767051669269

`filter[A393644(n+1), A122895(#)]`
-/

namespace A395899.P4571661767051669269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A395899.P4571661767051669269

/-! ## A395899.P2532389435312473200

`filter[A393644(n+1), A262683(#)]`
-/

namespace A395899.P2532389435312473200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A395899.P2532389435312473200

