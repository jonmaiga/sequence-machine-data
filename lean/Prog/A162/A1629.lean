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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A162900: a(1)=1. For n >= 2, a(n) is the smallest integer > a(n-1) such that gcd(n, a(n)) = p^k, where p is a prime, k >= 1.

The programs for A162900, there is no canonical definition to state claims against.
-/

/-! ## A162900.P18364273225812873737

`record[A076984(n+1)*A353741(n)]`
-/

namespace A162900.P18364273225812873737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) * A353741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162900.P18364273225812873737

/-!
# A162902: An increasing sequence of alternatingly squarefree and nonsquarefree numbers.

The programs for A162902, the canonical program `A162902.P8702082304774524880` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162902 has offset 1).

The definition of A162902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162902.P8702082304774524880

`∪[A053806(n+1), A072284(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162902

/-- `∪[A053806(n+1), A072284(n+1)]` -/
def P8702082304774524880.Spec : Prop :=
  ∀ n, (P8702082304774524880.a n : ℤ) = A162902 (n + 1)

theorem P8702082304774524880.correct : P8702082304774524880.Spec := by
  intro n
  simp only [A162902, Nat.add_sub_cancel]

end A162902

/-! ## A162902.P7936012551382464660

`∪[comp[A008683(n+1)²+n]+1, A053806(n+1)]`
-/

namespace A162902.P7936012551382464660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A162902.P7936012551382464660

namespace A162902

/-- `∪[comp[A008683(n+1)²+n]+1, A053806(n+1)]` -/
def P7936012551382464660.Spec : Prop :=
  ∀ n, (P7936012551382464660.a n : ℤ) = A162902 (n + 1)

end A162902

/-! ## A162902.P1930372051903120492

`∪[A072284(n+1), comp[n-A008683(n+1)²]+2]`
-/

namespace A162902.P1930372051903120492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072284 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008683 (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A162902.P1930372051903120492

namespace A162902

/-- `∪[A072284(n+1), comp[n-A008683(n+1)²]+2]` -/
def P1930372051903120492.Spec : Prop :=
  ∀ n, (P1930372051903120492.a n : ℤ) = A162902 (n + 1)

end A162902

/-! ## A162902.P10256612087367567426

`record[(n+1)*Δ[char[A005117(n+1)]]²]`
-/

namespace A162902.P10256612087367567426
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162902.P10256612087367567426

namespace A162902

/-- `record[(n+1)*Δ[char[A005117(n+1)]]²]` -/
def P10256612087367567426.Spec : Prop :=
  ∀ n, P10256612087367567426.a n = A162902 (n + 1)

end A162902

/-!
# A162903: a(n) = A162531(n)/11.

The programs for A162903, there is no canonical definition to state claims against.
-/

/-! ## A162903.P18392082892801944032

`A162531(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162903.P18392082892801944032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162531 (n + 1) : ℚ) / 11

end

end A162903.P18392082892801944032

/-! ## A162903.P2345531399009624258

`record[A033677(11*(n+1))]`
-/

namespace A162903.P2345531399009624258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (11 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162903.P2345531399009624258

/-! ## A162903.P3900553716705361848

`A033677(A162531(n+1))`
-/

namespace A162903.P3900553716705361848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A162531 (n + 1)).toNat

end

end A162903.P3900553716705361848

/-! ## A162903.P6626544065310502969

`eq[11, A033676(A168104(n))]`
-/

namespace A162903.P6626544065310502969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A168104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162903.P6626544065310502969

/-! ## A162903.P1935030267321178172

`eq[A028310(n), A033677(A168104(n))]`
-/

namespace A162903.P1935030267321178172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162903.P1935030267321178172

/-! ## A162903.P9938197960969306071

`eq[A033677(A168104(n)), A254667(n)]`
-/

namespace A162903.P9938197960969306071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168104 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162903.P9938197960969306071

/-! ## A162903.P5962803650164103964

`eq[A033677(A168104(n)), A233583(n+1)]`
-/

namespace A162903.P5962803650164103964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A168104 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162903.P5962803650164103964

/-!
# A162904: Primes 2 less than a tetrahedral number.

The programs for A162904, there is no canonical definition to state claims against.
-/

/-! ## A162904.P119646073293509141

`p?[C(n, 3)-2]`
-/

namespace A162904.P119646073293509141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162904.P119646073293509141

/-! ## A162904.P10360215694352625671

`p?[∑[∑[n]]-2]`
-/

namespace A162904.P10360215694352625671
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162904.P10360215694352625671

/-!
# A162905: Primes of form p^2-6, p also a prime.

The programs for A162905, there is no canonical definition to state claims against.
-/

/-! ## A162905.P2842080905206523750

`A137270(n+1)²-6`
-/

namespace A162905.P2842080905206523750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1) ^ 2 - 6

end

end A162905.P2842080905206523750

/-! ## A162905.P13209567237835411312

`p?[p?[2*n+1]²-6]`
-/

namespace A162905.P13209567237835411312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162905.P13209567237835411312

/-! ## A162905.P13708965359675007098

`p?[A247395(n)-7]`
-/

namespace A162905.P13708965359675007098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247395 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162905.P13708965359675007098

/-! ## A162905.P126152249161787282

`p?[A166010(n+1)-2]`
-/

namespace A162905.P126152249161787282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162905.P126152249161787282

/-! ## A162905.P2919818999207890147

`p?[A182200(n+1)-3]`
-/

namespace A162905.P2919818999207890147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162905.P2919818999207890147

/-!
# A162906: a(n) = n - A081707(n).

The programs for A162906, the canonical program `A162906.P6107126863955034378` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162906 has offset 1).

The definition of A162906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162906.P6107126863955034378

`n+1-A081707(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A162906

/-- `n+1-A081707(n+1)` -/
def P6107126863955034378.Spec : Prop :=
  ∀ n, P6107126863955034378.a n = A162906 (n + 1)

theorem P6107126863955034378.correct : P6107126863955034378.Spec := by
  intro n
  simp only [A162906, Nat.add_sub_cancel]

end A162906

/-! ## A162906.P4029301771100249797

`n+1+A001222(n+1)-A000005(n+1)`
-/

namespace A162906.P4029301771100249797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001222 (n + 1) - A000005 (n + 1)

end

end A162906.P4029301771100249797

namespace A162906

/-- `n+1+A001222(n+1)-A000005(n+1)` -/
def P4029301771100249797.Spec : Prop :=
  ∀ n, P4029301771100249797.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P11360713651700641875

`∑{e}[n+1, #]+n+1-∏{e}[n+1, #+1]`
-/

namespace A162906.P11360713651700641875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ))

end

end A162906.P11360713651700641875

namespace A162906

/-- `∑{e}[n+1, #]+n+1-∏{e}[n+1, #+1]` -/
def P11360713651700641875.Spec : Prop :=
  ∀ n, P11360713651700641875.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P8617893211348781131

`n-∑{d}[n+1, floor(atan(A001221(#)))]`
-/

namespace A162906.P8617893211348781131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (A001221 d : ℝ)⌋

end

end A162906.P8617893211348781131

namespace A162906

/-- `n-∑{d}[n+1, floor(atan(A001221(#)))]` -/
def P8617893211348781131.Spec : Prop :=
  ∀ n, P8617893211348781131.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P13485857338509178907

`n-A023443(A081707(n+1))`
-/

namespace A162906.P13485857338509178907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A081707 (n + 1)).toNat

end

end A162906.P13485857338509178907

namespace A162906

/-- `n-A023443(A081707(n+1))` -/
def P13485857338509178907.Spec : Prop :=
  ∀ n, P13485857338509178907.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P15534970820624974721

`A049820(n+1)+A001222(n+1)`
-/

namespace A162906.P15534970820624974721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001222 (n + 1)

end

end A162906.P15534970820624974721

namespace A162906

/-- `A049820(n+1)+A001222(n+1)` -/
def P15534970820624974721.Spec : Prop :=
  ∀ n, P15534970820624974721.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P4847282196206998414

`A064800(n+1)-A000005(n+1)`
-/

namespace A162906.P4847282196206998414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A000005 (n + 1)

end

end A162906.P4847282196206998414

namespace A162906

/-- `A064800(n+1)-A000005(n+1)` -/
def P4847282196206998414.Spec : Prop :=
  ∀ n, P4847282196206998414.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P11434652802911824306

`A075254(n+1)-A140255(n+1)`
-/

namespace A162906.P11434652802911824306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A140255 (n + 1)

end

end A162906.P11434652802911824306

namespace A162906

/-- `A075254(n+1)-A140255(n+1)` -/
def P11434652802911824306.Spec : Prop :=
  ∀ n, P11434652802911824306.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P18085617360346430212

`1-A324191(A046523(n+1))+n`
-/

namespace A162906.P18085617360346430212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324191 (A046523 (n + 1)).toNat + (n : ℤ)

end

end A162906.P18085617360346430212

namespace A162906

/-- `1-A324191(A046523(n+1))+n` -/
def P18085617360346430212.Spec : Prop :=
  ∀ n, P18085617360346430212.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P18198584064608113558

`A073093(n+1)-A000005(n+1)+n`
-/

namespace A162906.P18198584064608113558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A000005 (n + 1) + (n : ℤ)

end

end A162906.P18198584064608113558

namespace A162906

/-- `A073093(n+1)-A000005(n+1)+n` -/
def P18198584064608113558.Spec : Prop :=
  ∀ n, P18198584064608113558.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P12138372918196576480

`n-∑{d}[n+1, A014963(#)%A020639(#)]`
-/

namespace A162906.P12138372918196576480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 d) (A020639 d)

end

end A162906.P12138372918196576480

namespace A162906

/-- `n-∑{d}[n+1, A014963(#)%A020639(#)]` -/
def P12138372918196576480.Spec : Prop :=
  ∀ n, P12138372918196576480.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P4578829297275834753

`A001222(n+1)+1+n-Δ[A006218(n)]`
-/

namespace A162906.P4578829297275834753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1 + (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A162906.P4578829297275834753

namespace A162906

/-- `A001222(n+1)+1+n-Δ[A006218(n)]` -/
def P4578829297275834753.Spec : Prop :=
  ∀ n, P4578829297275834753.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P10295452862960099757

`Δ[A022559(n)]-A000005(n+1)+1+n`
-/

namespace A162906.P10295452862960099757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (n + 1) + 1 + (n : ℤ)

end

end A162906.P10295452862960099757

namespace A162906

/-- `Δ[A022559(n)]-A000005(n+1)+1+n` -/
def P10295452862960099757.Spec : Prop :=
  ∀ n, P10295452862960099757.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P4725701623831853041

`∑{d}[n+1, A000010(#)-1]+A001222(n+1)`
-/

namespace A162906.P4725701623831853041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - 1) + A001222 (n + 1)

end

end A162906.P4725701623831853041

namespace A162906

/-- `∑{d}[n+1, A000010(#)-1]+A001222(n+1)` -/
def P4725701623831853041.Spec : Prop :=
  ∀ n, P4725701623831853041.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P2859687258340817079

`val(A165825(n+1), 4)+1+n-Δ[A006218(n)]`
-/

namespace A162906.P2859687258340817079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 + 1 + n : ℤ) - (f1 (n + 1) - f1 n)

end

end A162906.P2859687258340817079

namespace A162906

/-- `val(A165825(n+1), 4)+1+n-Δ[A006218(n)]` -/
def P2859687258340817079.Spec : Prop :=
  ∀ n, P2859687258340817079.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P6452892896283368897

`A001222(n+1)+1-A320111(2*(n+1))+n`
-/

namespace A162906.P6452892896283368897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1 - A320111 (2 * (n + 1)) + (n : ℤ)

end

end A162906.P6452892896283368897

namespace A162906

/-- `A001222(n+1)+1-A320111(2*(n+1))+n` -/
def P6452892896283368897.Spec : Prop :=
  ∀ n, P6452892896283368897.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P2570831521627873172

`A000005(A061142(n+1))-A000005(n+1)+n`
-/

namespace A162906.P2570831521627873172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061142 (n + 1)).toNat - A000005 (n + 1) + (n : ℤ)

end

end A162906.P2570831521627873172

namespace A162906

/-- `A000005(A061142(n+1))-A000005(n+1)+n` -/
def P2570831521627873172.Spec : Prop :=
  ∀ n, P2570831521627873172.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P15349831800783457983

`A000005(A068794(n+1))-A000005(n+1)+n`
-/

namespace A162906.P15349831800783457983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068794 (n + 1)).toNat - A000005 (n + 1) + (n : ℤ)

end

end A162906.P15349831800783457983

namespace A162906

/-- `A000005(A068794(n+1))-A000005(n+1)+n` -/
def P15349831800783457983.Spec : Prop :=
  ∀ n, P15349831800783457983.a n = A162906 (n + 1)

end A162906

/-! ## A162906.P6129646962063606665

`A001222(n+1)+1-A069157(2*(n+1))+n`
-/

namespace A162906.P6129646962063606665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1 - A069157 (2 * (n + 1)) + (n : ℤ)

end

end A162906.P6129646962063606665

namespace A162906

/-- `A001222(n+1)+1-A069157(2*(n+1))+n` -/
def P6129646962063606665.Spec : Prop :=
  ∀ n, P6129646962063606665.a n = A162906 (n + 1)

end A162906

/-!
# A162907: Sum of all numbers from tau(n) to sigma(n).

The programs for A162907, the canonical program `A162907.P12652388002457214541` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162907 has offset 1).

The definition of A162907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162907.P12652388002457214541

`A000217(A000203(n+1))-A000217(A000005(n+1)-1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162907

/-- `A000217(A000203(n+1))-A000217(A000005(n+1)-1)` -/
def P12652388002457214541.Spec : Prop :=
  ∀ n, P12652388002457214541.a n = A162907 (n + 1)

theorem P12652388002457214541.correct : P12652388002457214541.Spec := by
  intro n
  simp only [A162907, Nat.add_sub_cancel]

end A162907

/-! ## A162907.P14302459694905911370

`A184387(n+1)-A066446(n+1)`
-/

namespace A162907.P14302459694905911370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A066446 (n + 1)

end

end A162907.P14302459694905911370

namespace A162907

/-- `A184387(n+1)-A066446(n+1)` -/
def P14302459694905911370.Spec : Prop :=
  ∀ n, P14302459694905911370.a n = A162907 (n + 1)

end A162907

/-! ## A162907.P18092129559734151845

`A184387(n+1)-A000217(A000005(n+1)-1)`
-/

namespace A162907.P18092129559734151845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A000217 (A000005 (n + 1) - 1).toNat

end

end A162907.P18092129559734151845

namespace A162907

/-- `A184387(n+1)-A000217(A000005(n+1)-1)` -/
def P18092129559734151845.Spec : Prop :=
  ∀ n, P18092129559734151845.a n = A162907 (n + 1)

end A162907

/-! ## A162907.P147342374612945542

`A000005(n+1)+A184387(n+1)-A184389(n+1)`
-/

namespace A162907.P147342374612945542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A184387 (n + 1) - A184389 (n + 1))

end

end A162907.P147342374612945542

namespace A162907

/-- `A000005(n+1)+A184387(n+1)-A184389(n+1)` -/
def P147342374612945542.Spec : Prop :=
  ∀ n, P147342374612945542.a n = A162907 (n + 1)

end A162907

/-! ## A162907.P5686537077448741025

`A184387(n+1)+A184389(n+1)-A035116(n+1)`
-/

namespace A162907.P5686537077448741025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) + (A184389 (n + 1) - A035116 (n + 1))

end

end A162907.P5686537077448741025

namespace A162907

/-- `A184387(n+1)+A184389(n+1)-A035116(n+1)` -/
def P5686537077448741025.Spec : Prop :=
  ∀ n, P5686537077448741025.a n = A162907 (n + 1)

end A162907

/-! ## A162907.P8536520204753329028

`A000217(A000203(n+1))-A066446(n+1)`
-/

namespace A162907.P8536520204753329028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A066446 (n + 1)

end

end A162907.P8536520204753329028

namespace A162907

/-- `A000217(A000203(n+1))-A066446(n+1)` -/
def P8536520204753329028.Spec : Prop :=
  ∀ n, P8536520204753329028.a n = A162907 (n + 1)

end A162907

/-! ## A162907.P8430049428878883170

`A000217(∑{d}[n+1, #])-A000217(A032741(n+1))`
-/

namespace A162907.P8430049428878883170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - A000217 (A032741 (n + 1)).toNat

end

end A162907.P8430049428878883170

namespace A162907

/-- `A000217(∑{d}[n+1, #])-A000217(A032741(n+1))` -/
def P8430049428878883170.Spec : Prop :=
  ∀ n, P8430049428878883170.a n = A162907 (n + 1)

end A162907

/-!
# A162908: Pairs of central divisors of A089229(n).

The programs for A162908, there is no canonical definition to state claims against.
-/

/-! ## A162908.P1137577912976587921

`A180501(A213742(n))+A097283(n+1)`
-/

namespace A162908.P1137577912976587921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180501 (A213742 n).toNat + A097283 (n + 1)

end

end A162908.P1137577912976587921

/-! ## A162908.P10534891624318934537

`A001511(A016825(n)*A289081(n+1))`
-/

namespace A162908.P10534891624318934537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A016825 n * A289081 (n + 1)).toNat

end

end A162908.P10534891624318934537

/-! ## A162908.P9094446900012828507

`A124762(A000048(n))+A000005(n+3)`
-/

namespace A162908.P9094446900012828507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A000048 n).toNat + A000005 (n + 3)

end

end A162908.P9094446900012828507

/-! ## A162908.P1910207098129189318

`A010060(A341722(n))+A000005(n+3)`
-/

namespace A162908.P1910207098129189318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A341722 n).toNat + A000005 (n + 3)

end

end A162908.P1910207098129189318

/-! ## A162908.P10509372284808616960

`A353475(A322188(n))+A181819(n+3)`
-/

namespace A162908.P10509372284808616960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (A322188 n).toNat + A181819 (n + 3)

end

end A162908.P10509372284808616960

/-!
# A162909: Numerators of Bird tree fractions.

The programs for A162909, the canonical program `A162909.P4760727200634389971` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162909 has offset 1).

The definition of A162909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162909.P4760727200634389971

`A002487(A059893(A258746(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162909

/-- `A002487(A059893(A258746(n+1)))` -/
def P4760727200634389971.Spec : Prop :=
  ∀ n, P4760727200634389971.a n = A162909 (n + 1)

theorem P4760727200634389971.correct : P4760727200634389971.Spec := by
  intro n
  simp only [A162909, Nat.add_sub_cancel]

end A162909

/-! ## A162909.P2054351107274660605

`A002487(A258996(A059893(n+1)))`
-/

namespace A162909.P2054351107274660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A258996 (A059893 (n + 1)).toNat).toNat

end

end A162909.P2054351107274660605

namespace A162909

/-- `A002487(A258996(A059893(n+1)))` -/
def P2054351107274660605.Spec : Prop :=
  ∀ n, P2054351107274660605.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P4936884010613476599

`A245326(A003188(n+1))`
-/

namespace A162909.P4936884010613476599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A003188 (n + 1)).toNat

end

end A162909.P4936884010613476599

namespace A162909

/-- `A245326(A003188(n+1))` -/
def P4936884010613476599.Spec : Prop :=
  ∀ n, P4936884010613476599.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P15371110325213067791

`A071766(A180201(n+1))`
-/

namespace A162909.P15371110325213067791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A180201 (n + 1)).toNat

end

end A162909.P15371110325213067791

namespace A162909

/-- `A071766(A180201(n+1))` -/
def P15371110325213067791.Spec : Prop :=
  ∀ n, P15371110325213067791.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P6573276426390177186

`A071585(A279645(n+1))`
-/

namespace A162909.P6573276426390177186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A279645 (n + 1)).toNat

end

end A162909.P6573276426390177186

namespace A162909

/-- `A071585(A279645(n+1))` -/
def P6573276426390177186.Spec : Prop :=
  ∀ n, P6573276426390177186.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P529320567884236043

`A229742(A154436(n+1))`
-/

namespace A162909.P529320567884236043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A154436 (n + 1)).toNat

end

end A162909.P529320567884236043

namespace A162909

/-- `A229742(A154436(n+1))` -/
def P529320567884236043.Spec : Prop :=
  ∀ n, P529320567884236043.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P1390084969684819293

`A245325(A233280(n+1))`
-/

namespace A162909.P1390084969684819293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A233280 (n + 1)).toNat

end

end A162909.P1390084969684819293

namespace A162909

/-- `A245325(A233280(n+1))` -/
def P1390084969684819293.Spec : Prop :=
  ∀ n, P1390084969684819293.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P9736653336494334581

`A245328(A341915(n+1))`
-/

namespace A162909.P9736653336494334581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A341915 (n + 1)).toNat

end

end A162909.P9736653336494334581

namespace A162909

/-- `A245328(A341915(n+1))` -/
def P9736653336494334581.Spec : Prop :=
  ∀ n, P9736653336494334581.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P15173380473680979245

`A007305(A258746(n+1)+1)`
-/

namespace A162909.P15173380473680979245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A258746 (n + 1) + 1).toNat

end

end A162909.P15173380473680979245

namespace A162909

/-- `A007305(A258746(n+1)+1)` -/
def P15173380473680979245.Spec : Prop :=
  ∀ n, P15173380473680979245.a n = A162909 (n + 1)

end A162909

/-! ## A162909.P15194654907481615125

`A287732(A258996(n+1)+1)`
-/

namespace A162909.P15194654907481615125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287732 (A258996 (n + 1) + 1).toNat

end

end A162909.P15194654907481615125

namespace A162909

/-- `A287732(A258996(n+1)+1)` -/
def P15194654907481615125.Spec : Prop :=
  ∀ n, P15194654907481615125.a n = A162909 (n + 1)

end A162909

/-!
# A162910: Denominators of Bird tree fractions.

The programs for A162910, the canonical program `A162910.P10176663424386777526` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162910 has offset 1).

The definition of A162910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A258746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162910.P10176663424386777526

`A002487(1+A059893(A258746(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162910

/-- `A002487(1+A059893(A258746(n+1)))` -/
def P10176663424386777526.Spec : Prop :=
  ∀ n, P10176663424386777526.a n = A162910 (n + 1)

theorem P10176663424386777526.correct : P10176663424386777526.Spec := by
  intro n
  simp only [A162910, Nat.add_sub_cancel]

end A162910

/-! ## A162910.P4790247236471708239

`A002487(1+A258996(A059893(n+1)))`
-/

namespace A162910.P4790247236471708239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A258996 (A059893 (n + 1)).toNat).toNat

end

end A162910.P4790247236471708239

namespace A162910

/-- `A002487(1+A258996(A059893(n+1)))` -/
def P4790247236471708239.Spec : Prop :=
  ∀ n, P4790247236471708239.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P9511242741134865842

`A071585(A363674(n))`
-/

namespace A162910.P9511242741134865842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A363674 n).toNat

end

end A162910.P9511242741134865842

namespace A162910

/-- `A071585(A363674(n))` -/
def P9511242741134865842.Spec : Prop :=
  ∀ n, P9511242741134865842.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P4751247004304699640

`A071766(A154436(n+1))`
-/

namespace A162910.P4751247004304699640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A154436 (n + 1)).toNat

end

end A162910.P4751247004304699640

namespace A162910

/-- `A071766(A154436(n+1))` -/
def P4751247004304699640.Spec : Prop :=
  ∀ n, P4751247004304699640.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P2198901106002932162

`A245325(A003188(n+1))`
-/

namespace A162910.P2198901106002932162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A003188 (n + 1)).toNat

end

end A162910.P2198901106002932162

namespace A162910

/-- `A245325(A003188(n+1))` -/
def P2198901106002932162.Spec : Prop :=
  ∀ n, P2198901106002932162.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P17688056505831533202

`A229742(A180201(n+1))`
-/

namespace A162910.P17688056505831533202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A180201 (n + 1)).toNat

end

end A162910.P17688056505831533202

namespace A162910

/-- `A229742(A180201(n+1))` -/
def P17688056505831533202.Spec : Prop :=
  ∀ n, P17688056505831533202.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P14367338483561573991

`A245326(A233280(n+1))`
-/

namespace A162910.P14367338483561573991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A233280 (n + 1)).toNat

end

end A162910.P14367338483561573991

namespace A162910

/-- `A245326(A233280(n+1))` -/
def P14367338483561573991.Spec : Prop :=
  ∀ n, P14367338483561573991.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P11172000265392886277

`A245327(A341915(n+1))`
-/

namespace A162910.P11172000265392886277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A341915 (n + 1)).toNat

end

end A162910.P11172000265392886277

namespace A162910

/-- `A245327(A341915(n+1))` -/
def P11172000265392886277.Spec : Prop :=
  ∀ n, P11172000265392886277.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P18401237994843818696

`A007305(A165199(n+1)+1)`
-/

namespace A162910.P18401237994843818696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A165199 (n + 1) + 1).toNat

end

end A162910.P18401237994843818696

namespace A162910

/-- `A007305(A165199(n+1)+1)` -/
def P18401237994843818696.Spec : Prop :=
  ∀ n, P18401237994843818696.a n = A162910 (n + 1)

end A162910

/-! ## A162910.P4593892689087892220

`A287731(A258996(n+1)+1)`
-/

namespace A162910.P4593892689087892220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (A258996 (n + 1) + 1).toNat

end

end A162910.P4593892689087892220

namespace A162910

/-- `A287731(A258996(n+1)+1)` -/
def P4593892689087892220.Spec : Prop :=
  ∀ n, P4593892689087892220.a n = A162910 (n + 1)

end A162910

/-!
# A162911: Numerators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

The programs for A162911, the canonical program `A162911.P13044090797899104373` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162911 has offset 1).

The definition of A162911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162911.P13044090797899104373

`A002487(A258996(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162911

/-- `A002487(A258996(n+1))` -/
def P13044090797899104373.Spec : Prop :=
  ∀ n, P13044090797899104373.a n = A162911 (n + 1)

theorem P13044090797899104373.correct : P13044090797899104373.Spec := by
  intro n
  simp only [A162911, Nat.add_sub_cancel]

end A162911

/-! ## A162911.P5210609627838701677

`A020650(A154438(n+1))`
-/

namespace A162911.P5210609627838701677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A154438 (n + 1)).toNat

end

end A162911.P5210609627838701677

namespace A162911

/-- `A020650(A154438(n+1))` -/
def P5210609627838701677.Spec : Prop :=
  ∀ n, P5210609627838701677.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P7164863654385217164

`A020651(A284460(n+1))`
-/

namespace A162911.P7164863654385217164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A284460 (n + 1)).toNat

end

end A162911.P7164863654385217164

namespace A162911

/-- `A020651(A284460(n+1))` -/
def P7164863654385217164.Spec : Prop :=
  ∀ n, P7164863654385217164.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P10395068947009561880

`A245328(A153153(n+1))`
-/

namespace A162911.P10395068947009561880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A153153 (n + 1)).toNat

end

end A162911.P10395068947009561880

namespace A162911

/-- `A245328(A153153(n+1))` -/
def P10395068947009561880.Spec : Prop :=
  ∀ n, P10395068947009561880.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P8875784025869062806

`A245327(A231550(n+1))`
-/

namespace A162911.P8875784025869062806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A231550 (n + 1)).toNat

end

end A162911.P8875784025869062806

namespace A162911

/-- `A245327(A231550(n+1))` -/
def P8875784025869062806.Spec : Prop :=
  ∀ n, P8875784025869062806.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P10960059578323869141

`A002487(A332769(n+1)+1)`
-/

namespace A162911.P10960059578323869141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A332769 (n + 1) + 1).toNat

end

end A162911.P10960059578323869141

namespace A162911

/-- `A002487(A332769(n+1)+1)` -/
def P10960059578323869141.Spec : Prop :=
  ∀ n, P10960059578323869141.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P13606099993929138923

`A002487(A284447(2*(n+1)))`
-/

namespace A162911.P13606099993929138923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A284447 (2 * (n + 1))).toNat

end

end A162911.P13606099993929138923

namespace A162911

/-- `A002487(A284447(2*(n+1)))` -/
def P13606099993929138923.Spec : Prop :=
  ∀ n, P13606099993929138923.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P2536238372588687739

`A245327(2*A153153(n+1))`
-/

namespace A162911.P2536238372588687739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A153153 (n + 1)).toNat

end

end A162911.P2536238372588687739

namespace A162911

/-- `A245327(2*A153153(n+1))` -/
def P2536238372588687739.Spec : Prop :=
  ∀ n, P2536238372588687739.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P7554577755921446265

`A245328(A231550(2*n+3))`
-/

namespace A162911.P7554577755921446265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A231550 (2 * n + 3)).toNat

end

end A162911.P7554577755921446265

namespace A162911

/-- `A245328(A231550(2*n+3))` -/
def P7554577755921446265.Spec : Prop :=
  ∀ n, P7554577755921446265.a n = A162911 (n + 1)

end A162911

/-! ## A162911.P17391565713618554495

`A245327(A153153(n+3+n))`
-/

namespace A162911.P17391565713618554495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A153153 (n + 3 + n)).toNat

end

end A162911.P17391565713618554495

namespace A162911

/-- `A245327(A153153(n+3+n))` -/
def P17391565713618554495.Spec : Prop :=
  ∀ n, P17391565713618554495.a n = A162911 (n + 1)

end A162911

/-!
# A162912: Denominators of drib tree fractions, where drib is the bit-reversal permutation tree of the Bird tree.

The programs for A162912, the canonical program `A162912.P15780371086772788936` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162912 has offset 1).

The definition of A162912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162912.P15780371086772788936

`A002487(1+A258996(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162912

/-- `A002487(1+A258996(n+1))` -/
def P15780371086772788936.Spec : Prop :=
  ∀ n, P15780371086772788936.a n = A162912 (n + 1)

theorem P15780371086772788936.correct : P15780371086772788936.Spec := by
  intro n
  simp only [A162912, Nat.add_sub_cancel]

end A162912

/-! ## A162912.P10119686260047698739

`A020651(A154438(n+1))`
-/

namespace A162912.P10119686260047698739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A154438 (n + 1)).toNat

end

end A162912.P10119686260047698739

namespace A162912

/-- `A020651(A154438(n+1))` -/
def P10119686260047698739.Spec : Prop :=
  ∀ n, P10119686260047698739.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P12786430707434343470

`A020650(A284460(n+1))`
-/

namespace A162912.P12786430707434343470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A284460 (n + 1)).toNat

end

end A162912.P12786430707434343470

namespace A162912

/-- `A020650(A284460(n+1))` -/
def P12786430707434343470.Spec : Prop :=
  ∀ n, P12786430707434343470.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P13085390616365033952

`A002487(A332769(n+1))`
-/

namespace A162912.P13085390616365033952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A332769 (n + 1)).toNat

end

end A162912.P13085390616365033952

namespace A162912

/-- `A002487(A332769(n+1))` -/
def P13085390616365033952.Spec : Prop :=
  ∀ n, P13085390616365033952.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P3491632221596673894

`A245327(A153153(n+1))`
-/

namespace A162912.P3491632221596673894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A153153 (n + 1)).toNat

end

end A162912.P3491632221596673894

namespace A162912

/-- `A245327(A153153(n+1))` -/
def P3491632221596673894.Spec : Prop :=
  ∀ n, P3491632221596673894.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P13761900769085895164

`A245328(A231550(n+1))`
-/

namespace A162912.P13761900769085895164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A231550 (n + 1)).toNat

end

end A162912.P13761900769085895164

namespace A162912

/-- `A245328(A231550(n+1))` -/
def P13761900769085895164.Spec : Prop :=
  ∀ n, P13761900769085895164.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P14220466475196438470

`abs(A005590(A179888(n+1)))`
-/

namespace A162912.P14220466475196438470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005590 (A179888 (n + 1)).toNat|

end

end A162912.P14220466475196438470

namespace A162912

/-- `abs(A005590(A179888(n+1)))` -/
def P14220466475196438470.Spec : Prop :=
  ∀ n, P14220466475196438470.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P12820894791630577599

`A020650(A154438(2*(n+1)))`
-/

namespace A162912.P12820894791630577599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A154438 (2 * (n + 1))).toNat

end

end A162912.P12820894791630577599

namespace A162912

/-- `A020650(A154438(2*(n+1)))` -/
def P12820894791630577599.Spec : Prop :=
  ∀ n, P12820894791630577599.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P6086032728388591246

`A020651(A284460(2*(n+1)))`
-/

namespace A162912.P6086032728388591246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A284460 (2 * (n + 1))).toNat

end

end A162912.P6086032728388591246

namespace A162912

/-- `A020651(A284460(2*(n+1)))` -/
def P6086032728388591246.Spec : Prop :=
  ∀ n, P6086032728388591246.a n = A162912 (n + 1)

end A162912

/-! ## A162912.P17773048359651067230

`A245328(A153153(2*(n+1)))`
-/

namespace A162912.P17773048359651067230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A153153 (2 * (n + 1))).toNat

end

end A162912.P17773048359651067230

namespace A162912

/-- `A245328(A153153(2*(n+1)))` -/
def P17773048359651067230.Spec : Prop :=
  ∀ n, P17773048359651067230.a n = A162912 (n + 1)

end A162912

/-!
# A162915: Absolute values of the first differences of A162908.

The programs for A162915, there is no canonical definition to state claims against.
-/

/-! ## A162915.P8358032074225811004

`abs(Δ[A162908(n+1)])`
-/

namespace A162915.P8358032074225811004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162915.P8358032074225811004

/-! ## A162915.P10395752590590997214

`A000188(Δ[A162908(n+1)]²)`
-/

namespace A162915.P10395752590590997214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A162915.P10395752590590997214

/-! ## A162915.P2204006410157403601

`A000194(Δ[A162908(n+1)]²)`
-/

namespace A162915.P2204006410157403601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A162915.P2204006410157403601

/-! ## A162915.P17414055501974280830

`A000196(Δ[A162908(n+1)]²)`
-/

namespace A162915.P17414055501974280830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A162915.P17414055501974280830

/-! ## A162915.P2346236865440100837

`A033677(Δ[A162908(n+1)]²)`
-/

namespace A162915.P2346236865440100837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A162915.P2346236865440100837

/-! ## A162915.P15474683267649009060

`gcd(Δ[A162908(n+1)], A000038(n))`
-/

namespace A162915.P15474683267649009060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A162915.P15474683267649009060

/-! ## A162915.P14035761698786570520

`∑{d}[Δ[A162908(n+1)], A000010(#)]`
-/

namespace A162915.P14035761698786570520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A162915.P14035761698786570520

/-! ## A162915.P4541328402436620472

`lcm(A014963(15*(n+1)), Δ[A162908(n+1)])`
-/

namespace A162915.P4541328402436620472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (15 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A162915.P4541328402436620472

/-!
# A162917: Numbers n which are not in A161983.

The programs for A162917, the canonical program `A162917.P5952952200221241721` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162917 has offset 1).

The definition of A162917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162917.P11973150775486992759

`round(sqrt(n+1))²+n`
-/

namespace A162917.P11973150775486992759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

end

end A162917.P11973150775486992759

namespace A162917

/-- `round(sqrt(n+1))²+n` -/
def P11973150775486992759.Spec : Prop :=
  ∀ n, P11973150775486992759.a n = A162917 (n + 1)

end A162917

/-! ## A162917.P9879977471396841830

`comp[lcm(2, round(sqrt(2*n)))+n]`
-/

namespace A162917.P9879977471396841830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162917.P9879977471396841830

namespace A162917

/-- `comp[lcm(2, round(sqrt(2*n)))+n]` -/
def P9879977471396841830.Spec : Prop :=
  ∀ n, (P9879977471396841830.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P6986125396982300568

`eq[0, round(sqrt(2*(n+1)))%2]`
-/

namespace A162917.P6986125396982300568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P6986125396982300568

namespace A162917

/-- `eq[0, round(sqrt(2*(n+1)))%2]` -/
def P6986125396982300568.Spec : Prop :=
  ∀ n, (P6986125396982300568.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P3010561034798597998

`lt[round(sqrt(2*n+1))%2, 1]`
-/

namespace A162917.P3010561034798597998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162917.P3010561034798597998

namespace A162917

/-- `lt[round(sqrt(2*n+1))%2, 1]` -/
def P3010561034798597998.Spec : Prop :=
  ∀ n, (P3010561034798597998.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P10253666188536091151

`eq[2, gcd(2, round(sqrt(2*(n+1))))]`
-/

namespace A162917.P10253666188536091151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162917.P10253666188536091151

namespace A162917

/-- `eq[2, gcd(2, round(sqrt(2*(n+1))))]` -/
def P10253666188536091151.Spec : Prop :=
  ∀ n, (P10253666188536091151.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P4026637218980597992

`eq[0, and(1, round(sqrt(2*(n+1))))]`
-/

namespace A162917.P4026637218980597992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P4026637218980597992

namespace A162917

/-- `eq[0, and(1, round(sqrt(2*(n+1))))]` -/
def P4026637218980597992.Spec : Prop :=
  ∀ n, (P4026637218980597992.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P10048197006990857797

`lt[and(1, round(sqrt(2*n+1))), 1]`
-/

namespace A162917.P10048197006990857797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A162917.P10048197006990857797

namespace A162917

/-- `lt[and(1, round(sqrt(2*n+1))), 1]` -/
def P10048197006990857797.Spec : Prop :=
  ∀ n, (P10048197006990857797.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P5952952200221241721

`A066182(a(n-1)+2)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A162917

/-- `A066182(a(n-1)+2)` -/
def P5952952200221241721.Spec : Prop :=
  ∀ n, P5952952200221241721.a n = A162917 (n + 1)

theorem P5952952200221241721.correct : P5952952200221241721.Spec := by
  intro n
  simp only [A162917, Nat.add_sub_cancel]

end A162917

/-! ## A162917.P6371338197956225403

`comp[A161983(n)]`
-/

namespace A162917.P6371338197956225403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162917.P6371338197956225403

namespace A162917

/-- `comp[A161983(n)]` -/
def P6371338197956225403.Spec : Prop :=
  ∀ n, (P6371338197956225403.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P17309990850823487540

`A116942(Δ[n²])`
-/

namespace A162917.P17309990850823487540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162917.P17309990850823487540

namespace A162917

/-- `A116942(Δ[n²])` -/
def P17309990850823487540.Spec : Prop :=
  ∀ n, P17309990850823487540.a n = A162917 (n + 1)

end A162917

/-! ## A162917.P6341188642868231597

`eq[0, A057211(n+1)]`
-/

namespace A162917.P6341188642868231597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P6341188642868231597

namespace A162917

/-- `eq[0, A057211(n+1)]` -/
def P6341188642868231597.Spec : Prop :=
  ∀ n, (P6341188642868231597.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P15743785913789591576

`eq[0, A122759(n+1)]`
-/

namespace A162917.P15743785913789591576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P15743785913789591576

namespace A162917

/-- `eq[0, A122759(n+1)]` -/
def P15743785913789591576.Spec : Prop :=
  ∀ n, (P15743785913789591576.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P6051085209169839220

`eq[0, A203905(n+1)]`
-/

namespace A162917.P6051085209169839220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P6051085209169839220

namespace A162917

/-- `eq[0, A203905(n+1)]` -/
def P6051085209169839220.Spec : Prop :=
  ∀ n, (P6051085209169839220.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P4610898278643473310

`eq[1, A057212(n+1)]`
-/

namespace A162917.P4610898278643473310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P4610898278643473310

namespace A162917

/-- `eq[1, A057212(n+1)]` -/
def P4610898278643473310.Spec : Prop :=
  ∀ n, (P4610898278643473310.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P14877166393792714732

`eq[2, A201208(n+1)]`
-/

namespace A162917.P14877166393792714732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162917.P14877166393792714732

namespace A162917

/-- `eq[2, A201208(n+1)]` -/
def P14877166393792714732.Spec : Prop :=
  ∀ n, (P14877166393792714732.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P6466314582166639473

`A023443(A007607(n+1))`
-/

namespace A162917.P6466314582166639473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007607 (n + 1)).toNat

end

end A162917.P6466314582166639473

namespace A162917

/-- `A023443(A007607(n+1))` -/
def P6466314582166639473.Spec : Prop :=
  ∀ n, P6466314582166639473.a n = A162917 (n + 1)

end A162917

/-! ## A162917.P6629453241538343735

`eq[A060510(n), A128174(n+1)]`
-/

namespace A162917.P6629453241538343735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162917.P6629453241538343735

namespace A162917

/-- `eq[A060510(n), A128174(n+1)]` -/
def P6629453241538343735.Spec : Prop :=
  ∀ n, (P6629453241538343735.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P15227264441171089359

`eq[A122760(n+1), A122761(n)]`
-/

namespace A162917.P15227264441171089359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162917.P15227264441171089359

namespace A162917

/-- `eq[A122760(n+1), A122761(n)]` -/
def P15227264441171089359.Spec : Prop :=
  ∀ n, (P15227264441171089359.a n : ℤ) = A162917 (n + 1)

end A162917

/-! ## A162917.P13665868579589828364

`eq[A154957(n), A204175(n+1)]`
-/

namespace A162917.P13665868579589828364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162917.P13665868579589828364

namespace A162917

/-- `eq[A154957(n), A204175(n+1)]` -/
def P13665868579589828364.Spec : Prop :=
  ∀ n, (P13665868579589828364.a n : ℤ) = A162917 (n + 1)

end A162917

/-!
# A162918: Natural numbers n such that there are s and w satisfying 0 < s < w and 2*s + 5*w = n.

The programs for A162918, there is no canonical definition to state claims against.
-/

/-! ## A162918.P15526010990110256136

`A123122(n+1)+12`
-/

namespace A162918.P15526010990110256136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123122 (n + 1) + 12

end

end A162918.P15526010990110256136

/-!
# A162920: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162920, there is no canonical definition to state claims against.
-/

/-! ## A162920.P10124939110835440655

`∑[∑[A008486(A116732(n))]]`
-/

namespace A162920.P10124939110835440655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A116732 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162920.P10124939110835440655

/-! ## A162920.P16206357604084849452

`A008486(A135431(n)+A116732(n))`
-/

namespace A162920.P16206357604084849452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A135431 n + A116732 n).toNat

end

end A162920.P16206357604084849452

/-! ## A162920.P4501610937848780144

`A008486(∑[A239909(n+1)]-A239909(n+1))`
-/

namespace A162920.P4501610937848780144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j - A239909 (n + 1)).toNat

end

end A162920.P4501610937848780144

/-! ## A162920.P18263741491637026463

`(A290398(n)-A194511(A290398(n)))/2`
-/

namespace A162920.P18263741491637026463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290398 n - A194511 (A290398 n).toNat : ℚ) / 2

end

end A162920.P18263741491637026463

/-! ## A162920.P7581844336092058505

`A194511(3*A290398(n))`
-/

namespace A162920.P7581844336092058505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (3 * A290398 n).toNat

end

end A162920.P7581844336092058505

/-!
# A162921: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162921, there is no canonical definition to state claims against.
-/

/-! ## A162921.P14493197565796363057

`A070095(A007097(n+1))+A001411(n)`
-/

namespace A162921.P14493197565796363057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (A007097 (n + 1)).toNat + A001411 n

end

end A162921.P14493197565796363057

/-! ## A162921.P11142600068088906686

`A063108(n+1)+A005599(A080069(n))`
-/

namespace A162921.P11142600068088906686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063108 (n + 1) + A005599 (A080069 n).toNat

end

end A162921.P11142600068088906686

/-!
# A162922: Square array read by antidiagonals: m is the a(n,m)th positive integer among those which are coprime to n. Or a(n,m) = 0 if m and n are not coprime.

The programs for A162922, there is no canonical definition to state claims against.
-/

/-! ## A162922.P8127739163089234868

`A054431(n+1)*A275257(A038722(n+1))`
-/

namespace A162922.P8127739163089234868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) * A275257 (A038722 (n + 1)).toNat

end

end A162922.P8127739163089234868

/-! ## A162922.P3813339308197835380

`A054431(n+1)*A275257(A002024(n+1)²-n)`
-/

namespace A162922.P3813339308197835380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) * A275257 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A162922.P3813339308197835380

/-! ## A162922.P13470602614679520228

`and(A002260(n+1), A104895(A226234(n)))`
-/

namespace A162922.P13470602614679520228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A104895 (A226234 n).toNat)

end

end A162922.P13470602614679520228

/-! ## A162922.P11518038365902879190

`A127093(C(n, A022463(n+1)+2)+n+1)`
-/

namespace A162922.P11518038365902879190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (Nat.choose n (A022463 (n + 1) + 2).toNat + n + 1)

end

end A162922.P11518038365902879190

/-! ## A162922.P8132091923496017119

`gcd(A127093(n+1), A127093(A019320(n)))`
-/

namespace A162922.P8132091923496017119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127093 (n + 1)) (A127093 (A019320 n).toNat)

end

end A162922.P8132091923496017119

/-!
# A162923: Numbers k such that the equation sigma(sigma(x)) = k has no solutions.

The programs for A162923, the canonical program `A162923.P2258807770550946497` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162923 has offset 1).

The definition of A162923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162923.P3168891817913795396

`comp[A070286(n+1)-1]+1`
-/

namespace A162923.P3168891817913795396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070286 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162923.P3168891817913795396

namespace A162923

/-- `comp[A070286(n+1)-1]+1` -/
def P3168891817913795396.Spec : Prop :=
  ∀ n, (P3168891817913795396.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P2258807770550946497

`comp[A000203(A000203(n+1))-1]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162923

/-- `comp[A000203(A000203(n+1))-1]+1` -/
def P2258807770550946497.Spec : Prop :=
  ∀ n, (P2258807770550946497.a n : ℤ) = A162923 (n + 1)

theorem P2258807770550946497.correct : P2258807770550946497.Spec := by
  intro n
  simp only [A162923, Nat.add_sub_cancel]

end A162923

/-! ## A162923.P16931573049668046323

`comp[A000203(n+1)*A175192(n+1)]`
-/

namespace A162923.P16931573049668046323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A175192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162923.P16931573049668046323

namespace A162923

/-- `comp[A000203(n+1)*A175192(n+1)]` -/
def P16931573049668046323.Spec : Prop :=
  ∀ n, (P16931573049668046323.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P14156300080025658047

`lt[A286011(n+2), 2]+2`
-/

namespace A162923.P14156300080025658047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A162923.P14156300080025658047

namespace A162923

/-- `lt[A286011(n+2), 2]+2` -/
def P14156300080025658047.Spec : Prop :=
  ∀ n, (P14156300080025658047.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P8258431867476806610

`eq[1, A000010(A286011(n+2)+1)]+2`
-/

namespace A162923.P8258431867476806610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A286011 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A162923.P8258431867476806610

namespace A162923

/-- `eq[1, A000010(A286011(n+2)+1)]+2` -/
def P8258431867476806610.Spec : Prop :=
  ∀ n, (P8258431867476806610.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P3716106603486070729

`comp[∑{d}[∑{d}[n, #], #]]`
-/

namespace A162923.P3716106603486070729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162923.P3716106603486070729

namespace A162923

/-- `comp[∑{d}[∑{d}[n, #], #]]` -/
def P3716106603486070729.Spec : Prop :=
  ∀ n, (P3716106603486070729.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P5475615666152646219

`eq[0, char[∑{d}[∑{d}[n, #], #]]]`
-/

namespace A162923.P5475615666152646219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162923.P5475615666152646219

namespace A162923

/-- `eq[0, char[∑{d}[∑{d}[n, #], #]]]` -/
def P5475615666152646219.Spec : Prop :=
  ∀ n, (P5475615666152646219.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P9364655491149633115

`lt[char[∑{d}[∑{d}[n, #], #]]+1, 2]`
-/

namespace A162923.P9364655491149633115
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f5 j) n

end

end A162923.P9364655491149633115

namespace A162923

/-- `lt[char[∑{d}[∑{d}[n, #], #]]+1, 2]` -/
def P9364655491149633115.Spec : Prop :=
  ∀ n, (P9364655491149633115.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P5778266188805870183

`comp[∑[A111408(n)]-1]+1`
-/

namespace A162923.P5778266188805870183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162923.P5778266188805870183

namespace A162923

/-- `comp[∑[A111408(n)]-1]+1` -/
def P5778266188805870183.Spec : Prop :=
  ∀ n, (P5778266188805870183.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P1502099357573495934

`comp[A051027(n+1)-1]+1`
-/

namespace A162923.P1502099357573495934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162923.P1502099357573495934

namespace A162923

/-- `comp[A051027(n+1)-1]+1` -/
def P1502099357573495934.Spec : Prop :=
  ∀ n, (P1502099357573495934.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P8517940388770071913

`comp[∑[A111408(n)]-A111408(n)]`
-/

namespace A162923.P8517940388770071913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A111408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162923.P8517940388770071913

namespace A162923

/-- `comp[∑[A111408(n)]-A111408(n)]` -/
def P8517940388770071913.Spec : Prop :=
  ∀ n, (P8517940388770071913.a n : ℤ) = A162923 (n + 1)

end A162923

/-! ## A162923.P9085155919044924357

`eq[char[A051027(n+1)], A000007(n)]`
-/

namespace A162923.P9085155919044924357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A162923.P9085155919044924357

namespace A162923

/-- `eq[char[A051027(n+1)], A000007(n)]` -/
def P9085155919044924357.Spec : Prop :=
  ∀ n, (P9085155919044924357.a n : ℤ) = A162923 (n + 1)

end A162923

/-!
# A162924: Denominators of fractions converging to square root 3 satisfying: a(n)=1/a(n-1)+1/a(n-2)+ 1/a(n-3) or numerators of reciprocal satisfying: a(n)=1/(a(n-1)+ a(n-2)+ a(n-3)) with a(1,2,3)= 1.

The programs for A162924, there is no canonical definition to state claims against.
-/

/-! ## A162924.P6852056686100745907

`A018641(∏{e}[floor(n-atan(n))!, #+1])`
-/

namespace A162924.P6852056686100745907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018641 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A162924.P6852056686100745907

/-! ## A162924.P16597904705767952098

`ceil(A057993(n)/∑[2-xor(1, n%3)])`
-/

namespace A162924.P16597904705767952098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.xor 1 (n % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057993 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A162924.P16597904705767952098

/-! ## A162924.P5904054796646460556

`A108729(A193296(n))`
-/

namespace A162924.P5904054796646460556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108729 (A193296 n).toNat

end

end A162924.P5904054796646460556

/-!
# A162925: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162925, there is no canonical definition to state claims against.
-/

/-! ## A162925.P3219611502015309581

`A238419(n)+record[A199571(n)]`
-/

namespace A162925.P3219611502015309581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162925.P3219611502015309581

/-! ## A162925.P7318186884160165712

`A003947(n)-A341980(A018007(n))`
-/

namespace A162925.P7318186884160165712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A341980 ((A018007 n).toNat + 78)

end

end A162925.P7318186884160165712

/-!
# A162926: Numerators of fractions converging to square root 3 satisfying: a(n)=1/a(n-1)+1/a(n-2)+ 1/a(n-3) or denominators of reciprocal satisfying: a(n)=1/(a(n-1)+ a(n-2)+ a(n-3)) with a(1,2,3)= 1.

The programs for A162926, there is no canonical definition to state claims against.
-/

/-! ## A162926.P10860225996044218344

`A274201(A027677(n+1))`
-/

namespace A162926.P10860225996044218344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274201 (A027677 (n + 1)).toNat

end

end A162926.P10860225996044218344

/-! ## A162926.P420200594969933286

`or(1, A274201(A006330(n)))`
-/

namespace A162926.P420200594969933286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A274201 (A006330 n).toNat)

end

end A162926.P420200594969933286

/-! ## A162926.P14891003291921911362

`A006530(A174522(floor(∑[2^n/3])))`
-/

namespace A162926.P14891003291921911362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174522 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat).toNat

end

end A162926.P14891003291921911362

/-!
# A162930: Primes that can be written as a sum of a positive square and a positive cube in more than one way.

The programs for A162930, there is no canonical definition to state claims against.
-/

/-! ## A162930.P16609784875040737175

`∩[A054402(n+1), A066649(n+1)]`
-/

namespace A162930.P16609784875040737175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P16609784875040737175

/-! ## A162930.P7567355368828589053

`∩[A055393(n+1), A066649(n+1)]`
-/

namespace A162930.P7567355368828589053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P7567355368828589053

/-! ## A162930.P16783586934445871967

`p?[A054402(n+1)]`
-/

namespace A162930.P16783586934445871967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162930.P16783586934445871967

/-! ## A162930.P13774134992184333686

`p?[A055393(n+1)]`
-/

namespace A162930.P13774134992184333686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162930.P13774134992184333686

/-! ## A162930.P7004913589848869696

`∩[A054402(n+1), A109515(n+1)]`
-/

namespace A162930.P7004913589848869696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P7004913589848869696

/-! ## A162930.P16745849906990454480

`∩[A055393(n+1), A109515(n+1)]`
-/

namespace A162930.P16745849906990454480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P16745849906990454480

/-! ## A162930.P16434120749205940490

`∩[A009087(n+1), A054402(n+1)]`
-/

namespace A162930.P16434120749205940490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P16434120749205940490

/-! ## A162930.P2309223288075272284

`∩[A054402(n+1), A042990(n)]`
-/

namespace A162930.P2309223288075272284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P2309223288075272284

/-! ## A162930.P1131444632119424913

`∩[A055393(n+1), A042990(n)]`
-/

namespace A162930.P1131444632119424913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P1131444632119424913

/-! ## A162930.P6284358100447546048

`∩[A045311(n+1), A054402(n+1)]`
-/

namespace A162930.P6284358100447546048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P6284358100447546048

/-! ## A162930.P1844269468771007436

`∩[A049551(n+1), A054402(n+1)]`
-/

namespace A162930.P1844269468771007436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P1844269468771007436

/-! ## A162930.P9320117855539166332

`∩[A049551(n+1), A055393(n+1)]`
-/

namespace A162930.P9320117855539166332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P9320117855539166332

/-! ## A162930.P7770096122893236269

`∩[A054402(n+1), A061345(n)]`
-/

namespace A162930.P7770096122893236269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P7770096122893236269

/-! ## A162930.P17985822190569129482

`∩[A000040(n+1), A054402(n+1)]`
-/

namespace A162930.P17985822190569129482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P17985822190569129482

/-! ## A162930.P15861997355780175501

`∩[A000430(n+1), A054402(n+1)]`
-/

namespace A162930.P15861997355780175501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P15861997355780175501

/-! ## A162930.P13195880184968560731

`∩[A000040(n+1), A055393(n+1)]`
-/

namespace A162930.P13195880184968560731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P13195880184968560731

/-! ## A162930.P17261077212182159261

`∩[A004139(n+1), A054402(n+1)]`
-/

namespace A162930.P17261077212182159261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P17261077212182159261

/-! ## A162930.P5808081544675993312

`∩[A004139(n+1), A055393(n+1)]`
-/

namespace A162930.P5808081544675993312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P5808081544675993312

/-! ## A162930.P4874440535607018656

`∩[A006005(n+1), A054402(n+1)]`
-/

namespace A162930.P4874440535607018656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P4874440535607018656

/-! ## A162930.P11227226624530738173

`∩[A008578(n+1), A054402(n+1)]`
-/

namespace A162930.P11227226624530738173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162930.P11227226624530738173

/-!
# A162932: a(n) = A053445(n-2) - A053445(n-4).

The programs for A162932, there is no canonical definition to state claims against.
-/

/-! ## A162932.P15139293820462432866

`A053445(n+4)-A053445(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162932.P15139293820462432866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (n + 4) - A053445 (n + 2)

end

end A162932.P15139293820462432866

/-! ## A162932.P15169527156206182346

`A000041(n+6)-2*A000041(n+5)+2*A000041(n+3)-A000041(n+2)`
-/

namespace A162932.P15169527156206182346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 6) - 2 * A000041 (n + 5) + 2 * A000041 (n + 3) - A000041 (n + 2)

end

end A162932.P15169527156206182346

/-! ## A162932.P3592526651994965280

`A072380(n+2)+A072380(n+3)`
-/

namespace A162932.P3592526651994965280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 (n + 2) + A072380 (n + 3)

end

end A162932.P3592526651994965280

/-! ## A162932.P5253529269153368899

`∑[A081094(n+1)+A081094(n+2)]`
-/

namespace A162932.P5253529269153368899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081094 (n + 1) + A081094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162932.P5253529269153368899

/-! ## A162932.P16850761433486084278

`Δ[A008483(n+5)]`
-/

namespace A162932.P16850761433486084278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162932.P16850761433486084278

/-! ## A162932.P9667710209008424996

`Δ[A165652(n+5)]`
-/

namespace A162932.P9667710209008424996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162932.P9667710209008424996

/-! ## A162932.P1003052103675755536

`Δ[A026796(n+8)]`
-/

namespace A162932.P1003052103675755536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162932.P1003052103675755536

/-! ## A162932.P4274417803279033375

`A002865(n+3)-A096373(n+3)`
-/

namespace A162932.P4274417803279033375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 3) - A096373 (n + 3)

end

end A162932.P4274417803279033375

/-! ## A162932.P6916345942813787184

`Δ[A199086(A027379(n+1)+1)]`
-/

namespace A162932.P6916345942813787184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 (A027379 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162932.P6916345942813787184

/-! ## A162932.P7398645593098894691

`Δ[A199086(A055998(n+1)+1)]`
-/

namespace A162932.P7398645593098894691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 (A055998 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162932.P7398645593098894691

/-!
# A162934: Shift sequence A162932 twice then subtract from the original sequence.

The programs for A162934, there is no canonical definition to state claims against.
-/

/-! ## A162934.P5908747391732632763

`Δ[Δ[Δ[A320689(n+3)]]]`
-/

namespace A162934.P5908747391732632763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P5908747391732632763

/-! ## A162934.P9440221734912196794

`Δ[Δ[A046663(A167614(n+1))]]`
-/

namespace A162934.P9440221734912196794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046663 (A167614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P9440221734912196794

/-! ## A162934.P16221040431452044998

`Δ[A008483(n+5)-A008483(n+3)]`
-/

namespace A162934.P16221040431452044998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 5) - A008483 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P16221040431452044998

/-! ## A162934.P2048683577775026512

`Δ[A165652(n+5)-A165652(n+3)]`
-/

namespace A162934.P2048683577775026512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 5) - A165652 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P2048683577775026512

/-! ## A162934.P13951366323941842997

`Δ[A026796(n+8)-A026796(n+6)]`
-/

namespace A162934.P13951366323941842997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 8) - A026796 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P13951366323941842997

/-! ## A162934.P17278209730288172724

`Δ[A008483(n+5)-A026796(A020715(n))]`
-/

namespace A162934.P17278209730288172724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 5) - A026796 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162934.P17278209730288172724

/-! ## A162934.P12586875429110651536

`A162932(n+6)-Δ[A026796(A020715(n))]`
-/

namespace A162934.P12586875429110651536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - (f1 (n + 1) - f1 n)

end

end A162934.P12586875429110651536

/-! ## A162934.P213876153560345702

`A162932(n+6)-(A072380(n+1)+A072380(n))`
-/

namespace A162934.P213876153560345702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162932 (n + 6) - (A072380 (n + 1) + A072380 n)

end

end A162934.P213876153560345702

/-!
# A162935: Highly composite numbers (A002182) with property that the next highly composite number is more than 3/2 times greater.

The programs for A162935, there is no canonical definition to state claims against.
-/

/-! ## A162935.P5256043374638989043

`∏[∏{p}[A277196(n), #]]`
-/

namespace A162935.P5256043374638989043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277196 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162935.P5256043374638989043

/-! ## A162935.P9855891722918005302

`∏[∏{p}[A007093(n)+1, #]]`
-/

namespace A162935.P9855891722918005302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162935.P9855891722918005302

/-! ## A162935.P1728257882109267027

`∏[∏{p}[A090563(n+1), #]]`
-/

namespace A162935.P1728257882109267027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162935.P1728257882109267027

/-! ## A162935.P15083286744749056859

`∏[∏{p}[A102453(n+1), #]]`
-/

namespace A162935.P15083286744749056859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102453 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162935.P15083286744749056859

/-!
# A162936: Highly composite numbers (A002182) whose following highly composite number is at least 3/2 times greater.

The programs for A162936, there is no canonical definition to state claims against.
-/

/-! ## A162936.P16616024618101089574

`∩[A095849(n+1), A272576(n)]`
-/

namespace A162936.P16616024618101089574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162936.P16616024618101089574

/-! ## A162936.P13277579109061371343

`record[A002182(n+1)%A008486(A054481(n+2))]`
-/

namespace A162936.P13277579109061371343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002182 (n + 1)) (A008486 (A054481 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162936.P13277579109061371343

/-! ## A162936.P15688808411232056890

`A073348(A036484(n))`
-/

namespace A162936.P15688808411232056890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073348 (A036484 n).toNat

end

end A162936.P15688808411232056890

/-! ## A162936.P6457977895119011816

`filter[A095849(n+1), A188082(#)]`
-/

namespace A162936.P6457977895119011816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188082 (f1 j).toNat = 1) n)

end

end A162936.P6457977895119011816

/-!
# A162937: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162937, there is no canonical definition to state claims against.
-/

/-! ## A162937.P17076622425126164563

`A188188(A026709(2*n+1))-A056811(2*n+1)`
-/

namespace A162937.P17076622425126164563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (A026709 (2 * n + 1)).toNat - A056811 (2 * n + 1)

end

end A162937.P17076622425126164563

/-!
# A162938: A 2-based alternate sum over the numbers from 0 to the n-th nonprime.

The programs for A162938, there is no canonical definition to state claims against.
-/

/-! ## A162938.P1290461380462871061

`A113497(comp[Δ[A007504(n)]]+2)-1`
-/

namespace A162938.P1290461380462871061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P1290461380462871061

/-! ## A162938.P9151495928872789962

`A113497(comp[p?[A259153(n)]]+2)-1`
-/

namespace A162938.P9151495928872789962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P9151495928872789962

/-! ## A162938.P11702389740193681588

`A113497(comp[A000040(n+1)]+2)-1`
-/

namespace A162938.P11702389740193681588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P11702389740193681588

/-! ## A162938.P9303475072455147516

`A113497(comp[A078701(n+1)]+2)-1`
-/

namespace A162938.P9303475072455147516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P9303475072455147516

/-! ## A162938.P7246971386316442156

`A113497(comp[A006530(n+2)]+2)-1`
-/

namespace A162938.P7246971386316442156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P7246971386316442156

/-! ## A162938.P17906034649961112834

`A113497(comp[A020639(n+2)]+2)-1`
-/

namespace A162938.P17906034649961112834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P17906034649961112834

/-! ## A162938.P15864233519611978444

`A141468(n+1)+A162888(n+1)+1`
-/

namespace A162938.P15864233519611978444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (A162888 (n + 1) + 1)

end

end A162938.P15864233519611978444

/-! ## A162938.P10947285273627633544

`A113497(comp[record[A014963(n+2)]]+2)-1`
-/

namespace A162938.P10947285273627633544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P10947285273627633544

/-! ## A162938.P8005796910037805572

`A113497(comp[record[A000010(n+1)+1]]+2)-1`
-/

namespace A162938.P8005796910037805572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 1

end

end A162938.P8005796910037805572

/-!
# A162939: A 1-based alternate sum over the numbers from 0 to prime(n).

The programs for A162939, the canonical program `A162939.P6704992617817560624` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162939 has offset 1).

The definition of A162939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162939.P6704992617817560624

`A014682(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162939

/-- `A014682(A000040(n+1))` -/
def P6704992617817560624.Spec : Prop :=
  ∀ n, P6704992617817560624.a n = A162939 (n + 1)

theorem P6704992617817560624.correct : P6704992617817560624.Spec := by
  intro n
  simp only [A162939, Nat.add_sub_cancel]

end A162939

/-! ## A162939.P10103558585839171314

`record[A339964(2*n+1)+n]`
-/

namespace A162939.P10103558585839171314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P10103558585839171314

namespace A162939

/-- `record[A339964(2*n+1)+n]` -/
def P10103558585839171314.Spec : Prop :=
  ∀ n, P10103558585839171314.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P7706678392215437110

`record[A001414(2*n+1)+1+n]`
-/

namespace A162939.P7706678392215437110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P7706678392215437110

namespace A162939

/-- `record[A001414(2*n+1)+1+n]` -/
def P7706678392215437110.Spec : Prop :=
  ∀ n, P7706678392215437110.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P15735144030413416802

`record[A008472(2*n+1)+n+1]`
-/

namespace A162939.P15735144030413416802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P15735144030413416802

namespace A162939

/-- `record[A008472(2*n+1)+n+1]` -/
def P15735144030413416802.Spec : Prop :=
  ∀ n, P15735144030413416802.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P14170312620375935138

`record[A006530(2*n+1)+(n+1)%(2*n+1)]`
-/

namespace A162939.P14170312620375935138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) + (((n + 1) % (2 * n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P14170312620375935138

namespace A162939

/-- `record[A006530(2*n+1)+(n+1)%(2*n+1)]` -/
def P14170312620375935138.Spec : Prop :=
  ∀ n, P14170312620375935138.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P4447857533882471980

`A014682(Δ[A007504(n)])`
-/

namespace A162939.P4447857533882471980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A162939.P4447857533882471980

namespace A162939

/-- `A014682(Δ[A007504(n)])` -/
def P4447857533882471980.Spec : Prop :=
  ∀ n, P4447857533882471980.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P12607017889580523324

`A014682(A008578(n+2))`
-/

namespace A162939.P12607017889580523324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008578 (n + 2)).toNat

end

end A162939.P12607017889580523324

namespace A162939

/-- `A014682(A008578(n+2))` -/
def P12607017889580523324.Spec : Prop :=
  ∀ n, P12607017889580523324.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P13487515621458655393

`A014682(record[A006530(n+2)])`
-/

namespace A162939.P13487515621458655393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162939.P13487515621458655393

namespace A162939

/-- `A014682(record[A006530(n+2)])` -/
def P13487515621458655393.Spec : Prop :=
  ∀ n, P13487515621458655393.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P726500935688726049

`A014682(record[A020639(n+2)])`
-/

namespace A162939.P726500935688726049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162939.P726500935688726049

namespace A162939

/-- `A014682(record[A020639(n+2)])` -/
def P726500935688726049.Spec : Prop :=
  ∀ n, P726500935688726049.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P12218659499202969066

`A014682(A006093(n+1)+1)`
-/

namespace A162939.P12218659499202969066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006093 (n + 1) + 1).toNat

end

end A162939.P12218659499202969066

namespace A162939

/-- `A014682(A006093(n+1)+1)` -/
def P12218659499202969066.Spec : Prop :=
  ∀ n, P12218659499202969066.a n = A162939 (n + 1)

theorem P12218659499202969066.correct : P12218659499202969066.Spec := by
  intro n
  simp only [A162939, Nat.add_sub_cancel, A162939.P12218659499202969066.a, A162939.P6704992617817560624.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014682, A014682.P15017874184431916706.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162939

/-! ## A162939.P3619124828908610265

`A014682(eq[1, A001222(n+1)]+1)`
-/

namespace A162939.P3619124828908610265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162939.P3619124828908610265

namespace A162939

/-- `A014682(eq[1, A001222(n+1)]+1)` -/
def P3619124828908610265.Spec : Prop :=
  ∀ n, P3619124828908610265.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P9699471411502994331

`A014682(A014689(n+1)+n+1)`
-/

namespace A162939.P9699471411502994331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A162939.P9699471411502994331

namespace A162939

/-- `A014682(A014689(n+1)+n+1)` -/
def P9699471411502994331.Spec : Prop :=
  ∀ n, P9699471411502994331.a n = A162939 (n + 1)

theorem P9699471411502994331.correct : P9699471411502994331.Spec := by
  intro n
  simp only [A162939, Nat.add_sub_cancel, A162939.P9699471411502994331.a, A162939.P6704992617817560624.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014682, A014682.P15017874184431916706.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162939

/-! ## A162939.P15413877430215315642

`A102781(n+1)+A055670(n+1)`
-/

namespace A162939.P15413877430215315642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A055670 (n + 1)

end

end A162939.P15413877430215315642

namespace A162939

/-- `A102781(n+1)+A055670(n+1)` -/
def P15413877430215315642.Spec : Prop :=
  ∀ n, P15413877430215315642.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P9086383275327583421

`A014682(A014688(n+1)-(n+1))`
-/

namespace A162939.P9086383275327583421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A162939.P9086383275327583421

namespace A162939

/-- `A014682(A014688(n+1)-(n+1))` -/
def P9086383275327583421.Spec : Prop :=
  ∀ n, P9086383275327583421.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P17386504354903516369

`A036690(n+1)%A072055(n+1)`
-/

namespace A162939.P17386504354903516369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036690 (n + 1)) (A072055 (n + 1))

end

end A162939.P17386504354903516369

namespace A162939

/-- `A036690(n+1)%A072055(n+1)` -/
def P17386504354903516369.Spec : Prop :=
  ∀ n, P17386504354903516369.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P11013351789287394718

`A172190(n+1)%A072055(n+1)`
-/

namespace A162939.P11013351789287394718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172190 (n + 1)) (A072055 (n + 1))

end

end A162939.P11013351789287394718

namespace A162939

/-- `A172190(n+1)%A072055(n+1)` -/
def P11013351789287394718.Spec : Prop :=
  ∀ n, P11013351789287394718.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P10113503134689893746

`A306190(n+1)%A072055(n+1)`
-/

namespace A162939.P10113503134689893746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306190 (n + 1)) (A072055 (n + 1))

end

end A162939.P10113503134689893746

namespace A162939

/-- `A306190(n+1)%A072055(n+1)` -/
def P10113503134689893746.Spec : Prop :=
  ∀ n, P10113503134689893746.a n = A162939 (n + 1)

end A162939

/-! ## A162939.P17280104939348402266

`eq[1, floor((n+1)/A006530(2*n+1))]+1`
-/

namespace A162939.P17280104939348402266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A006530 (2 * n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162939.P17280104939348402266

namespace A162939

/-- `eq[1, floor((n+1)/A006530(2*n+1))]+1` -/
def P17280104939348402266.Spec : Prop :=
  ∀ n, (P17280104939348402266.a n : ℤ) = A162939 (n + 1)

end A162939

/-! ## A162939.P10072373504847523418

`record[∑{p}[2*n+1, #]+1+n]`
-/

namespace A162939.P10072373504847523418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P10072373504847523418

namespace A162939

/-- `record[∑{p}[2*n+1, #]+1+n]` -/
def P10072373504847523418.Spec : Prop :=
  ∀ n, (P10072373504847523418.a n : ℤ) = A162939 (n + 1)

end A162939

/-! ## A162939.P10904651312662973847

`record[∑{p}[n+1+n, #]+n+1]`
-/

namespace A162939.P10904651312662973847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162939.P10904651312662973847

namespace A162939

/-- `record[∑{p}[n+1+n, #]+n+1]` -/
def P10904651312662973847.Spec : Prop :=
  ∀ n, (P10904651312662973847.a n : ℤ) = A162939 (n + 1)

end A162939

/-!
# A162940: a(n) = binomial(n+1,2)*6^2.

The programs for A162940, the canonical program `A162940.P6076576400821307123` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162940 has offset 0).

The definition of A162940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 2)*6²` (program `A162940.P6076576400821307123`, by `A162940.P6076576400821307123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162940.P15134456665903360767

`18*n*(n+1)`
-/

namespace A162940.P15134456665903360767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n * (n + 1)

end

end A162940.P15134456665903360767

namespace A162940

/-- `18*n*(n+1)` -/
def P15134456665903360767.Spec : Prop :=
  ∀ n, (P15134456665903360767.a n : ℤ) = A162940 n

theorem P15134456665903360767.correct : P15134456665903360767.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P15134456665903360767.a, A162940.P6076576400821307123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P6076576400821307123

`C(n+1, 2)*6²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162940

/-- `C(n+1, 2)*6²` -/
def P6076576400821307123.Spec : Prop :=
  ∀ n, (P6076576400821307123.a n : ℤ) = A162940 n

theorem P6076576400821307123.correct : P6076576400821307123.Spec := by
  intro n
  simp only [A162940]

end A162940

/-! ## A162940.P17111795803192592913

`lcm(6, Δ[n^3])-6`
-/

namespace A162940.P17111795803192592913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 6

end

end A162940.P17111795803192592913

namespace A162940

/-- `lcm(6, Δ[n^3])-6` -/
def P17111795803192592913.Spec : Prop :=
  ∀ n, P17111795803192592913.a n = A162940 n

end A162940

/-! ## A162940.P15836589881720607306

`∑[a(n-1)+36]` with `a(0)=0`
-/

namespace A162940.P15836589881720607306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162940.P15836589881720607306

namespace A162940

/-- `∑[a(n-1)+36]` -/
def P15836589881720607306.Spec : Prop :=
  ∀ n, (P15836589881720607306.a n : ℤ) = A162940 n

end A162940

/-! ## A162940.P1974060364691278125

`(6*n)²-a(n-1)` with `a(0)=0`
-/

namespace A162940.P1974060364691278125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((6 * n) ^ 2 : ℤ) - a (n - 1)

end

end A162940.P1974060364691278125

namespace A162940

/-- `(6*n)²-a(n-1)` -/
def P1974060364691278125.Spec : Prop :=
  ∀ n, P1974060364691278125.a n = A162940 n

end A162940

/-! ## A162940.P5992399598652603024

`37*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A162940.P5992399598652603024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (37 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A162940.P5992399598652603024

namespace A162940

/-- `37*n-(n-a(n-1))` -/
def P5992399598652603024.Spec : Prop :=
  ∀ n, P5992399598652603024.a n = A162940 n

end A162940

/-! ## A162940.P15314984852747632926

`a(n-1)+n/(1/6)²` with `a(0)=0`
-/

namespace A162940.P15314984852747632926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / ((1 : ℚ) / 6) ^ 2

end

end A162940.P15314984852747632926

namespace A162940

/-- `a(n-1)+n/(1/6)²` -/
def P15314984852747632926.Spec : Prop :=
  ∀ n, P15314984852747632926.a n = (A162940 n : ℚ)

end A162940

/-! ## A162940.P18176150850459929750

`A164016(n)-6`
-/

namespace A162940.P18176150850459929750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n - 6

end

end A162940.P18176150850459929750

namespace A162940

/-- `A164016(n)-6` -/
def P18176150850459929750.Spec : Prop :=
  ∀ n, P18176150850459929750.a n = A162940 n

theorem P18176150850459929750.correct : P18176150850459929750.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P18176150850459929750.a, A162940.P6076576400821307123.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P13700677753421620198

`A195316(n+1)-1`
-/

namespace A162940.P13700677753421620198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195316 (n + 1) - 1

end

end A162940.P13700677753421620198

namespace A162940

/-- `A195316(n+1)-1` -/
def P13700677753421620198.Spec : Prop :=
  ∀ n, P13700677753421620198.a n = A162940 n

theorem P13700677753421620198.correct : P13700677753421620198.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P13700677753421620198.a, A162940.P6076576400821307123.a, A195316, A195316.P1586365391160239288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P14727244749333545023

`A144410(n)/2-4`
-/

namespace A162940.P14727244749333545023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144410 n : ℚ) / 2 - 4

end

end A162940.P14727244749333545023

namespace A162940

/-- `A144410(n)/2-4` -/
def P14727244749333545023.Spec : Prop :=
  ∀ n, P14727244749333545023.a n = (A162940 n : ℚ)

theorem P14727244749333545023.correct : P14727244749333545023.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P14727244749333545023.a, A162940.P6076576400821307123.a, A144410, A144410.P8365255097243004447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P5692321704134441506

`A045946(n)+A008594(n)`
-/

namespace A162940.P5692321704134441506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045946 n + A008594 n

end

end A162940.P5692321704134441506

namespace A162940

/-- `A045946(n)+A008594(n)` -/
def P5692321704134441506.Spec : Prop :=
  ∀ n, P5692321704134441506.a n = A162940 n

theorem P5692321704134441506.correct : P5692321704134441506.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P5692321704134441506.a, A162940.P6076576400821307123.a, A008594, A008594.P9877215682521385096.a, A045946, A045946.P9467780037797056746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P8444183959144070639

`A144314(n)+A008597(n)`
-/

namespace A162940.P8444183959144070639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + A008597 n

end

end A162940.P8444183959144070639

namespace A162940

/-- `A144314(n)+A008597(n)` -/
def P8444183959144070639.Spec : Prop :=
  ∀ n, P8444183959144070639.a n = A162940 n

theorem P8444183959144070639.correct : P8444183959144070639.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P8444183959144070639.a, A162940.P6076576400821307123.a, A008597, A008597.P11564373174620697085.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P9107762743567315232

`A153792(n)+A008606(n)`
-/

namespace A162940.P9107762743567315232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n + A008606 n

end

end A162940.P9107762743567315232

namespace A162940

/-- `A153792(n)+A008606(n)` -/
def P9107762743567315232.Spec : Prop :=
  ∀ n, P9107762743567315232.a n = A162940 n

theorem P9107762743567315232.correct : P9107762743567315232.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P9107762743567315232.a, A162940.P6076576400821307123.a, A008606, A008606.P331422733914118461.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P13571757764828979406

`A147651(n)+A016766(n)`
-/

namespace A162940.P13571757764828979406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147651 n + A016766 n

end

end A162940.P13571757764828979406

namespace A162940

/-- `A147651(n)+A016766(n)` -/
def P13571757764828979406.Spec : Prop :=
  ∀ n, P13571757764828979406.a n = A162940 n

theorem P13571757764828979406.correct : P13571757764828979406.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P13571757764828979406.a, A162940.P6076576400821307123.a, A016766, A016766.P3834823630241441293.a, A147651, A147651.P5567796470201540316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P10003996284437415367

`A173308(n)+A002378(n)`
-/

namespace A162940.P10003996284437415367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173308 n + A002378 n

end

end A162940.P10003996284437415367

namespace A162940

/-- `A173308(n)+A002378(n)` -/
def P10003996284437415367.Spec : Prop :=
  ∀ n, P10003996284437415367.a n = A162940 n

theorem P10003996284437415367.correct : P10003996284437415367.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P10003996284437415367.a, A162940.P6076576400821307123.a, A002378, A002378.P6342434596694243671.a, A173308, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P11529569027826341663

`A163761(n)+A035008(n)`
-/

namespace A162940.P11529569027826341663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A035008 n

end

end A162940.P11529569027826341663

namespace A162940

/-- `A163761(n)+A035008(n)` -/
def P11529569027826341663.Spec : Prop :=
  ∀ n, P11529569027826341663.a n = A162940 n

theorem P11529569027826341663.correct : P11529569027826341663.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P11529569027826341663.a, A162940.P6076576400821307123.a, A035008, A035008.P9220570800855289153.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P14491854999131798812

`A195321(n)+A008600(n)`
-/

namespace A162940.P14491854999131798812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + A008600 n

end

end A162940.P14491854999131798812

namespace A162940

/-- `A195321(n)+A008600(n)` -/
def P14491854999131798812.Spec : Prop :=
  ∀ n, P14491854999131798812.a n = A162940 n

theorem P14491854999131798812.correct : P14491854999131798812.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P14491854999131798812.a, A162940.P6076576400821307123.a, A008600, A008600.P8081908058967824863.a, A195321, A195321.P9690014683711486293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P11827902430049663226

`A140681(n)+A064761(n)`
-/

namespace A162940.P11827902430049663226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n + A064761 n

end

end A162940.P11827902430049663226

namespace A162940

/-- `A140681(n)+A064761(n)` -/
def P11827902430049663226.Spec : Prop :=
  ∀ n, P11827902430049663226.a n = A162940 n

theorem P11827902430049663226.correct : P11827902430049663226.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P11827902430049663226.a, A162940.P6076576400821307123.a, A064761, A064761.P5984238371699821623.a, A140681, A140681.P11404641493444198903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P4075152450235182584

`A183010(n)+A081589(n)`
-/

namespace A162940.P4075152450235182584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A081589 n

end

end A162940.P4075152450235182584

namespace A162940

/-- `A183010(n)+A081589(n)` -/
def P4075152450235182584.Spec : Prop :=
  ∀ n, P4075152450235182584.a n = A162940 n

theorem P4075152450235182584.correct : P4075152450235182584.Spec := by
  intro n
  simp only [A162940, Nat.add_sub_cancel, A162940.P4075152450235182584.a, A162940.P6076576400821307123.a, A081589, A081589.P14858353134158145363.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162940

/-! ## A162940.P5719944678779174199

`A152740(n)+A123296(n)`
-/

namespace A162940.P5719944678779174199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n + A123296 n

end

end A162940.P5719944678779174199

namespace A162940

/-- `A152740(n)+A123296(n)` -/
def P5719944678779174199.Spec : Prop :=
  ∀ n, P5719944678779174199.a n = A162940 n

end A162940

/-!
# A162941: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162941, there is no canonical definition to state claims against.
-/

/-! ## A162941.P14922856685109439779

`A156253(A289799(n))`
-/

namespace A162941.P14922856685109439779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A289799 n).toNat

end

end A162941.P14922856685109439779

/-!
# A162942: a(n) = binomial(n+1,2)*7^2.

The programs for A162942, the canonical program `A162942.P11600580126520269022` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162942 has offset 0).

The definition of A162942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 2)*7²` (program `A162942.P11600580126520269022`, by `A162942.P11600580126520269022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162942.P8326097929889694124

`49*C(n+1, 2)`
-/

namespace A162942.P8326097929889694124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * Nat.choose (n + 1) 2

end

end A162942.P8326097929889694124

namespace A162942

/-- `49*C(n+1, 2)` -/
def P8326097929889694124.Spec : Prop :=
  ∀ n, (P8326097929889694124.a n : ℤ) = A162942 n

theorem P8326097929889694124.correct : P8326097929889694124.Spec := by
  intro n
  simp only [A162942, Nat.add_sub_cancel, A162942.P8326097929889694124.a, A162942.P11600580126520269022.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162942

/-! ## A162942.P11600580126520269022

`C(n+1, 2)*7²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162942

/-- `C(n+1, 2)*7²` -/
def P11600580126520269022.Spec : Prop :=
  ∀ n, (P11600580126520269022.a n : ℤ) = A162942 n

theorem P11600580126520269022.correct : P11600580126520269022.Spec := by
  intro n
  simp only [A162942]

end A162942

/-! ## A162942.P7044815982013660926

`49*n*(n+1)/2`
-/

namespace A162942.P7044815982013660926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 * n * (n + 1) : ℚ) / 2

end

end A162942.P7044815982013660926

namespace A162942

/-- `49*n*(n+1)/2` -/
def P7044815982013660926.Spec : Prop :=
  ∀ n, P7044815982013660926.a n = (A162942 n : ℚ)

theorem P7044815982013660926.correct : P7044815982013660926.Spec := by
  intro n
  simp only [A162942, Nat.add_sub_cancel, A162942.P7044815982013660926.a, A162942.P11600580126520269022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162942

/-! ## A162942.P8921040681043226688

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=49, a(2)=147`
-/

namespace A162942.P8921040681043226688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 49, 147] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A162942.P8921040681043226688

namespace A162942

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8921040681043226688.Spec : Prop :=
  ∀ n, P8921040681043226688.a n = A162942 n

end A162942

/-! ## A162942.P6618296364527459659

`49*A000217(n)`
-/

namespace A162942.P6618296364527459659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A000217 n

end

end A162942.P6618296364527459659

namespace A162942

/-- `49*A000217(n)` -/
def P6618296364527459659.Spec : Prop :=
  ∀ n, P6618296364527459659.a n = A162942 n

theorem P6618296364527459659.correct : P6618296364527459659.Spec := by
  intro n
  simp only [A162942, Nat.add_sub_cancel, A162942.P6618296364527459659.a, A162942.P11600580126520269022.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162942

/-! ## A162942.P6620006506945226066

`a(n-1)+49*n` with `a(0)=0`
-/

namespace A162942.P6620006506945226066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 49 * n

end

end A162942.P6620006506945226066

namespace A162942

/-- `a(n-1)+49*n` -/
def P6620006506945226066.Spec : Prop :=
  ∀ n, (P6620006506945226066.a n : ℤ) = A162942 n

end A162942

/-! ## A162942.P1363373549638768410

`floor(∑[a(n-1)+49])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A162942.P1363373549638768410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162942.P1363373549638768410

namespace A162942

/-- `floor(∑[a(n-1)+49])` -/
def P1363373549638768410.Spec : Prop :=
  ∀ n, (P1363373549638768410.a n : ℤ) = A162942 n

end A162942

/-! ## A162942.P13766568657684152156

`(7*n)²-a(n-1)` with `a(0)=0`
-/

namespace A162942.P13766568657684152156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((7 * n) ^ 2 : ℤ) - a (n - 1)

end

end A162942.P13766568657684152156

namespace A162942

/-- `(7*n)²-a(n-1)` -/
def P13766568657684152156.Spec : Prop :=
  ∀ n, P13766568657684152156.a n = A162942 n

end A162942

/-! ## A162942.P14036601670128765519

`50*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A162942.P14036601670128765519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (50 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A162942.P14036601670128765519

namespace A162942

/-- `50*n-(n-a(n-1))` -/
def P14036601670128765519.Spec : Prop :=
  ∀ n, P14036601670128765519.a n = A162942 n

end A162942

/-! ## A162942.P5056523637466727197

`A061792(n)-6`
-/

namespace A162942.P5056523637466727197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061792 n - 6

end

end A162942.P5056523637466727197

namespace A162942

/-- `A061792(n)-6` -/
def P5056523637466727197.Spec : Prop :=
  ∀ n, P5056523637466727197.a n = A162942 n

end A162942

/-! ## A162942.P15485683165299220445

`7*A024966(n)`
-/

namespace A162942.P15485683165299220445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A024966 n

end

end A162942.P15485683165299220445

namespace A162942

/-- `7*A024966(n)` -/
def P15485683165299220445.Spec : Prop :=
  ∀ n, P15485683165299220445.a n = A162942 n

end A162942

/-! ## A162942.P17777220453500398876

`A001526(n)/2-3`
-/

namespace A162942.P17777220453500398876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001526 n : ℚ) / 2 - 3

end

end A162942.P17777220453500398876

namespace A162942

/-- `A001526(n)/2-3` -/
def P17777220453500398876.Spec : Prop :=
  ∀ n, P17777220453500398876.a n = (A162942 n : ℚ)

theorem P17777220453500398876.correct : P17777220453500398876.Spec := by
  intro n
  simp only [A162942, Nat.add_sub_cancel, A162942.P17777220453500398876.a, A162942.P11600580126520269022.a, A001526, A001526.P12617765537680755072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162942

/-! ## A162942.P11683260957372566410

`A177060(n)/2-5`
-/

namespace A162942.P11683260957372566410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177060 n : ℚ) / 2 - 5

end

end A162942.P11683260957372566410

namespace A162942

/-- `A177060(n)/2-5` -/
def P11683260957372566410.Spec : Prop :=
  ∀ n, P11683260957372566410.a n = (A162942 n : ℚ)

theorem P11683260957372566410.correct : P11683260957372566410.Spec := by
  intro n
  simp only [A162942, Nat.add_sub_cancel, A162942.P11683260957372566410.a, A162942.P11600580126520269022.a, A177060, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162942

/-! ## A162942.P14388189637580550549

`A114444(n)+A051871(n)`
-/

namespace A162942.P14388189637580550549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114444 n + A051871 n

end

end A162942.P14388189637580550549

namespace A162942

/-- `A114444(n)+A051871(n)` -/
def P14388189637580550549.Spec : Prop :=
  ∀ n, P14388189637580550549.a n = A162942 n

end A162942

/-! ## A162942.P7130458112445116173

`A195038(n)+A033996(n)`
-/

namespace A162942.P7130458112445116173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195038 n + A033996 n

end

end A162942.P7130458112445116173

namespace A162942

/-- `A195038(n)+A033996(n)` -/
def P7130458112445116173.Spec : Prop :=
  ∀ n, P7130458112445116173.a n = A162942 n

end A162942

/-! ## A162942.P1364149647660891980

`A162940(n)+A152741(n)`
-/

namespace A162942.P1364149647660891980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n + A152741 n

end

end A162942.P1364149647660891980

namespace A162942

/-- `A162940(n)+A152741(n)` -/
def P1364149647660891980.Spec : Prop :=
  ∀ n, P1364149647660891980.a n = A162942 n

end A162942

/-! ## A162942.P14173371369052436232

`A173309(n)+A152740(n)`
-/

namespace A162942.P14173371369052436232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173309 n + A152740 n

end

end A162942.P14173371369052436232

namespace A162942

/-- `A173309(n)+A152740(n)` -/
def P14173371369052436232.Spec : Prop :=
  ∀ n, P14173371369052436232.a n = A162942 n

end A162942

/-! ## A162942.P15681556343789699808

`A194715(n)+A173308(n)`
-/

namespace A162942.P15681556343789699808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + A173308 n

end

end A162942.P15681556343789699808

namespace A162942

/-- `A194715(n)+A173308(n)` -/
def P15681556343789699808.Spec : Prop :=
  ∀ n, P15681556343789699808.a n = A162942 n

end A162942

/-! ## A162942.P11944082675438769080

`A195039(n)+A173307(n)`
-/

namespace A162942.P11944082675438769080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + A173307 n

end

end A162942.P11944082675438769080

namespace A162942

/-- `A195039(n)+A173307(n)` -/
def P11944082675438769080.Spec : Prop :=
  ∀ n, P11944082675438769080.a n = A162942 n

end A162942

/-! ## A162942.P13224864501602265357

`A016994(n)-A081591(n)`
-/

namespace A162942.P13224864501602265357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n - A081591 n

end

end A162942.P13224864501602265357

namespace A162942

/-- `A016994(n)-A081591(n)` -/
def P13224864501602265357.Spec : Prop :=
  ∀ n, P13224864501602265357.a n = A162942 n

end A162942

/-!
# A162943: a(n) = 2^(1-A002321(n)).

The programs for A162943, the canonical program `A162943.P491532916148086693` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162943 has offset 1).

The definition of A162943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162943.P491532916148086693

`floor(2^∑[round(-(∏{p}[n+1, -#]/(n+3)))])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162943

/-- `floor(2^∑[round(-(∏{p}[n+1, -#]/(n+3)))])` -/
def P491532916148086693.Spec : Prop :=
  ∀ n, P491532916148086693.a n = A162943 (n + 1)

theorem P491532916148086693.correct : P491532916148086693.Spec := by
  intro n
  simp only [A162943, Nat.add_sub_cancel]

end A162943

/-! ## A162943.P2066632142236887249

`floor(2^∑[A157658(n+1)])`
-/

namespace A162943.P2066632142236887249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A162943.P2066632142236887249

namespace A162943

/-- `floor(2^∑[A157658(n+1)])` -/
def P2066632142236887249.Spec : Prop :=
  ∀ n, P2066632142236887249.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P8132801971640335665

`floor(2^(1-A002321(n+1)))`
-/

namespace A162943.P8132801971640335665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (1 - A002321 (n + 1) : ℤ)⌋

end

end A162943.P8132801971640335665

namespace A162943

/-- `floor(2^(1-A002321(n+1)))` -/
def P8132801971640335665.Spec : Prop :=
  ∀ n, P8132801971640335665.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P15487348431901257435

`floor(2/2^∑[A008683(n+1)])`
-/

namespace A162943.P15487348431901257435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A162943.P15487348431901257435

namespace A162943

/-- `floor(2/2^∑[A008683(n+1)])` -/
def P15487348431901257435.Spec : Prop :=
  ∀ n, P15487348431901257435.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P14224034532508775056

`A162944(∑[n]+1)`
-/

namespace A162943.P14224034532508775056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A162943.P14224034532508775056

namespace A162943

/-- `A162944(∑[n]+1)` -/
def P14224034532508775056.Spec : Prop :=
  ∀ n, P14224034532508775056.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P16131342637456183016

`floor(2^-A100198(n+1))`
-/

namespace A162943.P16131342637456183016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (-A100198 (n + 1) : ℤ)⌋

end

end A162943.P16131342637456183016

namespace A162943

/-- `floor(2^-A100198(n+1))` -/
def P16131342637456183016.Spec : Prop :=
  ∀ n, P16131342637456183016.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P1626805522778919779

`A131577(2-∑[A307445((n+1)²)])`
-/

namespace A162943.P1626805522778919779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162943.P1626805522778919779

namespace A162943

/-- `A131577(2-∑[A307445((n+1)²)])` -/
def P1626805522778919779.Spec : Prop :=
  ∀ n, P1626805522778919779.a n = A162943 (n + 1)

end A162943

/-! ## A162943.P8198828107789424994

`2^∑[A157658(A242419(n+1))]`
-/

namespace A162943.P8198828107789424994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A242419 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A162943.P8198828107789424994

namespace A162943

/-- `2^∑[A157658(A242419(n+1))]` -/
def P8198828107789424994.Spec : Prop :=
  ∀ n, P8198828107789424994.a n = (A162943 (n + 1) : ℚ)

end A162943

/-! ## A162943.P430953078832984712

`(2^∑[A157658(n+1)])^A001221(A039593(n+1))`
-/

namespace A162943.P430953078832984712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ (A001221 (A039593 (n + 1)).toNat : ℤ)

end

end A162943.P430953078832984712

namespace A162943

/-- `(2^∑[A157658(n+1)])^A001221(A039593(n+1))` -/
def P430953078832984712.Spec : Prop :=
  ∀ n, P430953078832984712.a n = (A162943 (n + 1) : ℚ)

end A162943

/-!
# A162944: A162943(A010766).

The programs for A162944, the canonical program `A162944.P8521714573655966395` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162944 has offset 1).

The definition of A162944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162944.P8521714573655966395

`A162943(A010766(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162944

/-- `A162943(A010766(n+1))` -/
def P8521714573655966395.Spec : Prop :=
  ∀ n, P8521714573655966395.a n = A162944 (n + 1)

theorem P8521714573655966395.correct : P8521714573655966395.Spec := by
  intro n
  simp only [A162944, Nat.add_sub_cancel]

end A162944

/-! ## A162944.P10011808823910847295

`A162943(ceil(ratio[A074909(n)]))`
-/

namespace A162944.P10011808823910847295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A162944.P10011808823910847295

namespace A162944

/-- `A162943(ceil(ratio[A074909(n)]))` -/
def P10011808823910847295.Spec : Prop :=
  ∀ n, P10011808823910847295.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P15162848479059834167

`A162943(ceil(ratio[A181971(n)]))`
-/

namespace A162944.P15162848479059834167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A162944.P15162848479059834167

namespace A162944

/-- `A162943(ceil(ratio[A181971(n)]))` -/
def P15162848479059834167.Spec : Prop :=
  ∀ n, P15162848479059834167.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P6315915831773095379

`A162943(abs(A174557(n+1)))`
-/

namespace A162944.P6315915831773095379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 |A174557 (n + 1)|.toNat

end

end A162944.P6315915831773095379

namespace A162944

/-- `A162943(abs(A174557(n+1)))` -/
def P6315915831773095379.Spec : Prop :=
  ∀ n, P6315915831773095379.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P2937781888084762761

`A162943(A050206(n+2)-1)`
-/

namespace A162944.P2937781888084762761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A050206 (n + 2) - 1).toNat

end

end A162944.P2937781888084762761

namespace A162944

/-- `A162943(A050206(n+2)-1)` -/
def P2937781888084762761.Spec : Prop :=
  ∀ n, P2937781888084762761.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P6679803860943697017

`A162943(A123229(n+1)/A002260(n+1))`
-/

namespace A162944.P6679803860943697017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (SequenceMachineLib.roundAway ((A123229 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A162944.P6679803860943697017

namespace A162944

/-- `A162943(A123229(n+1)/A002260(n+1))` -/
def P6679803860943697017.Spec : Prop :=
  ∀ n, P6679803860943697017.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P9477113311133882108

`A162943(ceil(ratio[A029635(n)]))`
-/

namespace A162944.P9477113311133882108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A162944.P9477113311133882108

namespace A162944

/-- `A162943(ceil(ratio[A029635(n)]))` -/
def P9477113311133882108.Spec : Prop :=
  ∀ n, P9477113311133882108.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P14732098476868496684

`A162943(A013942(2*(n+1)))`
-/

namespace A162944.P14732098476868496684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A013942 (2 * (n + 1))).toNat

end

end A162944.P14732098476868496684

namespace A162944

/-- `A162943(A013942(2*(n+1)))` -/
def P14732098476868496684.Spec : Prop :=
  ∀ n, P14732098476868496684.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P10006962636782790150

`A162943(floor(sqrt(A331151(n+1))))`
-/

namespace A162944.P10006962636782790150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (Int.sqrt (A331151 (n + 1))).toNat

end

end A162944.P10006962636782790150

namespace A162944

/-- `A162943(floor(sqrt(A331151(n+1))))` -/
def P10006962636782790150.Spec : Prop :=
  ∀ n, P10006962636782790150.a n = A162944 (n + 1)

end A162944

/-! ## A162944.P8143423629696396217

`A162943(A000196(A331151(n+1)))`
-/

namespace A162944.P8143423629696396217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162943 (A000196 (A331151 (n + 1)).toNat).toNat

end

end A162944.P8143423629696396217

namespace A162944

/-- `A162943(A000196(A331151(n+1)))` -/
def P8143423629696396217.Spec : Prop :=
  ∀ n, P8143423629696396217.a n = A162944 (n + 1)

end A162944

/-!
# A162947: Numbers k such that the product of all divisors of k equals k^3.

The programs for A162947, the canonical program `A162947.P2383251509124428934` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162947 has offset 1).

The definition of A162947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162947.P2383251509124428934

`eq[7, C(7, A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162947

/-- `eq[7, C(7, A000005(n+1))]+1` -/
def P2383251509124428934.Spec : Prop :=
  ∀ n, (P2383251509124428934.a n : ℤ) = A162947 (n + 1)

theorem P2383251509124428934.correct : P2383251509124428934.Spec := by
  intro n
  simp only [A162947, Nat.add_sub_cancel]

end A162947

/-! ## A162947.P8544188613147525838

`∪[A030515(n+1), A016757(n)]`
-/

namespace A162947.P8544188613147525838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P8544188613147525838

namespace A162947

/-- `∪[A030515(n+1), A016757(n)]` -/
def P8544188613147525838.Spec : Prop :=
  ∀ n, (P8544188613147525838.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P10438736545557934982

`∪[A016761(n), A030515(n+1)]`
-/

namespace A162947.P10438736545557934982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P10438736545557934982

namespace A162947

/-- `∪[A016761(n), A030515(n+1)]` -/
def P10438736545557934982.Spec : Prop :=
  ∀ n, (P10438736545557934982.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P14867398971751963045

`∪[A030515(n+1), A016783(n)]`
-/

namespace A162947.P14867398971751963045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P14867398971751963045

namespace A162947

/-- `∪[A030515(n+1), A016783(n)]` -/
def P14867398971751963045.Spec : Prop :=
  ∀ n, (P14867398971751963045.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P8973912391385398555

`∪[A016784(n), A030515(n+1)]`
-/

namespace A162947.P8973912391385398555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P8973912391385398555

namespace A162947

/-- `∪[A016784(n), A030515(n+1)]` -/
def P8973912391385398555.Spec : Prop :=
  ∀ n, (P8973912391385398555.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P9573802828067345085

`∪[A030515(n+1), A016817(n)]`
-/

namespace A162947.P9573802828067345085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P9573802828067345085

namespace A162947

/-- `∪[A030515(n+1), A016817(n)]` -/
def P9573802828067345085.Spec : Prop :=
  ∀ n, (P9573802828067345085.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P10544454645068992708

`∪[A030515(n+1), A016818(n)]`
-/

namespace A162947.P10544454645068992708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P10544454645068992708

namespace A162947

/-- `∪[A030515(n+1), A016818(n)]` -/
def P10544454645068992708.Spec : Prop :=
  ∀ n, (P10544454645068992708.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P3653512716212125483

`∪[A030515(n+1), A017177(n)]`
-/

namespace A162947.P3653512716212125483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P3653512716212125483

namespace A162947

/-- `∪[A030515(n+1), A017177(n)]` -/
def P3653512716212125483.Spec : Prop :=
  ∀ n, (P3653512716212125483.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P17889333360590025898

`∪[A030515(n+1), A017284(n)]`
-/

namespace A162947.P17889333360590025898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P17889333360590025898

namespace A162947

/-- `∪[A030515(n+1), A017284(n)]` -/
def P17889333360590025898.Spec : Prop :=
  ∀ n, (P17889333360590025898.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P13091452272505181890

`∪[A030515(n+1), A017285(n)]`
-/

namespace A162947.P13091452272505181890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162947.P13091452272505181890

namespace A162947

/-- `∪[A030515(n+1), A017285(n)]` -/
def P13091452272505181890.Spec : Prop :=
  ∀ n, (P13091452272505181890.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P18060628972428076106

`record[(n+1)/A282937(A000005(n+1)-1)]`
-/

namespace A162947.P18060628972428076106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A282937 (A000005 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162947.P18060628972428076106

namespace A162947

/-- `record[(n+1)/A282937(A000005(n+1)-1)]` -/
def P18060628972428076106.Spec : Prop :=
  ∀ n, P18060628972428076106.a n = (A162947 (n + 1) : ℚ)

end A162947

/-! ## A162947.P854106195303490216

`record[(n+1)/A347594(2*A000005(n+1))]`
-/

namespace A162947.P854106195303490216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A347594 (2 * A000005 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162947.P854106195303490216

namespace A162947

/-- `record[(n+1)/A347594(2*A000005(n+1))]` -/
def P854106195303490216.Spec : Prop :=
  ∀ n, P854106195303490216.a n = (A162947 (n + 1) : ℚ)

end A162947

/-! ## A162947.P1678293863241199136

`eq[2, A089555((A000005(n+1)-1)²+1)]+1`
-/

namespace A162947.P1678293863241199136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089555 ((A000005 (n + 1) - 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162947.P1678293863241199136

namespace A162947

/-- `eq[2, A089555((A000005(n+1)-1)²+1)]+1` -/
def P1678293863241199136.Spec : Prop :=
  ∀ n, (P1678293863241199136.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P10433807326921059598

`lt[A318884(C(A000005(n+1)+3, 2))², 14]+1`
-/

namespace A162947.P10433807326921059598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (Nat.choose (A000005 (n + 1) + 3).toNat 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A162947.P10433807326921059598

namespace A162947

/-- `lt[A318884(C(A000005(n+1)+3, 2))², 14]+1` -/
def P10433807326921059598.Spec : Prop :=
  ∀ n, (P10433807326921059598.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P7168206774269293827

`eq[1, A059252(A145154(n)-1)]`
-/

namespace A162947.P7168206774269293827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A145154 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162947.P7168206774269293827

namespace A162947

/-- `eq[1, A059252(A145154(n)-1)]` -/
def P7168206774269293827.Spec : Prop :=
  ∀ n, (P7168206774269293827.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P16768994576196082827

`eq[A000005(A000005(n+1)), A264440(n+1)]+1`
-/

namespace A162947.P16768994576196082827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162947.P16768994576196082827

namespace A162947

/-- `eq[A000005(A000005(n+1)), A264440(n+1)]+1` -/
def P16768994576196082827.Spec : Prop :=
  ∀ n, (P16768994576196082827.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P12964116098715754808

`eq[A000005(n+1), A265894(A032741(n+1))]+1`
-/

namespace A162947.P12964116098715754808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265894 (A032741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162947.P12964116098715754808

namespace A162947

/-- `eq[A000005(n+1), A265894(A032741(n+1))]+1` -/
def P12964116098715754808.Spec : Prop :=
  ∀ n, (P12964116098715754808.a n : ℤ) = A162947 (n + 1)

end A162947

/-! ## A162947.P722169684952154447

`eq[(n+1)², A007956(n+1)]+1`
-/

namespace A162947.P722169684952154447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162947.P722169684952154447

namespace A162947

/-- `eq[(n+1)², A007956(n+1)]+1` -/
def P722169684952154447.Spec : Prop :=
  ∀ n, (P722169684952154447.a n : ℤ) = A162947 (n + 1)

end A162947

/-!
# A162948: Numbers with a sum of digits equal to their smallest prime factor.

The programs for A162948, there is no canonical definition to state claims against.
-/

/-! ## A162948.P2031801156403088433

`eq[A090088(n+1), A169805(n)]`
-/

namespace A162948.P2031801156403088433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162948.P2031801156403088433

/-! ## A162948.P16935966528728198487

`eq[A160942(n+1), A271669(n+1)]`
-/

namespace A162948.P16935966528728198487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162948.P16935966528728198487

/-! ## A162948.P6569748958138658496

`eq[A020639(A114112(n+1)), A007953(n)]`
-/

namespace A162948.P6569748958138658496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A114112 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162948.P6569748958138658496

/-! ## A162948.P6823705535273779418

`eq[A001057(A160941(n+1)), A175126(n)]`
-/

namespace A162948.P6823705535273779418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A160941 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162948.P6823705535273779418

/-! ## A162948.P4847226395907715749

`eq[A007953(n), A102457(A004442(n+2))]`
-/

namespace A162948.P4847226395907715749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (A004442 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162948.P4847226395907715749

/-!
# A162949: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162949, there is no canonical definition to state claims against.
-/

/-! ## A162949.P4922032330727077136

`∑[A361924(∑[A376716(2*n)])]`
-/

namespace A162949.P4922032330727077136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376716 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361924 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162949.P4922032330727077136

/-!
# A162950: Primes whose square contains no repeated digit.

The programs for A162950, there is no canonical definition to state claims against.
-/

/-! ## A162950.P16393963433423789912

`p?[A119509(n+1)]`
-/

namespace A162950.P16393963433423789912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162950.P16393963433423789912

/-! ## A162950.P5919301352822936082

`p?[record[A119509(A291769(n))]]`
-/

namespace A162950.P5919301352822936082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162950.P5919301352822936082

/-! ## A162950.P8538878651507582955

`record[A006530(A119509(n+2))]`
-/

namespace A162950.P8538878651507582955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119509 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162950.P8538878651507582955

/-! ## A162950.P16902275015866628260

`filter[A119509(n+1), A010051(#)]`
-/

namespace A162950.P16902275015866628260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A162950.P16902275015866628260

/-! ## A162950.P11822582042305992501

`∩[A000040(n+1), A119509(n+1)]`
-/

namespace A162950.P11822582042305992501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162950.P11822582042305992501

/-! ## A162950.P12283523665488006537

`∩[A049573(n+1), A119509(n+1)]`
-/

namespace A162950.P12283523665488006537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162950.P12283523665488006537

/-! ## A162950.P17515999201855544717

`∩[A058853(n+1), A119509(n+1)]`
-/

namespace A162950.P17515999201855544717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162950.P17515999201855544717

/-! ## A162950.P4052385027102439929

`∩[A106118(n+1), A119509(n+1)]`
-/

namespace A162950.P4052385027102439929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162950.P4052385027102439929

/-! ## A162950.P16968357924212552847

`∩[A119509(n+1), A182140(n+1)]`
-/

namespace A162950.P16968357924212552847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162950.P16968357924212552847

/-!
# A162952: A positive integer n is included if n and the number of divisors of n contain the same number of 1's in their binary representations.

The programs for A162952, there is no canonical definition to state claims against.
-/

/-! ## A162952.P460625352599163117

`eq[A000120(n), A000120(A145154(n))]`
-/

namespace A162952.P460625352599163117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P460625352599163117

/-! ## A162952.P12848663256489782459

`eq[A001316(n), A001316(A145154(n))]`
-/

namespace A162952.P12848663256489782459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P12848663256489782459

/-! ## A162952.P17989662460909546412

`eq[A038573(n), A038573(A145154(n))]`
-/

namespace A162952.P17989662460909546412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P17989662460909546412

/-! ## A162952.P17878971267867785554

`eq[A048883(n), A048883(A145154(n))]`
-/

namespace A162952.P17878971267867785554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P17878971267867785554

/-! ## A162952.P10290355926982707122

`eq[A131762(n), A131762(A145154(n))]`
-/

namespace A162952.P10290355926982707122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P10290355926982707122

/-! ## A162952.P14376721674357453427

`eq[A000120(n), A000120(A032741(n)+1)]`
-/

namespace A162952.P14376721674357453427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P14376721674357453427

/-! ## A162952.P12846794973256030346

`eq[A001316(n), A001316(A032741(n)+1)]`
-/

namespace A162952.P12846794973256030346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P12846794973256030346

/-! ## A162952.P9179440300070216726

`eq[A324467(A032741(n)+1), A324467(n)]`
-/

namespace A162952.P9179440300070216726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (A032741 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162952.P9179440300070216726

/-!
# A162953: a(n) = the number of divisors of A162952(n).

The programs for A162953, there is no canonical definition to state claims against.
-/

/-! ## A162953.P4480120667027668127

`∏{e}[A162952(n+1), #+1]`
-/

namespace A162953.P4480120667027668127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A162953.P4480120667027668127

/-! ## A162953.P12755329016751393766

`∑{d}[A162952(n+1), A057432(C(2, #))]`
-/

namespace A162953.P12755329016751393766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057432 (Nat.choose 2 d)

end

end A162953.P12755329016751393766

/-! ## A162953.P1441603677097446264

`∑{d}[A162952(n+1), A055642(val(#+1, 9))]`
-/

namespace A162953.P1441603677097446264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055642 (SequenceMachineLib.valuation (d + 1) 9)

end

end A162953.P1441603677097446264

/-! ## A162953.P3297966931033304019

`∑{d}[A162952(n+1), A256158(val(#+1, 9))]`
-/

namespace A162953.P3297966931033304019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A256158 (SequenceMachineLib.valuation (d + 1) 9)

end

end A162953.P3297966931033304019

/-! ## A162953.P8151938804549472691

`∑{d}[A162952(n+1), gcd(#, A210498(n+1))]`
-/

namespace A162953.P8151938804549472691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A210498 (n + 1))

end

end A162953.P8151938804549472691

/-! ## A162953.P12475082954281056540

`A000005(A162952(n+1))`
-/

namespace A162953.P12475082954281056540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162952 (n + 1)).toNat

end

end A162953.P12475082954281056540

/-! ## A162953.P10844740174073547017

`∑{d}[A162952(n+1), A000120(A020639(3*#)-1)]`
-/

namespace A162953.P10844740174073547017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000120 (A020639 (3 * d) - 1).toNat

end

end A162953.P10844740174073547017

/-! ## A162953.P5480660691848841647

`∑{d}[A162952(n+1), A002472(A020639(3*#)-1)]`
-/

namespace A162953.P5480660691848841647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002472 (A020639 (3 * d) - 1).toNat

end

end A162953.P5480660691848841647

/-! ## A162953.P9538881673467502646

`A320111(2*A162952(n+1))`
-/

namespace A162953.P9538881673467502646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A162952 (n + 1)).toNat

end

end A162953.P9538881673467502646

/-!
# A162955: a(1)=1. a(n) = the smallest integer >a(n-1) such that both a(n) and the number of divisors of a(n) contain the same number of 1's in their binary representations as n has when written in binary.

The programs for A162955, there is no canonical definition to state claims against.
-/

/-! ## A162955.P2065341857034652906

`A186004(A331236(n+2)+1)`
-/

namespace A162955.P2065341857034652906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186004 (A331236 (n + 2) + 1).toNat

end

end A162955.P2065341857034652906

/-!
# A162956: a(0) = 0, a(1) = 1; a(2^i + j) = 3a(j) + a(j + 1) for 0 <= j < 2^i.

The programs for A162956, there is no canonical definition to state claims against.
-/

/-! ## A162956.P11862458813229362995

`A170863(n)-A170858(n)`
-/

namespace A162956.P11862458813229362995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170863 n - A170858 n

end

end A162956.P11862458813229362995

/-! ## A162956.P15234168767016834179

`A170868(n)-A170863(n)`
-/

namespace A162956.P15234168767016834179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170868 n - A170863 n

end

end A162956.P15234168767016834179

/-! ## A162956.P12635580533815948454

`(A170868(n)-A170858(n))/2`
-/

namespace A162956.P12635580533815948454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170868 n - A170858 n : ℚ) / 2

end

end A162956.P12635580533815948454

/-! ## A162956.P16383134932120882568

`A014682(A170868(n)-A170858(n))`
-/

namespace A162956.P16383134932120882568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170868 n - A170858 n).toNat

end

end A162956.P16383134932120882568

/-! ## A162956.P13189353661127491786

`A001281(A170868(n)-A170858(n))`
-/

namespace A162956.P13189353661127491786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170868 n - A170858 n).toNat

end

end A162956.P13189353661127491786

/-! ## A162956.P14555184900531867306

`A004525(A170868(n)-A170858(n))`
-/

namespace A162956.P14555184900531867306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170868 n - A170858 n).toNat

end

end A162956.P14555184900531867306

/-! ## A162956.P13400324854817611903

`A004526(A170868(n)-A170858(n))`
-/

namespace A162956.P13400324854817611903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170868 n - A170858 n).toNat

end

end A162956.P13400324854817611903

/-! ## A162956.P7734503348330678826

`A025480(A170868(n)-A170858(n))`
-/

namespace A162956.P7734503348330678826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170868 n - A170858 n).toNat

end

end A162956.P7734503348330678826

/-! ## A162956.P18355461540766516444

`A008619(A170868(n)-A170858(n))-1`
-/

namespace A162956.P18355461540766516444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A170868 n - A170858 n).toNat - 1

end

end A162956.P18355461540766516444

/-! ## A162956.P889972373606833979

`A002265(2*(A170868(n)-A170858(n)))`
-/

namespace A162956.P889972373606833979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A170868 n - A170858 n)).toNat

end

end A162956.P889972373606833979

/-!
# A162957: A162956 convolved with (1, 3, 0, 0, 0, ...).

The programs for A162957, there is no canonical definition to state claims against.
-/

/-! ## A162957.P17786673472667386755

`A162956(A206332(n+1))`
-/

namespace A162957.P17786673472667386755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A206332 (n + 1)).toNat

end

end A162957.P17786673472667386755

/-! ## A162957.P17478842953413177490

`A162956(A004760(n+2))`
-/

namespace A162957.P17478842953413177490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A004760 (n + 2)).toNat

end

end A162957.P17478842953413177490

/-! ## A162957.P17057440527896485162

`A162956(A062383(n)+n)`
-/

namespace A162957.P17057440527896485162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A062383 n + (n : ℤ)).toNat

end

end A162957.P17057440527896485162

/-! ## A162957.P14489006921277486425

`A162956(A000079(A049474(n))+n)`
-/

namespace A162957.P14489006921277486425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A000079 (A049474 n).toNat + (n : ℤ)).toNat

end

end A162957.P14489006921277486425

/-! ## A162957.P9674028934879404104

`A162956(A255310(n+1))`
-/

namespace A162957.P9674028934879404104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A255310 (n + 1)).toNat

end

end A162957.P9674028934879404104

/-!
# A162958: Equals A162956 convolved with (1, 3, 3, 3, ...).

The programs for A162958, there is no canonical definition to state claims against.
-/

/-! ## A162958.P17611258116249716375

`∑[A162956(n+1)+2*A162956(n)]`
-/

namespace A162958.P17611258116249716375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (n + 1) + 2 * A162956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162958.P17611258116249716375

/-! ## A162958.P13645715468825716664

`∑[A162956(A004760(n+2))-A162956(n)]`
-/

namespace A162958.P13645715468825716664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A004760 (n + 2)).toNat - A162956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162958.P13645715468825716664

/-! ## A162958.P2181181560907560306

`∑[A162956(A206332(n+1))-A162956(n)]`
-/

namespace A162958.P2181181560907560306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A206332 (n + 1)).toNat - A162956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162958.P2181181560907560306

/-! ## A162958.P4727889022129747096

`∑[A162956(A255310(n+1))-A162956(n)]`
-/

namespace A162958.P4727889022129747096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (A255310 (n + 1)).toNat - A162956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162958.P4727889022129747096

/-! ## A162958.P3248375869764941410

`∑[A162956(2^n+n)-A162956(n)]`
-/

namespace A162958.P3248375869764941410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162956 (2 ^ n + n) - A162956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162958.P3248375869764941410

/-!
# A162959: The pairs (x,y) such that (x^2 + y^2)/(x*y + 1) is a perfect square, i.e., 4.

The programs for A162959, the canonical program `A162959.P11587294834534836958` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162959 has offset 1).

The definition of A162959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162959.P11587294834534836958

`4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162959

/-- `4*a(n-2)-a(n-4)` -/
def P11587294834534836958.Spec : Prop :=
  ∀ n, P11587294834534836958.a n = A162959 (n + 1)

theorem P11587294834534836958.correct : P11587294834534836958.Spec := by
  intro n
  simp only [A162959, Nat.add_sub_cancel]

end A162959

/-! ## A162959.P8130337507339657420

`ogf((2x+2x^2)/(1-4x^2+x^4))`
-/

namespace A162959.P8130337507339657420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, 0, -4, 0, 1] n

end

end A162959.P8130337507339657420

namespace A162959

/-- `ogf((2x+2x^2)/(1-4x^2+x^4))` -/
def P8130337507339657420.Spec : Prop :=
  ∀ n, P8130337507339657420.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P16269112835462593998

`A052530(ceil(n/2))`
-/

namespace A162959.P16269112835462593998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 ⌈(n : ℚ) / 2⌉.toNat

end

end A162959.P16269112835462593998

namespace A162959

/-- `A052530(ceil(n/2))` -/
def P16269112835462593998.Spec : Prop :=
  ∀ n, P16269112835462593998.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P11102573153240257932

`A048788(and(1, n)+n)`
-/

namespace A162959.P11102573153240257932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (Nat.land 1 n + n)

end

end A162959.P11102573153240257932

namespace A162959

/-- `A048788(and(1, n)+n)` -/
def P11102573153240257932.Spec : Prop :=
  ∀ n, P11102573153240257932.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P14689166887446844164

`2*Δ[A005246(n+1)]`
-/

namespace A162959.P14689166887446844164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A162959.P14689166887446844164

namespace A162959

/-- `2*Δ[A005246(n+1)]` -/
def P14689166887446844164.Spec : Prop :=
  ∀ n, P14689166887446844164.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P4025787396862867969

`A048788(A052928(n+1))`
-/

namespace A162959.P4025787396862867969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (A052928 (n + 1)).toNat

end

end A162959.P4025787396862867969

namespace A162959

/-- `A048788(A052928(n+1))` -/
def P4025787396862867969.Spec : Prop :=
  ∀ n, P4025787396862867969.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P15994652313362692323

`A254308(A168237(n+1))`
-/

namespace A162959.P15994652313362692323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A168237 (n + 1)).toNat

end

end A162959.P15994652313362692323

namespace A162959

/-- `A254308(A168237(n+1))` -/
def P15994652313362692323.Spec : Prop :=
  ∀ n, P15994652313362692323.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P6452411946442354517

`A048788(A000035(n)+n)`
-/

namespace A162959.P6452411946442354517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (A000035 n + (n : ℤ)).toNat

end

end A162959.P6452411946442354517

namespace A162959

/-- `A048788(A000035(n)+n)` -/
def P6452411946442354517.Spec : Prop :=
  ∀ n, P6452411946442354517.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P14350134718125489247

`2*A001353(A123108(n+1))`
-/

namespace A162959.P14350134718125489247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001353 (A123108 (n + 1)).toNat

end

end A162959.P14350134718125489247

namespace A162959

/-- `2*A001353(A123108(n+1))` -/
def P14350134718125489247.Spec : Prop :=
  ∀ n, P14350134718125489247.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P9359489271098763383

`A048788(A000034(n)-1+n)`
-/

namespace A162959.P9359489271098763383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (A000034 n - 1 + (n : ℤ)).toNat

end

end A162959.P9359489271098763383

namespace A162959

/-- `A048788(A000034(n)-1+n)` -/
def P9359489271098763383.Spec : Prop :=
  ∀ n, P9359489271098763383.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P3224293886449740257

`A048788(n-(1-A000034(n)))`
-/

namespace A162959.P3224293886449740257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((n : ℤ) - (1 - A000034 n)).toNat

end

end A162959.P3224293886449740257

namespace A162959

/-- `A048788(n-(1-A000034(n)))` -/
def P3224293886449740257.Spec : Prop :=
  ∀ n, P3224293886449740257.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P10831058741730817402

`2*A002530(A000035(n)+n)`
-/

namespace A162959.P10831058741730817402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002530 (A000035 n + (n : ℤ)).toNat

end

end A162959.P10831058741730817402

namespace A162959

/-- `2*A002530(A000035(n)+n)` -/
def P10831058741730817402.Spec : Prop :=
  ∀ n, P10831058741730817402.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P9472950854341323795

`A048788(2*n-A052928(n))`
-/

namespace A162959.P9472950854341323795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((2 * n : ℤ) - A052928 n).toNat

end

end A162959.P9472950854341323795

namespace A162959

/-- `A048788(2*n-A052928(n))` -/
def P9472950854341323795.Spec : Prop :=
  ∀ n, P9472950854341323795.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P10559863172101273945

`A254308(3*n-A168237(n))`
-/

namespace A162959.P10559863172101273945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 ((3 * n : ℤ) - A168237 n).toNat

end

end A162959.P10559863172101273945

namespace A162959

/-- `A254308(3*n-A168237(n))` -/
def P10559863172101273945.Spec : Prop :=
  ∀ n, P10559863172101273945.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P13991415003222646545

`A048788(n-(A052928(n)-n))`
-/

namespace A162959.P13991415003222646545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A162959.P13991415003222646545

namespace A162959

/-- `A048788(n-(A052928(n)-n))` -/
def P13991415003222646545.Spec : Prop :=
  ∀ n, P13991415003222646545.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P7962567779250389784

`A048788(n+2-A040001(n+2))`
-/

namespace A162959.P7962567779250389784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((n + 2 : ℤ) - A040001 (n + 2)).toNat

end

end A162959.P7962567779250389784

namespace A162959

/-- `A048788(n+2-A040001(n+2))` -/
def P7962567779250389784.Spec : Prop :=
  ∀ n, P7962567779250389784.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P2998760514950633868

`A048788(n+2-A134451(n+2))`
-/

namespace A162959.P2998760514950633868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((n + 2 : ℤ) - A134451 (n + 2)).toNat

end

end A162959.P2998760514950633868

namespace A162959

/-- `A048788(n+2-A134451(n+2))` -/
def P2998760514950633868.Spec : Prop :=
  ∀ n, P2998760514950633868.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P11299332132183130911

`A122573(n+4)-A122573(n+2)`
-/

namespace A162959.P11299332132183130911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (n + 4) - A122573 (n + 2)

end

end A162959.P11299332132183130911

namespace A162959

/-- `A122573(n+4)-A122573(n+2)` -/
def P11299332132183130911.Spec : Prop :=
  ∀ n, P11299332132183130911.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P8529322418545774241

`A002530(n+2)-A005246(n+1)`
-/

namespace A162959.P8529322418545774241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 2) - A005246 (n + 1)

end

end A162959.P8529322418545774241

namespace A162959

/-- `A002530(n+2)-A005246(n+1)` -/
def P8529322418545774241.Spec : Prop :=
  ∀ n, P8529322418545774241.a n = A162959 (n + 1)

end A162959

/-! ## A162959.P2623708500756833112

`A143643(n+1)-A002530(n+1)`
-/

namespace A162959.P2623708500756833112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 1) - A002530 (n + 1)

end

end A162959.P2623708500756833112

namespace A162959

/-- `A143643(n+1)-A002530(n+1)` -/
def P2623708500756833112.Spec : Prop :=
  ∀ n, P2623708500756833112.a n = A162959 (n + 1)

end A162959

/-!
# A162960: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162960, there is no canonical definition to state claims against.
-/

/-! ## A162960.P15749115890448036112

`A022424(n*A371495(n))`
-/

namespace A162960.P15749115890448036112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022424 ((n : ℤ) * A371495 n).toNat

end

end A162960.P15749115890448036112

/-!
# A162961: a(n) is the smallest k such that there exists a permutation b_0, b_1, ... of the maximal prime powers dividing n satisfying b_i | k+i for all i.

The programs for A162961, there is no canonical definition to state claims against.
-/

/-! ## A162961.P11713615509050410046

`1-A182665(A290480(n+1))+n`
-/

namespace A162961.P11713615509050410046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182665 (A290480 (n + 1)).toNat + (n : ℤ)

end

end A162961.P11713615509050410046

/-! ## A162961.P5094432066791849294

`A344005(n+1)+A069513(A078599(n+1))`
-/

namespace A162961.P5094432066791849294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A069513 (A078599 (n + 1)).toNat

end

end A162961.P5094432066791849294

/-! ## A162961.P10807103072654360550

`A034699(n+1)-A226005(A331177(n+1)%A099967(n))`
-/

namespace A162961.P10807103072654360550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A226005 (Int.tmod (A331177 (n + 1)) (A099967 n)).toNat

end

end A162961.P10807103072654360550

/-! ## A162961.P17888110824554639232

`A344005(n+1)+A316223(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A162961.P17888110824554639232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A316223 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

end

end A162961.P17888110824554639232

/-! ## A162961.P10145746494635808558

`A344005(n+1)+A333381(A297108(n+1))`
-/

namespace A162961.P10145746494635808558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A333381 (A297108 (n + 1)).toNat

end

end A162961.P10145746494635808558

/-!
# A162963: a(n) = 5*a(n-2) for n > 2; a(1) = 2, a(2) = 5.

The programs for A162963, the canonical program `A162963.P8989907311462498122` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162963 has offset 1).

The definition of A162963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)` (program `A162963.P8989907311462498122`, by `A162963.P8989907311462498122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162963.P8989907311462498122

`5*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162963

/-- `5*a(n-2)` -/
def P8989907311462498122.Spec : Prop :=
  ∀ n, (P8989907311462498122.a n : ℤ) = A162963 (n + 1)

theorem P8989907311462498122.correct : P8989907311462498122.Spec := by
  intro n
  simp only [A162963, Nat.add_sub_cancel]

end A162963

/-! ## A162963.P1042754173074626934

`A026383(n+1)`
-/

namespace A162963.P1042754173074626934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (n + 1)

end

end A162963.P1042754173074626934

namespace A162963

/-- `A026383(n+1)` -/
def P1042754173074626934.Spec : Prop :=
  ∀ n, P1042754173074626934.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P16562721692828925825

`(3-(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2`
-/

namespace A162963.P16562721692828925825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 - (-1) ^ (n + 1) : ℝ) * (5 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2

end

end A162963.P16562721692828925825

namespace A162963

/-- `(3-(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2` -/
def P16562721692828925825.Spec : Prop :=
  ∀ n, P16562721692828925825.a n = (A162963 (n + 1) : ℝ)

end A162963

/-! ## A162963.P10960565121299548136

`ogf((2+5x)/(1-5x^2))`
-/

namespace A162963.P10960565121299548136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5] [1, 0, -5] n

end

end A162963.P10960565121299548136

namespace A162963

/-- `ogf((2+5x)/(1-5x^2))` -/
def P10960565121299548136.Spec : Prop :=
  ∀ n, P10960565121299548136.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P17840357227719388563

`∏[n%2/2+2]`
-/

namespace A162963.P17840357227719388563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) / 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P17840357227719388563

namespace A162963

/-- `∏[n%2/2+2]` -/
def P17840357227719388563.Spec : Prop :=
  ∀ n, P17840357227719388563.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P6284994400991976006

`∏[3-gcd(2, n)/2]`
-/

namespace A162963.P6284994400991976006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P6284994400991976006

namespace A162963

/-- `∏[3-gcd(2, n)/2]` -/
def P6284994400991976006.Spec : Prop :=
  ∀ n, P6284994400991976006.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P5302161082862360465

`∏[and(1, n)/2+2]`
-/

namespace A162963.P5302161082862360465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℚ) / 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P5302161082862360465

namespace A162963

/-- `∏[and(1, n)/2+2]` -/
def P5302161082862360465.Spec : Prop :=
  ∀ n, P5302161082862360465.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P2598289569273974929

`∏[5/a(n-1)]` with `a(0)=2`
-/

namespace A162963.P2598289569273974929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P2598289569273974929

namespace A162963

/-- `∏[5/a(n-1)]` -/
def P2598289569273974929.Spec : Prop :=
  ∀ n, P2598289569273974929.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P11420221143151910704

`∏[(5-and(1, n-1))/2]`
-/

namespace A162963.P11420221143151910704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - Int.land 1 ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P11420221143151910704

namespace A162963

/-- `∏[(5-and(1, n-1))/2]` -/
def P11420221143151910704.Spec : Prop :=
  ∀ n, P11420221143151910704.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P12593090953303498490

`∏[(gcd(n+1, n+3)+3)/2]`
-/

namespace A162963.P12593090953303498490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n + 3) + 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P12593090953303498490

namespace A162963

/-- `∏[(gcd(n+1, n+3)+3)/2]` -/
def P12593090953303498490.Spec : Prop :=
  ∀ n, P12593090953303498490.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P2785399714835370602

`∏[3-(n+2)/lcm(2, n+2)]`
-/

namespace A162963.P2785399714835370602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (n + 2 : ℚ) / (Nat.lcm 2 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P2785399714835370602

namespace A162963

/-- `∏[3-(n+2)/lcm(2, n+2)]` -/
def P2785399714835370602.Spec : Prop :=
  ∀ n, P2785399714835370602.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P8554766381223798973

`∏[(or(1, n+1)-(n-3))/2]`
-/

namespace A162963.P8554766381223798973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - ((n : ℤ) - 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P8554766381223798973

namespace A162963

/-- `∏[(or(1, n+1)-(n-3))/2]` -/
def P8554766381223798973.Spec : Prop :=
  ∀ n, P8554766381223798973.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P2663645804535089643

`a(n-2)+a(n-2)/(1/2)²` with `a(0)=2, a(1)=5`
-/

namespace A162963.P2663645804535089643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A162963.P2663645804535089643

namespace A162963

/-- `a(n-2)+a(n-2)/(1/2)²` -/
def P2663645804535089643.Spec : Prop :=
  ∀ n, P2663645804535089643.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P7595304195944690786

`∑[A056487(n)]+1`
-/

namespace A162963.P7595304195944690786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162963.P7595304195944690786

namespace A162963

/-- `∑[A056487(n)]+1` -/
def P7595304195944690786.Spec : Prop :=
  ∀ n, P7595304195944690786.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P10799590643343403186

`gcd(2, n)*A056451(n)`
-/

namespace A162963.P10799590643343403186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A056451 n

end

end A162963.P10799590643343403186

namespace A162963

/-- `gcd(2, n)*A056451(n)` -/
def P10799590643343403186.Spec : Prop :=
  ∀ n, P10799590643343403186.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P6365184221467921819

`record[A026383(abs(1-n))]`
-/

namespace A162963.P6365184221467921819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162963.P6365184221467921819

namespace A162963

/-- `record[A026383(abs(1-n))]` -/
def P6365184221467921819.Spec : Prop :=
  ∀ n, P6365184221467921819.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P4379643637903002233

`∑[A140730(2*n)]+1`
-/

namespace A162963.P4379643637903002233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162963.P4379643637903002233

namespace A162963

/-- `∑[A140730(2*n)]+1` -/
def P4379643637903002233.Spec : Prop :=
  ∀ n, P4379643637903002233.a n = A162963 (n + 1)

end A162963

/-! ## A162963.P12646602713147265872

`∏[A010693(n)/2+1]`
-/

namespace A162963.P12646602713147265872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010693 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P12646602713147265872

namespace A162963

/-- `∏[A010693(n)/2+1]` -/
def P12646602713147265872.Spec : Prop :=
  ∀ n, P12646602713147265872.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P14443403270280346807

`∏[(A010702(n)+1)/2]`
-/

namespace A162963.P14443403270280346807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010702 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P14443403270280346807

namespace A162963

/-- `∏[(A010702(n)+1)/2]` -/
def P14443403270280346807.Spec : Prop :=
  ∀ n, P14443403270280346807.a n = (A162963 (n + 1) : ℚ)

end A162963

/-! ## A162963.P7712686067645559733

`∏[A000035(n)/2+2]`
-/

namespace A162963.P7712686067645559733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162963.P7712686067645559733

namespace A162963

/-- `∏[A000035(n)/2+2]` -/
def P7712686067645559733.Spec : Prop :=
  ∀ n, P7712686067645559733.a n = (A162963 (n + 1) : ℚ)

end A162963

/-!
# A162964: a(n) = sigma(sigma(sigma(sigma(sigma(n))))).

The programs for A162964, the canonical program `A162964.P17591131160355510349` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162964 has offset 1).

The definition of A162964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000203(A000203(A000203(A000203(n+1)))))` (program `A162964.P17591131160355510349`, by `A162964.P17591131160355510349.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162964.P17591131160355510349

`A000203(A000203(A000203(A000203(A000203(n+1)))))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162964

/-- `A000203(A000203(A000203(A000203(A000203(n+1)))))` -/
def P17591131160355510349.Spec : Prop :=
  ∀ n, P17591131160355510349.a n = A162964 (n + 1)

theorem P17591131160355510349.correct : P17591131160355510349.Spec := by
  intro n
  simp only [A162964, Nat.add_sub_cancel]

end A162964

/-! ## A162964.P13709582213829668647

`∑{d}[A129076(n+1), #]`
-/

namespace A162964.P13709582213829668647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162964.P13709582213829668647

namespace A162964

/-- `∑{d}[A129076(n+1), #]` -/
def P13709582213829668647.Spec : Prop :=
  ∀ n, (P13709582213829668647.a n : ℤ) = A162964 (n + 1)

end A162964

/-! ## A162964.P7501688654375313158

`∑{d}[∑{d}[A066971(n+1), #], #]`
-/

namespace A162964.P7501688654375313158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066971 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A162964.P7501688654375313158

namespace A162964

/-- `∑{d}[∑{d}[A066971(n+1), #], #]` -/
def P7501688654375313158.Spec : Prop :=
  ∀ n, (P7501688654375313158.a n : ℤ) = A162964 (n + 1)

end A162964

/-! ## A162964.P9200934161855352472

`A129076(A000203(n+1))`
-/

namespace A162964.P9200934161855352472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129076 (A000203 (n + 1)).toNat

end

end A162964.P9200934161855352472

namespace A162964

/-- `A129076(A000203(n+1))` -/
def P9200934161855352472.Spec : Prop :=
  ∀ n, P9200934161855352472.a n = A162964 (n + 1)

end A162964

/-! ## A162964.P6465273400084032194

`A066971(A051027(n+1))`
-/

namespace A162964.P6465273400084032194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066971 (A051027 (n + 1)).toNat

end

end A162964.P6465273400084032194

namespace A162964

/-- `A066971(A051027(n+1))` -/
def P6465273400084032194.Spec : Prop :=
  ∀ n, P6465273400084032194.a n = A162964 (n + 1)

end A162964

/-! ## A162964.P7792519269421903416

`A000203(A000203(A066971(n+1)))`
-/

namespace A162964.P7792519269421903416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A066971 (n + 1)).toNat).toNat

end

end A162964.P7792519269421903416

namespace A162964

/-- `A000203(A000203(A066971(n+1)))` -/
def P7792519269421903416.Spec : Prop :=
  ∀ n, P7792519269421903416.a n = A162964 (n + 1)

end A162964

/-! ## A162964.P13516250941797501978

`A051027(A051027(∑{d}[n+1, #]))`
-/

namespace A162964.P13516250941797501978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A051027 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A162964.P13516250941797501978

namespace A162964

/-- `A051027(A051027(∑{d}[n+1, #]))` -/
def P13516250941797501978.Spec : Prop :=
  ∀ n, P13516250941797501978.a n = A162964 (n + 1)

end A162964

/-! ## A162964.P14133161257471200264

`A051027(A051027(A001065(n+1)+n+1))`
-/

namespace A162964.P14133161257471200264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A051027 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A162964.P14133161257471200264

namespace A162964

/-- `A051027(A051027(A001065(n+1)+n+1))` -/
def P14133161257471200264.Spec : Prop :=
  ∀ n, P14133161257471200264.a n = A162964 (n + 1)

theorem P14133161257471200264.correct : P14133161257471200264.Spec := by
  intro n
  simp only [A162964, Nat.add_sub_cancel, A162964.P14133161257471200264.a, A162964.P17591131160355510349.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051027, A051027.P5984083100296461897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162964

/-! ## A162964.P8160483245909967161

`A051027(A051027(A274824(∑[n+1])))`
-/

namespace A162964.P8160483245909967161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A051027 (A274824 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A162964.P8160483245909967161

namespace A162964

/-- `A051027(A051027(A274824(∑[n+1])))` -/
def P8160483245909967161.Spec : Prop :=
  ∀ n, P8160483245909967161.a n = A162964 (n + 1)

end A162964

/-!
# A162966: Union of 1 and nonsquarefree numbers (A013929).

The programs for A162966, the canonical program `A162966.P408493999641022152` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162966 has offset 1).

The definition of A162966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162966.P7332162190947358449

`lt[acot(n), A087049(n)]`
-/

namespace A162966.P7332162190947358449
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A162966.P7332162190947358449

namespace A162966

/-- `lt[acot(n), A087049(n)]` -/
def P7332162190947358449.Spec : Prop :=
  ∀ n, (P7332162190947358449.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P408493999641022152

`record[C(A105570(n+1), n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162966

/-- `record[C(A105570(n+1), n)]` -/
def P408493999641022152.Spec : Prop :=
  ∀ n, (P408493999641022152.a n : ℤ) = A162966 (n + 1)

theorem P408493999641022152.correct : P408493999641022152.Spec := by
  intro n
  simp only [A162966, Nat.add_sub_cancel]

end A162966

/-! ## A162966.P3569110703293494481

`A065642(A362041(n))`
-/

namespace A162966.P3569110703293494481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A362041 n).toNat

end

end A162966.P3569110703293494481

namespace A162966

/-- `A065642(A362041(n))` -/
def P3569110703293494481.Spec : Prop :=
  ∀ n, P3569110703293494481.a n = A162966 (n + 1)

end A162966

/-! ## A162966.P13010565014483652497

`eq[A087049(n), A132126(n+1)]`
-/

namespace A162966.P13010565014483652497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162966.P13010565014483652497

namespace A162966

/-- `eq[A087049(n), A132126(n+1)]` -/
def P13010565014483652497.Spec : Prop :=
  ∀ n, (P13010565014483652497.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P13729503988525690108

`∪[A000156(n), A013929(n+1)]`
-/

namespace A162966.P13729503988525690108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P13729503988525690108

namespace A162966

/-- `∪[A000156(n), A013929(n+1)]` -/
def P13729503988525690108.Spec : Prop :=
  ∀ n, (P13729503988525690108.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P7339739630913483493

`∪[A000302(n), A013929(n+1)]`
-/

namespace A162966.P7339739630913483493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P7339739630913483493

namespace A162966

/-- `∪[A000302(n), A013929(n+1)]` -/
def P7339739630913483493.Spec : Prop :=
  ∀ n, (P7339739630913483493.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P7310758797250320704

`∪[A013929(n+1), A001249(n)]`
-/

namespace A162966.P7310758797250320704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P7310758797250320704

namespace A162966

/-- `∪[A013929(n+1), A001249(n)]` -/
def P7310758797250320704.Spec : Prop :=
  ∀ n, (P7310758797250320704.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P2793740352104360429

`∪[A013929(n+1), A001386(n)]`
-/

namespace A162966.P2793740352104360429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P2793740352104360429

namespace A162966

/-- `∪[A013929(n+1), A001386(n)]` -/
def P2793740352104360429.Spec : Prop :=
  ∀ n, (P2793740352104360429.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P13254623553430456990

`∪[A001394(n), A013929(n+1)]`
-/

namespace A162966.P13254623553430456990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P13254623553430456990

namespace A162966

/-- `∪[A001394(n), A013929(n+1)]` -/
def P13254623553430456990.Spec : Prop :=
  ∀ n, (P13254623553430456990.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P10553036064264877414

`∪[A001411(n), A013929(n+1)]`
-/

namespace A162966.P10553036064264877414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P10553036064264877414

namespace A162966

/-- `∪[A001411(n), A013929(n+1)]` -/
def P10553036064264877414.Spec : Prop :=
  ∀ n, (P10553036064264877414.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P2654115777270818632

`∪[A001665(n), A013929(n+1)]`
-/

namespace A162966.P2654115777270818632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P2654115777270818632

namespace A162966

/-- `∪[A001665(n), A013929(n+1)]` -/
def P2654115777270818632.Spec : Prop :=
  ∀ n, (P2654115777270818632.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P12935877037938027172

`∪[A001934(n), A013929(n+1)]`
-/

namespace A162966.P12935877037938027172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P12935877037938027172

namespace A162966

/-- `∪[A001934(n), A013929(n+1)]` -/
def P12935877037938027172.Spec : Prop :=
  ∀ n, (P12935877037938027172.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P3321788267462276522

`∪[A002906(n), A013929(n+1)]`
-/

namespace A162966.P3321788267462276522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P3321788267462276522

namespace A162966

/-- `∪[A002906(n), A013929(n+1)]` -/
def P3321788267462276522.Spec : Prop :=
  ∀ n, (P3321788267462276522.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P4229047938590633225

`∪[A003946(n), A013929(n+1)]`
-/

namespace A162966.P4229047938590633225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P4229047938590633225

namespace A162966

/-- `∪[A003946(n), A013929(n+1)]` -/
def P4229047938590633225.Spec : Prop :=
  ∀ n, (P4229047938590633225.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P2570380656332618369

`∪[A005758(n), A013929(n+1)]`
-/

namespace A162966.P2570380656332618369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P2570380656332618369

namespace A162966

/-- `∪[A005758(n), A013929(n+1)]` -/
def P2570380656332618369.Spec : Prop :=
  ∀ n, (P2570380656332618369.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P5161301373637786002

`∪[A013929(n+1), A006414(n)]`
-/

namespace A162966.P5161301373637786002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P5161301373637786002

namespace A162966

/-- `∪[A013929(n+1), A006414(n)]` -/
def P5161301373637786002.Spec : Prop :=
  ∀ n, (P5161301373637786002.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P7817052085676878080

`∪[A006817(n), A013929(n+1)]`
-/

namespace A162966.P7817052085676878080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P7817052085676878080

namespace A162966

/-- `∪[A006817(n), A013929(n+1)]` -/
def P7817052085676878080.Spec : Prop :=
  ∀ n, (P7817052085676878080.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P14939404800427475118

`∪[A013929(n+1), A007204(n)]`
-/

namespace A162966.P14939404800427475118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P14939404800427475118

namespace A162966

/-- `∪[A013929(n+1), A007204(n)]` -/
def P14939404800427475118.Spec : Prop :=
  ∀ n, (P14939404800427475118.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P12601439780936208319

`∪[A013929(n+1), A007900(n)]`
-/

namespace A162966.P12601439780936208319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P12601439780936208319

namespace A162966

/-- `∪[A013929(n+1), A007900(n)]` -/
def P12601439780936208319.Spec : Prop :=
  ∀ n, (P12601439780936208319.a n : ℤ) = A162966 (n + 1)

end A162966

/-! ## A162966.P15678712993896404110

`∪[A013929(n+1), A008340(n)]`
-/

namespace A162966.P15678712993896404110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162966.P15678712993896404110

namespace A162966

/-- `∪[A013929(n+1), A008340(n)]` -/
def P15678712993896404110.Spec : Prop :=
  ∀ n, (P15678712993896404110.a n : ℤ) = A162966 (n + 1)

end A162966

/-!
# A162968: Number of pairs of consecutive non-fixed points in all permutations of {1,2,...,n}.

The programs for A162968, the canonical program `A162968.P10514251074570027511` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162968 has offset 2).

The definition of A162968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162968.P10514251074570027511

`(n+1)!*((n+2)²-3*(n+2)+3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162968

/-- `(n+1)!*((n+2)²-3*(n+2)+3)` -/
def P10514251074570027511.Spec : Prop :=
  ∀ n, P10514251074570027511.a n = A162968 (n + 2)

theorem P10514251074570027511.correct : P10514251074570027511.Spec := by
  intro n
  simp only [A162968, Nat.add_sub_cancel]

end A162968

/-! ## A162968.P9106477401452530399

`A001564(n)*(n+1)`
-/

namespace A162968.P9106477401452530399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 n * (n + 1 : ℤ)

end

end A162968.P9106477401452530399

namespace A162968

/-- `A001564(n)*(n+1)` -/
def P9106477401452530399.Spec : Prop :=
  ∀ n, P9106477401452530399.a n = A162968 (n + 2)

end A162968

/-! ## A162968.P14901470636225058697

`Δ[(n²-1)*n!]`
-/

namespace A162968.P14901470636225058697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162968.P14901470636225058697

namespace A162968

/-- `Δ[(n²-1)*n!]` -/
def P14901470636225058697.Spec : Prop :=
  ∀ n, P14901470636225058697.a n = A162968 (n + 2)

theorem P14901470636225058697.correct : P14901470636225058697.Spec := by
  intro n
  simp only [A162968, Nat.add_sub_cancel, A162968.P14901470636225058697.f1, A162968.P14901470636225058697.a, A162968.P10514251074570027511.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A162968

/-! ## A162968.P12367923072190219301

`(n+1)*Δ[Δ[n!]]`
-/

namespace A162968.P12367923072190219301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A162968.P12367923072190219301

namespace A162968

/-- `(n+1)*Δ[Δ[n!]]` -/
def P12367923072190219301.Spec : Prop :=
  ∀ n, P12367923072190219301.a n = A162968 (n + 2)

theorem P12367923072190219301.correct : P12367923072190219301.Spec := by
  intro n
  simp only [A162968, Nat.add_sub_cancel, A162968.P12367923072190219301.f2, A162968.P12367923072190219301.f1, A162968.P12367923072190219301.a, A162968.P10514251074570027511.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A162968

/-! ## A162968.P8594536231918834090

`Δ[(n-1)*∏[n+1]]`
-/

namespace A162968.P8594536231918834090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162968.P8594536231918834090

namespace A162968

/-- `Δ[(n-1)*∏[n+1]]` -/
def P8594536231918834090.Spec : Prop :=
  ∀ n, P8594536231918834090.a n = A162968 (n + 2)

theorem P8594536231918834090.correct : P8594536231918834090.Spec := by
  intro n
  simp only [A162968, Nat.add_sub_cancel, A162968.P8594536231918834090.f2, A162968.P8594536231918834090.f1, A162968.P8594536231918834090.a, A162968.P10514251074570027511.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A162968

/-! ## A162968.P1895232029069055556

`(∑[2*n]+1)*(n+1)!`
-/

namespace A162968.P1895232029069055556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.factorial (n + 1)

end

end A162968.P1895232029069055556

namespace A162968

/-- `(∑[2*n]+1)*(n+1)!` -/
def P1895232029069055556.Spec : Prop :=
  ∀ n, (P1895232029069055556.a n : ℤ) = A162968 (n + 2)

end A162968

/-! ## A162968.P14701712650109807677

`or(1, n²+n)*∏[n+1]`
-/

namespace A162968.P14701712650109807677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162968.P14701712650109807677

namespace A162968

/-- `or(1, n²+n)*∏[n+1]` -/
def P14701712650109807677.Spec : Prop :=
  ∀ n, (P14701712650109807677.a n : ℤ) = A162968 (n + 2)

end A162968

/-! ## A162968.P6132344433769262366

`xor(1, n²+n)*∏[n+1]`
-/

namespace A162968.P6132344433769262366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + n) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162968.P6132344433769262366

namespace A162968

/-- `xor(1, n²+n)*∏[n+1]` -/
def P6132344433769262366.Spec : Prop :=
  ∀ n, (P6132344433769262366.a n : ℤ) = A162968 (n + 2)

end A162968

/-! ## A162968.P1030173157594545929

`(lcm(n, n+1)+1)*∏[n+1]`
-/

namespace A162968.P1030173157594545929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162968.P1030173157594545929

namespace A162968

/-- `(lcm(n, n+1)+1)*∏[n+1]` -/
def P1030173157594545929.Spec : Prop :=
  ∀ n, (P1030173157594545929.a n : ℤ) = A162968 (n + 2)

end A162968

/-! ## A162968.P14125035220305902596

`abs(((n+1)²-n)*(n+1)!)`
-/

namespace A162968.P14125035220305902596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) ^ 2 : ℤ) - (n : ℤ)) * (Nat.factorial (n + 1) : ℤ)|

end

end A162968.P14125035220305902596

namespace A162968

/-- `abs(((n+1)²-n)*(n+1)!)` -/
def P14125035220305902596.Spec : Prop :=
  ∀ n, P14125035220305902596.a n = A162968 (n + 2)

end A162968

/-!
# A162969: Number of permutations of {1,2,...,n} in which the fixed points and the non-fixed points alternate.

The programs for A162969, the canonical program `A162969.P4444035939304920594` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162969 has offset 0).

The definition of A162969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162969.P4444035939304920594

`A000166(floor(n/2))+A000166(A065033(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162969

/-- `A000166(floor(n/2))+A000166(A065033(n))` -/
def P4444035939304920594.Spec : Prop :=
  ∀ n, P4444035939304920594.a n = A162969 n

theorem P4444035939304920594.correct : P4444035939304920594.Spec := by
  intro n
  simp only [A162969]

end A162969

/-! ## A162969.P16397228880215993725

`A000166(A065033(n))+A000166(A004526(n))`
-/

namespace A162969.P16397228880215993725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A065033 n).toNat + A000166 (A004526 n).toNat

end

end A162969.P16397228880215993725

namespace A162969

/-- `A000166(A065033(n))+A000166(A004526(n))` -/
def P16397228880215993725.Spec : Prop :=
  ∀ n, P16397228880215993725.a n = A162969 n

theorem P16397228880215993725.correct : P16397228880215993725.Spec := by
  intro n
  simp only [A162969, Nat.add_sub_cancel, A162969.P16397228880215993725.a, A162969.P4444035939304920594.a, A000166, A000166.P17301805902585999237.a, A004526, A004526.P10084182425416171735.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162969

/-!
# A162970: Number of 2-cycles in all involutions of {1,2,...,n}.

The programs for A162970, the canonical program `A162970.P15840789546435424908` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162970 has offset 1).

The definition of A162970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162970.P15840789546435424908

`(n+1)/(n-1)*(a(n-1)+n*a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162970

/-- `(n+1)/(n-1)*(a(n-1)+n*a(n-2))` -/
def P15840789546435424908.Spec : Prop :=
  ∀ n, P15840789546435424908.a n = (A162970 (n + 1) : ℚ)

end A162970

/-! ## A162970.P9272380959886630790

`∑[n]*A000085(abs(1-n))`
-/

namespace A162970.P9272380959886630790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000085 |1 - (n : ℤ)|.toNat

end

end A162970.P9272380959886630790

namespace A162970

/-- `∑[n]*A000085(abs(1-n))` -/
def P9272380959886630790.Spec : Prop :=
  ∀ n, P9272380959886630790.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P5995050221110244454

`(n+1)/2*Δ[A000085(n)]`
-/

namespace A162970.P5995050221110244454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A162970.P5995050221110244454

namespace A162970

/-- `(n+1)/2*Δ[A000085(n)]` -/
def P5995050221110244454.Spec : Prop :=
  ∀ n, P5995050221110244454.a n = (A162970 (n + 1) : ℚ)

end A162970

/-! ## A162970.P18104050357475989272

`A161125(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A162970.P18104050357475989272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A161125 (n + 1) - a (n - 1)

end

end A162970.P18104050357475989272

namespace A162970

/-- `A161125(n+1)-a(n-1)` -/
def P18104050357475989272.Spec : Prop :=
  ∀ n, P18104050357475989272.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P14302697152683587024

`∑[n]*A099020(A161680(n))`
-/

namespace A162970.P14302697152683587024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A099020 (A161680 n).toNat

end

end A162970.P14302697152683587024

namespace A162970

/-- `∑[n]*A099020(A161680(n))` -/
def P14302697152683587024.Spec : Prop :=
  ∀ n, P14302697152683587024.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P8683522595550243336

`A189940(n+1)-A013989(n)`
-/

namespace A162970.P8683522595550243336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189940 (n + 1) - A013989 n

end

end A162970.P8683522595550243336

namespace A162970

/-- `A189940(n+1)-A013989(n)` -/
def P8683522595550243336.Spec : Prop :=
  ∀ n, P8683522595550243336.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P1788347572908730971

`A000085(abs(1-n))*A000217(n)`
-/

namespace A162970.P1788347572908730971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 |1 - (n : ℤ)|.toNat * A000217 n

end

end A162970.P1788347572908730971

namespace A162970

/-- `A000085(abs(1-n))*A000217(n)` -/
def P1788347572908730971.Spec : Prop :=
  ∀ n, P1788347572908730971.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P17071544434556694136

`Δ[(A013989(n)-A245176(n))/2]`
-/

namespace A162970.P17071544434556694136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 n - A245176 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162970.P17071544434556694136

namespace A162970

/-- `Δ[(A013989(n)-A245176(n))/2]` -/
def P17071544434556694136.Spec : Prop :=
  ∀ n, P17071544434556694136.a n = (A162970 (n + 1) : ℚ)

end A162970

/-! ## A162970.P4548794275487049640

`A013989(n+1)-A001475(n+2)`
-/

namespace A162970.P4548794275487049640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013989 (n + 1) - A001475 (n + 2)

end

end A162970.P4548794275487049640

namespace A162970

/-- `A013989(n+1)-A001475(n+2)` -/
def P4548794275487049640.Spec : Prop :=
  ∀ n, P4548794275487049640.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P15928132475459407692

`A001475(n+2)-A000085(n+2)`
-/

namespace A162970.P15928132475459407692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 2) - A000085 (n + 2)

end

end A162970.P15928132475459407692

namespace A162970

/-- `A001475(n+2)-A000085(n+2)` -/
def P15928132475459407692.Spec : Prop :=
  ∀ n, P15928132475459407692.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P13038928943228430237

`Δ[A001475(n+1)]-A001475(n+1)`
-/

namespace A162970.P13038928943228430237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001475 (n + 1)

end

end A162970.P13038928943228430237

namespace A162970

/-- `Δ[A001475(n+1)]-A001475(n+1)` -/
def P13038928943228430237.Spec : Prop :=
  ∀ n, P13038928943228430237.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P13214317210501685823

`A001475(n+2)-2*A001475(n+1)`
-/

namespace A162970.P13214317210501685823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001475 (n + 2) - 2 * A001475 (n + 1)

end

end A162970.P13214317210501685823

namespace A162970

/-- `A001475(n+2)-2*A001475(n+1)` -/
def P13214317210501685823.Spec : Prop :=
  ∀ n, P13214317210501685823.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P10461986801234905143

`A099020(A161680(n))*A161680(n+1)`
-/

namespace A162970.P10461986801234905143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (A161680 n).toNat * A161680 (n + 1)

end

end A162970.P10461986801234905143

namespace A162970

/-- `A099020(A161680(n))*A161680(n+1)` -/
def P10461986801234905143.Spec : Prop :=
  ∀ n, P10461986801234905143.a n = A162970 (n + 1)

end A162970

/-! ## A162970.P10512832850075722301

`A000217(n)*A099020(A000217(n)-n)`
-/

namespace A162970.P10512832850075722301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A099020 (A000217 n - (n : ℤ)).toNat

end

end A162970.P10512832850075722301

namespace A162970

/-- `A000217(n)*A099020(A000217(n)-n)` -/
def P10512832850075722301.Spec : Prop :=
  ∀ n, P10512832850075722301.a n = A162970 (n + 1)

end A162970

/-!
# A162971: Triangle read by rows: T(n,k) is number of non-derangement permutations of {1,2,...,n} having k cycles (1 <= k <= n).

The programs for A162971, there is no canonical definition to state claims against.
-/

/-! ## A162971.P1793406965233582807

`A249870(A383206(n))`
-/

namespace A162971.P1793406965233582807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A383206 n).toNat

end

end A162971.P1793406965233582807

/-! ## A162971.P13463572204969838758

`A126071(A098436(n))*A215977(n)`
-/

namespace A162971.P13463572204969838758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A098436 n).toNat * A215977 n

end

end A162971.P13463572204969838758

/-! ## A162971.P15427212552792053464

`A135385(abs(A129818(n)))+A113081(n)`
-/

namespace A162971.P15427212552792053464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135385 |A129818 n|.toNat + A113081 n

end

end A162971.P15427212552792053464

/-! ## A162971.P11241753121139697273

`A324162(n)+A265605(A008292(n+1))`
-/

namespace A162971.P11241753121139697273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 n + A265605 (A008292 (n + 1)).toNat

end

end A162971.P11241753121139697273

/-! ## A162971.P2407245417256121628

`A353853(A231246(n+1)+A215977(n))`
-/

namespace A162971.P2407245417256121628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A231246 (n + 1) + A215977 n).toNat

end

end A162971.P2407245417256121628

/-!
# A162972: Number of cycles in all non-derangement permutations of {1,2,...,n}.

The programs for A162972, there is no canonical definition to state claims against.
-/

/-! ## A162972.P1777653919349173872

`Δ[A097422(n)]-A162973(n+1)`
-/

namespace A162972.P1777653919349173872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162973 (n + 1)

end

end A162972.P1777653919349173872

/-! ## A162972.P9542622895213052079

`A000254(n+1)-A162973(n+1)`
-/

namespace A162972.P9542622895213052079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A162973 (n + 1)

end

end A162972.P9542622895213052079

/-! ## A162972.P9933442754114866003

`record[Δ[A067176(n)]]-A162973(n+1)`
-/

namespace A162972.P9933442754114866003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A162973 (n + 1)

end

end A162972.P9933442754114866003

/-! ## A162972.P8344455103895543487

`Δ[A097422(n)]-n*A298012(n+1)`
-/

namespace A162972.P8344455103895543487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A298012 (n + 1)

end

end A162972.P8344455103895543487

/-! ## A162972.P329899390020145774

`A000254(n+1)-n*A298012(n+1)`
-/

namespace A162972.P329899390020145774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - (n : ℤ) * A298012 (n + 1)

end

end A162972.P329899390020145774

/-!
# A162973: Number of cycles in all derangement permutations of {1,2,...,n}.

The programs for A162973, there is no canonical definition to state claims against.
-/

/-! ## A162973.P3804442975740633198

`A000254(n+1)-A162972(n+1)`
-/

namespace A162973.P3804442975740633198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A162972 (n + 1)

end

end A162973.P3804442975740633198

/-! ## A162973.P11685077436082762654

`Δ[A097422(n)]-A162972(n+1)`
-/

namespace A162973.P11685077436082762654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162972 (n + 1)

end

end A162973.P11685077436082762654

/-! ## A162973.P11821837705652302664

`A000254(or(n+1, 2^val(n+1, 2)))%A162972(n+1)`
-/

namespace A162973.P11821837705652302664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000254 (Nat.lor (n + 1) (2 ^ SequenceMachineLib.valuation (n + 1) 2))) (A162972 (n + 1))

end

end A162973.P11821837705652302664

/-! ## A162973.P1603741493778464115

`A000254(A000027(n+1))%A162972(n+1)`
-/

namespace A162973.P1603741493778464115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000254 (A000027 (n + 1)).toNat) (A162972 (n + 1))

end

end A162973.P1603741493778464115

/-! ## A162973.P836653073767545959

`n*A298012(n+1)`
-/

namespace A162973.P836653073767545959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A298012 (n + 1)

end

end A162973.P836653073767545959

/-!
# A162976: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k double descents and initial descents (n>=0; 0<=k<=max(0,n-1)) [we say that i is a doubledescent of a permutation p if p(i) > p(i+1) > p(i+2); we say that a permutation p has an initial descent if p(1) > p(2)].

The programs for A162976, there is no canonical definition to state claims against.
-/

/-! ## A162976.P1386544711792828257

`or(A103634(A022167(n)), A144048(n))`
-/

namespace A162976.P1386544711792828257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103634 (A022167 n).toNat) (A144048 n)

end

end A162976.P1386544711792828257

/-! ## A162976.P12179926304022355536

`or(A103634(A147565(n)), A144048(n))`
-/

namespace A162976.P12179926304022355536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103634 (A147565 n).toNat) (A144048 n)

end

end A162976.P12179926304022355536

/-! ## A162976.P2929012469021523306

`A330236(A121581(n+1)*A208615(n))`
-/

namespace A162976.P2929012469021523306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A121581 (n + 1) * A208615 n).toNat

end

end A162976.P2929012469021523306

/-! ## A162976.P13455664487403091140

`A330236(A121581(n+1)^A208615(n))`
-/

namespace A162976.P13455664487403091140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (SequenceMachineLib.roundAway ((A121581 (n + 1) : ℚ) ^ (A208615 n : ℤ))).toNat

end

end A162976.P13455664487403091140

/-! ## A162976.P3401409322998033765

`A330236(lcm(A121581(n+1), A208615(n)))`
-/

namespace A162976.P3401409322998033765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (Int.lcm (A121581 (n + 1)) (A208615 n))

end

end A162976.P3401409322998033765

/-!
# A162977: Number of fixed points in all reverse alternating (i.e., up-down) permutations of {1,2,...,n}.

The programs for A162977, there is no canonical definition to state claims against.
-/

/-! ## A162977.P2470554301125917740

`A080605(A372194(n+3))-n²`
-/

namespace A162977.P2470554301125917740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A372194 (n + 3)).toNat - (n ^ 2 : ℤ)

end

end A162977.P2470554301125917740

/-! ## A162977.P3732485549969580552

`A065382(A076025(n)+A008281(n))`
-/

namespace A162977.P3732485549969580552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (A076025 n + A008281 n).toNat

end

end A162977.P3732485549969580552

/-! ## A162977.P17565516679907141665

`A065382(A132393(n)+A076025(n))`
-/

namespace A162977.P17565516679907141665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (A132393 n + A076025 n).toNat

end

end A162977.P17565516679907141665

/-!
# A162978: Number of fixed points in all alternating (i.e., down-up) permutations of {1,2,...,n}.

The programs for A162978, there is no canonical definition to state claims against.
-/

/-! ## A162978.P3709982654454541523

`A260189(4*A193551(n+1))`
-/

namespace A162978.P3709982654454541523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (4 * A193551 (n + 1)).toNat

end

end A162978.P3709982654454541523

/-! ## A162978.P15921546649932877415

`A260189(4*A270436(n+1))`
-/

namespace A162978.P15921546649932877415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (4 * A270436 (n + 1)).toNat

end

end A162978.P15921546649932877415

/-! ## A162978.P424061817307520024

`A260189(2*A043320(2*(n+1)))`
-/

namespace A162978.P424061817307520024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (2 * A043320 (2 * (n + 1))).toNat

end

end A162978.P424061817307520024

/-!
# A162981: Number of Dyck paths with no UUU's and no DDD's of semilength n and having k returns to the x-axis (1 <= k <= n; U=(1,1), D=(1,-1)).

The programs for A162981, there is no canonical definition to state claims against.
-/

/-! ## A162981.P17247242965947991850

`A124778(A064645(n))*A306405(n+1)`
-/

namespace A162981.P17247242965947991850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A064645 n).toNat * A306405 (n + 1)

end

end A162981.P17247242965947991850

/-! ## A162981.P7280364789844506017

`A124778(A258709(n))*A306405(n+1)`
-/

namespace A162981.P7280364789844506017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A258709 n).toNat * A306405 (n + 1)

end

end A162981.P7280364789844506017

/-!
# A162983: Number of reduced words of length n in Coxeter group on 10 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162983, there is no canonical definition to state claims against.
-/

/-! ## A162983.P5083622134257855278

`A003952(n)-A345192(A367867(n))`
-/

namespace A162983.P5083622134257855278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 n - A345192 (A367867 n).toNat

end

end A162983.P5083622134257855278

/-!
# A162985: Number of Dyck paths with no UUU's and no DDD's of semilength n and having no UUDUDD's (U=(1,1), D=(1,-1)).

The programs for A162985, there is no canonical definition to state claims against.
-/

/-! ## A162985.P13253798900037960948

`A162984(∑[ceil(n/3)])`
-/

namespace A162985.P13253798900037960948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162985.P13253798900037960948

/-! ## A162985.P731517495445349811

`A054846(A159768(n+1))`
-/

namespace A162985.P731517495445349811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A159768 (n + 1)).toNat

end

end A162985.P731517495445349811

/-! ## A162985.P11707678496443182484

`A054846(A159771(n+1))`
-/

namespace A162985.P11707678496443182484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A159771 (n + 1)).toNat

end

end A162985.P11707678496443182484

/-! ## A162985.P12580971804745883716

`A185283(or(n, A192455(n)))`
-/

namespace A162985.P12580971804745883716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.lor (n : ℤ) (A192455 n)).toNat

end

end A162985.P12580971804745883716

/-! ## A162985.P2198266671549499300

`A100196(A159768(n+1)+1)`
-/

namespace A162985.P2198266671549499300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A159768 (n + 1) + 1).toNat

end

end A162985.P2198266671549499300

/-!
# A162986: Number of Dyck paths with no UUU's and no DDD's of semilength n and having k UD's starting at level 0 (i.e., hills); (0 <= k <= n; U=(1,1), D=(1,-1)).

The programs for A162986, there is no canonical definition to state claims against.
-/

/-! ## A162986.P13659254551619174119

`A216763(A186761(n))`
-/

namespace A162986.P13659254551619174119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A186761 n).toNat

end

end A162986.P13659254551619174119

/-! ## A162986.P1114417538884129373

`A105422(n)+A016389(A119502(n))`
-/

namespace A162986.P1114417538884129373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A016389 (A119502 n).toNat

end

end A162986.P1114417538884129373

/-! ## A162986.P2000308276142021731

`A105422(n)+A055641(A089413(n))`
-/

namespace A162986.P2000308276142021731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A055641 (A089413 n).toNat

end

end A162986.P2000308276142021731

/-! ## A162986.P8566156894272461435

`A105422(n)+A016389(A152656(n))`
-/

namespace A162986.P8566156894272461435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A016389 (A152656 n).toNat

end

end A162986.P8566156894272461435

/-! ## A162986.P12605161402078042409

`A105422(n)+A044938(A264772(n))`
-/

namespace A162986.P12605161402078042409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A044938 (A264772 n).toNat

end

end A162986.P12605161402078042409

/-!
# A162987: Number of reduced words of length n in Coxeter group on 11 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A162987, there is no canonical definition to state claims against.
-/

/-! ## A162987.P3576116297491230015

`A267538(n)-A056046(A093977(n+1))`
-/

namespace A162987.P3576116297491230015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267538 n - A056046 (A093977 (n + 1)).toNat

end

end A162987.P3576116297491230015

/-!
# A162988: n appears A008578(n) times.

The programs for A162988, the canonical program `A162988.P14098878184306182954` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162988 has offset 1).

The definition of A162988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162988.P14098878184306182954

`∑[char[∑[lt[∑{e}[n, #], 2]]]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162988

/-- `∑[char[∑[lt[∑{e}[n, #], 2]]]]` -/
def P14098878184306182954.Spec : Prop :=
  ∀ n, (P14098878184306182954.a n : ℤ) = A162988 (n + 1)

theorem P14098878184306182954.correct : P14098878184306182954.Spec := by
  intro n
  simp only [A162988, Nat.add_sub_cancel]

end A162988

/-! ## A162988.P7199458826472741854

`comp[∑[lt[∑{e}[n, #], 2]]+n]-n`
-/

namespace A162988.P7199458826472741854
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A162988.P7199458826472741854

namespace A162988

/-- `comp[∑[lt[∑{e}[n, #], 2]]+n]-n` -/
def P7199458826472741854.Spec : Prop :=
  ∀ n, P7199458826472741854.a n = A162988 (n + 1)

end A162988

/-! ## A162988.P3235900696074270917

`∑[char[∑[A158611(n+1)]]]`
-/

namespace A162988.P3235900696074270917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162988.P3235900696074270917

namespace A162988

/-- `∑[char[∑[A158611(n+1)]]]` -/
def P3235900696074270917.Spec : Prop :=
  ∀ n, (P3235900696074270917.a n : ℤ) = A162988 (n + 1)

end A162988

/-! ## A162988.P17947297150065541972

`∑[char[A014284(n+1)]]+1`
-/

namespace A162988.P17947297150065541972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162988.P17947297150065541972

namespace A162988

/-- `∑[char[A014284(n+1)]]+1` -/
def P17947297150065541972.Spec : Prop :=
  ∀ n, (P17947297150065541972.a n : ℤ) = A162988 (n + 1)

end A162988

/-! ## A162988.P2173422688236094895

`∑[char[∑[comp[A018252(n+2)]]]]`
-/

namespace A162988.P2173422688236094895
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162988.P2173422688236094895

namespace A162988

/-- `∑[char[∑[comp[A018252(n+2)]]]]` -/
def P2173422688236094895.Spec : Prop :=
  ∀ n, (P2173422688236094895.a n : ℤ) = A162988 (n + 1)

end A162988

/-! ## A162988.P3376842714419817853

`A003977(A175944(n+1))`
-/

namespace A162988.P3376842714419817853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A175944 (n + 1)).toNat

end

end A162988.P3376842714419817853

namespace A162988

/-- `A003977(A175944(n+1))` -/
def P3376842714419817853.Spec : Prop :=
  ∀ n, P3376842714419817853.a n = A162988 (n + 1)

end A162988

/-! ## A162988.P17257298157225256017

`A000720(A063905(A063905(n+1)+n))`
-/

namespace A162988.P17257298157225256017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063905 (A063905 (n + 1) + (n : ℤ)).toNat).toNat

end

end A162988.P17257298157225256017

namespace A162988

/-- `A000720(A063905(A063905(n+1)+n))` -/
def P17257298157225256017.Spec : Prop :=
  ∀ n, P17257298157225256017.a n = A162988 (n + 1)

end A162988

/-! ## A162988.P15285359329960722698

`A083375(A000040(A083375(n+1))+n)`
-/

namespace A162988.P15285359329960722698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A000040 (A083375 (n + 1)).toNat + (n : ℤ)).toNat

end

end A162988.P15285359329960722698

namespace A162988

/-- `A083375(A000040(A083375(n+1))+n)` -/
def P15285359329960722698.Spec : Prop :=
  ∀ n, P15285359329960722698.a n = A162988 (n + 1)

end A162988

/-! ## A162988.P13845377730042465342

`floor(log2(A345297(n+1)))+1`
-/

namespace A162988.P13845377730042465342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A345297 (n + 1)).toNat + 1

end

end A162988.P13845377730042465342

namespace A162988

/-- `floor(log2(A345297(n+1)))+1` -/
def P13845377730042465342.Spec : Prop :=
  ∀ n, (P13845377730042465342.a n : ℤ) = A162988 (n + 1)

end A162988

/-! ## A162988.P8860289646327138964

`∑[A001222(A178623(n))]+1`
-/

namespace A162988.P8860289646327138964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178623 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A162988.P8860289646327138964

namespace A162988

/-- `∑[A001222(A178623(n))]+1` -/
def P8860289646327138964.Spec : Prop :=
  ∀ n, P8860289646327138964.a n = A162988 (n + 1)

end A162988

/-!
# A162989: Lesser of twin primes p such that none of p-1, p+1 and p+3 are cubefree.

The programs for A162989, there is no canonical definition to state claims against.
-/

/-! ## A162989.P10132721150208420928

`A162874(Δ[n²])`
-/

namespace A162989.P10132721150208420928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162874 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162989.P10132721150208420928

/-! ## A162989.P54568120567229336

`A162874(2*(n+1))-2`
-/

namespace A162989.P54568120567229336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162874 (2 * (n + 1)) - 2

end

end A162989.P54568120567229336

/-! ## A162989.P17123710680271848798

`or(1, A162874(2*n+1))`
-/

namespace A162989.P17123710680271848798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A162874 (2 * n + 1))

end

end A162989.P17123710680271848798

/-! ## A162989.P4774490696553152597

`record[(-1)^n*A162874(n+1)]`
-/

namespace A162989.P4774490696553152597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A162874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162989.P4774490696553152597

/-! ## A162989.P5509237474010087263

`record[A162874((n+1)/2^val(n+1, 2))]`
-/

namespace A162989.P5509237474010087263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162989.P5509237474010087263

/-!
# A162990: Triangle of polynomial coefficients related to 3F2([1,n+1,n+1],[n+2,n+2],z).

The programs for A162990, the canonical program `A162990.P3284142617720367047` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162990 has offset 1).

The definition of A162990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162990.P3284142617720367047

`((row(n)+2)!/(col(n)+1))²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162990

/-- `((row(n)+2)!/(col(n)+1))²` -/
def P3284142617720367047.Spec : Prop :=
  ∀ n, P3284142617720367047.a n = (A162990 (n + 1) : ℚ)

end A162990

/-! ## A162990.P8092638820851618699

`A094310(comp[∑[n]])²`
-/

namespace A162990.P8092638820851618699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A162990.P8092638820851618699

namespace A162990

/-- `A094310(comp[∑[n]])²` -/
def P8092638820851618699.Spec : Prop :=
  ∀ n, P8092638820851618699.a n = A162990 (n + 1)

end A162990

/-! ## A162990.P6444744718066422716

`((comp[∑[n]]-n)!/A002260(n+1))²`
-/

namespace A162990.P6444744718066422716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℚ) / (A002260 (n + 1) : ℚ)) ^ 2

end

end A162990.P6444744718066422716

namespace A162990

/-- `((comp[∑[n]]-n)!/A002260(n+1))²` -/
def P6444744718066422716.Spec : Prop :=
  ∀ n, P6444744718066422716.a n = (A162990 (n + 1) : ℚ)

end A162990

/-! ## A162990.P14905873307980666676

`(∏[round(sqrt(2*n))*char[∑[n]]+1]/(1-C(∑[char[∑[n]]], 2)+n))²*A140978(n+1)`
-/

namespace A162990.P14905873307980666676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)) ^ 2 * (A140978 (n + 1) : ℚ)

end

end A162990.P14905873307980666676

namespace A162990

/-- `(∏[round(sqrt(2*n))*char[∑[n]]+1]/(1-C(∑[char[∑[n]]], 2)+n))²*A140978(n+1)` -/
def P14905873307980666676.Spec : Prop :=
  ∀ n, P14905873307980666676.a n = (A162990 (n + 1) : ℚ)

end A162990

/-! ## A162990.P15423079187994431436

`A094310(A014132(n+1))^2`
-/

namespace A162990.P15423079187994431436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (A014132 (n + 1)).toNat ^ 2

end

end A162990.P15423079187994431436

namespace A162990

/-- `A094310(A014132(n+1))^2` -/
def P15423079187994431436.Spec : Prop :=
  ∀ n, P15423079187994431436.a n = A162990 (n + 1)

end A162990

/-! ## A162990.P4981571869874440516

`(A156047(n+1)-A058298(n+2))²`
-/

namespace A162990.P4981571869874440516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156047 (n + 1) - A058298 (n + 2)) ^ 2

end

end A162990.P4981571869874440516

namespace A162990

/-- `(A156047(n+1)-A058298(n+2))²` -/
def P4981571869874440516.Spec : Prop :=
  ∀ n, P4981571869874440516.a n = A162990 (n + 1)

end A162990

/-!
# A162991: The first right hand column of triangle A162990.

The programs for A162991, the canonical program `A162991.P1110863836861765821` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162991 has offset 1).

The definition of A162991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162991.P1348733317387460036

`((n+2)!/(n+1))²`
-/

namespace A162991.P1348733317387460036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A162991.P1348733317387460036

namespace A162991

/-- `((n+2)!/(n+1))²` -/
def P1348733317387460036.Spec : Prop :=
  ∀ n, P1348733317387460036.a n = (A162991 (n + 1) : ℚ)

end A162991

/-! ## A162991.P1110863836861765821

`A001048(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162991

/-- `A001048(n+1)²` -/
def P1110863836861765821.Spec : Prop :=
  ∀ n, P1110863836861765821.a n = A162991 (n + 1)

theorem P1110863836861765821.correct : P1110863836861765821.Spec := by
  intro n
  simp only [A162991, Nat.add_sub_cancel]

end A162991

/-! ## A162991.P7825438339502372578

`((n+2)*n!)²`
-/

namespace A162991.P7825438339502372578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.factorial n) ^ 2

end

end A162991.P7825438339502372578

namespace A162991

/-- `((n+2)*n!)²` -/
def P7825438339502372578.Spec : Prop :=
  ∀ n, (P7825438339502372578.a n : ℤ) = A162991 (n + 1)

end A162991

/-! ## A162991.P15291930297693892921

`((n+2)*n!)^2`
-/

namespace A162991.P15291930297693892921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.factorial n) ^ 2

end

end A162991.P15291930297693892921

namespace A162991

/-- `((n+2)*n!)^2` -/
def P15291930297693892921.Spec : Prop :=
  ∀ n, (P15291930297693892921.a n : ℤ) = A162991 (n + 1)

end A162991

/-! ## A162991.P10415441225504793369

`((n+1)!+n!)²`
-/

namespace A162991.P10415441225504793369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) + Nat.factorial n) ^ 2

end

end A162991.P10415441225504793369

namespace A162991

/-- `((n+1)!+n!)²` -/
def P10415441225504793369.Spec : Prop :=
  ∀ n, (P10415441225504793369.a n : ℤ) = A162991 (n + 1)

theorem P10415441225504793369.correct : P10415441225504793369.Spec := by
  intro n
  simp only [A162991, Nat.add_sub_cancel, A162991.P10415441225504793369.a, A162991.P1110863836861765821.a, A001048, A001048.P17874306345601623766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162991

/-!
# A162992: The second right hand column of triangle A162990.

The programs for A162992, the canonical program `A162992.P10277957367179409929` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162992 has offset 2).

The definition of A162992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162992.P10277957367179409929

`((n+3)!/(n+1))²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162992

/-- `((n+3)!/(n+1))²` -/
def P10277957367179409929.Spec : Prop :=
  ∀ n, P10277957367179409929.a n = (A162992 (n + 2) : ℚ)

end A162992

/-! ## A162992.P7429101353283004776

`A052747(n+3)²`
-/

namespace A162992.P7429101353283004776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052747 (n + 3) ^ 2

end

end A162992.P7429101353283004776

namespace A162992

/-- `A052747(n+3)²` -/
def P7429101353283004776.Spec : Prop :=
  ∀ n, P7429101353283004776.a n = A162992 (n + 2)

end A162992

/-! ## A162992.P964532070991538612

`((n+3)!/(n+1))^2`
-/

namespace A162992.P964532070991538612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 3) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A162992.P964532070991538612

namespace A162992

/-- `((n+3)!/(n+1))^2` -/
def P964532070991538612.Spec : Prop :=
  ∀ n, P964532070991538612.a n = (A162992 (n + 2) : ℚ)

end A162992

/-! ## A162992.P13252555591996915275

`(2/(n+1)*∏[n+3])²`
-/

namespace A162992.P13252555591996915275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2

end

end A162992.P13252555591996915275

namespace A162992

/-- `(2/(n+1)*∏[n+3])²` -/
def P13252555591996915275.Spec : Prop :=
  ∀ n, P13252555591996915275.a n = (A162992 (n + 2) : ℚ)

end A162992

/-! ## A162992.P5088214192515507507

`((n+2)*(n+3))²*n!²`
-/

namespace A162992.P5088214192515507507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 3)) ^ 2 * Nat.factorial n ^ 2

end

end A162992.P5088214192515507507

namespace A162992

/-- `((n+2)*(n+3))²*n!²` -/
def P5088214192515507507.Spec : Prop :=
  ∀ n, (P5088214192515507507.a n : ℤ) = A162992 (n + 2)

end A162992

/-!
# A162993: The second left hand column of triangle A162990.

The programs for A162993, the canonical program `A162993.P3473054239230815582` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162993 has offset 2).

The definition of A162993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162993.P18377936928996759675

`((n+3)!/2)²`
-/

namespace A162993.P18377936928996759675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 3) : ℚ) / 2) ^ 2

end

end A162993.P18377936928996759675

namespace A162993

/-- `((n+3)!/2)²` -/
def P18377936928996759675.Spec : Prop :=
  ∀ n, P18377936928996759675.a n = (A162993 (n + 2) : ℚ)

end A162993

/-! ## A162993.P3473054239230815582

`A001710(n+3)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162993

/-- `A001710(n+3)²` -/
def P3473054239230815582.Spec : Prop :=
  ∀ n, P3473054239230815582.a n = A162993 (n + 2)

theorem P3473054239230815582.correct : P3473054239230815582.Spec := by
  intro n
  simp only [A162993, Nat.add_sub_cancel]

end A162993

/-! ## A162993.P17037684883580202104

`∏[(n+3)²]`
-/

namespace A162993.P17037684883580202104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162993.P17037684883580202104

namespace A162993

/-- `∏[(n+3)²]` -/
def P17037684883580202104.Spec : Prop :=
  ∀ n, (P17037684883580202104.a n : ℤ) = A162993 (n + 2)

end A162993

/-! ## A162993.P3088662481116283749

`∏[2-xor(n, -1)]²`
-/

namespace A162993.P3088662481116283749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A162993.P3088662481116283749

namespace A162993

/-- `∏[2-xor(n, -1)]²` -/
def P3088662481116283749.Spec : Prop :=
  ∀ n, P3088662481116283749.a n = A162993 (n + 2)

end A162993

/-! ## A162993.P16407215244476572120

`lcm(3, ∏[record[(n-3)²]])`
-/

namespace A162993.P16407215244476572120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162993.P16407215244476572120

namespace A162993

/-- `lcm(3, ∏[record[(n-3)²]])` -/
def P16407215244476572120.Spec : Prop :=
  ∀ n, (P16407215244476572120.a n : ℤ) = A162993 (n + 2)

end A162993

/-!
# A162994: The third left hand column of triangle A162990.

The programs for A162994, the canonical program `A162994.P1141293001052040260` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162994 has offset 3).

The definition of A162994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162994.P18318316543635325334

`((n+4)!/3)²`
-/

namespace A162994.P18318316543635325334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 4) : ℚ) / 3) ^ 2

end

end A162994.P18318316543635325334

namespace A162994

/-- `((n+4)!/3)²` -/
def P18318316543635325334.Spec : Prop :=
  ∀ n, P18318316543635325334.a n = (A162994 (n + 3) : ℚ)

end A162994

/-! ## A162994.P1141293001052040260

`A002301(n+4)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162994

/-- `A002301(n+4)²` -/
def P1141293001052040260.Spec : Prop :=
  ∀ n, P1141293001052040260.a n = A162994 (n + 3)

theorem P1141293001052040260.correct : P1141293001052040260.Spec := by
  intro n
  simp only [A162994, Nat.add_sub_cancel]

end A162994

/-! ## A162994.P9663712144106320986

`(2*∏[n+4])²`
-/

namespace A162994.P9663712144106320986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (∏ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A162994.P9663712144106320986

namespace A162994

/-- `(2*∏[n+4])²` -/
def P9663712144106320986.Spec : Prop :=
  ∀ n, (P9663712144106320986.a n : ℤ) = A162994 (n + 3)

end A162994

/-! ## A162994.P3283030999457040239

`4*∏[record[(4-n)²]]`
-/

namespace A162994.P3283030999457040239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162994.P3283030999457040239

namespace A162994

/-- `4*∏[record[(4-n)²]]` -/
def P3283030999457040239.Spec : Prop :=
  ∀ n, P3283030999457040239.a n = A162994 (n + 3)

end A162994

/-! ## A162994.P10168247201467654976

`(n+4)²*a(n-1)` with `a(0)=64`
-/

namespace A162994.P10168247201467654976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  (n + 4) ^ 2 * a (n - 1)

end

end A162994.P10168247201467654976

namespace A162994

/-- `(n+4)²*a(n-1)` -/
def P10168247201467654976.Spec : Prop :=
  ∀ n, (P10168247201467654976.a n : ℤ) = A162994 (n + 3)

end A162994

/-!
# A162995: A scaled version of triangle A162990.

The programs for A162995, the canonical program `A162995.P17798723464391032622` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162995 has offset 1).

The definition of A162995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162995.P17798723464391032622

`(row(n)+2)!/(col(n)+2)!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A162995

/-- `(row(n)+2)!/(col(n)+2)!` -/
def P17798723464391032622.Spec : Prop :=
  ∀ n, P17798723464391032622.a n = (A162995 (n + 1) : ℚ)

end A162995

/-! ## A162995.P731961127352339479

`A181511(A099375(n)+1+n)`
-/

namespace A162995.P731961127352339479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A099375 n + 1 + (n : ℤ)).toNat

end

end A162995.P731961127352339479

namespace A162995

/-- `A181511(A099375(n)+1+n)` -/
def P731961127352339479.Spec : Prop :=
  ∀ n, P731961127352339479.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P18332654783584411637

`A104712(n+2)*A119502(n)`
-/

namespace A162995.P18332654783584411637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A119502 n

end

end A162995.P18332654783584411637

namespace A162995

/-- `A104712(n+2)*A119502(n)` -/
def P18332654783584411637.Spec : Prop :=
  ∀ n, P18332654783584411637.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P15772243869289450686

`A181511(2*A004736(n+1)+n)`
-/

namespace A162995.P15772243869289450686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A162995.P15772243869289450686

namespace A162995

/-- `A181511(2*A004736(n+1)+n)` -/
def P15772243869289450686.Spec : Prop :=
  ∀ n, P15772243869289450686.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P4985399532358805642

`A008279(A003057(n+2)²-(n+1))`
-/

namespace A162995.P4985399532358805642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A162995.P4985399532358805642

namespace A162995

/-- `A008279(A003057(n+2)²-(n+1))` -/
def P4985399532358805642.Spec : Prop :=
  ∀ n, P4985399532358805642.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P13729653933835775830

`A181511(A014132(n+1)+A061579(n)-n)`
-/

namespace A162995.P13729653933835775830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A014132 (n + 1) + (A061579 n - (n : ℤ))).toNat

end

end A162995.P13729653933835775830

namespace A162995

/-- `A181511(A014132(n+1)+A061579(n)-n)` -/
def P13729653933835775830.Spec : Prop :=
  ∀ n, P13729653933835775830.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P16632872642687877691

`A181511(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A162995.P16632872642687877691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A162995.P16632872642687877691

namespace A162995

/-- `A181511(A004736(n+1)+A004736(n+1)+n)` -/
def P16632872642687877691.Spec : Prop :=
  ∀ n, P16632872642687877691.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P6311907795757956950

`A173333(∑[char[∑[n]]+1]+1)`
-/

namespace A162995.P6311907795757956950
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A162995.P6311907795757956950

namespace A162995

/-- `A173333(∑[char[∑[n]]+1]+1)` -/
def P6311907795757956950.Spec : Prop :=
  ∀ n, P6311907795757956950.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P13449171598114807380

`A124774(A204985(n+1))`
-/

namespace A162995.P13449171598114807380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A204985 (n + 1)).toNat

end

end A162995.P13449171598114807380

namespace A162995

/-- `A124774(A204985(n+1))` -/
def P13449171598114807380.Spec : Prop :=
  ∀ n, P13449171598114807380.a n = A162995 (n + 1)

end A162995

/-! ## A162995.P13849170117130194785

`A306549(A175332(n+1))`
-/

namespace A162995.P13849170117130194785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A175332 (n + 1)).toNat

end

end A162995.P13849170117130194785

namespace A162995

/-- `A306549(A175332(n+1))` -/
def P13849170117130194785.Spec : Prop :=
  ∀ n, P13849170117130194785.a n = A162995 (n + 1)

end A162995

/-!
# A162996: a(n) = Round(kn * (log(kn)+1)), with k = 2.216 as an approximation of R_n = n-th Ramanujan prime A104272(n) and Abs(a(n)-R_n) < 2 * Sqrt(a(n)) for n in [1..1000].

The programs for A162996, there is no canonical definition to state claims against.
-/

/-! ## A162996.P2362333947982599261

`A163160(n+1)+A104272(n+1)`
-/

namespace A162996.P2362333947982599261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163160 (n + 1) + A104272 (n + 1)

end

end A162996.P2362333947982599261

/-! ## A162996.P16069180360509881971

`A163160(n+1)+A034694(A084139(n))`
-/

namespace A162996.P16069180360509881971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163160 (n + 1) + A034694 (A084139 n).toNat

end

end A162996.P16069180360509881971

/-! ## A162996.P6311296012399779161

`A163160(n+1)+A047268(A084140(n+1))`
-/

namespace A162996.P6311296012399779161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163160 (n + 1) + A047268 (A084140 (n + 1)).toNat

end

end A162996.P6311296012399779161

/-! ## A162996.P11094859735182440151

`A163160(n+1)+A000040(A179196(n+1))`
-/

namespace A162996.P11094859735182440151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163160 (n + 1) + A000040 (A179196 (n + 1)).toNat

end

end A162996.P11094859735182440151

/-! ## A162996.P12050856808180128672

`A031215(n+1)+A233739(n+1)+A163160(n+1)`
-/

namespace A162996.P12050856808180128672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A233739 (n + 1) + A163160 (n + 1))

end

end A162996.P12050856808180128672

/-! ## A162996.P11302346569681639558

`A080359(n+1)+A194217(n+1)+A163160(n+1)`
-/

namespace A162996.P11302346569681639558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 1) + (A194217 (n + 1) + A163160 (n + 1))

end

end A162996.P11302346569681639558

/-! ## A162996.P6129905335396110428

`A163160(n+1)+A194184(n+1)+A193507(n+1)`
-/

namespace A162996.P6129905335396110428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163160 (n + 1) + (A194184 (n + 1) + A193507 (n + 1))

end

end A162996.P6129905335396110428

/-!
# A162998: Antidiagonal sums of array A162997.

The programs for A162998, there is no canonical definition to state claims against.
-/

/-! ## A162998.P3516747571365332388

`A094957(n+2)-1`
-/

namespace A162998.P3516747571365332388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (n + 2) - 1

end

end A162998.P3516747571365332388

/-! ## A162998.P14250226384877922184

`Δ[A179944(n)]-1`
-/

namespace A162998.P14250226384877922184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A162998.P14250226384877922184

/-! ## A162998.P7850268457811803701

`Δ[A179944(n)+A022996(n)]`
-/

namespace A162998.P7850268457811803701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179944 n + A022996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162998.P7850268457811803701

/-! ## A162998.P17243873468134429087

`∑[abs(Δ[A094957(n+1)])]`
-/

namespace A162998.P17243873468134429087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162998.P17243873468134429087

/-! ## A162998.P1966031010017023153

`record[Δ[A094957(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A162998.P1966031010017023153
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094957 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162998.P1966031010017023153

/-!
# A162999: Positions of primes in A119509.

The programs for A162999, there is no canonical definition to state claims against.
-/

/-! ## A162999.P6652300478680655518

`eq[2, A000005(A119509(n+1))]+1`
-/

namespace A162999.P6652300478680655518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119509 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162999.P6652300478680655518

/-! ## A162999.P2985462854976152986

`record[A004277(n+1)/A000005(A119509(n+1))]`
-/

namespace A162999.P2985462854976152986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A000005 (A119509 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162999.P2985462854976152986

/-! ## A162999.P9550852158281670025

`2*record[A000027(n+1)/A000005(A119509(n+1))]`
-/

namespace A162999.P9550852158281670025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000005 (A119509 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162999.P9550852158281670025

/-! ## A162999.P18162932522838059573

`eq[2, ∑{e}[A078255(n+1), #]]`
-/

namespace A162999.P18162932522838059573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078255 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162999.P18162932522838059573

