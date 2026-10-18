import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A238000: Number of partitions of n^n into parts that are at most n.

The programs for A238000, there is no canonical definition to state claims against.
-/

/-! ## A238000.P1897437106426702525

`A238016(∑[4*n])`
-/

namespace A238000.P1897437106426702525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238016 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238000.P1897437106426702525

/-! ## A238000.P16169043668800853239

`A238010(∑[4*n])`
-/

namespace A238000.P16169043668800853239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238000.P16169043668800853239

/-!
# A238001: Number of partitions of n^n into parts that are at most n with at least one part of each size.

The programs for A238001, there is no canonical definition to state claims against.
-/

/-! ## A238001.P14446914210791500322

`A238012(∑[4*n])`
-/

namespace A238001.P14446914210791500322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238001.P14446914210791500322

/-!
# A238002: Count with multiplicity of prime factors of n in (n - 1)!.

The programs for A238002, there is no canonical definition to state claims against.
-/

/-! ## A238002.P7806204970167930

`∑{p}[n+2, val(n!, #)]`
-/

namespace A238002.P7806204970167930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial n) p

end

end A238002.P7806204970167930

/-! ## A238002.P9918821907001592439

`∑{p}[n+2, val(A000142(n), #)]`
-/

namespace A238002.P9918821907001592439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000142 n).toNat p

end

end A238002.P9918821907001592439

/-! ## A238002.P10851254126989181284

`∑{p}[n+2, val(A052572(n), #)]`
-/

namespace A238002.P10851254126989181284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A052572 n).toNat p

end

end A238002.P10851254126989181284

/-! ## A238002.P6892732473899600057

`∑{e}[gcd((n+2)^n, n!), #]`
-/

namespace A238002.P6892732473899600057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ n) (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A238002.P6892732473899600057

/-! ## A238002.P11091119240781969061

`∑{e}[A062763(n+2), #]`
-/

namespace A238002.P11091119240781969061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238002.P11091119240781969061

/-!
# A238003: Number of partitions of n not having depth 1; see Comments.

The programs for A238003, there is no canonical definition to state claims against.
-/

/-! ## A238003.P3930929799681877862

`A000041(n+1)-A237685(n+1)`
-/

namespace A238003.P3930929799681877862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A237685 (n + 1)

end

end A238003.P3930929799681877862

/-! ## A238003.P7388220428638105195

`Δ[A000070(n)]-(A353837(n+1)-A000009(n+1))`
-/

namespace A238003.P7388220428638105195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A353837 (n + 1) - A000009 (n + 1))

end

end A238003.P7388220428638105195

/-! ## A238003.P1582328502077310146

`Δ[A000070(n)]-A237685(n+1)`
-/

namespace A238003.P1582328502077310146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237685 (n + 1)

end

end A238003.P1582328502077310146

/-! ## A238003.P14409562250812442956

`record[A035363(n)]-A237685(n+1)`
-/

namespace A238003.P14409562250812442956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237685 (n + 1)

end

end A238003.P14409562250812442956

/-! ## A238003.P5058754631774139080

`record[A035444(n)]-A237685(n+1)`
-/

namespace A238003.P5058754631774139080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237685 (n + 1)

end

end A238003.P5058754631774139080

/-!
# A238004: Limiting row of the array at A238325.

The programs for A238004, there is no canonical definition to state claims against.
-/

/-! ## A238004.P12234118745578236365

`2*A238325(round(sqrt(n²+1)))`
-/

namespace A238004.P12234118745578236365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238325 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A238004.P12234118745578236365

/-! ## A238004.P10540637849632263147

`A005843(A238325(round(sqrt(n²+1))))`
-/

namespace A238004.P10540637849632263147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A238325 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A238004.P10540637849632263147

/-!
# A238005: Number of partitions of n into distinct parts such that (greatest part) - (least part) = (number of parts).

The programs for A238005, the canonical program `A238005.P18247132531721363031` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238005 has offset 1).

The definition of A238005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238005.P4233728559091015486

`A238007(n+1)-A238006(n+1)`
-/

namespace A238005.P4233728559091015486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238007 (n + 1) - A238006 (n + 1)

end

end A238005.P4233728559091015486

namespace A238005

/-- `A238007(n+1)-A238006(n+1)` -/
def P4233728559091015486.Spec : Prop :=
  ∀ n, P4233728559091015486.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P6567301730213849690

`∑[char[∑[n+1]]]-A136107(n+1)`
-/

namespace A238005.P6567301730213849690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A136107 (n + 1)

end

end A238005.P6567301730213849690

namespace A238005

/-- `∑[char[∑[n+1]]]-A136107(n+1)` -/
def P6567301730213849690.Spec : Prop :=
  ∀ n, P6567301730213849690.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P14222820224226501772

`∑[char[∑[n-1]]]-A001227(n+1)`
-/

namespace A238005.P14222820224226501772
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001227 (n + 1)

end

end A238005.P14222820224226501772

namespace A238005

/-- `∑[char[∑[n-1]]]-A001227(n+1)` -/
def P14222820224226501772.Spec : Prop :=
  ∀ n, P14222820224226501772.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P13391476001225871682

`A060831(n)-A368363(n+1)`
-/

namespace A238005.P13391476001225871682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A368363 (n + 1)

end

end A238005.P13391476001225871682

namespace A238005

/-- `A060831(n)-A368363(n+1)` -/
def P13391476001225871682.Spec : Prop :=
  ∀ n, P13391476001225871682.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P2495890695788484216

`∑[A023531(n)]-A054844(n+1)/2`
-/

namespace A238005.P2495890695788484216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A054844 (n + 1) : ℚ) / 2

end

end A238005.P2495890695788484216

namespace A238005

/-- `∑[A023531(n)]-A054844(n+1)/2` -/
def P2495890695788484216.Spec : Prop :=
  ∀ n, P2495890695788484216.a n = (A238005 (n + 1) : ℚ)

end A238005

/-! ## A238005.P18247132531721363031

`A003056(n+1)-(A069283(n+1)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A238005

/-- `A003056(n+1)-(A069283(n+1)+1)` -/
def P18247132531721363031.Spec : Prop :=
  ∀ n, P18247132531721363031.a n = A238005 (n + 1)

theorem P18247132531721363031.correct : P18247132531721363031.Spec := by
  intro n
  simp only [A238005, Nat.add_sub_cancel]

end A238005

/-! ## A238005.P11481236622710931064

`A003056(n+1)-A054844(n+1)/2`
-/

namespace A238005.P11481236622710931064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (n + 1) : ℚ) - (A054844 (n + 1) : ℚ) / 2

end

end A238005.P11481236622710931064

namespace A238005

/-- `A003056(n+1)-A054844(n+1)/2` -/
def P11481236622710931064.Spec : Prop :=
  ∀ n, P11481236622710931064.a n = (A238005 (n + 1) : ℚ)

end A238005

/-! ## A238005.P5878255129333299692

`A003056(n+1)-∏{e}[A336158(n+1), #+1]`
-/

namespace A238005.P5878255129333299692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ)

end

end A238005.P5878255129333299692

namespace A238005

/-- `A003056(n+1)-∏{e}[A336158(n+1), #+1]` -/
def P5878255129333299692.Spec : Prop :=
  ∀ n, P5878255129333299692.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P17379186577577896859

`A003056(n+1)-A000005(A000265(n+1))`
-/

namespace A238005.P17379186577577896859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - A000005 (A000265 (n + 1)).toNat

end

end A238005.P17379186577577896859

namespace A238005

/-- `A003056(n+1)-A000005(A000265(n+1))` -/
def P17379186577577896859.Spec : Prop :=
  ∀ n, P17379186577577896859.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P18246811401463293727

`A003056(n+1)-(A131576(n+1)+A082647(n+1))`
-/

namespace A238005.P18246811401463293727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (A131576 (n + 1) + A082647 (n + 1))

end

end A238005.P18246811401463293727

namespace A238005

/-- `A003056(n+1)-(A131576(n+1)+A082647(n+1))` -/
def P18246811401463293727.Spec : Prop :=
  ∀ n, P18246811401463293727.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P14445411984774838510

`A000009(n+1)-(A238006(n+1)+A001227(n+1))`
-/

namespace A238005.P14445411984774838510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A238006 (n + 1) + A001227 (n + 1))

end

end A238005.P14445411984774838510

namespace A238005

/-- `A000009(n+1)-(A238006(n+1)+A001227(n+1))` -/
def P14445411984774838510.Spec : Prop :=
  ∀ n, P14445411984774838510.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P5775300872090724762

`A003056(n+1)+A238007(n+1)-A000009(n+1)`
-/

namespace A238005.P5775300872090724762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A238007 (n + 1) - A000009 (n + 1))

end

end A238005.P5775300872090724762

namespace A238005

/-- `A003056(n+1)+A238007(n+1)-A000009(n+1)` -/
def P5775300872090724762.Spec : Prop :=
  ∀ n, P5775300872090724762.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P10797524150606472326

`A003056(n+1)-A000005(n+1)/A001511(n+1)`
-/

namespace A238005.P10797524150606472326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A238005.P10797524150606472326

namespace A238005

/-- `A003056(n+1)-A000005(n+1)/A001511(n+1)` -/
def P10797524150606472326.Spec : Prop :=
  ∀ n, P10797524150606472326.a n = (A238005 (n + 1) : ℚ)

end A238005

/-! ## A238005.P1118214827325820681

`Δ[A347737(n)]`
-/

namespace A238005.P1118214827325820681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238005.P1118214827325820681

namespace A238005

/-- `Δ[A347737(n)]` -/
def P1118214827325820681.Spec : Prop :=
  ∀ n, P1118214827325820681.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P1047191500580000505

`A347737(n+1)-A347737(n)`
-/

namespace A238005.P1047191500580000505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347737 (n + 1) - A347737 n

end

end A238005.P1047191500580000505

namespace A238005

/-- `A347737(n+1)-A347737(n)` -/
def P1047191500580000505.Spec : Prop :=
  ∀ n, P1047191500580000505.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P12123147881435566350

`A003056(n+1)-Δ[A060831(n)]`
-/

namespace A238005.P12123147881435566350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238005.P12123147881435566350

namespace A238005

/-- `A003056(n+1)-Δ[A060831(n)]` -/
def P12123147881435566350.Spec : Prop :=
  ∀ n, P12123147881435566350.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P8544055584972414822

`Δ[A006463(n+1)-A060831(n)]`
-/

namespace A238005.P8544055584972414822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238005.P8544055584972414822

namespace A238005

/-- `Δ[A006463(n+1)-A060831(n)]` -/
def P8544055584972414822.Spec : Prop :=
  ∀ n, P8544055584972414822.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P6228360857955944103

`A002024(n+2)-(A001227(n+1)+1)`
-/

namespace A238005.P6228360857955944103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) - (A001227 (n + 1) + 1)

end

end A238005.P6228360857955944103

namespace A238005

/-- `A002024(n+2)-(A001227(n+1)+1)` -/
def P6228360857955944103.Spec : Prop :=
  ∀ n, P6228360857955944103.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P10403815331487655312

`A002024(n+2)-(A069283(n+1)+2)`
-/

namespace A238005.P10403815331487655312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) - (A069283 (n + 1) + 2)

end

end A238005.P10403815331487655312

namespace A238005

/-- `A002024(n+2)-(A069283(n+1)+2)` -/
def P10403815331487655312.Spec : Prop :=
  ∀ n, P10403815331487655312.a n = A238005 (n + 1)

end A238005

/-! ## A238005.P3275393263687297543

`A003056(n+1)+A060831(n)-A060831(n+1)`
-/

namespace A238005.P3275393263687297543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A060831 n - A060831 (n + 1))

end

end A238005.P3275393263687297543

namespace A238005

/-- `A003056(n+1)+A060831(n)-A060831(n+1)` -/
def P3275393263687297543.Spec : Prop :=
  ∀ n, P3275393263687297543.a n = A238005 (n + 1)

end A238005

/-!
# A238006: Number of strict partitions of n such that (greatest part) - (least part) > (number of parts).

The programs for A238006, there is no canonical definition to state claims against.
-/

/-! ## A238006.P14899711821678071762

`A000009(n+1)-A003056(n+1)`
-/

namespace A238006.P14899711821678071762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A003056 (n + 1)

end

end A238006.P14899711821678071762

/-! ## A238006.P17779113578853974269

`A238007(n+1)-A238005(n+1)`
-/

namespace A238006.P17779113578853974269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238007 (n + 1) - A238005 (n + 1)

end

end A238006.P17779113578853974269

/-! ## A238006.P1032917344363679276

`Δ[A036469(n)]-∑[A023531(n)]`
-/

namespace A238006.P1032917344363679276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A238006.P1032917344363679276

/-! ## A238006.P14640077231805183851

`Δ[A036469(n)]-A003056(n+1)`
-/

namespace A238006.P14640077231805183851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003056 (n + 1)

end

end A238006.P14640077231805183851

/-! ## A238006.P4386470480285563816

`A001227(n+1)+A238007(n+1)-A003056(n+1)`
-/

namespace A238006.P4386470480285563816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A238007 (n + 1) - A003056 (n + 1))

end

end A238006.P4386470480285563816

/-! ## A238006.P15644559113563806393

`A111133(n+1)-∑[char[∑[n+2]]]`
-/

namespace A238006.P15644559113563806393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238006.P15644559113563806393

/-! ## A238006.P3097858184374571078

`A238007(n+1)-Δ[A347737(n)]`
-/

namespace A238006.P3097858184374571078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238007 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238006.P3097858184374571078

/-! ## A238006.P3545952215567935167

`A052839(n+1)-A002024(n+2)`
-/

namespace A238006.P3545952215567935167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n + 1) - A002024 (n + 2)

end

end A238006.P3545952215567935167

/-! ## A238006.P4837551591259784488

`A172033(2*(n+1))-∑[A023531(n)]`
-/

namespace A238006.P4837551591259784488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238006.P4837551591259784488

/-! ## A238006.P2319382074206128771

`A054242(A000096(n+1))-A003056(n+1)`
-/

namespace A238006.P2319382074206128771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A000096 (n + 1)).toNat - A003056 (n + 1)

end

end A238006.P2319382074206128771

/-!
# A238007: Number of strict partitions of n such that (greatest part) - (least part) >= (number of parts).

The programs for A238007, there is no canonical definition to state claims against.
-/

/-! ## A238007.P4510013311973855885

`A238005(n+1)+A238006(n+1)`
-/

namespace A238007.P4510013311973855885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (n + 1) + A238006 (n + 1)

end

end A238007.P4510013311973855885

/-! ## A238007.P12817895033731625636

`A000009(n+1)-A001227(n+1)`
-/

namespace A238007.P12817895033731625636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A001227 (n + 1)

end

end A238007.P12817895033731625636

/-! ## A238007.P2313283207092652741

`Δ[A036469(n)]-∑{d}[n+1, #%2]`
-/

namespace A238007.P2313283207092652741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ)

end

end A238007.P2313283207092652741

/-! ## A238007.P9763168688236088738

`Δ[A317910(n)-A248517(n)]`
-/

namespace A238007.P9763168688236088738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 n - A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238007.P9763168688236088738

/-! ## A238007.P16810098116591627131

`Δ[A036469(n)]-A001227(n+1)`
-/

namespace A238007.P16810098116591627131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001227 (n + 1)

end

end A238007.P16810098116591627131

/-! ## A238007.P14538527948048752008

`Δ[A036469(n)]-A000005((n+1)/2^val(n+1, 2))`
-/

namespace A238007.P14538527948048752008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A238007.P14538527948048752008

/-! ## A238007.P10515982745028380965

`A000009(n+1)-A000005((n+1)/2^val(n+1, 2))`
-/

namespace A238007.P10515982745028380965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A238007.P10515982745028380965

/-! ## A238007.P7236936971239562756

`A000009(n+1)-A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A238007.P7236936971239562756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A238007.P7236936971239562756

/-! ## A238007.P1008154516660134226

`Δ[A036469(n)]-A000005(A000265(n+1))`
-/

namespace A238007.P1008154516660134226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (A000265 (n + 1)).toNat

end

end A238007.P1008154516660134226

/-! ## A238007.P16015869617072532829

`Δ[A036469(n)]-A000005(A064989(n+1))`
-/

namespace A238007.P16015869617072532829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (A064989 (n + 1)).toNat

end

end A238007.P16015869617072532829

/-! ## A238007.P4267461394958973763

`A000009(n+1)-A000005(A000265(n+1))`
-/

namespace A238007.P4267461394958973763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A000005 (A000265 (n + 1)).toNat

end

end A238007.P4267461394958973763

/-! ## A238007.P8922329926025839493

`A000009(n+1)-A000005(A064989(n+1))`
-/

namespace A238007.P8922329926025839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A000005 (A064989 (n + 1)).toNat

end

end A238007.P8922329926025839493

/-! ## A238007.P8664083666933977959

`A025147(n+1)+A025147(n)-A001227(n+1)`
-/

namespace A238007.P8664083666933977959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A025147 n - A001227 (n + 1))

end

end A238007.P8664083666933977959

/-! ## A238007.P13758817108118893607

`A036469(n+1)-(A036469(n)+A001227(n+1))`
-/

namespace A238007.P13758817108118893607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) - (A036469 n + A001227 (n + 1))

end

end A238007.P13758817108118893607

/-! ## A238007.P11881781745616367416

`A000009(n+1)+A238005(n+1)-A003056(n+1)`
-/

namespace A238007.P11881781745616367416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A238005 (n + 1) - A003056 (n + 1))

end

end A238007.P11881781745616367416

/-! ## A238007.P9302833448306657048

`A003056(n+1)+A238006(n+1)-A001227(n+1)`
-/

namespace A238007.P9302833448306657048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A238006 (n + 1) - A001227 (n + 1))

end

end A238007.P9302833448306657048

/-! ## A238007.P11843893142813871753

`Δ[A036469(n)-A060831(n)]`
-/

namespace A238007.P11843893142813871753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238007.P11843893142813871753

/-! ## A238007.P3600960682471237509

`A000009(n+1)-Δ[A060831(n)]`
-/

namespace A238007.P3600960682471237509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238007.P3600960682471237509

/-! ## A238007.P3780300713349299339

`A111133(n+1)-Δ[A248517(n)]`
-/

namespace A238007.P3780300713349299339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 1) - (f1 (n + 1) - f1 n)

end

end A238007.P3780300713349299339

/-! ## A238007.P14943172459176998659

`Δ[A248956(n)/2]-A001227(n+1)`
-/

namespace A238007.P14943172459176998659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248956 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001227 (n + 1) : ℚ)

end

end A238007.P14943172459176998659

/-!
# A238009: Number T(n,k) of equivalence classes of ways of placing k 2 X 2 tiles in an n X 3 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=2, 0<=k<=floor(n/2), read by rows.

The programs for A238009, there is no canonical definition to state claims against.
-/

/-! ## A238009.P2650113347033800403

`A209612(∑[A303825(A157868(n+1))])`
-/

namespace A238009.P2650113347033800403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A157868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238009.P2650113347033800403

/-! ## A238009.P3207799187489770215

`A169819(A199478(n+1)^A029383(n))`
-/

namespace A238009.P3207799187489770215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (SequenceMachineLib.roundAway ((A199478 (n + 1) : ℚ) ^ (A029383 n : ℤ))).toNat

end

end A238009.P3207799187489770215

/-! ## A238009.P5498439424598007255

`gcd(A000196(A317880(n+2)), A001399(n+2))`
-/

namespace A238009.P5498439424598007255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A317880 (n + 2)).toNat) (A001399 (n + 2))

end

end A238009.P5498439424598007255

/-!
# A238010: Number A(n,k) of partitions of k^n into parts that are at most n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A238010, there is no canonical definition to state claims against.
-/

/-! ## A238010.P7919295347160463723

`A208673(n)-A000035(A176129(n))`
-/

namespace A238010.P7919295347160463723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n - A000035 (A176129 n).toNat

end

end A238010.P7919295347160463723

/-! ## A238010.P1973541768829874005

`A001222(A238303(n)^A208673(n))`
-/

namespace A238010.P1973541768829874005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A238303 n : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A238010.P1973541768829874005

/-! ## A238010.P1093871024505797983

`A208673(n)%A000005(A101820(n))`
-/

namespace A238010.P1093871024505797983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208673 n) (A000005 (A101820 n).toNat)

end

end A238010.P1093871024505797983

/-! ## A238010.P10205373456011559158

`A246337(A208673(n))%A107027(n)`
-/

namespace A238010.P10205373456011559158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246337 (A208673 n).toNat) (A107027 n)

end

end A238010.P10205373456011559158

/-! ## A238010.P7502755170866291833

`A055396(A008517(n+1))*A208673(n)`
-/

namespace A238010.P7502755170866291833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A008517 (n + 1)).toNat * A208673 n

end

end A238010.P7502755170866291833

/-!
# A238011: Numbers k such that (2k)! - k! - 1 is prime.

The programs for A238011, there is no canonical definition to state claims against.
-/

/-! ## A238011.P11837729237772478795

`A302245(A165701(n+2))`
-/

namespace A238011.P11837729237772478795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302245 (A165701 (n + 2)).toNat

end

end A238011.P11837729237772478795

/-!
# A238012: Number A(n,k) of partitions of k^n into parts that are at most n with at least one part of each size; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A238012, there is no canonical definition to state claims against.
-/

/-! ## A238012.P8742156271529681577

`A028310(A001009(n+1))%A152719(n)`
-/

namespace A238012.P8742156271529681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A001009 (n + 1)).toNat) (A152719 n)

end

end A238012.P8742156271529681577

/-! ## A238012.P15162361891320181887

`A107909(3*(n+1))%A144925(A181144(n))`
-/

namespace A238012.P15162361891320181887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107909 (3 * (n + 1))) (A144925 (A181144 n).toNat)

end

end A238012.P15162361891320181887

/-! ## A238012.P15815554380160271942

`A066657(n)²%A090702(A301400(n+1)+5)`
-/

namespace A238012.P15815554380160271942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066657 n ^ 2) (A090702 (A301400 (n + 1) + 5).toNat)

end

end A238012.P15815554380160271942

/-! ## A238012.P9166017816635372273

`A211658(A047921(n))%A267482(A007916(n+1))`
-/

namespace A238012.P9166017816635372273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211658 (A047921 n).toNat) (A267482 (A007916 (n + 1)).toNat)

end

end A238012.P9166017816635372273

/-! ## A238012.P13910721071599171480

`A133900(A066657(n))%(A317871(n+1)+A111332(n)!)`
-/

namespace A238012.P13910721071599171480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133900 (A066657 n).toNat) (A317871 (n + 1) + (Nat.factorial (A111332 n).toNat : ℤ))

end

end A238012.P13910721071599171480

/-!
# A238013: List n copies of each k in {1,2,...,n}, for n=1,2,3,...

The programs for A238013, the canonical program `A238013.P18117388732455638620` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238013 has offset 1).

The definition of A238013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238013.P18117388732455638620

`A237452(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A238013

/-- `A237452(n+1)+1` -/
def P18117388732455638620.Spec : Prop :=
  ∀ n, P18117388732455638620.a n = A238013 (n + 1)

theorem P18117388732455638620.correct : P18117388732455638620.Spec := by
  intro n
  simp only [A238013, Nat.add_sub_cancel]

end A238013

/-! ## A238013.P17813309423436405838

`ceil(A064866(n+1)/A074279(n+1))`
-/

namespace A238013.P17813309423436405838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064866 (n + 1) : ℚ) / (A074279 (n + 1) : ℚ)⌉

end

end A238013.P17813309423436405838

namespace A238013

/-- `ceil(A064866(n+1)/A074279(n+1))` -/
def P17813309423436405838.Spec : Prop :=
  ∀ n, P17813309423436405838.a n = A238013 (n + 1)

end A238013

/-! ## A238013.P16887341276148219649

`A237265(1-A237451(n+1)+n)`
-/

namespace A238013.P16887341276148219649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 (1 - A237451 (n + 1) + (n : ℤ)).toNat

end

end A238013.P16887341276148219649

namespace A238013

/-- `A237265(1-A237451(n+1)+n)` -/
def P16887341276148219649.Spec : Prop :=
  ∀ n, P16887341276148219649.a n = A238013 (n + 1)

end A238013

/-! ## A238013.P4980784025171655105

`A002260(∑[A000007(A237451(n+1))])`
-/

namespace A238013.P4980784025171655105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A237451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238013.P4980784025171655105

namespace A238013

/-- `A002260(∑[A000007(A237451(n+1))])` -/
def P4980784025171655105.Spec : Prop :=
  ∀ n, P4980784025171655105.a n = A238013 (n + 1)

end A238013

/-! ## A238013.P4160932374426490967

`A002260(A002024(record[A141419(n+1)]))`
-/

namespace A238013.P4160932374426490967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002024 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A238013.P4160932374426490967

namespace A238013

/-- `A002260(A002024(record[A141419(n+1)]))` -/
def P4160932374426490967.Spec : Prop :=
  ∀ n, P4160932374426490967.a n = A238013 (n + 1)

end A238013

/-! ## A238013.P15622843096647243186

`A058933(p?[A246029(A030530(n))])`
-/

namespace A238013.P15622843096647243186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A030530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A238013.P15622843096647243186

namespace A238013

/-- `A058933(p?[A246029(A030530(n))])` -/
def P15622843096647243186.Spec : Prop :=
  ∀ n, P15622843096647243186.a n = A238013 (n + 1)

end A238013

/-! ## A238013.P7548018686198177896

`A237265(2-A121997(n+1)+n)`
-/

namespace A238013.P7548018686198177896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 (2 - A121997 (n + 1) + (n : ℤ)).toNat

end

end A238013.P7548018686198177896

namespace A238013

/-- `A237265(2-A121997(n+1)+n)` -/
def P7548018686198177896.Spec : Prop :=
  ∀ n, P7548018686198177896.a n = A238013 (n + 1)

end A238013

/-!
# A238014: Number of chess tableaux with n cells.

The programs for A238014, there is no canonical definition to state claims against.
-/

/-! ## A238014.P13312532097094954243

`A344296(A324095(n+1)+A124280(n))`
-/

namespace A238014.P13312532097094954243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A324095 (n + 1) + A124280 n).toNat

end

end A238014.P13312532097094954243

/-! ## A238014.P12577859408154367524

`A328593(A032245(n+1)+1)`
-/

namespace A238014.P12577859408154367524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A032245 (n + 1) + 1).toNat

end

end A238014.P12577859408154367524

/-! ## A238014.P12574081759407016506

`A325031(A051841(n+1)-A057428(n))`
-/

namespace A238014.P12574081759407016506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (A051841 (n + 1) - A057428 n).toNat

end

end A238014.P12574081759407016506

/-! ## A238014.P9755430151321138052

`A000005(A074323(n)*A347925(n+1))`
-/

namespace A238014.P9755430151321138052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074323 n * A347925 (n + 1)).toNat

end

end A238014.P9755430151321138052

/-! ## A238014.P16298541464337117690

`A325031(A051841(n+1)+A057428(n)²)`
-/

namespace A238014.P16298541464337117690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (A051841 (n + 1) + A057428 n ^ 2).toNat

end

end A238014.P16298541464337117690

/-!
# A238015: Denominator of (2*n+1)!*8*Bernoulli(2*n,1/2).

The programs for A238015, the canonical program `A238015.P2345716481472357313` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238015 has offset 0).

The definition of A238015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238015.P2345716481472357313

`ceil(A001316(n)/8)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A238015

/-- `ceil(A001316(n)/8)` -/
def P2345716481472357313.Spec : Prop :=
  ∀ n, P2345716481472357313.a n = A238015 n

theorem P2345716481472357313.correct : P2345716481472357313.Spec := by
  intro n
  simp only [A238015]

end A238015

/-! ## A238015.P18187859914217922101

`ceil(2^(A000120(n)-3))`
-/

namespace A238015.P18187859914217922101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A000120 n - 3 : ℤ)⌉

end

end A238015.P18187859914217922101

namespace A238015

/-- `ceil(2^(A000120(n)-3))` -/
def P18187859914217922101.Spec : Prop :=
  ∀ n, P18187859914217922101.a n = A238015 n

end A238015

/-! ## A238015.P6369153918055019073

`A007740(A001316(n))`
-/

namespace A238015.P6369153918055019073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A001316 n).toNat

end

end A238015.P6369153918055019073

namespace A238015

/-- `A007740(A001316(n))` -/
def P6369153918055019073.Spec : Prop :=
  ∀ n, P6369153918055019073.a n = A238015 n

end A238015

/-! ## A238015.P18003554879883569218

`A002616(A160713(n))`
-/

namespace A238015.P18003554879883569218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A160713 n).toNat

end

end A238015.P18003554879883569218

namespace A238015

/-- `A002616(A160713(n))` -/
def P18003554879883569218.Spec : Prop :=
  ∀ n, P18003554879883569218.a n = A238015 n

end A238015

/-! ## A238015.P9764380641429242786

`A051712(A001316(n)+1)`
-/

namespace A238015.P9764380641429242786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A001316 n + 1).toNat

end

end A238015.P9764380641429242786

namespace A238015

/-- `A051712(A001316(n)+1)` -/
def P9764380641429242786.Spec : Prop :=
  ∀ n, P9764380641429242786.a n = A238015 n

end A238015

/-! ## A238015.P2795462053240987134

`A046073(A001316(2*n))`
-/

namespace A238015.P2795462053240987134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A001316 (2 * n)).toNat

end

end A238015.P2795462053240987134

namespace A238015

/-- `A046073(A001316(2*n))` -/
def P2795462053240987134.Spec : Prop :=
  ∀ n, P2795462053240987134.a n = A238015 n

end A238015

/-! ## A238015.P8994417291207887924

`A046073(2^∑{e}[1-A151712(n), #])`
-/

namespace A238015.P8994417291207887924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A238015.P8994417291207887924

namespace A238015

/-- `A046073(2^∑{e}[1-A151712(n), #])` -/
def P8994417291207887924.Spec : Prop :=
  ∀ n, P8994417291207887924.a n = A238015 n

end A238015

/-! ## A238015.P13150881165643861401

`A001316((A001316(n)-8)%A001316(n))`
-/

namespace A238015.P13150881165643861401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.tmod (A001316 n - 8) (A001316 n)).toNat

end

end A238015.P13150881165643861401

namespace A238015

/-- `A001316((A001316(n)-8)%A001316(n))` -/
def P13150881165643861401.Spec : Prop :=
  ∀ n, P13150881165643861401.a n = A238015 n

end A238015

/-! ## A238015.P10402934921483460688

`A000010(A000010(A000010(A071044(n))))`
-/

namespace A238015.P10402934921483460688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000010 (A071044 n).toNat).toNat).toNat

end

end A238015.P10402934921483460688

namespace A238015

/-- `A000010(A000010(A000010(A071044(n))))` -/
def P10402934921483460688.Spec : Prop :=
  ∀ n, P10402934921483460688.a n = A238015 n

end A238015

/-! ## A238015.P12056869048133731698

`A000010(A000010(A000010(1-A048967(n)+n)))`
-/

namespace A238015.P12056869048133731698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000010 (1 - A048967 n + (n : ℤ)).toNat).toNat).toNat

end

end A238015.P12056869048133731698

namespace A238015

/-- `A000010(A000010(A000010(1-A048967(n)+n)))` -/
def P12056869048133731698.Spec : Prop :=
  ∀ n, P12056869048133731698.a n = A238015 n

end A238015

/-! ## A238015.P399437745374332231

`A101691(A101691(2*n+1)-1)`
-/

namespace A238015.P399437745374332231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101691 (A101691 (2 * n + 1) - 1).toNat

end

end A238015.P399437745374332231

namespace A238015

/-- `A101691(A101691(2*n+1)-1)` -/
def P399437745374332231.Spec : Prop :=
  ∀ n, P399437745374332231.a n = A238015 n

end A238015

/-! ## A238015.P3813102856714799551

`A000010(A000010(A101691(2*n+1)))`
-/

namespace A238015.P3813102856714799551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A101691 (2 * n + 1)).toNat).toNat

end

end A238015.P3813102856714799551

namespace A238015

/-- `A000010(A000010(A101691(2*n+1)))` -/
def P3813102856714799551.Spec : Prop :=
  ∀ n, P3813102856714799551.a n = A238015 n

end A238015

/-! ## A238015.P6191425708926343159

`A065279(round(A001316(n)/2)+1)`
-/

namespace A238015.P6191425708926343159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065279 (SequenceMachineLib.roundAway ((A001316 n : ℚ) / 2) + 1).toNat

end

end A238015.P6191425708926343159

namespace A238015

/-- `A065279(round(A001316(n)/2)+1)` -/
def P6191425708926343159.Spec : Prop :=
  ∀ n, P6191425708926343159.a n = A238015 n

end A238015

/-! ## A238015.P3231826300825861964

`A054123(A000217(n)+1-A000120(n))`
-/

namespace A238015.P3231826300825861964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A000217 n + (1 - A000120 n)).toNat

end

end A238015.P3231826300825861964

namespace A238015

/-- `A054123(A000217(n)+1-A000120(n))` -/
def P3231826300825861964.Spec : Prop :=
  ∀ n, P3231826300825861964.a n = A238015 n

end A238015

/-! ## A238015.P9000582151198366254

`A054123(1-(A000120(n)-A000217(n)))`
-/

namespace A238015.P9000582151198366254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (1 - (A000120 n - A000217 n)).toNat

end

end A238015.P9000582151198366254

namespace A238015

/-- `A054123(1-(A000120(n)-A000217(n)))` -/
def P9000582151198366254.Spec : Prop :=
  ∀ n, P9000582151198366254.a n = A238015 n

end A238015

/-! ## A238015.P5068596903443357944

`A245195((2-A001316(n))²)`
-/

namespace A238015.P5068596903443357944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 ((2 - A001316 n) ^ 2).toNat

end

end A238015.P5068596903443357944

namespace A238015

/-- `A245195((2-A001316(n))²)` -/
def P5068596903443357944.Spec : Prop :=
  ∀ n, P5068596903443357944.a n = A238015 n

end A238015

/-! ## A238015.P5474331187277191143

`A245195((2-A048896(2*n))²)`
-/

namespace A238015.P5474331187277191143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 ((2 - A048896 (2 * n)) ^ 2).toNat

end

end A238015.P5474331187277191143

namespace A238015

/-- `A245195((2-A048896(2*n))²)` -/
def P5474331187277191143.Spec : Prop :=
  ∀ n, P5474331187277191143.a n = A238015 n

end A238015

/-! ## A238015.P10798130041317488248

`gcd(A000116(n), A098087(n))`
-/

namespace A238015.P10798130041317488248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000116 n) (A098087 n)

end

end A238015.P10798130041317488248

namespace A238015

/-- `gcd(A000116(n), A098087(n))` -/
def P10798130041317488248.Spec : Prop :=
  ∀ n, (P10798130041317488248.a n : ℤ) = A238015 n

end A238015

/-!
# A238016: Number A(n,k) of partitions of n^k into parts that are at most n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A238016, there is no canonical definition to state claims against.
-/

/-! ## A238016.P8986779606211960961

`A347615(n)+A347617(n)-A347618(n)`
-/

namespace A238016.P8986779606211960961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347615 n + (A347617 n - A347618 n)

end

end A238016.P8986779606211960961

/-! ## A238016.P17180961878093158130

`A225393(A097805(n))%A112283(3*n+1)`
-/

namespace A238016.P17180961878093158130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225393 (A097805 n).toNat) (A112283 (3 * n + 1))

end

end A238016.P17180961878093158130

/-! ## A238016.P6630516671026304521

`A225393(A097805(n))%A374920(n+1)`
-/

namespace A238016.P6630516671026304521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225393 (A097805 n).toNat) (A374920 (n + 1))

end

end A238016.P6630516671026304521

/-! ## A238016.P7510816586927852591

`A334271(A213889(n))%A334269(2*(n+1))`
-/

namespace A238016.P7510816586927852591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334271 (A213889 n).toNat) (A334269 (2 * (n + 1)))

end

end A238016.P7510816586927852591

/-!
# A238019: The first position of the first cycle of sequence {b_k}={b_k}(n) in A237671.

The programs for A238019, there is no canonical definition to state claims against.
-/

/-! ## A238019.P2044846825907492453

`or(1, A217148(A200310(n+2)))`
-/

namespace A238019.P2044846825907492453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217148 (A200310 (n + 2)).toNat)

end

end A238019.P2044846825907492453

/-! ## A238019.P1205525924472628835

`gcd(A086831(n+1), A086844(6*n+10))`
-/

namespace A238019.P1205525924472628835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086831 (n + 1)) (A086844 (6 * n + 10))

end

end A238019.P1205525924472628835

/-! ## A238019.P4509839550512050288

`A222947(A188158(n+1)*A338332(n))`
-/

namespace A238019.P4509839550512050288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 (A188158 (n + 1) * A338332 n).toNat

end

end A238019.P4509839550512050288

/-! ## A238019.P1826436562793372896

`A000027(A253052(n+1)^A006926(n))`
-/

namespace A238019.P1826436562793372896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A253052 (n + 1) : ℚ) ^ (A006926 n : ℤ))).toNat

end

end A238019.P1826436562793372896

/-! ## A238019.P13382087952794641920

`A226937(A002808(n+1)^A185136(n))`
-/

namespace A238019.P13382087952794641920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226937 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) ^ (A185136 n : ℤ))).toNat

end

end A238019.P13382087952794641920

/-!
# A238020: Number of nonconsecutive chess tableaux with n cells.

The programs for A238020, there is no canonical definition to state claims against.
-/

/-! ## A238020.P8120172153422892278

`A002963(A006966(n))`
-/

namespace A238020.P8120172153422892278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002963 (A006966 n).toNat

end

end A238020.P8120172153422892278

/-! ## A238020.P15007686064089023278

`floor((A327019(n)+A008619(n))/2)`
-/

namespace A238020.P15007686064089023278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327019 n + A008619 n : ℚ) / 2⌋

end

end A238020.P15007686064089023278

/-! ## A238020.P14887137558044513384

`ceil(A321679(n)/A167384(n+1))`
-/

namespace A238020.P14887137558044513384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321679 n : ℚ) / (A167384 (n + 1) : ℚ)⌉

end

end A238020.P14887137558044513384

/-! ## A238020.P9341311651779487703

`ceil((A333462(n+1)+A327019(n))/2)`
-/

namespace A238020.P9341311651779487703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333462 (n + 1) + A327019 n : ℚ) / 2⌉

end

end A238020.P9341311651779487703

/-! ## A238020.P14456410269945445084

`ceil(A321679(n)/A321695(3*(n+1)))`
-/

namespace A238020.P14456410269945445084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321679 n : ℚ) / (A321695 (3 * (n + 1)) : ℚ)⌉

end

end A238020.P14456410269945445084

/-!
# A238021: Number of (n+2)X(1+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238021, there is no canonical definition to state claims against.
-/

/-! ## A238021.P4235889935960627069

`A238026(∑[n+1])`
-/

namespace A238021.P4235889935960627069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238021.P4235889935960627069

/-! ## A238021.P6947580708863651798

`record[A238026(A133825(n))]`
-/

namespace A238021.P6947580708863651798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238021.P6947580708863651798

/-! ## A238021.P1895583229203492426

`lcm(2, A238026(A025747(n)))`
-/

namespace A238021.P1895583229203492426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238026 (A025747 n).toNat)

end

end A238021.P1895583229203492426

/-! ## A238021.P1750869827926757891

`record[A238026(A106255(n+1))]`
-/

namespace A238021.P1750869827926757891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238021.P1750869827926757891

/-! ## A238021.P15738499845678878120

`record[A238026(A115017(n+1))]`
-/

namespace A238021.P15738499845678878120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238021.P15738499845678878120

/-!
# A238022: Number of (n+2)X(2+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238022, there is no canonical definition to state claims against.
-/

/-! ## A238022.P7669673800821199592

`A238026(∑[n+2])`
-/

namespace A238022.P7669673800821199592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238022.P7669673800821199592

/-! ## A238022.P13054990143581578446

`record[A238026(A198455(n+1))]`
-/

namespace A238022.P13054990143581578446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238022.P13054990143581578446

/-! ## A238022.P6766068819137656978

`lcm(2, A238026(A000096(n+1)))`
-/

namespace A238022.P6766068819137656978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238026 (A000096 (n + 1)).toNat)

end

end A238022.P6766068819137656978

/-! ## A238022.P11523542234903257082

`record[A167374(n+2)*A238026(n+2)]`
-/

namespace A238022.P11523542234903257082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 2) * A238026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238022.P11523542234903257082

/-! ## A238022.P11343534637584363106

`A326592(n)+A238026(A000096(n+1))`
-/

namespace A238022.P11343534637584363106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326592 n + A238026 (A000096 (n + 1)).toNat

end

end A238022.P11343534637584363106

/-!
# A238023: Number of (n+2)X(3+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238023, there is no canonical definition to state claims against.
-/

/-! ## A238023.P5898531511812345015

`A238026(∑[n+3]+1)`
-/

namespace A238023.P5898531511812345015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238023.P5898531511812345015

/-! ## A238023.P17392420621440918700

`record[A238026(A198464(n+1))]`
-/

namespace A238023.P17392420621440918700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238023.P17392420621440918700

/-! ## A238023.P16138797132266029235

`A054977(n+1)*A238026(A055999(n)+4)`
-/

namespace A238023.P16138797132266029235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A238026 (A055999 n + 4).toNat

end

end A238023.P16138797132266029235

/-!
# A238024: Number of (n+2)X(4+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238024, there is no canonical definition to state claims against.
-/

/-! ## A238024.P10748288873825847363

`A238026(∑[n+4]+3)`
-/

namespace A238024.P10748288873825847363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A238024.P10748288873825847363

/-! ## A238024.P9988373285828290825

`lcm(2, A238026(A141214(n+1)))`
-/

namespace A238024.P9988373285828290825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238026 (A141214 (n + 1)).toNat)

end

end A238024.P9988373285828290825

/-! ## A238024.P10966632641775165012

`xor(1, A238026(A055998(n+2))+1)`
-/

namespace A238024.P10966632641775165012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A238026 (A055998 (n + 2)).toNat + 1)

end

end A238024.P10966632641775165012

/-! ## A238024.P7207355692403937013

`record[A238026(A141214(∑{e}[n+1, #]+1))]`
-/

namespace A238024.P7207355692403937013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A141214 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238024.P7207355692403937013

/-!
# A238025: Number of (n+2)X(5+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238025, there is no canonical definition to state claims against.
-/

/-! ## A238025.P2477933117542174017

`A238026(∑[n+5]+6)`
-/

namespace A238025.P2477933117542174017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A238025.P2477933117542174017

/-! ## A238025.P18089951153295728486

`A349796(n)+A238026(A046691(n+3))`
-/

namespace A238025.P18089951153295728486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349796 n + A238026 (A046691 (n + 3)).toNat

end

end A238025.P18089951153295728486

/-! ## A238025.P15658775514177624544

`A238026(A046691(n+3))*A257462(n)`
-/

namespace A238025.P15658775514177624544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A046691 (n + 3)).toNat * A257462 n

end

end A238025.P15658775514177624544

/-!
# A238027: Number of (1+2) X (n+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238027, there is no canonical definition to state claims against.
-/

/-! ## A238027.P14883814422633305418

`A238026(∑[n]+1)`
-/

namespace A238027.P14883814422633305418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238027.P14883814422633305418

/-! ## A238027.P8266516030494845862

`lcm(2, A238026(A000124(n)))`
-/

namespace A238027.P8266516030494845862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238026 (A000124 n).toNat)

end

end A238027.P8266516030494845862

/-! ## A238027.P15503405352031599915

`record[A238026(A114091(n+1))]`
-/

namespace A238027.P15503405352031599915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238027.P15503405352031599915

/-! ## A238027.P6517381005006602849

`record[A238026(A257504(n+1))]`
-/

namespace A238027.P6517381005006602849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238027.P6517381005006602849

/-! ## A238027.P2115168895786091523

`record[A010054(n)*A238026(n+1)]`
-/

namespace A238027.P2115168895786091523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238027.P2115168895786091523

/-!
# A238028: Number of (2+2)X(n+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238028, there is no canonical definition to state claims against.
-/

/-! ## A238028.P12174443255836950306

`A238026(∑[n+1]+2)`
-/

namespace A238028.P12174443255836950306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238028.P12174443255836950306

/-! ## A238028.P17918665892810518872

`record[A238026(A133825(n)+2)]`
-/

namespace A238028.P17918665892810518872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238028.P17918665892810518872

/-! ## A238028.P17169075087209141964

`record[A238026(A106255(n+1)+2)]`
-/

namespace A238028.P17169075087209141964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A106255 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238028.P17169075087209141964

/-! ## A238028.P17187084223819988359

`record[A238026(A115017(n+1)+2)]`
-/

namespace A238028.P17187084223819988359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A115017 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238028.P17187084223819988359

/-! ## A238028.P6416531361161506602

`record[root(A238026(n+3), A004736(n+1))]`
-/

namespace A238028.P6416531361161506602
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238026 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238028.P6416531361161506602

/-!
# A238029: Number of (3+2)X(n+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238029, there is no canonical definition to state claims against.
-/

/-! ## A238029.P7590401314742279440

`A238026(∑[n+2]+4)`
-/

namespace A238029.P7590401314742279440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238029.P7590401314742279440

/-! ## A238029.P6365268913055873833

`lcm(2, A238026(A167614(n+1)))`
-/

namespace A238029.P6365268913055873833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238026 (A167614 (n + 1)).toNat)

end

end A238029.P6365268913055873833

/-! ## A238029.P11013929216843426410

`A238026(A167614(n+1))+A025443(n)`
-/

namespace A238029.P11013929216843426410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A167614 (n + 1)).toNat + A025443 n

end

end A238029.P11013929216843426410

/-! ## A238029.P2565428840321581350

`A238026(A167614(n+1))+A025469(n)`
-/

namespace A238029.P2565428840321581350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A167614 (n + 1)).toNat + A025469 n

end

end A238029.P2565428840321581350

/-! ## A238029.P10970990293338518088

`A238026(A167614(n+1))+A061649(n)`
-/

namespace A238029.P10970990293338518088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (A167614 (n + 1)).toNat + A061649 n

end

end A238029.P10970990293338518088

/-!
# A238030: Number of (4+2)X(n+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238030, there is no canonical definition to state claims against.
-/

/-! ## A238030.P10940051312632944595

`A238026(∑[n+3]+7)`
-/

namespace A238030.P10940051312632944595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238030.P10940051312632944595

/-!
# A238031: Number of (5+2)X(n+2) 0..1 arrays with the (lower) medians of each row unequal to its neighbors and each column equal to its neighbors.

The programs for A238031, there is no canonical definition to state claims against.
-/

/-! ## A238031.P6900759070572586828

`A238026(∑[n+4]+11)`
-/

namespace A238031.P6900759070572586828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238026 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A238031.P6900759070572586828

/-!
# A238032: Number of (n+2)X(1+2) 0..1 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A238032, there is no canonical definition to state claims against.
-/

/-! ## A238032.P5137790742912435256

`A238037(∑[n]+1)`
-/

namespace A238032.P5137790742912435256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238032.P5137790742912435256

/-! ## A238032.P18067199824875828897

`lcm(2, A238037(-xor(-1, ∑[n])))`
-/

namespace A238032.P18067199824875828897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238037 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A238032.P18067199824875828897

/-! ## A238032.P18139469276001422928

`lcm(2, A238037(A000124(n)))`
-/

namespace A238032.P18139469276001422928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238037 (A000124 n).toNat)

end

end A238032.P18139469276001422928

/-! ## A238032.P1294591886781051125

`record[A238037(A286235(n+1))]`
-/

namespace A238032.P1294591886781051125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238032.P1294591886781051125

/-! ## A238032.P17993481048823871873

`record[A238037(A292588(n+1))]`
-/

namespace A238032.P17993481048823871873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A292588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238032.P17993481048823871873

/-!
# A238033: Number of (n+2)X(2+2) 0..1 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A238033, there is no canonical definition to state claims against.
-/

/-! ## A238033.P11597107478860577105

`A238037(∑[n+1]+2)`
-/

namespace A238033.P11597107478860577105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238033.P11597107478860577105

/-! ## A238033.P13418071235582490856

`record[A238037(A286235(n+1)+1)]`
-/

namespace A238033.P13418071235582490856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238033.P13418071235582490856

/-! ## A238033.P17966717732391361193

`record[A238037(A238531(n)+1-n)]`
-/

namespace A238033.P17966717732391361193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A238531 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238033.P17966717732391361193

/-! ## A238033.P8803344304811951953

`record[A010054(n)*A238037(n+2)]`
-/

namespace A238033.P8803344304811951953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238033.P8803344304811951953

/-! ## A238033.P386700475079983937

`record[gcd(A238010(n), A238037(n+2))]`
-/

namespace A238033.P386700475079983937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238010 n) (A238037 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238033.P386700475079983937

/-!
# A238034: Number of (n+2)X(3+2) 0..1 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A238034, there is no canonical definition to state claims against.
-/

/-! ## A238034.P6286346521005947446

`A238037(∑[n+2]+4)`
-/

namespace A238034.P6286346521005947446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238034.P6286346521005947446

/-! ## A238034.P3000764866479213632

`lcm(2, A238037(A167614(n+1)))`
-/

namespace A238034.P3000764866479213632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238037 (A167614 (n + 1)).toNat)

end

end A238034.P3000764866479213632

/-! ## A238034.P2253771026309146008

`record[gcd(A122203(n), A238037(n+4))]`
-/

namespace A238034.P2253771026309146008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122203 n) (A238037 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238034.P2253771026309146008

/-! ## A238034.P18014672568446088245

`A238037(A167614(n+1))+A085863(n)`
-/

namespace A238034.P18014672568446088245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A167614 (n + 1)).toNat + A085863 n

end

end A238034.P18014672568446088245

/-! ## A238034.P5515441959135762198

`A238037(A167614(n+1))+A185284(n)`
-/

namespace A238034.P5515441959135762198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A167614 (n + 1)).toNat + A185284 n

end

end A238034.P5515441959135762198

/-!
# A238035: Number of (n+2)X(4+2) 0..1 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A238035, there is no canonical definition to state claims against.
-/

/-! ## A238035.P7547480014337779805

`A238037(∑[n+3]+7)`
-/

namespace A238035.P7547480014337779805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238035.P7547480014337779805

/-!
# A238036: Number of (n+2)X(5+2) 0..1 arrays with the (lower) medians of each row and column unequal to its neighbors.

The programs for A238036, there is no canonical definition to state claims against.
-/

/-! ## A238036.P1559368115485254743

`A238037(A167499(n+3))`
-/

namespace A238036.P1559368115485254743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A167499 (n + 3)).toNat

end

end A238036.P1559368115485254743

/-! ## A238036.P9970345668605953781

`A238037(A155212(n)+13)`
-/

namespace A238036.P9970345668605953781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A155212 n + 13).toNat

end

end A238036.P9970345668605953781

/-! ## A238036.P9925471225771223728

`A238037(A056000(n)+15)`
-/

namespace A238036.P9925471225771223728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (A056000 n + 15).toNat

end

end A238036.P9925471225771223728

/-! ## A238036.P2573283776626803604

`A238037(eq[7, A066657(n)])`
-/

namespace A238036.P2573283776626803604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238036.P2573283776626803604

/-!
# A238038: Number of (n+1)X(n+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238038, there is no canonical definition to state claims against.
-/

/-! ## A238038.P12713668424254940952

`A238046(∑[4*n]+1)`
-/

namespace A238038.P12713668424254940952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238038.P12713668424254940952

/-! ## A238038.P4812553241861432478

`record[A003982(n)*A238046(n+1)]`
-/

namespace A238038.P4812553241861432478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A238046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238038.P4812553241861432478

/-! ## A238038.P7528491007245919680

`record[root(A238046(n+1), A331886(n))]`
-/

namespace A238038.P7528491007245919680
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238046 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238038.P7528491007245919680

/-! ## A238038.P10930914373341805124

`record[gcd(A049581(n), A238046(n+1))]`
-/

namespace A238038.P10930914373341805124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A238046 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238038.P10930914373341805124

/-!
# A238039: Number of (n+1) X (1+1) 0..2 arrays with the upper median minus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238039, there is no canonical definition to state claims against.
-/

/-! ## A238039.P13280385079605602558

`A238046(∑[n]+1)`
-/

namespace A238039.P13280385079605602558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238039.P13280385079605602558

/-! ## A238039.P3241320155077147467

`record[root(A238046(n+1), A008279(n))]`
-/

namespace A238039.P3241320155077147467
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238046 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238039.P3241320155077147467

/-! ## A238039.P18023892823678959916

`record[gcd(A002262(n), A238046(n+1))]`
-/

namespace A238039.P18023892823678959916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238046 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238039.P18023892823678959916

/-! ## A238039.P16515836606624698116

`record[A238046(n+1)/A008277(n+1)]`
-/

namespace A238039.P16515836606624698116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238046 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238039.P16515836606624698116

/-! ## A238039.P14053359416619925531

`record[root(A238046(n+1), A002260(n+1))]`
-/

namespace A238039.P14053359416619925531
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238046 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238039.P14053359416619925531

/-!
# A238040: Number of (n+1)X(2+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238040, there is no canonical definition to state claims against.
-/

/-! ## A238040.P2372129464189719452

`A238046(∑[n+1]+2)`
-/

namespace A238040.P2372129464189719452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238040.P2372129464189719452

/-! ## A238040.P16651522015614270388

`record[gcd(A002262(n), A238046(n+2))]`
-/

namespace A238040.P16651522015614270388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A238046 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238040.P16651522015614270388

/-! ## A238040.P552361751851349339

`lcm(2, A238046(A000096(n+1)))`
-/

namespace A238040.P552361751851349339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238046 (A000096 (n + 1)).toNat)

end

end A238040.P552361751851349339

/-! ## A238040.P17798258850189057299

`A238046(A000096(n+1))+A054900(n)`
-/

namespace A238040.P17798258850189057299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A000096 (n + 1)).toNat + A054900 n

end

end A238040.P17798258850189057299

/-! ## A238040.P7872788681411733642

`A238046(A000096(n+1))+A034432(n+1)`
-/

namespace A238040.P7872788681411733642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A000096 (n + 1)).toNat + A034432 (n + 1)

end

end A238040.P7872788681411733642

/-!
# A238041: Number of (n+1)X(3+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238041, there is no canonical definition to state claims against.
-/

/-! ## A238041.P14474010939814455079

`A238046(∑[n+2]+4)`
-/

namespace A238041.P14474010939814455079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238041.P14474010939814455079

/-! ## A238041.P12822121892199479170

`lcm(2, A238046(A167614(n+1)))`
-/

namespace A238041.P12822121892199479170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238046 (A167614 (n + 1)).toNat)

end

end A238041.P12822121892199479170

/-! ## A238041.P1493706954060465483

`A238046(A167614(n+1))+A054900(n)`
-/

namespace A238041.P1493706954060465483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167614 (n + 1)).toNat + A054900 n

end

end A238041.P1493706954060465483

/-! ## A238041.P3595077342327448372

`A238046(A167614(n+1))+A034432(n+1)`
-/

namespace A238041.P3595077342327448372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167614 (n + 1)).toNat + A034432 (n + 1)

end

end A238041.P3595077342327448372

/-! ## A238041.P246149997531100258

`A238046(A167614(n+1))%A236522(n+1)`
-/

namespace A238041.P246149997531100258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238046 (A167614 (n + 1)).toNat) (A236522 (n + 1))

end

end A238041.P246149997531100258

/-!
# A238042: Number of (n+1)X(4+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238042, there is no canonical definition to state claims against.
-/

/-! ## A238042.P14556608207563463390

`A238046(A374004(n+1))`
-/

namespace A238042.P14556608207563463390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A374004 (n + 1)).toNat

end

end A238042.P14556608207563463390

/-! ## A238042.P994746582330712123

`A238046(A052905(n)+9)`
-/

namespace A238042.P994746582330712123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A052905 n + 9).toNat

end

end A238042.P994746582330712123

/-! ## A238042.P13473739568623250260

`A238046(A167614(n+2)+1)`
-/

namespace A238042.P13473739568623250260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167614 (n + 2) + 1).toNat

end

end A238042.P13473739568623250260

/-! ## A238042.P11591027432871656564

`A238046(A112355(n+1)+4)`
-/

namespace A238042.P11591027432871656564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A112355 (n + 1) + 4).toNat

end

end A238042.P11591027432871656564

/-! ## A238042.P3134032587533458300

`A238046(eq[5, A131818(n+1)])`
-/

namespace A238042.P3134032587533458300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238042.P3134032587533458300

/-!
# A238043: Number of (n+1)X(5+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238043, there is no canonical definition to state claims against.
-/

/-! ## A238043.P14892900903199568425

`A238046(A374005(n+1))`
-/

namespace A238043.P14892900903199568425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A374005 (n + 1)).toNat

end

end A238043.P14892900903199568425

/-! ## A238043.P7596658741940545715

`A238046(A167499(n+3))`
-/

namespace A238043.P7596658741940545715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167499 (n + 3)).toNat

end

end A238043.P7596658741940545715

/-! ## A238043.P3970484050269658451

`A238046(A056000(n)+15)`
-/

namespace A238043.P3970484050269658451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A056000 n + 15).toNat

end

end A238043.P3970484050269658451

/-! ## A238043.P13098309707914290776

`A238046(eq[6, A131818(n+1)])`
-/

namespace A238043.P13098309707914290776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238043.P13098309707914290776

/-! ## A238043.P6387440527681450359

`A238046(A020723(A155212(n)+4))`
-/

namespace A238043.P6387440527681450359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A020723 (A155212 n + 4).toNat).toNat

end

end A238043.P6387440527681450359

/-!
# A238044: Number of (n+1)X(6+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238044, there is no canonical definition to state claims against.
-/

/-! ## A238044.P8543499503748127713

`A238046(A374007(n+1))`
-/

namespace A238044.P8543499503748127713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A374007 (n + 1)).toNat

end

end A238044.P8543499503748127713

/-! ## A238044.P17192991235994688007

`A238046(A167614(n+4)+3)`
-/

namespace A238044.P17192991235994688007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167614 (n + 4) + 3).toNat

end

end A238044.P17192991235994688007

/-! ## A238044.P1526448559163149377

`A238046(eq[7, A131818(n+1)])`
-/

namespace A238044.P1526448559163149377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238044.P1526448559163149377

/-! ## A238044.P7908420798820596308

`A238046(A052905(n+3))`
-/

namespace A238044.P7908420798820596308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A052905 (n + 3)).toNat

end

end A238044.P7908420798820596308

/-! ## A238044.P2451072956503710417

`A238046(eq[3, A219347(n)])`
-/

namespace A238044.P2451072956503710417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238044.P2451072956503710417

/-!
# A238045: Number of (n+1)X(7+1) 0..2 arrays with the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238045, there is no canonical definition to state claims against.
-/

/-! ## A238045.P5223426056852768819

`A238046(A374008(n+1))`
-/

namespace A238045.P5223426056852768819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A374008 (n + 1)).toNat

end

end A238045.P5223426056852768819

/-! ## A238045.P13974079452095602312

`A238046(A167614(n+5)+4)`
-/

namespace A238045.P13974079452095602312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A167614 (n + 5) + 4).toNat

end

end A238045.P13974079452095602312

/-! ## A238045.P5296020815657439639

`A238046(eq[8, A131818(n+1)])`
-/

namespace A238045.P5296020815657439639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238045.P5296020815657439639

/-! ## A238045.P4445415370322884378

`A238046(A055999(n+4))`
-/

namespace A238045.P4445415370322884378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (A055999 (n + 4)).toNat

end

end A238045.P4445415370322884378

/-! ## A238045.P316622559252317838

`A238046(eq[4, A219347(n)])`
-/

namespace A238045.P316622559252317838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238045.P316622559252317838

/-!
# A238049: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238049, there is no canonical definition to state claims against.
-/

/-! ## A238049.P3996555339546464599

`A238054(∑[n]+1)`
-/

namespace A238049.P3996555339546464599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238049.P3996555339546464599

/-! ## A238049.P3891851740301897172

`lcm(2, A238054(A000124(n)))`
-/

namespace A238049.P3891851740301897172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238054 (A000124 n).toNat)

end

end A238049.P3891851740301897172

/-! ## A238049.P5485610738833215442

`record[A238054(A267104(n+1))]`
-/

namespace A238049.P5485610738833215442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238049.P5485610738833215442

/-! ## A238049.P7199215746042016609

`record[A238054(A371237(n+1))]`
-/

namespace A238049.P7199215746042016609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A371237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238049.P7199215746042016609

/-! ## A238049.P925526154332237382

`record[A010054(n)*A238054(n+1)]`
-/

namespace A238049.P925526154332237382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238049.P925526154332237382

/-!
# A238050: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238050, there is no canonical definition to state claims against.
-/

/-! ## A238050.P8164057118650927409

`A238054(∑[n+1]+2)`
-/

namespace A238050.P8164057118650927409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238050.P8164057118650927409

/-! ## A238050.P9468805676307994380

`record[A238054(A371237(n+1)+1)]`
-/

namespace A238050.P9468805676307994380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A371237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238050.P9468805676307994380

/-! ## A238050.P8819713327210957576

`record[A010054(n)*A238054(n+2)]`
-/

namespace A238050.P8819713327210957576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238050.P8819713327210957576

/-! ## A238050.P13970519266792795820

`record[A124744(n)*A238054(n+3)]`
-/

namespace A238050.P13970519266792795820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124744 n * A238054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238050.P13970519266792795820

/-! ## A238050.P6474928032353709463

`record[gcd(A122286(n), A238054(n+3))]`
-/

namespace A238050.P6474928032353709463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122286 n) (A238054 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238050.P6474928032353709463

/-!
# A238051: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238051, there is no canonical definition to state claims against.
-/

/-! ## A238051.P9858560080560877300

`A238054(∑[n+2]+4)`
-/

namespace A238051.P9858560080560877300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238051.P9858560080560877300

/-! ## A238051.P883894565315449423

`lcm(2, A238054(A167614(n+1)))`
-/

namespace A238051.P883894565315449423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238054 (A167614 (n + 1)).toNat)

end

end A238051.P883894565315449423

/-! ## A238051.P3130692877894920235

`A238054(A167614(n+1))+A011740(n)`
-/

namespace A238051.P3130692877894920235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A167614 (n + 1)).toNat + A011740 n

end

end A238051.P3130692877894920235

/-! ## A238051.P11193691576654672998

`A238054(A167614(n+1))+A025443(n)`
-/

namespace A238051.P11193691576654672998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A167614 (n + 1)).toNat + A025443 n

end

end A238051.P11193691576654672998

/-! ## A238051.P6906675993527532424

`A238054(A167614(n+1))+A185255(n)`
-/

namespace A238051.P6906675993527532424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A167614 (n + 1)).toNat + A185255 n

end

end A238051.P6906675993527532424

/-!
# A238052: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238052, there is no canonical definition to state claims against.
-/

/-! ## A238052.P3853263051647257294

`A238054(∑[n+3]+7)`
-/

namespace A238052.P3853263051647257294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238052.P3853263051647257294

/-! ## A238052.P1781240286550895741

`A326455(n)+A238054(A027379(n+2))`
-/

namespace A238052.P1781240286550895741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A238054 (A027379 (n + 2)).toNat

end

end A238052.P1781240286550895741

/-! ## A238052.P7478361271611309553

`A326455(n)+A238054(A307681(n+7))`
-/

namespace A238052.P7478361271611309553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A238054 (A307681 (n + 7)).toNat

end

end A238052.P7478361271611309553

/-!
# A238053: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238053, there is no canonical definition to state claims against.
-/

/-! ## A238053.P8929427444901799033

`A238054(A374005(n+1))`
-/

namespace A238053.P8929427444901799033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (A374005 (n + 1)).toNat

end

end A238053.P8929427444901799033

/-! ## A238053.P7036452415188060489

`A238054(∑[n+5]+6)`
-/

namespace A238053.P7036452415188060489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238054 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A238053.P7036452415188060489

/-!
# A238055: a(n) = (13*3^n-1)/2.

The programs for A238055, the canonical program `A238055.P7177768310825021800` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238055 has offset 0).

The definition of A238055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(13*3^n-1)/2` (program `A238055.P1839135269674069271`, by `A238055.P1839135269674069271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238055.P1839135269674069271

`(13*3^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238055.P1839135269674069271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * 3 ^ n : ℤ) - 1 : ℚ) / 2

end

end A238055.P1839135269674069271

namespace A238055

/-- `(13*3^n-1)/2` -/
def P1839135269674069271.Spec : Prop :=
  ∀ n, P1839135269674069271.a n = (A238055 n : ℚ)

theorem P1839135269674069271.correct : P1839135269674069271.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A238055, Nat.add_sub_cancel, A238055.P1839135269674069271.a, A238055.P7177768310825021800.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A238055, Nat.add_sub_cancel, A238055.P1839135269674069271.a, A238055.P7177768310825021800.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A238055

/-! ## A238055.P7177768310825021800

`3*a(n-1)+1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A238055

/-- `3*a(n-1)+1` -/
def P7177768310825021800.Spec : Prop :=
  ∀ n, (P7177768310825021800.a n : ℤ) = A238055 n

theorem P7177768310825021800.correct : P7177768310825021800.Spec := by
  intro n
  simp only [A238055]

end A238055

/-! ## A238055.P4422347647746845608

`13*A003462(n)+6`
-/

namespace A238055.P4422347647746845608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A003462 n + 6

end

end A238055.P4422347647746845608

namespace A238055

/-- `13*A003462(n)+6` -/
def P4422347647746845608.Spec : Prop :=
  ∀ n, P4422347647746845608.a n = A238055 n

end A238055

/-! ## A238055.P4145742879694583662

`A052909(n+1)+A000244(n)`
-/

namespace A238055.P4145742879694583662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 (n + 1) + A000244 n

end

end A238055.P4145742879694583662

namespace A238055

/-- `A052909(n+1)+A000244(n)` -/
def P4145742879694583662.Spec : Prop :=
  ∀ n, P4145742879694583662.a n = A238055 n

end A238055

/-! ## A238055.P5610441839474664032

`A237930(n)+A000244(n+1)`
-/

namespace A238055.P5610441839474664032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 n + A000244 (n + 1)

end

end A238055.P5610441839474664032

namespace A238055

/-- `A237930(n)+A000244(n+1)` -/
def P5610441839474664032.Spec : Prop :=
  ∀ n, P5610441839474664032.a n = A238055 n

end A238055

/-! ## A238055.P2372017646747858399

`2*A237930(n)-A003462(n)`
-/

namespace A238055.P2372017646747858399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237930 n - A003462 n

end

end A238055.P2372017646747858399

namespace A238055

/-- `2*A237930(n)-A003462(n)` -/
def P2372017646747858399.Spec : Prop :=
  ∀ n, P2372017646747858399.a n = A238055 n

end A238055

/-! ## A238055.P2951141437151493278

`ogf((6-5x)/(1-4x+3x^2))`
-/

namespace A238055.P2951141437151493278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -4, 3] n

end

end A238055.P2951141437151493278

namespace A238055

/-- `ogf((6-5x)/(1-4x+3x^2))` -/
def P2951141437151493278.Spec : Prop :=
  ∀ n, P2951141437151493278.a n = A238055 n

end A238055

/-! ## A238055.P7128643613729507557

`∑[3*a(n-1)]` with `a(0)=6, a(1)=13`
-/

namespace A238055.P7128643613729507557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 13] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238055.P7128643613729507557

namespace A238055

/-- `∑[3*a(n-1)]` -/
def P7128643613729507557.Spec : Prop :=
  ∀ n, (P7128643613729507557.a n : ℤ) = A238055 n

end A238055

/-! ## A238055.P1673897185345258063

`lcm(3, a(n-1))+1` with `a(0)=6, a(1)=19`
-/

namespace A238055.P1673897185345258063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 19] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A238055.P1673897185345258063

namespace A238055

/-- `lcm(3, a(n-1))+1` -/
def P1673897185345258063.Spec : Prop :=
  ∀ n, (P1673897185345258063.a n : ℤ) = A238055 n

end A238055

/-! ## A238055.P16453506224660001169

`4-3*(1-a(n-1))` with `a(0)=6`
-/

namespace A238055.P16453506224660001169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A238055.P16453506224660001169

namespace A238055

/-- `4-3*(1-a(n-1))` -/
def P16453506224660001169.Spec : Prop :=
  ∀ n, P16453506224660001169.a n = A238055 n

end A238055

/-! ## A238055.P14669395643590017891

`a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=6`
-/

namespace A238055.P14669395643590017891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A238055.P14669395643590017891

namespace A238055

/-- `a(n-1)+a(n-1)+a(n-1)+1` -/
def P14669395643590017891.Spec : Prop :=
  ∀ n, (P14669395643590017891.a n : ℤ) = A238055 n

theorem P14669395643590017891.correct : P14669395643590017891.Spec := by
  intro n
  simp only [A238055, Nat.add_sub_cancel, A238055.P14669395643590017891.a, A238055.P7177768310825021800.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A238055

/-! ## A238055.P10676240488598057454

`A060816(n+2)-3^n`
-/

namespace A238055.P10676240488598057454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (n + 2) - (3 ^ n : ℤ)

end

end A238055.P10676240488598057454

namespace A238055

/-- `A060816(n+2)-3^n` -/
def P10676240488598057454.Spec : Prop :=
  ∀ n, P10676240488598057454.a n = A238055 n

end A238055

/-! ## A238055.P18148273499777918792

`3^(n+2)-A057198(n+1)`
-/

namespace A238055.P18148273499777918792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A057198 (n + 1)

end

end A238055.P18148273499777918792

namespace A238055

/-- `3^(n+2)-A057198(n+1)` -/
def P18148273499777918792.Spec : Prop :=
  ∀ n, P18148273499777918792.a n = A238055 n

end A238055

/-! ## A238055.P9519444564921851440

`A199113(n)+A024023(n)`
-/

namespace A238055.P9519444564921851440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199113 n + A024023 n

end

end A238055.P9519444564921851440

namespace A238055

/-- `A199113(n)+A024023(n)` -/
def P9519444564921851440.Spec : Prop :=
  ∀ n, P9519444564921851440.a n = A238055 n

end A238055

/-! ## A238055.P12812798277277637417

`A199108(n)+A134931(n)`
-/

namespace A238055.P12812798277277637417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 n + A134931 n

end

end A238055.P12812798277277637417

namespace A238055

/-- `A199108(n)+A134931(n)` -/
def P12812798277277637417.Spec : Prop :=
  ∀ n, P12812798277277637417.a n = A238055 n

end A238055

/-! ## A238055.P15668281510406341344

`A005032(n)-A007051(n)`
-/

namespace A238055.P15668281510406341344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005032 n - A007051 n

end

end A238055.P15668281510406341344

namespace A238055

/-- `A005032(n)-A007051(n)` -/
def P15668281510406341344.Spec : Prop :=
  ∀ n, P15668281510406341344.a n = A238055 n

end A238055

/-! ## A238055.P11502323558470657904

`A005052(n)-A199109(n)`
-/

namespace A238055.P11502323558470657904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005052 n - A199109 n

end

end A238055.P11502323558470657904

namespace A238055

/-- `A005052(n)-A199109(n)` -/
def P11502323558470657904.Spec : Prop :=
  ∀ n, P11502323558470657904.a n = A238055 n

end A238055

/-! ## A238055.P5211036878242139695

`A199111(n)-A067771(n)`
-/

namespace A238055.P5211036878242139695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199111 n - A067771 n

end

end A238055.P5211036878242139695

namespace A238055

/-- `A199111(n)-A067771(n)` -/
def P5211036878242139695.Spec : Prop :=
  ∀ n, P5211036878242139695.a n = A238055 n

end A238055

/-! ## A238055.P13563956804620121470

`A199110(n)-A115098(n)`
-/

namespace A238055.P13563956804620121470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199110 n - A115098 n

end

end A238055.P13563956804620121470

namespace A238055

/-- `A199110(n)-A115098(n)` -/
def P13563956804620121470.Spec : Prop :=
  ∀ n, P13563956804620121470.a n = A238055 n

end A238055

/-! ## A238055.P4032566375065747443

`A198645(n)-A237930(n)`
-/

namespace A238055.P4032566375065747443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198645 n - A237930 n

end

end A238055.P4032566375065747443

namespace A238055

/-- `A198645(n)-A237930(n)` -/
def P4032566375065747443.Spec : Prop :=
  ∀ n, P4032566375065747443.a n = A238055 n

end A238055

/-!
# A238056: Primes which are the concatenation of two primes in exactly one way.

The programs for A238056, there is no canonical definition to state claims against.
-/

/-! ## A238056.P3186157230281655907

`∩[A019549(n+1), A014963(A129800(n+1))]`
-/

namespace A238056.P3186157230281655907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A129800 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238056.P3186157230281655907

/-! ## A238056.P6948467806082236756

`∩[A106582(n+1), A014963(A129800(n+1))]`
-/

namespace A238056.P6948467806082236756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A129800 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238056.P6948467806082236756

/-! ## A238056.P3082298808978770839

`∩[A019549(n+1), A129800(n+1)]%A166505(n+1)`
-/

namespace A238056.P3082298808978770839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A166505 (n + 1))

end

end A238056.P3082298808978770839

/-! ## A238056.P16187509453597002532

`∩[A105184(n+1), A129800(n+1)]%A166505(n+1)`
-/

namespace A238056.P16187509453597002532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A166505 (n + 1))

end

end A238056.P16187509453597002532

/-! ## A238056.P3127058569813760528

`A178105(A008279(n))+A105184(n+1)`
-/

namespace A238056.P3127058569813760528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (A008279 n).toNat + A105184 (n + 1)

end

end A238056.P3127058569813760528

/-!
# A238057: Primes which are the concatenation of two primes in exactly two ways.

The programs for A238057, there is no canonical definition to state claims against.
-/

/-! ## A238057.P3855477170451236474

`A012884(A329566(n)+21)`
-/

namespace A238057.P3855477170451236474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A329566 n + 21).toNat

end

end A238057.P3855477170451236474

/-!
# A238058: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238058, there is no canonical definition to state claims against.
-/

/-! ## A238058.P3308157007671912120

`A238063(∑[n]+1)`
-/

namespace A238058.P3308157007671912120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238058.P3308157007671912120

/-! ## A238058.P16912700845385788362

`record[A238063(A056534(n+1))]`
-/

namespace A238058.P16912700845385788362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238058.P16912700845385788362

/-! ## A238058.P12999691110440973311

`record[A238063(A267104(n+1))]`
-/

namespace A238058.P12999691110440973311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238058.P12999691110440973311

/-! ## A238058.P9042383269589148905

`record[A010054(n)*A238063(n+1)]`
-/

namespace A238058.P9042383269589148905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238058.P9042383269589148905

/-! ## A238058.P1856449652000753790

`record[A103451(n)*A238063(n+1)]`
-/

namespace A238058.P1856449652000753790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A238063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238058.P1856449652000753790

/-!
# A238059: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238059, there is no canonical definition to state claims against.
-/

/-! ## A238059.P9845394799523617271

`A238063(∑[n+1]+2)`
-/

namespace A238059.P9845394799523617271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238059.P9845394799523617271

/-! ## A238059.P1169489154564398413

`record[A010054(n)*A238063(n+2)]`
-/

namespace A238059.P1169489154564398413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238059.P1169489154564398413

/-! ## A238059.P7849515283551818238

`record[A238063(A198453(n+1))]`
-/

namespace A238059.P7849515283551818238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238059.P7849515283551818238

/-! ## A238059.P8791733971985229343

`record[A238063(A198455(n+1))]`
-/

namespace A238059.P8791733971985229343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238059.P8791733971985229343

/-! ## A238059.P1001510505907890435

`record[root(A238063(n+2), A220328(n+3))]`
-/

namespace A238059.P1001510505907890435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238063 (n + 2) : ℝ) ^ (1 / (A220328 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238059.P1001510505907890435

/-!
# A238060: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238060, there is no canonical definition to state claims against.
-/

/-! ## A238060.P16562226498749151034

`A238063(∑[n+2]+4)`
-/

namespace A238060.P16562226498749151034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238060.P16562226498749151034

/-! ## A238060.P16446917392525009548

`record[A115952(n)*A238063(n+4)]`
-/

namespace A238060.P16446917392525009548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 n * A238063 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238060.P16446917392525009548

/-! ## A238060.P4502713237221112338

`record[gcd(A122204(n), A238063(n+4))]`
-/

namespace A238060.P4502713237221112338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122204 n) (A238063 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238060.P4502713237221112338

/-! ## A238060.P5805709301999749983

`A238063(A167614(n+1))+A151949(n)`
-/

namespace A238060.P5805709301999749983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A167614 (n + 1)).toNat + A151949 n

end

end A238060.P5805709301999749983

/-! ## A238060.P16209876613905931333

`A238063(A167614(n+1))+A185237(n)`
-/

namespace A238060.P16209876613905931333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A167614 (n + 1)).toNat + A185237 n

end

end A238060.P16209876613905931333

/-!
# A238061: Number of (n+1) X (4+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238061, there is no canonical definition to state claims against.
-/

/-! ## A238061.P6018067417214914249

`A238063(∑[n+3]+7)`
-/

namespace A238061.P6018067417214914249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238061.P6018067417214914249

/-! ## A238061.P13947480829462751321

`or(A000038(n), A238063(A055998(n+2)))`
-/

namespace A238061.P13947480829462751321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A238063 (A055998 (n + 2)).toNat)

end

end A238061.P13947480829462751321

/-! ## A238061.P7484135317028463701

`A238063(A055998(n+2))+A037833(n+1)`
-/

namespace A238061.P7484135317028463701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A055998 (n + 2)).toNat + A037833 (n + 1)

end

end A238061.P7484135317028463701

/-!
# A238062: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238062, there is no canonical definition to state claims against.
-/

/-! ## A238062.P18026293567850244046

`A238063(A374005(n+1))`
-/

namespace A238062.P18026293567850244046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (A374005 (n + 1)).toNat

end

end A238062.P18026293567850244046

/-! ## A238062.P4826344060386824039

`A238063(∑[n+5]+6)`
-/

namespace A238062.P4826344060386824039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238063 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A238062.P4826344060386824039

/-!
# A238064: Number of (n+1)X(n+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238064, there is no canonical definition to state claims against.
-/

/-! ## A238064.P5177930815439652047

`A238072((n+1)²+n²)`
-/

namespace A238064.P5177930815439652047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 ((n + 1) ^ 2 + n ^ 2)

end

end A238064.P5177930815439652047

/-!
# A238065: Number of (n+1)X(1+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238065, there is no canonical definition to state claims against.
-/

/-! ## A238065.P901474479264468007

`A238072(∑[n]+1)`
-/

namespace A238065.P901474479264468007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238065.P901474479264468007

/-! ## A238065.P11549049183986025591

`lcm(2, A238072(A000124(n)))`
-/

namespace A238065.P11549049183986025591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238072 (A000124 n).toNat)

end

end A238065.P11549049183986025591

/-! ## A238065.P13222137576852897185

`record[A238072(n+1)/A008518(n)]`
-/

namespace A238065.P13222137576852897185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238072 (n + 1) : ℚ) / (A008518 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238065.P13222137576852897185

/-! ## A238065.P329386188667569659

`record[A238072(n+1)/A008958(n)]`
-/

namespace A238065.P329386188667569659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238072 (n + 1) : ℚ) / (A008958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238065.P329386188667569659

/-! ## A238065.P10881146809800262667

`record[A238072(n+1)/A174151(n)]`
-/

namespace A238065.P10881146809800262667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238072 (n + 1) : ℚ) / (A174151 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238065.P10881146809800262667

/-!
# A238066: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238066, there is no canonical definition to state claims against.
-/

/-! ## A238066.P9199477740941530069

`A238072(∑[n+1]+2)`
-/

namespace A238066.P9199477740941530069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238066.P9199477740941530069

/-! ## A238066.P2545433695615007431

`lcm(2, A238072(A000096(n)+3))`
-/

namespace A238066.P2545433695615007431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238072 (A000096 n + 3).toNat)

end

end A238066.P2545433695615007431

/-! ## A238066.P6334162584117314267

`A238072(A000096(n)+3)+A102683(2*n)`
-/

namespace A238066.P6334162584117314267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A000096 n + 3).toNat + A102683 (2 * n)

end

end A238066.P6334162584117314267

/-! ## A238066.P7191219366216332857

`A238072(A000096(n)+3)%A238071(n+1)`
-/

namespace A238066.P7191219366216332857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238072 (A000096 n + 3).toNat) (A238071 (n + 1))

end

end A238066.P7191219366216332857

/-! ## A238066.P7780061863967331072

`record[A238072(A333530(n+1))]`
-/

namespace A238066.P7780061863967331072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238066.P7780061863967331072

/-!
# A238067: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238067, there is no canonical definition to state claims against.
-/

/-! ## A238067.P3218802410591883936

`A238072(∑[n+2]+4)`
-/

namespace A238067.P3218802410591883936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238067.P3218802410591883936

/-! ## A238067.P15349803369754664615

`lcm(2, A238072(A167614(n+1)))`
-/

namespace A238067.P15349803369754664615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238072 (A167614 (n + 1)).toNat)

end

end A238067.P15349803369754664615

/-! ## A238067.P7297356506118521486

`A184303(n+1)*A238072(A167614(n+1))`
-/

namespace A238067.P7297356506118521486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A238072 (A167614 (n + 1)).toNat

end

end A238067.P7297356506118521486

/-! ## A238067.P14081807999320541196

`A238072(A034856(n+2))%A238071(n+1)`
-/

namespace A238067.P14081807999320541196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238072 (A034856 (n + 2)).toNat) (A238071 (n + 1))

end

end A238067.P14081807999320541196

/-! ## A238067.P18144910767756500453

`A238072(A055999(n)+4)%A238061(n+1)`
-/

namespace A238067.P18144910767756500453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238072 (A055999 n + 4).toNat) (A238061 (n + 1))

end

end A238067.P18144910767756500453

/-!
# A238068: Number of (n+1) X (4+1) 0..3 arrays with the maximum minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238068, there is no canonical definition to state claims against.
-/

/-! ## A238068.P1129843477155353611

`A238072(A374004(n+1))`
-/

namespace A238068.P1129843477155353611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A374004 (n + 1)).toNat

end

end A238068.P1129843477155353611

/-! ## A238068.P15836581518904238696

`A238072(A052905(n)+9)`
-/

namespace A238068.P15836581518904238696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A052905 n + 9).toNat

end

end A238068.P15836581518904238696

/-! ## A238068.P15805831390109614663

`A238072(A055999(n)+10)`
-/

namespace A238068.P15805831390109614663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A055999 n + 10).toNat

end

end A238068.P15805831390109614663

/-! ## A238068.P1616506496346027401

`A238072(A167614(n+2)+1)`
-/

namespace A238068.P1616506496346027401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A167614 (n + 2) + 1).toNat

end

end A238068.P1616506496346027401

/-! ## A238068.P98160343708341470

`A238072(Δ[A023545(n+1)-n²])`
-/

namespace A238068.P98160343708341470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (f1 (n + 1) - f1 n).toNat

end

end A238068.P98160343708341470

/-!
# A238069: Number of (n+1)X(5+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238069, there is no canonical definition to state claims against.
-/

/-! ## A238069.P14429314915691714371

`A238072(A374005(n+1))`
-/

namespace A238069.P14429314915691714371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A374005 (n + 1)).toNat

end

end A238069.P14429314915691714371

/-! ## A238069.P622703859750266038

`A238072(eq[6, A131818(n+1)])`
-/

namespace A238069.P622703859750266038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238069.P622703859750266038

/-! ## A238069.P16301633497903811717

`A238072(A056115(n)+11)`
-/

namespace A238069.P16301633497903811717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A056115 n + 11).toNat

end

end A238069.P16301633497903811717

/-! ## A238069.P4913325244350379548

`A238072(eq[4, A193592(n)])`
-/

namespace A238069.P4913325244350379548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238069.P4913325244350379548

/-! ## A238069.P319971413532358434

`A238072(eq[8, A209439(n)])`
-/

namespace A238069.P319971413532358434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238069.P319971413532358434

/-!
# A238070: Number of (n+1)X(6+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238070, there is no canonical definition to state claims against.
-/

/-! ## A238070.P590436670783007505

`A238072(A374007(n+1))`
-/

namespace A238070.P590436670783007505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A374007 (n + 1)).toNat

end

end A238070.P590436670783007505

/-! ## A238070.P845786080512802072

`A238072(eq[5, A193592(n)])`
-/

namespace A238070.P845786080512802072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238070.P845786080512802072

/-! ## A238070.P5607228063728513770

`A238072(eq[8, A258709(n)])`
-/

namespace A238070.P5607228063728513770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238070.P5607228063728513770

/-! ## A238070.P1553162017081035598

`A238072(Δ[A023545(n+2)]-1)`
-/

namespace A238070.P1553162017081035598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (f1 (n + 1) - f1 n - 1).toNat

end

end A238070.P1553162017081035598

/-!
# A238071: Number of (n+1)X(7+1) 0..3 arrays with the maximum minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238071, there is no canonical definition to state claims against.
-/

/-! ## A238071.P16507689445357274657

`A238072(A374008(n+1))`
-/

namespace A238071.P16507689445357274657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A374008 (n + 1)).toNat

end

end A238071.P16507689445357274657

/-! ## A238071.P432922478191211486

`A238072(A055999(n+4))`
-/

namespace A238071.P432922478191211486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (A055999 (n + 4)).toNat

end

end A238071.P432922478191211486

/-! ## A238071.P13340628139481342951

`A238072(eq[6, A193592(n)])`
-/

namespace A238071.P13340628139481342951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238071.P13340628139481342951

/-!
# A238073: Number of (n+1)X(n+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238073, there is no canonical definition to state claims against.
-/

/-! ## A238073.P371170461220932256

`A238081((n+1)²+n²)`
-/

namespace A238073.P371170461220932256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 ((n + 1) ^ 2 + n ^ 2)

end

end A238073.P371170461220932256

/-! ## A238073.P10222005862362827734

`record[gcd(A114327(n), A238081(n+1))]`
-/

namespace A238073.P10222005862362827734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A238081 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238073.P10222005862362827734

/-! ## A238073.P13094414153669788482

`record[root(A238081(n+1), A072030(n+1))]`
-/

namespace A238073.P13094414153669788482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A238081 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238073.P13094414153669788482

/-!
# A238074: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238074, there is no canonical definition to state claims against.
-/

/-! ## A238074.P305820093024315422

`A238081(∑[n]+1)`
-/

namespace A238074.P305820093024315422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238074.P305820093024315422

/-! ## A238074.P5168582677281756420

`lcm(2, A238081(A000124(n)))`
-/

namespace A238074.P5168582677281756420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238081 (A000124 n).toNat)

end

end A238074.P5168582677281756420

/-! ## A238074.P8204653642862287189

`record[A238081(A114091(n+1))]`
-/

namespace A238074.P8204653642862287189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238074.P8204653642862287189

/-! ## A238074.P16838663342630511279

`record[A010054(n)*A238081(n+1)]`
-/

namespace A238074.P16838663342630511279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238074.P16838663342630511279

/-! ## A238074.P13913571146372958081

`record[A103451(n)*A238081(n+1)]`
-/

namespace A238074.P13913571146372958081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A238081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238074.P13913571146372958081

/-!
# A238075: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238075, there is no canonical definition to state claims against.
-/

/-! ## A238075.P5619885510018923546

`A238081(∑[n+1]+2)`
-/

namespace A238075.P5619885510018923546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238075.P5619885510018923546

/-! ## A238075.P10708476270410298285

`record[A238081(A114091(n+1)+1)]`
-/

namespace A238075.P10708476270410298285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238075.P10708476270410298285

/-! ## A238075.P10478392187027405421

`record[A010054(n)*A238081(n+2)]`
-/

namespace A238075.P10478392187027405421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238075.P10478392187027405421

/-! ## A238075.P10774738618390812453

`record[A238081(A000096(val(n+1, 2)+1))]`
-/

namespace A238075.P10774738618390812453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238075.P10774738618390812453

/-! ## A238075.P11156003727783391331

`record[A238081(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A238075.P11156003727783391331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238075.P11156003727783391331

/-!
# A238076: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238076, there is no canonical definition to state claims against.
-/

/-! ## A238076.P5705577436651272405

`A238081(∑[n+2]+4)`
-/

namespace A238076.P5705577436651272405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238076.P5705577436651272405

/-! ## A238076.P5269527244686100919

`lcm(2, A238081(A167614(n+1)))`
-/

namespace A238076.P5269527244686100919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238081 (A167614 (n + 1)).toNat)

end

end A238076.P5269527244686100919

/-! ## A238076.P3620125409224841474

`A238081(A167614(n+1))+A185284(n)`
-/

namespace A238076.P3620125409224841474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A167614 (n + 1)).toNat + A185284 n

end

end A238076.P3620125409224841474

/-! ## A238076.P2819729315745653898

`A256974(n)+A238081(A167614(n+1))`
-/

namespace A238076.P2819729315745653898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A238081 (A167614 (n + 1)).toNat

end

end A238076.P2819729315745653898

/-! ## A238076.P8423969584355398301

`A057427(n+1)*A238081(A167614(n+1))`
-/

namespace A238076.P8423969584355398301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A238081 (A167614 (n + 1)).toNat

end

end A238076.P8423969584355398301

/-!
# A238077: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238077, there is no canonical definition to state claims against.
-/

/-! ## A238077.P10388878789702005312

`A238081(∑[n+3]+7)`
-/

namespace A238077.P10388878789702005312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238077.P10388878789702005312

/-! ## A238077.P14056085296619821597

`lcm(2, A238081(A374004(n+1)))`
-/

namespace A238077.P14056085296619821597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238081 (A374004 (n + 1)).toNat)

end

end A238077.P14056085296619821597

/-! ## A238077.P6769647348230516629

`A327932(n+1)+A238081(A374004(n+1))`
-/

namespace A238077.P6769647348230516629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327932 (n + 1) + A238081 (A374004 (n + 1)).toNat

end

end A238077.P6769647348230516629

/-! ## A238077.P7566687586451557677

`A054977(n+1)*A238081(A374004(n+1))`
-/

namespace A238077.P7566687586451557677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A238081 (A374004 (n + 1)).toNat

end

end A238077.P7566687586451557677

/-! ## A238077.P11411126920623943159

`A238081(A374004(n+1))+A163536(3*n+1)`
-/

namespace A238077.P11411126920623943159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A374004 (n + 1)).toNat + A163536 (3 * n + 1)

end

end A238077.P11411126920623943159

/-!
# A238078: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238078, there is no canonical definition to state claims against.
-/

/-! ## A238078.P932275761616447313

`A238081(A374005(n+1))`
-/

namespace A238078.P932275761616447313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A374005 (n + 1)).toNat

end

end A238078.P932275761616447313

/-! ## A238078.P9928276807538390916

`A238081(A167499(n+3))`
-/

namespace A238078.P9928276807538390916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A167499 (n + 3)).toNat

end

end A238078.P9928276807538390916

/-! ## A238078.P11065732835981630613

`A238081(A056000(n)+15)`
-/

namespace A238078.P11065732835981630613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A056000 n + 15).toNat

end

end A238078.P11065732835981630613

/-! ## A238078.P17429700639580369777

`A238081(A000124(n+4)+4)`
-/

namespace A238078.P17429700639580369777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A000124 (n + 4) + 4).toNat

end

end A238078.P17429700639580369777

/-! ## A238078.P732396843284405010

`A238081(A000217(n+4)+5)`
-/

namespace A238078.P732396843284405010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A000217 (n + 4) + 5).toNat

end

end A238078.P732396843284405010

/-!
# A238079: Number of (n+1) X (6+1) 0..3 arrays with the maximum plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238079, there is no canonical definition to state claims against.
-/

/-! ## A238079.P11633851171272244235

`A238081(A374007(n+1))`
-/

namespace A238079.P11633851171272244235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A374007 (n + 1)).toNat

end

end A238079.P11633851171272244235

/-! ## A238079.P9237150754628363808

`A238081(A000217(n+5)+6)`
-/

namespace A238079.P9237150754628363808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A000217 (n + 5) + 6).toNat

end

end A238079.P9237150754628363808

/-! ## A238079.P16796812285749750276

`A238081(eq[7, A131818(n+1)])`
-/

namespace A238079.P16796812285749750276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238079.P16796812285749750276

/-! ## A238079.P6993585950862669201

`A238081(Δ[Δ[A006504(n+1)]])`
-/

namespace A238079.P6993585950862669201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (f1 (n + 1) - f1 n).toNat

end

end A238079.P6993585950862669201

/-!
# A238080: Number of (n+1)X(7+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A238080, there is no canonical definition to state claims against.
-/

/-! ## A238080.P14162700225333564822

`A238081(A374008(n+1))`
-/

namespace A238080.P14162700225333564822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A374008 (n + 1)).toNat

end

end A238080.P14162700225333564822

/-! ## A238080.P1501125226703446681

`A238081(eq[8, A131818(n+1)])`
-/

namespace A238080.P1501125226703446681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238080.P1501125226703446681

/-! ## A238080.P5550824029476583218

`A238081(A055999(n+4))`
-/

namespace A238080.P5550824029476583218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (A055999 (n + 4)).toNat

end

end A238080.P5550824029476583218

/-! ## A238080.P18178823655594035099

`A238081(eq[4, A219347(n)])`
-/

namespace A238080.P18178823655594035099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238080.P18178823655594035099

/-! ## A238080.P14948697962137941661

`A238081(eq[6, A193592(n)])`
-/

namespace A238080.P14948697962137941661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238080.P14948697962137941661

/-!
# A238083: Primes p such that p^4 - p^3 + 1 is also prime.

The programs for A238083, there is no canonical definition to state claims against.
-/

/-! ## A238083.P16281484797064593953

`A272407(A272407(n+1)+char[1])`
-/

namespace A238083.P16281484797064593953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272407 (A272407 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A238083.P16281484797064593953

/-!
# A238085: Expansion of e.g.f.: -LambertW(-sinh(x)).

The programs for A238085, there is no canonical definition to state claims against.
-/

/-! ## A238085.P3370217443889517085

`∑[A079691(A339984(2*n+3))]`
-/

namespace A238085.P3370217443889517085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 (A339984 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238085.P3370217443889517085

/-! ## A238085.P11581326628131033141

`A142150(A362661(n)+A002467(n))`
-/

namespace A238085.P11581326628131033141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A362661 n + A002467 n).toNat

end

end A238085.P11581326628131033141

/-!
# A238087: A129779(n+2)/A006954(n).

The programs for A238087, there is no canonical definition to state claims against.
-/

/-! ## A238087.P1452149260603672767

`A129779(n+2)/A006954(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A238087.P1452149260603672767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129779 (n + 2) : ℚ) / (A006954 n : ℚ)

end

end A238087.P1452149260603672767

/-! ## A238087.P15828743748687547497

`A129779(n+2)/A176591(2*n+1-3%(n+2))`
-/

namespace A238087.P15828743748687547497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129779 (n + 2) : ℚ) / (A176591 (2 * n + 1 - 3 % (n + 2)) : ℚ)

end

end A238087.P15828743748687547497

/-! ## A238087.P14292805214644315268

`A129779(n+2)/A027642(A004275(n))`
-/

namespace A238087.P14292805214644315268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129779 (n + 2) : ℚ) / (A027642 (A004275 n).toNat : ℚ)

end

end A238087.P14292805214644315268

/-! ## A238087.P9971699873181095520

`A129779(n+2)/A027642(A004280(n+1)-1)`
-/

namespace A238087.P9971699873181095520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129779 (n + 2) : ℚ) / (A027642 (A004280 (n + 1) - 1).toNat : ℚ)

end

end A238087.P9971699873181095520

/-!
# A238089: Number of compositions of n such that the minimum part is equal to 1 and the first 1 occurs before any maximum part in the composition.

The programs for A238089, there is no canonical definition to state claims against.
-/

/-! ## A238089.P5272303884423275778

`round(∑[A193316(n+1)/6])`
-/

namespace A238089.P5272303884423275778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193316 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238089.P5272303884423275778

/-! ## A238089.P17428299374732332152

`A073750(A095902(n))`
-/

namespace A238089.P17428299374732332152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A095902 n).toNat

end

end A238089.P17428299374732332152

/-! ## A238089.P170926843265133765

`A073750(A056823(n)+n)`
-/

namespace A238089.P170926843265133765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A056823 n + (n : ℤ)).toNat

end

end A238089.P170926843265133765

/-! ## A238089.P8570055441186633772

`A008620(A103662(n))-A174650(n)`
-/

namespace A238089.P8570055441186633772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A103662 n).toNat - A174650 n

end

end A238089.P8570055441186633772

/-! ## A238089.P9605844619109050943

`A135663(A049154(n))`
-/

namespace A238089.P9605844619109050943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A049154 n).toNat

end

end A238089.P9605844619109050943

/-!
# A238090: Primes whose hexadecimal representation contains only consonants.

The programs for A238090, there is no canonical definition to state claims against.
-/

/-! ## A238090.P3128019724287277230

`p?[A126441(A027693(n))]`
-/

namespace A238090.P3128019724287277230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (A027693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238090.P3128019724287277230

/-!
# A238091: A bisection of A136259.

The programs for A238091, there is no canonical definition to state claims against.
-/

/-! ## A238091.P8688197665975923277

`A136259(2*n+1)`
-/

namespace A238091.P8688197665975923277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (2 * n + 1)

end

end A238091.P8688197665975923277

/-! ## A238091.P9589906661228975301

`record[A136259(n^(n%2))]`
-/

namespace A238091.P9589906661228975301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238091.P9589906661228975301

/-! ## A238091.P13662906019918355358

`record[A136259(lcm(4, n+1)/4)]`
-/

namespace A238091.P13662906019918355358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238091.P13662906019918355358

/-! ## A238091.P17569760360108124079

`record[A136259(and(n, n+1)+1)]`
-/

namespace A238091.P17569760360108124079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238091.P17569760360108124079

/-! ## A238091.P865553909855440523

`and(-1, A136259((n+1)²-n²))`
-/

namespace A238091.P865553909855440523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A136259 ((n + 1) ^ 2 - n ^ 2))

end

end A238091.P865553909855440523

/-!
# A238092: A bisection of A136259.

The programs for A238092, there is no canonical definition to state claims against.
-/

/-! ## A238092.P17701191173461350019

`A136259(2*(n+1))`
-/

namespace A238092.P17701191173461350019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (2 * (n + 1))

end

end A238092.P17701191173461350019

/-! ## A238092.P4696056417038503010

`record[A136259(xor(1, n)+1)]`
-/

namespace A238092.P4696056417038503010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238092.P4696056417038503010

/-! ## A238092.P12686175864867791493

`record[A136259(abs(xor(n, -2)))]`
-/

namespace A238092.P12686175864867791493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238092.P12686175864867791493

/-! ## A238092.P7410391067880636026

`or(char[1], A136259(n+2+n))`
-/

namespace A238092.P7410391067880636026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A136259 (n + 2 + n))

end

end A238092.P7410391067880636026

/-! ## A238092.P4714553966119763395

`record[A136259(A003417(n))]`
-/

namespace A238092.P4714553966119763395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136259 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238092.P4714553966119763395

/-!
# A238093: Array read by antidiagonals upwards: T(n,k) (n>=1, k>=0) = number of Dyck paths of semilength k avoiding the pattern U^(n-1) D U D^(n-1).

The programs for A238093, there is no canonical definition to state claims against.
-/

/-! ## A238093.P11348316480358467375

`gcd(A080934(n), A100071(A294250(n)))`
-/

namespace A238093.P11348316480358467375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080934 n) (A100071 (A294250 n).toNat)

end

end A238093.P11348316480358467375

/-! ## A238093.P11111700544090220728

`A288942(n)%p?[A181846(n+1)]`
-/

namespace A238093.P11111700544090220728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288942 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A238093.P11111700544090220728

/-! ## A238093.P13305767611461675461

`A287847(n)%A256450(A213936(n+1))`
-/

namespace A238093.P13305767611461675461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287847 n) (A256450 (A213936 (n + 1)).toNat)

end

end A238093.P13305767611461675461

/-! ## A238093.P4795653691240867852

`A240608(n)-A185037(A002708(n+1))`
-/

namespace A238093.P4795653691240867852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240608 n - A185037 (A002708 (n + 1)).toNat

end

end A238093.P4795653691240867852

/-! ## A238093.P8602802466759361443

`A080934(n)/(A011731(A249618(n))+1)`
-/

namespace A238093.P8602802466759361443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080934 n : ℚ) / (A011731 (A249618 n).toNat + 1 : ℚ)

end

end A238093.P8602802466759361443

/-!
# A238095: Array read by antidiagonals upwards: T(n,k) (n>=1, k>=0) = number of Dyck paths of semilength k avoiding the pattern U^(n-1) D^(n-1) U D.

The programs for A238095, there is no canonical definition to state claims against.
-/

/-! ## A238095.P13733100822655357328

`A084558(A080934(n)^A275730(n))`
-/

namespace A238095.P13733100822655357328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A080934 n : ℚ) ^ (A275730 n : ℤ))).toNat

end

end A238095.P13733100822655357328

/-! ## A238095.P6220711607095236841

`A084558(A240608(n)^A275730(n))`
-/

namespace A238095.P6220711607095236841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A240608 n : ℚ) ^ (A275730 n : ℤ))).toNat

end

end A238095.P6220711607095236841

/-! ## A238095.P4793799815126689243

`A084558(A320955(n)^A275730(n))`
-/

namespace A238095.P4793799815126689243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A320955 n : ℚ) ^ (A275730 n : ℤ))).toNat

end

end A238095.P4793799815126689243

/-! ## A238095.P14656605197472936435

`A080934(n%A091736(n))`
-/

namespace A238095.P14656605197472936435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (Int.tmod (n : ℤ) (A091736 n)).toNat

end

end A238095.P14656605197472936435

/-! ## A238095.P15181282241864131931

`char[2]+A001222(5^A294220(n))`
-/

namespace A238095.P15181282241864131931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A294220 n : ℤ))).toNat

end

end A238095.P15181282241864131931

/-!
# A238096: a(n) = Sum_{k=2..n} floor(n/k)*floor((tau(k)+1)/2), where tau = A000005.

The programs for A238096, the canonical program `A238096.P7573035923647933420` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238096 has offset 1).

The definition of A238096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238096.P7573035923647933420

`∑[A140773(n+1)-1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A238096

/-- `∑[A140773(n+1)-1]` -/
def P7573035923647933420.Spec : Prop :=
  ∀ n, P7573035923647933420.a n = A238096 (n + 1)

theorem P7573035923647933420.correct : P7573035923647933420.Spec := by
  intro n
  simp only [A238096, Nat.add_sub_cancel]

end A238096

/-! ## A238096.P4638457851205157500

`∑[∑{d}[n+1, A038548(#)]-1]`
-/

namespace A238096.P4638457851205157500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A038548 d - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P4638457851205157500

namespace A238096

/-- `∑[∑{d}[n+1, A038548(#)]-1]` -/
def P4638457851205157500.Spec : Prop :=
  ∀ n, P4638457851205157500.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P14460512952606488998

`∑[∑{d}[n+1, ceil(A000005(#)/2)]-1]`
-/

namespace A238096.P14460512952606488998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈(A000005 d : ℚ) / 2⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P14460512952606488998

namespace A238096

/-- `∑[∑{d}[n+1, ceil(A000005(#)/2)]-1]` -/
def P14460512952606488998.Spec : Prop :=
  ∀ n, P14460512952606488998.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P5210776921445792871

`∑[∑{d}[n+1, A110654(A000005(#))]-1]`
-/

namespace A238096.P5210776921445792871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A110654 (A000005 d).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P5210776921445792871

namespace A238096

/-- `∑[∑{d}[n+1, A110654(A000005(#))]-1]` -/
def P5210776921445792871.Spec : Prop :=
  ∀ n, P5210776921445792871.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P7512331574202841490

`∑[∑{d}[n+1, A004526(A000005(#)+1)]-1]`
-/

namespace A238096.P7512331574202841490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A004526 (A000005 d + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P7512331574202841490

namespace A238096

/-- `∑[∑{d}[n+1, A004526(A000005(#)+1)]-1]` -/
def P7512331574202841490.Spec : Prop :=
  ∀ n, P7512331574202841490.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P16898514759595269558

`∑[∑{d}[n+1, A008619(A000005(#)-1)]-1]`
-/

namespace A238096.P16898514759595269558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008619 (A000005 d - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P16898514759595269558

namespace A238096

/-- `∑[∑{d}[n+1, A008619(A000005(#)-1)]-1]` -/
def P16898514759595269558.Spec : Prop :=
  ∀ n, P16898514759595269558.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P17237645675300542824

`∑[A057918(A140773(n+1)²)]`
-/

namespace A238096.P17237645675300542824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A140773 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P17237645675300542824

namespace A238096

/-- `∑[A057918(A140773(n+1)²)]` -/
def P17237645675300542824.Spec : Prop :=
  ∀ n, P17237645675300542824.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P7491418005693826282

`∑[∑{d}[n+1, A069291(#²)]-1]`
-/

namespace A238096.P7491418005693826282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A069291 (d ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P7491418005693826282

namespace A238096

/-- `∑[∑{d}[n+1, A069291(#²)]-1]` -/
def P7491418005693826282.Spec : Prop :=
  ∀ n, P7491418005693826282.a n = A238096 (n + 1)

end A238096

/-! ## A238096.P14737845259921980859

`∑[A086520(A140773(n+1)²)]`
-/

namespace A238096.P14737845259921980859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A140773 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238096.P14737845259921980859

namespace A238096

/-- `∑[A086520(A140773(n+1)²)]` -/
def P14737845259921980859.Spec : Prop :=
  ∀ n, P14737845259921980859.a n = A238096 (n + 1)

end A238096

/-!
# A238097: Number of monic cubic polynomials with coefficients from {1..n} and maximum coefficient equal to n, for which all three roots are integers.

The programs for A238097, there is no canonical definition to state claims against.
-/

/-! ## A238097.P641756590824723964

`A107286(A066955(n+1)^A000796(n))`
-/

namespace A238097.P641756590824723964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A066955 (n + 1) : ℚ) ^ (A000796 (n + 1) : ℤ))).toNat

end

end A238097.P641756590824723964

/-! ## A238097.P16138431459380524019

`A066955(n+1)/A121657(A134816(n+1))`
-/

namespace A238097.P16138431459380524019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066955 (n + 1) : ℚ) / (A121657 (A134816 (n + 1)).toNat : ℚ)

end

end A238097.P16138431459380524019

/-! ## A238097.P2762050887645728978

`(A067752(n+1)-A038548(n+1))/A121657(A134816(n+1))`
-/

namespace A238097.P2762050887645728978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067752 (n + 1) - A038548 (n + 1) : ℚ) / (A121657 (A134816 (n + 1)).toNat : ℚ)

end

end A238097.P2762050887645728978

/-! ## A238097.P8654376420144666797

`gcd(A066955(n+1), A102683(A013611(n)))`
-/

namespace A238097.P8654376420144666797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066955 (n + 1)) (A102683 (A013611 n).toNat)

end

end A238097.P8654376420144666797

/-! ## A238097.P17976412841342318775

`A066955(n+1)/A290105(A251736(n+1))`
-/

namespace A238097.P17976412841342318775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066955 (n + 1) : ℚ) / (A290105 (A251736 (n + 1)).toNat : ℚ)

end

end A238097.P17976412841342318775

/-!
# A238098: Number of cubic polynomials with coefficients from {1..n} for which all three roots are integers.

The programs for A238098, there is no canonical definition to state claims against.
-/

/-! ## A238098.P2445717541991914487

`∑[∑{d}[n+1, A238097(#)]]`
-/

namespace A238098.P2445717541991914487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A238097 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238098.P2445717541991914487

/-! ## A238098.P16538139518511483110

`∑[A008615(n)]-A102683(A006484(n))`
-/

namespace A238098.P16538139518511483110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102683 (A006484 n).toNat

end

end A238098.P16538139518511483110

/-! ## A238098.P14673660039473324767

`floor(A300273(A300273(2*(n+1))-2)/8)`
-/

namespace A238098.P14673660039473324767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300273 (A300273 (2 * (n + 1)) - 2).toNat : ℚ) / 8⌋

end

end A238098.P14673660039473324767

/-! ## A238098.P14442567505585540301

`∑[A024939(A053830(A135520(n)))]`
-/

namespace A238098.P14442567505585540301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 (A053830 (A135520 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238098.P14442567505585540301

/-!
# A238099: The stonemason's problem: numbers n such that n^2 is the sum of more than three consecutive cubes, the cube 1 being disallowed.

The programs for A238099, there is no canonical definition to state claims against.
-/

/-! ## A238099.P12177490502232568796

`filter[A163393(n+2), A277674(#)]`
-/

namespace A238099.P12177490502232568796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A277674 (f1 j).toNat = 1) n)

end

end A238099.P12177490502232568796

/-! ## A238099.P15196623827210670051

`Δ[A331170(∑[A163393(n+1)])]`
-/

namespace A238099.P15196623827210670051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238099.P15196623827210670051

/-! ## A238099.P9355279531283925100

`A163393(n+2)%A163401(n+1)`
-/

namespace A238099.P9355279531283925100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163393 (n + 2)) (A163401 (n + 1))

end

end A238099.P9355279531283925100

/-! ## A238099.P3652154718715443639

`sqrt(A163392(n+2))%A163401(n+1)`
-/

namespace A238099.P3652154718715443639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A163392 (n + 2) : ℝ))) (A163401 (n + 1))

end

end A238099.P3652154718715443639

/-! ## A238099.P1706037659869959607

`A163393(n+2)+A000007((1-6*n)²)`
-/

namespace A238099.P1706037659869959607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (n + 2) + A000007 ((1 - (6 * n : ℤ)) ^ 2).toNat

end

end A238099.P1706037659869959607

