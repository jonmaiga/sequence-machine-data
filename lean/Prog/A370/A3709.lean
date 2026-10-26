import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A370900: Partial sums of the powerfree part function (A055231).

The programs for A370900, the canonical program `A370900.P6636763329931890849` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370900 has offset 1).

The definition of A370900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370900.P6636763329931890849

`∑[∏{p}[n+1, lcm(n+1, #²)/(n+1)]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370900

/-- `∑[∏{p}[n+1, lcm(n+1, #²)/(n+1)]]` -/
def P6636763329931890849.Spec : Prop :=
  ∀ n, P6636763329931890849.a n = (A370900 (n + 1) : ℚ)

end A370900

/-! ## A370900.P5071358936693745644

`∑[A055231(n+1)]`
-/

namespace A370900.P5071358936693745644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P5071358936693745644

namespace A370900

/-- `∑[A055231(n+1)]` -/
def P5071358936693745644.Spec : Prop :=
  ∀ n, P5071358936693745644.a n = A370900 (n + 1)

end A370900

/-! ## A370900.P4798440752406060941

`∑[(n+1)/A057521(n+1)]`
-/

namespace A370900.P4798440752406060941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P4798440752406060941

namespace A370900

/-- `∑[(n+1)/A057521(n+1)]` -/
def P4798440752406060941.Spec : Prop :=
  ∀ n, P4798440752406060941.a n = (A370900 (n + 1) : ℚ)

end A370900

/-! ## A370900.P3933396179258607149

`∑[A197863(n+1)/(n+1)]`
-/

namespace A370900.P3933396179258607149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P3933396179258607149

namespace A370900

/-- `∑[A197863(n+1)/(n+1)]` -/
def P3933396179258607149.Spec : Prop :=
  ∀ n, P3933396179258607149.a n = (A370900 (n + 1) : ℚ)

end A370900

/-! ## A370900.P15766067074944952671

`∑[A007947(n+1)/A007947(A003557(n+1))]`
-/

namespace A370900.P15766067074944952671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A003557 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P15766067074944952671

namespace A370900

/-- `∑[A007947(n+1)/A007947(A003557(n+1))]` -/
def P15766067074944952671.Spec : Prop :=
  ∀ n, P15766067074944952671.a n = (A370900 (n + 1) : ℚ)

end A370900

/-! ## A370900.P6510483288047561615

`∑[A329376((n+1)²)]`
-/

namespace A370900.P6510483288047561615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P6510483288047561615

namespace A370900

/-- `∑[A329376((n+1)²)]` -/
def P6510483288047561615.Spec : Prop :=
  ∀ n, P6510483288047561615.a n = A370900 (n + 1)

end A370900

/-! ## A370900.P1252086094321085463

`∑[A360541((n+1)²)]`
-/

namespace A370900.P1252086094321085463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370900.P1252086094321085463

namespace A370900

/-- `∑[A360541((n+1)²)]` -/
def P1252086094321085463.Spec : Prop :=
  ∀ n, P1252086094321085463.a n = A370900 (n + 1)

end A370900

/-!
# A370901: Partial alternating sums of the powerfree part function (A055231).

The programs for A370901, the canonical program `A370901.P15501808672324558027` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370901 has offset 1).

The definition of A370901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370901.P15501808672324558027

`∑[(-1)^n*∏{p}[n+1, lcm(n+1, #²)/(n+1)]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370901

/-- `∑[(-1)^n*∏{p}[n+1, lcm(n+1, #²)/(n+1)]]` -/
def P15501808672324558027.Spec : Prop :=
  ∀ n, P15501808672324558027.a n = (A370901 (n + 1) : ℚ)

end A370901

/-! ## A370901.P14606466511078114699

`∑[A055231(n+1)/(-1)^n]`
-/

namespace A370901.P14606466511078114699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055231 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370901.P14606466511078114699

namespace A370901

/-- `∑[A055231(n+1)/(-1)^n]` -/
def P14606466511078114699.Spec : Prop :=
  ∀ n, P14606466511078114699.a n = (A370901 (n + 1) : ℚ)

end A370901

/-! ## A370901.P15628217170073346437

`∑[A033999(n)*A055231(n+1)]`
-/

namespace A370901.P15628217170073346437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370901.P15628217170073346437

namespace A370901

/-- `∑[A033999(n)*A055231(n+1)]` -/
def P15628217170073346437.Spec : Prop :=
  ∀ n, P15628217170073346437.a n = A370901 (n + 1)

end A370901

/-! ## A370901.P3628665384039472948

`∑[A055231(n+1)*A057077(2*n+1)]`
-/

namespace A370901.P3628665384039472948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A057077 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370901.P3628665384039472948

namespace A370901

/-- `∑[A055231(n+1)*A057077(2*n+1)]` -/
def P3628665384039472948.Spec : Prop :=
  ∀ n, P3628665384039472948.a n = A370901 (n + 1)

end A370901

/-!
# A370902: Partial sums of the powerful part function (A057521).

The programs for A370902, the canonical program `A370902.P6386523772025538963` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370902 has offset 1).

The definition of A370902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370902.P6386523772025538963

`∑[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370902

/-- `∑[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])]` -/
def P6386523772025538963.Spec : Prop :=
  ∀ n, (P6386523772025538963.a n : ℤ) = A370902 (n + 1)

theorem P6386523772025538963.correct : P6386523772025538963.Spec := by
  intro n
  simp only [A370902, Nat.add_sub_cancel]

end A370902

/-! ## A370902.P5360948835166465525

`∑[A057521(n+1)]`
-/

namespace A370902.P5360948835166465525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P5360948835166465525

namespace A370902

/-- `∑[A057521(n+1)]` -/
def P5360948835166465525.Spec : Prop :=
  ∀ n, P5360948835166465525.a n = A370902 (n + 1)

end A370902

/-! ## A370902.P11786281021562999312

`∑[n+1-A326186(n+1)]`
-/

namespace A370902.P11786281021562999312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P11786281021562999312

namespace A370902

/-- `∑[n+1-A326186(n+1)]` -/
def P11786281021562999312.Spec : Prop :=
  ∀ n, P11786281021562999312.a n = A370902 (n + 1)

end A370902

/-! ## A370902.P18124357851812057081

`∑[(n+1)/A055231(n+1)]`
-/

namespace A370902.P18124357851812057081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P18124357851812057081

namespace A370902

/-- `∑[(n+1)/A055231(n+1)]` -/
def P18124357851812057081.Spec : Prop :=
  ∀ n, P18124357851812057081.a n = (A370902 (n + 1) : ℚ)

end A370902

/-! ## A370902.P695663908783277517

`∑[(n+1)²/A197863(n+1)]`
-/

namespace A370902.P695663908783277517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A197863 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P695663908783277517

namespace A370902

/-- `∑[(n+1)²/A197863(n+1)]` -/
def P695663908783277517.Spec : Prop :=
  ∀ n, P695663908783277517.a n = (A370902 (n + 1) : ℚ)

end A370902

/-! ## A370902.P15352549845002278655

`∑[A003557(n+1)*A071773(n+1)]`
-/

namespace A370902.P15352549845002278655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P15352549845002278655

namespace A370902

/-- `∑[A003557(n+1)*A071773(n+1)]` -/
def P15352549845002278655.Spec : Prop :=
  ∀ n, P15352549845002278655.a n = A370902 (n + 1)

end A370902

/-! ## A370902.P15633253844468282528

`∑[A011264(A011264(n+1))]`
-/

namespace A370902.P15633253844468282528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A011264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P15633253844468282528

namespace A370902

/-- `∑[A011264(A011264(n+1))]` -/
def P15633253844468282528.Spec : Prop :=
  ∀ n, P15633253844468282528.a n = A370902 (n + 1)

end A370902

/-! ## A370902.P16913091376131307009

`∑[(n+1)/A329376((n+1)²)]`
-/

namespace A370902.P16913091376131307009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329376 ((n + 1) ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P16913091376131307009

namespace A370902

/-- `∑[(n+1)/A329376((n+1)²)]` -/
def P16913091376131307009.Spec : Prop :=
  ∀ n, P16913091376131307009.a n = (A370902 (n + 1) : ℚ)

end A370902

/-! ## A370902.P12748197511150775092

`∑[(n+1)/A360541((n+1)²)]`
-/

namespace A370902.P12748197511150775092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360541 ((n + 1) ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P12748197511150775092

namespace A370902

/-- `∑[(n+1)/A360541((n+1)²)]` -/
def P12748197511150775092.Spec : Prop :=
  ∀ n, P12748197511150775092.a n = (A370902 (n + 1) : ℚ)

end A370902

/-! ## A370902.P7592721859584588172

`∑[A366765((n+1)²)/(n+1)]`
-/

namespace A370902.P7592721859584588172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366765 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370902.P7592721859584588172

namespace A370902

/-- `∑[A366765((n+1)²)/(n+1)]` -/
def P7592721859584588172.Spec : Prop :=
  ∀ n, P7592721859584588172.a n = (A370902 (n + 1) : ℚ)

end A370902

/-!
# A370903: Partial alternating sums of the powerful part function (A057521).

The programs for A370903, the canonical program `A370903.P9675851703522409605` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370903 has offset 1).

The definition of A370903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370903.P9675851703522409605

`∑[(-1)^n*gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370903

/-- `∑[(-1)^n*gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])]` -/
def P9675851703522409605.Spec : Prop :=
  ∀ n, P9675851703522409605.a n = A370903 (n + 1)

theorem P9675851703522409605.correct : P9675851703522409605.Spec := by
  intro n
  simp only [A370903, Nat.add_sub_cancel]

end A370903

/-! ## A370903.P12730980727849626822

`∑[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A033999(n)]`
-/

namespace A370903.P12730980727849626822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370903.P12730980727849626822

namespace A370903

/-- `∑[gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A033999(n)]` -/
def P12730980727849626822.Spec : Prop :=
  ∀ n, P12730980727849626822.a n = A370903 (n + 1)

theorem P12730980727849626822.correct : P12730980727849626822.Spec := by
  intro n
  simp only [A370903, Nat.add_sub_cancel, A370903.P12730980727849626822.f2, A370903.P12730980727849626822.f1, A370903.P12730980727849626822.a, A370903.P9675851703522409605.f2, A370903.P9675851703522409605.f1, A370903.P9675851703522409605.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370903

/-! ## A370903.P16642691058169400000

`∑[A033999(n)*A057521(n+1)]`
-/

namespace A370903.P16642691058169400000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370903.P16642691058169400000

namespace A370903

/-- `∑[A033999(n)*A057521(n+1)]` -/
def P16642691058169400000.Spec : Prop :=
  ∀ n, P16642691058169400000.a n = A370903 (n + 1)

end A370903

/-! ## A370903.P11977226555498652904

`∑[A057521(n+1)/A165326(n+1)]`
-/

namespace A370903.P11977226555498652904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A165326 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370903.P11977226555498652904

namespace A370903

/-- `∑[A057521(n+1)/A165326(n+1)]` -/
def P11977226555498652904.Spec : Prop :=
  ∀ n, P11977226555498652904.a n = (A370903 (n + 1) : ℚ)

end A370903

/-! ## A370903.P3320896923646829657

`∑[A057079(3*n)*A057521(n+1)]`
-/

namespace A370903.P3320896923646829657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (3 * n) * A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370903.P3320896923646829657

namespace A370903

/-- `∑[A057079(3*n)*A057521(n+1)]` -/
def P3320896923646829657.Spec : Prop :=
  ∀ n, P3320896923646829657.a n = A370903 (n + 1)

end A370903

/-!
# A370904: Partial alternating sums of the sum of the bi-unitary divisors function (A188999).

The programs for A370904, there is no canonical definition to state claims against.
-/

/-! ## A370904.P18290675338494193396

`∑[(-1)^n*A188999(n+1)]`
-/

namespace A370904.P18290675338494193396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A188999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370904.P18290675338494193396

/-! ## A370904.P13342230445635304213

`∑[(A331970(n+1)+1+n)*(1-2*n%2)]`
-/

namespace A370904.P13342230445635304213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331970 (n + 1) + 1 + (n : ℤ)) * (1 - ((2 * (n % 2) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370904.P13342230445635304213

/-! ## A370904.P6581954252009632365

`∑[A188999(n+1)/A033999(n)]`
-/

namespace A370904.P6581954252009632365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188999 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370904.P6581954252009632365

/-! ## A370904.P7653287710194575094

`∑[A188999(n+1)/A056594(2*n)]`
-/

namespace A370904.P7653287710194575094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188999 (n + 1) : ℚ) / (A056594 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370904.P7653287710194575094

/-!
# A370905: Partial sums of the alternating sum of divisors function (A206369).

The programs for A370905, the canonical program `A370905.P18397358388152539286` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370905 has offset 1).

The definition of A370905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370905.P18397358388152539286

`∑[A206369(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A370905

/-- `∑[A206369(n+1)]` -/
def P18397358388152539286.Spec : Prop :=
  ∀ n, P18397358388152539286.a n = A370905 (n + 1)

theorem P18397358388152539286.correct : P18397358388152539286.Spec := by
  intro n
  simp only [A370905, Nat.add_sub_cancel]

end A370905

/-! ## A370905.P11839265021817114301

`∑[abs(A061020(n+1))]`
-/

namespace A370905.P11839265021817114301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370905.P11839265021817114301

namespace A370905

/-- `∑[abs(A061020(n+1))]` -/
def P11839265021817114301.Spec : Prop :=
  ∀ n, P11839265021817114301.a n = A370905 (n + 1)

end A370905

/-! ## A370905.P16808973381501287802

`∑[abs(∑{d}[n+1, A061019(#)])]`
-/

namespace A370905.P16808973381501287802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f2 n), A061019 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370905.P16808973381501287802

namespace A370905

/-- `∑[abs(∑{d}[n+1, A061019(#)])]` -/
def P16808973381501287802.Spec : Prop :=
  ∀ n, P16808973381501287802.a n = A370905 (n + 1)

end A370905

/-! ## A370905.P5470210777853028968

`∑[n+1-A344439(n+1)]`
-/

namespace A370905.P5470210777853028968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A344439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370905.P5470210777853028968

namespace A370905

/-- `∑[n+1-A344439(n+1)]` -/
def P5470210777853028968.Spec : Prop :=
  ∀ n, P5470210777853028968.a n = A370905 (n + 1)

theorem P5470210777853028968.correct : P5470210777853028968.Spec := by
  intro n
  simp only [A370905, Nat.add_sub_cancel, A370905.P5470210777853028968.f1, A370905.P5470210777853028968.a, A370905.P18397358388152539286.f1, A370905.P18397358388152539286.a, A206369, A206369.P2534442500048428716.a, A344439, A344439.P15144765631107196480.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A298473, A298473.P4129261461603736948.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370905

/-! ## A370905.P14100105313456123689

`A392341(n+1)+A000196(n+1)`
-/

namespace A370905.P14100105313456123689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392341 (n + 1) + A000196 (n + 1)

end

end A370905.P14100105313456123689

namespace A370905

/-- `A392341(n+1)+A000196(n+1)` -/
def P14100105313456123689.Spec : Prop :=
  ∀ n, P14100105313456123689.a n = A370905 (n + 1)

theorem P14100105313456123689.correct : P14100105313456123689.Spec := by
  intro n
  simp only [A370905, Nat.add_sub_cancel, A370905.P14100105313456123689.a, A370905.P18397358388152539286.f1, A370905.P18397358388152539286.a, A000196, A000196.P15434771586934192083.a, A206369, A206369.P2534442500048428716.a, A392341, A392341.P17720603421166545301.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A298473, A298473.P4129261461603736948.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370905

/-! ## A370905.P17204632810915507923

`A206369(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A370905.P17204632810915507923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206369 (n + 1) + a (A023443 n).toNat

end

end A370905.P17204632810915507923

namespace A370905

/-- `A206369(n+1)+a(A023443(n))` -/
def P17204632810915507923.Spec : Prop :=
  ∀ n, P17204632810915507923.a n = A370905 (n + 1)

end A370905

/-!
# A370906: Partial alternating sums of the alternating sum of divisors function (A206369).

The programs for A370906, the canonical program `A370906.P14316792219775904459` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370906 has offset 1).

The definition of A370906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370906.P14316792219775904459

`∑[(-1)^n*A206369(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A370906

/-- `∑[(-1)^n*A206369(n+1)]` -/
def P14316792219775904459.Spec : Prop :=
  ∀ n, P14316792219775904459.a n = A370906 (n + 1)

theorem P14316792219775904459.correct : P14316792219775904459.Spec := by
  intro n
  simp only [A370906, Nat.add_sub_cancel]

end A370906

/-! ## A370906.P10722046028874647963

`∑[A206369(n+1)/A033999(n)]`
-/

namespace A370906.P10722046028874647963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370906.P10722046028874647963

namespace A370906

/-- `∑[A206369(n+1)/A033999(n)]` -/
def P10722046028874647963.Spec : Prop :=
  ∀ n, P10722046028874647963.a n = (A370906 (n + 1) : ℚ)

end A370906

/-! ## A370906.P5256656177894002968

`∑[A206369(n+1)/A132367(3*n+1)]`
-/

namespace A370906.P5256656177894002968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (A132367 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370906.P5256656177894002968

namespace A370906

/-- `∑[A206369(n+1)/A132367(3*n+1)]` -/
def P5256656177894002968.Spec : Prop :=
  ∀ n, P5256656177894002968.a n = (A370906 (n + 1) : ℚ)

end A370906

/-!
# A370907: Expansion of e.g.f. (1/x) * Series_Reversion( 3*x/(2 + exp(3*x)) ).

The programs for A370907, there is no canonical definition to state claims against.
-/

/-! ## A370907.P4694423353634355688

`A038050(n+1)/(3*(n+1))`
-/

namespace A370907.P4694423353634355688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038050 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A370907.P4694423353634355688

/-!
# A370908: Expansion of e.g.f. (1/x) * Series_Reversion( 4*x/(3 + exp(4*x)) ).

The programs for A370908, there is no canonical definition to state claims against.
-/

/-! ## A370908.P17947333137749439255

`A047201(A052802(n))`
-/

namespace A370908.P17947333137749439255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A052802 n).toNat

end

end A370908.P17947333137749439255

/-!
# A370909: Expansion of e.g.f. (1/x) * Series_Reversion( 3*x/(1 + 2*exp(3*x)) ).

The programs for A370909, there is no canonical definition to state claims against.
-/

/-! ## A370909.P5287631497427258341

`A244320(A377553(n)+n+1)`
-/

namespace A370909.P5287631497427258341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244320 (A377553 n + (n + 1 : ℤ)).toNat

end

end A370909.P5287631497427258341

/-!
# A370912: a(n) = n*(n + 2)*(n + 4).

The programs for A370912, the canonical program `A370912.P13249200892205574452` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370912 has offset 0).

The definition of A370912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*(n+4)` (program `A370912.P13249200892205574452`, by `A370912.P13249200892205574452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370912.P13249200892205574452

`n*(n+2)*(n+4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370912

/-- `n*(n+2)*(n+4)` -/
def P13249200892205574452.Spec : Prop :=
  ∀ n, (P13249200892205574452.a n : ℤ) = A370912 n

theorem P13249200892205574452.correct : P13249200892205574452.Spec := by
  intro n
  simp only [A370912]

end A370912

/-! ## A370912.P5826095328033966814

`record[n*(n²-4)]`
-/

namespace A370912.P5826095328033966814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370912.P5826095328033966814

namespace A370912

/-- `record[n*(n²-4)]` -/
def P5826095328033966814.Spec : Prop :=
  ∀ n, P5826095328033966814.a n = A370912 n

end A370912

/-! ## A370912.P12056100625814465320

`Δ[(2-C(n+2, 2))²]`
-/

namespace A370912.P12056100625814465320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose (n + 2) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370912.P12056100625814465320

namespace A370912

/-- `Δ[(2-C(n+2, 2))²]` -/
def P12056100625814465320.Spec : Prop :=
  ∀ n, P12056100625814465320.a n = A370912 n

theorem P12056100625814465320.correct : P12056100625814465320.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P12056100625814465320.f1, A370912.P12056100625814465320.a, A370912.P13249200892205574452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P805395742546735281

`Δ[(1-C(n, 2)-2*n)²]`
-/

namespace A370912.P805395742546735281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n 2 : ℤ) - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370912.P805395742546735281

namespace A370912

/-- `Δ[(1-C(n, 2)-2*n)²]` -/
def P805395742546735281.Spec : Prop :=
  ∀ n, P805395742546735281.a n = A370912 n

theorem P805395742546735281.correct : P805395742546735281.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P805395742546735281.f1, A370912.P805395742546735281.a, A370912.P13249200892205574452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P6840372335403324035

`Δ[(2-lcm(n+1, n+2)/2)²]`
-/

namespace A370912.P6840372335403324035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370912.P6840372335403324035

namespace A370912

/-- `Δ[(2-lcm(n+1, n+2)/2)²]` -/
def P6840372335403324035.Spec : Prop :=
  ∀ n, P6840372335403324035.a n = (A370912 n : ℚ)

end A370912

/-! ## A370912.P17734303874545252087

`A212836(n+1)-2`
-/

namespace A370912.P17734303874545252087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212836 (n + 1) - 2

end

end A370912.P17734303874545252087

namespace A370912

/-- `A212836(n+1)-2` -/
def P17734303874545252087.Spec : Prop :=
  ∀ n, P17734303874545252087.a n = A370912 n

end A370912

/-! ## A370912.P11741381490058925786

`A058794(n)-(n+2)`
-/

namespace A370912.P11741381490058925786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 n - (n + 2 : ℤ)

end

end A370912.P11741381490058925786

namespace A370912

/-- `A058794(n)-(n+2)` -/
def P11741381490058925786.Spec : Prop :=
  ∀ n, P11741381490058925786.a n = A370912 n

theorem P11741381490058925786.correct : P11741381490058925786.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P11741381490058925786.a, A370912.P13249200892205574452.a, A058794, A058794.P11529139745090401027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P12724216505638946816

`A391993(n)+n^3`
-/

namespace A370912.P12724216505638946816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391993 n + (n ^ 3 : ℤ)

end

end A370912.P12724216505638946816

namespace A370912

/-- `A391993(n)+n^3` -/
def P12724216505638946816.Spec : Prop :=
  ∀ n, P12724216505638946816.a n = A370912 n

end A370912

/-! ## A370912.P12742491073406417861

`Δ[(1-A000096(n))²]`
-/

namespace A370912.P12742491073406417861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000096 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370912.P12742491073406417861

namespace A370912

/-- `Δ[(1-A000096(n))²]` -/
def P12742491073406417861.Spec : Prop :=
  ∀ n, P12742491073406417861.a n = A370912 n

theorem P12742491073406417861.correct : P12742491073406417861.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P12742491073406417861.f1, A370912.P12742491073406417861.a, A370912.P13249200892205574452.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P7738028916938086284

`∑[A211441(n+1)]-3`
-/

namespace A370912.P7738028916938086284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A370912.P7738028916938086284

namespace A370912

/-- `∑[A211441(n+1)]-3` -/
def P7738028916938086284.Spec : Prop :=
  ∀ n, P7738028916938086284.a n = A370912 n

end A370912

/-! ## A370912.P5589161650412024558

`A086113(n+1)/2-3`
-/

namespace A370912.P5589161650412024558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / 2 - 3

end

end A370912.P5589161650412024558

namespace A370912

/-- `A086113(n+1)/2-3` -/
def P5589161650412024558.Spec : Prop :=
  ∀ n, P5589161650412024558.a n = (A370912 n : ℚ)

end A370912

/-! ## A370912.P4268549087659146189

`Δ[(2-A000217(n+1))²]`
-/

namespace A370912.P4268549087659146189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000217 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370912.P4268549087659146189

namespace A370912

/-- `Δ[(2-A000217(n+1))²]` -/
def P4268549087659146189.Spec : Prop :=
  ∀ n, P4268549087659146189.a n = A370912 n

theorem P4268549087659146189.correct : P4268549087659146189.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P4268549087659146189.f1, A370912.P4268549087659146189.a, A370912.P13249200892205574452.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P16645936775986521750

`A192398(n+1)/(n+1)-(n+1)`
-/

namespace A370912.P16645936775986521750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192398 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A370912.P16645936775986521750

namespace A370912

/-- `A192398(n+1)/(n+1)-(n+1)` -/
def P16645936775986521750.Spec : Prop :=
  ∀ n, P16645936775986521750.a n = (A370912 n : ℚ)

theorem P16645936775986521750.correct : P16645936775986521750.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P16645936775986521750.a, A370912.P13249200892205574452.a, A192398, A192398.P6980991501491217048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P11139730217166974323

`A054602(n)+A049598(n)`
-/

namespace A370912.P11139730217166974323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + A049598 n

end

end A370912.P11139730217166974323

namespace A370912

/-- `A054602(n)+A049598(n)` -/
def P11139730217166974323.Spec : Prop :=
  ∀ n, P11139730217166974323.a n = A370912 n

theorem P11139730217166974323.correct : P11139730217166974323.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P11139730217166974323.a, A370912.P13249200892205574452.a, A049598, A049598.P15670095646145140517.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P6980257404123452855

`A090197(n)+A060747(n)`
-/

namespace A370912.P6980257404123452855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n + A060747 n

end

end A370912.P6980257404123452855

namespace A370912

/-- `A090197(n)+A060747(n)` -/
def P6980257404123452855.Spec : Prop :=
  ∀ n, P6980257404123452855.a n = A370912 n

theorem P6980257404123452855.correct : P6980257404123452855.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P6980257404123452855.a, A370912.P13249200892205574452.a, A060747, A060747.P16920431360270313306.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P3062229355147855691

`A163661(n)+A022264(n)`
-/

namespace A370912.P3062229355147855691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n + A022264 n

end

end A370912.P3062229355147855691

namespace A370912

/-- `A163661(n)+A022264(n)` -/
def P3062229355147855691.Spec : Prop :=
  ∀ n, P3062229355147855691.a n = A370912 n

end A370912

/-! ## A370912.P181059267086457087

`A163673(n)+A022265(n)`
-/

namespace A370912.P181059267086457087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 n + A022265 n

end

end A370912.P181059267086457087

namespace A370912

/-- `A163673(n)+A022265(n)` -/
def P181059267086457087.Spec : Prop :=
  ∀ n, P181059267086457087.a n = A370912 n

end A370912

/-! ## A370912.P405290991103392505

`A147651(n)+A126935(n)`
-/

namespace A370912.P405290991103392505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147651 n + A126935 n

end

end A370912.P405290991103392505

namespace A370912

/-- `A147651(n)+A126935(n)` -/
def P405290991103392505.Spec : Prop :=
  ∀ n, P405290991103392505.a n = A370912 n

theorem P405290991103392505.correct : P405290991103392505.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P405290991103392505.a, A370912.P13249200892205574452.a, A126935, A126935.P13333738668432150418.a, A147651, A147651.P5567796470201540316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P1131831078493094341

`A277978(n)+A064043(n)`
-/

namespace A370912.P1131831078493094341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + A064043 n

end

end A370912.P1131831078493094341

namespace A370912

/-- `A277978(n)+A064043(n)` -/
def P1131831078493094341.Spec : Prop :=
  ∀ n, P1131831078493094341.a n = A370912 n

theorem P1131831078493094341.correct : P1131831078493094341.Spec := by
  intro n
  simp only [A370912, Nat.add_sub_cancel, A370912.P1131831078493094341.a, A370912.P13249200892205574452.a, A064043, A064043.P3578565822102951633.a, A277978, A277978.P6474816177575129903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370912

/-! ## A370912.P7533497736575480566

`A186029(n)+A163655(n)`
-/

namespace A370912.P7533497736575480566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + A163655 n

end

end A370912.P7533497736575480566

namespace A370912

/-- `A186029(n)+A163655(n)` -/
def P7533497736575480566.Spec : Prop :=
  ∀ n, P7533497736575480566.a n = A370912 n

end A370912

/-!
# A370913: a(n) = Sum_{k=0..n} 4^(n - k)*Pochhammer(k/4, n - k). Row sums of A370915(n - k, k).

The programs for A370913, there is no canonical definition to state claims against.
-/

/-! ## A370913.P2422040417430264755

`A087866(n^n+n+1)`
-/

namespace A370913.P2422040417430264755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (n ^ n + (n + 1))

end

end A370913.P2422040417430264755

/-! ## A370913.P1369134423794143828

`A060677(A087218(n))`
-/

namespace A370913.P1369134423794143828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060677 (A087218 n).toNat

end

end A370913.P1369134423794143828

/-!
# A370914: a(n) = n * (n + 4) * (n + 8).

The programs for A370914, the canonical program `A370914.P14526239249677569011` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370914 has offset 0).

The definition of A370914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+4)*(n+8)` (program `A370914.P14526239249677569011`, by `A370914.P14526239249677569011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370914.P14526239249677569011

`n*(n+4)*(n+8)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370914

/-- `n*(n+4)*(n+8)` -/
def P14526239249677569011.Spec : Prop :=
  ∀ n, (P14526239249677569011.a n : ℤ) = A370914 n

theorem P14526239249677569011.correct : P14526239249677569011.Spec := by
  intro n
  simp only [A370914]

end A370914

/-! ## A370914.P3940066591556691925

`A212331(n)+A130862(n+1)`
-/

namespace A370914.P3940066591556691925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + A130862 (n + 1)

end

end A370914.P3940066591556691925

namespace A370914

/-- `A212331(n)+A130862(n+1)` -/
def P3940066591556691925.Spec : Prop :=
  ∀ n, P3940066591556691925.a n = A370914 n

end A370914

/-! ## A370914.P15836859988049125838

`Δ[(2-A055999(n))²]`
-/

namespace A370914.P15836859988049125838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A055999 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370914.P15836859988049125838

namespace A370914

/-- `Δ[(2-A055999(n))²]` -/
def P15836859988049125838.Spec : Prop :=
  ∀ n, P15836859988049125838.a n = A370914 n

end A370914

/-! ## A370914.P2973580920810702595

`Δ[(3-A052905(n))²]`
-/

namespace A370914.P2973580920810702595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A052905 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370914.P2973580920810702595

namespace A370914

/-- `Δ[(3-A052905(n))²]` -/
def P2973580920810702595.Spec : Prop :=
  ∀ n, P2973580920810702595.a n = A370914 n

end A370914

/-! ## A370914.P15546386412537113831

`A155965(n)+A140679(2*n)`
-/

namespace A370914.P15546386412537113831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 n + A140679 (2 * n)

end

end A370914.P15546386412537113831

namespace A370914

/-- `A155965(n)+A140679(2*n)` -/
def P15546386412537113831.Spec : Prop :=
  ∀ n, P15546386412537113831.a n = A370914 n

theorem P15546386412537113831.correct : P15546386412537113831.Spec := by
  intro n
  simp only [A370914, Nat.add_sub_cancel, A370914.P15546386412537113831.a, A370914.P14526239249677569011.a, A140679, A140679.P16758500501928630565.a, A155965, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370914

/-! ## A370914.P14224726084205063930

`Δ[A127146(∑[n+3])]`
-/

namespace A370914.P14224726084205063930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127146 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370914.P14224726084205063930

namespace A370914

/-- `Δ[A127146(∑[n+3])]` -/
def P14224726084205063930.Spec : Prop :=
  ∀ n, P14224726084205063930.a n = A370914 n

end A370914

/-!
# A370915: A(n, k) = 4^n*Pochhammer(k/4, n). Square array read by ascending antidiagonals.

The programs for A370915, there is no canonical definition to state claims against.
-/

/-! ## A370915.P13722963940713528498

`A265606(n)-A305935(A229243(n))`
-/

namespace A370915.P13722963940713528498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265606 n - A305935 (A229243 n).toNat

end

end A370915.P13722963940713528498

/-! ## A370915.P14829317940007970344

`A265606(n)-A243055(A342879(n+1))`
-/

namespace A370915.P14829317940007970344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265606 n - A243055 (A342879 (n + 1)).toNat

end

end A370915.P14829317940007970344

/-! ## A370915.P4871210341801325158

`A265606(n)-A091225(A265606(3*n+1))`
-/

namespace A370915.P4871210341801325158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265606 n - A091225 (A265606 (3 * n + 1)).toNat

end

end A370915.P4871210341801325158

/-! ## A370915.P16201019465166331783

`A241314(A112500(n))-A097805(A097805(n))`
-/

namespace A370915.P16201019465166331783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (A112500 n).toNat - A097805 (A097805 n).toNat

end

end A370915.P16201019465166331783

/-!
# A370920: Positive integers in whose ternary representation 2 occurs at least once, and every 2 is followed by 0.

The programs for A370920, there is no canonical definition to state claims against.
-/

/-! ## A370920.P8901457899537453229

`lt[A089643(A269223(n)), A065363(2*n+1)]`
-/

namespace A370920.P8901457899537453229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A269223 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370920.P8901457899537453229

/-!
# A370922: E.g.f. satisfies A(x) = log(1 + x/(1 - A(x)))/(1 - A(x)).

The programs for A370922, there is no canonical definition to state claims against.
-/

/-! ## A370922.P652528613901488886

`A060143(A003053(n+1))`
-/

namespace A370922.P652528613901488886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A003053 (n + 1)).toNat

end

end A370922.P652528613901488886

/-!
# A370926: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*exp(x^3/6)) ).

The programs for A370926, there is no canonical definition to state claims against.
-/

/-! ## A370926.P12461893095011396700

`A334169(2^n)/2-n`
-/

namespace A370926.P12461893095011396700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334169 (2 ^ n) : ℚ) / 2 - (n : ℚ)

end

end A370926.P12461893095011396700

/-! ## A370926.P7190954880371420186

`n*A090240(a(n-1))` with `a(0)=1`
-/

namespace A370926.P7190954880371420186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A090240 (a (n - 1)).toNat

end

end A370926.P7190954880371420186

/-!
# A370927: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*exp(x^2)) ).

The programs for A370927, there is no canonical definition to state claims against.
-/

/-! ## A370927.P15648273483078578350

`A227462(n+1)/(n+1)`
-/

namespace A370927.P15648273483078578350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227462 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370927.P15648273483078578350

/-! ## A370927.P411831762920496999

`A304408(xor(A001035(n), A098593(n))+1)`
-/

namespace A370927.P411831762920496999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304408 (Int.xor (A001035 n) (A098593 n) + 1).toNat

end

end A370927.P411831762920496999

/-!
# A370928: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*exp(x^3)) ).

The programs for A370928, there is no canonical definition to state claims against.
-/

/-! ## A370928.P16451746496272292506

`A000027(A000142(n)*A366054(n))`
-/

namespace A370928.P16451746496272292506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000142 n * A366054 n).toNat

end

end A370928.P16451746496272292506

/-! ## A370928.P13936190346676495409

`A000027(A000142(n)*A369631(n))`
-/

namespace A370928.P13936190346676495409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000142 n * A369631 n).toNat

end

end A370928.P13936190346676495409

/-! ## A370928.P3342260815820838808

`A000027(A230051(n)*A369631(n))`
-/

namespace A370928.P3342260815820838808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A230051 n * A369631 n).toNat

end

end A370928.P3342260815820838808

/-!
# A370932: For any number n >= 0 with ternary expansion Sum_{i >= 0} t_i * 3^i, a(n) = Sum_{i >= 0} ((Sum_{j >= 0} (-1)^j * t_{i+j}) mod 3) * 3^i.

The programs for A370932, the canonical program `A370932.P710185078781470894` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370932 has offset 0).

The definition of A370932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370932.P2463688090895822110

`A004488(A060583(n))`
-/

namespace A370932.P2463688090895822110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A060583 n).toNat

end

end A370932.P2463688090895822110

namespace A370932

/-- `A004488(A060583(n))` -/
def P2463688090895822110.Spec : Prop :=
  ∀ n, P2463688090895822110.a n = A370932 n

end A370932

/-! ## A370932.P591423372987855172

`A060583(A117966(n)+n)`
-/

namespace A370932.P591423372987855172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A117966 n + (n : ℤ)).toNat

end

end A370932.P591423372987855172

namespace A370932

/-- `A060583(A117966(n)+n)` -/
def P591423372987855172.Spec : Prop :=
  ∀ n, P591423372987855172.a n = A370932 n

end A370932

/-! ## A370932.P710185078781470894

`A060583(n-3/2*A300222(n)+n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370932

/-- `A060583(n-3/2*A300222(n)+n)` -/
def P710185078781470894.Spec : Prop :=
  ∀ n, P710185078781470894.a n = A370932 n

theorem P710185078781470894.correct : P710185078781470894.Spec := by
  intro n
  simp only [A370932]

end A370932

/-! ## A370932.P7519642139329925746

`A060583(A374363(n)+A244042(n))`
-/

namespace A370932.P7519642139329925746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A374363 n + A244042 n).toNat

end

end A370932.P7519642139329925746

namespace A370932

/-- `A060583(A374363(n)+A244042(n))` -/
def P7519642139329925746.Spec : Prop :=
  ∀ n, P7519642139329925746.a n = A370932 n

end A370932

/-! ## A370932.P17568772152938007019

`A060583(A117967(n)-A117966(2*n))`
-/

namespace A370932.P17568772152938007019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A117967 n - A117966 (2 * n)).toNat

end

end A370932.P17568772152938007019

namespace A370932

/-- `A060583(A117967(n)-A117966(2*n))` -/
def P17568772152938007019.Spec : Prop :=
  ∀ n, P17568772152938007019.a n = A370932 n

end A370932

/-! ## A370932.P15562207547414408150

`A060583(A005843(n)-(n-A117966(n)))`
-/

namespace A370932.P15562207547414408150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A005843 n - ((n : ℤ) - A117966 n)).toNat

end

end A370932.P15562207547414408150

namespace A370932

/-- `A060583(A005843(n)-(n-A117966(n)))` -/
def P15562207547414408150.Spec : Prop :=
  ∀ n, P15562207547414408150.a n = A370932 n

end A370932

/-! ## A370932.P57912072350593881

`A361832(A060587(A361832(A004488(n))))`
-/

namespace A370932.P57912072350593881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361832 (A060587 (A361832 (A004488 n).toNat).toNat).toNat

end

end A370932.P57912072350593881

namespace A370932

/-- `A361832(A060587(A361832(A004488(n))))` -/
def P57912072350593881.Spec : Prop :=
  ∀ n, P57912072350593881.a n = A370932 n

end A370932

/-! ## A370932.P16358232185500744374

`A060583(A244042(3*n)-A117966(n))`
-/

namespace A370932.P16358232185500744374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060583 (A244042 (3 * n) - A117966 n).toNat

end

end A370932.P16358232185500744374

namespace A370932

/-- `A060583(A244042(3*n)-A117966(n))` -/
def P16358232185500744374.Spec : Prop :=
  ∀ n, P16358232185500744374.a n = A370932 n

end A370932

/-!
# A370933: Number of pairs of antipodal vertices in the level n>1 Sierpiński triangle graph.

The programs for A370933, the canonical program `A370933.P15849157469001906311` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370933 has offset 2).

The definition of A370933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370933.P12326997376885627541

`3*2^(n-1)*(2^n+3)`
-/

namespace A370933.P12326997376885627541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 3 : ℚ)

end

end A370933.P12326997376885627541

namespace A370933

/-- `3*2^(n-1)*(2^n+3)` -/
def P12326997376885627541.Spec : Prop :=
  ∀ n, P12326997376885627541.a n = (A370933 (n + 2) : ℚ)

theorem P12326997376885627541.correct : P12326997376885627541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A370933, Nat.add_sub_cancel, A370933.P12326997376885627541.a, A370933.P15849157469001906311.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A370933, Nat.add_sub_cancel, A370933.P12326997376885627541.a, A370933.P15849157469001906311.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A370933

/-! ## A370933.P15849157469001906311

`6*a(n-1)-8*a(n-2)` with `a(0)=6, a(1)=15`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370933

/-- `6*a(n-1)-8*a(n-2)` -/
def P15849157469001906311.Spec : Prop :=
  ∀ n, P15849157469001906311.a n = A370933 (n + 2)

theorem P15849157469001906311.correct : P15849157469001906311.Spec := by
  intro n
  simp only [A370933, Nat.add_sub_cancel]

end A370933

/-! ## A370933.P8642888276547287823

`A375256(n+1)+3`
-/

namespace A370933.P8642888276547287823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375256 (n + 1) + 3

end

end A370933.P8642888276547287823

namespace A370933

/-- `A375256(n+1)+3` -/
def P8642888276547287823.Spec : Prop :=
  ∀ n, P8642888276547287823.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P7643588321174738034

`ogf((6-21x)/(1-6x+8x^2))`
-/

namespace A370933.P7643588321174738034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -21] [1, -6, 8] n

end

end A370933.P7643588321174738034

namespace A370933

/-- `ogf((6-21x)/(1-6x+8x^2))` -/
def P7643588321174738034.Spec : Prop :=
  ∀ n, P7643588321174738034.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P3615771276385432152

`A020714(n)+A010036(n)`
-/

namespace A370933.P3615771276385432152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n + A010036 n

end

end A370933.P3615771276385432152

namespace A370933

/-- `A020714(n)+A010036(n)` -/
def P3615771276385432152.Spec : Prop :=
  ∀ n, P3615771276385432152.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P1199343187701691608

`A256871(n)+A020522(n)`
-/

namespace A370933.P1199343187701691608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256871 n + A020522 n

end

end A370933.P1199343187701691608

namespace A370933

/-- `A256871(n)+A020522(n)` -/
def P1199343187701691608.Spec : Prop :=
  ∀ n, P1199343187701691608.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P6676254033292555749

`A257272(n)+A161168(n)`
-/

namespace A370933.P6676254033292555749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n + A161168 n

end

end A370933.P6676254033292555749

namespace A370933

/-- `A257272(n)+A161168(n)` -/
def P6676254033292555749.Spec : Prop :=
  ∀ n, P6676254033292555749.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P11559366053419510972

`A256873(n)+A242985(n)`
-/

namespace A370933.P11559366053419510972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n + A242985 n

end

end A370933.P11559366053419510972

namespace A370933

/-- `A256873(n)+A242985(n)` -/
def P11559366053419510972.Spec : Prop :=
  ∀ n, P11559366053419510972.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P462136612900047476

`lcm(A040007(n), A257273(n))`
-/

namespace A370933.P462136612900047476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040007 n) (A257273 n)

end

end A370933.P462136612900047476

namespace A370933

/-- `lcm(A040007(n), A257273(n))` -/
def P462136612900047476.Spec : Prop :=
  ∀ n, (P462136612900047476.a n : ℤ) = A370933 (n + 2)

end A370933

/-! ## A370933.P2981906227119776521

`A032125(n+1)+A007283(n)`
-/

namespace A370933.P2981906227119776521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032125 (n + 1) + A007283 n

end

end A370933.P2981906227119776521

namespace A370933

/-- `A032125(n+1)+A007283(n)` -/
def P2981906227119776521.Spec : Prop :=
  ∀ n, P2981906227119776521.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P4763427324735971141

`A164908(n)+A116453(n+1)`
-/

namespace A370933.P4763427324735971141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n + A116453 (n + 1)

end

end A370933.P4763427324735971141

namespace A370933

/-- `A164908(n)+A116453(n+1)` -/
def P4763427324735971141.Spec : Prop :=
  ∀ n, P4763427324735971141.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P3356479590724461299

`A171497(n)+A158561(n+1)`
-/

namespace A370933.P3356479590724461299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 n + A158561 (n + 1)

end

end A370933.P3356479590724461299

namespace A370933

/-- `A171497(n)+A158561(n+1)` -/
def P3356479590724461299.Spec : Prop :=
  ∀ n, P3356479590724461299.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P6885026616375549116

`A389172(n+1)+A281481(n)`
-/

namespace A370933.P6885026616375549116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389172 (n + 1) + A281481 n

end

end A370933.P6885026616375549116

namespace A370933

/-- `A389172(n+1)+A281481(n)` -/
def P6885026616375549116.Spec : Prop :=
  ∀ n, P6885026616375549116.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P16408461889976839639

`A049775(n+2)+A020707(n)`
-/

namespace A370933.P16408461889976839639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) + A020707 n

end

end A370933.P16408461889976839639

namespace A370933

/-- `A049775(n+2)+A020707(n)` -/
def P16408461889976839639.Spec : Prop :=
  ∀ n, P16408461889976839639.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P5597601147059630657

`A256873(n+1)-A007582(n)`
-/

namespace A370933.P5597601147059630657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 (n + 1) - A007582 n

end

end A370933.P5597601147059630657

namespace A370933

/-- `A256873(n+1)-A007582(n)` -/
def P5597601147059630657.Spec : Prop :=
  ∀ n, P5597601147059630657.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P666430191831857055

`A257272(n+1)-A256873(n)`
-/

namespace A370933.P666430191831857055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 (n + 1) - A256873 n

end

end A370933.P666430191831857055

namespace A370933

/-- `A257272(n+1)-A256873(n)` -/
def P666430191831857055.Spec : Prop :=
  ∀ n, P666430191831857055.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P17312601738627709520

`A006516(n)+2*A256873(n)`
-/

namespace A370933.P17312601738627709520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + 2 * A256873 n

end

end A370933.P17312601738627709520

namespace A370933

/-- `A006516(n)+2*A256873(n)` -/
def P17312601738627709520.Spec : Prop :=
  ∀ n, P17312601738627709520.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P1507893710536171155

`A049775(n+2)+A000079(n+2)`
-/

namespace A370933.P1507893710536171155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) + A000079 (n + 2)

end

end A370933.P1507893710536171155

namespace A370933

/-- `A049775(n+2)+A000079(n+2)` -/
def P1507893710536171155.Spec : Prop :=
  ∀ n, P1507893710536171155.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P3062963765039324059

`A116453(n+1)+A003945(2*n)`
-/

namespace A370933.P3062963765039324059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1) + A003945 (2 * n)

end

end A370933.P3062963765039324059

namespace A370933

/-- `A116453(n+1)+A003945(2*n)` -/
def P3062963765039324059.Spec : Prop :=
  ∀ n, P3062963765039324059.a n = A370933 (n + 2)

end A370933

/-! ## A370933.P5616290377925425287

`A135094(2*n)+A007283(n+1)`
-/

namespace A370933.P5616290377925425287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 (2 * n) + A007283 (n + 1)

end

end A370933.P5616290377925425287

namespace A370933

/-- `A135094(2*n)+A007283(n+1)` -/
def P5616290377925425287.Spec : Prop :=
  ∀ n, P5616290377925425287.a n = A370933 (n + 2)

end A370933

/-!
# A370934: Expansion of e.g.f. (1/x) * Series_Reversion( x*(4 - exp(3*x))/3 ).

The programs for A370934, there is no canonical definition to state claims against.
-/

/-! ## A370934.P18164266013992282375

`A233277(A194471(n)-n)`
-/

namespace A370934.P18164266013992282375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A194471 n - (n : ℤ)).toNat

end

end A370934.P18164266013992282375

/-!
# A370935: a(n) is the first term of A351048 with n prime factors, counted with multiplicity, or 0 if there is no such term.

The programs for A370935, there is no canonical definition to state claims against.
-/

/-! ## A370935.P11459733507758747210

`A295181(A196133(n+2))`
-/

namespace A370935.P11459733507758747210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (A196133 (n + 2)).toNat

end

end A370935.P11459733507758747210

/-!
# A370936: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - log(1+2*x)/2) ).

The programs for A370936, there is no canonical definition to state claims against.
-/

/-! ## A370936.P16993455075202872535

`A211823(2*a(n-1)-a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A370936.P16993455075202872535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A211823 (2 * a (n - 1) - a (n - 2) + 1).toNat

end

end A370936.P16993455075202872535

/-! ## A370936.P14991434538772669991

`A137406(A263002(n))`
-/

namespace A370936.P14991434538772669991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137406 (A263002 n).toNat

end

end A370936.P14991434538772669991

/-!
# A370937: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - log(1+3*x)/3) ).

The programs for A370937, there is no canonical definition to state claims against.
-/

/-! ## A370937.P3104511537652208108

`A089610(A352300(n))`
-/

namespace A370937.P3104511537652208108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A352300 n).toNat

end

end A370937.P3104511537652208108

/-! ## A370937.P13386996156466860193

`A163892(ceil(2^(n-1))-A304687(n+2))`
-/

namespace A370937.P13386996156466860193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163892 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A304687 (n + 2)).toNat

end

end A370937.P13386996156466860193

/-! ## A370937.P18344397764175545980

`A048250(A056971(n)*A102403(n))`
-/

namespace A370937.P18344397764175545980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A056971 n * A102403 n).toNat

end

end A370937.P18344397764175545980

/-!
# A370938: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + log(1-2*x)/2) ).

The programs for A370938, there is no canonical definition to state claims against.
-/

/-! ## A370938.P2946715401813619486

`A352599(A002835(n))`
-/

namespace A370938.P2946715401813619486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352599 (A002835 n).toNat

end

end A370938.P2946715401813619486

/-!
# A370939: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + log(1-3*x)/3) ).

The programs for A370939, there is no canonical definition to state claims against.
-/

/-! ## A370939.P993603463675208894

`A032742(A381478(n))`
-/

namespace A370939.P993603463675208894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A381478 n).toNat

end

end A370939.P993603463675208894

/-!
# A370940: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - 2*log(1+x)) ).

The programs for A370940, there is no canonical definition to state claims against.
-/

/-! ## A370940.P12566566921639032184

`A132614(n+1)+A057360(A000364(n))`
-/

namespace A370940.P12566566921639032184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132614 (n + 1) + A057360 (A000364 n).toNat

end

end A370940.P12566566921639032184

/-!
# A370942: Irregular triangle read by rows: T(n,k) is the number of nonempty, longest nonoverlapping properly nested substrings into which the k-th string of parentheses of length n can be split into, where strings within a row are in reverse lexicographical order.

The programs for A370942, there is no canonical definition to state claims against.
-/

/-! ## A370942.P15217721913596178049

`A124761(A246591(2*(n+1))+A151878(n))`
-/

namespace A370942.P15217721913596178049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A246591 (2 * (n + 1)) + A151878 n).toNat

end

end A370942.P15217721913596178049

/-! ## A370942.P16282951564301947957

`A124761(A036044(2*n+3)+1)`
-/

namespace A370942.P16282951564301947957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A036044 (2 * n + 3) + 1).toNat

end

end A370942.P16282951564301947957

/-! ## A370942.P5285288122733139473

`A124761(A172097(n))`
-/

namespace A370942.P5285288122733139473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A172097 n).toNat

end

end A370942.P5285288122733139473

/-! ## A370942.P1875377165884865161

`A124761(A006257(2*n+3))`
-/

namespace A370942.P1875377165884865161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A006257 (2 * n + 3)).toNat

end

end A370942.P1875377165884865161

/-! ## A370942.P18339289686598481418

`A090933(n+1)%A001221(A163511(n+1))`
-/

namespace A370942.P18339289686598481418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090933 (n + 1)) (A001221 (A163511 (n + 1)).toNat)

end

end A370942.P18339289686598481418

/-!
# A370943: Row sums of A370942: a(n) is the total number of nonempty, longest nonoverlapping properly nested substrings among all strings of parentheses of length n.

The programs for A370943, there is no canonical definition to state claims against.
-/

/-! ## A370943.P664962365010645909

`A189391(n)-floor(2^(n-1))`
-/

namespace A370943.P664962365010645909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A370943.P664962365010645909

/-! ## A370943.P18022191628714701945

`A099325(n)-A003945(n)`
-/

namespace A370943.P18022191628714701945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A003945 n

end

end A370943.P18022191628714701945

/-! ## A370943.P10490849598020784620

`A099325(n)-A169016(n)`
-/

namespace A370943.P10490849598020784620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A169016 n

end

end A370943.P10490849598020784620

/-! ## A370943.P11782838939821256370

`A099325(n)-A169064(n)`
-/

namespace A370943.P11782838939821256370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A169064 n

end

end A370943.P11782838939821256370

/-! ## A370943.P17242571003155429597

`A099325(n)-A169112(n)`
-/

namespace A370943.P17242571003155429597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A169112 n

end

end A370943.P17242571003155429597

/-!
# A370945: Number T(n,k) of partitions of [n] whose singletons sum to k; triangle T(n,k), n>=0, 0<=k<=A000217(n), read by rows.

The programs for A370945, there is no canonical definition to state claims against.
-/

/-! ## A370945.P15466534885838408559

`A382302(A365381(n)%A128684(n+3))`
-/

namespace A370945.P15466534885838408559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382302 (Int.tmod (A365381 n) (A128684 (n + 3))).toNat

end

end A370945.P15466534885838408559

/-! ## A370945.P15826299279911472993

`A100196(A369596(n)^A059592(2*n+3))`
-/

namespace A370945.P15826299279911472993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway ((A369596 n : ℚ) ^ (A059592 (2 * n + 3) : ℤ))).toNat

end

end A370945.P15826299279911472993

/-!
# A370946: Number of partitions of [n] whose non-singleton elements sum to n.

The programs for A370946, there is no canonical definition to state claims against.
-/

/-! ## A370946.P15883310786373153606

`A370945(∑[∑[n]])`
-/

namespace A370946.P15883310786373153606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370946.P15883310786373153606

/-!
# A370947: Number of partitions of [n] whose singletons sum to n.

The programs for A370947, there is no canonical definition to state claims against.
-/

/-! ## A370947.P8793044064389808583

`A370945(A004006(n)+n)`
-/

namespace A370947.P8793044064389808583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370945 (A004006 n + (n : ℤ)).toNat

end

end A370947.P8793044064389808583

/-!
# A370951: First differences of A112877 (zero terms in Cald's sequence A006509).

The programs for A370951, there is no canonical definition to state claims against.
-/

/-! ## A370951.P14257880887960963559

`Δ[A112877(n+1)]`
-/

namespace A370951.P14257880887960963559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370951.P14257880887960963559

/-! ## A370951.P1269949973904088485

`Δ[record[A112877(A128282(n))]]`
-/

namespace A370951.P1269949973904088485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112877 (A128282 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370951.P1269949973904088485

/-! ## A370951.P1244571926264112577

`Δ[record[A112877(A286619(n))]]`
-/

namespace A370951.P1244571926264112577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112877 (A286619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370951.P1244571926264112577

/-! ## A370951.P5690962754161055942

`Δ[record[A112877(A324347(n))]]`
-/

namespace A370951.P5690962754161055942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112877 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370951.P5690962754161055942

/-! ## A370951.P10951233197479970822

`A112877(n+2)-A112877(n+1)`
-/

namespace A370951.P10951233197479970822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112877 (n + 2) - A112877 (n + 1)

end

end A370951.P10951233197479970822

/-!
# A370953: Numerators of coefficients of the partition function per spin, lambda (divided by 2), in the very high temperature region, expressed as a power series in the parameter K^2, for the spin-1/2 Ising model on square lattice.

The programs for A370953, there is no canonical definition to state claims against.
-/

/-! ## A370953.P7179138384343478954

`A008619(C(A007727(n), 2))`
-/

namespace A370953.P7179138384343478954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose (A007727 n).toNat 2)

end

end A370953.P7179138384343478954

/-!
# A370954: Denominators of coefficients of the partition function per spin, lambda (divided by 2), in the very high temperature region, expressed as a power series in the parameter K^2, for the spin-1/2 Ising model on square lattice.

The programs for A370954, there is no canonical definition to state claims against.
-/

/-! ## A370954.P1678319481553732563

`gcd(A000142(2*n), A141143(A011972(n)))`
-/

namespace A370954.P1678319481553732563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (2 * n)) (A141143 (A011972 n).toNat)

end

end A370954.P1678319481553732563

/-! ## A370954.P4705525768941682451

`A279107(2*n)/A304118(A136724(2*(n+2)))`
-/

namespace A370954.P4705525768941682451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279107 (2 * n) : ℚ) / (A304118 (A136724 (2 * (n + 2))).toNat : ℚ)

end

end A370954.P4705525768941682451

/-!
# A370955: Coefficients of the partition function per spin, x(k) (divided by 2), in the low temperature region, expressed as a power series in the parameter k^2, for the spin-1/2 Ising model on square lattice.

The programs for A370955, there is no canonical definition to state claims against.
-/

/-! ## A370955.P3071552556690356299

`1-A045917(A273954(n+1))`
-/

namespace A370955.P3071552556690356299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A045917 (A273954 (n + 1)).toNat

end

end A370955.P3071552556690356299

/-!
# A370956: Record high values in A245340.

The programs for A370956, there is no canonical definition to state claims against.
-/

/-! ## A370956.P9009269477166060223

`record[A245340(n)]`
-/

namespace A370956.P9009269477166060223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370956.P9009269477166060223

/-! ## A370956.P13911431174918679769

`A245340(A370959(n+1))`
-/

namespace A370956.P13911431174918679769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 (A370959 (n + 1)).toNat

end

end A370956.P13911431174918679769

/-!
# A370957: First differences of A125717.

The programs for A370957, there is no canonical definition to state claims against.
-/

/-! ## A370957.P836835112258905155

`Δ[A125717(n)]`
-/

namespace A370957.P836835112258905155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370957.P836835112258905155

/-! ## A370957.P457863912955469109

`(n+1)*A370958(n+1)`
-/

namespace A370957.P457863912955469109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370958 (n + 1)

end

end A370957.P457863912955469109

/-! ## A370957.P15524329520835188560

`A125717(n+1)-A125717(n)`
-/

namespace A370957.P15524329520835188560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 (n + 1) - A125717 n

end

end A370957.P15524329520835188560

/-! ## A370957.P4299046973865183423

`(n+1)*A370975(n^A255327(n))`
-/

namespace A370957.P4299046973865183423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370975 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A255327 n : ℤ))).toNat

end

end A370957.P4299046973865183423

/-!
# A370958: Normalized first differences of A125717.

The programs for A370958, there is no canonical definition to state claims against.
-/

/-! ## A370958.P4566143158545052297

`A370957(n+1)/(n+1)`
-/

namespace A370958.P4566143158545052297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370957 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370958.P4566143158545052297

/-! ## A370958.P14681992153207832604

`Δ[A125717(n)]/(n+1)`
-/

namespace A370958.P14681992153207832604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A370958.P14681992153207832604

/-! ## A370958.P221154566039976050

`(A125717(n+1)-A125717(n))/(n+1)`
-/

namespace A370958.P221154566039976050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125717 (n + 1) - A125717 n : ℚ) / (n + 1 : ℚ)

end

end A370958.P221154566039976050

/-! ## A370958.P11646175591057859581

`A370975(n^A255327(n))`
-/

namespace A370958.P11646175591057859581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370975 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A255327 n : ℤ))).toNat

end

end A370958.P11646175591057859581

/-!
# A370959: Indices of high points in A245340.

The programs for A370959, there is no canonical definition to state claims against.
-/

/-! ## A370959.P5721728363160477366

`A125717(record[A245340(n)])`
-/

namespace A370959.P5721728363160477366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A370959.P5721728363160477366

/-! ## A370959.P8760048580052183558

`A125717(A370956(n+1))`
-/

namespace A370959.P8760048580052183558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 (A370956 (n + 1)).toNat

end

end A370959.P8760048580052183558

/-!
# A370960: a(n) = number of acyclic orientations of the complete tripartite graph K_{2,2,n}.

The programs for A370960, there is no canonical definition to state claims against.
-/

/-! ## A370960.P15411436742733444775

`A372254(∑[n+2]+3)`
-/

namespace A370960.P15411436742733444775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A370960.P15411436742733444775

/-!
# A370961: a(n) = number of acyclic orientations of the complete tripartite graph K_{n,n,n}.

The programs for A370961, there is no canonical definition to state claims against.
-/

/-! ## A370961.P9078871034631304524

`A266858(3*n)`
-/

namespace A370961.P9078871034631304524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266858 (3 * n)

end

end A370961.P9078871034631304524

/-! ## A370961.P3257791825851867063

`A267383(A000338(n+3))`
-/

namespace A370961.P3257791825851867063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000338 (n + 3)).toNat

end

end A370961.P3257791825851867063

/-! ## A370961.P5443324130170100727

`A372261(A005581(n+1)+n)`
-/

namespace A370961.P5443324130170100727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372261 (A005581 (n + 1) + (n : ℤ)).toNat

end

end A370961.P5443324130170100727

/-! ## A370961.P1214487072166407895

`A372254(∑[4*n])`
-/

namespace A370961.P1214487072166407895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370961.P1214487072166407895

/-! ## A370961.P2975119757609247936

`A372326(A167614(n+2))`
-/

namespace A370961.P2975119757609247936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372326 (A167614 (n + 2)).toNat

end

end A370961.P2975119757609247936

/-!
# A370962: a(n) = number of "lonesum" 2 X 2 X n tensors.

The programs for A370962, the canonical program `A370962.P3295198372100110408` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370962 has offset 0).

The definition of A370962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370962.P3295198372100110408

`4*(2*5^n-4^n-3^n)+2^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370962

/-- `4*(2*5^n-4^n-3^n)+2^n` -/
def P3295198372100110408.Spec : Prop :=
  ∀ n, P3295198372100110408.a n = A370962 n

theorem P3295198372100110408.correct : P3295198372100110408.Spec := by
  intro n
  simp only [A370962]

end A370962

/-!
# A370964: a(n) = number of "weakly lonesum" 2 X 2 X n tensors.

The programs for A370964, the canonical program `A370964.P15581157064073861489` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370964 has offset 0).

The definition of A370964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370964.P15581157064073861489

`2*15^n-14^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370964

/-- `2*15^n-14^n` -/
def P15581157064073861489.Spec : Prop :=
  ∀ n, P15581157064073861489.a n = A370964 n

theorem P15581157064073861489.correct : P15581157064073861489.Spec := by
  intro n
  simp only [A370964]

end A370964

/-!
# A370966: a(n) = number of max-closed 2 X 2 X n relations.

The programs for A370966, the canonical program `A370966.P17052053716499935467` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370966 has offset 0).

The definition of A370966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370966.P17052053716499935467

`35/6*6^n-6*4^n+2/3*3^n+1/2*2^n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370966

/-- `35/6*6^n-6*4^n+2/3*3^n+1/2*2^n` -/
def P17052053716499935467.Spec : Prop :=
  ∀ n, P17052053716499935467.a n = (A370966 n : ℚ)

end A370966

/-!
# A370968: A008336 sorted and duplicates removed.

The programs for A370968, there is no canonical definition to state claims against.
-/

/-! ## A370968.P12472701228373906300

`∩[A045749(n), A370974(n+1)]`
-/

namespace A370968.P12472701228373906300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370968.P12472701228373906300

/-! ## A370968.P10201980956134596286

`∩[A097379(n+1), A370974(n+1)]`
-/

namespace A370968.P10201980956134596286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370968.P10201980956134596286

/-! ## A370968.P16747596670481889356

`∩[A334140(n+1), A370974(n+1)]`
-/

namespace A370968.P16747596670481889356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370968.P16747596670481889356

/-! ## A370968.P6421515094392079387

`A370974(A061497(n+1))`
-/

namespace A370968.P6421515094392079387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370974 (A061497 (n + 1)).toNat

end

end A370968.P6421515094392079387

/-! ## A370968.P11136094041958015378

`A370974(A062399(n)+1)`
-/

namespace A370968.P11136094041958015378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370974 (A062399 n + 1).toNat

end

end A370968.P11136094041958015378

/-!
# A370969: First differences of A337486.

The programs for A370969, there is no canonical definition to state claims against.
-/

/-! ## A370969.P13111443259663523150

`Δ[A337486(n+1)]`
-/

namespace A370969.P13111443259663523150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370969.P13111443259663523150

/-! ## A370969.P3152789703161164355

`A337486(n+2)-A337486(n+1)`
-/

namespace A370969.P3152789703161164355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337486 (n + 2) - A337486 (n + 1)

end

end A370969.P3152789703161164355

/-! ## A370969.P8178651690925224233

`Δ[record[A337486(A133310(n))]]`
-/

namespace A370969.P8178651690925224233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337486 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370969.P8178651690925224233

/-! ## A370969.P1870095069042392918

`Δ[record[A337486(A134478(n))]]`
-/

namespace A370969.P1870095069042392918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337486 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370969.P1870095069042392918

/-! ## A370969.P355771547509931309

`Δ[record[gcd(n+5, A008336(n+4))]]`
-/

namespace A370969.P355771547509931309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A008336 (n + 4))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A370969.P355771547509931309

/-! ## A370969.P10836458219438148333

`Δ[record[A008336(n+1)/A008336(n+2)]]`
-/

namespace A370969.P10836458219438148333
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008336 (n + 1) : ℚ) / (A008336 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370969.P10836458219438148333

/-!
# A370970: Numbers k which have a factorization k = f1*f2*...*fr where the digits of {k, f1, f2, ..., fr} together give 0,1,...,9 exactly once.

The programs for A370970, there is no canonical definition to state claims against.
-/

/-! ## A370970.P15051063562328996733

`∩[A370972(n+1), A372259(n+1)]`
-/

namespace A370970.P15051063562328996733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370970.P15051063562328996733

/-! ## A370970.P6726470863028588393

`A370972(A100793(n))`
-/

namespace A370970.P6726470863028588393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370972 (A100793 n).toNat

end

end A370970.P6726470863028588393

/-!
# A370971: A008336(n) is divisible by the product of the primes p such that n/2 <= p < n; a(n) is the quotient.

The programs for A370971, there is no canonical definition to state claims against.
-/

/-! ## A370971.P3644944351544254265

`A008336(n+1)/A055773(n)`
-/

namespace A370971.P3644944351544254265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008336 (n + 1) : ℚ) / (A055773 n : ℚ)

end

end A370971.P3644944351544254265

/-! ## A370971.P3063753881236769901

`floor(n!/A195504(n+1)²)/A055773(n)`
-/

namespace A370971.P3063753881236769901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ)⌋ : ℚ) / (A055773 n : ℚ)

end

end A370971.P3063753881236769901

/-! ## A370971.P9571821572424218562

`floor(A000142(n)/A195504(n+1)²)/A055773(n)`
-/

namespace A370971.P9571821572424218562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000142 n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ)⌋ : ℚ) / (A055773 n : ℚ)

end

end A370971.P9571821572424218562

/-! ## A370971.P7365129535079152481

`gcd(A049614(n)², A008336(n+1))`
-/

namespace A370971.P7365129535079152481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049614 n ^ 2) (A008336 (n + 1))

end

end A370971.P7365129535079152481

/-! ## A370971.P799818367152504338

`A000027(n!/A195504(n+1)²)/A055773(n)`
-/

namespace A370971.P799818367152504338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A195504 (n + 1) ^ 2 : ℚ))).toNat : ℚ) / (A055773 n : ℚ)

end

end A370971.P799818367152504338

/-!
# A370973: Nearest integer to e*n!.

The programs for A370973, there is no canonical definition to state claims against.
-/

/-! ## A370973.P8872832371615089128

`round(e*n!)`
-/

namespace A370973.P8872832371615089128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (Nat.factorial n : ℝ))

end

end A370973.P8872832371615089128

/-! ## A370973.P11807070241057225285

`n*a(n-1)+1` with `a(0)=3, a(1)=3, a(2)=5`
-/

namespace A370973.P11807070241057225285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 5] fun n a =>
  n * a (n - 1) + 1

end

end A370973.P11807070241057225285

/-! ## A370973.P2058914245024002232

`2%n-(1-n*a(n-1))` with `a(0)=3, a(1)=3`
-/

namespace A370973.P2058914245024002232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  ((2 % n : ℕ) : ℤ) - (1 - (n : ℤ) * a (n - 1))

end

end A370973.P2058914245024002232

/-! ## A370973.P10092650812644512650

`2-(gcd(3, a(n-1))-n*a(n-1))` with `a(0)=3, a(1)=3`
-/

namespace A370973.P10092650812644512650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 - ((Int.gcd 3 (a (n - 1)) : ℤ) - (n : ℤ) * a (n - 1))

end

end A370973.P10092650812644512650

/-! ## A370973.P9119581755071485097

`1-n*floor(3/a(n-1)-a(n-1))` with `a(0)=3`
-/

namespace A370973.P9119581755071485097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  1 - (n : ℤ) * ⌊3 / (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A370973.P9119581755071485097

/-! ## A370973.P4842346721173195730

`A000522(n)+C(2, A000522(n))`
-/

namespace A370973.P4842346721173195730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (Nat.choose 2 (A000522 n).toNat : ℤ)

end

end A370973.P4842346721173195730

/-!
# A370975: a(n) = (A370952(n+1) - A370952(n)) /(2*n+1).

The programs for A370975, there is no canonical definition to state claims against.
-/

/-! ## A370975.P3953937333037138479

`(A370952(n+2)-A370952(n+1))/(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370975.P3953937333037138479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370952 (n + 2) - A370952 (n + 1) : ℚ) / (2 * (n + 1) + 1 : ℚ)

end

end A370975.P3953937333037138479

/-! ## A370975.P16352886066068250151

`Δ[A370952(n+1)]%(2*(n+1))`
-/

namespace A370975.P16352886066068250151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 * (n + 1) : ℤ)

end

end A370975.P16352886066068250151

/-! ## A370975.P11086771378681637611

`Δ[A370952(n+1)]/A141310(2*(n+1))`
-/

namespace A370975.P11086771378681637611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370952 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A141310 (2 * (n + 1)) : ℚ)

end

end A370975.P11086771378681637611

/-! ## A370975.P5965326562997346124

`A191898(or(21, A128761(n)))`
-/

namespace A370975.P5965326562997346124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191898 (Int.lor 21 (A128761 n)).toNat

end

end A370975.P5965326562997346124

/-! ## A370975.P8245844291419408749

`A370958(n+2)/A295924(A370974(n+1))`
-/

namespace A370975.P8245844291419408749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370958 (n + 2) : ℚ) / (A295924 (A370974 (n + 1)).toNat : ℚ)

end

end A370975.P8245844291419408749

/-!
# A370976: Let G_n denote the planar graph defined in A358746 with the addition, if n is odd, of the circle containing the initial n points; sequence gives the number of regions in G_n.

The programs for A370976, there is no canonical definition to state claims against.
-/

/-! ## A370976.P1725272239154448006

`A370977(n+1)+A370978(n+1)-A370979(n+1)`
-/

namespace A370976.P1725272239154448006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370977 (n + 1) + (A370978 (n + 1) - A370979 (n + 1))

end

end A370976.P1725272239154448006

/-!
# A370977: Let G_n denote the planar graph defined in A358746 with the addition, if n is odd, of the circle containing the initial n points; sequence gives the number of edges in G_n.

The programs for A370977, there is no canonical definition to state claims against.
-/

/-! ## A370977.P8115645521274544931

`A370976(n+1)+A370979(n+1)-A370978(n+1)`
-/

namespace A370977.P8115645521274544931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370976 (n + 1) + (A370979 (n + 1) - A370978 (n + 1))

end

end A370977.P8115645521274544931

/-! ## A370977.P15043545480446084183

`∑[A093679(A343254(n)²)]`
-/

namespace A370977.P15043545480446084183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093679 (A343254 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370977.P15043545480446084183

/-!
# A370978: Draw a regular n-gon and the enclosing circle, then for each pair of vertices X, Y, draw a circle with diameter XY; the union of these figures is the graph H_n; sequence gives number of regions in H_n.

The programs for A370978, there is no canonical definition to state claims against.
-/

/-! ## A370978.P13409311038221658264

`A370976(n+1)+A370979(n+1)-A370977(n+1)`
-/

namespace A370978.P13409311038221658264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370976 (n + 1) + (A370979 (n + 1) - A370977 (n + 1))

end

end A370978.P13409311038221658264

/-!
# A370979: Draw a regular n-gon and the enclosing circle, then for each pair of vertices X, Y, draw a circle with diameter XY; the union of these figures is the graph H_n; sequence gives number of edges in H_n.

The programs for A370979, there is no canonical definition to state claims against.
-/

/-! ## A370979.P7547564642747165477

`A370977(n+1)+A370978(n+1)-A370976(n+1)`
-/

namespace A370979.P7547564642747165477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370977 (n + 1) + (A370978 (n + 1) - A370976 (n + 1))

end

end A370979.P7547564642747165477

/-!
# A370980: If n is even, (n^2-2*n+2)/2, otherwise (n^2-n+2)/2.

The programs for A370980, the canonical program `A370980.P16362132867796423213` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370980 has offset 0).

The definition of A370980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370980.P16362132867796423213

`1+n*floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A370980

/-- `1+n*floor((n-1)/2)` -/
def P16362132867796423213.Spec : Prop :=
  ∀ n, P16362132867796423213.a n = A370980 n

theorem P16362132867796423213.correct : P16362132867796423213.Spec := by
  intro n
  simp only [A370980]

end A370980

/-! ## A370980.P7402886093495849807

`(n*(n-gcd(2, n))+2)/2`
-/

namespace A370980.P7402886093495849807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - (Nat.gcd 2 n : ℤ)) + 2 : ℚ) / 2

end

end A370980.P7402886093495849807

namespace A370980

/-- `(n*(n-gcd(2, n))+2)/2` -/
def P7402886093495849807.Spec : Prop :=
  ∀ n, P7402886093495849807.a n = (A370980 n : ℚ)

end A370980

/-! ## A370980.P5929267538659563373

`-xor(n*(∑[and(1, n)]-1), -1)`
-/

namespace A370980.P5929267538659563373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)) (-1)

end

end A370980.P5929267538659563373

namespace A370980

/-- `-xor(n*(∑[and(1, n)]-1), -1)` -/
def P5929267538659563373.Spec : Prop :=
  ∀ n, P5929267538659563373.a n = A370980 n

end A370980

/-! ## A370980.P11965454966325970782

`abs(A075855(n+1)-n)`
-/

namespace A370980.P11965454966325970782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075855 (n + 1) - (n : ℤ)|

end

end A370980.P11965454966325970782

namespace A370980

/-- `abs(A075855(n+1)-n)` -/
def P11965454966325970782.Spec : Prop :=
  ∀ n, P11965454966325970782.a n = A370980 n

end A370980

/-! ## A370980.P2252158876426173802

`abs(n*A123108(n+1)-abs(1-n))`
-/

namespace A370980.P2252158876426173802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * A123108 (n + 1) - |1 - (n : ℤ)|)|

end

end A370980.P2252158876426173802

namespace A370980

/-- `abs(n*A123108(n+1)-abs(1-n))` -/
def P2252158876426173802.Spec : Prop :=
  ∀ n, P2252158876426173802.a n = A370980 n

end A370980

/-! ## A370980.P914114461500024922

`(A050187(n)+1)%A194805(n+3)`
-/

namespace A370980.P914114461500024922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050187 n + 1) (A194805 (n + 3))

end

end A370980.P914114461500024922

namespace A370980

/-- `(A050187(n)+1)%A194805(n+3)` -/
def P914114461500024922.Spec : Prop :=
  ∀ n, P914114461500024922.a n = A370980 n

end A370980

/-! ## A370980.P16221788332048116454

`∑[abs(A023444(A266981(n)))]`
-/

namespace A370980.P16221788332048116454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023444 (A266981 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370980.P16221788332048116454

namespace A370980

/-- `∑[abs(A023444(A266981(n)))]` -/
def P16221788332048116454.Spec : Prop :=
  ∀ n, P16221788332048116454.a n = A370980 n

end A370980

/-! ## A370980.P581736656713635727

`A000027(A050187(n)+1)`
-/

namespace A370980.P581736656713635727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A050187 n + 1).toNat

end

end A370980.P581736656713635727

namespace A370980

/-- `A000027(A050187(n)+1)` -/
def P581736656713635727.Spec : Prop :=
  ∀ n, P581736656713635727.a n = A370980 n

end A370980

/-! ## A370980.P6612445451620724443

`A106610(A152947(n+1)-A142150(n))`
-/

namespace A370980.P6612445451620724443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A152947 (n + 1) - A142150 n).toNat

end

end A370980.P6612445451620724443

namespace A370980

/-- `A106610(A152947(n+1)-A142150(n))` -/
def P6612445451620724443.Spec : Prop :=
  ∀ n, P6612445451620724443.a n = A370980 n

end A370980

/-! ## A370980.P8514406081673115441

`A004482(A050187(n))`
-/

namespace A370980.P8514406081673115441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A050187 n).toNat

end

end A370980.P8514406081673115441

namespace A370980

/-- `A004482(A050187(n))` -/
def P8514406081673115441.Spec : Prop :=
  ∀ n, P8514406081673115441.a n = A370980 n

end A370980

/-! ## A370980.P3392391057417319192

`A028310(A152947(n+1)-A142150(n))`
-/

namespace A370980.P3392391057417319192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152947 (n + 1) - A142150 n).toNat

end

end A370980.P3392391057417319192

namespace A370980

/-- `A028310(A152947(n+1)-A142150(n))` -/
def P3392391057417319192.Spec : Prop :=
  ∀ n, P3392391057417319192.a n = A370980 n

end A370980

/-! ## A370980.P16168903341520117507

`A323956(A099392(n+1))`
-/

namespace A370980.P16168903341520117507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (A099392 (n + 1)).toNat

end

end A370980.P16168903341520117507

namespace A370980

/-- `A323956(A099392(n+1))` -/
def P16168903341520117507.Spec : Prop :=
  ∀ n, P16168903341520117507.a n = A370980 n

end A370980

/-! ## A370980.P7199234296077484914

`A076110(A080476(n+1))`
-/

namespace A370980.P7199234296077484914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (A080476 (n + 1)).toNat

end

end A370980.P7199234296077484914

namespace A370980

/-- `A076110(A080476(n+1))` -/
def P7199234296077484914.Spec : Prop :=
  ∀ n, P7199234296077484914.a n = A370980 n

end A370980

/-! ## A370980.P14885133592851532279

`A162609(A074148(n+1))`
-/

namespace A370980.P14885133592851532279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (A074148 (n + 1)).toNat

end

end A370980.P14885133592851532279

namespace A370980

/-- `A162609(A074148(n+1))` -/
def P14885133592851532279.Spec : Prop :=
  ∀ n, P14885133592851532279.a n = A370980 n

end A370980

/-! ## A370980.P3467330753538546410

`A209297(A099392(n+2)-2*n)`
-/

namespace A370980.P3467330753538546410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209297 (A099392 (n + 2) - (2 * n : ℤ)).toNat

end

end A370980.P3467330753538546410

namespace A370980

/-- `A209297(A099392(n+2)-2*n)` -/
def P3467330753538546410.Spec : Prop :=
  ∀ n, P3467330753538546410.a n = A370980 n

end A370980

/-! ## A370980.P3913476039111074260

`A008619(n²-A022998(n))`
-/

namespace A370980.P3913476039111074260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n ^ 2 : ℤ) - A022998 n).toNat

end

end A370980.P3913476039111074260

namespace A370980

/-- `A008619(n²-A022998(n))` -/
def P3913476039111074260.Spec : Prop :=
  ∀ n, P3913476039111074260.a n = A370980 n

end A370980

/-! ## A370980.P8726890835249919194

`A052938(n²-A022998(n))`
-/

namespace A370980.P8726890835249919194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((n ^ 2 : ℤ) - A022998 n).toNat

end

end A370980.P8726890835249919194

namespace A370980

/-- `A052938(n²-A022998(n))` -/
def P8726890835249919194.Spec : Prop :=
  ∀ n, P8726890835249919194.a n = A370980 n

end A370980

/-! ## A370980.P2549075774734044934

`A080513(n²-A022998(n))`
-/

namespace A370980.P2549075774734044934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 ((n ^ 2 : ℤ) - A022998 n).toNat

end

end A370980.P2549075774734044934

namespace A370980

/-- `A080513(n²-A022998(n))` -/
def P2549075774734044934.Spec : Prop :=
  ∀ n, P2549075774734044934.a n = A370980 n

end A370980

/-! ## A370980.P463757759341524353

`A266285(n²-A022998(n))`
-/

namespace A370980.P463757759341524353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 ((n ^ 2 : ℤ) - A022998 n).toNat

end

end A370980.P463757759341524353

namespace A370980

/-- `A266285(n²-A022998(n))` -/
def P463757759341524353.Spec : Prop :=
  ∀ n, P463757759341524353.a n = A370980 n

end A370980

/-! ## A370980.P15040333811652815975

`A266981(n²-A022998(n))`
-/

namespace A370980.P15040333811652815975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 ((n ^ 2 : ℤ) - A022998 n).toNat

end

end A370980.P15040333811652815975

namespace A370980

/-- `A266981(n²-A022998(n))` -/
def P15040333811652815975.Spec : Prop :=
  ∀ n, P15040333811652815975.a n = A370980 n

end A370980

/-!
# A370982: a(n) = Sum_{k=0..n} 2^(n - k)*Pochhammer(k/2, n - k). Row sums of A370419(n - k, k).

The programs for A370982, there is no canonical definition to state claims against.
-/

/-! ## A370982.P3910216850598883966

`A129832(A071742(n))`
-/

namespace A370982.P3910216850598883966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129832 (A071742 n).toNat

end

end A370982.P3910216850598883966

/-! ## A370982.P2957722735019453910

`A023193(∑[A001147(n)])`
-/

namespace A370982.P2957722735019453910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A370982.P2957722735019453910

/-!
# A370983: Triangle read by rows: T(n, k) = (n + k - 1)! / (k!*(n - k)!) if k > 0 and T(n, 0) = 0^n.

The programs for A370983, the canonical program `A370983.P7991274931919617133` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370983 has offset 0).

The definition of A370983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370983.P7991274931919617133

`A165680(n+1)*A253283(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370983

/-- `A165680(n+1)*A253283(n)` -/
def P7991274931919617133.Spec : Prop :=
  ∀ n, P7991274931919617133.a n = A370983 n

theorem P7991274931919617133.correct : P7991274931919617133.Spec := by
  intro n
  simp only [A370983]

end A370983

/-! ## A370983.P10570050482105060074

`A066099(A091934(n+1))*A253283(n)`
-/

namespace A370983.P10570050482105060074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A091934 (n + 1)).toNat * A253283 n

end

end A370983.P10570050482105060074

namespace A370983

/-- `A066099(A091934(n+1))*A253283(n)` -/
def P10570050482105060074.Spec : Prop :=
  ∀ n, P10570050482105060074.a n = A370983 n

end A370983

/-! ## A370983.P7086146066294774218

`lcm(A143484(A002560(2*n+7)), A253283(n))`
-/

namespace A370983.P7086146066294774218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143484 (A002560 (2 * n + 7)).toNat) (A253283 n)

end

end A370983.P7086146066294774218

namespace A370983

/-- `lcm(A143484(A002560(2*n+7)), A253283(n))` -/
def P7086146066294774218.Spec : Prop :=
  ∀ n, (P7086146066294774218.a n : ℤ) = A370983 n

end A370983

/-!
# A370984: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x^2*exp(x)) ).

The programs for A370984, there is no canonical definition to state claims against.
-/

/-! ## A370984.P14794838387161867884

`A261302((n+1)*A105787(n+1))`
-/

namespace A370984.P14794838387161867884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261302 ((n + 1 : ℤ) * A105787 (n + 1)).toNat

end

end A370984.P14794838387161867884

/-! ## A370984.P9662451337100346155

`A004526(A368981(n)+A089990(n+4))`
-/

namespace A370984.P9662451337100346155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A368981 n + A089990 (n + 4)).toNat

end

end A370984.P9662451337100346155

/-!
# A370985: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x^3*exp(x)) ).

The programs for A370985, there is no canonical definition to state claims against.
-/

/-! ## A370985.P14058179903117794566

`A263272(A371019(n))`
-/

namespace A370985.P14058179903117794566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A371019 n).toNat

end

end A370985.P14058179903117794566

/-! ## A370985.P15570234416495016420

`A005843(A390649(n))-A390648(n)`
-/

namespace A370985.P15570234416495016420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A390649 n).toNat - A390648 n

end

end A370985.P15570234416495016420

/-! ## A370985.P7690887796297523558

`A060775(A001858(n))*A358013(n)`
-/

namespace A370985.P7690887796297523558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A001858 n).toNat * A358013 n

end

end A370985.P7690887796297523558

/-!
# A370986: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x^2/2*exp(x)) ).

The programs for A370986, there is no canonical definition to state claims against.
-/

/-! ## A370986.P3601766583700637516

`A035942(A211634(n))`
-/

namespace A370986.P3601766583700637516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A211634 n).toNat

end

end A370986.P3601766583700637516

/-! ## A370986.P594960363205722684

`A110656(A001246(n)-n)`
-/

namespace A370986.P594960363205722684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A001246 n - (n : ℤ)).toNat

end

end A370986.P594960363205722684

/-!
# A370988: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x) - 1)) ).

The programs for A370988, there is no canonical definition to state claims against.
-/

/-! ## A370988.P18054462876348725386

`A004525(A371120(n)+A371119(n))`
-/

namespace A370988.P18054462876348725386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371120 n + A371119 n).toNat

end

end A370988.P18054462876348725386

/-! ## A370988.P13892957394344143187

`A004526(A371120(n)+A371119(n))`
-/

namespace A370988.P13892957394344143187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371120 n + A371119 n).toNat

end

end A370988.P13892957394344143187

/-!
# A370991: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x^2/2*(exp(x) - 1)) ).

The programs for A370991, there is no canonical definition to state claims against.
-/

/-! ## A370991.P170991929303303117

`A004525(A362892(n))`
-/

namespace A370991.P170991929303303117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A362892 n).toNat

end

end A370991.P170991929303303117

/-! ## A370991.P12271117992095831922

`A004525(A371304(n))`
-/

namespace A370991.P12271117992095831922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371304 n).toNat

end

end A370991.P12271117992095831922

/-! ## A370991.P10830347819560266632

`A004526(A362892(n)+1)`
-/

namespace A370991.P10830347819560266632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A362892 n + 1).toNat

end

end A370991.P10830347819560266632

/-!
# A370993: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x)) ).

The programs for A370993, there is no canonical definition to state claims against.
-/

/-! ## A370993.P16021934268561285602

`A370988(n)+A025429(A370988(n))`
-/

namespace A370993.P16021934268561285602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370988 n + A025429 (A370988 n).toNat

end

end A370993.P16021934268561285602

/-! ## A370993.P15658909446704408233

`A005843(A371228(n))-A377687(n)`
-/

namespace A370993.P15658909446704408233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A371228 n).toNat - A377687 n

end

end A370993.P15658909446704408233

/-!
# A370994: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x^2*log(1-x)) ).

The programs for A370994, there is no canonical definition to state claims against.
-/

/-! ## A370994.P14719362336881099686

`lcm(A002973(A241600(n)), A007121(n))`
-/

namespace A370994.P14719362336881099686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002973 (A241600 n).toNat) (A007121 n)

end

end A370994.P14719362336881099686

/-! ## A370994.P15154805210236426865

`lcm(A002845(n+1), A007121(A099145(n+1)))`
-/

namespace A370994.P15154805210236426865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002845 (n + 1)) (A007121 (A099145 (n + 1)).toNat)

end

end A370994.P15154805210236426865

/-!
# A370996: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x^2/2*log(1-x)) ).

The programs for A370996, there is no canonical definition to state claims against.
-/

/-! ## A370996.P6393356472907601526

`A004525(A362891(n))`
-/

namespace A370996.P6393356472907601526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A362891 n).toNat

end

end A370996.P6393356472907601526

/-! ## A370996.P4155162018042783076

`A004525(A371233(n))`
-/

namespace A370996.P4155162018042783076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371233 n).toNat

end

end A370996.P4155162018042783076

/-! ## A370996.P2683251854628272302

`A004525(A371302(n))`
-/

namespace A370996.P2683251854628272302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A371302 n).toNat

end

end A370996.P2683251854628272302

