import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A349700: Difference between 4*A001590(n+2) and A075092(n).

The programs for A349700, the canonical program `A349700.P11432835822873837181` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349700 has offset 0).

The definition of A349700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349700.P12094700830997987518

`ogf((-6+4x+12x^2+20x^3+2x^4-4x^5)/(1-x^2-4x^3-x^4+x^6))`
-/

namespace A349700.P12094700830997987518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-6, 4, 12, 20, 2, -4] [1, 0, -1, -4, -1, 0, 1] n

end

end A349700.P12094700830997987518

namespace A349700

/-- `ogf((-6+4x+12x^2+20x^3+2x^4-4x^5)/(1-x^2-4x^3-x^4+x^6))` -/
def P12094700830997987518.Spec : Prop :=
  ∀ n, P12094700830997987518.a n = A349700 n

end A349700

/-! ## A349700.P11432835822873837181

`a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` with `a(0)=-6, a(1)=4, a(2)=6, a(3)=0, a(4)=18, a(5)=24`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349700

/-- `a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` -/
def P11432835822873837181.Spec : Prop :=
  ∀ n, P11432835822873837181.a n = A349700 n

theorem P11432835822873837181.correct : P11432835822873837181.Spec := by
  intro n
  simp only [A349700]

end A349700

/-! ## A349700.P13669905951670058787

`Δ[A232508(n+1)]-A075092(n)`
-/

namespace A349700.P13669905951670058787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A075092 n

end

end A349700.P13669905951670058787

namespace A349700

/-- `Δ[A232508(n+1)]-A075092(n)` -/
def P13669905951670058787.Spec : Prop :=
  ∀ n, P13669905951670058787.a n = A349700 n

end A349700

/-! ## A349700.P9185162481287854361

`Δ[A232508(n+1)]-(A073145(n)+A001644(n))`
-/

namespace A349700.P9185162481287854361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A073145 n + A001644 n)

end

end A349700.P9185162481287854361

namespace A349700

/-- `Δ[A232508(n+1)]-(A073145(n)+A001644(n))` -/
def P9185162481287854361.Spec : Prop :=
  ∀ n, P9185162481287854361.a n = A349700 n

end A349700

/-!
# A349704: Maximum terminal Wiener index for a tree of n vertices.

The programs for A349704, the canonical program `A349704.P13781896448385054855` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349704 has offset 0).

The definition of A349704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349704.P13781896448385054855

`ogf((x^2+3x^4+2x^6-4x^7-x^8-2x^9+x^10+2x^11+x^12-x^14)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349704

/-- `ogf((x^2+3x^4+2x^6-4x^7-x^8-2x^9+x^10+2x^11+x^12-x^14)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P13781896448385054855.Spec : Prop :=
  ∀ n, P13781896448385054855.a n = A349704 n

theorem P13781896448385054855.correct : P13781896448385054855.Spec := by
  intro n
  simp only [A349704]

end A349704

/-! ## A349704.P3152932650690269156

`∑[∑{e}[and(6*a(n-1), -n), #]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A349704.P3152932650690269156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  Int.land (6 * f2 (n - 1)) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349704.P3152932650690269156

namespace A349704

/-- `∑[∑{e}[and(6*a(n-1), -n), #]]` -/
def P3152932650690269156.Spec : Prop :=
  ∀ n, (P3152932650690269156.a n : ℤ) = A349704 n

end A349704

/-! ## A349704.P13762787394653778387

`A259225(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A349704.P13762787394653778387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A259225 (a (n - 1) + 1).toNat

end

end A349704.P13762787394653778387

namespace A349704

/-- `A259225(a(n-1)+1)` -/
def P13762787394653778387.Spec : Prop :=
  ∀ n, P13762787394653778387.a n = A349704 n

end A349704

/-! ## A349704.P1887294406951576648

`A002620(lt[n*gcd(7, n%2), 18])`
-/

namespace A349704.P1887294406951576648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349704.P1887294406951576648

namespace A349704

/-- `A002620(lt[n*gcd(7, n%2), 18])` -/
def P1887294406951576648.Spec : Prop :=
  ∀ n, P1887294406951576648.a n = A349704 n

end A349704

/-! ## A349704.P11434839557699744591

`A171178(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A349704.P11434839557699744591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  A171178 (a (n - 1) + 1).toNat

end

end A349704.P11434839557699744591

namespace A349704

/-- `A171178(a(n-1)+1)` -/
def P11434839557699744591.Spec : Prop :=
  ∀ n, P11434839557699744591.a n = A349704 n

end A349704

/-!
# A349706: Square array T(n,k) = Sum_{j=0..k} binomial(k,j) * j^n for n and k >= 0, read by ascending antidiagonals.

The programs for A349706, there is no canonical definition to state claims against.
-/

/-! ## A349706.P14119910670637534140

`A121462(n+1)+A025469(A022345(n))`
-/

namespace A349706.P14119910670637534140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + A025469 (A022345 n).toNat

end

end A349706.P14119910670637534140

/-! ## A349706.P3183215644321810633

`A121462(n+1)+A055641(A022112(n))`
-/

namespace A349706.P3183215644321810633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + A055641 (A022112 n).toNat

end

end A349706.P3183215644321810633

/-! ## A349706.P484611793792531343

`A121462(n+1)+A007814(A157156(n))`
-/

namespace A349706.P484611793792531343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + A007814 (A157156 n).toNat

end

end A349706.P484611793792531343

/-! ## A349706.P11074686608864799928

`A121462(n+1)+A018843(A180959(n))`
-/

namespace A349706.P11074686608864799928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + A018843 (A180959 n).toNat

end

end A349706.P11074686608864799928

/-! ## A349706.P17010655114689422730

`A290079(A020713(n))+A121462(n+1)`
-/

namespace A349706.P17010655114689422730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A020713 n).toNat + A121462 (n + 1)

end

end A349706.P17010655114689422730

/-!
# A349707: Numbers that are congruent to {0, 1, 4, 6, 8, 10, 11} (mod 12).

The programs for A349707, the canonical program `A349707.P7389438293055609422` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349707 has offset 1).

The definition of A349707 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A349707.anchor (n : ℕ) (hn : 1 ≤ n) : A349707 n = (Nat.nth (fun k => k % 12 ∈ ({0, 1, 4, 6, 8, 10, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A349.A349707`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349707.P7389438293055609422

`a(n-7)+12` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=8, a(5)=10, a(6)=11`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349707

/-- `a(n-7)+12` -/
def P7389438293055609422.Spec : Prop :=
  ∀ n, (P7389438293055609422.a n : ℤ) = A349707 (n + 1)

theorem P7389438293055609422.correct : P7389438293055609422.Spec := by
  intro n
  simp only [A349707, Nat.add_sub_cancel]

end A349707

/-! ## A349707.P13507960250341008355

`ogf((x+3x^2+2x^3+2x^4+2x^5+x^6+x^7)/(1-x-x^7+x^8))`
-/

namespace A349707.P13507960250341008355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2, 2, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A349707.P13507960250341008355

namespace A349707

/-- `ogf((x+3x^2+2x^3+2x^4+2x^5+x^6+x^7)/(1-x-x^7+x^8))` -/
def P13507960250341008355.Spec : Prop :=
  ∀ n, P13507960250341008355.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P13843204436075891231

`comp[record[(n+2)%or(7, n)]+floor(4*n/5)]`
-/

namespace A349707.P13843204436075891231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % Nat.lor 7 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) + ⌊4 * ((n : ℚ) / 5)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A349707.P13843204436075891231

namespace A349707

/-- `comp[record[(n+2)%or(7, n)]+floor(4*n/5)]` -/
def P13843204436075891231.Spec : Prop :=
  ∀ n, (P13843204436075891231.a n : ℤ) = A349707 (n + 1)

end A349707

/-! ## A349707.P5218193618115091604

`A057359(n)+∑[∑[A175629(n)]]`
-/

namespace A349707.P5218193618115091604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349707.P5218193618115091604

namespace A349707

/-- `A057359(n)+∑[∑[A175629(n)]]` -/
def P5218193618115091604.Spec : Prop :=
  ∀ n, P5218193618115091604.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P10274784499500872792

`record[n-A194274(n)%6]`
-/

namespace A349707.P10274784499500872792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A194274 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349707.P10274784499500872792

namespace A349707

/-- `record[n-A194274(n)%6]` -/
def P10274784499500872792.Spec : Prop :=
  ∀ n, P10274784499500872792.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P1760062296290012871

`record[A290562(n)+abs(1-n%3)]`
-/

namespace A349707.P1760062296290012871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 n + |1 - ((n % 3 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349707.P1760062296290012871

namespace A349707

/-- `record[A290562(n)+abs(1-n%3)]` -/
def P1760062296290012871.Spec : Prop :=
  ∀ n, P1760062296290012871.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P9648141262701867245

`record[A117571(n)-A056594(n)]`
-/

namespace A349707.P9648141262701867245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 n - A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349707.P9648141262701867245

namespace A349707

/-- `record[A117571(n)-A056594(n)]` -/
def P9648141262701867245.Spec : Prop :=
  ∀ n, P9648141262701867245.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P13569835319246249481

`record[A201629(n)-A022003(n)]`
-/

namespace A349707.P13569835319246249481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n - A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349707.P13569835319246249481

namespace A349707

/-- `record[A201629(n)-A022003(n)]` -/
def P13569835319246249481.Spec : Prop :=
  ∀ n, P13569835319246249481.a n = A349707 (n + 1)

end A349707

/-! ## A349707.P12797365307807282970

`comp[∑[n]%3+2*n-A158001(n+1)]`
-/

namespace A349707.P12797365307807282970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 + 2 * n : ℕ) : ℤ) - A158001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A349707.P12797365307807282970

namespace A349707

/-- `comp[∑[n]%3+2*n-A158001(n+1)]` -/
def P12797365307807282970.Spec : Prop :=
  ∀ n, (P12797365307807282970.a n : ℤ) = A349707 (n + 1)

end A349707

/-! ## A349707.P13068033794194608457

`record[A312552(n)-A312765(n)]`
-/

namespace A349707.P13068033794194608457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312552 n - A312765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349707.P13068033794194608457

namespace A349707

/-- `record[A312552(n)-A312765(n)]` -/
def P13068033794194608457.Spec : Prop :=
  ∀ n, P13068033794194608457.a n = A349707 (n + 1)

end A349707

/-!
# A349709: Primes p such that if q is the next prime, A004086(p*q) = A004086(p)*A004086(q).

The programs for A349709, there is no canonical definition to state claims against.
-/

/-! ## A349709.P1941445521587365689

`p?[or(A047166(n+1), A101592(n+1))]`
-/

namespace A349709.P1941445521587365689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047166 (n + 1)) (A101592 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349709.P1941445521587365689

/-!
# A349710: Paschal full moon dates expressed as days after March 21 (Julian calendar).

The programs for A349710, the canonical program `A349710.P4626358081061008512` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349710 has offset 0).

The definition of A349710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349710.P4626358081061008512

`(19*n%19+15)%30`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349710

/-- `(19*n%19+15)%30` -/
def P4626358081061008512.Spec : Prop :=
  ∀ n, (P4626358081061008512.a n : ℤ) = A349710 n

theorem P4626358081061008512.correct : P4626358081061008512.Spec := by
  intro n
  simp only [A349710]

end A349710

/-!
# A349711: a(n) = Sum_{d|n} sopfr(d) * sopfr(n/d).

The programs for A349711, the canonical program `A349711.P16256368162303358446` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349711 has offset 1).

The definition of A349711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A001414(#)*A001414((n+1)/#)]` (program `A349711.P16256368162303358446`, by `A349711.P16256368162303358446.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349711.P16256368162303358446

`∑{d}[n+1, A001414(#)*A001414((n+1)/#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349711

/-- `∑{d}[n+1, A001414(#)*A001414((n+1)/#)]` -/
def P16256368162303358446.Spec : Prop :=
  ∀ n, P16256368162303358446.a n = A349711 (n + 1)

theorem P16256368162303358446.correct : P16256368162303358446.Spec := by
  intro n
  simp only [A349711, Nat.add_sub_cancel]

end A349711

/-! ## A349711.P12589099932837098934

`A049108(A122746(n))*A070824(n+1)`
-/

namespace A349711.P12589099932837098934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A122746 n).toNat * A070824 (n + 1)

end

end A349711.P12589099932837098934

namespace A349711

/-- `A049108(A122746(n))*A070824(n+1)` -/
def P12589099932837098934.Spec : Prop :=
  ∀ n, P12589099932837098934.a n = A349711 (n + 1)

end A349711

/-! ## A349711.P5494680210197460708

`A004257(A102026(n+1))*A070824(n+1)`
-/

namespace A349711.P5494680210197460708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (A102026 (n + 1)).toNat * A070824 (n + 1)

end

end A349711.P5494680210197460708

namespace A349711

/-- `A004257(A102026(n+1))*A070824(n+1)` -/
def P5494680210197460708.Spec : Prop :=
  ∀ n, P5494680210197460708.a n = A349711 (n + 1)

end A349711

/-! ## A349711.P13916421081747020561

`A070824(n+1)*A331852(A000096(n))`
-/

namespace A349711.P13916421081747020561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) * A331852 (A000096 n).toNat

end

end A349711.P13916421081747020561

namespace A349711

/-- `A070824(n+1)*A331852(A000096(n))` -/
def P13916421081747020561.Spec : Prop :=
  ∀ n, P13916421081747020561.a n = A349711 (n + 1)

end A349711

/-!
# A349712: a(n) = Sum_{d|n} sopf(d) * sopf(n/d).

The programs for A349712, the canonical program `A349712.P16162983178764584930` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349712 has offset 1).

The definition of A349712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A008472(#)*A008472((n+1)/#)]` (program `A349712.P16162983178764584930`, by `A349712.P16162983178764584930.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349712.P16162983178764584930

`∑{d}[n+1, A008472(#)*A008472((n+1)/#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349712

/-- `∑{d}[n+1, A008472(#)*A008472((n+1)/#)]` -/
def P16162983178764584930.Spec : Prop :=
  ∀ n, P16162983178764584930.a n = A349712 (n + 1)

theorem P16162983178764584930.correct : P16162983178764584930.Spec := by
  intro n
  simp only [A349712, Nat.add_sub_cancel]

end A349712

/-! ## A349712.P7941171857733563868

`∑{d}[n+1, A061397(#)*A319131((n+1)/#)]`
-/

namespace A349712.P7941171857733563868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349712.P7941171857733563868

namespace A349712

/-- `∑{d}[n+1, A061397(#)*A319131((n+1)/#)]` -/
def P7941171857733563868.Spec : Prop :=
  ∀ n, P7941171857733563868.a n = A349712 (n + 1)

end A349712

/-! ## A349712.P16242186789865682642

`∑{d}[n+1, A369911(#)]`
-/

namespace A349712.P16242186789865682642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369911 d

end

end A349712.P16242186789865682642

namespace A349712

/-- `∑{d}[n+1, A369911(#)]` -/
def P16242186789865682642.Spec : Prop :=
  ∀ n, P16242186789865682642.a n = A349712 (n + 1)

end A349712

/-! ## A349712.P13134166059387920886

`∑{p}[n+1, #*A319131((n+1)/#)]`
-/

namespace A349712.P13134166059387920886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A349712.P13134166059387920886

namespace A349712

/-- `∑{p}[n+1, #*A319131((n+1)/#)]` -/
def P13134166059387920886.Spec : Prop :=
  ∀ n, P13134166059387920886.a n = A349712 (n + 1)

end A349712

/-! ## A349712.P16447798196369779

`A072670(A005578(n))*A210615(n+1)`
-/

namespace A349712.P16447798196369779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A005578 n).toNat * A210615 (n + 1)

end

end A349712.P16447798196369779

namespace A349712

/-- `A072670(A005578(n))*A210615(n+1)` -/
def P16447798196369779.Spec : Prop :=
  ∀ n, P16447798196369779.a n = A349712 (n + 1)

end A349712

/-!
# A349713: Antidiagonal sums of triangle A104684.

The programs for A349713, the canonical program `A349713.P12180432672518842764` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349713 has offset 0).

The definition of A349713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349713.P12180432672518842764

`∑{#}[floor(n/2), A104684(C(n-#+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349713

/-- `∑{#}[floor(n/2), A104684(C(n-#+1, 2)+#)]` -/
def P12180432672518842764.Spec : Prop :=
  ∀ n, P12180432672518842764.a n = A349713 n

theorem P12180432672518842764.correct : P12180432672518842764.Spec := by
  intro n
  simp only [A349713]

end A349713

/-! ## A349713.P18403756272530801970

`A047970(n)+A002264(A005061(n))`
-/

namespace A349713.P18403756272530801970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n + A002264 (A005061 n).toNat

end

end A349713.P18403756272530801970

namespace A349713

/-- `A047970(n)+A002264(A005061(n))` -/
def P18403756272530801970.Spec : Prop :=
  ∀ n, P18403756272530801970.a n = A349713 n

end A349713

/-!
# A349714: E.g.f. satisfies: A(x) = exp( x * (1 + A(x)^3)/2 ).

The programs for A349714, the canonical program `A349714.P14266479554753257918` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349714 has offset 0).

The definition of A349714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349714.P14266479554753257918

`1/2^n*∑{#}[n, (3*#+1)^(n-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349714

/-- `1/2^n*∑{#}[n, (3*#+1)^(n-1)*C(n, #)]` -/
def P14266479554753257918.Spec : Prop :=
  ∀ n, P14266479554753257918.a n = (A349714 n : ℚ)

end A349714

/-! ## A349714.P3138400441135530665

`A218305(n)/A011782(n)`
-/

namespace A349714.P3138400441135530665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218305 n : ℚ) / (A011782 n : ℚ)

end

end A349714.P3138400441135530665

namespace A349714

/-- `A218305(n)/A011782(n)` -/
def P3138400441135530665.Spec : Prop :=
  ∀ n, P3138400441135530665.a n = (A349714 n : ℚ)

end A349714

/-! ## A349714.P955390759561575514

`A362734(n)/A000079(n)`
-/

namespace A349714.P955390759561575514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362734 n : ℚ) / (A000079 n : ℚ)

end

end A349714.P955390759561575514

namespace A349714

/-- `A362734(n)/A000079(n)` -/
def P955390759561575514.Spec : Prop :=
  ∀ n, P955390759561575514.a n = (A349714 n : ℚ)

end A349714

/-! ## A349714.P15594729043501563504

`A218305(n)/∑[A034008(n)]`
-/

namespace A349714.P15594729043501563504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218305 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A349714.P15594729043501563504

namespace A349714

/-- `A218305(n)/∑[A034008(n)]` -/
def P15594729043501563504.Spec : Prop :=
  ∀ n, P15594729043501563504.a n = (A349714 n : ℚ)

end A349714

/-! ## A349714.P16984324263811825981

`A218305(n)/A000010(A000079(n))`
-/

namespace A349714.P16984324263811825981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218305 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A349714.P16984324263811825981

namespace A349714

/-- `A218305(n)/A000010(A000079(n))` -/
def P16984324263811825981.Spec : Prop :=
  ∀ n, P16984324263811825981.a n = (A349714 n : ℚ)

end A349714

/-!
# A349715: E.g.f. satisfies: A(x) = exp( x * (1 + A(x)^4)/2 ).

The programs for A349715, the canonical program `A349715.P12389574409478228519` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349715 has offset 0).

The definition of A349715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349715.P12389574409478228519

`1/2^n*∑{#}[n, (4*#+1)^(n-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349715

/-- `1/2^n*∑{#}[n, (4*#+1)^(n-1)*C(n, #)]` -/
def P12389574409478228519.Spec : Prop :=
  ∀ n, P12389574409478228519.a n = (A349715 n : ℚ)

end A349715

/-! ## A349715.P17850832306127486050

`A218307(n)/A011782(n)`
-/

namespace A349715.P17850832306127486050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218307 n : ℚ) / (A011782 n : ℚ)

end

end A349715.P17850832306127486050

namespace A349715

/-- `A218307(n)/A011782(n)` -/
def P17850832306127486050.Spec : Prop :=
  ∀ n, P17850832306127486050.a n = (A349715 n : ℚ)

end A349715

/-! ## A349715.P12836036146506319948

`A218307(n)/∑[A034008(n)]`
-/

namespace A349715.P12836036146506319948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218307 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A349715.P12836036146506319948

namespace A349715

/-- `A218307(n)/∑[A034008(n)]` -/
def P12836036146506319948.Spec : Prop :=
  ∀ n, P12836036146506319948.a n = (A349715 n : ℚ)

end A349715

/-! ## A349715.P2916834567712872329

`A218307(n)/A000010(A000079(n))`
-/

namespace A349715.P2916834567712872329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218307 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A349715.P2916834567712872329

namespace A349715

/-- `A218307(n)/A000010(A000079(n))` -/
def P2916834567712872329.Spec : Prop :=
  ∀ n, P2916834567712872329.a n = (A349715 n : ℚ)

end A349715

/-! ## A349715.P8407826443169714803

`A218307(n)/A000010(Δ[A000225(n)])`
-/

namespace A349715.P8407826443169714803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218307 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A349715.P8407826443169714803

namespace A349715

/-- `A218307(n)/A000010(Δ[A000225(n)])` -/
def P8407826443169714803.Spec : Prop :=
  ∀ n, P8407826443169714803.a n = (A349715 n : ℚ)

end A349715

/-!
# A349716: E.g.f. satisfies: A(x) = exp( x * (1 + A(x)^5)/2 ).

The programs for A349716, the canonical program `A349716.P11212639284073354758` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349716 has offset 0).

The definition of A349716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349716.P11212639284073354758

`1/2^n*∑{#}[n, (5*#+1)^(n-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349716

/-- `1/2^n*∑{#}[n, (5*#+1)^(n-1)*C(n, #)]` -/
def P11212639284073354758.Spec : Prop :=
  ∀ n, P11212639284073354758.a n = (A349716 n : ℚ)

end A349716

/-! ## A349716.P10807210327880402520

`A218310(n)/A011782(n)`
-/

namespace A349716.P10807210327880402520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218310 n : ℚ) / (A011782 n : ℚ)

end

end A349716.P10807210327880402520

namespace A349716

/-- `A218310(n)/A011782(n)` -/
def P10807210327880402520.Spec : Prop :=
  ∀ n, P10807210327880402520.a n = (A349716 n : ℚ)

end A349716

/-! ## A349716.P16658612912668204837

`A218310(n)/∑[A034008(n)]`
-/

namespace A349716.P16658612912668204837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218310 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A349716.P16658612912668204837

namespace A349716

/-- `A218310(n)/∑[A034008(n)]` -/
def P16658612912668204837.Spec : Prop :=
  ∀ n, P16658612912668204837.a n = (A349716 n : ℚ)

end A349716

/-! ## A349716.P16751486450614944308

`A218310(n)/A000010(A000079(n))`
-/

namespace A349716.P16751486450614944308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218310 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A349716.P16751486450614944308

namespace A349716

/-- `A218310(n)/A000010(A000079(n))` -/
def P16751486450614944308.Spec : Prop :=
  ∀ n, P16751486450614944308.a n = (A349716 n : ℚ)

end A349716

/-! ## A349716.P5873030062212425854

`A218310(n)/A000010(Δ[A000225(n)])`
-/

namespace A349716.P5873030062212425854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218310 n : ℚ) / (A000010 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A349716.P5873030062212425854

namespace A349716

/-- `A218310(n)/A000010(Δ[A000225(n)])` -/
def P5873030062212425854.Spec : Prop :=
  ∀ n, P5873030062212425854.a n = (A349716 n : ℚ)

end A349716

/-!
# A349717: a(n) is the smallest x such that sigma(x)/x = (3/2)*sigma(n)/n where sigma(n) is the sum of divisors of n or -1 if no such x exists.

The programs for A349717, there is no canonical definition to state claims against.
-/

/-! ## A349717.P14892795579107740837

`A015810(A270339(n+1))*A073353(n+1)`
-/

namespace A349717.P14892795579107740837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015810 (A270339 (n + 1)).toNat * A073353 (n + 1)

end

end A349717.P14892795579107740837

/-!
# A349719: E.g.f. satisfies: A(x) = exp( x * (1 + 1/A(x))/2 ).

The programs for A349719, there is no canonical definition to state claims against.
-/

/-! ## A349719.P3202817350078509268

`A362693(n)/A000079(n)`
-/

namespace A349719.P3202817350078509268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362693 n : ℚ) / (A000079 n : ℚ)

end

end A349719.P3202817350078509268

/-! ## A349719.P720782989211577289

`A362693(n)/∑[A011782(n)]`
-/

namespace A349719.P720782989211577289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362693 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A349719.P720782989211577289

/-! ## A349719.P14787650989923663636

`A362693(n)/Δ[A000051(n)]`
-/

namespace A349719.P14787650989923663636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362693 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A349719.P14787650989923663636

/-! ## A349719.P13964613132490716506

`A362693(n)/A011782(n+1)`
-/

namespace A349719.P13964613132490716506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362693 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A349719.P13964613132490716506

/-! ## A349719.P12643218667591423695

`A349720(n)/A362735(n)*A362693(n)`
-/

namespace A349719.P12643218667591423695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349720 n : ℚ) / (A362735 n : ℚ) * (A362693 n : ℚ)

end

end A349719.P12643218667591423695

/-!
# A349720: E.g.f. satisfies: A(x) = exp( x * (1 + 1/A(x)^2)/2 ).

The programs for A349720, there is no canonical definition to state claims against.
-/

/-! ## A349720.P7896842966299642056

`A362735(n)/2^n`
-/

namespace A349720.P7896842966299642056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362735 n : ℚ) / (2 ^ n : ℚ)

end

end A349720.P7896842966299642056

/-! ## A349720.P2865834893020290428

`floor(A362735(n)/A000079(n))`
-/

namespace A349720.P2865834893020290428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A362735 n : ℚ) / (A000079 n : ℚ)⌋

end

end A349720.P2865834893020290428

/-!
# A349721: E.g.f. satisfies: A(x) = exp( x * (1 + 1/A(x)^3)/2 ).

The programs for A349721, there is no canonical definition to state claims against.
-/

/-! ## A349721.P9701448834911599540

`A354348(A000312(n)*A001405(n))`
-/

namespace A349721.P9701448834911599540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354348 (A000312 n * A001405 n).toNat

end

end A349721.P9701448834911599540

/-!
# A349723: Atomic number corresponding to the element that is the first of the two middle elements in the n-th row of the periodic table of elements.

The programs for A349723, the canonical program `A349723.P8580812685374136879` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349723 has offset 1).

The definition of A349723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349723.P17634952864478839982

`ogf((1+3x-2x^2-x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A349723.P17634952864478839982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, -1, 1] [1, -3, 2, 2, -3, 1] n

end

end A349723.P17634952864478839982

namespace A349723

/-- `ogf((1+3x-2x^2-x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P17634952864478839982.Spec : Prop :=
  ∀ n, P17634952864478839982.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P8580812685374136879

`(3*((-1)^(n+1)-9)+2*(n+1)*((n+1)*(2*(n+1)+9)+16))/24`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349723

/-- `(3*((-1)^(n+1)-9)+2*(n+1)*((n+1)*(2*(n+1)+9)+16))/24` -/
def P8580812685374136879.Spec : Prop :=
  ∀ n, P8580812685374136879.a n = (A349723 (n + 1) : ℚ)

end A349723

/-! ## A349723.P1766453059601085765

`∑[∑[or(1, 1+n)]]+n`
-/

namespace A349723.P1766453059601085765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A349723.P1766453059601085765

namespace A349723

/-- `∑[∑[or(1, 1+n)]]+n` -/
def P1766453059601085765.Spec : Prop :=
  ∀ n, (P1766453059601085765.a n : ℤ) = A349723 (n + 1)

end A349723

/-! ## A349723.P17319513189121540547

`∑[∑[and(1, n)+1+n]]+n`
-/

namespace A349723.P17319513189121540547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A349723.P17319513189121540547

namespace A349723

/-- `∑[∑[and(1, n)+1+n]]+n` -/
def P17319513189121540547.Spec : Prop :=
  ∀ n, (P17319513189121540547.a n : ℤ) = A349723 (n + 1)

end A349723

/-! ## A349723.P1903045557557069379

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=5`
-/

namespace A349723.P1903045557557069379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 5] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349723.P1903045557557069379

namespace A349723

/-- `∑[∑[a(n-2)+2]]` -/
def P1903045557557069379.Spec : Prop :=
  ∀ n, (P1903045557557069379.a n : ℤ) = A349723 (n + 1)

end A349723

/-! ## A349723.P16755158198838966004

`∑[∑[char[1]+n%2+n+1]]`
-/

namespace A349723.P16755158198838966004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n % 2 + n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349723.P16755158198838966004

namespace A349723

/-- `∑[∑[char[1]+n%2+n+1]]` -/
def P16755158198838966004.Spec : Prop :=
  ∀ n, (P16755158198838966004.a n : ℤ) = A349723 (n + 1)

end A349723

/-! ## A349723.P10649867302773016938

`∑[∑[gcd(2, n+1)+char[1]+n]]`
-/

namespace A349723.P10649867302773016938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349723.P10649867302773016938

namespace A349723

/-- `∑[∑[gcd(2, n+1)+char[1]+n]]` -/
def P10649867302773016938.Spec : Prop :=
  ∀ n, (P10649867302773016938.a n : ℤ) = A349723 (n + 1)

end A349723

/-! ## A349723.P3936604800239499169

`ceil(a(n-1)+(n+2)²/2)` with `a(0)=1`
-/

namespace A349723.P3936604800239499169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + ((n + 2) ^ 2 : ℚ) / 2⌉

end

end A349723.P3936604800239499169

namespace A349723

/-- `ceil(a(n-1)+(n+2)²/2)` -/
def P3936604800239499169.Spec : Prop :=
  ∀ n, P3936604800239499169.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P7873328644950435569

`round(a(n-1)+(n+2)²/2)` with `a(0)=1`
-/

namespace A349723.P7873328644950435569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n + 2) ^ 2 : ℚ) / 2)

end

end A349723.P7873328644950435569

namespace A349723

/-- `round(a(n-1)+(n+2)²/2)` -/
def P7873328644950435569.Spec : Prop :=
  ∀ n, P7873328644950435569.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P6372099980663865421

`∑[∑[A084642(n)+n]]`
-/

namespace A349723.P6372099980663865421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349723.P6372099980663865421

namespace A349723

/-- `∑[∑[A084642(n)+n]]` -/
def P6372099980663865421.Spec : Prop :=
  ∀ n, P6372099980663865421.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P10929479067454831067

`∑[A074148(n+1)]+n`
-/

namespace A349723.P10929479067454831067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A349723.P10929479067454831067

namespace A349723

/-- `∑[A074148(n+1)]+n` -/
def P10929479067454831067.Spec : Prop :=
  ∀ n, P10929479067454831067.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P4002963896946819503

`∑[A105343(n)+2*n]`
-/

namespace A349723.P4002963896946819503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349723.P4002963896946819503

namespace A349723

/-- `∑[A105343(n)+2*n]` -/
def P4002963896946819503.Spec : Prop :=
  ∀ n, P4002963896946819503.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P10301490351447237761

`A173154(n+1)-(n+3)`
-/

namespace A349723.P10301490351447237761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 (n + 1) - (n + 3 : ℤ)

end

end A349723.P10301490351447237761

namespace A349723

/-- `A173154(n+1)-(n+3)` -/
def P10301490351447237761.Spec : Prop :=
  ∀ n, P10301490351447237761.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P9231936217599534345

`A131941(n)+A028387(n)`
-/

namespace A349723.P9231936217599534345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A028387 n

end

end A349723.P9231936217599534345

namespace A349723

/-- `A131941(n)+A028387(n)` -/
def P9231936217599534345.Spec : Prop :=
  ∀ n, P9231936217599534345.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P7939635729983469595

`A005286(n)-A002620(n)`
-/

namespace A349723.P7939635729983469595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n - A002620 n

end

end A349723.P7939635729983469595

namespace A349723

/-- `A005286(n)-A002620(n)` -/
def P7939635729983469595.Spec : Prop :=
  ∀ n, P7939635729983469595.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P316791336711939936

`A005586(n)-A078126(n)`
-/

namespace A349723.P316791336711939936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n - A078126 n

end

end A349723.P316791336711939936

namespace A349723

/-- `A005586(n)-A078126(n)` -/
def P316791336711939936.Spec : Prop :=
  ∀ n, P316791336711939936.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P16207152571922464256

`A213759(n+1)+A007494(n)`
-/

namespace A349723.P16207152571922464256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213759 (n + 1) + A007494 n

end

end A349723.P16207152571922464256

namespace A349723

/-- `A213759(n+1)+A007494(n)` -/
def P16207152571922464256.Spec : Prop :=
  ∀ n, P16207152571922464256.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P13546022399193920255

`A276382(n+1)+A000292(n)`
-/

namespace A349723.P13546022399193920255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1) + A000292 n

end

end A349723.P13546022399193920255

namespace A349723

/-- `A276382(n+1)+A000292(n)` -/
def P13546022399193920255.Spec : Prop :=
  ∀ n, P13546022399193920255.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P10740074365176532883

`A180415(n+1)+A115006(n)`
-/

namespace A349723.P10740074365176532883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A115006 n

end

end A349723.P10740074365176532883

namespace A349723

/-- `A180415(n+1)+A115006(n)` -/
def P10740074365176532883.Spec : Prop :=
  ∀ n, P10740074365176532883.a n = A349723 (n + 1)

end A349723

/-! ## A349723.P16281882866782413544

`A212964(n)+A095794(n+1)`
-/

namespace A349723.P16281882866782413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n + A095794 (n + 1)

end

end A349723.P16281882866782413544

namespace A349723

/-- `A212964(n)+A095794(n+1)` -/
def P16281882866782413544.Spec : Prop :=
  ∀ n, P16281882866782413544.a n = A349723 (n + 1)

end A349723

/-!
# A349725: Numbers k >= 1 such that A018804(k) divided by A000010(k) is an integer.

The programs for A349725, there is no canonical definition to state claims against.
-/

/-! ## A349725.P6485403659931445111

`lt[A018804(n+1)%A000010(n+1), 1]+1`
-/

namespace A349725.P6485403659931445111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018804 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349725.P6485403659931445111

/-!
# A349726: Numbers k >= 1 such that A018804(k) divided by A000203(k) is an integer.

The programs for A349726, there is no canonical definition to state claims against.
-/

/-! ## A349726.P11420281625200773023

`lt[A018804(n+1)%A000203(n+1), 1]+1`
-/

namespace A349726.P11420281625200773023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018804 (n + 1)) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A349726.P11420281625200773023

/-!
# A349727: Triangle read by rows, T(n, k) = [x^(n - k)] hypergeom([-n, -1 + n], [-n], x).

The programs for A349727, the canonical program `A349727.P7443163994713940348` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349727 has offset 0).

The definition of A349727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349727.P7443163994713940348

`gcd(Δ[A100100(n)], A131427(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349727

/-- `gcd(Δ[A100100(n)], A131427(n))` -/
def P7443163994713940348.Spec : Prop :=
  ∀ n, (P7443163994713940348.a n : ℤ) = A349727 n

theorem P7443163994713940348.correct : P7443163994713940348.Spec := by
  intro n
  simp only [A349727]

end A349727

/-! ## A349727.P15850168599207997147

`C(A294317(A083920(n)), A025581(n))`
-/

namespace A349727.P15850168599207997147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 (A083920 n).toNat).toNat (A025581 n).toNat

end

end A349727.P15850168599207997147

namespace A349727

/-- `C(A294317(A083920(n)), A025581(n))` -/
def P15850168599207997147.Spec : Prop :=
  ∀ n, (P15850168599207997147.a n : ℤ) = A349727 n

end A349727

/-! ## A349727.P13674155135283537918

`C(A051162(A056943(n+1)), A025581(n))`
-/

namespace A349727.P13674155135283537918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 (A056943 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A349727.P13674155135283537918

namespace A349727

/-- `C(A051162(A056943(n+1)), A025581(n))` -/
def P13674155135283537918.Spec : Prop :=
  ∀ n, (P13674155135283537918.a n : ℤ) = A349727 n

end A349727

/-! ## A349727.P5221925236799782839

`C(A023443(A294317(n+1)), A025581(n))`
-/

namespace A349727.P5221925236799782839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023443 (A294317 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A349727.P5221925236799782839

namespace A349727

/-- `C(A023443(A294317(n+1)), A025581(n))` -/
def P5221925236799782839.Spec : Prop :=
  ∀ n, (P5221925236799782839.a n : ℤ) = A349727 n

end A349727

/-! ## A349727.P9314555028301231850

`C(A025581(A292564(n)+2), A025581(n))`
-/

namespace A349727.P9314555028301231850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 (A292564 n + 2).toNat).toNat (A025581 n).toNat

end

end A349727.P9314555028301231850

namespace A349727

/-- `C(A025581(A292564(n)+2), A025581(n))` -/
def P9314555028301231850.Spec : Prop :=
  ∀ n, (P9314555028301231850.a n : ℤ) = A349727 n

end A349727

/-! ## A349727.P12834544645381339669

`A100100(n)-A100100(n+1)%A318107(n)`
-/

namespace A349727.P12834544645381339669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n - Int.tmod (A100100 (n + 1)) (A318107 n)

end

end A349727.P12834544645381339669

namespace A349727

/-- `A100100(n)-A100100(n+1)%A318107(n)` -/
def P12834544645381339669.Spec : Prop :=
  ∀ n, P12834544645381339669.a n = A349727 n

end A349727

/-! ## A349727.P2023508829514784249

`A189175(n)-A059365(n+1)`
-/

namespace A349727.P2023508829514784249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189175 n - A059365 (n + 1)

end

end A349727.P2023508829514784249

namespace A349727

/-- `A189175(n)-A059365(n+1)` -/
def P2023508829514784249.Spec : Prop :=
  ∀ n, P2023508829514784249.a n = A349727 n

end A349727

/-! ## A349727.P10509960937336214631

`A189175(n)-A106566(n+1)`
-/

namespace A349727.P10509960937336214631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189175 n - A106566 (n + 1)

end

end A349727.P10509960937336214631

namespace A349727

/-- `A189175(n)-A106566(n+1)` -/
def P10509960937336214631.Spec : Prop :=
  ∀ n, P10509960937336214631.a n = A349727 n

end A349727

/-!
# A349728: Triangle read by rows, T(n, k) = RisingFactorial(k, n) / FallingFactorial(n, k).

The programs for A349728, the canonical program `A349728.P1191564952658698747` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349728 has offset 0).

The definition of A349728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349728.P1191564952658698747

`A097805(A245300(n))*A119502(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A349728

/-- `A097805(A245300(n))*A119502(n)` -/
def P1191564952658698747.Spec : Prop :=
  ∀ n, P1191564952658698747.a n = A349728 n

theorem P1191564952658698747.correct : P1191564952658698747.Spec := by
  intro n
  simp only [A349728]

end A349728

/-! ## A349728.P17988672708996662384

`A025581(n)!*A097805(A245300(n))`
-/

namespace A349728.P17988672708996662384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A097805 (A245300 n).toNat

end

end A349728.P17988672708996662384

namespace A349728

/-- `A025581(n)!*A097805(A245300(n))` -/
def P17988672708996662384.Spec : Prop :=
  ∀ n, P17988672708996662384.a n = A349728 n

theorem P17988672708996662384.correct : P17988672708996662384.Spec := by
  intro n
  simp only [A349728, Nat.add_sub_cancel, A349728.P17988672708996662384.a, A349728.P1191564952658698747.a, A025581, A025581.P16112744757063613497.a, A097805, A097805.P1755176267250853107.a, A119502, A119502.P14623475535698746152.a, A245300, A245300.P9556212720038646879.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349728

/-! ## A349728.P7811435674020611973

`A097805(A245300(n))*A233543(A061579(n))`
-/

namespace A349728.P7811435674020611973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A245300 n).toNat * A233543 (A061579 n).toNat

end

end A349728.P7811435674020611973

namespace A349728

/-- `A097805(A245300(n))*A233543(A061579(n))` -/
def P7811435674020611973.Spec : Prop :=
  ∀ n, P7811435674020611973.a n = A349728 n

end A349728

/-! ## A349728.P10327508860082689674

`A156991(n)/A008279(n)`
-/

namespace A349728.P10327508860082689674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156991 n : ℚ) / (A008279 n : ℚ)

end

end A349728.P10327508860082689674

namespace A349728

/-- `A156991(n)/A008279(n)` -/
def P10327508860082689674.Spec : Prop :=
  ∀ n, P10327508860082689674.a n = (A349728 n : ℚ)

end A349728

/-! ## A349728.P15899256243000427952

`A156991(n)/A094587(A061579(n))`
-/

namespace A349728.P15899256243000427952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156991 n : ℚ) / (A094587 (A061579 n).toNat : ℚ)

end

end A349728.P15899256243000427952

namespace A349728

/-- `A156991(n)/A094587(A061579(n))` -/
def P15899256243000427952.Spec : Prop :=
  ∀ n, P15899256243000427952.a n = (A349728 n : ℚ)

end A349728

/-! ## A349728.P1384452179907405778

`A271703(A245300(n))/A113025(n)`
-/

namespace A349728.P1384452179907405778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 (A245300 n).toNat : ℚ) / (A113025 n : ℚ)

end

end A349728.P1384452179907405778

namespace A349728

/-- `A271703(A245300(n))/A113025(n)` -/
def P1384452179907405778.Spec : Prop :=
  ∀ n, P1384452179907405778.a n = (A349728 n : ℚ)

end A349728

/-!
# A349730: Row sums of A349728.

The programs for A349730, there is no canonical definition to state claims against.
-/

/-! ## A349730.P3389536482937985712

`A306844(n+1)+A054861(A112565(n))`
-/

namespace A349730.P3389536482937985712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306844 (n + 1) + A054861 (A112565 n).toNat

end

end A349730.P3389536482937985712

/-! ## A349730.P2875287948706865753

`2*(A247357(a(n-1))+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A349730.P2875287948706865753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (A247357 (a (n - 1)).toNat + a (n - 2))

end

end A349730.P2875287948706865753

/-!
# A349731: a(n) = -(-n)^n * FallingFactorial(1/n, n) for n >= 1 and a(0) = -1.

The programs for A349731, there is no canonical definition to state claims against.
-/

/-! ## A349731.P12798558181710558236

`A003875(lcm(n, a(n-1)))` with `a(0)=-1`
-/

namespace A349731.P12798558181710558236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  A003875 (Int.lcm (n : ℤ) (a (n - 1)))

end

end A349731.P12798558181710558236

/-!
# A349733: Composite numbers that are missing from A349194.

The programs for A349733, there is no canonical definition to state claims against.
-/

/-! ## A349733.P7063276541447578522

`∩[A068191(n+1), A349865(n+1)]`
-/

namespace A349733.P7063276541447578522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349733.P7063276541447578522

/-! ## A349733.P18367930769708544569

`∩[A349865(n+1), A376740(n+1)]`
-/

namespace A349733.P18367930769708544569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349733.P18367930769708544569

/-! ## A349733.P1443567693986425860

`∩[comp[A349194(n+1)], A349865(n+1)]`
-/

namespace A349733.P1443567693986425860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349194 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A349733.P1443567693986425860

/-! ## A349733.P2933220973658741578

`lt[A053767(n+3), A336414(A107463(n))]`
-/

namespace A349733.P2933220973658741578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336414 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349733.P2933220973658741578

/-! ## A349733.P6254994703120906088

`∩[A307516(n+1), A349865(n+1)]`
-/

namespace A349733.P6254994703120906088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349733.P6254994703120906088

/-!
# A349734: Numbers k such that A255217(k) divides A007504(k).

The programs for A349734, there is no canonical definition to state claims against.
-/

/-! ## A349734.P9011509356898288662

`eq[A132995(n+1), A255217(n+1)]+1`
-/

namespace A349734.P9011509356898288662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349734.P9011509356898288662

/-!
# A349735: a(n) = A244915(n)^2 + A244915(n+1)^2.

The programs for A349735, there is no canonical definition to state claims against.
-/

/-! ## A349735.P5967370817528742639

`A244915(n)²+A244915(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349735.P5967370817528742639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244915 n ^ 2 + A244915 (n + 1) ^ 2

end

end A349735.P5967370817528742639

/-!
# A349736: Binomial coefficients C(m,k) such that C(m,k), C(m,k+1), C(m,k+2) with 0 <= k <= m-2 form an increasing arithmetic progression.

The programs for A349736, the canonical program `A349736.P6493899195200998814` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349736 has offset 1).

The definition of A349736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349736.P6493899195200998814

`C((n+1)²+4*(n+1)+2, ((n+1)²+3*(n+1)-2)/2)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349736

/-- `C((n+1)²+4*(n+1)+2, ((n+1)²+3*(n+1)-2)/2)` -/
def P6493899195200998814.Spec : Prop :=
  ∀ n, (P6493899195200998814.a n : ℤ) = A349736 (n + 1)

theorem P6493899195200998814.correct : P6493899195200998814.Spec := by
  intro n
  simp only [A349736, Nat.add_sub_cancel]

end A349736

/-! ## A349736.P12506814234908846763

`(n+1)*A349737(n+1)/2`
-/

namespace A349736.P12506814234908846763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A349737 (n + 1) : ℚ) / 2

end

end A349736.P12506814234908846763

namespace A349736

/-- `(n+1)*A349737(n+1)/2` -/
def P12506814234908846763.Spec : Prop :=
  ∀ n, P12506814234908846763.a n = (A349736 (n + 1) : ℚ)

end A349736

/-!
# A349737: a(n) is the common difference of the increasing arithmetic progression C(m,k), C(m,k+1), C(m,k+2) when C(m,k) = A349736(n).

The programs for A349737, the canonical program `A349737.P13201995395905875827` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349737 has offset 1).

The definition of A349737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349737.P13201995395905875827

`2/(n+1)*C((n+1)²+4*(n+1)+2, ((n+1)²+3*(n+1)-2)/2)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349737

/-- `2/(n+1)*C((n+1)²+4*(n+1)+2, ((n+1)²+3*(n+1)-2)/2)` -/
def P13201995395905875827.Spec : Prop :=
  ∀ n, P13201995395905875827.a n = (A349737 (n + 1) : ℚ)

end A349737

/-! ## A349737.P16155176939141125641

`2*A349736(n+1)/(n+1)`
-/

namespace A349737.P16155176939141125641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A349736 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A349737.P16155176939141125641

namespace A349737

/-- `2*A349736(n+1)/(n+1)` -/
def P16155176939141125641.Spec : Prop :=
  ∀ n, P16155176939141125641.a n = (A349737 (n + 1) : ℚ)

end A349737

/-! ## A349737.P17698878182431739046

`A037012(A027482(n+3))`
-/

namespace A349737.P17698878182431739046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A027482 (n + 3)).toNat

end

end A349737.P17698878182431739046

namespace A349737

/-- `A037012(A027482(n+3))` -/
def P17698878182431739046.Spec : Prop :=
  ∀ n, P17698878182431739046.a n = A349737 (n + 1)

end A349737

/-!
# A349739: Number of ordered pairs of commuting elements (partial permutations) in the symmetric inverse semigroup on [n].

The programs for A349739, there is no canonical definition to state claims against.
-/

/-! ## A349739.P13916394548289267789

`A097503(A207818(n+1))+n²`
-/

namespace A349739.P13916394548289267789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (A207818 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A349739.P13916394548289267789

/-!
# A349740: Number of partitions of set [n] in a set of <= k noncrossing subsets. Number of Dyck n-paths with at most k peaks. Both with 0 <= k <= n, read by rows.

The programs for A349740, the canonical program `A349740.P5150068755569788510` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349740 has offset 0).

The definition of A349740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349740.P5150068755569788510

`A090181(n)+T(n,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349740

/-- `A090181(n)+T(n,k-1)` -/
def P5150068755569788510.Spec : Prop :=
  ∀ n, P5150068755569788510.a n = A349740 n

theorem P5150068755569788510.correct : P5150068755569788510.Spec := by
  intro n
  simp only [A349740]

end A349740

/-! ## A349740.P8189345482403352325

`A009766(n)-A118344(n)%A127770(n)`
-/

namespace A349740.P8189345482403352325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n - Int.tmod (A118344 n) (A127770 n)

end

end A349740.P8189345482403352325

namespace A349740

/-- `A009766(n)-A118344(n)%A127770(n)` -/
def P8189345482403352325.Spec : Prop :=
  ∀ n, P8189345482403352325.a n = A349740 n

end A349740

/-! ## A349740.P7786410873945619547

`A225099(A344608(n))+A009766(n)-A097805(n+1)`
-/

namespace A349740.P7786410873945619547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A344608 n).toNat + A009766 n - A097805 (n + 1)

end

end A349740.P7786410873945619547

namespace A349740

/-- `A225099(A344608(n))+A009766(n)-A097805(n+1)` -/
def P7786410873945619547.Spec : Prop :=
  ∀ n, P7786410873945619547.a n = A349740 n

end A349740

/-! ## A349740.P8419465381979594268

`A076038(n)-A097805(A077168(n))`
-/

namespace A349740.P8419465381979594268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076038 n - A097805 (A077168 n).toNat

end

end A349740.P8419465381979594268

namespace A349740

/-- `A076038(n)-A097805(A077168(n))` -/
def P8419465381979594268.Spec : Prop :=
  ∀ n, P8419465381979594268.a n = A349740 n

end A349740

/-! ## A349740.P12747858905364314196

`A327117(n)-A326033(A035312(n))`
-/

namespace A349740.P12747858905364314196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327117 n - A326033 (A035312 n).toNat

end

end A349740.P12747858905364314196

namespace A349740

/-- `A327117(n)-A326033(A035312(n))` -/
def P12747858905364314196.Spec : Prop :=
  ∀ n, P12747858905364314196.a n = A349740 n

end A349740

/-!
# A349741: a(n) = Product_{k=1..n-1} phi(gcd(n,k)).

The programs for A349741, there is no canonical definition to state claims against.
-/

/-! ## A349741.P10157189291303738132

`A200219(A091583(n+2))`
-/

namespace A349741.P10157189291303738132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200219 (A091583 (n + 2)).toNat

end

end A349741.P10157189291303738132

/-! ## A349741.P3535652298133240406

`A048896(or(3, A322230(n)))`
-/

namespace A349741.P3535652298133240406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (Int.lor 3 (A322230 n)).toNat

end

end A349741.P3535652298133240406

/-! ## A349741.P6010697598636056076

`A181876(or(n, A119016(n)))`
-/

namespace A349741.P6010697598636056076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181876 (Int.lor (n : ℤ) (A119016 n)).toNat

end

end A349741.P6010697598636056076

/-! ## A349741.P12956766590006113823

`A260909(or(n, A257740(n)))`
-/

namespace A349741.P12956766590006113823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260909 (Int.lor (n : ℤ) (A257740 n)).toNat

end

end A349741.P12956766590006113823

/-! ## A349741.P11933984605742472054

`A000009(A008279(n)^A201159(n))`
-/

namespace A349741.P11933984605742472054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A008279 n : ℚ) ^ (A201159 n : ℤ))).toNat

end

end A349741.P11933984605742472054

/-!
# A349742: Right border of A348575.

The programs for A349742, there is no canonical definition to state claims against.
-/

/-! ## A349742.P16060528154225466500

`A349548(n+1)+A000217(A349547(n+1)-1)`
-/

namespace A349742.P16060528154225466500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349548 (n + 1) + A000217 (A349547 (n + 1) - 1).toNat

end

end A349742.P16060528154225466500

/-! ## A349742.P11298805774998100653

`A349548(n+1)+C(A349547(n+1), 2)`
-/

namespace A349742.P11298805774998100653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349548 (n + 1) + (Nat.choose (A349547 (n + 1)).toNat 2 : ℤ)

end

end A349742.P11298805774998100653

/-! ## A349742.P13539248310162812009

`A349548(n+1)+A161680(A349547(n+1))`
-/

namespace A349742.P13539248310162812009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349548 (n + 1) + A161680 (A349547 (n + 1)).toNat

end

end A349742.P13539248310162812009

/-!
# A349743: Smallest Boolean functions from big equivalence classes representing monotone functions (subsequence of A227723).

The programs for A349743, there is no canonical definition to state claims against.
-/

/-! ## A349743.P12382530670704950969

`∩[A330099(n+1), A227723(n)]`
-/

namespace A349743.P12382530670704950969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349743.P12382530670704950969

/-! ## A349743.P2699608338654362912

`∪[A000225(n), A139449(A114393(3*n+4))]`
-/

namespace A349743.P2699608338654362912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139449 (A114393 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349743.P2699608338654362912

/-! ## A349743.P2681191302171282938

`lt[or(n, 2*n), log2(xor(n, n+1)+1)^3]`
-/

namespace A349743.P2681191302171282938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A349743.P2681191302171282938

/-! ## A349743.P5194624562004615969

`lt[xor(n, 2*n), A034953(val(n+1, 2)+2)]`
-/

namespace A349743.P5194624562004615969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (SequenceMachineLib.valuation (n + 1) 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349743.P5194624562004615969

/-! ## A349743.P5607414439402552178

`A326539(A101652(n))-1`
-/

namespace A349743.P5607414439402552178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326539 (A101652 n).toNat - 1

end

end A349743.P5607414439402552178

/-!
# A349744: a(n) is the number of distinct numbers of steps required for the last n digits of integers to repeat themselves by iterating the map m -> m^3.

The programs for A349744, there is no canonical definition to state claims against.
-/

/-! ## A349744.P2975115633313757748

`A329481(3*n+4)-A329504(A329465(n+1))`
-/

namespace A349744.P2975115633313757748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329481 (3 * n + 4) - A329504 (A329465 (n + 1)).toNat

end

end A349744.P2975115633313757748

/-!
# A349745: Numbers k for which k * gcd(sigma(k), A003961(k)) is equal to sigma(k) * gcd(k, A003961(k)), where A003961 shifts the prime factorization one step towards larger primes, and sigma is the sum of divisors function.

The programs for A349745, there is no canonical definition to state claims against.
-/

/-! ## A349745.P3599591416716896091

`floor(2/acot(A351548(n+1)))`
-/

namespace A349745.P3599591416716896091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A351548 (n + 1) : ℝ)⌋

end

end A349745.P3599591416716896091

/-! ## A349745.P7159200975631360105

`A000007(n)+2*A351548(n+1)`
-/

namespace A349745.P7159200975631360105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A351548 (n + 1)

end

end A349745.P7159200975631360105

/-! ## A349745.P17960645459495274572

`(2*A351548(n+1))^A011626(n²)`
-/

namespace A349745.P17960645459495274572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A351548 (n + 1) : ℚ) ^ (A011626 (n ^ 2) : ℤ)

end

end A349745.P17960645459495274572

/-! ## A349745.P13500437314086331673

`2*A351548(n+1)+1-A057427(n)`
-/

namespace A349745.P13500437314086331673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351548 (n + 1) + 1 - A057427 n

end

end A349745.P13500437314086331673

/-! ## A349745.P4815794409791927680

`2*A351548(n+1)+2-A040000(n)`
-/

namespace A349745.P4815794409791927680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351548 (n + 1) + (2 - A040000 n)

end

end A349745.P4815794409791927680

/-! ## A349745.P1978038534342634597

`A240467(n+4)+2*A351548(n+1)`
-/

namespace A349745.P1978038534342634597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (n + 4) + 2 * A351548 (n + 1)

end

end A349745.P1978038534342634597

/-! ## A349745.P10606475852115988843

`A240349(lcm(2, n))+2*A351548(n+1)`
-/

namespace A349745.P10606475852115988843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240349 (Nat.lcm 2 n) + 2 * A351548 (n + 1)

end

end A349745.P10606475852115988843

/-! ## A349745.P9367672825706470376

`A010054(2*n²)+2*A351548(n+1)`
-/

namespace A349745.P9367672825706470376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n ^ 2) + 2 * A351548 (n + 1)

end

end A349745.P9367672825706470376

/-! ## A349745.P11964117567006136598

`(2*A351548(n+1))^and(1, A000040(n+1))`
-/

namespace A349745.P11964117567006136598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A351548 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A349745.P11964117567006136598

/-! ## A349745.P4514245353511454629

`A179010(A000032(C(2, n+2)))+2*A351548(n+1)`
-/

namespace A349745.P4514245353511454629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179010 (A000032 (Nat.choose 2 (n + 2))).toNat + 2 * A351548 (n + 1)

end

end A349745.P4514245353511454629

/-!
# A349748: Primes p for which 2^p-1 and 5^p-1 are not relatively prime.

The programs for A349748, there is no canonical definition to state claims against.
-/

/-! ## A349748.P4442705096496085785

`A239548(n+1)-A228723(A327511(2*n+1))`
-/

namespace A349748.P4442705096496085785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239548 (n + 1) - A228723 (A327511 (2 * n + 1)).toNat

end

end A349748.P4442705096496085785

/-!
# A349749: Odd numbers k for which the 3-adic valuation of sigma(k) is equal to the 3-adic valuation of k, where sigma is the sum of divisors function.

The programs for A349749, there is no canonical definition to state claims against.
-/

/-! ## A349749.P10218050160994150961

`eq[A087557(n+2), A340832(n+1)]`
-/

namespace A349749.P10218050160994150961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087557 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349749.P10218050160994150961

/-! ## A349749.P4244516043911125411

`eq[A087558(n+2), A340832(n+1)]`
-/

namespace A349749.P4244516043911125411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087558 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349749.P4244516043911125411

/-! ## A349749.P3581106240865098644

`lt[A090538(2*(n+1)), n%2]`
-/

namespace A349749.P3581106240865098644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090538 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A349749.P3581106240865098644

/-! ## A349749.P7907454749996417259

`record[gcd(or(1, 3*n), A051390(n+1))]`
-/

namespace A349749.P7907454749996417259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 (3 * n) : ℤ) (A051390 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349749.P7907454749996417259

/-! ## A349749.P10443232518717888486

`lt[A090538(2*n+2), char[Δ[n²]]]`
-/

namespace A349749.P10443232518717888486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090538 (2 * n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A349749.P10443232518717888486

/-!
# A349750: Odd numbers k such that sigma(k) == k (mod 3), where sigma is the sum of divisors function.

The programs for A349750, there is no canonical definition to state claims against.
-/

/-! ## A349750.P10206712583436672625

`eq[A010875(n), A284429(A236924(n))]`
-/

namespace A349750.P10206712583436672625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284429 (A236924 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P10206712583436672625

/-! ## A349750.P13713264392783764729

`eq[A167294(n+1), A347883(A022144(n))]`
-/

namespace A349750.P13713264392783764729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P13713264392783764729

/-! ## A349750.P1240342210184228135

`eq[A167295(n+1), A347883(A022144(n))]`
-/

namespace A349750.P1240342210184228135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P1240342210184228135

/-! ## A349750.P4520424584864186105

`eq[A167296(n+1), A347883(A022144(n))]`
-/

namespace A349750.P4520424584864186105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P4520424584864186105

/-! ## A349750.P5996830853401195751

`eq[A167299(n+1), A347883(A022144(n))]`
-/

namespace A349750.P5996830853401195751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P5996830853401195751

/-! ## A349750.P1459241504729279597

`eq[A167302(n+1), A347883(A022144(n))]`
-/

namespace A349750.P1459241504729279597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P1459241504729279597

/-! ## A349750.P16523173546997821631

`eq[A010875(n), A284429(A000118(n))]`
-/

namespace A349750.P16523173546997821631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284429 (A000118 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349750.P16523173546997821631

/-!
# A349751: Odd numbers k such that sigma(k) == -k (mod 3), where sigma is the sum of divisors function.

The programs for A349751, there is no canonical definition to state claims against.
-/

/-! ## A349751.P14928922776064820810

`eq[0, A347883((2*n)^(n%2))]`
-/

namespace A349751.P14928922776064820810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 ((2 * n) ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349751.P14928922776064820810

/-! ## A349751.P13353261430943818355

`eq[0, A347883(A266303(n))]`
-/

namespace A349751.P13353261430943818355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A266303 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349751.P13353261430943818355

/-! ## A349751.P17915485839818912940

`∪[A002476(n+1), A351562(n+1)]`
-/

namespace A349751.P17915485839818912940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349751.P17915485839818912940

/-! ## A349751.P14104043277369639053

`∪[A272409(n+1), A351562(n+1)]`
-/

namespace A349751.P14104043277369639053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349751.P14104043277369639053

/-! ## A349751.P3481685182637750658

`∪[A349752(n+1), A351562(n+1)]`
-/

namespace A349751.P3481685182637750658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349751.P3481685182637750658

/-! ## A349751.P3962763758237302190

`eq[A167294(n+2), A347883(2*(n+1))]+1`
-/

namespace A349751.P3962763758237302190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349751.P3962763758237302190

/-! ## A349751.P4089178324471597608

`eq[A167295(n+2), A347883(2*(n+1))]+1`
-/

namespace A349751.P4089178324471597608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167295 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349751.P4089178324471597608

/-! ## A349751.P14960546648994838338

`eq[A167296(n+2), A347883(2*(n+1))]+1`
-/

namespace A349751.P14960546648994838338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167296 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349751.P14960546648994838338

/-! ## A349751.P1532676229651404286

`eq[A167299(n+2), A347883(2*(n+1))]+1`
-/

namespace A349751.P1532676229651404286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167299 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349751.P1532676229651404286

/-! ## A349751.P10723923679355993624

`eq[A167302(n+2), A347883(2*(n+1))]+1`
-/

namespace A349751.P10723923679355993624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167302 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349751.P10723923679355993624

/-!
# A349752: Odd numbers k for which the sigma(k) == -k (mod 3) and sigma(k) preserves the 3-adic valuation of k.

The programs for A349752, there is no canonical definition to state claims against.
-/

/-! ## A349752.P15482732822751949663

`∩[A349749(n+1), A349751(n+1)]`
-/

namespace A349752.P15482732822751949663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349752.P15482732822751949663

/-! ## A349752.P6119958435661352099

`filter[A349749(n+2), A273592(#)]`
-/

namespace A349752.P6119958435661352099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A349752.P6119958435661352099

/-! ## A349752.P8681336231073006871

`∩[A349749(n+1), A378501(n+1)]`
-/

namespace A349752.P8681336231073006871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349752.P8681336231073006871

/-! ## A349752.P4285093446149300034

`filter[A349749(n+2), A376451(#)]`
-/

namespace A349752.P4285093446149300034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A349752.P4285093446149300034

/-! ## A349752.P9037404070184652959

`∩[A028793(n+1), A349749(n+1)]`
-/

namespace A349752.P9037404070184652959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349752.P9037404070184652959

/-!
# A349753: Odd numbers k for which A003961(k)-2k divides A003961(k)-sigma(k), where A003961 shifts the prime factorization one step towards larger primes, and sigma is the sum of divisors function.

The programs for A349753, there is no canonical definition to state claims against.
-/

/-! ## A349753.P12656286031765875632

`∩[2*n+1, A378980(n+1)]`
-/

namespace A349753.P12656286031765875632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349753.P12656286031765875632

/-! ## A349753.P11396177062139844996

`filter[A378980(n+1), A374134(#)]`
-/

namespace A349753.P11396177062139844996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A349753.P11396177062139844996

/-! ## A349753.P15345862237347341114

`filter[A378980(n+1), A356172(#)]`
-/

namespace A349753.P15345862237347341114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A349753.P15345862237347341114

/-! ## A349753.P6098728773856711174

`∩[A378980(n+1), A004273(n)]`
-/

namespace A349753.P6098728773856711174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349753.P6098728773856711174

/-! ## A349753.P11487463398194905479

`filter[A378980(n+1), A000035(#)]`
-/

namespace A349753.P11487463398194905479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A349753.P11487463398194905479

/-!
# A349754: a(n) = phi(A003961(n)) - 2*phi(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and phi is Euler totient function.

The programs for A349754, the canonical program `A349754.P17371990951714144222` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349754 has offset 1).

The definition of A349754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349754.P804298020081946582

`A347100(n+1)-A000010(n+1)`
-/

namespace A349754.P804298020081946582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347100 (n + 1) - A000010 (n + 1)

end

end A349754.P804298020081946582

namespace A349754

/-- `A347100(n+1)-A000010(n+1)` -/
def P804298020081946582.Spec : Prop :=
  ∀ n, P804298020081946582.a n = A349754 (n + 1)

theorem P804298020081946582.correct : P804298020081946582.Spec := by
  intro n
  simp only [A349754, Nat.add_sub_cancel, A349754.P804298020081946582.a, A349754.P17371990951714144222.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A347100, A347100.P3607054361798720330.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A253885, A253885.P16715555451856890624.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349754

/-! ## A349754.P11749888226968333313

`A337549(n+1)-A083254(n+1)`
-/

namespace A349754.P11749888226968333313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337549 (n + 1) - A083254 (n + 1)

end

end A349754.P11749888226968333313

namespace A349754

/-- `A337549(n+1)-A083254(n+1)` -/
def P11749888226968333313.Spec : Prop :=
  ∀ n, P11749888226968333313.a n = A349754 (n + 1)

theorem P11749888226968333313.correct : P11749888226968333313.Spec := by
  intro n
  simp only [A349754, Nat.add_sub_cancel, A349754.P11749888226968333313.a, A349754.P17371990951714144222.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A083254, A083254.P7544960031424623367.a, A337549, A337549.P3151164375738502961.a, A003557, A003557.P6364735403900941810.a, A003972, A003972.P2423200350467876597.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A253885, A253885.P16715555451856890624.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349754

/-! ## A349754.P9857392387960286096

`A003972(n+1)-2*A000010(n+1)`
-/

namespace A349754.P9857392387960286096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - 2 * A000010 (n + 1)

end

end A349754.P9857392387960286096

namespace A349754

/-- `A003972(n+1)-2*A000010(n+1)` -/
def P9857392387960286096.Spec : Prop :=
  ∀ n, P9857392387960286096.a n = A349754 (n + 1)

end A349754

/-! ## A349754.P2079395219069411360

`∑{d}[n+1, A008683((n+1)/#)*A252748(#)]`
-/

namespace A349754.P2079395219069411360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A252748 d

end

end A349754.P2079395219069411360

namespace A349754

/-- `∑{d}[n+1, A008683((n+1)/#)*A252748(#)]` -/
def P2079395219069411360.Spec : Prop :=
  ∀ n, P2079395219069411360.a n = A349754 (n + 1)

end A349754

/-! ## A349754.P17371990951714144222

`A000010(A003961(n+1))-2*A000010(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349754

/-- `A000010(A003961(n+1))-2*A000010(n+1)` -/
def P17371990951714144222.Spec : Prop :=
  ∀ n, P17371990951714144222.a n = A349754 (n + 1)

theorem P17371990951714144222.correct : P17371990951714144222.Spec := by
  intro n
  simp only [A349754, Nat.add_sub_cancel]

end A349754

/-! ## A349754.P1841563035655479806

`2*A347100(n+1)-A003972(n+1)`
-/

namespace A349754.P1841563035655479806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347100 (n + 1) - A003972 (n + 1)

end

end A349754.P1841563035655479806

namespace A349754

/-- `2*A347100(n+1)-A003972(n+1)` -/
def P1841563035655479806.Spec : Prop :=
  ∀ n, P1841563035655479806.a n = A349754 (n + 1)

theorem P1841563035655479806.correct : P1841563035655479806.Spec := by
  intro n
  simp only [A349754, Nat.add_sub_cancel, A349754.P1841563035655479806.a, A349754.P17371990951714144222.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A003972, A003972.P2423200350467876597.a, A347100, A347100.P3607054361798720330.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A253885, A253885.P16715555451856890624.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349754

/-! ## A349754.P12122413359728996593

`A003972(n+1)-A004275(A039649(n+1))`
-/

namespace A349754.P12122413359728996593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - A004275 (A039649 (n + 1)).toNat

end

end A349754.P12122413359728996593

namespace A349754

/-- `A003972(n+1)-A004275(A039649(n+1))` -/
def P12122413359728996593.Spec : Prop :=
  ∀ n, P12122413359728996593.a n = A349754 (n + 1)

end A349754

/-! ## A349754.P17514036122446894114

`A003972(n+1)+A347122(n+1)-A347137(n+1)`
-/

namespace A349754.P17514036122446894114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) + (A347122 (n + 1) - A347137 (n + 1))

end

end A349754.P17514036122446894114

namespace A349754

/-- `A003972(n+1)+A347122(n+1)-A347137(n+1)` -/
def P17514036122446894114.Spec : Prop :=
  ∀ n, P17514036122446894114.a n = A349754 (n + 1)

theorem P17514036122446894114.correct : P17514036122446894114.Spec := by
  intro n
  simp only [A349754, Nat.add_sub_cancel, A349754.P17514036122446894114.a, A349754.P17371990951714144222.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A003972, A003972.P2423200350467876597.a, A347122, A347122.P16124771186689615703.a, A347137, A347137.P9582024218945356949.f1, A347137.P9582024218945356949.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A253885, A253885.P16715555451856890624.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349754

/-! ## A349754.P7997510309721054598

`A000010(A045965(n+1))-2*A000010(n+1)`
-/

namespace A349754.P7997510309721054598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045965 (n + 1)).toNat - 2 * A000010 (n + 1)

end

end A349754.P7997510309721054598

namespace A349754

/-- `A000010(A045965(n+1))-2*A000010(n+1)` -/
def P7997510309721054598.Spec : Prop :=
  ∀ n, P7997510309721054598.a n = A349754 (n + 1)

end A349754

/-! ## A349754.P15704839130363880128

`A003972(n+1)-2*A349127(A003961(n+1))`
-/

namespace A349754.P15704839130363880128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - 2 * A349127 (A003961 (n + 1)).toNat

end

end A349754.P15704839130363880128

namespace A349754

/-- `A003972(n+1)-2*A349127(A003961(n+1))` -/
def P15704839130363880128.Spec : Prop :=
  ∀ n, P15704839130363880128.a n = A349754 (n + 1)

end A349754

/-!
# A349755: Numbers k for which the 3-adic valuations of k and sigma(k) are equal, and that also satisfy Euler's criterion for odd perfect numbers (see A228058).

The programs for A349755, there is no canonical definition to state claims against.
-/

/-! ## A349755.P6209963014946235287

`A387162(n+1)+A000007(A171673(n+1))`
-/

namespace A349755.P6209963014946235287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A000007 (A171673 (n + 1)).toNat

end

end A349755.P6209963014946235287

/-! ## A349755.P2117488684166085988

`A387162(n+1)%A128388(A255925(n+1))`
-/

namespace A349755.P2117488684166085988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387162 (n + 1)) (A128388 (A255925 (n + 1)).toNat)

end

end A349755.P2117488684166085988

/-! ## A349755.P3768193986888211160

`A074206(A005384(3*(n+1)))*A387162(n+1)`
-/

namespace A349755.P3768193986888211160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A005384 (3 * (n + 1))).toNat * A387162 (n + 1)

end

end A349755.P3768193986888211160

/-! ## A349755.P8117402891707743775

`A387162(n+1)+A359780(A387162(2*(n+1)))`
-/

namespace A349755.P8117402891707743775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A359780 (A387162 (2 * (n + 1))).toNat

end

end A349755.P8117402891707743775

/-! ## A349755.P3022795903015701735

`A387162(n+1)+A067856(A387162(2*n+5))`
-/

namespace A349755.P3022795903015701735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A067856 (A387162 (2 * n + 5)).toNat

end

end A349755.P3022795903015701735

/-! ## A349755.P720773227462336816

`A304495(A387162(2*n+5)+1)*A387162(n+1)`
-/

namespace A349755.P720773227462336816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 (A387162 (2 * n + 5) + 1).toNat * A387162 (n + 1)

end

end A349755.P720773227462336816

/-! ## A349755.P10685878414865088273

`A387162(n+1)+A008683(A387162(3*n+2))`
-/

namespace A349755.P10685878414865088273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A008683 (A387162 (3 * n + 2)).toNat

end

end A349755.P10685878414865088273

/-! ## A349755.P14263128788536984491

`A387162(n+1)+A323514(A080386(2*n+1))`
-/

namespace A349755.P14263128788536984491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A323514 (A080386 (2 * n + 1)).toNat

end

end A349755.P14263128788536984491

/-! ## A349755.P5313482058193081153

`or(A245933(3*(n+1))-1, A387162(n+1))`
-/

namespace A349755.P5313482058193081153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245933 (3 * (n + 1)) - 1) (A387162 (n + 1))

end

end A349755.P5313482058193081153

/-! ## A349755.P14436873417286533291

`A387162(n+1)+A000007(A285573(n+1))`
-/

namespace A349755.P14436873417286533291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387162 (n + 1) + A000007 (A285573 (n + 1)).toNat

end

end A349755.P14436873417286533291

/-!
# A349756: Numbers k such that the odd part of sigma(k) is equal to gcd(sigma(k), A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A349756, the canonical program `A349756.P8922585120578040547` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349756 has offset 1).

The definition of A349756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349756.P1525430317118595265

`filter[A351554(n+1), A355946(#)]`
-/

namespace A349756.P1525430317118595265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P1525430317118595265

namespace A349756

/-- `filter[A351554(n+1), A355946(#)]` -/
def P1525430317118595265.Spec : Prop :=
  ∀ n, P1525430317118595265.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P13627463328750503053

`filter[A305810(n+1), A355946(#)]`
-/

namespace A349756.P13627463328750503053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P13627463328750503053

namespace A349756

/-- `filter[A305810(n+1), A355946(#)]` -/
def P13627463328750503053.Spec : Prop :=
  ∀ n, P13627463328750503053.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P17966644395595047257

`filter[A305900(n+1), A355946(#)]`
-/

namespace A349756.P17966644395595047257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P17966644395595047257

namespace A349756

/-- `filter[A305900(n+1), A355946(#)]` -/
def P17966644395595047257.Spec : Prop :=
  ∀ n, P17966644395595047257.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P943723440448335970

`filter[A305901(n+1), A355946(#)]`
-/

namespace A349756.P943723440448335970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P943723440448335970

namespace A349756

/-- `filter[A305901(n+1), A355946(#)]` -/
def P943723440448335970.Spec : Prop :=
  ∀ n, P943723440448335970.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P10497577620112723117

`filter[A305902(n+1), A355946(#)]`
-/

namespace A349756.P10497577620112723117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P10497577620112723117

namespace A349756

/-- `filter[A305902(n+1), A355946(#)]` -/
def P10497577620112723117.Spec : Prop :=
  ∀ n, P10497577620112723117.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P1262040746293649060

`eq[1, A348992(n+1)]+1`
-/

namespace A349756.P1262040746293649060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A349756.P1262040746293649060

namespace A349756

/-- `eq[1, A348992(n+1)]+1` -/
def P1262040746293649060.Spec : Prop :=
  ∀ n, (P1262040746293649060.a n : ℤ) = A349756 (n + 1)

end A349756

/-! ## A349756.P8922585120578040547

`eq[1, A348993(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A349756

/-- `eq[1, A348993(n+1)]+1` -/
def P8922585120578040547.Spec : Prop :=
  ∀ n, (P8922585120578040547.a n : ℤ) = A349756 (n + 1)

theorem P8922585120578040547.correct : P8922585120578040547.Spec := by
  intro n
  simp only [A349756, Nat.add_sub_cancel]

end A349756

/-! ## A349756.P139494323943914663

`record[A000027(n+1)/A348992(n+1)]`
-/

namespace A349756.P139494323943914663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A348992 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349756.P139494323943914663

namespace A349756

/-- `record[A000027(n+1)/A348992(n+1)]` -/
def P139494323943914663.Spec : Prop :=
  ∀ n, P139494323943914663.a n = (A349756 (n + 1) : ℚ)

end A349756

/-! ## A349756.P2982356144737798082

`record[A000027(n+1)/A348993(n+1)]`
-/

namespace A349756.P2982356144737798082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A348993 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349756.P2982356144737798082

namespace A349756

/-- `record[A000027(n+1)/A348993(n+1)]` -/
def P2982356144737798082.Spec : Prop :=
  ∀ n, P2982356144737798082.a n = (A349756 (n + 1) : ℚ)

end A349756

/-! ## A349756.P13622033582045198810

`record[(n+1)/A000265(A349162(n+1))]`
-/

namespace A349756.P13622033582045198810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A349162 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349756.P13622033582045198810

namespace A349756

/-- `record[(n+1)/A000265(A349162(n+1))]` -/
def P13622033582045198810.Spec : Prop :=
  ∀ n, P13622033582045198810.a n = (A349756 (n + 1) : ℚ)

end A349756

/-! ## A349756.P3033445209909004451

`record[A344180(n)/A348993(A344180(n))]`
-/

namespace A349756.P3033445209909004451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344180 n : ℚ) / (A348993 (A344180 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349756.P3033445209909004451

namespace A349756

/-- `record[A344180(n)/A348993(A344180(n))]` -/
def P3033445209909004451.Spec : Prop :=
  ∀ n, P3033445209909004451.a n = (A349756 (n + 1) : ℚ)

end A349756

/-! ## A349756.P551369017076666387

`filter[A255003(n+1), A355946(#)]`
-/

namespace A349756.P551369017076666387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P551369017076666387

namespace A349756

/-- `filter[A255003(n+1), A355946(#)]` -/
def P551369017076666387.Spec : Prop :=
  ∀ n, P551369017076666387.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P8264001901894069986

`eq[A161942(n+1), A342671(n+1)]+1`
-/

namespace A349756.P8264001901894069986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349756.P8264001901894069986

namespace A349756

/-- `eq[A161942(n+1), A342671(n+1)]+1` -/
def P8264001901894069986.Spec : Prop :=
  ∀ n, (P8264001901894069986.a n : ℤ) = A349756 (n + 1)

end A349756

/-! ## A349756.P6782763011178207172

`filter[A047226(n+2), A355946(#)]`
-/

namespace A349756.P6782763011178207172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P6782763011178207172

namespace A349756

/-- `filter[A047226(n+2), A355946(#)]` -/
def P6782763011178207172.Spec : Prop :=
  ∀ n, P6782763011178207172.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P11323909561151174374

`filter[A137409(n+1), A355946(#)]`
-/

namespace A349756.P11323909561151174374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P11323909561151174374

namespace A349756

/-- `filter[A137409(n+1), A355946(#)]` -/
def P11323909561151174374.Spec : Prop :=
  ∀ n, P11323909561151174374.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P2435931762990341100

`filter[A144972(n+1), A355946(#)]`
-/

namespace A349756.P2435931762990341100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P2435931762990341100

namespace A349756

/-- `filter[A144972(n+1), A355946(#)]` -/
def P2435931762990341100.Spec : Prop :=
  ∀ n, P2435931762990341100.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P12816411932882059720

`filter[A214879(n+2), A355946(#)]`
-/

namespace A349756.P12816411932882059720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P12816411932882059720

namespace A349756

/-- `filter[A214879(n+2), A355946(#)]` -/
def P12816411932882059720.Spec : Prop :=
  ∀ n, P12816411932882059720.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P3266643821011199191

`filter[A090964(n), A355946(#)]`
-/

namespace A349756.P3266643821011199191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P3266643821011199191

namespace A349756

/-- `filter[A090964(n), A355946(#)]` -/
def P3266643821011199191.Spec : Prop :=
  ∀ n, P3266643821011199191.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P7075373200827539085

`filter[A133259(n), A355946(#)]`
-/

namespace A349756.P7075373200827539085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P7075373200827539085

namespace A349756

/-- `filter[A133259(n), A355946(#)]` -/
def P7075373200827539085.Spec : Prop :=
  ∀ n, P7075373200827539085.a n = A349756 (n + 1)

end A349756

/-! ## A349756.P12631018575465853920

`filter[A065187(n+1), A355946(#)]`
-/

namespace A349756.P12631018575465853920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355946 (f1 j).toNat = 1) n)

end

end A349756.P12631018575465853920

namespace A349756

/-- `filter[A065187(n+1), A355946(#)]` -/
def P12631018575465853920.Spec : Prop :=
  ∀ n, P12631018575465853920.a n = A349756 (n + 1)

end A349756

/-!
# A349757: Even numbers that are both the sum of a twin prime pair and the sum of 1 and a prime.

The programs for A349757, there is no canonical definition to state claims against.
-/

/-! ## A349757.P13364192026049215725

`A118072(n+1)+1`
-/

namespace A349757.P13364192026049215725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118072 (n + 1) + 1

end

end A349757.P13364192026049215725

/-! ## A349757.P13912412085705962097

`2*(A045536(n+1)+1)`
-/

namespace A349757.P13912412085705962097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045536 (n + 1) + 1)

end

end A349757.P13912412085705962097

/-! ## A349757.P17781878821996839528

`p?[A108605(n+1)+1]+1`
-/

namespace A349757.P17781878821996839528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A349757.P17781878821996839528

/-! ## A349757.P2840698949810525527

`p?[A054735(n+1)-1]+1`
-/

namespace A349757.P2840698949810525527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A349757.P2840698949810525527

/-! ## A349757.P13180838340019935477

`p?[Δ[C(A000040(n+2), 2)]]+1`
-/

namespace A349757.P13180838340019935477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A349757.P13180838340019935477

/-!
# A349758: Nobly abundant numbers: numbers k such that both d(k) = A000005(k) and sigma(k) = A000203(k) are abundant numbers (A005101).

The programs for A349758, there is no canonical definition to state claims against.
-/

/-! ## A349758.P6871158707696290329

`A036457(lt[n, A231929(3*n)])`
-/

namespace A349758.P6871158707696290329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231929 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A349758.P6871158707696290329

/-! ## A349758.P7665126750730440458

`record[A036457(A049108(2*n+1))]`
-/

namespace A349758.P7665126750730440458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (A049108 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349758.P7665126750730440458

/-! ## A349758.P11452019667028943511

`record[A036457(gcd(n, A049108(n+1)))]`
-/

namespace A349758.P11452019667028943511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (Int.gcd (n : ℤ) (A049108 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349758.P11452019667028943511

/-! ## A349758.P10551839653176119137

`record[A036457(A049108(n+1)-A200815(n+3))]`
-/

namespace A349758.P10551839653176119137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (A049108 (n + 1) - A200815 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349758.P10551839653176119137

/-! ## A349758.P17196155618314218771

`A030630(n+2)-A049084(A251113(n+1))`
-/

namespace A349758.P17196155618314218771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 2) - A049084 (A251113 (n + 1)).toNat

end

end A349758.P17196155618314218771

/-!
# A349760: Numbers k such that d(k) = A000005(k), sigma(k) = A000203(k) and phi(k) = A000010(k) are all abundant numbers (A005101).

The programs for A349760, there is no canonical definition to state claims against.
-/

/-! ## A349760.P13490974170342113264

`∩[A208135(n+1), A349758(n+1)]`
-/

namespace A349760.P13490974170342113264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349760.P13490974170342113264

/-! ## A349760.P8232913791777084188

`A349758(A324884(C(n+8, 8)+1)+n+1)`
-/

namespace A349760.P8232913791777084188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (A324884 (Nat.choose (n + 8) 8 + 1) + (n + 1 : ℤ)).toNat

end

end A349760.P8232913791777084188

/-! ## A349760.P5381999658110981010

`∩[A316262(n+1), A349758(n+1)]`
-/

namespace A349760.P5381999658110981010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349760.P5381999658110981010

/-!
# A349762: Numbers k such that phi(k) = A000010(k) is an abundant number (A005101) and d(k) = A000005(k) is a deficient number (A005100).

The programs for A349762, there is no canonical definition to state claims against.
-/

/-! ## A349762.P3150569313588769830

`lt[A340955(A089120(3*n+4)), A060749(n+1)]`
-/

namespace A349762.P3150569313588769830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340955 ((A089120 (3 * n + 4)).toNat + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349762.P3150569313588769830

/-! ## A349762.P395025696254135582

`A004169(lt[A345881(3*n+4), A153651(n+1)])`
-/

namespace A349762.P395025696254135582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345881 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349762.P395025696254135582

/-! ## A349762.P12299833721297637685

`lt[A225554(n+3), A222063(A225530(n))]`
-/

namespace A349762.P12299833721297637685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225554 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222063 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349762.P12299833721297637685

/-! ## A349762.P9736351362288960633

`lt[A050440(n+1), A126736(A336395(3*n+4))]`
-/

namespace A349762.P9736351362288960633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126736 (A336395 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349762.P9736351362288960633

/-! ## A349762.P12544522061186016283

`lt[A107925(n+1), A126736(A336395(3*n+4))]`
-/

namespace A349762.P12544522061186016283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126736 (A336395 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349762.P12544522061186016283

/-!
# A349766: Numbers of the form 2*t^2 - 4 when t > 1 is a term in A001541.

The programs for A349766, the canonical program `A349766.P6701281821526121075` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349766 has offset 1).

The definition of A349766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349766.P11773576969706146276

`ogf((14+84x-2x^2)/(1-35x+35x^2-x^3))`
-/

namespace A349766.P11773576969706146276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, 84, -2] [1, -35, 35, -1] n

end

end A349766.P11773576969706146276

namespace A349766

/-- `ogf((14+84x-2x^2)/(1-35x+35x^2-x^3))` -/
def P11773576969706146276.Spec : Prop :=
  ∀ n, P11773576969706146276.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P6701281821526121075

`16*A001110(n+1)-2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349766

/-- `16*A001110(n+1)-2` -/
def P6701281821526121075.Spec : Prop :=
  ∀ n, P6701281821526121075.a n = A349766 (n + 1)

theorem P6701281821526121075.correct : P6701281821526121075.Spec := by
  intro n
  simp only [A349766, Nat.add_sub_cancel]

end A349766

/-! ## A349766.P6331795865359034927

`A056771(n+1)-3`
-/

namespace A349766.P6331795865359034927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056771 (n + 1) - 3

end

end A349766.P6331795865359034927

namespace A349766

/-- `A056771(n+1)-3` -/
def P6331795865359034927.Spec : Prop :=
  ∀ n, P6331795865359034927.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P15119584608703238347

`Δ[A182190(n)]²-2`
-/

namespace A349766.P15119584608703238347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 2

end

end A349766.P15119584608703238347

namespace A349766

/-- `Δ[A182190(n)]²-2` -/
def P15119584608703238347.Spec : Prop :=
  ∀ n, P15119584608703238347.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P14387054775290681748

`A041542(Δ[n²])-3`
-/

namespace A349766.P14387054775290681748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A349766.P14387054775290681748

namespace A349766

/-- `A041542(Δ[n²])-3` -/
def P14387054775290681748.Spec : Prop :=
  ∀ n, P14387054775290681748.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P1434672703864559468

`A005319(n+1)²-2`
-/

namespace A349766.P1434672703864559468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 (n + 1) ^ 2 - 2

end

end A349766.P1434672703864559468

namespace A349766

/-- `A005319(n+1)²-2` -/
def P1434672703864559468.Spec : Prop :=
  ∀ n, P1434672703864559468.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P4827772447039685688

`Δ[A253826(n+1)]-3`
-/

namespace A349766.P4827772447039685688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A349766.P4827772447039685688

namespace A349766

/-- `Δ[A253826(n+1)]-3` -/
def P4827772447039685688.Spec : Prop :=
  ∀ n, P4827772447039685688.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P6405600812617865881

`A041026(2*n+1)-3`
-/

namespace A349766.P6405600812617865881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041026 (2 * n + 1) - 3

end

end A349766.P6405600812617865881

namespace A349766

/-- `A041026(2*n+1)-3` -/
def P6405600812617865881.Spec : Prop :=
  ∀ n, P6405600812617865881.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P6150945027385978311

`A041126(2*n+1)-3`
-/

namespace A349766.P6150945027385978311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041126 (2 * n + 1) - 3

end

end A349766.P6150945027385978311

namespace A349766

/-- `A041126(2*n+1)-3` -/
def P6150945027385978311.Spec : Prop :=
  ∀ n, P6150945027385978311.a n = A349766 (n + 1)

end A349766

/-! ## A349766.P15748239674687303142

`A184327(2*(n+1))-3`
-/

namespace A349766.P15748239674687303142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184327 (2 * (n + 1)) - 3

end

end A349766.P15748239674687303142

namespace A349766

/-- `A184327(2*(n+1))-3` -/
def P15748239674687303142.Spec : Prop :=
  ∀ n, P15748239674687303142.a n = A349766 (n + 1)

end A349766

/-!
# A349767: Numbers m such that 2^m - m is divisible by 5.

The programs for A349767, the canonical program `A349767.P16409703046552914208` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349767 has offset 1).

The definition of A349767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349767.P16409703046552914208

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=14, a(2)=16, a(3)=17, a(4)=23`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349767

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16409703046552914208.Spec : Prop :=
  ∀ n, P16409703046552914208.a n = A349767 (n + 1)

theorem P16409703046552914208.correct : P16409703046552914208.Spec := by
  intro n
  simp only [A349767, Nat.add_sub_cancel]

end A349767

/-! ## A349767.P17349797574712552570

`a(n-4)+20` with `a(0)=3, a(1)=14, a(2)=16, a(3)=17`
-/

namespace A349767.P17349797574712552570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 14, 16, 17] fun n a =>
  a (n - 4) + 20

end

end A349767.P17349797574712552570

namespace A349767

/-- `a(n-4)+20` -/
def P17349797574712552570.Spec : Prop :=
  ∀ n, (P17349797574712552570.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P6043508510120117396

`xor(2, A072682(n+1)/3)`
-/

namespace A349767.P6043508510120117396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway ((A072682 (n + 1) : ℚ) / 3))

end

end A349767.P6043508510120117396

namespace A349767

/-- `xor(2, A072682(n+1)/3)` -/
def P6043508510120117396.Spec : Prop :=
  ∀ n, P6043508510120117396.a n = A349767 (n + 1)

end A349767

/-! ## A349767.P11825244226261189613

`∪[A072682(n+1), A072709(n+1)]`
-/

namespace A349767.P11825244226261189613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349767.P11825244226261189613

namespace A349767

/-- `∪[A072682(n+1), A072709(n+1)]` -/
def P11825244226261189613.Spec : Prop :=
  ∀ n, (P11825244226261189613.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P12534997798752212572

`∪[A067844(n+1), A322490(n+1)]`
-/

namespace A349767.P12534997798752212572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349767.P12534997798752212572

namespace A349767

/-- `∪[A067844(n+1), A322490(n+1)]` -/
def P12534997798752212572.Spec : Prop :=
  ∀ n, (P12534997798752212572.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P14588331512873887720

`A326422(A047551(n+2))`
-/

namespace A349767.P14588331512873887720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (A047551 (n + 2)).toNat

end

end A349767.P14588331512873887720

namespace A349767

/-- `A326422(A047551(n+2))` -/
def P14588331512873887720.Spec : Prop :=
  ∀ n, P14588331512873887720.a n = A349767 (n + 1)

end A349767

/-! ## A349767.P9403390546659949611

`A326422(A047575(n+1)+1)`
-/

namespace A349767.P9403390546659949611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (A047575 (n + 1) + 1).toNat

end

end A349767.P9403390546659949611

namespace A349767

/-- `A326422(A047575(n+1)+1)` -/
def P9403390546659949611.Spec : Prop :=
  ∀ n, P9403390546659949611.a n = A349767 (n + 1)

end A349767

/-! ## A349767.P11294851214392629788

`A004443(A072682(n+1)/3)`
-/

namespace A349767.P11294851214392629788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (SequenceMachineLib.roundAway ((A072682 (n + 1) : ℚ) / 3)).toNat

end

end A349767.P11294851214392629788

namespace A349767

/-- `A004443(A072682(n+1)/3)` -/
def P11294851214392629788.Spec : Prop :=
  ∀ n, P11294851214392629788.a n = A349767 (n + 1)

end A349767

/-! ## A349767.P14472955612163060074

`eq[A082116(n), A104435(n+1)]`
-/

namespace A349767.P14472955612163060074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349767.P14472955612163060074

namespace A349767

/-- `eq[A082116(n), A104435(n+1)]` -/
def P14472955612163060074.Spec : Prop :=
  ∀ n, (P14472955612163060074.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P14796932688368956947

`eq[A082116(n), A140685(n+1)]`
-/

namespace A349767.P14796932688368956947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349767.P14796932688368956947

namespace A349767

/-- `eq[A082116(n), A140685(n+1)]` -/
def P14796932688368956947.Spec : Prop :=
  ∀ n, (P14796932688368956947.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P13605611268555110110

`eq[A082116(n), A165063(n+1)]`
-/

namespace A349767.P13605611268555110110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349767.P13605611268555110110

namespace A349767

/-- `eq[A082116(n), A165063(n+1)]` -/
def P13605611268555110110.Spec : Prop :=
  ∀ n, (P13605611268555110110.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P8336852192904567815

`eq[A082116(n), A236213(n+1)]`
-/

namespace A349767.P8336852192904567815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349767.P8336852192904567815

namespace A349767

/-- `eq[A082116(n), A236213(n+1)]` -/
def P8336852192904567815.Spec : Prop :=
  ∀ n, (P8336852192904567815.a n : ℤ) = A349767 (n + 1)

end A349767

/-! ## A349767.P8083500640685081885

`eq[2, gcd(A008574(n), A082116(n))]`
-/

namespace A349767.P8083500640685081885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 n) (A082116 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A349767.P8083500640685081885

namespace A349767

/-- `eq[2, gcd(A008574(n), A082116(n))]` -/
def P8083500640685081885.Spec : Prop :=
  ∀ n, (P8083500640685081885.a n : ℤ) = A349767 (n + 1)

end A349767

/-!
# A349768: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k) * binomial(2*k,k) / (k+1).

The programs for A349768, the canonical program `A349768.P3869991595880932063` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349768 has offset 0).

The definition of A349768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349768.P3869991595880932063

`∑{#}[n, C(n, #)*C(n+#, #)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349768

/-- `∑{#}[n, C(n, #)*C(n+#, #)*C(2*#, #)/(#+1)]` -/
def P3869991595880932063.Spec : Prop :=
  ∀ n, P3869991595880932063.a n = (A349768 n : ℚ)

end A349768

/-!
# A349769: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(k,floor(k/2)).

The programs for A349769, the canonical program `A349769.P1269450976177643786` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349769 has offset 0).

The definition of A349769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(#, floor(#/2))]` (program `A349769.P1269450976177643786`, by `A349769.P1269450976177643786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349769.P1269450976177643786

`∑{#}[n, C(n, #)²*C(#, floor(#/2))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A349769

/-- `∑{#}[n, C(n, #)²*C(#, floor(#/2))]` -/
def P1269450976177643786.Spec : Prop :=
  ∀ n, (P1269450976177643786.a n : ℤ) = A349769 n

theorem P1269450976177643786.correct : P1269450976177643786.Spec := by
  intro n
  simp only [A349769]

end A349769

/-! ## A349769.P13304051968917101178

`A349095(A148467(n+1))`
-/

namespace A349769.P13304051968917101178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (A148467 (n + 1)).toNat

end

end A349769.P13304051968917101178

namespace A349769

/-- `A349095(A148467(n+1))` -/
def P13304051968917101178.Spec : Prop :=
  ∀ n, P13304051968917101178.a n = A349769 n

end A349769

/-!
# A349770: a(n) = Sum_{d|n} usigma(d) * usigma(n/d).

The programs for A349770, the canonical program `A349770.P12946265739044333858` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349770 has offset 1).

The definition of A349770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349770.P12946265739044333858

`∑{d}[n+1, A034448(#)*A034448((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A349770

/-- `∑{d}[n+1, A034448(#)*A034448((n+1)/#)]` -/
def P12946265739044333858.Spec : Prop :=
  ∀ n, P12946265739044333858.a n = A349770 (n + 1)

theorem P12946265739044333858.correct : P12946265739044333858.Spec := by
  intro n
  simp only [A349770, Nat.add_sub_cancel]

end A349770

/-! ## A349770.P3317243547722272377

`∑{d}[n+1, A254503(#)*A328485((n+1)/#)]`
-/

namespace A349770.P3317243547722272377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349770.P3317243547722272377

namespace A349770

/-- `∑{d}[n+1, A254503(#)*A328485((n+1)/#)]` -/
def P3317243547722272377.Spec : Prop :=
  ∀ n, P3317243547722272377.a n = A349770 (n + 1)

end A349770

/-!
# A349771: Integers k with an odd number of digits such that, if m is the number formed from k by deleting its middle digit, then k/m is an integer.

The programs for A349771, there is no canonical definition to state claims against.
-/

/-! ## A349771.P5700497115123709405

`A108343(n+1)+and(64, n)`
-/

namespace A349771.P5700497115123709405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (n + 1) + (Nat.land 64 n : ℤ)

end

end A349771.P5700497115123709405

/-! ## A349771.P3082910579971856904

`A108343(A296882(n+1))`
-/

namespace A349771.P3082910579971856904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (A296882 (n + 1)).toNat

end

end A349771.P3082910579971856904

/-! ## A349771.P15814690658107044435

`A108343(A304042(n)+n)`
-/

namespace A349771.P15814690658107044435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (A304042 n + (n : ℤ)).toNat

end

end A349771.P15814690658107044435

/-! ## A349771.P15848424404532284511

`A108343(A266279(n+1)+1)`
-/

namespace A349771.P15848424404532284511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (A266279 (n + 1) + 1).toNat

end

end A349771.P15848424404532284511

/-! ## A349771.P15455664484074747823

`A108343(A001637(n+1)-9)`
-/

namespace A349771.P15455664484074747823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (A001637 (n + 1) - 9).toNat

end

end A349771.P15455664484074747823

/-! ## A349771.P1731656272868114636

`A108343(n+1)+A025439(n)`
-/

namespace A349771.P1731656272868114636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (n + 1) + A025439 n

end

end A349771.P1731656272868114636

/-! ## A349771.P11169657150060398088

`A108343(n+1)+A025444(n)`
-/

namespace A349771.P11169657150060398088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108343 (n + 1) + A025444 n

end

end A349771.P11169657150060398088

/-! ## A349771.P15923494192579972695

`or(A108343(n+1), A178333(n))`
-/

namespace A349771.P15923494192579972695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108343 (n + 1)) (A178333 n)

end

end A349771.P15923494192579972695

/-! ## A349771.P4517337448128628334

`A025457(n)!*A108343(n+1)`
-/

namespace A349771.P4517337448128628334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025457 n).toNat : ℤ) * A108343 (n + 1)

end

end A349771.P4517337448128628334

/-! ## A349771.P12629612667478927340

`A086015(n)!*A108343(n+1)`
-/

namespace A349771.P12629612667478927340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A086015 n).toNat : ℤ) * A108343 (n + 1)

end

end A349771.P12629612667478927340

/-!
# A349772: Consider primitive 120-degree integer triangles with sides A < B < C = A002476(n). This sequence gives the values of A.

The programs for A349772, there is no canonical definition to state claims against.
-/

/-! ## A349772.P3045253727993075536

`A088514(eq[A035629(n+1), A055641(n)])`
-/

namespace A349772.P3045253727993075536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A349772.P3045253727993075536

/-! ## A349772.P7403265712863015169

`A088514(∑[A007737(n+1)!])`
-/

namespace A349772.P7403265712863015169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349772.P7403265712863015169

/-! ## A349772.P10863847061235704744

`A088514(∑[A231285(n+2)!])`
-/

namespace A349772.P10863847061235704744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A231285 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349772.P10863847061235704744

/-! ## A349772.P4056541461999895086

`A088514(A172033(A039723(n))+n)`
-/

namespace A349772.P4056541461999895086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088514 (A172033 (A039723 n).toNat + (n : ℤ)).toNat

end

end A349772.P4056541461999895086

/-! ## A349772.P14808985839537245784

`A088514(A087019(n)+A086394(n+1))`
-/

namespace A349772.P14808985839537245784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088514 (A087019 n + A086394 (n + 1)).toNat

end

end A349772.P14808985839537245784

/-!
# A349773: Numbers that start a run of four consecutive triangular numbers with four distinct prime factors.

The programs for A349773, there is no canonical definition to state claims against.
-/

/-! ## A349773.P6727853984879431335

`A000217(A293878(n+5)^A327148(n))`
-/

namespace A349773.P6727853984879431335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A293878 (n + 5) : ℚ) ^ (A327148 n : ℤ))).toNat

end

end A349773.P6727853984879431335

/-!
# A349775: The maximum cardinality of an irreducible subset of {0, 1, 2, ..., n}.

The programs for A349775, there is no canonical definition to state claims against.
-/

/-! ## A349775.P10513120198849009301

`ceil(n-tan(2)-sqrt(n+1))`
-/

namespace A349775.P10513120198849009301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.tan (2 : ℝ) - Real.sqrt (n + 1 : ℝ)⌉

end

end A349775.P10513120198849009301

/-! ## A349775.P14137470531711301629

`round(sqrt((n+2-sqrt(n))²+n))`
-/

namespace A349775.P14137470531711301629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 2 : ℝ) - Real.sqrt (n : ℝ)) ^ 2 + (n : ℝ)))

end

end A349775.P14137470531711301629

/-! ## A349775.P15389276832578547538

`n+3-round(sqrt(comp[C(2*n, 2)]))`
-/

namespace A349775.P15389276832578547538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A349775.P15389276832578547538

/-! ## A349775.P5844084691441270165

`n+3-ceil(sqrt(char[C(4, n)]+n))`
-/

namespace A349775.P5844084691441270165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ⌈Real.sqrt (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℝ)⌉

end

end A349775.P5844084691441270165

/-! ## A349775.P7508234987759034866

`floor(log2(A191792(n+2)))+1`
-/

namespace A349775.P7508234987759034866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A191792 (n + 2)).toNat + 1

end

end A349775.P7508234987759034866

/-!
# A349776: Triangle read by rows: T(n,k) is the number of partitions of set [n] into a set of at most k lists, with 0 <= k <= n. Also called broken permutations.

The programs for A349776, there is no canonical definition to state claims against.
-/

/-! ## A349776.P2554338484471669912

`lcm(A167040(n)!, A135313(n))`
-/

namespace A349776.P2554338484471669912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A167040 n).toNat : ℤ) (A135313 n)

end

end A349776.P2554338484471669912

/-! ## A349776.P14164419994714357629

`lcm(A327913(n)!, A194188(A267480(n)+1))`
-/

namespace A349776.P14164419994714357629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A327913 n).toNat : ℤ) (A194188 (A267480 n + 1).toNat)

end

end A349776.P14164419994714357629

/-!
# A349777: Lexicographically first sequence of positive integers such that all disjoint equivalent sets of K terms have distinct sums for 1 <= K <= 4.

The programs for A349777, there is no canonical definition to state claims against.
-/

/-! ## A349777.P10014514733628209552

`A008616(10*A005318(n))`
-/

namespace A349777.P10014514733628209552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (10 * A005318 n).toNat

end

end A349777.P10014514733628209552

/-! ## A349777.P3895258947105536574

`A008647(12*A005318(n))`
-/

namespace A349777.P3895258947105536574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (12 * A005318 n).toNat

end

end A349777.P3895258947105536574

/-! ## A349777.P17648884908610313008

`∑{e}[A008776(n), A005318(#)]`
-/

namespace A349777.P17648884908610313008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005318 (Nat.factorization (f1 n).natAbs p)

end

end A349777.P17648884908610313008

/-! ## A349777.P17717196687844782762

`record[A005318(A106486(n))+1]`
-/

namespace A349777.P17717196687844782762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A106486 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349777.P17717196687844782762

/-! ## A349777.P11956362173661742379

`A005318(n)%A010355(2*n+3)+1`
-/

namespace A349777.P11956362173661742379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005318 n) (A010355 (2 * n + 3)) + 1

end

end A349777.P11956362173661742379

/-!
# A349778: Number of ways to write n as x^2 + y^k + 2*z^m, where x,y,z are nonnegative integers with x >= y, and k and m belong to the set {2,3}.

The programs for A349778, there is no canonical definition to state claims against.
-/

/-! ## A349778.P18289689908109908741

`A054844(A015975(n+2)+10)`
-/

namespace A349778.P18289689908109908741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A015975 (n + 2) + 10).toNat

end

end A349778.P18289689908109908741

/-! ## A349778.P11379852042999094514

`A000005(or(A000957(n), 9*n+6))`
-/

namespace A349778.P11379852042999094514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A000957 n) (9 * n + 6 : ℤ)).toNat

end

end A349778.P11379852042999094514

/-!
# A349780: Triangle read by rows, T(n, k) = A000262(n) - A349776(n, n - k) for n > 0 and T(0, 0) = 1.

The programs for A349780, there is no canonical definition to state claims against.
-/

/-! ## A349780.P1250995330573508747

`A282062(2^A106579(n))`
-/

namespace A349780.P1250995330573508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106579 n : ℤ))).toNat

end

end A349780.P1250995330573508747

/-! ## A349780.P14195205818700027158

`A055570(∑{d}[A106579(n), #])`
-/

namespace A349780.P14195205818700027158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A349780.P14195205818700027158

/-! ## A349780.P8636917987022822935

`∑{d}[A256116(n), A231351(#)]`
-/

namespace A349780.P8636917987022822935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A231351 d

end

end A349780.P8636917987022822935

/-! ## A349780.P7842431636826806792

`A232751(A293961(n)%A233374(3*n+2))`
-/

namespace A349780.P7842431636826806792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232751 (Int.tmod (A293961 n) (A233374 (3 * n + 2))).toNat

end

end A349780.P7842431636826806792

/-!
# A349781: a(n) = n! * (hypergeom([1 - n], [2], -1) - 1) for n >= 1 and a(0) = 0.

The programs for A349781, the canonical program `A349781.P13004075694395656551` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349781 has offset 0).

The definition of A349781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349781.P13004075694395656551

`A000262(n)-n!`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349781

/-- `A000262(n)-n!` -/
def P13004075694395656551.Spec : Prop :=
  ∀ n, P13004075694395656551.a n = A349781 n

theorem P13004075694395656551.correct : P13004075694395656551.Spec := by
  intro n
  simp only [A349781]

end A349781

/-! ## A349781.P15790979550342154969

`abs(A293125(n))-n!`
-/

namespace A349781.P15790979550342154969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| - (Nat.factorial n : ℤ)

end

end A349781.P15790979550342154969

namespace A349781

/-- `abs(A293125(n))-n!` -/
def P15790979550342154969.Spec : Prop :=
  ∀ n, P15790979550342154969.a n = A349781 n

end A349781

/-! ## A349781.P4092085566062938371

`A059110(∑[n])-n!`
-/

namespace A349781.P4092085566062938371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A349781.P4092085566062938371

namespace A349781

/-- `A059110(∑[n])-n!` -/
def P4092085566062938371.Spec : Prop :=
  ∀ n, P4092085566062938371.a n = A349781 n

end A349781

/-! ## A349781.P9926185985763828174

`A129652(∑[n])-n!`
-/

namespace A349781.P9926185985763828174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A349781.P9926185985763828174

namespace A349781

/-- `A129652(∑[n])-n!` -/
def P9926185985763828174.Spec : Prop :=
  ∀ n, P9926185985763828174.a n = A349781 n

end A349781

/-! ## A349781.P9777547282037037525

`A206703(∑[n])-n!`
-/

namespace A349781.P9777547282037037525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A349781.P9777547282037037525

namespace A349781

/-- `A206703(∑[n])-n!` -/
def P9777547282037037525.Spec : Prop :=
  ∀ n, P9777547282037037525.a n = A349781 n

end A349781

/-! ## A349781.P17801407325428289465

`A000262(n)-A000142(n)`
-/

namespace A349781.P17801407325428289465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A000142 n

end

end A349781.P17801407325428289465

namespace A349781

/-- `A000262(n)-A000142(n)` -/
def P17801407325428289465.Spec : Prop :=
  ∀ n, P17801407325428289465.a n = A349781 n

end A349781

/-! ## A349781.P3591262443418263436

`A000262(n)-abs(A133942(n))`
-/

namespace A349781.P3591262443418263436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - |A133942 n|

end

end A349781.P3591262443418263436

namespace A349781

/-- `A000262(n)-abs(A133942(n))` -/
def P3591262443418263436.Spec : Prop :=
  ∀ n, P3591262443418263436.a n = A349781 n

end A349781

/-! ## A349781.P5801122934493158910

`A000262(n)-A104150(n+1)`
-/

namespace A349781.P5801122934493158910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A104150 (n + 1)

end

end A349781.P5801122934493158910

namespace A349781

/-- `A000262(n)-A104150(n+1)` -/
def P5801122934493158910.Spec : Prop :=
  ∀ n, P5801122934493158910.a n = A349781 n

end A349781

/-! ## A349781.P14572774565107495500

`A006152(n+1)-(A103194(n)+A000142(n))`
-/

namespace A349781.P14572774565107495500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006152 (n + 1) - (A103194 n + A000142 n)

end

end A349781.P14572774565107495500

namespace A349781

/-- `A006152(n+1)-(A103194(n)+A000142(n))` -/
def P14572774565107495500.Spec : Prop :=
  ∀ n, P14572774565107495500.a n = A349781 n

theorem P14572774565107495500.correct : P14572774565107495500.Spec := by
  intro n
  simp only [A349781, Nat.add_sub_cancel, A349781.P14572774565107495500.a, A349781.P13004075694395656551.a, A000142, A000142.P3272619076580183195.a, A000262, A000262.P5795723230427946542.a, A006152, A006152.P4174681156060907627.a, A103194, A103194.P3023715330219934413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A349781

/-! ## A349781.P5451271192232797212

`A059114(∑[n])-n!`
-/

namespace A349781.P5451271192232797212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059114 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A349781.P5451271192232797212

namespace A349781

/-- `A059114(∑[n])-n!` -/
def P5451271192232797212.Spec : Prop :=
  ∀ n, P5451271192232797212.a n = A349781 n

end A349781

/-!
# A349782: Triangle read by rows, T(n, k) = Sum_{j=0..k} |Stirling1(n, j)|.

The programs for A349782, there is no canonical definition to state claims against.
-/

/-! ## A349782.P1204924501873820498

`A132393(n)+T(n,k-1)` with `a(0)=1`
-/

namespace A349782.P1204924501873820498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132393 n + SequenceMachineLib.triLeft a n

end

end A349782.P1204924501873820498

/-! ## A349782.P11360192143910595689

`A122199(or(A088996(n), A185284(3*n)))`
-/

namespace A349782.P11360192143910595689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122199 (Int.lor (A088996 n) (A185284 (3 * n))).toNat

end

end A349782.P11360192143910595689

/-! ## A349782.P6634494219054500210

`A068063(A087736(n))`
-/

namespace A349782.P6634494219054500210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A087736 n).toNat

end

end A349782.P6634494219054500210

/-! ## A349782.P11003246097919137371

`A355246(A088969(n))`
-/

namespace A349782.P11003246097919137371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355246 (A088969 n).toNat

end

end A349782.P11003246097919137371

/-! ## A349782.P5911771103959308983

`A005811(A087736(n)²)`
-/

namespace A349782.P5911771103959308983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A087736 n ^ 2).toNat

end

end A349782.P5911771103959308983

/-!
# A349783: a(n) = Sum_{j=0..n} |Stirling1(2*n, j)|.

The programs for A349783, the canonical program `A349783.P3341723421033775876` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349783 has offset 0).

The definition of A349783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349783.P3341723421033775876

`∑{#}[n, A132393(C(2*n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A349783

/-- `∑{#}[n, A132393(C(2*n+1, 2)+#)]` -/
def P3341723421033775876.Spec : Prop :=
  ∀ n, P3341723421033775876.a n = A349783 n

theorem P3341723421033775876.correct : P3341723421033775876.Spec := by
  intro n
  simp only [A349783]

end A349783

/-!
# A349784: Maximum number of sides in any cell in a regular n-gon with all diagonals drawn (cf. A007678), excluding the central n-sided cell for odd values of n.

The programs for A349784, there is no canonical definition to state claims against.
-/

/-! ## A349784.P359290708359619527

`A000120(A080821(n+4)+A007677(n))`
-/

namespace A349784.P359290708359619527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080821 (n + 4) + A007677 n).toNat

end

end A349784.P359290708359619527

/-!
# A349785: a(n) = 1 + Product_{k=1..n-1} a(gcd(n,k)).

The programs for A349785, there is no canonical definition to state claims against.
-/

/-! ## A349785.P718387233771029070

`p?[round(sqrt(2^n+5*(n+1)))]`
-/

namespace A349785.P718387233771029070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 ^ n + 5 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349785.P718387233771029070

/-! ## A349785.P14184791306840865081

`A269396(A073919(n))`
-/

namespace A349785.P14184791306840865081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A073919 n).toNat

end

end A349785.P14184791306840865081

/-!
# A349786: Prime numbers p such that iterating the map m -> m^2 on p generates a number ending with p.

The programs for A349786, there is no canonical definition to state claims against.
-/

/-! ## A349786.P14181825390752888014

`∩[A076650(n+1), A363750(n+1)]`
-/

namespace A349786.P14181825390752888014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349786.P14181825390752888014

/-! ## A349786.P10569620946271356880

`∩[A076650(n+1), A398545(n+1)]`
-/

namespace A349786.P10569620946271356880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349786.P10569620946271356880

/-! ## A349786.P7014941813956859839

`∩[A076650(n+1), A138980(n)]`
-/

namespace A349786.P7014941813956859839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349786.P7014941813956859839

/-! ## A349786.P13661355704219248224

`∩[A076650(n+1), A318786(n+1)]`
-/

namespace A349786.P13661355704219248224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349786.P13661355704219248224

/-!
# A349788: Number of permutations of [n] having exactly one increasing cycle.

The programs for A349788, there is no canonical definition to state claims against.
-/

/-! ## A349788.P16461753455772239929

`A186758(n)-A186755(n)`
-/

namespace A349788.P16461753455772239929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186758 n - A186755 n

end

end A349788.P16461753455772239929

/-! ## A349788.P17552752458143530250

`∑{#}[n, C(n, #)*A000587(#)*A002627(n-#)]`
-/

namespace A349788.P17552752458143530250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000587 k * A002627 (n - k)

end

end A349788.P17552752458143530250

/-! ## A349788.P7877786188433030620

`A186754(∑[n]+1)`
-/

namespace A349788.P7877786188433030620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186754 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A349788.P7877786188433030620

/-! ## A349788.P15190585985082030195

`A186758(n)-A186754(∑[n])`
-/

namespace A349788.P15190585985082030195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186758 n - A186754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349788.P15190585985082030195

/-! ## A349788.P12909665539934096149

`A186754(A000124(n))%A092802(n+1)`
-/

namespace A349788.P12909665539934096149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186754 (A000124 n).toNat) (A092802 (n + 1))

end

end A349788.P12909665539934096149

/-!
# A349792: Numbers k such that k*(k+1) is the median of the primes between k^2 and (k+1)^2.

The programs for A349792, there is no canonical definition to state claims against.
-/

/-! ## A349792.P15579705278363083574

`record[gcd(n+2, A349791(n+2))]`
-/

namespace A349792.P15579705278363083574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A349791 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349792.P15579705278363083574

/-!
# A349793: Primes which are the nearest integer to the harmonic mean of the previous prime and the following prime.

The programs for A349793, there is no canonical definition to state claims against.
-/

/-! ## A349793.P414374746935922583

`A322660(A053992(n+1))`
-/

namespace A349793.P414374746935922583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322660 (A053992 (n + 1)).toNat

end

end A349793.P414374746935922583

/-! ## A349793.P18191567388595377004

`A291283(A062925(n+2))`
-/

namespace A349793.P18191567388595377004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291283 (A062925 (n + 2)).toNat

end

end A349793.P18191567388595377004

/-! ## A349793.P12699369386570713520

`A381063(A227635(n+2))`
-/

namespace A349793.P12699369386570713520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381063 (A227635 (n + 2)).toNat

end

end A349793.P12699369386570713520

/-!
# A349794: Numbers whose prime signature has an odd term other than the first or last.

The programs for A349794, there is no canonical definition to state claims against.
-/

/-! ## A349794.P6059561221620078678

`∪[A350140(n+1), A350352(n+1)]`
-/

namespace A349794.P6059561221620078678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349794.P6059561221620078678

/-! ## A349794.P3112430858223927190

`∪[A336568(n+1), A350140(n+1)]`
-/

namespace A349794.P3112430858223927190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349794.P3112430858223927190

/-! ## A349794.P4277809846206602430

`lt[16, A271083(A286852(n))]`
-/

namespace A349794.P4277809846206602430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A286852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349794.P4277809846206602430

/-! ## A349794.P10790554122674198233

`A033992(lt[A029542(n+1), A073838(n+1)]+1)`
-/

namespace A349794.P10790554122674198233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A349794.P10790554122674198233

/-! ## A349794.P12451276189617851618

`A033992(lt[A365202(2*n+5), A106304(2*(n+1))])`
-/

namespace A349794.P12451276189617851618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365202 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106304 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349794.P12451276189617851618

/-!
# A349795: Number of non-strict integer partitions of n that are constant or whose part multiplicities, except possibly the first and last, are all even.

The programs for A349795, there is no canonical definition to state claims against.
-/

/-! ## A349795.P4182298175777407249

`A349060(n)-A065033(n)`
-/

namespace A349795.P4182298175777407249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A065033 n

end

end A349795.P4182298175777407249

/-! ## A349795.P528652926316498223

`A047967(n)-A349796(n)`
-/

namespace A349795.P528652926316498223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A349796 n

end

end A349795.P528652926316498223

/-! ## A349795.P16519681489950527430

`A349060(n)-∑[A266070(n)]`
-/

namespace A349795.P16519681489950527430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349795.P16519681489950527430

/-! ## A349795.P856924469617467947

`A349060(n)-A008619(abs(1-n))`
-/

namespace A349795.P856924469617467947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A008619 |1 - (n : ℤ)|.toNat

end

end A349795.P856924469617467947

/-! ## A349795.P11018703072342875144

`A349060(n)-(A140106(n+1)+1)`
-/

namespace A349795.P11018703072342875144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - (A140106 (n + 1) + 1)

end

end A349795.P11018703072342875144

/-! ## A349795.P2004593274099284768

`A349060(n)-A008621(A004273(n))`
-/

namespace A349795.P2004593274099284768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A008621 (A004273 n).toNat

end

end A349795.P2004593274099284768

/-! ## A349795.P10174217655004352153

`A349060(n)-A008621(A004275(n))`
-/

namespace A349795.P10174217655004352153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A008621 (A004275 n).toNat

end

end A349795.P10174217655004352153

/-! ## A349795.P11031354661942125095

`A349060(n)-A046854(A000124(n))`
-/

namespace A349795.P11031354661942125095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A046854 (A000124 n).toNat

end

end A349795.P11031354661942125095

/-! ## A349795.P4001771929908518221

`A349060(n)-A008621(A053438(n))`
-/

namespace A349795.P4001771929908518221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A008621 (A053438 n).toNat

end

end A349795.P4001771929908518221

/-! ## A349795.P3821831204753192642

`A349060(n)-A047996(A027379(n))`
-/

namespace A349795.P3821831204753192642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349060 n - A047996 (A027379 n).toNat

end

end A349795.P3821831204753192642

/-!
# A349796: Number of non-strict integer partitions of n with at least one part of odd multiplicity that is not the first or last.

The programs for A349796, there is no canonical definition to state claims against.
-/

/-! ## A349796.P16339126344265243287

`A047967(n)-A349795(n)`
-/

namespace A349796.P16339126344265243287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A349795 n

end

end A349796.P16339126344265243287

/-! ## A349796.P7707472477062980955

`A047967(n)-(A349060(n)-(A140106(n+1)+1))`
-/

namespace A349796.P7707472477062980955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A349060 n - (A140106 (n + 1) + 1))

end

end A349796.P7707472477062980955

/-! ## A349796.P4452590041338639513

`A047967(n)-(A349060(n)-A008621(A004275(n)))`
-/

namespace A349796.P4452590041338639513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A349060 n - A008621 (A004275 n).toNat)

end

end A349796.P4452590041338639513

/-! ## A349796.P5434566025471894021

`A047967(n)-(A349060(n)-A046854(A000124(n)))`
-/

namespace A349796.P5434566025471894021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A349060 n - A046854 (A000124 n).toNat)

end

end A349796.P5434566025471894021

/-! ## A349796.P4360700088694898030

`A047967(n)-(A349060(n)-A008621(A053438(n)))`
-/

namespace A349796.P4360700088694898030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A349060 n - A008621 (A053438 n).toNat)

end

end A349796.P4360700088694898030

/-!
# A349797: Number of non-weakly alternating permutations of the multiset of prime factors of n.

The programs for A349797, there is no canonical definition to state claims against.
-/

/-! ## A349797.P7506482757550025356

`A008480(n+1)-A349056(n+1)`
-/

namespace A349797.P7506482757550025356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A349056 (n + 1)

end

end A349797.P7506482757550025356

/-! ## A349797.P2060906921953979930

`2*floor(sinh((∑{e}[n+1, #]!/∏{e}[n+1, #!])%(n+1)/6))`
-/

namespace A349797.P2060906921953979930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sinh ((Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))) (n + 1 : ℤ) : ℚ) / 6 : ℝ)⌋

end

end A349797.P2060906921953979930

/-! ## A349797.P17920042213317024097

`2*A326291(1+n)`
-/

namespace A349797.P17920042213317024097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326291 (1 + n)

end

end A349797.P17920042213317024097

/-! ## A349797.P10950002533927210986

`2*floor(A050328(n+1)/10)`
-/

namespace A349797.P10950002533927210986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A050328 (n + 1) : ℚ) / 10⌋

end

end A349797.P10950002533927210986

/-! ## A349797.P16993336377421944509

`2*round(A294018(n+1)/e)`
-/

namespace A349797.P16993336377421944509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A294018 (n + 1) : ℝ) / Real.exp 1)

end

end A349797.P16993336377421944509

/-! ## A349797.P12521794056366388354

`2*floor(abs(A317581(n+1)/5))`
-/

namespace A349797.P12521794056366388354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊|(A317581 (n + 1) : ℚ) / 5|⌋

end

end A349797.P12521794056366388354

/-! ## A349797.P16286610672143543753

`2*floor(A322452((n+1)²)/7)`
-/

namespace A349797.P16286610672143543753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A322452 ((n + 1) ^ 2) : ℚ) / 7⌋

end

end A349797.P16286610672143543753

/-! ## A349797.P3318154029016251029

`and(6, A003106(A008480(n+1)))`
-/

namespace A349797.P3318154029016251029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A003106 (A008480 (n + 1)).toNat)

end

end A349797.P3318154029016251029

/-! ## A349797.P17504085068837704986

`A006530(A294018(n+1)!)-1`
-/

namespace A349797.P17504085068837704986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A294018 (n + 1)).toNat) - 1

end

end A349797.P17504085068837704986

/-! ## A349797.P15191107325420912756

`A350251(n+1)-A349798(n+1)`
-/

namespace A349797.P15191107325420912756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (n + 1) - A349798 (n + 1)

end

end A349797.P15191107325420912756

/-!
# A349798: Number of weakly alternating ordered prime factorizations of n with at least two adjacent equal parts.

The programs for A349798, there is no canonical definition to state claims against.
-/

/-! ## A349798.P8352998927669136057

`A349056(n+1)-A345164(n+1)`
-/

namespace A349798.P8352998927669136057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (n + 1) - A345164 (n + 1)

end

end A349798.P8352998927669136057

/-! ## A349798.P12016678369455190018

`A350251(n+1)-A349797(n+1)`
-/

namespace A349798.P12016678369455190018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (n + 1) - A349797 (n + 1)

end

end A349798.P12016678369455190018

/-! ## A349798.P13828859879317370463

`ceil(A336107(n+1)/A318809(n+1))`
-/

namespace A349798.P13828859879317370463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336107 (n + 1) : ℚ) / (A318809 (n + 1) : ℚ)⌉

end

end A349798.P13828859879317370463

/-! ## A349798.P15845828204906735538

`A350251(n+1)-2*A326291(n+1)`
-/

namespace A349798.P15845828204906735538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (n + 1) - 2 * A326291 (n + 1)

end

end A349798.P15845828204906735538

/-! ## A349798.P1950733842817564750

`A349056(n+1)-ceil(γ*A335452(n+1))`
-/

namespace A349798.P1950733842817564750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (n + 1) - ⌈Real.eulerMascheroniConstant * (A335452 (n + 1) : ℝ)⌉

end

end A349798.P1950733842817564750

/-! ## A349798.P18399756978308131645

`A349056(n+1)-A030530(A335452(n+1))`
-/

namespace A349798.P18399756978308131645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (n + 1) - A030530 (A335452 (n + 1)).toNat

end

end A349798.P18399756978308131645

/-! ## A349798.P7144109006335038007

`ceil(A336107(n+1)/A008480(A008480(n+1)))`
-/

namespace A349798.P7144109006335038007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336107 (n + 1) : ℚ) / (A008480 (A008480 (n + 1)).toNat : ℚ)⌉

end

end A349798.P7144109006335038007

/-! ## A349798.P2170511478847745509

`A349056(n+1)-A001221((A335452(n+1)+1)!)`
-/

namespace A349798.P2170511478847745509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (n + 1) - A001221 (Nat.factorial (A335452 (n + 1) + 1).toNat)

end

end A349798.P2170511478847745509

/-! ## A349798.P9415034125141875484

`gcd(A008480(n+1)!, floor(A000005(n+1)/2))-A345164(n+1)`
-/

namespace A349798.P9415034125141875484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.factorial (A008480 (n + 1)).toNat : ℤ) ⌊(A000005 (n + 1) : ℚ) / 2⌋ : ℤ) - A345164 (n + 1)

end

end A349798.P9415034125141875484

/-! ## A349798.P8842901951116174848

`A004524(A050326(n+1))+A336107(n+1)-A349797(n+1)`
-/

namespace A349798.P8842901951116174848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A050326 (n + 1)).toNat + (A336107 (n + 1) - A349797 (n + 1))

end

end A349798.P8842901951116174848

/-!
# A349799: Numbers k such that the k-th composition in standard order is weakly alternating but has at least two adjacent equal parts.

The programs for A349799, there is no canonical definition to state claims against.
-/

/-! ## A349799.P9045657355342126074

`comp[∪[A345167(n+1), A349057(n+1)]]`
-/

namespace A349799.P9045657355342126074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349057 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A349799.P9045657355342126074

/-! ## A349799.P16277414572275393172

`lt[A095684(A333939(n)), A333381(n)]`
-/

namespace A349799.P16277414572275393172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A333939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349799.P16277414572275393172

/-! ## A349799.P4156873032416710279

`lt[A228531(A334299(n)), A333381(n)]`
-/

namespace A349799.P4156873032416710279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228531 (A334299 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349799.P4156873032416710279

/-! ## A349799.P1332966680093703014

`lt[A002024(A334299(n)), A000120(n)+1]`
-/

namespace A349799.P1332966680093703014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A334299 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349799.P1332966680093703014

/-! ## A349799.P15964558750006380895

`lt[A124762(A153066(n)), A124762(n)]`
-/

namespace A349799.P15964558750006380895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A153066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A349799.P15964558750006380895

