import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
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
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A296300: Numbers divisible by their length in every base.

The programs for A296300, there is no canonical definition to state claims against.
-/

/-! ## A296300.P14193555646220279091

`A168267(eq[A051953(n+1), A217780(n+1)])`
-/

namespace A296300.P14193555646220279091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296300.P14193555646220279091

/-! ## A296300.P3411500825197809942

`∩[A168267(n+1), A177869(n+1)]`
-/

namespace A296300.P3411500825197809942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296300.P3411500825197809942

/-!
# A296302: Number of aperiodic compositions of n with relatively prime parts. Number of compositions of n with relatively prime parts and relatively prime run-lengths.

The programs for A296302, the canonical program `A296302.P8637239320253714587` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296302 has offset 1).

The definition of A296302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296302.P10755247547711301980

`∑{d}[n+1, A000740(#)*A008683((n+1)/#)]`
-/

namespace A296302.P10755247547711301980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P10755247547711301980

namespace A296302

/-- `∑{d}[n+1, A000740(#)*A008683((n+1)/#)]` -/
def P10755247547711301980.Spec : Prop :=
  ∀ n, P10755247547711301980.a n = A296302 (n + 1)

end A296302

/-! ## A296302.P482539191461971464

`∑{d}[n+1, A007428(#)*A034729((n+1)/#)]`
-/

namespace A296302.P482539191461971464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P482539191461971464

namespace A296302

/-- `∑{d}[n+1, A007428(#)*A034729((n+1)/#)]` -/
def P482539191461971464.Spec : Prop :=
  ∀ n, P482539191461971464.a n = A296302 (n + 1)

end A296302

/-! ## A296302.P9479553072993757241

`∑{d}[n+1, A034738(#)*A046692((n+1)/#)]`
-/

namespace A296302.P9479553072993757241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P9479553072993757241

namespace A296302

/-- `∑{d}[n+1, A034738(#)*A046692((n+1)/#)]` -/
def P9479553072993757241.Spec : Prop :=
  ∀ n, P9479553072993757241.a n = A296302 (n + 1)

end A296302

/-! ## A296302.P9354610481724121513

`∑{d}[n+1, A011946(#)*A092673((n+1)/#)]`
-/

namespace A296302.P9354610481724121513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P9354610481724121513

namespace A296302

/-- `∑{d}[n+1, A011946(#)*A092673((n+1)/#)]` -/
def P9354610481724121513.Spec : Prop :=
  ∀ n, P9354610481724121513.a n = A296302 (n + 1)

end A296302

/-! ## A296302.P8637239320253714587

`∑{d}[n+1, A034771(#)*A247343((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A296302

/-- `∑{d}[n+1, A034771(#)*A247343((n+1)/#)]` -/
def P8637239320253714587.Spec : Prop :=
  ∀ n, P8637239320253714587.a n = A296302 (n + 1)

theorem P8637239320253714587.correct : P8637239320253714587.Spec := by
  intro n
  simp only [A296302, Nat.add_sub_cancel]

end A296302

/-! ## A296302.P7087869314146194593

`∑{d}[n+1, A000079(#-1)*A007427((n+1)/#)]`
-/

namespace A296302.P7087869314146194593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P7087869314146194593

namespace A296302

/-- `∑{d}[n+1, A000079(#-1)*A007427((n+1)/#)]` -/
def P7087869314146194593.Spec : Prop :=
  ∀ n, P7087869314146194593.a n = A296302 (n + 1)

end A296302

/-! ## A296302.P15121895927913890806

`∑{d}[n+1, A317100(#)*A378219((n+1)/#)]`
-/

namespace A296302.P15121895927913890806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317100 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A296302.P15121895927913890806

namespace A296302

/-- `∑{d}[n+1, A317100(#)*A378219((n+1)/#)]` -/
def P15121895927913890806.Spec : Prop :=
  ∀ n, P15121895927913890806.a n = A296302 (n + 1)

end A296302

/-!
# A296304: Numbers whose absolute difference from a square is never a prime.

The programs for A296304, the canonical program `A296304.P12505462346226864270` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296304 has offset 1).

The definition of A296304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296304.P12505462346226864270

`lt[Δ[A128059(n)]², 1]²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A296304

/-- `lt[Δ[A128059(n)]², 1]²` -/
def P12505462346226864270.Spec : Prop :=
  ∀ n, (P12505462346226864270.a n : ℤ) = A296304 (n + 1)

theorem P12505462346226864270.correct : P12505462346226864270.Spec := by
  intro n
  simp only [A296304, Nat.add_sub_cancel]

end A296304

/-! ## A296304.P16382400591095528523

`eq[1, A128059(n)+A101264(n)]²`
-/

namespace A296304.P16382400591095528523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n + A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A296304.P16382400591095528523

namespace A296304

/-- `eq[1, A128059(n)+A101264(n)]²` -/
def P16382400591095528523.Spec : Prop :=
  ∀ n, (P16382400591095528523.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P13797581089649728576

`eq[A128059(n+1), A128059(n)]²`
-/

namespace A296304.P13797581089649728576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P13797581089649728576

namespace A296304

/-- `eq[A128059(n+1), A128059(n)]²` -/
def P13797581089649728576.Spec : Prop :=
  ∀ n, (P13797581089649728576.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P2862228474801393380

`eq[A072491(2*n+1), A122553(n)]²`
-/

namespace A296304.P2862228474801393380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P2862228474801393380

namespace A296304

/-- `eq[A072491(2*n+1), A122553(n)]²` -/
def P2862228474801393380.Spec : Prop :=
  ∀ n, (P2862228474801393380.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P892566373616306732

`eq[A072491(2*n+1), A156752(n)]²`
-/

namespace A296304.P892566373616306732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P892566373616306732

namespace A296304

/-- `eq[A072491(2*n+1), A156752(n)]²` -/
def P892566373616306732.Spec : Prop :=
  ∀ n, (P892566373616306732.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P2739228309336396651

`eq[A072491(2*n+1), A158799(n)]²`
-/

namespace A296304.P2739228309336396651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P2739228309336396651

namespace A296304

/-- `eq[A072491(2*n+1), A158799(n)]²` -/
def P2739228309336396651.Spec : Prop :=
  ∀ n, (P2739228309336396651.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P10849328043552088093

`lt[A107286(2*n), A072491(2*n+1)]²`
-/

namespace A296304.P10849328043552088093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A296304.P10849328043552088093

namespace A296304

/-- `lt[A107286(2*n), A072491(2*n+1)]²` -/
def P10849328043552088093.Spec : Prop :=
  ∀ n, (P10849328043552088093.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P16253203347530898652

`lt[1, A051699(2*n)]²`
-/

namespace A296304.P16253203347530898652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A296304.P16253203347530898652

namespace A296304

/-- `lt[1, A051699(2*n)]²` -/
def P16253203347530898652.Spec : Prop :=
  ∀ n, (P16253203347530898652.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P12777404554477036424

`lt[1, A051700(2*n)]²`
-/

namespace A296304.P12777404554477036424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A296304.P12777404554477036424

namespace A296304

/-- `lt[1, A051700(2*n)]²` -/
def P12777404554477036424.Spec : Prop :=
  ∀ n, (P12777404554477036424.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P4610852163712084433

`A008794(A164376(n+2)-1)`
-/

namespace A296304.P4610852163712084433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A164376 (n + 2) - 1).toNat

end

end A296304.P4610852163712084433

namespace A296304

/-- `A008794(A164376(n+2)-1)` -/
def P4610852163712084433.Spec : Prop :=
  ∀ n, P4610852163712084433.a n = A296304 (n + 1)

end A296304

/-! ## A296304.P10402788964688121005

`eq[0, A002126(2*n+1)]²`
-/

namespace A296304.P10402788964688121005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A296304.P10402788964688121005

namespace A296304

/-- `eq[0, A002126(2*n+1)]²` -/
def P10402788964688121005.Spec : Prop :=
  ∀ n, (P10402788964688121005.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P11659897880852523947

`lt[A090113(2*n+1), 1]²`
-/

namespace A296304.P11659897880852523947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090113 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A296304.P11659897880852523947

namespace A296304

/-- `lt[A090113(2*n+1), 1]²` -/
def P11659897880852523947.Spec : Prop :=
  ∀ n, (P11659897880852523947.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P8147558141919158201

`A008794(A164376(n+2))`
-/

namespace A296304.P8147558141919158201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A164376 (n + 2)).toNat

end

end A296304.P8147558141919158201

namespace A296304

/-- `A008794(A164376(n+2))` -/
def P8147558141919158201.Spec : Prop :=
  ∀ n, P8147558141919158201.a n = A296304 (n + 1)

end A296304

/-! ## A296304.P5064924948322831224

`eq[A007504(A117929(2*n+1)), A010051(2*n+1)]²`
-/

namespace A296304.P5064924948322831224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A117929 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P5064924948322831224

namespace A296304

/-- `eq[A007504(A117929(2*n+1)), A010051(2*n+1)]²` -/
def P5064924948322831224.Spec : Prop :=
  ∀ n, (P5064924948322831224.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P15458422802014188699

`eq[Δ[A061358(2*n+1)], A061358(2*n+1)]²`
-/

namespace A296304.P15458422802014188699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n ^ 2

end

end A296304.P15458422802014188699

namespace A296304

/-- `eq[Δ[A061358(2*n+1)], A061358(2*n+1)]²` -/
def P15458422802014188699.Spec : Prop :=
  ∀ n, (P15458422802014188699.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P7462850500366501253

`A131508(2*A164376(n+2))²`
-/

namespace A296304.P7462850500366501253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A164376 (n + 2)).toNat ^ 2

end

end A296304.P7462850500366501253

namespace A296304

/-- `A131508(2*A164376(n+2))²` -/
def P7462850500366501253.Spec : Prop :=
  ∀ n, P7462850500366501253.a n = A296304 (n + 1)

end A296304

/-! ## A296304.P1468704798880861430

`lt[2, A252168(n+2)]²`
-/

namespace A296304.P1468704798880861430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252168 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A296304.P1468704798880861430

namespace A296304

/-- `lt[2, A252168(n+2)]²` -/
def P1468704798880861430.Spec : Prop :=
  ∀ n, (P1468704798880861430.a n : ℤ) = A296304 (n + 1)

end A296304

/-! ## A296304.P5744124332459211637

`eq[A072491(2*n+1), A127752(2*n)]²`
-/

namespace A296304.P5744124332459211637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127752 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A296304.P5744124332459211637

namespace A296304

/-- `eq[A072491(2*n+1), A127752(2*n)]²` -/
def P5744124332459211637.Spec : Prop :=
  ∀ n, (P5744124332459211637.a n : ℤ) = A296304 (n + 1)

end A296304

/-!
# A296305: Triangular array T(n, k) read by rows, n > 0, 0 < k <= n: T(n, k) = A297673(n, k) + A297673(n+1, k) + A297673(n+1, k+1).

The programs for A296305, there is no canonical definition to state claims against.
-/

/-! ## A296305.P10897334045716435321

`A000040(A066412(n+3)+A032559(n+1))`
-/

namespace A296305.P10897334045716435321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066412 (n + 3) + A032559 (n + 1)).toNat

end

end A296305.P10897334045716435321

/-! ## A296305.P6860314554160367653

`A180101(A352444(2*n+3)+A023986(2*n))`
-/

namespace A296305.P6860314554160367653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A352444 (2 * n + 3) + A023986 (2 * n)).toNat

end

end A296305.P6860314554160367653

/-!
# A296306: a(n) = A001157(n)/A050999(n).

The programs for A296306, the canonical program `A296306.P7064557066489787750` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296306 has offset 1).

The definition of A296306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296306.P7064557066489787750

`(4^(A007814(n+1)+1)-1)/3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A296306

/-- `(4^(A007814(n+1)+1)-1)/3` -/
def P7064557066489787750.Spec : Prop :=
  ∀ n, P7064557066489787750.a n = (A296306 (n + 1) : ℚ)

end A296306

/-! ## A296306.P18071548523965120812

`A001157(n+1)/A050999(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A296306.P18071548523965120812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A050999 (n + 1) : ℚ)

end

end A296306.P18071548523965120812

namespace A296306

/-- `A001157(n+1)/A050999(n+1)` -/
def P18071548523965120812.Spec : Prop :=
  ∀ n, P18071548523965120812.a n = (A296306 (n + 1) : ℚ)

end A296306

/-! ## A296306.P17201122642513645837

`∑{d}[2^val(n+1, 2), #²]`
-/

namespace A296306.P17201122642513645837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A296306.P17201122642513645837

namespace A296306

/-- `∑{d}[2^val(n+1, 2), #²]` -/
def P17201122642513645837.Spec : Prop :=
  ∀ n, (P17201122642513645837.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P13815446904011573615

`floor(xor(n, -(n+2))²/3)`
-/

namespace A296306.P13815446904011573615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 : ℚ) / 3⌋

end

end A296306.P13815446904011573615

namespace A296306

/-- `floor(xor(n, -(n+2))²/3)` -/
def P13815446904011573615.Spec : Prop :=
  ∀ n, P13815446904011573615.a n = A296306 (n + 1)

end A296306

/-! ## A296306.P1036800108658051130

`round(xor(n, -(n+2))²/3)`
-/

namespace A296306.P1036800108658051130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 : ℚ) / 3)

end

end A296306.P1036800108658051130

namespace A296306

/-- `round(xor(n, -(n+2))²/3)` -/
def P1036800108658051130.Spec : Prop :=
  ∀ n, P1036800108658051130.a n = A296306 (n + 1)

end A296306

/-! ## A296306.P8079755929651734338

`∑{d}[or(n, n+1)-n, #²]`
-/

namespace A296306.P8079755929651734338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P8079755929651734338

namespace A296306

/-- `∑{d}[or(n, n+1)-n, #²]` -/
def P8079755929651734338.Spec : Prop :=
  ∀ n, (P8079755929651734338.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P7741053418979793817

`(xor(n, -(n+2))²-1)/3`
-/

namespace A296306.P7741053418979793817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-(n + 2 : ℤ)) ^ 2 - 1 : ℚ) / 3

end

end A296306.P7741053418979793817

namespace A296306

/-- `(xor(n, -(n+2))²-1)/3` -/
def P7741053418979793817.Spec : Prop :=
  ∀ n, P7741053418979793817.a n = (A296306 (n + 1) : ℚ)

end A296306

/-! ## A296306.P9690059181158716754

`∑{d}[and(n+1, -(n+1)), #²]`
-/

namespace A296306.P9690059181158716754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P9690059181158716754

namespace A296306

/-- `∑{d}[and(n+1, -(n+1)), #²]` -/
def P9690059181158716754.Spec : Prop :=
  ∀ n, (P9690059181158716754.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P14508186675348402361

`∑{d}[or(n+1, -(n+1)), #²]`
-/

namespace A296306.P14508186675348402361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P14508186675348402361

namespace A296306

/-- `∑{d}[or(n+1, -(n+1)), #²]` -/
def P14508186675348402361.Spec : Prop :=
  ∀ n, (P14508186675348402361.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P5344954728649024329

`∑{d}[n+1-and(n, n+1), #²]`
-/

namespace A296306.P5344954728649024329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P5344954728649024329

namespace A296306

/-- `∑{d}[n+1-and(n, n+1), #²]` -/
def P5344954728649024329.Spec : Prop :=
  ∀ n, (P5344954728649024329.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P15412962608084773019

`(4^(val(n+1, 2)+1)-1)/3`
-/

namespace A296306.P15412962608084773019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℤ) - 1 : ℚ) / 3

end

end A296306.P15412962608084773019

namespace A296306

/-- `(4^(val(n+1, 2)+1)-1)/3` -/
def P15412962608084773019.Spec : Prop :=
  ∀ n, P15412962608084773019.a n = (A296306 (n + 1) : ℚ)

end A296306

/-! ## A296306.P11546616718389468348

`Δ[A062880(n)]-1`
-/

namespace A296306.P11546616718389468348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A296306.P11546616718389468348

namespace A296306

/-- `Δ[A062880(n)]-1` -/
def P11546616718389468348.Spec : Prop :=
  ∀ n, P11546616718389468348.a n = A296306 (n + 1)

end A296306

/-! ## A296306.P17597204824519056747

`(A059152(n)-1)/3`
-/

namespace A296306.P17597204824519056747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059152 n - 1 : ℚ) / 3

end

end A296306.P17597204824519056747

namespace A296306

/-- `(A059152(n)-1)/3` -/
def P17597204824519056747.Spec : Prop :=
  ∀ n, P17597204824519056747.a n = (A296306 (n + 1) : ℚ)

end A296306

/-! ## A296306.P14964882008712820512

`A342634(xor(n, n+1))`
-/

namespace A296306.P14964882008712820512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342634 (Nat.xor n (n + 1))

end

end A296306.P14964882008712820512

namespace A296306

/-- `A342634(xor(n, n+1))` -/
def P14964882008712820512.Spec : Prop :=
  ∀ n, P14964882008712820512.a n = A296306 (n + 1)

end A296306

/-! ## A296306.P1406920261873170826

`∑{d}[Δ[A003188(n)], #²]`
-/

namespace A296306.P1406920261873170826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P1406920261873170826

namespace A296306

/-- `∑{d}[Δ[A003188(n)], #²]` -/
def P1406920261873170826.Spec : Prop :=
  ∀ n, (P1406920261873170826.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P104624584156951651

`∑{d}[A006519(n+1), #²]`
-/

namespace A296306.P104624584156951651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P104624584156951651

namespace A296306

/-- `∑{d}[A006519(n+1), #²]` -/
def P104624584156951651.Spec : Prop :=
  ∀ n, (P104624584156951651.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P15405288913540874920

`∑{d}[A055975(n+1), #²]`
-/

namespace A296306.P15405288913540874920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P15405288913540874920

namespace A296306

/-- `∑{d}[A055975(n+1), #²]` -/
def P15405288913540874920.Spec : Prop :=
  ∀ n, (P15405288913540874920.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P17186729233627793781

`∑{d}[A118827(n+1), #²]`
-/

namespace A296306.P17186729233627793781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P17186729233627793781

namespace A296306

/-- `∑{d}[A118827(n+1), #²]` -/
def P17186729233627793781.Spec : Prop :=
  ∀ n, (P17186729233627793781.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P448274381416321435

`∑{d}[A118830(n+1), #²]`
-/

namespace A296306.P448274381416321435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P448274381416321435

namespace A296306

/-- `∑{d}[A118830(n+1), #²]` -/
def P448274381416321435.Spec : Prop :=
  ∀ n, (P448274381416321435.a n : ℤ) = A296306 (n + 1)

end A296306

/-! ## A296306.P2078391684779795714

`∑{d}[A135481(n)+1, #²]`
-/

namespace A296306.P2078391684779795714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A296306.P2078391684779795714

namespace A296306

/-- `∑{d}[A135481(n)+1, #²]` -/
def P2078391684779795714.Spec : Prop :=
  ∀ n, (P2078391684779795714.a n : ℤ) = A296306 (n + 1)

end A296306

/-!
# A296307: Array read by upwards antidiagonals: f(n,k) = (n+1)*ceiling(n/(k-1)) - 1.

The programs for A296307, the canonical program `A296307.P1006250162034138500` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296307 has offset 1).

The definition of A296307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296307.P1006250162034138500

`(A004736(n+1)+1)*A010766(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A296307

/-- `(A004736(n+1)+1)*A010766(n+1)-1` -/
def P1006250162034138500.Spec : Prop :=
  ∀ n, P1006250162034138500.a n = A296307 (n + 1)

theorem P1006250162034138500.correct : P1006250162034138500.Spec := by
  intro n
  simp only [A296307, Nat.add_sub_cancel]

end A296307

/-! ## A296307.P4728892095806345846

`A380697(A175332(n+1))`
-/

namespace A296307.P4728892095806345846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380697 (A175332 (n + 1)).toNat

end

end A296307.P4728892095806345846

namespace A296307

/-- `A380697(A175332(n+1))` -/
def P4728892095806345846.Spec : Prop :=
  ∀ n, P4728892095806345846.a n = A296307 (n + 1)

end A296307

/-!
# A296308: Number of n X n 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1's.

The programs for A296308, there is no canonical definition to state claims against.
-/

/-! ## A296308.P15698793347920707441

`A296313(∑[4*n]+1)`
-/

namespace A296308.P15698793347920707441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296308.P15698793347920707441

/-! ## A296308.P7258673923218622976

`record[A296313(Δ[A235355(n)])]`
-/

namespace A296308.P7258673923218622976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296308.P7258673923218622976

/-! ## A296308.P2628187662634344358

`record[A296313(A330613(n+1))]`
-/

namespace A296308.P2628187662634344358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296308.P2628187662634344358

/-! ## A296308.P11659113207088273160

`A296313(A001844(n))^ceil(acot(n))`
-/

namespace A296308.P11659113207088273160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296313 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A296308.P11659113207088273160

/-! ## A296308.P13842640992765881706

`record[A003982(n)*A296313(n+1)]`
-/

namespace A296308.P13842640992765881706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296308.P13842640992765881706

/-!
# A296309: Number of n X 4 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1s.

The programs for A296309, the canonical program `A296309.P10945030368531740949` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296309 has offset 1).

The definition of A296309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296309.P10945030368531740949

`a(n-1)+4*a(n-3)-a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10, a(4)=23, a(5)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296309

/-- `a(n-1)+4*a(n-3)-a(n-4)-2*a(n-6)` -/
def P10945030368531740949.Spec : Prop :=
  ∀ n, P10945030368531740949.a n = A296309 (n + 1)

theorem P10945030368531740949.correct : P10945030368531740949.Spec := by
  intro n
  simp only [A296309, Nat.add_sub_cancel]

end A296309

/-! ## A296309.P17136700529965192233

`A296313(∑[n+3]+7)`
-/

namespace A296309.P17136700529965192233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296309.P17136700529965192233

namespace A296309

/-- `A296313(∑[n+3]+7)` -/
def P17136700529965192233.Spec : Prop :=
  ∀ n, P17136700529965192233.a n = A296309 (n + 1)

end A296309

/-! ## A296309.P7333868042334088540

`A296313(A055999(n)+10)+char[21]`
-/

namespace A296309.P7333868042334088540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296309.P7333868042334088540

namespace A296309

/-- `A296313(A055999(n)+10)+char[21]` -/
def P7333868042334088540.Spec : Prop :=
  ∀ n, P7333868042334088540.a n = A296309 (n + 1)

end A296309

/-! ## A296309.P11904336445907842594

`A296313(A055999(n)+10)%A000108(n+2)`
-/

namespace A296309.P11904336445907842594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296313 (A055999 n + 10).toNat) (A000108 (n + 2))

end

end A296309.P11904336445907842594

namespace A296309

/-- `A296313(A055999(n)+10)%A000108(n+2)` -/
def P11904336445907842594.Spec : Prop :=
  ∀ n, P11904336445907842594.a n = A296309 (n + 1)

end A296309

/-! ## A296309.P6996661501362791233

`A014963(6*(n+1))*A296313(A055999(n)+10)`
-/

namespace A296309.P6996661501362791233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A296313 (A055999 n + 10).toNat

end

end A296309.P6996661501362791233

namespace A296309

/-- `A014963(6*(n+1))*A296313(A055999(n)+10)` -/
def P6996661501362791233.Spec : Prop :=
  ∀ n, P6996661501362791233.a n = A296309 (n + 1)

end A296309

/-!
# A296310: Number of nX5 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1s.

The programs for A296310, there is no canonical definition to state claims against.
-/

/-! ## A296310.P7149170839230520422

`A296313(∑[n+3]+n+12)`
-/

namespace A296310.P7149170839230520422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A296310.P7149170839230520422

/-! ## A296310.P9203238471355935643

`A296313(A167499(n+3))+char[21]`
-/

namespace A296310.P9203238471355935643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296310.P9203238471355935643

/-! ## A296310.P7442012074546215293

`or(C(2, n), A296313(A000217(n+4)+5))`
-/

namespace A296310.P7442012074546215293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A296313 (A000217 (n + 4) + 5).toNat)

end

end A296310.P7442012074546215293

/-! ## A296310.P3654635831797170658

`A326292(n)+A296313(A167499(n+3))`
-/

namespace A296310.P3654635831797170658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A296313 (A167499 (n + 3)).toNat

end

end A296310.P3654635831797170658

/-! ## A296310.P14912996440949549577

`A296313(A056000(n)+15)+A025469(n)`
-/

namespace A296310.P14912996440949549577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A056000 n + 15).toNat + A025469 n

end

end A296310.P14912996440949549577

/-!
# A296311: Number of nX6 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1s.

The programs for A296311, there is no canonical definition to state claims against.
-/

/-! ## A296311.P7505723586470839987

`A296313(∑[n+5]+16)`
-/

namespace A296311.P7505723586470839987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A296311.P7505723586470839987

/-! ## A296311.P13415399950004441012

`A296313(A000124(n+5)+5)+char[20]`
-/

namespace A296311.P13415399950004441012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296311.P13415399950004441012

/-! ## A296311.P1267610538735326663

`A296313(A167499(n+4)+1)+char[28]`
-/

namespace A296311.P1267610538735326663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296311.P1267610538735326663

/-! ## A296311.P2671666483520955406

`A296313(A167499(n+4)+1)%A000108(n+3)`
-/

namespace A296311.P2671666483520955406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296313 (A167499 (n + 4) + 1).toNat) (A000108 (n + 3))

end

end A296311.P2671666483520955406

/-! ## A296311.P5627398416123076679

`A296313(A000124(n+5)+5)%A000108(n+3)`
-/

namespace A296311.P5627398416123076679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296313 (A000124 (n + 5) + 5).toNat) (A000108 (n + 3))

end

end A296311.P5627398416123076679

/-!
# A296312: Number of nX7 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1s.

The programs for A296312, there is no canonical definition to state claims against.
-/

/-! ## A296312.P8174084638688109352

`A296313(A167614(n+5)+4)`
-/

namespace A296312.P8174084638688109352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A167614 (n + 5) + 4).toNat

end

end A296312.P8174084638688109352

/-! ## A296312.P4486783071815126153

`A296313(A000124(n+6)+6)`
-/

namespace A296312.P4486783071815126153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A000124 (n + 6) + 6).toNat

end

end A296312.P4486783071815126153

/-! ## A296312.P7032627541749774781

`A296313(A000217(n+6)+7)`
-/

namespace A296312.P7032627541749774781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A000217 (n + 6) + 7).toNat

end

end A296312.P7032627541749774781

/-! ## A296312.P1765474583122502187

`A296313(A034856(n+5)+9)`
-/

namespace A296312.P1765474583122502187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A034856 (n + 5) + 9).toNat

end

end A296312.P1765474583122502187

/-! ## A296312.P856216817312129089

`A296313(A046691(n+4)+11)`
-/

namespace A296312.P856216817312129089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (A046691 (n + 4) + 11).toNat

end

end A296312.P856216817312129089

/-!
# A296313: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 3 or 6 king-move neighboring 1s.

The programs for A296313, there is no canonical definition to state claims against.
-/

/-! ## A296313.P8505808590867828374

`or(A079978(A133500(n)), A183456(n+1))`
-/

namespace A296313.P8505808590867828374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079978 (A133500 n).toNat) (A183456 (n + 1))

end

end A296313.P8505808590867828374

/-! ## A296313.P16746289021921159263

`or(A008966(A328627(n)), A183456(n+1))`
-/

namespace A296313.P16746289021921159263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A328627 n).toNat) (A183456 (n + 1))

end

end A296313.P16746289021921159263

/-! ## A296313.P10237193316937555441

`A183456(n+1)+A025469(A189610(n+1))`
-/

namespace A296313.P10237193316937555441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (n + 1) + A025469 (A189610 (n + 1)).toNat

end

end A296313.P10237193316937555441

/-! ## A296313.P2838178454758713071

`A183456(n+1)+A085982(A219217(n+1))`
-/

namespace A296313.P2838178454758713071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (n + 1) + A085982 (A219217 (n + 1)).toNat

end

end A296313.P2838178454758713071

/-! ## A296313.P13603957436241812949

`A369004(A368521(2*n+5))+A183456(n+1)`
-/

namespace A296313.P13603957436241812949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (A368521 (2 * n + 5)).toNat + A183456 (n + 1)

end

end A296313.P13603957436241812949

/-!
# A296314: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296314, there is no canonical definition to state claims against.
-/

/-! ## A296314.P13715888585237646468

`A296320((n+1)²+n²)`
-/

namespace A296314.P13715888585237646468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 ((n + 1) ^ 2 + n ^ 2)

end

end A296314.P13715888585237646468

/-! ## A296314.P14645907430293405914

`record[A296320(A330613(n+1))]`
-/

namespace A296314.P14645907430293405914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296314.P14645907430293405914

/-! ## A296314.P2446493076048369477

`record[A003982(n)*A296320(n+1)]`
-/

namespace A296314.P2446493076048369477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296314.P2446493076048369477

/-! ## A296314.P2265709647587346577

`record[gcd(A003987(n), A296320(n+1))]`
-/

namespace A296314.P2265709647587346577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A296320 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296314.P2265709647587346577

/-! ## A296314.P15360302328840347821

`A296320(A001844(n))+A185284(n)`
-/

namespace A296314.P15360302328840347821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A001844 n).toNat + A185284 n

end

end A296314.P15360302328840347821

/-!
# A296315: Number of n X 3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296315, there is no canonical definition to state claims against.
-/

/-! ## A296315.P14785045160140424930

`A296320(∑[n+2]+4)`
-/

namespace A296315.P14785045160140424930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296315.P14785045160140424930

/-! ## A296315.P5267306785736926683

`A296320(A167614(n+1))+A178780(n)`
-/

namespace A296315.P5267306785736926683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A167614 (n + 1)).toNat + A178780 n

end

end A296315.P5267306785736926683

/-! ## A296315.P17915588616049189843

`A296320(A167614(n+1))+A185245(n)`
-/

namespace A296315.P17915588616049189843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A167614 (n + 1)).toNat + A185245 n

end

end A296315.P17915588616049189843

/-! ## A296315.P3651404004100041955

`lcm(A033999(n), A296320(A167614(n+1)))`
-/

namespace A296315.P3651404004100041955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296320 (A167614 (n + 1)).toNat)

end

end A296315.P3651404004100041955

/-! ## A296315.P14717595816609397600

`or(A000007(n), A296320(A167614(n+1)))`
-/

namespace A296315.P14717595816609397600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A296320 (A167614 (n + 1)).toNat)

end

end A296315.P14717595816609397600

/-!
# A296316: Number of n X 4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296316, there is no canonical definition to state claims against.
-/

/-! ## A296316.P451637050349670022

`A296320(A374004(n+1))`
-/

namespace A296316.P451637050349670022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A374004 (n + 1)).toNat

end

end A296316.P451637050349670022

/-! ## A296316.P3566467714726581371

`A296320(A141214(n)+7)`
-/

namespace A296316.P3566467714726581371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A141214 n + 7).toNat

end

end A296316.P3566467714726581371

/-! ## A296316.P7969598508064584795

`A296320(A052905(n)+9)`
-/

namespace A296316.P7969598508064584795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A052905 n + 9).toNat

end

end A296316.P7969598508064584795

/-! ## A296316.P13072102483081748254

`A296320(A055999(n)+10)`
-/

namespace A296316.P13072102483081748254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A055999 n + 10).toNat

end

end A296316.P13072102483081748254

/-! ## A296316.P6165311453586247947

`A296320(A167614(n+2)+1)`
-/

namespace A296316.P6165311453586247947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A167614 (n + 2) + 1).toNat

end

end A296316.P6165311453586247947

/-!
# A296317: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296317, there is no canonical definition to state claims against.
-/

/-! ## A296317.P633041040068634809

`A296320(A374005(n+1))`
-/

namespace A296317.P633041040068634809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A374005 (n + 1)).toNat

end

end A296317.P633041040068634809

/-! ## A296317.P6657240624461139001

`A296320(A167499(n+3))`
-/

namespace A296317.P6657240624461139001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A167499 (n + 3)).toNat

end

end A296317.P6657240624461139001

/-! ## A296317.P14382348136767298844

`A296320(A056000(n)+15)`
-/

namespace A296317.P14382348136767298844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A056000 n + 15).toNat

end

end A296317.P14382348136767298844

/-! ## A296317.P880871522625613724

`A296320(A000217(n+4)+5)`
-/

namespace A296317.P880871522625613724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A000217 (n + 4) + 5).toNat

end

end A296317.P880871522625613724

/-! ## A296317.P15563614609588975234

`A296320(A052905(n+3)-(2*n+1))`
-/

namespace A296317.P15563614609588975234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A296317.P15563614609588975234

/-!
# A296318: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296318, there is no canonical definition to state claims against.
-/

/-! ## A296318.P1919914168621802139

`A296320(A374007(n+1))`
-/

namespace A296318.P1919914168621802139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A374007 (n + 1)).toNat

end

end A296318.P1919914168621802139

/-! ## A296318.P10648956472864357344

`A296320(A166136(n+4))`
-/

namespace A296318.P10648956472864357344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A166136 (n + 4)).toNat

end

end A296318.P10648956472864357344

/-! ## A296318.P12874244963845599279

`A296320(A167499(n+4)+1)`
-/

namespace A296318.P12874244963845599279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A167499 (n + 4) + 1).toNat

end

end A296318.P12874244963845599279

/-! ## A296318.P3444532433473411304

`A296320(A000217(n+5)+6)`
-/

namespace A296318.P3444532433473411304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A000217 (n + 5) + 6).toNat

end

end A296318.P3444532433473411304

/-! ## A296318.P13174650273052644796

`A296320(A052905(n+3))`
-/

namespace A296318.P13174650273052644796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A052905 (n + 3)).toNat

end

end A296318.P13174650273052644796

/-!
# A296319: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296319, there is no canonical definition to state claims against.
-/

/-! ## A296319.P1475279358021776659

`A296320(A374008(n+1))`
-/

namespace A296319.P1475279358021776659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A374008 (n + 1)).toNat

end

end A296319.P1475279358021776659

/-! ## A296319.P2388288750588534238

`A296320(eq[11, A066657(n)])`
-/

namespace A296319.P2388288750588534238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296319.P2388288750588534238

/-! ## A296319.P9809172586865218024

`A296320(eq[8, A131818(n+1)])`
-/

namespace A296319.P9809172586865218024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296319.P9809172586865218024

/-! ## A296319.P11611621064769606501

`A296320(A055999(n+4))`
-/

namespace A296319.P11611621064769606501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (A055999 (n + 4)).toNat

end

end A296319.P11611621064769606501

/-! ## A296319.P14375226703953001940

`A296320(eq[4, A219347(n)])`
-/

namespace A296319.P14375226703953001940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296319.P14375226703953001940

/-!
# A296320: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 neighboring 1.

The programs for A296320, there is no canonical definition to state claims against.
-/

/-! ## A296320.P7759457617895483858

`A183474(n+1)-A153246(A054125(n)!)`
-/

namespace A296320.P7759457617895483858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (n + 1) - A153246 (Nat.factorial (A054125 n).toNat)

end

end A296320.P7759457617895483858

/-! ## A296320.P8524248781049274845

`A295097(n+1)+A185894(A298834(n+1))-7%A169623(n)`
-/

namespace A296320.P8524248781049274845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A185894 (A298834 (n + 1)).toNat - Int.tmod 7 (A169623 n)

end

end A296320.P8524248781049274845

/-! ## A296320.P373388951697679271

`A183474(A187829(n+1))-A007599(A047089(n))`
-/

namespace A296320.P373388951697679271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A187829 (n + 1)).toNat - A007599 (A047089 n).toNat

end

end A296320.P373388951697679271

/-! ## A296320.P11366910547494120648

`A183474(A187829(n+1))-A086747(A054125(n))`
-/

namespace A296320.P11366910547494120648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A187829 (n + 1)).toNat - A086747 (A054125 n).toNat

end

end A296320.P11366910547494120648

/-! ## A296320.P12001430333863624601

`A183474(A187829(n+1))-A001222(A169623(n))`
-/

namespace A296320.P12001430333863624601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183474 (A187829 (n + 1)).toNat - A001222 (A169623 n).toNat

end

end A296320.P12001430333863624601

/-!
# A296321: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1's.

The programs for A296321, there is no canonical definition to state claims against.
-/

/-! ## A296321.P6863968854665623631

`A296327((n+1)²+n²)`
-/

namespace A296321.P6863968854665623631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 ((n + 1) ^ 2 + n ^ 2)

end

end A296321.P6863968854665623631

/-! ## A296321.P6194331009603413685

`record[A003982(n)*A296327(n+1)]`
-/

namespace A296321.P6194331009603413685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296321.P6194331009603413685

/-! ## A296321.P14976538584825879394

`record[gcd(A296327(n+1), A296339(n))]`
-/

namespace A296321.P14976538584825879394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296327 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296321.P14976538584825879394

/-! ## A296321.P833369556946985599

`A291168(n)*A296327(A001844(n))`
-/

namespace A296321.P833369556946985599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n * A296327 (A001844 n).toNat

end

end A296321.P833369556946985599

/-! ## A296321.P5714332260540295522

`gcd(A112315(n), A296327(A001844(n)))`
-/

namespace A296321.P5714332260540295522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112315 n) (A296327 (A001844 n).toNat)

end

end A296321.P5714332260540295522

/-!
# A296322: Number of n X 3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1s.

The programs for A296322, there is no canonical definition to state claims against.
-/

/-! ## A296322.P13256616756580907765

`A296327(∑[n+2]+4)`
-/

namespace A296322.P13256616756580907765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296322.P13256616756580907765

/-! ## A296322.P1704220449098682648

`A015156(n)*A296327(A167614(n+1))`
-/

namespace A296322.P1704220449098682648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015156 n * A296327 (A167614 (n + 1)).toNat

end

end A296322.P1704220449098682648

/-! ## A296322.P7953074497226498631

`A015280(n)*A296327(A167614(n+1))`
-/

namespace A296322.P7953074497226498631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015280 n * A296327 (A167614 (n + 1)).toNat

end

end A296322.P7953074497226498631

/-! ## A296322.P782386394425813269

`A296327(A167614(n+1))^A178334(n)`
-/

namespace A296322.P782386394425813269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296327 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A296322.P782386394425813269

/-! ## A296322.P8139537861037971235

`A296327(A167614(n+1))%A042342(n)`
-/

namespace A296322.P8139537861037971235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296327 (A167614 (n + 1)).toNat) (A042342 n)

end

end A296322.P8139537861037971235

/-!
# A296323: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1s.

The programs for A296323, there is no canonical definition to state claims against.
-/

/-! ## A296323.P15384586043379539134

`A296327(A141214(n)+7)`
-/

namespace A296323.P15384586043379539134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A141214 n + 7).toNat

end

end A296323.P15384586043379539134

/-! ## A296323.P2204928793998204667

`A296327(A052905(n)+9)`
-/

namespace A296323.P2204928793998204667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A052905 n + 9).toNat

end

end A296323.P2204928793998204667

/-! ## A296323.P12462921310832576997

`A296327(A055999(n)+10)`
-/

namespace A296323.P12462921310832576997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A055999 n + 10).toNat

end

end A296323.P12462921310832576997

/-! ## A296323.P17036783663272166826

`A296327(A167614(n+2)+1)`
-/

namespace A296323.P17036783663272166826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A167614 (n + 2) + 1).toNat

end

end A296323.P17036783663272166826

/-! ## A296323.P14395686758699547080

`A296327(A112355(n+1)+4)`
-/

namespace A296323.P14395686758699547080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A112355 (n + 1) + 4).toNat

end

end A296323.P14395686758699547080

/-!
# A296324: Number of n X 5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1's.

The programs for A296324, there is no canonical definition to state claims against.
-/

/-! ## A296324.P5592741828298919408

`A296327(A167499(n+3))`
-/

namespace A296324.P5592741828298919408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A167499 (n + 3)).toNat

end

end A296324.P5592741828298919408

/-! ## A296324.P11369568906893079377

`A296327(A000217(n+4)+5)`
-/

namespace A296324.P11369568906893079377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A000217 (n + 4) + 5).toNat

end

end A296324.P11369568906893079377

/-! ## A296324.P1434090650470122402

`A296327(A046691(n+2)+9)`
-/

namespace A296324.P1434090650470122402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A046691 (n + 2) + 9).toNat

end

end A296324.P1434090650470122402

/-! ## A296324.P3073256539354375876

`A296327(A374005(n+1))`
-/

namespace A296324.P3073256539354375876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A374005 (n + 1)).toNat

end

end A296324.P3073256539354375876

/-! ## A296324.P16633639981910982336

`A296327(A046691(n+3))`
-/

namespace A296324.P16633639981910982336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A046691 (n + 3)).toNat

end

end A296324.P16633639981910982336

/-!
# A296325: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1s.

The programs for A296325, there is no canonical definition to state claims against.
-/

/-! ## A296325.P5767867283989720060

`A296327(A166136(n+4))`
-/

namespace A296325.P5767867283989720060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A166136 (n + 4)).toNat

end

end A296325.P5767867283989720060

/-! ## A296325.P16332503642690161943

`A296327(A167499(n+4)+1)`
-/

namespace A296325.P16332503642690161943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A167499 (n + 4) + 1).toNat

end

end A296325.P16332503642690161943

/-! ## A296325.P13935257775975213766

`A296327(A000124(n+5)+5)`
-/

namespace A296325.P13935257775975213766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A000124 (n + 5) + 5).toNat

end

end A296325.P13935257775975213766

/-! ## A296325.P10031903059915029656

`A296327(A002620(n+2)+A002620(n+9))`
-/

namespace A296325.P10031903059915029656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A296325.P10031903059915029656

/-! ## A296325.P6924955297135276400

`A296327(A374007(n+1))`
-/

namespace A296325.P6924955297135276400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A374007 (n + 1)).toNat

end

end A296325.P6924955297135276400

/-!
# A296326: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1s.

The programs for A296326, there is no canonical definition to state claims against.
-/

/-! ## A296326.P9464303594692724888

`A296327(A000217(n+6)+7)`
-/

namespace A296326.P9464303594692724888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A000217 (n + 6) + 7).toNat

end

end A296326.P9464303594692724888

/-! ## A296326.P15442087850028975750

`A296327(A161680(n+7)+7)`
-/

namespace A296326.P15442087850028975750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A161680 (n + 7) + 7).toNat

end

end A296326.P15442087850028975750

/-! ## A296326.P7878424286630507185

`A296327(A374008(n+1))`
-/

namespace A296326.P7878424286630507185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A374008 (n + 1)).toNat

end

end A296326.P7878424286630507185

/-! ## A296326.P15952839888114426601

`A296327(A052905(n+4)-1)`
-/

namespace A296326.P15952839888114426601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A052905 (n + 4) - 1).toNat

end

end A296326.P15952839888114426601

/-! ## A296326.P11116198273876414253

`A296327(A000124(n+7)-7)`
-/

namespace A296326.P11116198273876414253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296327 (A000124 (n + 7) - 7).toNat

end

end A296326.P11116198273876414253

/-!
# A296327: T(n,k) = Number of n X k 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 neighboring 1's.

The programs for A296327, there is no canonical definition to state claims against.
-/

/-! ## A296327.P622095199008752420

`A007306(A002024(A196641(n+1)²))`
-/

namespace A296327.P622095199008752420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A002024 (A196641 (n + 1) ^ 2).toNat).toNat

end

end A296327.P622095199008752420

/-! ## A296327.P16536739174708134657

`A087845(A146766(n))`
-/

namespace A296327.P16536739174708134657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A146766 n).toNat

end

end A296327.P16536739174708134657

/-! ## A296327.P9786581540858325756

`A207291(A146767(n))`
-/

namespace A296327.P9786581540858325756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207291 (A146767 n).toNat

end

end A296327.P9786581540858325756

/-! ## A296327.P12143076103748584949

`A316847(A176422(n))`
-/

namespace A296327.P12143076103748584949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316847 (A176422 n).toNat

end

end A296327.P12143076103748584949

/-! ## A296327.P12363714156802482060

`A072030(A177939(n+1))`
-/

namespace A296327.P12363714156802482060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A177939 (n + 1)).toNat

end

end A296327.P12363714156802482060

/-!
# A296328: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1's.

The programs for A296328, there is no canonical definition to state claims against.
-/

/-! ## A296328.P4174132296882556570

`A296335(∑[4*n]+1)`
-/

namespace A296328.P4174132296882556570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296328.P4174132296882556570

/-! ## A296328.P16315370505699293043

`record[A214505(n)*A296335(n+1)]`
-/

namespace A296328.P16315370505699293043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A296335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296328.P16315370505699293043

/-! ## A296328.P7403744153539316678

`record[gcd(A296335(n+1), A296339(n))]`
-/

namespace A296328.P7403744153539316678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296335 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296328.P7403744153539316678

/-! ## A296328.P2554139991955752066

`A296335(A001844(n))+A178798(n)`
-/

namespace A296328.P2554139991955752066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A001844 n).toNat + A178798 n

end

end A296328.P2554139991955752066

/-! ## A296328.P8412762605325394250

`A296335(A001844(n))+A034437(n+1)`
-/

namespace A296328.P8412762605325394250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A001844 n).toNat + A034437 (n + 1)

end

end A296328.P8412762605325394250

/-!
# A296329: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296329, the canonical program `A296329.P12834742227234648342` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296329 has offset 1).

The definition of A296329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296329.P12834742227234648342

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=3, a(1)=8, a(2)=19, a(3)=47, a(4)=116`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296329

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)+a(n-5)` -/
def P12834742227234648342.Spec : Prop :=
  ∀ n, (P12834742227234648342.a n : ℤ) = A296329 (n + 1)

theorem P12834742227234648342.correct : P12834742227234648342.Spec := by
  intro n
  simp only [A296329, Nat.add_sub_cancel]

end A296329

/-! ## A296329.P15066524577362111479

`A060961(2*(n+2))`
-/

namespace A296329.P15066524577362111479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (2 * (n + 2))

end

end A296329.P15066524577362111479

namespace A296329

/-- `A060961(2*(n+2))` -/
def P15066524577362111479.Spec : Prop :=
  ∀ n, P15066524577362111479.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P8668143671197389645

`Δ[A023437(2*n+3)]`
-/

namespace A296329.P8668143671197389645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023437 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296329.P8668143671197389645

namespace A296329

/-- `Δ[A023437(2*n+3)]` -/
def P8668143671197389645.Spec : Prop :=
  ∀ n, P8668143671197389645.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P8948795879538705295

`record[A060961(A000265(n+1)+3)]`
-/

namespace A296329.P8948795879538705295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (A000265 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296329.P8948795879538705295

namespace A296329

/-- `record[A060961(A000265(n+1)+3)]` -/
def P8948795879538705295.Spec : Prop :=
  ∀ n, P8948795879538705295.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P9970701050434945698

`record[A060961(A307447(n+3)+1)]`
-/

namespace A296329.P9970701050434945698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (A307447 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296329.P9970701050434945698

namespace A296329

/-- `record[A060961(A307447(n+3)+1)]` -/
def P9970701050434945698.Spec : Prop :=
  ∀ n, P9970701050434945698.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P7064911407603365442

`record[A060961(A052938(or(2, n+1)))]`
-/

namespace A296329.P7064911407603365442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (A052938 (Nat.lor 2 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296329.P7064911407603365442

namespace A296329

/-- `record[A060961(A052938(or(2, n+1)))]` -/
def P7064911407603365442.Spec : Prop :=
  ∀ n, P7064911407603365442.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P13008946430125983922

`record[A060961(A052938(xor(2, n+1)))]`
-/

namespace A296329.P13008946430125983922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (A052938 (Nat.xor 2 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296329.P13008946430125983922

namespace A296329

/-- `record[A060961(A052938(xor(2, n+1)))]` -/
def P13008946430125983922.Spec : Prop :=
  ∀ n, P13008946430125983922.a n = A296329 (n + 1)

end A296329

/-! ## A296329.P9776815716042470751

`record[A060961((n+1)/A034684(n+1)+3)]`
-/

namespace A296329.P9776815716042470751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A034684 (n + 1) : ℚ) + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296329.P9776815716042470751

namespace A296329

/-- `record[A060961((n+1)/A034684(n+1)+3)]` -/
def P9776815716042470751.Spec : Prop :=
  ∀ n, P9776815716042470751.a n = A296329 (n + 1)

end A296329

/-!
# A296330: Number of n X 3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296330, there is no canonical definition to state claims against.
-/

/-! ## A296330.P5815234474653253052

`A296335(∑[n+2]+4)`
-/

namespace A296330.P5815234474653253052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296330.P5815234474653253052

/-! ## A296330.P3934141230624324315

`A296335(A167614(n+1))+A178798(n)`
-/

namespace A296330.P3934141230624324315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A167614 (n + 1)).toNat + A178798 n

end

end A296330.P3934141230624324315

/-! ## A296330.P14763528801372699449

`A296335(A167614(n+1))+A185284(n)`
-/

namespace A296330.P14763528801372699449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A167614 (n + 1)).toNat + A185284 n

end

end A296330.P14763528801372699449

/-! ## A296330.P256511223112254664

`A296335(A167614(n+1))%A001555(n)`
-/

namespace A296330.P256511223112254664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296335 (A167614 (n + 1)).toNat) (A001555 n)

end

end A296330.P256511223112254664

/-! ## A296330.P3858008738502080009

`lcm(A110515(n), A296335(A167614(n+1)))`
-/

namespace A296330.P3858008738502080009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110515 n) (A296335 (A167614 (n + 1)).toNat)

end

end A296330.P3858008738502080009

/-!
# A296331: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296331, there is no canonical definition to state claims against.
-/

/-! ## A296331.P8676071510979841749

`A296335(A374004(n+1))`
-/

namespace A296331.P8676071510979841749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A374004 (n + 1)).toNat

end

end A296331.P8676071510979841749

/-! ## A296331.P7932531109521817260

`A296335(A052905(n)+9)`
-/

namespace A296331.P7932531109521817260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A052905 n + 9).toNat

end

end A296331.P7932531109521817260

/-! ## A296331.P4774859716415306362

`A296335(A055999(n)+10)`
-/

namespace A296331.P4774859716415306362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A055999 n + 10).toNat

end

end A296331.P4774859716415306362

/-! ## A296331.P5025811310088473561

`A296335(A167614(n+2)+1)`
-/

namespace A296331.P5025811310088473561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A167614 (n + 2) + 1).toNat

end

end A296331.P5025811310088473561

/-! ## A296331.P5078962513578315781

`A296335(A000217(n+3)+4)`
-/

namespace A296331.P5078962513578315781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A000217 (n + 3) + 4).toNat

end

end A296331.P5078962513578315781

/-!
# A296332: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296332, there is no canonical definition to state claims against.
-/

/-! ## A296332.P10493826399132191091

`A296335(A374005(n+1))`
-/

namespace A296332.P10493826399132191091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A374005 (n + 1)).toNat

end

end A296332.P10493826399132191091

/-! ## A296332.P3812228819980205069

`A296335(A155212(n)+13)`
-/

namespace A296332.P3812228819980205069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A155212 n + 13).toNat

end

end A296332.P3812228819980205069

/-! ## A296332.P13156830969986733927

`A296335(Δ[A264443(n)])`
-/

namespace A296332.P13156830969986733927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (f1 (n + 1) - f1 n).toNat

end

end A296332.P13156830969986733927

/-! ## A296332.P9705729328896757528

`A296335(A046691(n+3))`
-/

namespace A296332.P9705729328896757528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A046691 (n + 3)).toNat

end

end A296332.P9705729328896757528

/-! ## A296332.P14239967172710883525

`A296335(eq[4, A193592(n)])`
-/

namespace A296332.P14239967172710883525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296332.P14239967172710883525

/-!
# A296333: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296333, there is no canonical definition to state claims against.
-/

/-! ## A296333.P7864030043007303541

`A296335(∑[n+5]+16)`
-/

namespace A296333.P7864030043007303541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A296333.P7864030043007303541

/-! ## A296333.P3213794349046728497

`A296335(eq[7, A131818(n+1)])%A296334(n+1)`
-/

namespace A296333.P3213794349046728497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A296334 (n + 1))

end

end A296333.P3213794349046728497

/-!
# A296334: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296334, there is no canonical definition to state claims against.
-/

/-! ## A296334.P1675125988817104447

`A296335(A374008(n+1))`
-/

namespace A296334.P1675125988817104447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A374008 (n + 1)).toNat

end

end A296334.P1675125988817104447

/-! ## A296334.P3735740225665244349

`A296335(A046691(n+4)+11)`
-/

namespace A296334.P3735740225665244349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A046691 (n + 4) + 11).toNat

end

end A296334.P3735740225665244349

/-! ## A296334.P13025650929890011556

`A296335(eq[8, A131818(n+1)])`
-/

namespace A296334.P13025650929890011556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296334.P13025650929890011556

/-! ## A296334.P3275005098919723983

`A296335(A055999(n+4))`
-/

namespace A296334.P3275005098919723983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (A055999 (n + 4)).toNat

end

end A296334.P3275005098919723983

/-! ## A296334.P7277389888375857246

`A296335(eq[4, A219347(n)])`
-/

namespace A296334.P7277389888375857246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296334.P7277389888375857246

/-!
# A296335: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A296335, there is no canonical definition to state claims against.
-/

/-! ## A296335.P1034925574126678613

`A296635(n+1)-A364912(A001263(n+1))`
-/

namespace A296335.P1034925574126678613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (n + 1) - A364912 (A001263 (n + 1)).toNat

end

end A296335.P1034925574126678613

/-! ## A296335.P3786867781946625836

`A296635(n+1)-A036593(A036600(n))`
-/

namespace A296335.P3786867781946625836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (n + 1) - A036593 (A036600 n).toNat

end

end A296335.P3786867781946625836

/-! ## A296335.P4006001171094010577

`A296635(n+1)-A115346(A185284(3*n))`
-/

namespace A296335.P4006001171094010577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (n + 1) - A115346 (A185284 (3 * n)).toNat

end

end A296335.P4006001171094010577

/-! ## A296335.P8209727618851942732

`A296635(A084192(∑[n]))`
-/

namespace A296335.P8209727618851942732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296635 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A296335.P8209727618851942732

/-! ## A296335.P1345595645814939139

`A089867(A296635(n+1))`
-/

namespace A296335.P1345595645814939139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A296635 (n + 1)).toNat

end

end A296335.P1345595645814939139

/-!
# A296337: a(1) = a(3) = 1, a(2) = 2, a(4) = a(5) = 4; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 5.

The programs for A296337, the canonical program `A296337.P6078774005098928563` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296337 has offset 1).

The definition of A296337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))` (program `A296337.P6078774005098928563`, by `A296337.P6078774005098928563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296337.P6078774005098928563

`a(n-a(n-1))+a(n-a(n-2))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4, a(4)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296337

/-- `a(n-a(n-1))+a(n-a(n-2))` -/
def P6078774005098928563.Spec : Prop :=
  ∀ n, (P6078774005098928563.a n : ℤ) = A296337 (n + 1)

theorem P6078774005098928563.correct : P6078774005098928563.Spec := by
  intro n
  simp only [A296337, Nat.add_sub_cancel]

end A296337

/-!
# A296338: a(n) = number of partitions of n into consecutive positive squares.

The programs for A296338, there is no canonical definition to state claims against.
-/

/-! ## A296338.P18186271240590619010

`A299173(n+1)^C(A307608(n+5), A299173(n+1))`
-/

namespace A296338.P18186271240590619010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1) ^ Nat.choose (A307608 (n + 5)).toNat (A299173 (n + 1)).toNat

end

end A296338.P18186271240590619010

/-! ## A296338.P17464387378551547873

`A052899(A319494(n+1)+1)%A006047(A299173(n+1))`
-/

namespace A296338.P17464387378551547873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052899 (A319494 (n + 1) + 1).toNat) (A006047 (A299173 (n + 1)).toNat)

end

end A296338.P17464387378551547873

/-! ## A296338.P15775517273528280601

`A104090(A104058(n))%A006047(A299173(n+1))`
-/

namespace A296338.P15775517273528280601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104090 (A104058 n).toNat) (A006047 (A299173 (n + 1)).toNat)

end

end A296338.P15775517273528280601

/-! ## A296338.P1971541244569787480

`A034699(A032917(n+1))%A006047(A299173(n+1))`
-/

namespace A296338.P1971541244569787480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A032917 (n + 1)).toNat) (A006047 (A299173 (n + 1)).toNat)

end

end A296338.P1971541244569787480

/-! ## A296338.P17717402904198803175

`ceil(A299173(n+1)/A132280(n))`
-/

namespace A296338.P17717402904198803175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299173 (n + 1) : ℚ) / (A132280 n : ℚ)⌉

end

end A296338.P17717402904198803175

/-! ## A296338.P2109992743816720009

`A098873(n+1)%A005993(A299173(n+1))`
-/

namespace A296338.P2109992743816720009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098873 (n + 1)) (A005993 (A299173 (n + 1)).toNat)

end

end A296338.P2109992743816720009

/-!
# A296339: On an infinite 60-degree sector of hexagonal graph paper, fill in cells by antidiagonals so that each contains the least nonnegative integer such that no line of edge-adjacent cells contains a repeated term.

The programs for A296339, there is no canonical definition to state claims against.
-/

/-! ## A296339.P14532900638317392984

`A335490(n+1)-1`
-/

namespace A296339.P14532900638317392984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335490 (n + 1) - 1

end

end A296339.P14532900638317392984

/-! ## A296339.P11363547117563135657

`abs(A335490(C(n+1, n))+log2(1/2))`
-/

namespace A296339.P11363547117563135657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(A335490 (Nat.choose (n + 1) n) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)|

end

end A296339.P11363547117563135657

/-! ## A296339.P6510024001335012669

`A002837(A335490(n+1))`
-/

namespace A296339.P6510024001335012669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A335490 (n + 1)).toNat

end

end A296339.P6510024001335012669

/-! ## A296339.P10200299617313939284

`A057918(A335490(n+1)²)`
-/

namespace A296339.P10200299617313939284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A335490 (n + 1) ^ 2).toNat

end

end A296339.P10200299617313939284

/-! ## A296339.P5801394971825827497

`A086520(A335490(n+1)²)`
-/

namespace A296339.P5801394971825827497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A335490 (n + 1) ^ 2).toNat

end

end A296339.P5801394971825827497

/-! ## A296339.P15165831132592011713

`A259361(A335490(n+1)²)`
-/

namespace A296339.P15165831132592011713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A335490 (n + 1) ^ 2).toNat

end

end A296339.P15165831132592011713

/-! ## A296339.P6787110051242285031

`A023444(A335490(n+1)+1)`
-/

namespace A296339.P6787110051242285031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A335490 (n + 1) + 1).toNat

end

end A296339.P6787110051242285031

/-! ## A296339.P16595577139347895163

`A289207(A335490(n+1)+1)`
-/

namespace A296339.P16595577139347895163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A335490 (n + 1) + 1).toNat

end

end A296339.P16595577139347895163

/-! ## A296339.P2593185638758067847

`A023445(A335490(n+1)+2)`
-/

namespace A296339.P2593185638758067847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A335490 (n + 1) + 2).toNat

end

end A296339.P2593185638758067847

/-! ## A296339.P16050566417035089260

`A004481(C(A335490(n+1), 2))`
-/

namespace A296339.P16050566417035089260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (Nat.choose (A335490 (n + 1)).toNat 2)

end

end A296339.P16050566417035089260

/-!
# A296340: The right edge of the array in A296339.

The programs for A296340, there is no canonical definition to state claims against.
-/

/-! ## A296340.P15393452526187239035

`A296339(∑[n]+n)`
-/

namespace A296340.P15393452526187239035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A296340.P15393452526187239035

/-! ## A296340.P10454812519005441562

`and(-1, A296339(A000096(n)))`
-/

namespace A296340.P10454812519005441562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A296339 (A000096 n).toNat)

end

end A296340.P10454812519005441562

/-! ## A296340.P3048669465383393900

`A057427(n)*A296339(A000096(n))`
-/

namespace A296340.P3048669465383393900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A296339 (A000096 n).toNat

end

end A296340.P3048669465383393900

/-! ## A296340.P7451616284256857546

`A296339(A000096(n))%A003215(n)`
-/

namespace A296340.P7451616284256857546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296339 (A000096 n).toNat) (A003215 n)

end

end A296340.P7451616284256857546

/-! ## A296340.P16809900063231335844

`lcm(A020985(n), A296339(A000096(n)))`
-/

namespace A296340.P16809900063231335844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A296339 (A000096 n).toNat)

end

end A296340.P16809900063231335844

/-! ## A296340.P12458326872846148379

`∑{d}[A296339(A000096(n)), A000010(#)]`
-/

namespace A296340.P12458326872846148379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A296340.P12458326872846148379

/-! ## A296340.P13403171303571633346

`cos(A000007(n))*A296339(A000096(n))`
-/

namespace A296340.P13403171303571633346
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000007 n : ℝ) * (A296339 (A000096 n).toNat : ℝ)

end

end A296340.P13403171303571633346

/-! ## A296340.P5877291229457045515

`A296339(A000096(n))+A000007(n+1)`
-/

namespace A296340.P5877291229457045515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A000096 n).toNat + A000007 (n + 1)

end

end A296340.P5877291229457045515

/-! ## A296340.P7439224979757600773

`A296339(A000096(n))+A000038(n+1)`
-/

namespace A296340.P7439224979757600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A000096 n).toNat + A000038 (n + 1)

end

end A296340.P7439224979757600773

/-! ## A296340.P14463254033069983079

`A007318(C(2, n))*A296339(A000096(n))`
-/

namespace A296340.P14463254033069983079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A296339 (A000096 n).toNat

end

end A296340.P14463254033069983079

/-! ## A296340.P12079274348824855430

`char[A038722(n+1)]*A296339(A000096(n))`
-/

namespace A296340.P12079274348824855430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A296339 (A000096 n).toNat

end

end A296340.P12079274348824855430

/-! ## A296340.P3051978482206698694

`A000108(C(n, n²))*A296339(A000096(n))`
-/

namespace A296340.P3051978482206698694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A296339 (A000096 n).toNat

end

end A296340.P3051978482206698694

/-! ## A296340.P18086961163195195269

`A296339(A000096(n))+A035622(2*n+1)`
-/

namespace A296340.P18086961163195195269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A000096 n).toNat + A035622 (2 * n + 1)

end

end A296340.P18086961163195195269

/-! ## A296340.P17167234258423197648

`A296339(A000096(n))+A008683(4*(n+1))`
-/

namespace A296340.P17167234258423197648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A000096 n).toNat + A008683 (4 * (n + 1))

end

end A296340.P17167234258423197648

/-! ## A296340.P1619856127340264545

`A014963(A007304(n+1))*A296339(A000096(n))`
-/

namespace A296340.P1619856127340264545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007304 (n + 1)).toNat * A296339 (A000096 n).toNat

end

end A296340.P1619856127340264545

/-!
# A296342: a(n) = index of first n in A274820.

The programs for A296342, there is no canonical definition to state claims against.
-/

/-! ## A296342.P17987880538019097724

`lt[A126012(A125988(n)), A126046(n+1)]`
-/

namespace A296342.P17987880538019097724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 (A125988 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296342.P17987880538019097724

/-!
# A296343: Numbers in cells in spiral A274820 on spoke through center with slope 0 degrees.

The programs for A296343, there is no canonical definition to state claims against.
-/

/-! ## A296343.P12223140671860247432

`A274820(n*(3*n-2))`
-/

namespace A296343.P12223140671860247432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 ((n : ℤ) * ((3 * n : ℤ) - 2)).toNat

end

end A296343.P12223140671860247432

/-! ## A296343.P10573671752157942793

`or(char[1], A274820(A000567(n)))`
-/

namespace A296343.P10573671752157942793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274820 (A000567 n).toNat)

end

end A296343.P10573671752157942793

/-! ## A296343.P14914750065509377167

`A054977(n)*A274820(A000567(n))`
-/

namespace A296343.P14914750065509377167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A274820 (A000567 n).toNat

end

end A296343.P14914750065509377167

/-! ## A296343.P76894469652001243

`A057427(n)*A274820(A000567(n))`
-/

namespace A296343.P76894469652001243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274820 (A000567 n).toNat

end

end A296343.P76894469652001243

/-! ## A296343.P2758602094381634243

`A274820(A000567(n))%A001520(n)`
-/

namespace A296343.P2758602094381634243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A000567 n).toNat) (A001520 n)

end

end A296343.P2758602094381634243

/-! ## A296343.P9456679813855693430

`∑{d}[A274820(A000567(n)), A000010(#)]`
-/

namespace A296343.P9456679813855693430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A296343.P9456679813855693430

/-! ## A296343.P1611122168913428987

`A274820(A000567(n))+A022087(n)%2`
-/

namespace A296343.P1611122168913428987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat + Int.tmod (A022087 n) 2

end

end A296343.P1611122168913428987

/-! ## A296343.P10830208332678664568

`A007318(C(2, n))*A274820(A000567(n))`
-/

namespace A296343.P10830208332678664568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274820 (A000567 n).toNat

end

end A296343.P10830208332678664568

/-! ## A296343.P7491961607705380623

`A007318(and(1, -n))*A274820(A000567(n))`
-/

namespace A296343.P7491961607705380623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A274820 (A000567 n).toNat

end

end A296343.P7491961607705380623

/-! ## A296343.P3914737063902141042

`A274820(A000567(n))^A007318(C(2, n)²)`
-/

namespace A296343.P3914737063902141042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A000567 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n ^ 2) : ℤ)

end

end A296343.P3914737063902141042

/-! ## A296343.P10129750885795404610

`A014963(12*(n+1))*A274820(A000567(n))`
-/

namespace A296343.P10129750885795404610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A274820 (A000567 n).toNat

end

end A296343.P10129750885795404610

/-! ## A296343.P16419771153686546786

`gcd(2, A000040(n+1))*A274820(A000567(n))`
-/

namespace A296343.P16419771153686546786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A274820 (A000567 n).toNat

end

end A296343.P16419771153686546786

/-! ## A296343.P831421626456864580

`lcm(A118830(2*n+1), A274820(A000567(n)))`
-/

namespace A296343.P831421626456864580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118830 (2 * n + 1)) (A274820 (A000567 n).toNat)

end

end A296343.P831421626456864580

/-! ## A296343.P13637779894146396099

`n/(A000007(n)+n)*A274820(A000567(n))`
-/

namespace A296343.P13637779894146396099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000007 n + (n : ℤ) : ℚ) * (A274820 (A000567 n).toNat : ℚ)

end

end A296343.P13637779894146396099

/-! ## A296343.P17590239188658744884

`A000045(ceil(n/(n+1)))*A274820(A000567(n))`
-/

namespace A296343.P17590239188658744884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A274820 (A000567 n).toNat

end

end A296343.P17590239188658744884

/-! ## A296343.P1488608947993610355

`A274820(A000567(n))+A223174(A001222(n+1))`
-/

namespace A296343.P1488608947993610355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat + A223174 (A001222 (n + 1)).toNat

end

end A296343.P1488608947993610355

/-! ## A296343.P6114402205445289936

`A274820(A000567(n))+A223174(A083912(n+1))`
-/

namespace A296343.P6114402205445289936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat + A223174 (A083912 (n + 1)).toNat

end

end A296343.P6114402205445289936

/-! ## A296343.P6258509905036410650

`A274820(A000567(n))+A144903(A000217(n))`
-/

namespace A296343.P6258509905036410650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat + A144903 (A000217 n).toNat

end

end A296343.P6258509905036410650

/-! ## A296343.P9232131584676510339

`A274820(A000567(n))+A083912(A008288(n))`
-/

namespace A296343.P9232131584676510339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A000567 n).toNat + A083912 (A008288 n).toNat

end

end A296343.P9232131584676510339

/-!
# A296344: Numbers in cells in spiral A274820 on spoke through center with slope 60 degrees.

The programs for A296344, there is no canonical definition to state claims against.
-/

/-! ## A296344.P4649668294113109585

`A274820(3*n²-n)`
-/

namespace A296344.P4649668294113109585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (3 * n ^ 2 - n)

end

end A296344.P4649668294113109585

/-! ## A296344.P3679261116610747193

`or(char[3], A274820(A049450(n)))`
-/

namespace A296344.P3679261116610747193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274820 (A049450 n).toNat)

end

end A296344.P3679261116610747193

/-! ## A296344.P10133619808658809384

`A057427(n)*A274820(A049450(n))`
-/

namespace A296344.P10133619808658809384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274820 (A049450 n).toNat

end

end A296344.P10133619808658809384

/-! ## A296344.P9201269261396277618

`A274820(A049450(n))%A008458(n)`
-/

namespace A296344.P9201269261396277618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A049450 n).toNat) (A008458 n)

end

end A296344.P9201269261396277618

/-! ## A296344.P6348768952473476100

`lcm(A020985(n), A274820(A049450(n)))`
-/

namespace A296344.P6348768952473476100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A274820 (A049450 n).toNat)

end

end A296344.P6348768952473476100

/-! ## A296344.P254129443830835429

`∑{d}[A274820(A049450(n)), A000010(#)]`
-/

namespace A296344.P254129443830835429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049450 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A296344.P254129443830835429

/-! ## A296344.P16967409152385593072

`char[A004442(n)]*A274820(A049450(n))`
-/

namespace A296344.P16967409152385593072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A274820 (A049450 n).toNat

end

end A296344.P16967409152385593072

/-! ## A296344.P13411255653101014724

`A274820(A049450(n))+A000007(n+1)`
-/

namespace A296344.P13411255653101014724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049450 n).toNat + A000007 (n + 1)

end

end A296344.P13411255653101014724

/-! ## A296344.P9247693836612994802

`A274820(A049450(n))+A000035(2*n)`
-/

namespace A296344.P9247693836612994802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049450 n).toNat + A000035 (2 * n)

end

end A296344.P9247693836612994802

/-! ## A296344.P5231181506346309936

`A007318(C(2, n))*A274820(A049450(n))`
-/

namespace A296344.P5231181506346309936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274820 (A049450 n).toNat

end

end A296344.P5231181506346309936

/-! ## A296344.P16510489012919015860

`A000108(C(2, n+2))*A274820(A049450(n))`
-/

namespace A296344.P16510489012919015860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A274820 (A049450 n).toNat

end

end A296344.P16510489012919015860

/-! ## A296344.P2149247400712777746

`A274820(A049450(n))/A007318(C(2, n+1))`
-/

namespace A296344.P2149247400712777746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A049450 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A296344.P2149247400712777746

/-! ## A296344.P1649917851522451532

`A014963(10*(n+10))*A274820(A049450(n))`
-/

namespace A296344.P1649917851522451532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A274820 (A049450 n).toNat

end

end A296344.P1649917851522451532

/-! ## A296344.P9269836992730564547

`A020985(xor(n, n+1)+1)*A274820(A049450(n))`
-/

namespace A296344.P9269836992730564547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (Nat.xor n (n + 1) + 1) * A274820 (A049450 n).toNat

end

end A296344.P9269836992730564547

/-! ## A296344.P17252384178028300340

`A274820(A049450(n))+A103181(A001613(n))`
-/

namespace A296344.P17252384178028300340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049450 n).toNat + A103181 (A001613 n).toNat

end

end A296344.P17252384178028300340

/-! ## A296344.P700377244587440451

`A025452(A025452(n))*A274820(A049450(n))`
-/

namespace A296344.P700377244587440451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A025452 n).toNat * A274820 (A049450 n).toNat

end

end A296344.P700377244587440451

/-! ## A296344.P12272114607303017904

`A056926(A191017(n+1))*A274820(A049450(n))`
-/

namespace A296344.P12272114607303017904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A191017 (n + 1)).toNat * A274820 (A049450 n).toNat

end

end A296344.P12272114607303017904

/-! ## A296344.P13981288207865596803

`A056926(A000124(n+5)-5)*A274820(A049450(n))`
-/

namespace A296344.P13981288207865596803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A000124 (n + 5) - 5).toNat * A274820 (A049450 n).toNat

end

end A296344.P13981288207865596803

/-!
# A296345: Numbers in cells in spiral A274820 on spoke through center with slope 120 degrees.

The programs for A296345, there is no canonical definition to state claims against.
-/

/-! ## A296345.P6717658980051078573

`A274820(3*n²)`
-/

namespace A296345.P6717658980051078573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (3 * n ^ 2)

end

end A296345.P6717658980051078573

/-! ## A296345.P8605293418956925665

`or(char[1], A274820(A033428(n)))`
-/

namespace A296345.P8605293418956925665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274820 (A033428 n).toNat)

end

end A296345.P8605293418956925665

/-! ## A296345.P16283838525428722396

`A054977(n)*A274820(A033428(n))`
-/

namespace A296345.P16283838525428722396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A274820 (A033428 n).toNat

end

end A296345.P16283838525428722396

/-! ## A296345.P17337339306414314923

`A057427(n)*A274820(A033428(n))`
-/

namespace A296345.P17337339306414314923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274820 (A033428 n).toNat

end

end A296345.P17337339306414314923

/-! ## A296345.P14739905220344576785

`A274820(A033428(n))%A008000(n)`
-/

namespace A296345.P14739905220344576785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A033428 n).toNat) (A008000 n)

end

end A296345.P14739905220344576785

/-! ## A296345.P4375219749993213407

`lcm(A020985(n), A274820(A033428(n)))`
-/

namespace A296345.P4375219749993213407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A274820 (A033428 n).toNat)

end

end A296345.P4375219749993213407

/-! ## A296345.P15598767739244533039

`A007318(C(2, n))*A274820(A033428(n))`
-/

namespace A296345.P15598767739244533039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274820 (A033428 n).toNat

end

end A296345.P15598767739244533039

/-! ## A296345.P13776322991071960451

`A274820(A033428(n))^A000108(C(2, n))`
-/

namespace A296345.P13776322991071960451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A033428 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A296345.P13776322991071960451

/-! ## A296345.P10876866771960581148

`∏{p}[n, A001221(#)]*A274820(A033428(n))`
-/

namespace A296345.P10876866771960581148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A274820 (A033428 n).toNat

end

end A296345.P10876866771960581148

/-! ## A296345.P6532622011274810959

`and(1, A000041(n))!*A274820(A033428(n))`
-/

namespace A296345.P6532622011274810959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A274820 (A033428 n).toNat

end

end A296345.P6532622011274810959

/-! ## A296345.P10178341575888780371

`char[A001057(n)]+A274820(A033428(n))-1`
-/

namespace A296345.P10178341575888780371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A274820 (A033428 n).toNat - 1)

end

end A296345.P10178341575888780371

/-! ## A296345.P13901437149446555982

`A274820(A033428(n))+char[A000108(n+7)]`
-/

namespace A296345.P13901437149446555982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A033428 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A296345.P13901437149446555982

/-! ## A296345.P17654910316734808455

`A014963(6*(n+2))*A274820(A033428(n))`
-/

namespace A296345.P17654910316734808455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A274820 (A033428 n).toNat

end

end A296345.P17654910316734808455

/-! ## A296345.P3722491033186196708

`A000041(C(2, n+2))*A274820(A033428(n))`
-/

namespace A296345.P3722491033186196708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A274820 (A033428 n).toNat

end

end A296345.P3722491033186196708

/-! ## A296345.P447730873680117653

`A007318(and(2, n-2))*A274820(A033428(n))`
-/

namespace A296345.P447730873680117653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A274820 (A033428 n).toNat

end

end A296345.P447730873680117653

/-! ## A296345.P8352085193329583292

`A007318(val(n+1, 7))*A274820(A033428(n))`
-/

namespace A296345.P8352085193329583292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 7) * A274820 (A033428 n).toNat

end

end A296345.P8352085193329583292

/-! ## A296345.P17981050475906871474

`A274820(A033428(n))^A008683(n+2)²!`
-/

namespace A296345.P17981050475906871474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A033428 n).toNat ^ Nat.factorial (A008683 (n + 2) ^ 2).toNat

end

end A296345.P17981050475906871474

/-! ## A296345.P18441137865279103135

`log2(A020639(2*(n+2)))*A274820(A033428(n))`
-/

namespace A296345.P18441137865279103135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 2)) : ℝ) * (A274820 (A033428 n).toNat : ℝ)

end

end A296345.P18441137865279103135

/-! ## A296345.P14272281669798322649

`A274820(A033428(n))+A008683(A139280(n+1))`
-/

namespace A296345.P14272281669798322649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A033428 n).toNat + A008683 (A139280 (n + 1)).toNat

end

end A296345.P14272281669798322649

/-!
# A296346: Numbers in cells in spiral A274820 on spoke through center with slope 180 degrees.

The programs for A296346, there is no canonical definition to state claims against.
-/

/-! ## A296346.P8824055302563159840

`A274820(n*(3*n+1))`
-/

namespace A296346.P8824055302563159840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (n * (3 * n + 1))

end

end A296346.P8824055302563159840

/-! ## A296346.P11592310011630743522

`xor(1, xor(1, A274820(A049451(n))))`
-/

namespace A296346.P11592310011630743522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A274820 (A049451 n).toNat))

end

end A296346.P11592310011630743522

/-! ## A296346.P12548157882177659593

`A054977(n)*A274820(A049451(n))`
-/

namespace A296346.P12548157882177659593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A274820 (A049451 n).toNat

end

end A296346.P12548157882177659593

/-! ## A296346.P15833520983023978349

`A057427(n)*A274820(A049451(n))`
-/

namespace A296346.P15833520983023978349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274820 (A049451 n).toNat

end

end A296346.P15833520983023978349

/-! ## A296346.P9279499058191343534

`A274820(A049451(n))%A008000(n)`
-/

namespace A296346.P9279499058191343534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A049451 n).toNat) (A008000 n)

end

end A296346.P9279499058191343534

/-! ## A296346.P8642570603856498601

`lcm(A020985(n), A274820(A049451(n)))`
-/

namespace A296346.P8642570603856498601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A274820 (A049451 n).toNat)

end

end A296346.P8642570603856498601

/-! ## A296346.P16684447346768619888

`A274820(A049451(n))+A001222(gcd(n, n+1))`
-/

namespace A296346.P16684447346768619888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049451 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A296346.P16684447346768619888

/-! ## A296346.P7453247121624337498

`A274820(A049451(n))+A000045(C(n, n+2))`
-/

namespace A296346.P7453247121624337498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049451 n).toNat + A000045 (Nat.choose n (n + 2))

end

end A296346.P7453247121624337498

/-! ## A296346.P4382798085929447123

`A274820(A049451(n))^A007318(C(6, n))^n`
-/

namespace A296346.P4382798085929447123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A049451 n).toNat : ℚ) ^ (A007318 (Nat.choose 6 n) ^ n : ℤ)

end

end A296346.P4382798085929447123

/-! ## A296346.P16652520116428673968

`A274820(A049451(n))/and(1, A014963(n+1))!`
-/

namespace A296346.P16652520116428673968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A049451 n).toNat : ℚ) / (Nat.factorial (Int.land 1 (A014963 (n + 1))).toNat : ℚ)

end

end A296346.P16652520116428673968

/-! ## A296346.P6297991156936586240

`A274820(A049451(n))+A000041(C(n, n+1))-1`
-/

namespace A296346.P6297991156936586240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A049451 n).toNat + (A000041 (Nat.choose n (n + 1)) - 1)

end

end A296346.P6297991156936586240

/-!
# A296347: Numbers in cells in spiral A274820 on spoke through center with slope 240 degrees.

The programs for A296347, there is no canonical definition to state claims against.
-/

/-! ## A296347.P12460368860853899564

`A274820(∑[6*n]-n)`
-/

namespace A296347.P12460368860853899564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A296347.P12460368860853899564

/-! ## A296347.P8100563335528904695

`or(char[1], A274820(A045944(n)))`
-/

namespace A296347.P8100563335528904695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274820 (A045944 n).toNat)

end

end A296347.P8100563335528904695

/-! ## A296347.P16809931353399151669

`A057427(n)*A274820(A045944(n))`
-/

namespace A296347.P16809931353399151669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274820 (A045944 n).toNat

end

end A296347.P16809931353399151669

/-! ## A296347.P2473488386792819963

`A274820(A045944(n))%A001752(n)`
-/

namespace A296347.P2473488386792819963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A045944 n).toNat) (A001752 n)

end

end A296347.P2473488386792819963

/-! ## A296347.P14868107828357265604

`∑{d}[A274820(A045944(n)), A000010(#)]`
-/

namespace A296347.P14868107828357265604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A296347.P14868107828357265604

/-! ## A296347.P318031273474952616

`A274820(A045944(n))+A000007(n+1)`
-/

namespace A296347.P318031273474952616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat + A000007 (n + 1)

end

end A296347.P318031273474952616

/-! ## A296347.P10305246412947408297

`A274820(A045944(n))+A000038(n+1)`
-/

namespace A296347.P10305246412947408297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat + A000038 (n + 1)

end

end A296347.P10305246412947408297

/-! ## A296347.P12858952633490650398

`A274820(A045944(n))-A000035(2*n)`
-/

namespace A296347.P12858952633490650398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat - A000035 (2 * n)

end

end A296347.P12858952633490650398

/-! ## A296347.P13016412208772050414

`A000034(2*n)*A274820(A045944(n))`
-/

namespace A296347.P13016412208772050414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A274820 (A045944 n).toNat

end

end A296347.P13016412208772050414

/-! ## A296347.P10746739937464235770

`lcm(A076479(n+1), A274820(A045944(n)))`
-/

namespace A296347.P10746739937464235770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A274820 (A045944 n).toNat)

end

end A296347.P10746739937464235770

/-! ## A296347.P7155668599982187693

`A007318(C(2, n))*A274820(A045944(n))`
-/

namespace A296347.P7155668599982187693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274820 (A045944 n).toNat

end

end A296347.P7155668599982187693

/-! ## A296347.P3332204941506469935

`A274820(A045944(n))/A007318(C(3, n))`
-/

namespace A296347.P3332204941506469935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A045944 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A296347.P3332204941506469935

/-! ## A296347.P8292830522226707965

`A000035(Δ[n²])*A274820(A045944(n))`
-/

namespace A296347.P8292830522226707965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A274820 (A045944 n).toNat

end

end A296347.P8292830522226707965

/-! ## A296347.P12267590583332418139

`A274820(A045944(n))/A008836(n+1)²`
-/

namespace A296347.P12267590583332418139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A045944 n).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A296347.P12267590583332418139

/-! ## A296347.P8112238784093807277

`A274820(A045944(n))+A008683(8*(n+1))`
-/

namespace A296347.P8112238784093807277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat + A008683 (8 * (n + 1))

end

end A296347.P8112238784093807277

/-! ## A296347.P14814550851547000787

`A000041(C(2, 2*n))*A274820(A045944(n))`
-/

namespace A296347.P14814550851547000787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A274820 (A045944 n).toNat

end

end A296347.P14814550851547000787

/-! ## A296347.P13094020878708696903

`A274820(A045944(n))/A000032(gcd(n, n+1))`
-/

namespace A296347.P13094020878708696903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A045944 n).toNat : ℚ) / (A000032 (Nat.gcd n (n + 1)) : ℚ)

end

end A296347.P13094020878708696903

/-! ## A296347.P695477637652451283

`A274820(A045944(n))+A000005(n+1)%((-1)^n)`
-/

namespace A296347.P695477637652451283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A045944 n).toNat + Int.tmod (A000005 (n + 1)) ((-1) ^ n)

end

end A296347.P695477637652451283

/-! ## A296347.P13235241177136543764

`A274820(A045944(n))/A001221(A073641(n+1))`
-/

namespace A296347.P13235241177136543764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A045944 n).toNat : ℚ) / (A001221 (A073641 (n + 1)).toNat : ℚ)

end

end A296347.P13235241177136543764

/-!
# A296348: Numbers in cells in spiral A274820 on spoke through center with slope 300 degrees.

The programs for A296348, there is no canonical definition to state claims against.
-/

/-! ## A296348.P18091637221808878807

`A274820(∑[6*n])`
-/

namespace A296348.P18091637221808878807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296348.P18091637221808878807

/-! ## A296348.P16559772658290688252

`xor(1, xor(1, A274820(A028896(n))))`
-/

namespace A296348.P16559772658290688252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A274820 (A028896 n).toNat))

end

end A296348.P16559772658290688252

/-! ## A296348.P5733887670519202604

`A054977(n)*A274820(A028896(n))`
-/

namespace A296348.P5733887670519202604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A274820 (A028896 n).toNat

end

end A296348.P5733887670519202604

/-! ## A296348.P2195127024012379664

`A274820(A028896(n))%A017581(n)`
-/

namespace A296348.P2195127024012379664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274820 (A028896 n).toNat) (A017581 n)

end

end A296348.P2195127024012379664

/-! ## A296348.P6358443522628701351

`abs(A057428(n)*A274820(A028896(n)))`
-/

namespace A296348.P6358443522628701351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n * A274820 (A028896 n).toNat|

end

end A296348.P6358443522628701351

/-! ## A296348.P14929432603993904281

`A187220(n)%2*A274820(A028896(n))`
-/

namespace A296348.P14929432603993904281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187220 n) 2 * A274820 (A028896 n).toNat

end

end A296348.P14929432603993904281

/-! ## A296348.P5514892326750623503

`A274820(A028896(n))-n*A000007(n)`
-/

namespace A296348.P5514892326750623503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - (n : ℤ) * A000007 n

end

end A296348.P5514892326750623503

/-! ## A296348.P9380187805151905317

`A274820(A028896(n))-n%A033999(n)`
-/

namespace A296348.P9380187805151905317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - Int.tmod (n : ℤ) (A033999 n)

end

end A296348.P9380187805151905317

/-! ## A296348.P7703770811007335124

`A274820(A028896(n))+A008683(4*(n+1))`
-/

namespace A296348.P7703770811007335124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat + A008683 (4 * (n + 1))

end

end A296348.P7703770811007335124

/-! ## A296348.P6698425111602229998

`A274820(A028896(n))/A018252(gcd(n, n+1))`
-/

namespace A296348.P6698425111602229998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A028896 n).toNat : ℚ) / (A018252 (Nat.gcd n (n + 1)) : ℚ)

end

end A296348.P6698425111602229998

/-! ## A296348.P10043549857160715699

`A274820(A028896(n))-C(n, A125490(n+1))`
-/

namespace A296348.P10043549857160715699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - (Nat.choose n (A125490 (n + 1)).toNat : ℤ)

end

end A296348.P10043549857160715699

/-! ## A296348.P17189516574998421386

`A274820(A028896(n))-C(n, A125492(n+1))`
-/

namespace A296348.P17189516574998421386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - (Nat.choose n (A125492 (n + 1)).toNat : ℤ)

end

end A296348.P17189516574998421386

/-! ## A296348.P18100563181352126059

`A274820(A028896(n))-C(n, A125499(n+1))`
-/

namespace A296348.P18100563181352126059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - (Nat.choose n (A125499 (n + 1)).toNat : ℤ)

end

end A296348.P18100563181352126059

/-! ## A296348.P3081166844644415441

`A274820(A028896(n))+A007504(Δ[n²])%2`
-/

namespace A296348.P3081166844644415441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat + Int.tmod (A007504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2

end

end A296348.P3081166844644415441

/-! ## A296348.P2662798461464866400

`A274820(A028896(n))-∑[A016825(n)²]%2`
-/

namespace A296348.P2662798461464866400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A296348.P2662798461464866400

/-! ## A296348.P13802611361125873669

`A274820(A028896(n))+val(2*A007318(n)+1, 2)`
-/

namespace A296348.P13802611361125873669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat + (SequenceMachineLib.valuation (2 * A007318 n + 1).toNat 2 : ℤ)

end

end A296348.P13802611361125873669

/-! ## A296348.P6247100288151633448

`(record[A006530(n+2)]%2)^n*A274820(A028896(n))`
-/

namespace A296348.P6247100288151633448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 ^ n * A274820 (A028896 n).toNat

end

end A296348.P6247100288151633448

/-! ## A296348.P10879734170233909480

`A274820(A028896(n))+A006530(n+2)%A014963(n+2)`
-/

namespace A296348.P10879734170233909480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A028896 n).toNat + Int.tmod (A006530 (n + 2)) (A014963 (n + 2))

end

end A296348.P10879734170233909480

/-! ## A296348.P684303639965724146

`A274820(A028896(n))/A038622(∑[n]+n)`
-/

namespace A296348.P684303639965724146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274820 (A028896 n).toNat : ℚ) / (A038622 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ)

end

end A296348.P684303639965724146

/-!
# A296349: Position where the row corresponding to the binary expansion of n starts in the (flattened) binary Champernowne triangle A030190.

The programs for A296349, the canonical program `A296349.P12407460171033777792` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296349 has offset 0).

The definition of A296349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296349.P5621642430891959455

`∑[∑[char[or(1, 2^n)]]]`
-/

namespace A296349.P5621642430891959455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296349.P5621642430891959455

namespace A296349

/-- `∑[∑[char[or(1, 2^n)]]]` -/
def P5621642430891959455.Spec : Prop :=
  ∀ n, (P5621642430891959455.a n : ℤ) = A296349 n

end A296349

/-! ## A296349.P5564913420320271047

`∑[ceil(log2(xor(n, C(3, n²))))]`
-/

namespace A296349.P5564913420320271047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor n (Nat.choose 3 (n ^ 2)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296349.P5564913420320271047

namespace A296349

/-- `∑[ceil(log2(xor(n, C(3, n²))))]` -/
def P5564913420320271047.Spec : Prop :=
  ∀ n, P5564913420320271047.a n = A296349 n

end A296349

/-! ## A296349.P10462432678016448773

`∑[ceil(log2(C(n, n²)+n))]`
-/

namespace A296349.P10462432678016448773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose n (n ^ 2) + n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296349.P10462432678016448773

namespace A296349

/-- `∑[ceil(log2(C(n, n²)+n))]` -/
def P10462432678016448773.Spec : Prop :=
  ∀ n, P10462432678016448773.a n = A296349 n

end A296349

/-! ## A296349.P2082244153171485762

`ceil(a(n-1)+log2(n))` with `a(0)=0, a(1)=1`
-/

namespace A296349.P2082244153171485762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (n : ℝ)⌉

end

end A296349.P2082244153171485762

namespace A296349

/-- `ceil(a(n-1)+log2(n))` -/
def P2082244153171485762.Spec : Prop :=
  ∀ n, P2082244153171485762.a n = A296349 n

end A296349

/-! ## A296349.P13543635929191425328

`∑[ceil(log2((n%2)^n+n))]`
-/

namespace A296349.P13543635929191425328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n % 2) ^ n + n : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296349.P13543635929191425328

namespace A296349

/-- `∑[ceil(log2((n%2)^n+n))]` -/
def P13543635929191425328.Spec : Prop :=
  ∀ n, P13543635929191425328.a n = A296349 n

end A296349

/-! ## A296349.P765278031593911883

`∑[floor(log2(comp[2*(n+2)]+1))]`
-/

namespace A296349.P765278031593911883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296349.P765278031593911883

namespace A296349

/-- `∑[floor(log2(comp[2*(n+2)]+1))]` -/
def P765278031593911883.Spec : Prop :=
  ∀ n, (P765278031593911883.a n : ℤ) = A296349 n

end A296349

/-! ## A296349.P16067511591033679383

`∑[ceil(log2(A065033(n)))]+n`
-/

namespace A296349.P16067511591033679383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A065033 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A296349.P16067511591033679383

namespace A296349

/-- `∑[ceil(log2(A065033(n)))]+n` -/
def P16067511591033679383.Spec : Prop :=
  ∀ n, P16067511591033679383.a n = A296349 n

end A296349

/-! ## A296349.P2535799266372154602

`A296364(n)+A030304(n)`
-/

namespace A296349.P2535799266372154602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 n + A030304 n

end

end A296349.P2535799266372154602

namespace A296349

/-- `A296364(n)+A030304(n)` -/
def P2535799266372154602.Spec : Prop :=
  ∀ n, P2535799266372154602.a n = A296349 n

end A296349

/-! ## A296349.P12407460171033777792

`A083652(n)-A070939(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296349

/-- `A083652(n)-A070939(n)` -/
def P12407460171033777792.Spec : Prop :=
  ∀ n, P12407460171033777792.a n = A296349 n

theorem P12407460171033777792.correct : P12407460171033777792.Spec := by
  intro n
  simp only [A296349]

end A296349

/-! ## A296349.P5081865215569268153

`A001855(n+1)+1-A070939(n)`
-/

namespace A296349.P5081865215569268153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + (1 - A070939 n)

end

end A296349.P5081865215569268153

namespace A296349

/-- `A001855(n+1)+1-A070939(n)` -/
def P5081865215569268153.Spec : Prop :=
  ∀ n, P5081865215569268153.a n = A296349 n

end A296349

/-! ## A296349.P14588345530909120655

`A083652(n)-(A023416(n)+A000120(n))`
-/

namespace A296349.P14588345530909120655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - (A023416 n + A000120 n)

end

end A296349.P14588345530909120655

namespace A296349

/-- `A083652(n)-(A023416(n)+A000120(n))` -/
def P14588345530909120655.Spec : Prop :=
  ∀ n, P14588345530909120655.a n = A296349 n

end A296349

/-! ## A296349.P6284329315442713584

`A000788(n)+A059015(n)-A070939(n)`
-/

namespace A296349.P6284329315442713584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + (A059015 n - A070939 n)

end

end A296349.P6284329315442713584

namespace A296349

/-- `A000788(n)+A059015(n)-A070939(n)` -/
def P6284329315442713584.Spec : Prop :=
  ∀ n, P6284329315442713584.a n = A296349 n

end A296349

/-! ## A296349.P11702328242717919867

`∑[A029837(n+1)]-A029837(A008619(n))`
-/

namespace A296349.P11702328242717919867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029837 (A008619 n).toNat

end

end A296349.P11702328242717919867

namespace A296349

/-- `∑[A029837(n+1)]-A029837(A008619(n))` -/
def P11702328242717919867.Spec : Prop :=
  ∀ n, P11702328242717919867.a n = A296349 n

end A296349

/-! ## A296349.P1634192965411426373

`∑[A000523(2*n+1)]-A000523(A072376(2*n+1))`
-/

namespace A296349.P1634192965411426373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000523 (A072376 (2 * n + 1)).toNat

end

end A296349.P1634192965411426373

namespace A296349

/-- `∑[A000523(2*n+1)]-A000523(A072376(2*n+1))` -/
def P1634192965411426373.Spec : Prop :=
  ∀ n, P1634192965411426373.a n = A296349 n

end A296349

/-!
# A296350: List of numbers k such that the determinant of the Bordered Lights Out matrix BL_k is nonzero.

The programs for A296350, there is no canonical definition to state claims against.
-/

/-! ## A296350.P2432199603920428775

`record[lcm(5, round(n/5)+n-3)/5]-1`
-/

namespace A296350.P2432199603920428775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (SequenceMachineLib.roundAway ((n : ℚ) / 5) + ((n : ℤ) - 3)) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A296350.P2432199603920428775

/-! ## A296350.P14513604568366319792

`A296352(n+1)-1`
-/

namespace A296350.P14513604568366319792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296352 (n + 1) - 1

end

end A296350.P14513604568366319792

/-! ## A296350.P2442955689654062472

`lt[6, A291436(n+3)]+2`
-/

namespace A296350.P2442955689654062472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291436 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A296350.P2442955689654062472

/-! ## A296350.P6759870331117599039

`abs(2-comp[A269328(n+1)])+1`
-/

namespace A296350.P6759870331117599039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)| + 1

end

end A296350.P6759870331117599039

/-! ## A296350.P11069108837657913710

`comp[A269328(n+2)]+floor(acot(n)²)-1`
-/

namespace A296350.P11069108837657913710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - 1)

end

end A296350.P11069108837657913710

/-! ## A296350.P12175160896008147960

`comp[A269328(gcd(3, a(n-1))+n-1)]-1` with `a(0)=1`
-/

namespace A296350.P12175160896008147960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269328 ((Int.gcd 3 (f1 (n - 1)) : ℤ) + ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A296350.P12175160896008147960

/-! ## A296350.P3841292825789332759

`A023443(A296352(n+1))`
-/

namespace A296350.P3841292825789332759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A296352 (n + 1)).toNat

end

end A296350.P3841292825789332759

/-! ## A296350.P12617971008708720038

`A233583(comp[A269328(n+1)])`
-/

namespace A296350.P12617971008708720038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A296350.P12617971008708720038

/-! ## A296350.P13796899831594161018

`A289207(A296352(n+1)+1)`
-/

namespace A296350.P13796899831594161018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A296352 (n + 1) + 1).toNat

end

end A296350.P13796899831594161018

/-! ## A296350.P11286382711522460633

`comp[A269328(n+1)]-A008683(ceil(2/(n+1)))`
-/

namespace A296350.P11286382711522460633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A008683 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A296350.P11286382711522460633

/-!
# A296352: List of numbers k such that the determinant of the Unordered Lights Out matrix UBL_k is nonzero.

The programs for A296352, there is no canonical definition to state claims against.
-/

/-! ## A296352.P2258402749603323520

`record[lcm(5, round(n/5)+n-3)/5]`
-/

namespace A296352.P2258402749603323520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (SequenceMachineLib.roundAway ((n : ℚ) / 5) + ((n : ℤ) - 3)) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296352.P2258402749603323520

/-! ## A296352.P15762266669453399822

`A296350(n+1)+1`
-/

namespace A296352.P15762266669453399822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296350 (n + 1) + 1

end

end A296352.P15762266669453399822

/-! ## A296352.P9370148597712100574

`lt[6, A291436(n+3)]+3`
-/

namespace A296352.P9370148597712100574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291436 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A296352.P9370148597712100574

/-! ## A296352.P265142067076401363

`abs(2-comp[A269328(n+1)])+2`
-/

namespace A296352.P265142067076401363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)| + 2

end

end A296352.P265142067076401363

/-! ## A296352.P12057601382582615926

`comp[A269328(n+2)]+floor(acot(n)²)`
-/

namespace A296352.P12057601382582615926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A296352.P12057601382582615926

/-! ## A296352.P5427497123160421753

`comp[A269328(gcd(3, a(n-1))+n-1)]` with `a(0)=1`
-/

namespace A296352.P5427497123160421753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269328 ((Int.gcd 3 (f1 (n - 1)) : ℤ) + ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A296352.P5427497123160421753

/-! ## A296352.P521343323986765242

`A020725(A296350(n+1))`
-/

namespace A296352.P521343323986765242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A296350 (n + 1)).toNat

end

end A296352.P521343323986765242

/-! ## A296352.P3486084198975273638

`record[A132739(A047253(n+3))]`
-/

namespace A296352.P3486084198975273638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A047253 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296352.P3486084198975273638

/-! ## A296352.P9967179241472860631

`record[A214394(A091703(n+3))]`
-/

namespace A296352.P9967179241472860631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A091703 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296352.P9967179241472860631

/-! ## A296352.P11135387366131606903

`filter[A047253(n+3), A011558(#)]`
-/

namespace A296352.P11135387366131606903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A296352.P11135387366131606903

/-!
# A296354: Official position where binary expansion of n starts in the list of binary numbers in the binary Champernowne sequence A076478.

The programs for A296354, the canonical program `A296354.P8428607164020722342` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296354 has offset 0).

The definition of A296354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296354.P12086811145459602343

`A296356(n)+A296355(n)`
-/

namespace A296354.P12086811145459602343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296356 n + A296355 n

end

end A296354.P12086811145459602343

namespace A296354

/-- `A296356(n)+A296355(n)` -/
def P12086811145459602343.Spec : Prop :=
  ∀ n, P12086811145459602343.a n = A296354 n

end A296354

/-! ## A296354.P8428607164020722342

`∑{d}[A011782(A029837(n+1)), A003314(#)+n]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296354

/-- `∑{d}[A011782(A029837(n+1)), A003314(#)+n]` -/
def P8428607164020722342.Spec : Prop :=
  ∀ n, P8428607164020722342.a n = A296354 n

theorem P8428607164020722342.correct : P8428607164020722342.Spec := by
  intro n
  simp only [A296354]

end A296354

/-! ## A296354.P212959527821497703

`A001855(n+1)+A000337(A029837(n+1))-A029837(n+1)`
-/

namespace A296354.P212959527821497703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + (A000337 (A029837 (n + 1)).toNat - A029837 (n + 1))

end

end A296354.P212959527821497703

namespace A296354

/-- `A001855(n+1)+A000337(A029837(n+1))-A029837(n+1)` -/
def P212959527821497703.Spec : Prop :=
  ∀ n, P212959527821497703.a n = A296354 n

end A296354

/-! ## A296354.P9587086854311258179

`A061168(A346303(n+1)-n)`
-/

namespace A296354.P9587086854311258179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A346303 (n + 1) - (n : ℤ)).toNat

end

end A296354.P9587086854311258179

namespace A296354

/-- `A061168(A346303(n+1)-n)` -/
def P9587086854311258179.Spec : Prop :=
  ∀ n, P9587086854311258179.a n = A296354 n

end A296354

/-! ## A296354.P14245512984703334474

`A061168(A035327(n)+2*n)`
-/

namespace A296354.P14245512984703334474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (2 * n : ℤ)).toNat

end

end A296354.P14245512984703334474

namespace A296354

/-- `A061168(A035327(n)+2*n)` -/
def P14245512984703334474.Spec : Prop :=
  ∀ n, P14245512984703334474.a n = A296354 n

end A296354

/-! ## A296354.P952793169371660906

`A061168(A035327(n)+n+n)`
-/

namespace A296354.P952793169371660906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (n : ℤ) + (n : ℤ)).toNat

end

end A296354.P952793169371660906

namespace A296354

/-- `A061168(A035327(n)+n+n)` -/
def P952793169371660906.Spec : Prop :=
  ∀ n, P952793169371660906.a n = A296354 n

end A296354

/-! ## A296354.P17926863589170664189

`record[A061168(n+1)*A076478(A061168(n+1))]`
-/

namespace A296354.P17926863589170664189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1) * A076478 (A061168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296354.P17926863589170664189

namespace A296354

/-- `record[A061168(n+1)*A076478(A061168(n+1))]` -/
def P17926863589170664189.Spec : Prop :=
  ∀ n, P17926863589170664189.a n = A296354 n

end A296354

/-!
# A296355: True position where binary expansion of n starts in the list of binary numbers in the binary Champernowne sequence A076478.

The programs for A296355, there is no canonical definition to state claims against.
-/

/-! ## A296355.P5348916734333558280

`A296354(n)-A296356(n)`
-/

namespace A296355.P5348916734333558280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296354 n - A296356 n

end

end A296355.P5348916734333558280

/-! ## A296355.P6466560183335834052

`A061168(A346303(n+1)-n)-A296356(n)`
-/

namespace A296355.P6466560183335834052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A346303 (n + 1) - (n : ℤ)).toNat - A296356 n

end

end A296355.P6466560183335834052

/-! ## A296355.P15243945665049863100

`A061168(A035327(n)+2*n)-A296356(n)`
-/

namespace A296355.P15243945665049863100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (2 * n : ℤ)).toNat - A296356 n

end

end A296355.P15243945665049863100

/-! ## A296355.P4809344521157774364

`A061168(A035327(n)+n+n)-A296356(n)`
-/

namespace A296355.P4809344521157774364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (n : ℤ) + (n : ℤ)).toNat - A296356 n

end

end A296355.P4809344521157774364

/-! ## A296355.P7056776019631923727

`A296354(n)+A001478(A296356(n)+1)+1`
-/

namespace A296355.P7056776019631923727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296354 n + (A001478 (A296356 n + 1).toNat + 1)

end

end A296355.P7056776019631923727

/-!
# A296356: a(n) = A296354(n) - A296355(n).

The programs for A296356, there is no canonical definition to state claims against.
-/

/-! ## A296356.P9963133426624161845

`A296354(n)-A296355(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A296356.P9963133426624161845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296354 n - A296355 n

end

end A296356.P9963133426624161845

/-! ## A296356.P16674586550236593477

`∑{d}[A011782(A029837(n+1)), A003314(#)+n]-A296355(n)`
-/

namespace A296356.P16674586550236593477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A003314 d + (n : ℤ)) - A296355 n

end

end A296356.P16674586550236593477

/-! ## A296356.P17862364862952053896

`A061168(A346303(n+1)-n)-A296355(n)`
-/

namespace A296356.P17862364862952053896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A346303 (n + 1) - (n : ℤ)).toNat - A296355 n

end

end A296356.P17862364862952053896

/-! ## A296356.P6877404042217839387

`A061168(A035327(n)+2*n)-A296355(n)`
-/

namespace A296356.P6877404042217839387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (2 * n : ℤ)).toNat - A296355 n

end

end A296356.P6877404042217839387

/-! ## A296356.P8513918381468846348

`A061168(A035327(n)+n+n)-A296355(n)`
-/

namespace A296356.P8513918381468846348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (A035327 n + (n : ℤ) + (n : ℤ)).toNat - A296355 n

end

end A296356.P8513918381468846348

/-!
# A296357: a(n) = ceiling of n/Pi.

The programs for A296357, the canonical program `A296357.P7696242937586898584` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296357 has offset 1).

The definition of A296357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296357.P7696242937586898584

`ceil((n+1)/π)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296357

/-- `ceil((n+1)/π)` -/
def P7696242937586898584.Spec : Prop :=
  ∀ n, P7696242937586898584.a n = A296357 (n + 1)

theorem P7696242937586898584.correct : P7696242937586898584.Spec := by
  intro n
  simp only [A296357, Nat.add_sub_cancel]

end A296357

/-! ## A296357.P3181760494145729246

`∑[ceil(∑[cos(n)])%2]`
-/

namespace A296357.P3181760494145729246
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296357.P3181760494145729246

namespace A296357

/-- `∑[ceil(∑[cos(n)])%2]` -/
def P3181760494145729246.Spec : Prop :=
  ∀ n, P3181760494145729246.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P3079191452755166303

`floor(C(n+1, n)/π)+1`
-/

namespace A296357.P3079191452755166303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.pi⌋ + 1

end

end A296357.P3079191452755166303

namespace A296357

/-- `floor(C(n+1, n)/π)+1` -/
def P3079191452755166303.Spec : Prop :=
  ∀ n, P3079191452755166303.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P7298720864929896569

`∑[char[A022844(n)]]`
-/

namespace A296357.P7298720864929896569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296357.P7298720864929896569

namespace A296357

/-- `∑[char[A022844(n)]]` -/
def P7298720864929896569.Spec : Prop :=
  ∀ n, (P7298720864929896569.a n : ℤ) = A296357 (n + 1)

end A296357

/-! ## A296357.P11014867550721753936

`A059531(n+1)-n`
-/

namespace A296357.P11014867550721753936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) - (n : ℤ)

end

end A296357.P11014867550721753936

namespace A296357

/-- `A059531(n+1)-n` -/
def P11014867550721753936.Spec : Prop :=
  ∀ n, P11014867550721753936.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P5845121413885574428

`∑[char[A140758(2*n)]]`
-/

namespace A296357.P5845121413885574428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296357.P5845121413885574428

namespace A296357

/-- `∑[char[A140758(2*n)]]` -/
def P5845121413885574428.Spec : Prop :=
  ∀ n, (P5845121413885574428.a n : ℤ) = A296357 (n + 1)

end A296357

/-! ## A296357.P10542067242619885027

`∑[char[A004084(n+1)-1]]`
-/

namespace A296357.P10542067242619885027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296357.P10542067242619885027

namespace A296357

/-- `∑[char[A004084(n+1)-1]]` -/
def P10542067242619885027.Spec : Prop :=
  ∀ n, (P10542067242619885027.a n : ℤ) = A296357 (n + 1)

end A296357

/-! ## A296357.P17819336697376017303

`A292649(n+1)-Δ[n²]`
-/

namespace A296357.P17819336697376017303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292649 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A296357.P17819336697376017303

namespace A296357

/-- `A292649(n+1)-Δ[n²]` -/
def P17819336697376017303.Spec : Prop :=
  ∀ n, P17819336697376017303.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P1733197273509471205

`floor(A000027(n+1)/π)+1`
-/

namespace A296357.P1733197273509471205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) / Real.pi⌋ + 1

end

end A296357.P1733197273509471205

namespace A296357

/-- `floor(A000027(n+1)/π)+1` -/
def P1733197273509471205.Spec : Prop :=
  ∀ n, P1733197273509471205.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P3219156183400866823

`A020703(A020703(floor((n+1)/π)+1))`
-/

namespace A296357.P3219156183400866823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A020703 (⌊(n + 1 : ℝ) / Real.pi⌋ + 1).toNat).toNat

end

end A296357.P3219156183400866823

namespace A296357

/-- `A020703(A020703(floor((n+1)/π)+1))` -/
def P3219156183400866823.Spec : Prop :=
  ∀ n, P3219156183400866823.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P16275766552682489402

`A341916(A341915(floor((n+1)/π)+1))`
-/

namespace A296357.P16275766552682489402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A341915 (⌊(n + 1 : ℝ) / Real.pi⌋ + 1).toNat).toNat

end

end A296357.P16275766552682489402

namespace A296357

/-- `A341916(A341915(floor((n+1)/π)+1))` -/
def P16275766552682489402.Spec : Prop :=
  ∀ n, P16275766552682489402.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P4521859078361825807

`A001478(n+1)+A059531(n+1)+1`
-/

namespace A296357.P4521859078361825807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A059531 (n + 1) + 1)

end

end A296357.P4521859078361825807

namespace A296357

/-- `A001478(n+1)+A059531(n+1)+1` -/
def P4521859078361825807.Spec : Prop :=
  ∀ n, P4521859078361825807.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P8765849739032515329

`A032615(n+1)+1`
-/

namespace A296357.P8765849739032515329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (n + 1) + 1

end

end A296357.P8765849739032515329

namespace A296357

/-- `A032615(n+1)+1` -/
def P8765849739032515329.Spec : Prop :=
  ∀ n, P8765849739032515329.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P8237664113564460550

`Δ[A022796(n+1)]`
-/

namespace A296357.P8237664113564460550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296357.P8237664113564460550

namespace A296357

/-- `Δ[A022796(n+1)]` -/
def P8237664113564460550.Spec : Prop :=
  ∀ n, P8237664113564460550.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P16057946648623161630

`A022796(n+2)-A022796(n+1)`
-/

namespace A296357.P16057946648623161630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022796 (n + 2) - A022796 (n + 1)

end

end A296357.P16057946648623161630

namespace A296357

/-- `A022796(n+2)-A022796(n+1)` -/
def P16057946648623161630.Spec : Prop :=
  ∀ n, P16057946648623161630.a n = A296357 (n + 1)

end A296357

/-! ## A296357.P12916355627902761308

`floor((A010690(2*(n+2))+n)/π)+1`
-/

namespace A296357.P12916355627902761308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010690 (2 * (n + 2)) + (n : ℤ) : ℝ) / Real.pi⌋ + 1

end

end A296357.P12916355627902761308

namespace A296357

/-- `floor((A010690(2*(n+2))+n)/π)+1` -/
def P12916355627902761308.Spec : Prop :=
  ∀ n, P12916355627902761308.a n = A296357 (n + 1)

end A296357

/-!
# A296358: Denominator of the sum of the reciprocals of the first n composite numbers.

The programs for A296358, there is no canonical definition to state claims against.
-/

/-! ## A296358.P7495199641847983482

`A282512(n+2)`
-/

namespace A296358.P7495199641847983482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (n + 2)

end

end A296358.P7495199641847983482

/-! ## A296358.P923234424159880250

`A282503(A002808(n+1))`
-/

namespace A296358.P923234424159880250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A002808 (n + 1)).toNat

end

end A296358.P923234424159880250

/-! ## A296358.P959782571510868205

`A282503(A118742(n+1))`
-/

namespace A296358.P959782571510868205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A118742 (n + 1)).toNat

end

end A296358.P959782571510868205

/-! ## A296358.P934136666656432057

`A282503(A018252(n+2))`
-/

namespace A296358.P934136666656432057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A018252 (n + 2)).toNat

end

end A296358.P934136666656432057

/-! ## A296358.P7949903385589744805

`A282503(A072668(n+2))`
-/

namespace A296358.P7949903385589744805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A072668 (n + 2)).toNat

end

end A296358.P7949903385589744805

/-! ## A296358.P16031238315128340213

`A282503(A060462(n+2)+1)`
-/

namespace A296358.P16031238315128340213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A060462 (n + 2) + 1).toNat

end

end A296358.P16031238315128340213

/-! ## A296358.P2814046374121293564

`A282503(comp[C(A006530(n+1), n)])`
-/

namespace A296358.P2814046374121293564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A296358.P2814046374121293564

/-! ## A296358.P5092726959618012098

`A282503(comp[C(A014963(n+1), n)])`
-/

namespace A296358.P5092726959618012098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A296358.P5092726959618012098

/-! ## A296358.P742523607539193770

`A282503(A171504(n+2)-(n+2))`
-/

namespace A296358.P742523607539193770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A171504 (n + 2) - (n + 2 : ℤ)).toNat

end

end A296358.P742523607539193770

/-! ## A296358.P9852659129464106187

`A282503(A171523(n+2)/(n+2))`
-/

namespace A296358.P9852659129464106187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.roundAway ((A171523 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A296358.P9852659129464106187

/-!
# A296359: Number of monohedral disk tilings of type C^t_{2n+1,2}.

The programs for A296359, there is no canonical definition to state claims against.
-/

/-! ## A296359.P9169215396328827300

`2*A000358(A008574(2*n+3))`
-/

namespace A296359.P9169215396328827300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000358 (A008574 (2 * n + 3)).toNat

end

end A296359.P9169215396328827300

/-! ## A296359.P2445358459509114550

`A273090(∑[n+2])`
-/

namespace A296359.P2445358459509114550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296359.P2445358459509114550

/-!
# A296360: Number of monohedral disk tilings of type C^t_{2n+1,3}.

The programs for A296360, there is no canonical definition to state claims against.
-/

/-! ## A296360.P6551491089392349514

`A273090(∑[n+3]+1)`
-/

namespace A296360.P6551491089392349514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296360.P6551491089392349514

/-!
# A296361: Number of monohedral disk tilings of type C^t_{3,n}.

The programs for A296361, there is no canonical definition to state claims against.
-/

/-! ## A296361.P5098036164405058831

`A273090(∑[n]+1)`
-/

namespace A296361.P5098036164405058831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296361.P5098036164405058831

/-! ## A296361.P13562587688037246743

`record[A273090(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A296361.P13562587688037246743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296361.P13562587688037246743

/-! ## A296361.P7868211385970685723

`lcm(2, A273090(A000124(n)))`
-/

namespace A296361.P7868211385970685723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A273090 (A000124 n).toNat)

end

end A296361.P7868211385970685723

/-! ## A296361.P13094791915877068539

`record[A273090(record[A206925(n+1)])]`
-/

namespace A296361.P13094791915877068539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296361.P13094791915877068539

/-!
# A296362: Number of monohedral disk tilings of type C^t_{5,n}.

The programs for A296362, there is no canonical definition to state claims against.
-/

/-! ## A296362.P18037645114675834811

`A273090(∑[n+1]+2)`
-/

namespace A296362.P18037645114675834811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273090 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296362.P18037645114675834811

/-!
# A296363: a(1)=0; for n>1, a(n) = 4*n^3 - 3*n^2 - 3*n + 4.

The programs for A296363, the canonical program `A296363.P5834870062625945055` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296363 has offset 1).

The definition of A296363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296363.P5834870062625945055

`((2*n)²+n+1)*(n+2)%(n+1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296363

/-- `((2*n)²+n+1)*(n+2)%(n+1)²` -/
def P5834870062625945055.Spec : Prop :=
  ∀ n, (P5834870062625945055.a n : ℤ) = A296363 (n + 1)

theorem P5834870062625945055.correct : P5834870062625945055.Spec := by
  intro n
  simp only [A296363, Nat.add_sub_cancel]

end A296363

/-! ## A296363.P13636839943389962471

`(gcd(n+1, a(n-1))+(2*n)²)*(n+2)` with `a(0)=0`
-/

namespace A296363.P13636839943389962471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.gcd (n + 1) (a (n - 1)) + (2 * n) ^ 2) * (n + 2)

end

end A296363.P13636839943389962471

namespace A296363

/-- `(gcd(n+1, a(n-1))+(2*n)²)*(n+2)` -/
def P13636839943389962471.Spec : Prop :=
  ∀ n, (P13636839943389962471.a n : ℤ) = A296363 (n + 1)

end A296363

/-! ## A296363.P8505916018754301061

`(n+2)*(A005899(n)-1+n)`
-/

namespace A296363.P8505916018754301061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A005899 n - 1 + (n : ℤ))

end

end A296363.P8505916018754301061

namespace A296363

/-- `(n+2)*(A005899(n)-1+n)` -/
def P8505916018754301061.Spec : Prop :=
  ∀ n, P8505916018754301061.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P82707935366468271

`(A004273(n)²+5*n)*(n+2)`
-/

namespace A296363.P82707935366468271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n ^ 2 + (5 * n : ℤ)) * (n + 2 : ℤ)

end

end A296363.P82707935366468271

namespace A296363

/-- `(A004273(n)²+5*n)*(n+2)` -/
def P82707935366468271.Spec : Prop :=
  ∀ n, P82707935366468271.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P5089852800842064526

`(xor(1, A004277(n)²)+n)*(n+2)`
-/

namespace A296363.P5089852800842064526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A004277 n ^ 2) + (n : ℤ)) * (n + 2 : ℤ)

end

end A296363.P5089852800842064526

namespace A296363

/-- `(xor(1, A004277(n)²)+n)*(n+2)` -/
def P5089852800842064526.Spec : Prop :=
  ∀ n, P5089852800842064526.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P785747007860519882

`(∑[A086570(n)]-1+n)*(n+2)`
-/

namespace A296363.P785747007860519882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)) * (n + 2 : ℤ)

end

end A296363.P785747007860519882

namespace A296363

/-- `(∑[A086570(n)]-1+n)*(n+2)` -/
def P785747007860519882.Spec : Prop :=
  ∀ n, P785747007860519882.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P8664240167315410106

`(n+2)*((2*n+1)²-A008486(n))`
-/

namespace A296363.P8664240167315410106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (((2 * n + 1) ^ 2 : ℤ) - A008486 n)

end

end A296363.P8664240167315410106

namespace A296363

/-- `(n+2)*((2*n+1)²-A008486(n))` -/
def P8664240167315410106.Spec : Prop :=
  ∀ n, P8664240167315410106.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P15661951869733682437

`(((2*n)²+n+1)*(n+2))%A160788(n)`
-/

namespace A296363.P15661951869733682437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((2 * n) ^ 2 + (n + 1)) * (n + 2) : ℤ) (A160788 n)

end

end A296363.P15661951869733682437

namespace A296363

/-- `(((2*n)²+n+1)*(n+2))%A160788(n)` -/
def P15661951869733682437.Spec : Prop :=
  ∀ n, P15661951869733682437.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P18365571850905315930

`A054567(n+1)*A114637(n+1)`
-/

namespace A296363.P18365571850905315930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1) * A114637 (n + 1)

end

end A296363.P18365571850905315930

namespace A296363

/-- `A054567(n+1)*A114637(n+1)` -/
def P18365571850905315930.Spec : Prop :=
  ∀ n, P18365571850905315930.a n = A296363 (n + 1)

end A296363

/-! ## A296363.P15914237441352630120

`(A033951(n)-A028310(2*n))*(n+2)`
-/

namespace A296363.P15914237441352630120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033951 n - A028310 (2 * n)) * (n + 2 : ℤ)

end

end A296363.P15914237441352630120

namespace A296363

/-- `(A033951(n)-A028310(2*n))*(n+2)` -/
def P15914237441352630120.Spec : Prop :=
  ∀ n, P15914237441352630120.a n = A296363 (n + 1)

end A296363

/-!
# A296364: a(n) = A296349(n) - A030304(n).

The programs for A296364, there is no canonical definition to state claims against.
-/

/-! ## A296364.P6642039697917836008

`A296349(n)-A030304(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A296364.P6642039697917836008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n - A030304 n

end

end A296364.P6642039697917836008

/-! ## A296364.P2930107338889911261

`A296349(n)+A030304(n)*A057428(n)`
-/

namespace A296364.P2930107338889911261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n + A030304 n * A057428 n

end

end A296364.P2930107338889911261

/-! ## A296364.P10330861070463403754

`A296349(n)+-A030304(n)%A045315(n+1)`
-/

namespace A296364.P10330861070463403754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n + Int.tmod (-A030304 n) (A045315 (n + 1))

end

end A296364.P10330861070463403754

/-! ## A296364.P15410833412900882448

`A296349(n)+-A030304(n)%A000244(n)`
-/

namespace A296364.P15410833412900882448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n + Int.tmod (-A030304 n) (A000244 n)

end

end A296364.P15410833412900882448

/-!
# A296365: Numbers which appear prematurely in the binary Champernowne word (A030190).

The programs for A296365, there is no canonical definition to state claims against.
-/

/-! ## A296365.P11332521578721245119

`comp[2*a(n-1)]` with `a(0)=10, a(1)=36, a(2)=0, a(3)=1`
-/

namespace A296365.P11332521578721245119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 36, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A296365.P11332521578721245119

/-! ## A296365.P1569997130414391757

`comp[∪[2^n, ∑[3^n-1]]]`
-/

namespace A296365.P1569997130414391757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A296365.P1569997130414391757

/-! ## A296365.P12500339853815189684

`comp[C(ceil((n+1)/ϕ), 2^floor(log2(n+1))-1)]`
-/

namespace A296365.P12500339853815189684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n + 1 : ℝ) / Real.goldenRatio⌉.toNat ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A296365.P12500339853815189684

/-! ## A296365.P14897758497294639438

`comp[A083655(n)]`
-/

namespace A296365.P14897758497294639438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A296365.P14897758497294639438

/-! ## A296365.P11134044719208534884

`lt[0, A296364(n)]`
-/

namespace A296365.P11134044719208534884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296365.P11134044719208534884

/-! ## A296365.P10015812402489393016

`lt[1, A083654(n)]`
-/

namespace A296365.P10015812402489393016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296365.P10015812402489393016

/-! ## A296365.P18324018884542412655

`lt[A083653(n), n]`
-/

namespace A296365.P18324018884542412655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A296365.P18324018884542412655

/-! ## A296365.P3661650270616811299

`comp[A185411(∑[∑{e}[n, #]])]`
-/

namespace A296365.P3661650270616811299
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185411 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A296365.P3661650270616811299

/-! ## A296365.P701309817317779957

`comp[A185410(comp[∑[2*n]])]`
-/

namespace A296365.P701309817317779957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A296365.P701309817317779957

/-!
# A296367: Number of triangles on a 4 X n grid.

The programs for A296367, the canonical program `A296367.P5203125828263086518` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296367 has offset 1).

The definition of A296367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296367.P5203125828263086518

`A000292(4*n+2)-A334706(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296367

/-- `A000292(4*n+2)-A334706(n+1)` -/
def P5203125828263086518.Spec : Prop :=
  ∀ n, P5203125828263086518.a n = A296367 (n + 1)

theorem P5203125828263086518.correct : P5203125828263086518.Spec := by
  intro n
  simp only [A296367, Nat.add_sub_cancel]

end A296367

/-!
# A296368: Coordination sequence for the Cairo or dual-3.3.4.3.4 tiling with respect to a trivalent point.

The programs for A296368, the canonical program `A296368.P4523792091898442483` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296368 has offset 0).

The definition of A296368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296368.P4523792091898442483

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=12, a(4)=15, a(5)=20, a(6)=25`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296368

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P4523792091898442483.Spec : Prop :=
  ∀ n, P4523792091898442483.a n = A296368 n

theorem P4523792091898442483.correct : P4523792091898442483.Spec := by
  intro n
  simp only [A296368]

end A296368

/-! ## A296368.P2417104748534760157

`∑[6-A051340(a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A296368.P2417104748534760157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 - A051340 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296368.P2417104748534760157

namespace A296368

/-- `∑[6-A051340(a(n-2))]` -/
def P2417104748534760157.Spec : Prop :=
  ∀ n, P2417104748534760157.a n = A296368 n

end A296368

/-! ## A296368.P874595720200938954

`∑[5-A001221(A165883(a(n-2)))]` with `a(0)=1, a(1)=2`
-/

namespace A296368.P874595720200938954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - A001221 (A165883 (f1 (n - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296368.P874595720200938954

namespace A296368

/-- `∑[5-A001221(A165883(a(n-2)))]` -/
def P874595720200938954.Spec : Prop :=
  ∀ n, P874595720200938954.a n = A296368 n

end A296368

/-! ## A296368.P7399930705418244119

`∑[A080884(A016433(a(n-2))+1)+3]` with `a(0)=1, a(1)=2`
-/

namespace A296368.P7399930705418244119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A080884 (A016433 (f1 (n - 2)).toNat + 1).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296368.P7399930705418244119

namespace A296368

/-- `∑[A080884(A016433(a(n-2))+1)+3]` -/
def P7399930705418244119.Spec : Prop :=
  ∀ n, P7399930705418244119.a n = A296368 n

end A296368

/-! ## A296368.P3206875059505227964

`∑[5-A029304(A331298(a(n-2)+1))]` with `a(0)=1, a(1)=2`
-/

namespace A296368.P3206875059505227964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - A029304 (A331298 (f1 (n - 2) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296368.P3206875059505227964

namespace A296368

/-- `∑[5-A029304(A331298(a(n-2)+1))]` -/
def P3206875059505227964.Spec : Prop :=
  ∀ n, P3206875059505227964.a n = A296368 n

end A296368

/-! ## A296368.P18385042173998501191

`∑[5-A252735(A286244(a(n-2)+1)+1)]` with `a(0)=1, a(1)=2`
-/

namespace A296368.P18385042173998501191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - A252735 (A286244 (f1 (n - 2) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296368.P18385042173998501191

namespace A296368

/-- `∑[5-A252735(A286244(a(n-2)+1)+1)]` -/
def P18385042173998501191.Spec : Prop :=
  ∀ n, P18385042173998501191.a n = A296368 n

end A296368

/-!
# A296369: Numbers m such that 2^m == -1/2 (mod m).

The programs for A296369, there is no canonical definition to state claims against.
-/

/-! ## A296369.P17154251375083106732

`A055685(n+1)-1`
-/

namespace A296369.P17154251375083106732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055685 (n + 1) - 1

end

end A296369.P17154251375083106732

/-! ## A296369.P14013176230823987594

`xor(3, A055685(A000027(n+1)))`
-/

namespace A296369.P14013176230823987594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055685 (A000027 (n + 1)).toNat)

end

end A296369.P14013176230823987594

/-! ## A296369.P3846747546655379782

`xor(3, A055685(A008621(4*n)))`
-/

namespace A296369.P3846747546655379782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A055685 (A008621 (4 * n)).toNat)

end

end A296369.P3846747546655379782

/-! ## A296369.P13906956064649959375

`A057428(n+1)+A055685(n+1)`
-/

namespace A296369.P13906956064649959375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055685 (n + 1)

end

end A296369.P13906956064649959375

/-! ## A296369.P6197741091453538536

`A099837(3*n+2)+A055685(n+1)`
-/

namespace A296369.P6197741091453538536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 2) + A055685 (n + 1)

end

end A296369.P6197741091453538536

/-! ## A296369.P10833824997437469683

`xor(A040007(2*n+1), A055685(n+1))`
-/

namespace A296369.P10833824997437469683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040007 (2 * n + 1)) (A055685 (n + 1))

end

end A296369.P10833824997437469683

/-! ## A296369.P8439332306499904703

`xor(A010167(4*n+2), A055685(n+1))`
-/

namespace A296369.P8439332306499904703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010167 (4 * n + 2)) (A055685 (n + 1))

end

end A296369.P8439332306499904703

/-! ## A296369.P7290980161783237127

`A317950(A278040(n))+A055685(n+1)`
-/

namespace A296369.P7290980161783237127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (A278040 n).toNat + A055685 (n + 1)

end

end A296369.P7290980161783237127

/-! ## A296369.P9976688074631417310

`A307445(A248596(n+1))+A055685(n+1)`
-/

namespace A296369.P9976688074631417310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A248596 (n + 1)).toNat + A055685 (n + 1)

end

end A296369.P9976688074631417310

/-! ## A296369.P4498097817454626395

`abs(A055685(n+1)+A008683(A007520(n+2)))`
-/

namespace A296369.P4498097817454626395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055685 (n + 1) + A008683 (A007520 (n + 2)).toNat|

end

end A296369.P4498097817454626395

/-! ## A296369.P3169564844590834352

`A307445(record[A014963(n+2)])+A055685(n+1)`
-/

namespace A296369.P3169564844590834352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A055685 (n + 1)

end

end A296369.P3169564844590834352

/-! ## A296369.P9264444663032178516

`A062186(Δ[A026367(n+1)]+2)+A055685(n+1)`
-/

namespace A296369.P9264444663032178516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062186 (f1 (n + 1) - f1 n + 2).toNat + A055685 (n + 1)

end

end A296369.P9264444663032178516

/-! ## A296369.P17494539795915192652

`A062233(Δ[A026367(n+1)]+2)+A055685(n+1)`
-/

namespace A296369.P17494539795915192652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062233 (f1 (n + 1) - f1 n + 2).toNat + A055685 (n + 1)

end

end A296369.P17494539795915192652

/-! ## A296369.P4017687224172704259

`A062157(A000959(n+1)+1)+A055685(n+1)`
-/

namespace A296369.P4017687224172704259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000959 (n + 1) + 1).toNat + A055685 (n + 1)

end

end A296369.P4017687224172704259

/-! ## A296369.P17230301733369130724

`A244895(A017317(n))+A055685(n+1)`
-/

namespace A296369.P17230301733369130724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A017317 n).toNat + A055685 (n + 1)

end

end A296369.P17230301733369130724

/-! ## A296369.P5871210996884115644

`A257075(A158065(n+1))+A055685(n+1)`
-/

namespace A296369.P5871210996884115644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A158065 (n + 1)).toNat + A055685 (n + 1)

end

end A296369.P5871210996884115644

/-! ## A296369.P14583611009536414483

`A307445(A248595(n+1))+A055685(n+1)`
-/

namespace A296369.P14583611009536414483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A248595 (n + 1)).toNat + A055685 (n + 1)

end

end A296369.P14583611009536414483

/-! ## A296369.P790792561200723667

`xor(A055685(n+1), A225743(A000217(n+3)+4))`
-/

namespace A296369.P790792561200723667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055685 (n + 1)) (A225743 (A000217 (n + 3) + 4).toNat)

end

end A296369.P790792561200723667

/-!
# A296370: Numbers m such that 2^m == 3/2 (mod m).

The programs for A296370, there is no canonical definition to state claims against.
-/

/-! ## A296370.P15721369893541055482

`A296104(n+1)-1`
-/

namespace A296370.P15721369893541055482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296104 (n + 1) - 1

end

end A296370.P15721369893541055482

/-! ## A296370.P3450182638772871279

`A321804(n)+A296104(n+1)`
-/

namespace A296370.P3450182638772871279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A296104 (n + 1)

end

end A296370.P3450182638772871279

/-! ## A296370.P12198843268922570724

`abs(A296104(n+1)+A057428(n+1))`
-/

namespace A296370.P12198843268922570724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A296104 (n + 1) + A057428 (n + 1)|

end

end A296370.P12198843268922570724

/-! ## A296370.P5559953820363781041

`A341702(A003108(n))+A296104(n+1)`
-/

namespace A296370.P5559953820363781041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 (A003108 n).toNat + A296104 (n + 1)

end

end A296370.P5559953820363781041

/-!
# A296371: Number of integer partitions of n using Jacobsthal numbers.

The programs for A296371, there is no canonical definition to state claims against.
-/

/-! ## A296371.P9377239569162784806

`A029043(n)+comp[A005150(2*n+3)]-n`
-/

namespace A296371.P9377239569162784806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A296371.P9377239569162784806

/-! ## A296371.P1086741050850826670

`A047263(A088156(n)!)+A029043(n)`
-/

namespace A296371.P1086741050850826670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (Nat.factorial (A088156 n).toNat) + A029043 n

end

end A296371.P1086741050850826670

/-! ## A296371.P15559796458660162033

`A049610(A088156(n)!)+A029043(n)`
-/

namespace A296371.P15559796458660162033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (Nat.factorial (A088156 n).toNat) + A029043 n

end

end A296371.P15559796458660162033

/-! ## A296371.P17123651529268471962

`A090106(A029043(n))`
-/

namespace A296371.P17123651529268471962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A029043 n).toNat

end

end A296371.P17123651529268471962

/-! ## A296371.P1169398884374768056

`A029043(n)%A080530(n)`
-/

namespace A296371.P1169398884374768056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029043 n) (A080530 n)

end

end A296371.P1169398884374768056

/-!
# A296373: Triangle T(n,k) = number of compositions of n whose factorization into Lyndon words (aperiodic necklaces) is of length k.

The programs for A296373, there is no canonical definition to state claims against.
-/

/-! ## A296373.P12775291256671884715

`and(A088326(n+1), A193838(A088326(n+1)))`
-/

namespace A296373.P12775291256671884715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088326 (n + 1)) (A193838 (A088326 (n + 1)).toNat)

end

end A296373.P12775291256671884715

/-! ## A296373.P4908944521564111147

`and(A046691(A327449(n+1)), A088326(n+1))`
-/

namespace A296373.P4908944521564111147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046691 (A327449 (n + 1)).toNat) (A088326 (n + 1))

end

end A296373.P4908944521564111147

/-! ## A296373.P1812051112626443220

`and(A088326(n+1), A236568(A108411(n)))`
-/

namespace A296373.P1812051112626443220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088326 (n + 1)) (A236568 (A108411 n).toNat)

end

end A296373.P1812051112626443220

/-! ## A296373.P11120626025840878634

`A088326(n+1)-A067898(p?[A032303(n)])`
-/

namespace A296373.P11120626025840878634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (n + 1) - A067898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A296373.P11120626025840878634

/-! ## A296373.P9631522721840009935

`A081607(A126279(n+1)%A139452(n+1))`
-/

namespace A296373.P9631522721840009935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081607 (Int.tmod (A126279 (n + 1)) (A139452 (n + 1))).toNat

end

end A296373.P9631522721840009935

/-!
# A296374: a(0) = 3; a(n) = a(n-1)*(a(n-1)^2 - 3*a(n-1) + 4)/2.

The programs for A296374, the canonical program `A296374.P5450764711660566681` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296374 has offset 0).

The definition of A296374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296374.P5450764711660566681

`a(n-1)*(a(n-1)²-3*a(n-1)+4)/2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296374

/-- `a(n-1)*(a(n-1)²-3*a(n-1)+4)/2` -/
def P5450764711660566681.Spec : Prop :=
  ∀ n, P5450764711660566681.a n = (A296374 n : ℚ)

end A296374

/-!
# A296375: Least x such that sigma(x) = prime(n)+1, where sigma = A000203.

The programs for A296375, there is no canonical definition to state claims against.
-/

/-! ## A296375.P4309415205510340146

`filter[A002192(n+1), A296211(#)]`
-/

namespace A296375.P4309415205510340146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A296375.P4309415205510340146

/-! ## A296375.P7829141375936939416

`A275987(A000040(n+1))`
-/

namespace A296375.P7829141375936939416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (A000040 (n + 1)).toNat

end

end A296375.P7829141375936939416

/-! ## A296375.P4747151876547195929

`A275987(A008578(n+2))`
-/

namespace A296375.P4747151876547195929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (A008578 (n + 2)).toNat

end

end A296375.P4747151876547195929

/-! ## A296375.P14431323552610275633

`A275987(A182986(n+2))`
-/

namespace A296375.P14431323552610275633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (A182986 (n + 2)).toNat

end

end A296375.P14431323552610275633

/-! ## A296375.P13489154506219816757

`A275987(record[A006530(n+2)])`
-/

namespace A296375.P13489154506219816757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296375.P13489154506219816757

/-! ## A296375.P3230674719971420743

`A275987(record[A020639(n+2)])`
-/

namespace A296375.P3230674719971420743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296375.P3230674719971420743

/-! ## A296375.P18154594388933440503

`A275987(lt[abs(1-n), A020639(n+1)]+1)`
-/

namespace A296375.P18154594388933440503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A296375.P18154594388933440503

/-! ## A296375.P16239019502639733046

`A051444(A008864(n+1))`
-/

namespace A296375.P16239019502639733046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A008864 (n + 1)).toNat

end

end A296375.P16239019502639733046

/-! ## A296375.P17133646816090960675

`A051444(A028815(n+1))`
-/

namespace A296375.P17133646816090960675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A028815 (n + 1)).toNat

end

end A296375.P17133646816090960675

/-! ## A296375.P6709552846596640712

`A051444(A299763(n+2))`
-/

namespace A296375.P6709552846596640712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A299763 (n + 2)).toNat

end

end A296375.P6709552846596640712

/-! ## A296375.P4156856470073809732

`A275987(record[A014963(n+2)])`
-/

namespace A296375.P4156856470073809732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296375.P4156856470073809732

/-! ## A296375.P11043076933012353409

`A051444(p?[A352844(n)]+1)`
-/

namespace A296375.P11043076933012353409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A296375.P11043076933012353409

/-! ## A296375.P2361182705838268667

`A051444(∑{d}[p?[A352844(n)], #])`
-/

namespace A296375.P2361182705838268667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A296375.P2361182705838268667

/-! ## A296375.P15103739565039423422

`A051444(A000040(n+1)+1)`
-/

namespace A296375.P15103739565039423422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A000040 (n + 1) + 1).toNat

end

end A296375.P15103739565039423422

/-! ## A296375.P10095628903762594133

`A051444(A008578(n+2)+1)`
-/

namespace A296375.P10095628903762594133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A008578 (n + 2) + 1).toNat

end

end A296375.P10095628903762594133

/-! ## A296375.P15017405267430303382

`A051444(eq[n, A062584(n)]+1)`
-/

namespace A296375.P15017405267430303382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296375.P15017405267430303382

/-! ## A296375.P15581597237943922923

`A051444(record[A006530(n+2)+1])`
-/

namespace A296375.P15581597237943922923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296375.P15581597237943922923

/-! ## A296375.P13466931002933153175

`A051444(record[A014963(n+2)+1])`
-/

namespace A296375.P13466931002933153175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A296375.P13466931002933153175

/-! ## A296375.P2503126921800322200

`A051444(eq[n, A038700(n+1)]+1)`
-/

namespace A296375.P2503126921800322200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296375.P2503126921800322200

/-!
# A296376: Natural numbers x such that 7*y^2 = x^2 + x + 1 has a solution in natural numbers.

The programs for A296376, there is no canonical definition to state claims against.
-/

/-! ## A296376.P11531019280452888248

`A350981(n+1)+1`
-/

namespace A296376.P11531019280452888248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350981 (n + 1) + 1

end

end A296376.P11531019280452888248

/-! ## A296376.P4530832828862685236

`∪[A350979(n), A350980(n)]+1`
-/

namespace A296376.P4530832828862685236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A296376.P4530832828862685236

/-! ## A296376.P3126526142873069415

`floor(A350966(n+1)/2)`
-/

namespace A296376.P3126526142873069415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350966 (n + 1) : ℚ) / 2⌋

end

end A296376.P3126526142873069415

/-! ## A296376.P17839615684323698931

`floor(A041044(2*n)/2)`
-/

namespace A296376.P17839615684323698931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041044 (2 * n) : ℚ) / 2⌋

end

end A296376.P17839615684323698931

/-! ## A296376.P2105288542425237797

`A263943(n+1)/7+1`
-/

namespace A296376.P2105288542425237797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263943 (n + 1) : ℚ) / 7 + 1

end

end A296376.P2105288542425237797

/-! ## A296376.P16576878128274957603

`(A041008(A047463(n+1))-1)/2`
-/

namespace A296376.P16576878128274957603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041008 (A047463 (n + 1)).toNat - 1 : ℚ) / 2

end

end A296376.P16576878128274957603

/-! ## A296376.P9693347967650813362

`(A202637(A042964(n+1))-1)/2`
-/

namespace A296376.P9693347967650813362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202637 (A042964 (n + 1)).toNat - 1 : ℚ) / 2

end

end A296376.P9693347967650813362

/-! ## A296376.P12913509191860626800

`ceil(A041044(2*n)/2-A007318(A000096(n)))`
-/

namespace A296376.P12913509191860626800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041044 (2 * n) : ℚ) / 2 - (A007318 (A000096 n).toNat : ℚ)⌉

end

end A296376.P12913509191860626800

/-!
# A296377: Natural numbers y such that 7y^2 = x^2 + x + 1 has a solution in natural numbers.

The programs for A296377, there is no canonical definition to state claims against.
-/

/-! ## A296377.P14055454368009419499

`A041045(2*n)`
-/

namespace A296377.P14055454368009419499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041045 (2 * n)

end

end A296377.P14055454368009419499

/-! ## A296377.P10102413638134676729

`A041473(2*n)`
-/

namespace A296377.P10102413638134676729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 (2 * n)

end

end A296377.P10102413638134676729

/-! ## A296377.P6675697191320787281

`record[A041473(A014681(n))]`
-/

namespace A296377.P6675697191320787281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296377.P6675697191320787281

/-! ## A296377.P6845848055751998505

`record[A041473(A153733(n))]`
-/

namespace A296377.P6845848055751998505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041473 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296377.P6845848055751998505

/-! ## A296377.P5662614339518768308

`A041203(A047233(n+1))`
-/

namespace A296377.P5662614339518768308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041203 (A047233 (n + 1)).toNat

end

end A296377.P5662614339518768308

/-! ## A296377.P3002560439011406369

`record[A041473(n)/A006519(n+1)]`
-/

namespace A296377.P3002560439011406369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041473 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296377.P3002560439011406369

/-! ## A296377.P9320699279762032363

`record[A041473(n)/A268361(n+1)]`
-/

namespace A296377.P9320699279762032363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041473 n : ℚ) / (A268361 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296377.P9320699279762032363

/-!
# A296379: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1's.

The programs for A296379, there is no canonical definition to state claims against.
-/

/-! ## A296379.P3081049190259343324

`A296386(∑[4*n]+1)`
-/

namespace A296379.P3081049190259343324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296379.P3081049190259343324

/-! ## A296379.P3584446648765451870

`record[gcd(A112467(n), A296386(n+1))]`
-/

namespace A296379.P3584446648765451870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A296386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296379.P3584446648765451870

/-! ## A296379.P17113465145170102482

`record[A203994(n+1)*A296386(n+1)]`
-/

namespace A296379.P17113465145170102482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A296386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296379.P17113465145170102482

/-! ## A296379.P1739740562515110294

`A296386(A001844(n))+A061858(n)`
-/

namespace A296379.P1739740562515110294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A001844 n).toNat + A061858 n

end

end A296379.P1739740562515110294

/-! ## A296379.P18361920985762562667

`log2(A020639(2*(n+1)))*A296386(A001844(n))`
-/

namespace A296379.P18361920985762562667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A296386 (A001844 n).toNat : ℝ)

end

end A296379.P18361920985762562667

/-!
# A296380: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296380, there is no canonical definition to state claims against.
-/

/-! ## A296380.P16404066907007061762

`A296386(∑[n+1]+2)`
-/

namespace A296380.P16404066907007061762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296380.P16404066907007061762

/-! ## A296380.P10144600142041757560

`record[A296386(abs(A201163(n)))]`
-/

namespace A296380.P10144600142041757560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296380.P10144600142041757560

/-! ## A296380.P13378381754357889099

`A296643(∑[n+1]+2)`
-/

namespace A296380.P13378381754357889099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296380.P13378381754357889099

/-! ## A296380.P13169751203103078502

`record[gcd(A025581(n), A296643(n+3))]`
-/

namespace A296380.P13169751203103078502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A296643 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296380.P13169751203103078502

/-! ## A296380.P2407788205632438568

`record[A296386(A233583(n+1))/A296405(n+1)]`
-/

namespace A296380.P2407788205632438568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296386 (A233583 (n + 1)).toNat : ℚ) / (A296405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296380.P2407788205632438568

/-!
# A296381: Number of n X 3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296381, there is no canonical definition to state claims against.
-/

/-! ## A296381.P17917962200065688030

`A296386(∑[n+2]+4)`
-/

namespace A296381.P17917962200065688030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296381.P17917962200065688030

/-! ## A296381.P13274341537252561

`A015546(n)*A296386(A167614(n+1))`
-/

namespace A296381.P13274341537252561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015546 n * A296386 (A167614 (n + 1)).toNat

end

end A296381.P13274341537252561

/-! ## A296381.P18387354495003751763

`A262681(n)*A296386(A167614(n+1))`
-/

namespace A296381.P18387354495003751763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A296386 (A167614 (n + 1)).toNat

end

end A296381.P18387354495003751763

/-! ## A296381.P8446321475292013420

`A153675(n+1)*A296386(A167614(n+1))`
-/

namespace A296381.P8446321475292013420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1) * A296386 (A167614 (n + 1)).toNat

end

end A296381.P8446321475292013420

/-! ## A296381.P15042738502354631097

`A296386(A167614(n+1))%A236197(n+1)`
-/

namespace A296381.P15042738502354631097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296386 (A167614 (n + 1)).toNat) (A236197 (n + 1))

end

end A296381.P15042738502354631097

/-!
# A296382: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296382, there is no canonical definition to state claims against.
-/

/-! ## A296382.P1365025368325852809

`A296386(A141214(n)+7)`
-/

namespace A296382.P1365025368325852809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A141214 n + 7).toNat

end

end A296382.P1365025368325852809

/-! ## A296382.P4872142669819427222

`A296386(A052905(n)+9)`
-/

namespace A296382.P4872142669819427222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A052905 n + 9).toNat

end

end A296382.P4872142669819427222

/-! ## A296382.P11960292132534216187

`A296386(A055999(n)+10)`
-/

namespace A296382.P11960292132534216187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A055999 n + 10).toNat

end

end A296382.P11960292132534216187

/-! ## A296382.P10807852469581348350

`A296386(A167614(n+2)+1)`
-/

namespace A296382.P10807852469581348350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A167614 (n + 2) + 1).toNat

end

end A296382.P10807852469581348350

/-! ## A296382.P1384331006361779591

`A296386(A167487(n+2)-3)`
-/

namespace A296382.P1384331006361779591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A167487 (n + 2) - 3).toNat

end

end A296382.P1384331006361779591

/-!
# A296383: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296383, there is no canonical definition to state claims against.
-/

/-! ## A296383.P5000103151028918260

`A296386(∑[n+4]+11)`
-/

namespace A296383.P5000103151028918260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A296383.P5000103151028918260

/-!
# A296384: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296384, there is no canonical definition to state claims against.
-/

/-! ## A296384.P11201525377853882990

`A296386(eq[7, A131818(n+1)])`
-/

namespace A296384.P11201525377853882990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296384.P11201525377853882990

/-! ## A296384.P2330059527151746283

`A296386(Δ[A023545(n+1)]+10)`
-/

namespace A296384.P2330059527151746283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (f1 (n + 1) - f1 n + 10).toNat

end

end A296384.P2330059527151746283

/-! ## A296384.P7296750420857464937

`A296386(A374007(n+1))`
-/

namespace A296384.P7296750420857464937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A374007 (n + 1)).toNat

end

end A296384.P7296750420857464937

/-! ## A296384.P10094187419486958657

`A296386(A052905(n+3))`
-/

namespace A296384.P10094187419486958657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A052905 (n + 3)).toNat

end

end A296384.P10094187419486958657

/-! ## A296384.P7852073749181227487

`A296386(eq[3, A219347(n)])`
-/

namespace A296384.P7852073749181227487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296384.P7852073749181227487

/-!
# A296385: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296385, there is no canonical definition to state claims against.
-/

/-! ## A296385.P4573702985355365876

`A296386(A167487(n+5))`
-/

namespace A296385.P4573702985355365876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A167487 (n + 5)).toNat

end

end A296385.P4573702985355365876

/-! ## A296385.P2230402764403645930

`A296386(eq[8, A131818(n+1)])`
-/

namespace A296385.P2230402764403645930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296385.P2230402764403645930

/-! ## A296385.P14414449713506592859

`A296386(A374008(n+1))`
-/

namespace A296385.P14414449713506592859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A374008 (n + 1)).toNat

end

end A296385.P14414449713506592859

/-! ## A296385.P6148259309203931706

`A296386(A055999(n+4))`
-/

namespace A296385.P6148259309203931706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (A055999 (n + 4)).toNat

end

end A296385.P6148259309203931706

/-! ## A296385.P13293049405400449047

`A296386(eq[4, A219347(n)])`
-/

namespace A296385.P13293049405400449047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296385.P13293049405400449047

/-!
# A296386: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 2 neighboring 1s.

The programs for A296386, there is no canonical definition to state claims against.
-/

/-! ## A296386.P3907341696040268632

`A296643(n+1)-A343958(A314163(n))`
-/

namespace A296386.P3907341696040268632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (n + 1) - A343958 (A314163 n).toNat

end

end A296386.P3907341696040268632

/-! ## A296386.P5918795112726615531

`A296643(n+1)-A343958(A281703(n+1))`
-/

namespace A296386.P5918795112726615531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (n + 1) - A343958 (A281703 (n + 1)).toNat

end

end A296386.P5918795112726615531

/-! ## A296386.P6032713393602158520

`A296643(n+1)-A343958(A083354(n))`
-/

namespace A296386.P6032713393602158520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (n + 1) - A343958 (A083354 n).toNat

end

end A296386.P6032713393602158520

/-! ## A296386.P1118675400745147452

`A296643(n+1)-A336107(A057568(n+4))`
-/

namespace A296386.P1118675400745147452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296643 (n + 1) - A336107 (A057568 (n + 4)).toNat

end

end A296386.P1118675400745147452

/-! ## A296386.P5352497736200870130

`A118759(A296643(n+1))`
-/

namespace A296386.P5352497736200870130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A296643 (n + 1)).toNat

end

end A296386.P5352497736200870130

/-!
# A296387: a(0) = a(1) = 1; a(n) = [x^n] Product_{k=1..n-1} (1 + x^a(k))/(1 - x^a(k)).

The programs for A296387, there is no canonical definition to state claims against.
-/

/-! ## A296387.P6458184823952949890

`A064628(n+1)*A082070(A040014(n+2))`
-/

namespace A296387.P6458184823952949890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1) * A082070 (A040014 (n + 2)).toNat

end

end A296387.P6458184823952949890

/-! ## A296387.P16860451524208559247

`A036453(A004148(n))*A220104(A091964(n))`
-/

namespace A296387.P16860451524208559247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A004148 n).toNat * A220104 (A091964 n).toNat

end

end A296387.P16860451524208559247

/-! ## A296387.P18411000105872850736

`A036453(A088518(n))*A220104(A091964(n))`
-/

namespace A296387.P18411000105872850736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A088518 n).toNat * A220104 (A091964 n).toNat

end

end A296387.P18411000105872850736

/-! ## A296387.P8786286012705397668

`A107393(A003480(n))+A029744(n+1)`
-/

namespace A296387.P8786286012705397668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A003480 n).toNat + A029744 (n + 1)

end

end A296387.P8786286012705397668

/-! ## A296387.P16039009160623370731

`A358478(A006450(n+1))+A000041(n)`
-/

namespace A296387.P16039009160623370731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358478 (A006450 (n + 1)).toNat + A000041 n

end

end A296387.P16039009160623370731

/-!
# A296388: a(1) = a(3) = 1, a(2) = a(4) = 3, a(5) = 4; a(n) = n - a(n-a(n-1)) - a(n-a(n-4)) for n > 5.

The programs for A296388, the canonical program `A296388.P2893926572430254787` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296388 has offset 1).

The definition of A296388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(n-a(n-1))-a(n-a(n-4))` (program `A296388.P2893926572430254787`, by `A296388.P2893926572430254787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296388.P2893926572430254787

`n+1-a(n-a(n-1))-a(n-a(n-4))` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A296388

/-- `n+1-a(n-a(n-1))-a(n-a(n-4))` -/
def P2893926572430254787.Spec : Prop :=
  ∀ n, P2893926572430254787.a n = A296388 (n + 1)

theorem P2893926572430254787.correct : P2893926572430254787.Spec := by
  intro n
  simp only [A296388, Nat.add_sub_cancel]

end A296388

/-!
# A296389: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1's.

The programs for A296389, there is no canonical definition to state claims against.
-/

/-! ## A296389.P10293199645399938631

`A296396(∑[4*n]+1)`
-/

namespace A296389.P10293199645399938631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296389.P10293199645399938631

/-! ## A296389.P11371037899815544691

`record[A296396(A330613(n+1))]`
-/

namespace A296389.P11371037899815544691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296389.P11371037899815544691

/-! ## A296389.P4272171876582703559

`A296396(A001844(n))+A185284(n)`
-/

namespace A296389.P4272171876582703559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A001844 n).toNat + A185284 n

end

end A296389.P4272171876582703559

/-! ## A296389.P9603242465250506488

`A296396(A001844(n))^A178489(n)`
-/

namespace A296389.P9603242465250506488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296396 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A296389.P9603242465250506488

/-! ## A296389.P10917817037076250632

`lcm(A219347(n), A296396(A001844(n)))`
-/

namespace A296389.P10917817037076250632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A296396 (A001844 n).toNat)

end

end A296389.P10917817037076250632

/-!
# A296390: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1's.

The programs for A296390, there is no canonical definition to state claims against.
-/

/-! ## A296390.P9451535194685014011

`A296396(∑[n+1]+2)`
-/

namespace A296390.P9451535194685014011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296390.P9451535194685014011

/-! ## A296390.P2834642065907135551

`record[gcd(A002262(n), A296396(n+2))]`
-/

namespace A296390.P2834642065907135551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A296396 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296390.P2834642065907135551

/-! ## A296390.P1852344797081500370

`record[A296396(A008805(n)-A023443(n))]`
-/

namespace A296390.P1852344797081500370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A008805 n - A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296390.P1852344797081500370

/-! ## A296390.P17231236988362474849

`record[A296396(abs(A201163(n)))]`
-/

namespace A296390.P17231236988362474849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296390.P17231236988362474849

/-! ## A296390.P731534126262142025

`lcm(A015343(n), A296396(A000096(n+1)))`
-/

namespace A296390.P731534126262142025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015343 n) (A296396 (A000096 (n + 1)).toNat)

end

end A296390.P731534126262142025

/-!
# A296391: Number of nX3 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296391, there is no canonical definition to state claims against.
-/

/-! ## A296391.P6243055351941408620

`A296396(∑[n+2]+4)`
-/

namespace A296391.P6243055351941408620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296391.P6243055351941408620

/-! ## A296391.P2190897109513336708

`A296396(A167614(n+1))+A185246(n)`
-/

namespace A296391.P2190897109513336708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A167614 (n + 1)).toNat + A185246 n

end

end A296391.P2190897109513336708

/-! ## A296391.P620824996452543584

`lcm(A033999(n), A296396(A167614(n+1)))`
-/

namespace A296391.P620824996452543584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A296396 (A167614 (n + 1)).toNat)

end

end A296391.P620824996452543584

/-! ## A296391.P18226950591606852775

`A296396(A167614(n+1))+A034499(n+1)`
-/

namespace A296391.P18226950591606852775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A167614 (n + 1)).toNat + A034499 (n + 1)

end

end A296391.P18226950591606852775

/-! ## A296391.P10877232099583674421

`A296396(A167614(n+1))%A127369(n+1)`
-/

namespace A296391.P10877232099583674421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296396 (A167614 (n + 1)).toNat) (A127369 (n + 1))

end

end A296391.P10877232099583674421

/-!
# A296392: Number of nX4 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296392, there is no canonical definition to state claims against.
-/

/-! ## A296392.P15468231935281751318

`A296396(A374004(n+1))`
-/

namespace A296392.P15468231935281751318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A374004 (n + 1)).toNat

end

end A296392.P15468231935281751318

/-! ## A296392.P15719142203158491814

`A296396(A141214(n)+7)`
-/

namespace A296392.P15719142203158491814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A141214 n + 7).toNat

end

end A296392.P15719142203158491814

/-! ## A296392.P8764997071723381724

`A296396(A052905(n)+9)`
-/

namespace A296392.P8764997071723381724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A052905 n + 9).toNat

end

end A296392.P8764997071723381724

/-! ## A296392.P17056390281303163934

`A296396(A055999(n)+10)`
-/

namespace A296392.P17056390281303163934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A055999 n + 10).toNat

end

end A296392.P17056390281303163934

/-! ## A296392.P11499557338291165175

`A296396(A167614(n+2)+1)`
-/

namespace A296392.P11499557338291165175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A167614 (n + 2) + 1).toNat

end

end A296392.P11499557338291165175

/-!
# A296393: Number of nX5 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296393, there is no canonical definition to state claims against.
-/

/-! ## A296393.P4823273058893073309

`A296396(∑[n+4]+11)`
-/

namespace A296393.P4823273058893073309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A296393.P4823273058893073309

/-!
# A296394: Number of nX6 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296394, there is no canonical definition to state claims against.
-/

/-! ## A296394.P12388465021311290635

`A296396(A374007(n+1))`
-/

namespace A296394.P12388465021311290635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A374007 (n + 1)).toNat

end

end A296394.P12388465021311290635

/-! ## A296394.P10892830306055430746

`A296396(eq[7, A131818(n+1)])`
-/

namespace A296394.P10892830306055430746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296394.P10892830306055430746

/-! ## A296394.P10759909214947650260

`A296396(A052905(n+3))`
-/

namespace A296394.P10759909214947650260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A052905 (n + 3)).toNat

end

end A296394.P10759909214947650260

/-! ## A296394.P11730737383184731109

`A296396(eq[5, A193592(n)])`
-/

namespace A296394.P11730737383184731109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296394.P11730737383184731109

/-! ## A296394.P2483137913385057378

`A296396(A000096(n+5)-4)`
-/

namespace A296394.P2483137913385057378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A000096 (n + 5) - 4).toNat

end

end A296394.P2483137913385057378

/-!
# A296395: Number of nX7 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296395, there is no canonical definition to state claims against.
-/

/-! ## A296395.P1134580139797189290

`A296396(A374008(n+1))`
-/

namespace A296395.P1134580139797189290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A374008 (n + 1)).toNat

end

end A296395.P1134580139797189290

/-! ## A296395.P11505450693520916500

`A296396(A000096(n+5)+8)`
-/

namespace A296395.P11505450693520916500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A000096 (n + 5) + 8).toNat

end

end A296395.P11505450693520916500

/-! ## A296395.P6622588804559544489

`A296396(A000217(n+6)+7)`
-/

namespace A296395.P6622588804559544489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A000217 (n + 6) + 7).toNat

end

end A296395.P6622588804559544489

/-! ## A296395.P2164598866476316624

`A296396(eq[8, A131818(n+1)])`
-/

namespace A296395.P2164598866476316624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296395.P2164598866476316624

/-! ## A296395.P13082798608725499073

`A296396(A055999(n+4))`
-/

namespace A296395.P13082798608725499073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296396 (A055999 (n + 4)).toNat

end

end A296395.P13082798608725499073

/-!
# A296396: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 1 or 3 neighboring 1s.

The programs for A296396, there is no canonical definition to state claims against.
-/

/-! ## A296396.P67106984819609300

`A339861(A295205(3*n+2))+A296320(n+1)`
-/

namespace A296396.P67106984819609300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339861 (A295205 (3 * n + 2)).toNat + A296320 (n + 1)

end

end A296396.P67106984819609300

/-! ## A296396.P7749369577114776555

`A347932(A196696(n+1))-3`
-/

namespace A296396.P7749369577114776555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347932 (A196696 (n + 1)).toNat - 3

end

end A296396.P7749369577114776555

/-! ## A296396.P3991037897769560304

`A183442(n+1)+A083905(A022183(n))`
-/

namespace A296396.P3991037897769560304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183442 (n + 1) + A083905 (A022183 n).toNat

end

end A296396.P3991037897769560304

/-! ## A296396.P7301018434722466672

`A296320(n+1)+A102683(A071270(n))`
-/

namespace A296396.P7301018434722466672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (n + 1) + A102683 (A071270 n).toNat

end

end A296396.P7301018434722466672

/-! ## A296396.P2497093860212172415

`A296320(n+1)+A288997(A051286(n))`
-/

namespace A296396.P2497093860212172415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296320 (n + 1) + A288997 (A051286 n).toNat

end

end A296396.P2497093860212172415

/-!
# A296397: a(n) = a(n-1) * a(n-2) + a(n-3) * Product_{k=0..n-4} a(k)^2, with a(0) = a(1) = 1, a(2) = 2.

The programs for A296397, there is no canonical definition to state claims against.
-/

/-! ## A296397.P2178854910480611956

`A191377(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A296397.P2178854910480611956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A191377 (a (n - 1)).toNat

end

end A296397.P2178854910480611956

/-! ## A296397.P1015710227010569655

`A325327(ceil(n*a(n-1)/∑[n%2]))` with `a(0)=1`
-/

namespace A296397.P1015710227010569655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325327 ⌈(n : ℚ) * ((a (n - 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))⌉.toNat

end

end A296397.P1015710227010569655

/-! ## A296397.P11137468984415151011

`A012884(A130581(n))`
-/

namespace A296397.P11137468984415151011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (A130581 n).toNat

end

end A296397.P11137468984415151011

/-!
# A296398: Number of n X n 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1's.

The programs for A296398, there is no canonical definition to state claims against.
-/

/-! ## A296398.P12694087362081327164

`A296405(∑[4*n]+1)`
-/

namespace A296398.P12694087362081327164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296398.P12694087362081327164

/-! ## A296398.P17674245030184085425

`record[A003982(n)*A296405(n+1)]`
-/

namespace A296398.P17674245030184085425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296398.P17674245030184085425

/-! ## A296398.P16971162291290211947

`A257462(n)*A296405(A001844(n))`
-/

namespace A296398.P16971162291290211947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 n * A296405 (A001844 n).toNat

end

end A296398.P16971162291290211947

/-! ## A296398.P8708308302251368872

`or(A003982(n), A296405(A001844(n)))`
-/

namespace A296398.P8708308302251368872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A296405 (A001844 n).toNat)

end

end A296398.P8708308302251368872

/-! ## A296398.P6525147533806475276

`A296405(A001844(n))+A070140(n+1)`
-/

namespace A296398.P6525147533806475276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (A001844 n).toNat + A070140 (n + 1)

end

end A296398.P6525147533806475276

/-!
# A296399: Number of n X 2 0..1 arrays with each 1 horizontally, vertically or antidiagonally adjacent to 2 or 3 neighboring 1s.

The programs for A296399, there is no canonical definition to state claims against.
-/

/-! ## A296399.P15573290822148565643

`record[ratio[A296405(n+1)]]`
-/

namespace A296399.P15573290822148565643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296399.P15573290822148565643

/-! ## A296399.P16201325179212762189

`A296405(∑[n+1]+2)`
-/

namespace A296399.P16201325179212762189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296405 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296399.P16201325179212762189

/-! ## A296399.P6673011157399910036

`record[A296405(n+1)/A029847(n)]`
-/

namespace A296399.P6673011157399910036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296405 (n + 1) : ℚ) / (A029847 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296399.P6673011157399910036

/-! ## A296399.P4744971595680021109

`record[A296405(n+2)/A296405(n+1)]`
-/

namespace A296399.P4744971595680021109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296405 (n + 2) : ℚ) / (A296405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296399.P4744971595680021109

/-! ## A296399.P13032320972838997886

`char[A125976(n)]*A296405(A133263(n+1))`
-/

namespace A296399.P13032320972838997886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A296405 (A133263 (n + 1)).toNat

end

end A296399.P13032320972838997886

