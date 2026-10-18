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
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A063801: Number of nonisomorphic oriented matroids with n points in 3 dimensions.

The programs for A063801, there is no canonical definition to state claims against.
-/

/-! ## A063801.P11657757249249980198

`A063804(∑[n+2]+2)`
-/

namespace A063801.P11657757249249980198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A063801.P11657757249249980198

/-!
# A063804: Triangle T(n,k) (n >= 3, k = 1..n-2) read by rows, giving number of nonisomorphic oriented matroids with n points in n-k dimensions.

The programs for A063804, there is no canonical definition to state claims against.
-/

/-! ## A063804.P2868019797827329110

`A291295(A008949(n)+1)`
-/

namespace A063804.P2868019797827329110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291295 (A008949 n + 1).toNat

end

end A063804.P2868019797827329110

/-! ## A063804.P1069225436793699367

`A251556(A247358(n+1))`
-/

namespace A063804.P1069225436793699367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251556 (A247358 (n + 1)).toNat

end

end A063804.P1069225436793699367

/-! ## A063804.P4246155613206252179

`A213800(n+1)-A102683(A005585(n+1))`
-/

namespace A063804.P4246155613206252179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213800 (n + 1) - A102683 (A005585 (n + 1)).toNat

end

end A063804.P4246155613206252179

/-! ## A063804.P7290326977246047695

`A072649(n^A324362(n))-A102683(A005585(n+1))`
-/

namespace A063804.P7290326977246047695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A324362 n : ℤ))).toNat - A102683 (A005585 (n + 1)).toNat

end

end A063804.P7290326977246047695

/-!
# A063805: Number of nonisomorphic oriented matroids with n points in dimensions 2 through n-1.

The programs for A063805, there is no canonical definition to state claims against.
-/

/-! ## A063805.P12383534119614069197

`∑[A080222(A024537(n))]`
-/

namespace A063805.P12383534119614069197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080222 (A024537 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063805.P12383534119614069197

/-!
# A063806: Numbers with a prime number of proper divisors.

The programs for A063806, the canonical program `A063806.P12972369782176506399` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063806 has offset 1).

The definition of A063806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063806.P8011908934185023578

`eq[1, A053989(A000005(n+1))]+1`
-/

namespace A063806.P8011908934185023578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063806.P8011908934185023578

namespace A063806

/-- `eq[1, A053989(A000005(n+1))]+1` -/
def P8011908934185023578.Spec : Prop :=
  ∀ n, (P8011908934185023578.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P10051381520855349209

`eq[2, A000005(A000005(n+2)-1)]+2`
-/

namespace A063806.P10051381520855349209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A063806.P10051381520855349209

namespace A063806

/-- `eq[2, A000005(A000005(n+2)-1)]+2` -/
def P10051381520855349209.Spec : Prop :=
  ∀ n, (P10051381520855349209.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P1461875485711814295

`lt[2, A020639(a(A000005(n)-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A063806.P1461875485711814295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A020639 (f2 (A000005 n - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A063806.P1461875485711814295

namespace A063806

/-- `lt[2, A020639(a(A000005(n)-1)+1)]` -/
def P1461875485711814295.Spec : Prop :=
  ∀ n, (P1461875485711814295.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P12972369782176506399

`eq[1, ∏{e}[∏{e}[n, #+1]-1, #+1]-1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063806

/-- `eq[1, ∏{e}[∏{e}[n, #+1]-1, #+1]-1]` -/
def P12972369782176506399.Spec : Prop :=
  ∀ n, (P12972369782176506399.a n : ℤ) = A063806 (n + 1)

theorem P12972369782176506399.correct : P12972369782176506399.Spec := by
  intro n
  simp only [A063806, Nat.add_sub_cancel]

end A063806

/-! ## A063806.P3662216126016342926

`eq[1, A003415(∑{d}[n, (n+1)%#])]`
-/

namespace A063806.P3662216126016342926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f3 n), (n + 1) % d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P3662216126016342926

namespace A063806

/-- `eq[1, A003415(∑{d}[n, (n+1)%#])]` -/
def P3662216126016342926.Spec : Prop :=
  ∀ n, (P3662216126016342926.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P13676696162710258485

`eq[1, A003415(A032741(n))]`
-/

namespace A063806.P13676696162710258485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P13676696162710258485

namespace A063806

/-- `eq[1, A003415(A032741(n))]` -/
def P13676696162710258485.Spec : Prop :=
  ∀ n, (P13676696162710258485.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P1396750838563472950

`eq[2, A032741(A032741(n)²)]`
-/

namespace A063806.P1396750838563472950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P1396750838563472950

namespace A063806

/-- `eq[2, A032741(A032741(n)²)]` -/
def P1396750838563472950.Spec : Prop :=
  ∀ n, (P1396750838563472950.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P14899997689919778000

`eq[1, A032741(A325765(n))]+1`
-/

namespace A063806.P14899997689919778000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A325765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063806.P14899997689919778000

namespace A063806

/-- `eq[1, A032741(A325765(n))]+1` -/
def P14899997689919778000.Spec : Prop :=
  ∀ n, (P14899997689919778000.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P1290730258532517178

`eq[2, A284289(2*A032741(n))]`
-/

namespace A063806.P1290730258532517178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P1290730258532517178

namespace A063806

/-- `eq[2, A284289(2*A032741(n))]` -/
def P1290730258532517178.Spec : Prop :=
  ∀ n, (P1290730258532517178.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P12650143827870025010

`eq[2, A319410(A319410(n)/2)]`
-/

namespace A063806.P12650143827870025010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (SequenceMachineLib.roundAway ((A319410 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P12650143827870025010

namespace A063806

/-- `eq[2, A319410(A319410(n)/2)]` -/
def P12650143827870025010.Spec : Prop :=
  ∀ n, (P12650143827870025010.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P3159902092405274827

`eq[1, ∑{d}[A032741(n), A032741(#)]]`
-/

namespace A063806.P3159902092405274827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, A032741 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P3159902092405274827

namespace A063806

/-- `eq[1, ∑{d}[A032741(n), A032741(#)]]` -/
def P3159902092405274827.Spec : Prop :=
  ∀ n, (P3159902092405274827.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P6723200779331364525

`eq[1, A001222(Δ[A325459(n)]+1)]+1`
-/

namespace A063806.P6723200779331364525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063806.P6723200779331364525

namespace A063806

/-- `eq[1, A001222(Δ[A325459(n)]+1)]+1` -/
def P6723200779331364525.Spec : Prop :=
  ∀ n, (P6723200779331364525.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P16871023326745433251

`eq[1, A001222(A070824(n+1)+1)]+1`
-/

namespace A063806.P16871023326745433251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070824 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063806.P16871023326745433251

namespace A063806

/-- `eq[1, A001222(A070824(n+1)+1)]+1` -/
def P16871023326745433251.Spec : Prop :=
  ∀ n, (P16871023326745433251.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P8966385230278842572

`eq[A032741(A032741(n)), A158388(n)]`
-/

namespace A063806.P8966385230278842572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063806.P8966385230278842572

namespace A063806

/-- `eq[A032741(A032741(n)), A158388(n)]` -/
def P8966385230278842572.Spec : Prop :=
  ∀ n, (P8966385230278842572.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P3506234517425888822

`lt[A055671(n), A055671(A032741(n))]`
-/

namespace A063806.P3506234517425888822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063806.P3506234517425888822

namespace A063806

/-- `lt[A055671(n), A055671(A032741(n))]` -/
def P3506234517425888822.Spec : Prop :=
  ∀ n, (P3506234517425888822.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P3717781308044117469

`eq[1, A032741(A032741(n)+A000007(n))]`
-/

namespace A063806.P3717781308044117469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + A000007 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P3717781308044117469

namespace A063806

/-- `eq[1, A032741(A032741(n)+A000007(n))]` -/
def P3717781308044117469.Spec : Prop :=
  ∀ n, (P3717781308044117469.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P11767917406337804902

`eq[1, A032741(A032741(n))+A000038(n)]`
-/

namespace A063806.P11767917406337804902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n).toNat + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P11767917406337804902

namespace A063806

/-- `eq[1, A032741(A032741(n))+A000038(n)]` -/
def P11767917406337804902.Spec : Prop :=
  ∀ n, (P11767917406337804902.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P15109265601901137564

`eq[A032741(n), A051698(A032741(n)+1)]`
-/

namespace A063806.P15109265601901137564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063806.P15109265601901137564

namespace A063806

/-- `eq[A032741(n), A051698(A032741(n)+1)]` -/
def P15109265601901137564.Spec : Prop :=
  ∀ n, (P15109265601901137564.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P10670081020407167379

`eq[A032741(A032741(n)), A057427(n+1)]`
-/

namespace A063806.P10670081020407167379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063806.P10670081020407167379

namespace A063806

/-- `eq[A032741(A032741(n)), A057427(n+1)]` -/
def P10670081020407167379.Spec : Prop :=
  ∀ n, (P10670081020407167379.a n : ℤ) = A063806 (n + 1)

end A063806

/-! ## A063806.P1345581860231833054

`eq[2, A323436(A319410(n))]`
-/

namespace A063806.P1345581860231833054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A319410 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P1345581860231833054

namespace A063806

/-- `eq[2, A323436(A319410(n))]` -/
def P1345581860231833054.Spec : Prop :=
  ∀ n, (P1345581860231833054.a n : ℤ) = A063806 (n + 1)

end A063806

/-!
# A063807: a(0) = 0, a(n+1) = a(n) + next prime larger than a(n).

The programs for A063807, there is no canonical definition to state claims against.
-/

/-! ## A063807.P18002603445991369376

`∑[A070218(A028310(n))]-2`
-/

namespace A063807.P18002603445991369376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070218 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A063807.P18002603445991369376

/-! ## A063807.P5946469500715605699

`∑[A057427(n)*A070218(A028310(n))]`
-/

namespace A063807.P5946469500715605699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A070218 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063807.P5946469500715605699

/-! ## A063807.P2267953565504347982

`∑[A070218(A028310(n))%A134694(n)]`
-/

namespace A063807.P2267953565504347982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070218 (A028310 n).toNat) (A134694 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063807.P2267953565504347982

/-! ## A063807.P2675530594805108522

`∑[A019427(2*n)*A070218(A028310(n))]`
-/

namespace A063807.P2675530594805108522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n) * A070218 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063807.P2675530594805108522

/-! ## A063807.P4590228939428818106

`∑[A070218(n+1)]-A070218(n+1)`
-/

namespace A063807.P4590228939428818106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070218 (n + 1)

end

end A063807.P4590228939428818106

/-! ## A063807.P1449776292312120983

`∑[A002828(n²)*A070218(A028310(n))]`
-/

namespace A063807.P1449776292312120983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A070218 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063807.P1449776292312120983

/-!
# A063808: Spherical growth series for Z as generated by {2, 3}.

The programs for A063808, the canonical program `A063808.P12884231742634146997` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063808 has offset 0).

The definition of A063808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063808.P12884231742634146997

`a(n-1)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063808

/-- `a(n-1)` -/
def P12884231742634146997.Spec : Prop :=
  ∀ n, (P12884231742634146997.a n : ℤ) = A063808 n

theorem P12884231742634146997.correct : P12884231742634146997.Spec := by
  intro n
  simp only [A063808]

end A063808

/-!
# A063810: Growth series for Heisenberg group.

The programs for A063810, there is no canonical definition to state claims against.
-/

/-! ## A063810.P4796852660714380116

`A302594(A008155(n))`
-/

namespace A063810.P4796852660714380116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302594 (A008155 n).toNat

end

end A063810.P4796852660714380116

/-! ## A063810.P12886622574044521297

`A130446(∑[∑[A117557(n)]])`
-/

namespace A063810.P12886622574044521297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063810.P12886622574044521297

/-!
# A063812: Growth series for fundamental group of orientable closed surface of genus 2.

The programs for A063812, there is no canonical definition to state claims against.
-/

/-! ## A063812.P4103716960352429536

`floor((A325425(7^n+2)-3)/ϕ)`
-/

namespace A063812.P4103716960352429536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325425 (7 ^ n + 2) - 3 : ℝ) / Real.goldenRatio⌋

end

end A063812.P4103716960352429536

/-!
# A063813: Growth series for fundamental group of orientable closed surface of genus 3.

The programs for A063813, there is no canonical definition to state claims against.
-/

/-! ## A063813.P5923062590648260723

`A003954(n)-A054908(A356952(n))`
-/

namespace A063813.P5923062590648260723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003954 n - A054908 (A356952 n).toNat

end

end A063813.P5923062590648260723

/-! ## A063813.P2971728123525333798

`A003954(n)-A294265(A367661(n))`
-/

namespace A063813.P2971728123525333798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003954 n - A294265 (A367661 n).toNat

end

end A063813.P2971728123525333798

/-! ## A063813.P12639468302375541260

`A003954(n)-A341743(A128154(2*(n+2)))`
-/

namespace A063813.P12639468302375541260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003954 n - A341743 (A128154 (2 * (n + 2))).toNat

end

end A063813.P12639468302375541260

/-!
# A063814: Growth series for fundamental group of orientable closed surface of genus 4.

The programs for A063814, there is no canonical definition to state claims against.
-/

/-! ## A063814.P2586378998891662096

`and(A165876(n), A165884(A004767(n)))`
-/

namespace A063814.P2586378998891662096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165876 n) (A165884 (A004767 n).toNat)

end

end A063814.P2586378998891662096

/-! ## A063814.P4258053001166079090

`and(A165884(A004767(n)), A166410(n))`
-/

namespace A063814.P4258053001166079090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165884 (A004767 n).toNat) (A166410 n)

end

end A063814.P4258053001166079090

/-! ## A063814.P11531243890337430839

`and(A165884(A004767(n)), A167026(n))`
-/

namespace A063814.P11531243890337430839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165884 (A004767 n).toNat) (A167026 n)

end

end A063814.P11531243890337430839

/-! ## A063814.P11671401832356711618

`and(A165884(A004767(n)), A167117(n))`
-/

namespace A063814.P11671401832356711618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165884 (A004767 n).toNat) (A167117 n)

end

end A063814.P11671401832356711618

/-!
# A063823: Expansion of g.f. (1 - 2*x^2 - 3*x^3)/((1 - x^3)*(1 - 2*x)).

The programs for A063823, the canonical program `A063823.P773999138711268093` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063823 has offset 0).

The definition of A063823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063823.P10514091999943438148

`a(n-3)+2^(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A063823.P10514091999943438148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A063823.P10514091999943438148

namespace A063823

/-- `a(n-3)+2^(n-3)` -/
def P10514091999943438148.Spec : Prop :=
  ∀ n, P10514091999943438148.a n = (A063823 n : ℚ)

end A063823

/-! ## A063823.P773999138711268093

`2*(a(n-1)-abs(1-n%3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063823

/-- `2*(a(n-1)-abs(1-n%3))` -/
def P773999138711268093.Spec : Prop :=
  ∀ n, P773999138711268093.a n = A063823 n

theorem P773999138711268093.correct : P773999138711268093.Spec := by
  intro n
  simp only [A063823]

end A063823

/-! ## A063823.P6258198663068347666

`2*(a(n-1)-gcd(3, 1-n)%3)` with `a(0)=1`
-/

namespace A063823.P6258198663068347666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((Int.gcd 3 (1 - (n : ℤ)) % 3 : ℕ) : ℤ))

end

end A063823.P6258198663068347666

namespace A063823

/-- `2*(a(n-1)-gcd(3, 1-n)%3)` -/
def P6258198663068347666.Spec : Prop :=
  ∀ n, P6258198663068347666.a n = A063823 n

end A063823

/-! ## A063823.P11836145392305505899

`A152732(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A063823.P11836145392305505899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A152732 (n - 1) + a (n - 1)

end

end A063823.P11836145392305505899

namespace A063823

/-- `A152732(n-1)+a(n-1)` -/
def P11836145392305505899.Spec : Prop :=
  ∀ n, P11836145392305505899.a n = A063823 n

end A063823

/-! ## A063823.P3141428191300018035

`2*(a(n-1)-and(1, A000032(n-1)))` with `a(0)=1`
-/

namespace A063823.P3141428191300018035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - Int.land 1 (A000032 (n - 1)))

end

end A063823.P3141428191300018035

namespace A063823

/-- `2*(a(n-1)-and(1, A000032(n-1)))` -/
def P3141428191300018035.Spec : Prop :=
  ∀ n, P3141428191300018035.a n = A063823 n

end A063823

/-! ## A063823.P11138507399262809102

`2*(a(n-1)-and(1, A000045(n-1)))` with `a(0)=1`
-/

namespace A063823.P11138507399262809102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - Int.land 1 (A000045 (n - 1)))

end

end A063823.P11138507399262809102

namespace A063823

/-- `2*(a(n-1)-and(1, A000045(n-1)))` -/
def P11138507399262809102.Spec : Prop :=
  ∀ n, P11138507399262809102.a n = A063823 n

end A063823

/-! ## A063823.P9504580341466562522

`A155803(n)+A130196(n)`
-/

namespace A063823.P9504580341466562522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 n + A130196 n

end

end A063823.P9504580341466562522

namespace A063823

/-- `A155803(n)+A130196(n)` -/
def P9504580341466562522.Spec : Prop :=
  ∀ n, P9504580341466562522.a n = A063823 n

end A063823

/-! ## A063823.P9142764806573539597

`ceil((2^n+6)/7)`
-/

namespace A063823.P9142764806573539597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n + 6 : ℚ) / 7⌉

end

end A063823.P9142764806573539597

namespace A063823

/-- `ceil((2^n+6)/7)` -/
def P9142764806573539597.Spec : Prop :=
  ∀ n, P9142764806573539597.a n = A063823 n

end A063823

/-! ## A063823.P12351567104556874004

`round(A188165(n)/7)`
-/

namespace A063823.P12351567104556874004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A188165 n : ℚ) / 7)

end

end A063823.P12351567104556874004

namespace A063823

/-- `round(A188165(n)/7)` -/
def P12351567104556874004.Spec : Prop :=
  ∀ n, P12351567104556874004.a n = A063823 n

end A063823

/-! ## A063823.P6496043148003759646

`ceil(A000225(n)/7)+1`
-/

namespace A063823.P6496043148003759646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) / 7⌉ + 1

end

end A063823.P6496043148003759646

namespace A063823

/-- `ceil(A000225(n)/7)+1` -/
def P6496043148003759646.Spec : Prop :=
  ∀ n, P6496043148003759646.a n = A063823 n

end A063823

/-! ## A063823.P12879056362579179427

`A033138(n+1)+2-A052935(n)`
-/

namespace A063823.P12879056362579179427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n + 1) + (2 - A052935 n)

end

end A063823.P12879056362579179427

namespace A063823

/-- `A033138(n+1)+2-A052935(n)` -/
def P12879056362579179427.Spec : Prop :=
  ∀ n, P12879056362579179427.a n = A063823 n

end A063823

/-! ## A063823.P18120284186811973817

`ceil(floor(A077947(n+2)/4)/4)+1`
-/

namespace A063823.P18120284186811973817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A077947 (n + 2) : ℚ) / 4⌋ : ℚ) / 4⌉ + 1

end

end A063823.P18120284186811973817

namespace A063823

/-- `ceil(floor(A077947(n+2)/4)/4)+1` -/
def P18120284186811973817.Spec : Prop :=
  ∀ n, P18120284186811973817.a n = A063823 n

end A063823

/-! ## A063823.P12664482603018917843

`A155803(n)+A131534(n²)`
-/

namespace A063823.P12664482603018917843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 n + A131534 (n ^ 2)

end

end A063823.P12664482603018917843

namespace A063823

/-- `A155803(n)+A131534(n²)` -/
def P12664482603018917843.Spec : Prop :=
  ∀ n, P12664482603018917843.a n = A063823 n

end A063823

/-!
# A063824: Numbers k such that sigma(phi(k^3)) = phi(sigma(k^3)).

The programs for A063824, there is no canonical definition to state claims against.
-/

/-! ## A063824.P6401244508447664502

`A246035(A329627(n))`
-/

namespace A063824.P6401244508447664502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246035 (A329627 n).toNat

end

end A063824.P6401244508447664502

/-! ## A063824.P8339059915955888245

`A246035(A108981(n)-1)`
-/

namespace A063824.P8339059915955888245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246035 (A108981 n - 1).toNat

end

end A063824.P8339059915955888245

/-! ## A063824.P2994709241842517370

`A246035(xor(1, A108981(n)))`
-/

namespace A063824.P2994709241842517370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246035 (Int.xor 1 (A108981 n)).toNat

end

end A063824.P2994709241842517370

/-!
# A063826: Let 1, 2, 3, 4 represent moves to the right, down, left and up; this sequence describes the movements in the clockwise square spiral (a.k.a. Ulam Spiral).

The programs for A063826, the canonical program `A063826.P4687858328118668891` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063826 has offset 0).

The definition of A063826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063826.P10806371187047581821

`and(3, floor(1/Δ[sqrt(n)])-1)+1`
-/

namespace A063826.P10806371187047581821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1) + 1

end

end A063826.P10806371187047581821

namespace A063826

/-- `and(3, floor(1/Δ[sqrt(n)])-1)+1` -/
def P10806371187047581821.Spec : Prop :=
  ∀ n, P10806371187047581821.a n = A063826 n

end A063826

/-! ## A063826.P4687858328118668891

`(floor(sqrt(4*n+1))-1)%4+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063826

/-- `(floor(sqrt(4*n+1))-1)%4+1` -/
def P4687858328118668891.Spec : Prop :=
  ∀ n, P4687858328118668891.a n = A063826 n

theorem P4687858328118668891.correct : P4687858328118668891.Spec := by
  intro n
  simp only [A063826]

end A063826

/-! ## A063826.P1981230628734348627

`A324736(and(3, floor(sqrt(4*n+1))-1))`
-/

namespace A063826.P1981230628734348627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324736 (Int.land 3 ((Nat.sqrt (4 * n + 1) : ℤ) - 1)).toNat

end

end A063826.P1981230628734348627

namespace A063826

/-- `A324736(and(3, floor(sqrt(4*n+1))-1))` -/
def P1981230628734348627.Spec : Prop :=
  ∀ n, P1981230628734348627.a n = A063826 n

end A063826

/-! ## A063826.P5210974595185414840

`A010883(A055086(n))`
-/

namespace A063826.P5210974595185414840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A055086 n).toNat

end

end A063826.P5210974595185414840

namespace A063826

/-- `A010883(A055086(n))` -/
def P5210974595185414840.Spec : Prop :=
  ∀ n, P5210974595185414840.a n = A063826 n

end A063826

/-! ## A063826.P9340438753407677821

`A065338(a(A056847(n))+1)` with `a(0)=1`
-/

namespace A063826.P9340438753407677821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065338 (a (A056847 n).toNat + 1).toNat

end

end A063826.P9340438753407677821

namespace A063826

/-- `A065338(a(A056847(n))+1)` -/
def P9340438753407677821.Spec : Prop :=
  ∀ n, P9340438753407677821.a n = A063826 n

end A063826

/-! ## A063826.P17696005900091546912

`A003586(and(3, A000267(n)-1)+1)`
-/

namespace A063826.P17696005900091546912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (Int.land 3 (A000267 n - 1) + 1).toNat

end

end A063826.P17696005900091546912

namespace A063826

/-- `A003586(and(3, A000267(n)-1)+1)` -/
def P17696005900091546912.Spec : Prop :=
  ∀ n, P17696005900091546912.a n = A063826 n

end A063826

/-! ## A063826.P12133191687199784666

`A252753(and(3, n+1-A083479(n+1)))`
-/

namespace A063826.P12133191687199784666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (Int.land 3 ((n + 1 : ℤ) - A083479 (n + 1))).toNat

end

end A063826.P12133191687199784666

namespace A063826

/-- `A252753(and(3, n+1-A083479(n+1)))` -/
def P12133191687199784666.Spec : Prop :=
  ∀ n, P12133191687199784666.a n = A063826 n

end A063826

/-! ## A063826.P1746819136318698320

`A319653(char[∑[A008619(n)]]+a(n-1))` with `a(0)=1`
-/

namespace A063826.P1746819136318698320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A319653 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + a (n - 1)).toNat

end

end A063826.P1746819136318698320

namespace A063826

/-- `A319653(char[∑[A008619(n)]]+a(n-1))` -/
def P1746819136318698320.Spec : Prop :=
  ∀ n, P1746819136318698320.a n = A063826 n

end A063826

/-! ## A063826.P6670882724128628332

`A257023(A257018(A000267(n)))`
-/

namespace A063826.P6670882724128628332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (A257018 (A000267 n).toNat).toNat

end

end A063826.P6670882724128628332

namespace A063826

/-- `A257023(A257018(A000267(n)))` -/
def P6670882724128628332.Spec : Prop :=
  ∀ n, P6670882724128628332.a n = A063826 n

end A063826

/-!
# A063827: a(n) = round(sqrt(a(n-2)^2 + a(n-1)^2)) with a(0) = 1 and a(1) = 2.

The programs for A063827, the canonical program `A063827.P9213320766622095947` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063827 has offset 0).

The definition of A063827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063827.P9213320766622095947

`round(sqrt(a(n-2)²+a(n-1)²))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063827

/-- `round(sqrt(a(n-2)²+a(n-1)²))` -/
def P9213320766622095947.Spec : Prop :=
  ∀ n, P9213320766622095947.a n = A063827 n

theorem P9213320766622095947.correct : P9213320766622095947.Spec := by
  intro n
  simp only [A063827]

end A063827

/-! ## A063827.P624785425153196588

`A104803(n+1)-A000035(p?[round(8*n/7)]²)`
-/

namespace A063827.P624785425153196588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104803 (n + 1) - A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A063827.P624785425153196588

namespace A063827

/-- `A104803(n+1)-A000035(p?[round(8*n/7)]²)` -/
def P624785425153196588.Spec : Prop :=
  ∀ n, P624785425153196588.a n = A063827 n

end A063827

/-! ## A063827.P9838563898011847946

`A104803(n+1)-A057427(A006331(n))`
-/

namespace A063827.P9838563898011847946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104803 (n + 1) - A057427 (A006331 n).toNat

end

end A063827.P9838563898011847946

namespace A063827

/-- `A104803(n+1)-A057427(A006331(n))` -/
def P9838563898011847946.Spec : Prop :=
  ∀ n, P9838563898011847946.a n = A063827 n

end A063827

/-! ## A063827.P3157618389345998856

`A104803(n+1)-A101660(A001248(n+1))`
-/

namespace A063827.P3157618389345998856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104803 (n + 1) - A101660 (A001248 (n + 1)).toNat

end

end A063827.P3157618389345998856

namespace A063827

/-- `A104803(n+1)-A101660(A001248(n+1))` -/
def P3157618389345998856.Spec : Prop :=
  ∀ n, P3157618389345998856.a n = A063827 n

end A063827

/-! ## A063827.P15124245792308164349

`A104803(n+1)-A057427(A102024(n+1))`
-/

namespace A063827.P15124245792308164349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104803 (n + 1) - A057427 (A102024 (n + 1)).toNat

end

end A063827.P15124245792308164349

namespace A063827

/-- `A104803(n+1)-A057427(A102024(n+1))` -/
def P15124245792308164349.Spec : Prop :=
  ∀ n, P15124245792308164349.a n = A063827 n

end A063827

/-!
# A063830: a(n+1) is the smallest odd m whose cototient equals a(n).

The programs for A063830, there is no canonical definition to state claims against.
-/

/-! ## A063830.P6622594275635378053

`A063507(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A063830.P6622594275635378053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A063507 (a (n - 1)).toNat

end

end A063830.P6622594275635378053

/-! ## A063830.P17727954645118723449

`∑[record[A319534(A304531(n+1))]]`
-/

namespace A063830.P17727954645118723449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319534 (A304531 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063830.P17727954645118723449

/-! ## A063830.P16382327572726747906

`A080605(Δ[Δ[A173631(n)]])`
-/

namespace A063830.P16382327572726747906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (f1 (n + 1) - f1 n).toNat

end

end A063830.P16382327572726747906

/-!
# A063832: Number of structurally isomeric homologs with molecular formula C_{3+n} H_{6+2n}.

The programs for A063832, there is no canonical definition to state claims against.
-/

/-! ## A063832.P8170159023940528976

`A305059(∑[n]+3)`
-/

namespace A063832.P8170159023940528976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A063832.P8170159023940528976

/-! ## A063832.P11717909173853517788

`or(char[1], A305059(A152950(n+1)))`
-/

namespace A063832.P11717909173853517788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305059 (A152950 (n + 1)).toNat)

end

end A063832.P11717909173853517788

/-! ## A063832.P13953598477971057857

`char[A004473(n)]*A305059(A152950(n+1))`
-/

namespace A063832.P13953598477971057857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004473 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A305059 (A152950 (n + 1)).toNat

end

end A063832.P13953598477971057857

/-! ## A063832.P3971416595969277192

`char[A028242(n)]*A305059(A152950(n+1))`
-/

namespace A063832.P3971416595969277192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A305059 (A152950 (n + 1)).toNat

end

end A063832.P3971416595969277192

/-! ## A063832.P14197048846945967808

`char[A078898(n)]*A305059(A152950(n+1))`
-/

namespace A063832.P14197048846945967808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A305059 (A152950 (n + 1)).toNat

end

end A063832.P14197048846945967808

/-!
# A063833: !n - 3 is prime.

The programs for A063833, there is no canonical definition to state claims against.
-/

/-! ## A063833.P17423783163807464297

`∪[A055493(n+1), A281561(n+1)]+1`
-/

namespace A063833.P17423783163807464297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A063833.P17423783163807464297

/-! ## A063833.P8150453765854753258

`∪[A055493(n+1), A281562(n+1)]+1`
-/

namespace A063833.P8150453765854753258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A063833.P8150453765854753258

/-! ## A063833.P14639586914115784903

`∪[A055493(n+1)+1, A281536(n+1)²]`
-/

namespace A063833.P14639586914115784903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055493 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281536 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063833.P14639586914115784903

/-! ## A063833.P6340524041813608351

`∪[A281536(3*n+1), A055493(n+1)+1]`
-/

namespace A063833.P6340524041813608351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281536 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055493 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063833.P6340524041813608351

/-! ## A063833.P373455697340323583

`∪[A001274(3*n+1)², A020725(A055493(n+1))]`
-/

namespace A063833.P373455697340323583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A055493 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063833.P373455697340323583

/-!
# A063834: Twice partitioned numbers: the number of ways a number can be partitioned into not necessarily different parts and each part is again so partitioned.

The programs for A063834, there is no canonical definition to state claims against.
-/

/-! ## A063834.P11647857721320677812

`∑[A358829(n)]`
-/

namespace A063834.P11647857721320677812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063834.P11647857721320677812

/-! ## A063834.P6372617735298264125

`A323718(∑[n+2]+3)`
-/

namespace A063834.P6372617735298264125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323718 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A063834.P6372617735298264125

/-! ## A063834.P4295758945490221196

`A327769(n)+A004273(A000041(n))`
-/

namespace A063834.P4295758945490221196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327769 n + A004273 (A000041 n).toNat

end

end A063834.P4295758945490221196

/-! ## A063834.P14579270654308517974

`A327769(n)+A005408(A000065(n))`
-/

namespace A063834.P14579270654308517974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327769 n + A005408 (A000065 n).toNat

end

end A063834.P14579270654308517974

/-! ## A063834.P11840274342375684155

`A327769(n)+A004273(∑[A002865(n)])`
-/

namespace A063834.P11840274342375684155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327769 n + A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063834.P11840274342375684155

/-!
# A063835: Three times partitioned numbers: the number of ways a number can be partitioned in (not necessarily different) parts and each part again so partitioned a second and a third time.

The programs for A063835, there is no canonical definition to state claims against.
-/

/-! ## A063835.P12674985559873112367

`A102825(A097940(n+1))`
-/

namespace A063835.P12674985559873112367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A097940 (n + 1)).toNat

end

end A063835.P12674985559873112367

/-!
# A063838: Numbers k such that mu(k) + mu(k+1) + mu(k+2) = 3.

The programs for A063838, the canonical program `A063838.P11837040950556454731` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063838 has offset 1).

The definition of A063838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063838.P8026736400488506703

`filter[A114180(n+1), A359465(#)]`
-/

namespace A063838.P8026736400488506703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A063838.P8026736400488506703

namespace A063838

/-- `filter[A114180(n+1), A359465(#)]` -/
def P8026736400488506703.Spec : Prop :=
  ∀ n, P8026736400488506703.a n = A063838 (n + 1)

end A063838

/-! ## A063838.P6608450322076415265

`∩[A063848(n+1)+1, A114180(n+1)]`
-/

namespace A063838.P6608450322076415265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063848 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063838.P6608450322076415265

namespace A063838

/-- `∩[A063848(n+1)+1, A114180(n+1)]` -/
def P6608450322076415265.Spec : Prop :=
  ∀ n, (P6608450322076415265.a n : ℤ) = A063838 (n + 1)

end A063838

/-! ## A063838.P10417484514613645627

`filter[A114180(n+1), A353629(#)]`
-/

namespace A063838.P10417484514613645627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A063838.P10417484514613645627

namespace A063838

/-- `filter[A114180(n+1), A353629(#)]` -/
def P10417484514613645627.Spec : Prop :=
  ∀ n, P10417484514613645627.a n = A063838 (n + 1)

end A063838

/-! ## A063838.P11837040950556454731

`eq[2, n-1-a(n-1)*A008683(n+2)]` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A063838

/-- `eq[2, n-1-a(n-1)*A008683(n+2)]` -/
def P11837040950556454731.Spec : Prop :=
  ∀ n, (P11837040950556454731.a n : ℤ) = A063838 (n + 1)

theorem P11837040950556454731.correct : P11837040950556454731.Spec := by
  intro n
  simp only [A063838, Nat.add_sub_cancel]

end A063838

/-! ## A063838.P12815356011812351528

`∩[A056913(n+1), A114180(n+1)]`
-/

namespace A063838.P12815356011812351528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063838.P12815356011812351528

namespace A063838

/-- `∩[A056913(n+1), A114180(n+1)]` -/
def P12815356011812351528.Spec : Prop :=
  ∀ n, (P12815356011812351528.a n : ℤ) = A063838 (n + 1)

end A063838

/-! ## A063838.P4701373899394089587

`record[A055615(A114180(n+2))]`
-/

namespace A063838.P4701373899394089587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A114180 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063838.P4701373899394089587

namespace A063838

/-- `record[A055615(A114180(n+2))]` -/
def P4701373899394089587.Spec : Prop :=
  ∀ n, P4701373899394089587.a n = A063838 (n + 1)

end A063838

/-! ## A063838.P9282274427751226720

`record[A062953(A114180(4/2+n))]`
-/

namespace A063838.P9282274427751226720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (A114180 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063838.P9282274427751226720

namespace A063838

/-- `record[A062953(A114180(4/2+n))]` -/
def P9282274427751226720.Spec : Prop :=
  ∀ n, P9282274427751226720.a n = A063838 (n + 1)

end A063838

/-! ## A063838.P11651709499938587036

`A261869(eq[A261890(n+1)+1, A261869(n+1)])`
-/

namespace A063838.P11651709499938587036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261890 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063838.P11651709499938587036

namespace A063838

/-- `A261869(eq[A261890(n+1)+1, A261869(n+1)])` -/
def P11651709499938587036.Spec : Prop :=
  ∀ n, P11651709499938587036.a n = A063838 (n + 1)

end A063838

/-!
# A063839: Dirichlet convolution of Fibonacci numbers with factorials.

The programs for A063839, there is no canonical definition to state claims against.
-/

/-! ## A063839.P10568670940566454963

`∑{d}[n+1, A007435(#)*A062794((n+1)/#)]`
-/

namespace A063839.P10568670940566454963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A062794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063839.P10568670940566454963

/-! ## A063839.P10778648690097365185

`A176846(A086621(n))+1`
-/

namespace A063839.P10778648690097365185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176846 (A086621 n).toNat + 1

end

end A063839.P10778648690097365185

/-!
# A063840: Numbers k such that sigma(k) - usigma(k) is a square and sets a new record for such squares.

The programs for A063840, there is no canonical definition to state claims against.
-/

/-! ## A063840.P18309369006794716401

`∩[A071707(n+1), A153144(n+1)]`
-/

namespace A063840.P18309369006794716401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063840.P18309369006794716401

/-! ## A063840.P7302328941262414337

`A305791(C(A179887(n+1), A215904(n+5)))`
-/

namespace A063840.P7302328941262414337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305791 (Nat.choose (A179887 (n + 1)).toNat (A215904 (n + 5)).toNat)

end

end A063840.P7302328941262414337

/-!
# A063841: Table T(n,k) giving number of k-multigraphs on n nodes (n >= 1, k >= 0) read by antidiagonals.

The programs for A063841, there is no canonical definition to state claims against.
-/

/-! ## A063841.P14370195501465368759

`A327084(gcd(A010816(n), A083920(n)))`
-/

namespace A063841.P14370195501465368759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (Int.gcd (A010816 n) (A083920 n))

end

end A063841.P14370195501465368759

/-! ## A063841.P1720168795530808316

`A196241(A351790(n+1))`
-/

namespace A063841.P1720168795530808316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196241 (A351790 (n + 1)).toNat

end

end A063841.P1720168795530808316

/-! ## A063841.P13662526973435971428

`A048766(A219207(n)*A226222(n+1))`
-/

namespace A063841.P13662526973435971428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A219207 n * A226222 (n + 1)).toNat

end

end A063841.P13662526973435971428

/-! ## A063841.P11572609819666602036

`A346018(A228899(n))`
-/

namespace A063841.P11572609819666602036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346018 (A228899 n).toNat

end

end A063841.P11572609819666602036

/-! ## A063841.P9584319285175912661

`A331852(A094424(n+1))`
-/

namespace A063841.P9584319285175912661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A094424 (n + 1)).toNat

end

end A063841.P9584319285175912661

/-!
# A063842: Number of colorings of K_4 using at most n colors.

The programs for A063842, the canonical program `A063842.P18276294030905061027` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063842 has offset 0).

The definition of A063842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063842.P18276294030905061027

`∑[A100790(n)]+∑[n]²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063842

/-- `∑[A100790(n)]+∑[n]²` -/
def P18276294030905061027.Spec : Prop :=
  ∀ n, P18276294030905061027.a n = A063842 n

theorem P18276294030905061027.correct : P18276294030905061027.Spec := by
  intro n
  simp only [A063842]

end A063842

/-! ## A063842.P9128018336194258973

`A046023(n+1)-A337899(n+1)`
-/

namespace A063842.P9128018336194258973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046023 (n + 1) - A337899 (n + 1)

end

end A063842.P9128018336194258973

namespace A063842

/-- `A046023(n+1)-A337899(n+1)` -/
def P9128018336194258973.Spec : Prop :=
  ∀ n, P9128018336194258973.a n = A063842 n

end A063842

/-! ## A063842.P12538211213796352520

`∑[2*A260513(n+1)]-A260513(n+1)`
-/

namespace A063842.P12538211213796352520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A260513 (n + 1)

end

end A063842.P12538211213796352520

namespace A063842

/-- `∑[2*A260513(n+1)]-A260513(n+1)` -/
def P12538211213796352520.Spec : Prop :=
  ∀ n, P12538211213796352520.a n = A063842 n

end A063842

/-! ## A063842.P573884732409278247

`A047780(n+1)+∑[n]²`
-/

namespace A063842.P573884732409278247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A063842.P573884732409278247

namespace A063842

/-- `A047780(n+1)+∑[n]²` -/
def P573884732409278247.Spec : Prop :=
  ∀ n, P573884732409278247.a n = A063842 n

end A063842

/-! ## A063842.P13112688564324429922

`∑[A000578(n)+Δ[A047780(n)]]`
-/

namespace A063842.P13112688564324429922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063842.P13112688564324429922

namespace A063842

/-- `∑[A000578(n)+Δ[A047780(n)]]` -/
def P13112688564324429922.Spec : Prop :=
  ∀ n, P13112688564324429922.a n = A063842 n

end A063842

/-! ## A063842.P6491476401894503526

`A337899(n+1)+A037270(n+1)`
-/

namespace A063842.P6491476401894503526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337899 (n + 1) + A037270 (n + 1)

end

end A063842.P6491476401894503526

namespace A063842

/-- `A337899(n+1)+A037270(n+1)` -/
def P6491476401894503526.Spec : Prop :=
  ∀ n, P6491476401894503526.a n = A063842 n

end A063842

/-! ## A063842.P643785297512156144

`A337898(n+1)+A282816(n+1)`
-/

namespace A063842.P643785297512156144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337898 (n + 1) + A282816 (n + 1)

end

end A063842.P643785297512156144

namespace A063842

/-- `A337898(n+1)+A282816(n+1)` -/
def P643785297512156144.Spec : Prop :=
  ∀ n, P643785297512156144.a n = A063842 n

end A063842

/-! ## A063842.P3575427865358091175

`A198833(n+1)+A047780(n)-A093566(n+1)`
-/

namespace A063842.P3575427865358091175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) + (A047780 n - A093566 (n + 1))

end

end A063842.P3575427865358091175

namespace A063842

/-- `A198833(n+1)+A047780(n)-A093566(n+1)` -/
def P3575427865358091175.Spec : Prop :=
  ∀ n, P3575427865358091175.a n = A063842 n

end A063842

/-! ## A063842.P17886711290933731789

`A198833(n+1)+A000292(∑[n])`
-/

namespace A063842.P17886711290933731789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) + A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063842.P17886711290933731789

namespace A063842

/-- `A198833(n+1)+A000292(∑[n])` -/
def P17886711290933731789.Spec : Prop :=
  ∀ n, P17886711290933731789.a n = A063842 n

end A063842

/-! ## A063842.P6815282182182495215

`A000292(∑[n+1])+A000292(∑[n])`
-/

namespace A063842.P6815282182182495215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j) + A000292 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A063842.P6815282182182495215

namespace A063842

/-- `A000292(∑[n+1])+A000292(∑[n])` -/
def P6815282182182495215.Spec : Prop :=
  ∀ n, P6815282182182495215.a n = A063842 n

end A063842

/-!
# A063843: Number of n-multigraphs on 5 nodes.

The programs for A063843, the canonical program `A063843.P4769205565620020737` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063843 has offset 0).

The definition of A063843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063843.P4769205565620020737

`n²*(n^8+10*n^5+15*n^4+20*n²+50*n+24)/120`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063843

/-- `n²*(n^8+10*n^5+15*n^4+20*n²+50*n+24)/120` -/
def P4769205565620020737.Spec : Prop :=
  ∀ n, P4769205565620020737.a n = (A063843 n : ℚ)

end A063843

/-! ## A063843.P16408133363816512236

`∑[A100788(n)]-A100788(n)`
-/

namespace A063843.P16408133363816512236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100788 n

end

end A063843.P16408133363816512236

namespace A063843

/-- `∑[A100788(n)]-A100788(n)` -/
def P16408133363816512236.Spec : Prop :=
  ∀ n, P16408133363816512236.a n = A063843 n

end A063843

/-! ## A063843.P1938965461711285705

`A331350(n+1)-(A331352(n+1)+A100788(n))`
-/

namespace A063843.P1938965461711285705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331350 (n + 1) - (A331352 (n + 1) + A100788 n)

end

end A063843.P1938965461711285705

namespace A063843

/-- `A331350(n+1)-(A331352(n+1)+A100788(n))` -/
def P1938965461711285705.Spec : Prop :=
  ∀ n, P1938965461711285705.a n = A063843 n

end A063843

/-! ## A063843.P10731709145781835239

`A331352(n+1)+A331353(n+1)-A100788(n)`
-/

namespace A063843.P10731709145781835239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331352 (n + 1) + (A331353 (n + 1) - A100788 n)

end

end A063843.P10731709145781835239

namespace A063843

/-- `A331352(n+1)+A331353(n+1)-A100788(n)` -/
def P10731709145781835239.Spec : Prop :=
  ∀ n, P10731709145781835239.a n = A063843 n

end A063843

/-! ## A063843.P5467092543983641357

`lcm(n, A327084(A167614(n+1)+1))`
-/

namespace A063843.P5467092543983641357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327084 (A167614 (n + 1) + 1).toNat)

end

end A063843.P5467092543983641357

namespace A063843

/-- `lcm(n, A327084(A167614(n+1)+1))` -/
def P5467092543983641357.Spec : Prop :=
  ∀ n, (P5467092543983641357.a n : ℤ) = A063843 n

end A063843

/-!
# A063845: a(n) = sigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

The programs for A063845, the canonical program `A063845.P8176048473973946208` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063845 has offset 1).

The definition of A063845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063845.P8176048473973946208

`A000203(A034448(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A063845

/-- `A000203(A034448(n+1))` -/
def P8176048473973946208.Spec : Prop :=
  ∀ n, P8176048473973946208.a n = A063845 (n + 1)

theorem P8176048473973946208.correct : P8176048473973946208.Spec := by
  intro n
  simp only [A063845, Nat.add_sub_cancel]

end A063845

/-! ## A063845.P18118963308789110697

`∑{d}[A345451(n+1)+1, #]`
-/

namespace A063845.P18118963308789110697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A063845.P18118963308789110697

namespace A063845

/-- `∑{d}[A345451(n+1)+1, #]` -/
def P18118963308789110697.Spec : Prop :=
  ∀ n, (P18118963308789110697.a n : ℤ) = A063845 (n + 1)

end A063845

/-! ## A063845.P2804528088976534782

`∑{d}[∑{d}[n+1, A254503(#)], #]`
-/

namespace A063845.P2804528088976534782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A254503 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A063845.P2804528088976534782

namespace A063845

/-- `∑{d}[∑{d}[n+1, A254503(#)], #]` -/
def P2804528088976534782.Spec : Prop :=
  ∀ n, (P2804528088976534782.a n : ℤ) = A063845 (n + 1)

end A063845

/-! ## A063845.P15820187452947305248

`∑{d}[A034460(n+1)+1+n, #]`
-/

namespace A063845.P15820187452947305248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A063845.P15820187452947305248

namespace A063845

/-- `∑{d}[A034460(n+1)+1+n, #]` -/
def P15820187452947305248.Spec : Prop :=
  ∀ n, (P15820187452947305248.a n : ℤ) = A063845 (n + 1)

end A063845

/-! ## A063845.P13314698350665644846

`A000203(A345451(n+1)+1)`
-/

namespace A063845.P13314698350665644846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A345451 (n + 1) + 1).toNat

end

end A063845.P13314698350665644846

namespace A063845

/-- `A000203(A345451(n+1)+1)` -/
def P13314698350665644846.Spec : Prop :=
  ∀ n, P13314698350665644846.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P16093095941471839302

`A000203(∑{d}[n+1, A254503(#)])`
-/

namespace A063845.P16093095941471839302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), A254503 d).toNat

end

end A063845.P16093095941471839302

namespace A063845

/-- `A000203(∑{d}[n+1, A254503(#)])` -/
def P16093095941471839302.Spec : Prop :=
  ∀ n, P16093095941471839302.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P12688419536327359865

`A000203(A034460(n+1)+1+n)`
-/

namespace A063845.P12688419536327359865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034460 (n + 1) + 1 + (n : ℤ)).toNat

end

end A063845.P12688419536327359865

namespace A063845

/-- `A000203(A034460(n+1)+1+n)` -/
def P12688419536327359865.Spec : Prop :=
  ∀ n, P12688419536327359865.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P4984766055789301031

`A000203(A064971(n+1)/(n+1))`
-/

namespace A063845.P4984766055789301031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A063845.P4984766055789301031

namespace A063845

/-- `A000203(A064971(n+1)/(n+1))` -/
def P4984766055789301031.Spec : Prop :=
  ∀ n, P4984766055789301031.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P5126284460770577479

`A000203(A129468(n+1)+2*(n+1))`
-/

namespace A063845.P5126284460770577479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A129468 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A063845.P5126284460770577479

namespace A063845

/-- `A000203(A129468(n+1)+2*(n+1))` -/
def P5126284460770577479.Spec : Prop :=
  ∀ n, P5126284460770577479.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P9725028616110069585

`A055033(n+1)+A048146(A034448(n+1))`
-/

namespace A063845.P9725028616110069585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055033 (n + 1) + A048146 (A034448 (n + 1)).toNat

end

end A063845.P9725028616110069585

namespace A063845

/-- `A055033(n+1)+A048146(A034448(n+1))` -/
def P9725028616110069585.Spec : Prop :=
  ∀ n, P9725028616110069585.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P1812302081481883679

`A000203(A000203(n+1)-A048146(n+1))`
-/

namespace A063845.P1812302081481883679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1) - A048146 (n + 1)).toNat

end

end A063845.P1812302081481883679

namespace A063845

/-- `A000203(A000203(n+1)-A048146(n+1))` -/
def P1812302081481883679.Spec : Prop :=
  ∀ n, P1812302081481883679.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P6435889425827394914

`A000203(A064212(n+1)-A000203(n+1))`
-/

namespace A063845.P6435889425827394914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064212 (n + 1) - A000203 (n + 1)).toNat

end

end A063845.P6435889425827394914

namespace A063845

/-- `A000203(A064212(n+1)-A000203(n+1))` -/
def P6435889425827394914.Spec : Prop :=
  ∀ n, P6435889425827394914.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P9479366826139997743

`A000203(A003959(n+1)-A348732(n+1))`
-/

namespace A063845.P9479366826139997743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003959 (n + 1) - A348732 (n + 1)).toNat

end

end A063845.P9479366826139997743

namespace A063845

/-- `A000203(A003959(n+1)-A348732(n+1))` -/
def P9479366826139997743.Spec : Prop :=
  ∀ n, P9479366826139997743.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P8964588613966928871

`A000203(A092261(n+1)*A360720(n+1))`
-/

namespace A063845.P8964588613966928871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A092261 (n + 1) * A360720 (n + 1)).toNat

end

end A063845.P8964588613966928871

namespace A063845

/-- `A000203(A092261(n+1)*A360720(n+1))` -/
def P8964588613966928871.Spec : Prop :=
  ∀ n, P8964588613966928871.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P13950081448402021071

`A000203(A348503(n+1)*A348505(n+1))`
-/

namespace A063845.P13950081448402021071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A348503 (n + 1) * A348505 (n + 1)).toNat

end

end A063845.P13950081448402021071

namespace A063845

/-- `A000203(A348503(n+1)*A348505(n+1))` -/
def P13950081448402021071.Spec : Prop :=
  ∀ n, P13950081448402021071.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P16056526775489783154

`A000203(A348733(n+1)*A348735(n+1))`
-/

namespace A063845.P16056526775489783154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A348733 (n + 1) * A348735 (n + 1)).toNat

end

end A063845.P16056526775489783154

namespace A063845

/-- `A000203(A348733(n+1)*A348735(n+1))` -/
def P16056526775489783154.Spec : Prop :=
  ∀ n, P16056526775489783154.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P41807251926054154

`A000203(A069184(n+1)/A000203(n+1)*A107749(n+1))`
-/

namespace A063845.P41807251926054154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A069184 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A107749 (n + 1) : ℚ))).toNat

end

end A063845.P41807251926054154

namespace A063845

/-- `A000203(A069184(n+1)/A000203(n+1)*A107749(n+1))` -/
def P41807251926054154.Spec : Prop :=
  ∀ n, P41807251926054154.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P7327608365195046034

`A088580(A345451(n+1)+1)-1`
-/

namespace A063845.P7327608365195046034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A345451 (n + 1) + 1).toNat - 1

end

end A063845.P7327608365195046034

namespace A063845

/-- `A088580(A345451(n+1)+1)-1` -/
def P7327608365195046034.Spec : Prop :=
  ∀ n, P7327608365195046034.a n = A063845 (n + 1)

end A063845

/-! ## A063845.P8129244960745910164

`A245092(2*A034448(n+1)-1)`
-/

namespace A063845.P8129244960745910164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A034448 (n + 1) - 1).toNat

end

end A063845.P8129244960745910164

namespace A063845

/-- `A245092(2*A034448(n+1)-1)` -/
def P8129244960745910164.Spec : Prop :=
  ∀ n, P8129244960745910164.a n = A063845 (n + 1)

end A063845

/-!
# A063847: Carmichael numbers which are also base-2 strong pseudoprimes.

The programs for A063847, there is no canonical definition to state claims against.
-/

/-! ## A063847.P11127401621026824684

`∩[A001262(n+1), A002997(n+1)]`
-/

namespace A063847.P11127401621026824684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P11127401621026824684

/-! ## A063847.P11327256870442962731

`∩[A001262(n+1), A081703(n+1)*A141710(n+1)]`
-/

namespace A063847.P11327256870442962731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P11327256870442962731

/-! ## A063847.P7106725861637543275

`∩[A001262(n+1), A087442(n+1)]`
-/

namespace A063847.P7106725861637543275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P7106725861637543275

/-! ## A063847.P14569127376545320860

`∩[A002997(n+1), A020234(n+1)]`
-/

namespace A063847.P14569127376545320860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P14569127376545320860

/-! ## A063847.P3670013164265262495

`∩[A020234(n+1), A087442(n+1)]`
-/

namespace A063847.P3670013164265262495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P3670013164265262495

/-! ## A063847.P12101581365468691498

`∩[A020234(n+1), A081703(n+1)*A141710(n+1)]`
-/

namespace A063847.P12101581365468691498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063847.P12101581365468691498

/-!
# A063848: Numbers k such that mu(k) + mu(k+1) + mu(k+2) = 2.

The programs for A063848, there is no canonical definition to state claims against.
-/

/-! ## A063848.P16662352781151281956

`eq[2, A143158(A034856(n+1))]`
-/

namespace A063848.P16662352781151281956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063848.P16662352781151281956

/-!
# A063849: Numbers k such that mu(k) + mu(k+1) + mu(k+2) = 1.

The programs for A063849, there is no canonical definition to state claims against.
-/

/-! ## A063849.P13933684655907340081

`eq[1, A143158(A034856(n+1))%(n+1)]`
-/

namespace A063849.P13933684655907340081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143158 (A034856 (n + 1)).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063849.P13933684655907340081

/-! ## A063849.P5639624527932230767

`eq[A054977(n), A143158(A034856(n+1))]`
-/

namespace A063849.P5639624527932230767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063849.P5639624527932230767

/-! ## A063849.P15031739951744306546

`eq[A057427(n), A143158(A034856(n+1))]`
-/

namespace A063849.P15031739951744306546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063849.P15031739951744306546

/-! ## A063849.P11630533120289395886

`eq[A143158(A034856(n+1)), A157928(n)]`
-/

namespace A063849.P11630533120289395886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (A034856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063849.P11630533120289395886

/-!
# A063850: Say what you see in previous term, reporting total number for each digit encountered.

The programs for A063850, there is no canonical definition to state claims against.
-/

/-! ## A063850.P17993758633019852404

`A005151(n+1)-A097846(A221365(n))`
-/

namespace A063850.P17993758633019852404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005151 (n + 1) - A097846 (A221365 n).toNat

end

end A063850.P17993758633019852404

/-!
# A063851: Triangle T(n,k) (n >= 3, k = 1..n-2) read by rows giving number of nonisomorphic nondegenerate oriented matroids with n points in n-k dimensions.

The programs for A063851, there is no canonical definition to state claims against.
-/

/-! ## A063851.P6196895997568590269

`A154440(A222317(n+3))`
-/

namespace A063851.P6196895997568590269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A222317 (n + 3)).toNat

end

end A063851.P6196895997568590269

/-! ## A063851.P14215904344344876183

`A110656(8*A222317(n+3))`
-/

namespace A063851.P14215904344344876183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (8 * A222317 (n + 3)).toNat

end

end A063851.P14215904344344876183

/-! ## A063851.P431291972639473937

`filter[A222317(n+3), A131217(#)]`
-/

namespace A063851.P431291972639473937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222317 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131217 (f1 j).toNat = 1) n)

end

end A063851.P431291972639473937

/-! ## A063851.P6156582785075079521

`filter[A222317(n+3), A179775(#)]`
-/

namespace A063851.P6156582785075079521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222317 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A063851.P6156582785075079521

/-! ## A063851.P2708922159062597035

`filter[A222317(n+3), A213719(#)]`
-/

namespace A063851.P2708922159062597035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222317 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A063851.P2708922159062597035

/-!
# A063852: Number of nonisomorphic nondegenerate oriented matroids with n points in dimensions 2 through n-1.

The programs for A063852, there is no canonical definition to state claims against.
-/

/-! ## A063852.P8480803143271908688

`A008000(A056398(n+1))+n`
-/

namespace A063852.P8480803143271908688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (A056398 (n + 1)).toNat + (n : ℤ)

end

end A063852.P8480803143271908688

/-!
# A063853: Triangle T(n,k) (n >= 3, k = 1..n-2) read by rows giving number of abstract order types of configurations of n points in n-k dimensions.

The programs for A063853, there is no canonical definition to state claims against.
-/

/-! ## A063853.P18380847633402598583

`A152063(2*A180063(n))`
-/

namespace A063853.P18380847633402598583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (2 * A180063 n).toNat

end

end A063853.P18380847633402598583

/-! ## A063853.P5670836433393830562

`A152063(2*A125077(n+1))`
-/

namespace A063853.P5670836433393830562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (2 * A125077 (n + 1)).toNat

end

end A063853.P5670836433393830562

/-! ## A063853.P17764656305350704493

`A152063(A180063(n)+A180063(n))`
-/

namespace A063853.P17764656305350704493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (A180063 n + A180063 n).toNat

end

end A063853.P17764656305350704493

/-! ## A063853.P2515295693088513956

`A000005(A286834(n)^A002262(n))`
-/

namespace A063853.P2515295693088513956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A286834 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A063853.P2515295693088513956

/-! ## A063853.P8408810551041237989

`A152063(A125077(n+1)+A125077(n+1))`
-/

namespace A063853.P8408810551041237989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (A125077 (n + 1) + A125077 (n + 1)).toNat

end

end A063853.P8408810551041237989

/-!
# A063854: Number of abstract order types of configurations of n points in 2 dimensions.

The programs for A063854, there is no canonical definition to state claims against.
-/

/-! ## A063854.P4479293942308899654

`A063853(∑[n+1]+2)`
-/

namespace A063854.P4479293942308899654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063853 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A063854.P4479293942308899654

/-! ## A063854.P4522986754574316569

`record[A023531(n)*A063853(n+3)]`
-/

namespace A063854.P4522986754574316569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A063853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063854.P4522986754574316569

/-!
# A063855: Number of abstract order types of configurations of n points in 3 dimensions.

The programs for A063855, there is no canonical definition to state claims against.
-/

/-! ## A063855.P17727927118608130487

`A063853(∑[n+2]+2)`
-/

namespace A063855.P17727927118608130487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063853 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A063855.P17727927118608130487

/-!
# A063858: Triangle T(n,k) (n >= 2, k = 0..n-2) giving number of abstract dissection types of configurations of n hyperplanes in n-k dimensions.

The programs for A063858, there is no canonical definition to state claims against.
-/

/-! ## A063858.P2301867878922141117

`A047080(A151920(n+3)%A029471(n+1))`
-/

namespace A063858.P2301867878922141117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (Int.tmod (A151920 (n + 3)) (A029471 (n + 1))).toNat

end

end A063858.P2301867878922141117

/-!
# A063859: Number of abstract dissection types of configurations of n lines in 2 dimensions.

The programs for A063859, there is no canonical definition to state claims against.
-/

/-! ## A063859.P18362550970361337080

`A241600(n+2)-1`
-/

namespace A063859.P18362550970361337080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241600 (n + 2) - 1

end

end A063859.P18362550970361337080

/-! ## A063859.P3031255136310210843

`A063858(∑[n+1]+1)`
-/

namespace A063859.P3031255136310210843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A063859.P3031255136310210843

/-!
# A063860: Number of abstract dissection types of configurations of n planes in 3 dimensions.

The programs for A063860, there is no canonical definition to state claims against.
-/

/-! ## A063860.P17580767588887714824

`A063858(C(n+3, 2))`
-/

namespace A063860.P17580767588887714824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063858 (Nat.choose (n + 3) 2)

end

end A063860.P17580767588887714824

/-!
# A063862: Total number of abstract dissection types of configurations of n hyperplanes in dimensions 2 through n-1.

The programs for A063862, there is no canonical definition to state claims against.
-/

/-! ## A063862.P10158164468807243663

`A313096(A329482(n)-A013406(n))`
-/

namespace A063862.P10158164468807243663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313096 (A329482 n - A013406 n).toNat

end

end A063862.P10158164468807243663

/-!
# A063865: Number of solutions to +- 1 +- 2 +- 3 +- ... +- n = 0.

The programs for A063865, there is no canonical definition to state claims against.
-/

/-! ## A063865.P15793571152518811384

`A025591(n)-A063866(n)`
-/

namespace A063865.P15793571152518811384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n - A063866 n

end

end A063865.P15793571152518811384

/-! ## A063865.P7121952820639067085

`lcm(A025591(n), A102560(n))`
-/

namespace A063865.P7121952820639067085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025591 n) (A102560 n)

end

end A063865.P7121952820639067085

/-! ## A063865.P1379047159966682353

`char[A014601(n)]*A025591(n)`
-/

namespace A063865.P1379047159966682353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025591 n

end

end A063865.P1379047159966682353

/-! ## A063865.P11780376114571465163

`A025591(n)*A133872(n+1)`
-/

namespace A063865.P11780376114571465163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n * A133872 (n + 1)

end

end A063865.P11780376114571465163

/-! ## A063865.P14400372036650370089

`(2-A014695(n))*A025591(n)`
-/

namespace A063865.P14400372036650370089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A014695 n) * A025591 n

end

end A063865.P14400372036650370089

/-! ## A063865.P10543741321888631946

`(2-A014695(n))*A063867(n)`
-/

namespace A063865.P10543741321888631946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A014695 n) * A063867 n

end

end A063865.P10543741321888631946

/-! ## A063865.P12629080204774680906

`A063867(n)-2*A063866(n)`
-/

namespace A063865.P12629080204774680906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 n - 2 * A063866 n

end

end A063865.P12629080204774680906

/-! ## A063865.P10924049011167003312

`A015818(and(2, -n))*A025591(n)`
-/

namespace A063865.P10924049011167003312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015818 (Int.land 2 (-(n : ℤ))).toNat * A025591 n

end

end A063865.P10924049011167003312

/-! ## A063865.P12792518442206574078

`A025591(n)+A025591(n)-A063867(n)`
-/

namespace A063865.P12792518442206574078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n + (A025591 n - A063867 n)

end

end A063865.P12792518442206574078

/-! ## A063865.P11980166835184285776

`(A004525(n+1)-A004525(n))*A063867(n)`
-/

namespace A063865.P11980166835184285776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004525 (n + 1) - A004525 n) * A063867 n

end

end A063865.P11980166835184285776

/-! ## A063865.P17414781519916815088

`2*A025591(n)-A063867(n)`
-/

namespace A063865.P17414781519916815088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025591 n - A063867 n

end

end A063865.P17414781519916815088

/-!
# A063866: Number of solutions to +- 1 +- 2 +- 3 +- ... +- n = 1.

The programs for A063866, there is no canonical definition to state claims against.
-/

/-! ## A063866.P12067637660717110506

`A025591(n)-A063865(n)`
-/

namespace A063866.P12067637660717110506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n - A063865 n

end

end A063866.P12067637660717110506

/-! ## A063866.P17931866132136701364

`A063867(n)-A025591(n)`
-/

namespace A063866.P17931866132136701364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 n - A025591 n

end

end A063866.P17931866132136701364

/-! ## A063866.P1820795541255450444

`(A014695(n)-1)*A025591(n)`
-/

namespace A063866.P1820795541255450444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014695 n - 1) * A025591 n

end

end A063866.P1820795541255450444

/-! ## A063866.P10670349108547041419

`A025591(n)*A133872(n+3)`
-/

namespace A063866.P10670349108547041419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n * A133872 (n + 3)

end

end A063866.P10670349108547041419

/-! ## A063866.P5460038155237146067

`(A063867(n)-A063865(n))/2`
-/

namespace A063866.P5460038155237146067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n - A063865 n : ℚ) / 2

end

end A063866.P5460038155237146067

/-! ## A063866.P3285510744186788281

`A000217(n)%2*A025591(n)`
-/

namespace A063866.P3285510744186788281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) 2 * A025591 n

end

end A063866.P3285510744186788281

/-! ## A063866.P382452616403131524

`lcm(A025591(n), A102560(n+2))`
-/

namespace A063866.P382452616403131524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025591 n) (A102560 (n + 2))

end

end A063866.P382452616403131524

/-! ## A063866.P14987334518997499867

`(1-A102560(n)²)*A025591(n)`
-/

namespace A063866.P14987334518997499867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A102560 n ^ 2) * A025591 n

end

end A063866.P14987334518997499867

/-! ## A063866.P4381890037795861334

`(1-char[A014601(n)])*A025591(n)`
-/

namespace A063866.P4381890037795861334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A025591 n

end

end A063866.P4381890037795861334

/-! ## A063866.P12644513949032349349

`A063867(n)-A063867(n)/A014695(n)`
-/

namespace A063866.P12644513949032349349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 n : ℚ) - (A063867 n : ℚ) / (A014695 n : ℚ)

end

end A063866.P12644513949032349349

/-! ## A063866.P3616773174139757863

`A025591(n)*A130658(n+1)-A025591(n)`
-/

namespace A063866.P3616773174139757863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n * A130658 (n + 1) - A025591 n

end

end A063866.P3616773174139757863

/-! ## A063866.P520001653135610466

`A058377(n+2)^A063865(n)*A025591(n)`
-/

namespace A063866.P520001653135610466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058377 (n + 2) : ℚ) ^ (A063865 n : ℤ) * (A025591 n : ℚ)

end

end A063866.P520001653135610466

/-! ## A063866.P3490354181251763515

`A063865(n+2)^A063865(n)*A025591(n)`
-/

namespace A063866.P3490354181251763515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (n + 2) : ℚ) ^ (A063865 n : ℤ) * (A025591 n : ℚ)

end

end A063866.P3490354181251763515

/-! ## A063866.P14966344783837278038

`A025591(n)*A063865(A063865(n)/A025591(n))`
-/

namespace A063866.P14966344783837278038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n * A063865 (SequenceMachineLib.roundAway ((A063865 n : ℚ) / (A025591 n : ℚ))).toNat

end

end A063866.P14966344783837278038

/-! ## A063866.P8278295866991569913

`A058377(n+2)/A069918(n+2)*A025591(n)`
-/

namespace A063866.P8278295866991569913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058377 (n + 2) : ℚ) / (A069918 (n + 2) : ℚ) * (A025591 n : ℚ)

end

end A063866.P8278295866991569913

/-!
# A063867: Number of solutions to +- 1 +- 2 +- 3 +- ... +- n = 0 or +- 1.

The programs for A063867, there is no canonical definition to state claims against.
-/

/-! ## A063867.P3494624750502551201

`A063865(n)+2*A063866(n)`
-/

namespace A063867.P3494624750502551201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n + 2 * A063866 n

end

end A063867.P3494624750502551201

/-! ## A063867.P4407237870041518443

`A063866(n)+A025591(n)`
-/

namespace A063867.P4407237870041518443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063866 n + A025591 n

end

end A063867.P4407237870041518443

/-! ## A063867.P92433501284675185

`A014695(n)*A025591(n)`
-/

namespace A063867.P92433501284675185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n * A025591 n

end

end A063867.P92433501284675185

/-! ## A063867.P16020098642188237852

`A025591(n)*A130658(n+1)`
-/

namespace A063867.P16020098642188237852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n * A130658 (n + 1)

end

end A063867.P16020098642188237852

/-! ## A063867.P11274204669430560930

`gcd(2, A005891(n))*A025591(n)`
-/

namespace A063867.P11274204669430560930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005891 n) : ℤ) * A025591 n

end

end A063867.P11274204669430560930

/-! ## A063867.P12735313783036917422

`(2-A102560(n)²)*A025591(n)`
-/

namespace A063867.P12735313783036917422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A102560 n ^ 2) * A025591 n

end

end A063867.P12735313783036917422

/-! ## A063867.P5679329846262400497

`(2-char[A014601(n)])*A025591(n)`
-/

namespace A063867.P5679329846262400497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A025591 n

end

end A063867.P5679329846262400497

/-! ## A063867.P11751408757078137720

`A025591(n)+A025591(n)-A063865(n)`
-/

namespace A063867.P11751408757078137720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n + (A025591 n - A063865 n)

end

end A063867.P11751408757078137720

/-! ## A063867.P5030472114850636885

`2*A025591(n)-A063865(n)`
-/

namespace A063867.P5030472114850636885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025591 n - A063865 n

end

end A063867.P5030472114850636885

/-!
# A063869: Least k such that sigma(k)=m^n for some m>1.

The programs for A063869, there is no canonical definition to state claims against.
-/

/-! ## A063869.P4595822582506073386

`A180162(∑{e}[A180169(n+1), #])`
-/

namespace A063869.P4595822582506073386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A063869.P4595822582506073386

/-! ## A063869.P7982303261296412024

`A180162(A100793(n)*A153206(n))`
-/

namespace A063869.P7982303261296412024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 (A100793 n * A153206 n).toNat

end

end A063869.P7982303261296412024

/-!
# A063870: Numbers n such that sigma(n) - usigma(n) = 3n/2.

The programs for A063870, there is no canonical definition to state claims against.
-/

/-! ## A063870.P1075287593618530861

`A327944(A040116(n+1)-A003107(n))`
-/

namespace A063870.P1075287593618530861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327944 (A040116 (n + 1) - A003107 n).toNat

end

end A063870.P1075287593618530861

/-!
# A063872: Let m be the n-th positive integer such that phi(m) is divisible by m - phi(m). Then a(n) = phi(m)/(m - phi(m)).

The programs for A063872, the canonical program `A063872.P6653765123513031223` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063872 has offset 1).

The definition of A063872 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063872.P6653765123513031223

`A025473(n+2)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A063872

/-- `A025473(n+2)-1` -/
def P6653765123513031223.Spec : Prop :=
  ∀ n, P6653765123513031223.a n = A063872 (n + 1)

theorem P6653765123513031223.correct : P6653765123513031223.Spec := by
  intro n
  simp only [A063872, Nat.add_sub_cancel]

end A063872

/-! ## A063872.P744590778487436065

`∏{p}[A246655(n+1), #-1]`
-/

namespace A063872.P744590778487436065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A063872.P744590778487436065

namespace A063872

/-- `∏{p}[A246655(n+1), #-1]` -/
def P744590778487436065.Spec : Prop :=
  ∀ n, P744590778487436065.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P17857058419267210115

`A006093(A330669(n+2))`
-/

namespace A063872.P17857058419267210115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A330669 (n + 2)).toNat

end

end A063872.P17857058419267210115

namespace A063872

/-- `A006093(A330669(n+2))` -/
def P17857058419267210115.Spec : Prop :=
  ∀ n, P17857058419267210115.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P9087221917117232120

`(A085729(n+2)-A025474(n+2))/A025474(n+2)`
-/

namespace A063872.P9087221917117232120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085729 (n + 2) - A025474 (n + 2) : ℚ) / (A025474 (n + 2) : ℚ)

end

end A063872.P9087221917117232120

namespace A063872

/-- `(A085729(n+2)-A025474(n+2))/A025474(n+2)` -/
def P9087221917117232120.Spec : Prop :=
  ∀ n, P9087221917117232120.a n = (A063872 (n + 1) : ℚ)

end A063872

/-! ## A063872.P1496935403123517912

`A085730(n+2)/(A000961(n+2)-A085730(n+2))`
-/

namespace A063872.P1496935403123517912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085730 (n + 2) : ℚ) / (A000961 (n + 2) - A085730 (n + 2) : ℚ)

end

end A063872.P1496935403123517912

namespace A063872

/-- `A085730(n+2)/(A000961(n+2)-A085730(n+2))` -/
def P1496935403123517912.Spec : Prop :=
  ∀ n, P1496935403123517912.a n = (A063872 (n + 1) : ℚ)

end A063872

/-! ## A063872.P12018699891195492701

`A025473(n+2)/A000961(n+2)*A085730(n+2)`
-/

namespace A063872.P12018699891195492701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 2) : ℚ) / (A000961 (n + 2) : ℚ) * (A085730 (n + 2) : ℚ)

end

end A063872.P12018699891195492701

namespace A063872

/-- `A025473(n+2)/A000961(n+2)*A085730(n+2)` -/
def P12018699891195492701.Spec : Prop :=
  ∀ n, P12018699891195492701.a n = (A063872 (n + 1) : ℚ)

end A063872

/-! ## A063872.P17815170112871793220

`p?[A007947(n+1)]-1`
-/

namespace A063872.P17815170112871793220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P17815170112871793220

namespace A063872

/-- `p?[A007947(n+1)]-1` -/
def P17815170112871793220.Spec : Prop :=
  ∀ n, P17815170112871793220.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P12810434954629251345

`p?[A052410(n+1)]-1`
-/

namespace A063872.P12810434954629251345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P12810434954629251345

namespace A063872

/-- `p?[A052410(n+1)]-1` -/
def P12810434954629251345.Spec : Prop :=
  ∀ n, P12810434954629251345.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P10481398812626120607

`A000010(A025473(n+2))`
-/

namespace A063872.P10481398812626120607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025473 (n + 2)).toNat

end

end A063872.P10481398812626120607

namespace A063872

/-- `A000010(A025473(n+2))` -/
def P10481398812626120607.Spec : Prop :=
  ∀ n, P10481398812626120607.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P17877315000833587065

`A020639(A246655(n+1))-1`
-/

namespace A063872.P17877315000833587065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246655 (n + 1)).toNat - 1

end

end A063872.P17877315000833587065

namespace A063872

/-- `A020639(A246655(n+1))-1` -/
def P17877315000833587065.Spec : Prop :=
  ∀ n, P17877315000833587065.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P5268579436999139923

`p?[A001221(n+1)*A020639(n+1)]-1`
-/

namespace A063872.P5268579436999139923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P5268579436999139923

namespace A063872

/-- `p?[A001221(n+1)*A020639(n+1)]-1` -/
def P5268579436999139923.Spec : Prop :=
  ∀ n, P5268579436999139923.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P3141790801185360533

`p?[gcd(A006530(n+1), A020639(n+1))]-1`
-/

namespace A063872.P3141790801185360533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (n + 1)) (A020639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A063872.P3141790801185360533

namespace A063872

/-- `p?[gcd(A006530(n+1), A020639(n+1))]-1` -/
def P3141790801185360533.Spec : Prop :=
  ∀ n, P3141790801185360533.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P5629149548406493329

`A057237(A246655(2*n+1-n))`
-/

namespace A063872.P5629149548406493329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A246655 (2 * n + 1 - n)).toNat

end

end A063872.P5629149548406493329

namespace A063872

/-- `A057237(A246655(2*n+1-n))` -/
def P5629149548406493329.Spec : Prop :=
  ∀ n, P5629149548406493329.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P13237771551398502251

`A173557(A000961(n+2))`
-/

namespace A063872.P13237771551398502251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A000961 (n + 2)).toNat

end

end A063872.P13237771551398502251

namespace A063872

/-- `A173557(A000961(n+2))` -/
def P13237771551398502251.Spec : Prop :=
  ∀ n, P13237771551398502251.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P11327601367354157853

`A006530(eq[1, A001221(n+1)]+1)-1`
-/

namespace A063872.P11327601367354157853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A063872.P11327601367354157853

namespace A063872

/-- `A006530(eq[1, A001221(n+1)]+1)-1` -/
def P11327601367354157853.Spec : Prop :=
  ∀ n, P11327601367354157853.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P13366793728710761906

`p?[A348036(n+1)]-1`
-/

namespace A063872.P13366793728710761906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P13366793728710761906

namespace A063872

/-- `p?[A348036(n+1)]-1` -/
def P13366793728710761906.Spec : Prop :=
  ∀ n, P13366793728710761906.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P3674702197879191166

`p?[∏{p}[n, #]]-1`
-/

namespace A063872.P3674702197879191166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A063872.P3674702197879191166

namespace A063872

/-- `p?[∏{p}[n, #]]-1` -/
def P3674702197879191166.Spec : Prop :=
  ∀ n, P3674702197879191166.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P10027751433102351903

`A000010(p?[∏{p}[n, #]])`
-/

namespace A063872.P10027751433102351903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A063872.P10027751433102351903

namespace A063872

/-- `A000010(p?[∏{p}[n, #]])` -/
def P10027751433102351903.Spec : Prop :=
  ∀ n, P10027751433102351903.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P12675702179091046783

`p?[A014963(n+1)]-1`
-/

namespace A063872.P12675702179091046783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P12675702179091046783

namespace A063872

/-- `p?[A014963(n+1)]-1` -/
def P12675702179091046783.Spec : Prop :=
  ∀ n, P12675702179091046783.a n = A063872 (n + 1)

end A063872

/-! ## A063872.P8539884441743765772

`p?[A020500(n+1)]-1`
-/

namespace A063872.P8539884441743765772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A063872.P8539884441743765772

namespace A063872

/-- `p?[A020500(n+1)]-1` -/
def P8539884441743765772.Spec : Prop :=
  ∀ n, P8539884441743765772.a n = A063872 (n + 1)

end A063872

/-!
# A063880: Numbers k such that sigma(k) = 2*usigma(k).

The programs for A063880, the canonical program `A063880.P5681857792840883182` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063880 has offset 1).

The definition of A063880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063880.P16775408582072226609

`record[9*lcm(12, A007947(n+1))]`
-/

namespace A063880.P16775408582072226609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Int.lcm 12 (A007947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P16775408582072226609

namespace A063880

/-- `record[9*lcm(12, A007947(n+1))]` -/
def P16775408582072226609.Spec : Prop :=
  ∀ n, (P16775408582072226609.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P5681857792840883182

`record[lcm(4, lcm(27, A005117(n+1)))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A063880

/-- `record[lcm(4, lcm(27, A005117(n+1)))]` -/
def P5681857792840883182.Spec : Prop :=
  ∀ n, (P5681857792840883182.a n : ℤ) = A063880 (n + 1)

theorem P5681857792840883182.correct : P5681857792840883182.Spec := by
  intro n
  simp only [A063880, Nat.add_sub_cancel]

end A063880

/-! ## A063880.P8042086994640427353

`∩[A325812(n+1), A339983(n+1)]`
-/

namespace A063880.P8042086994640427353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P8042086994640427353

namespace A063880

/-- `∩[A325812(n+1), A339983(n+1)]` -/
def P8042086994640427353.Spec : Prop :=
  ∀ n, (P8042086994640427353.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P13464469669464439009

`18*record[∏{p}[18*(n+1), #]]`
-/

namespace A063880.P13464469669464439009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P13464469669464439009

namespace A063880

/-- `18*record[∏{p}[18*(n+1), #]]` -/
def P13464469669464439009.Spec : Prop :=
  ∀ n, (P13464469669464439009.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P7425513579446843567

`∩[A308053(n+1), A325812(n+1)]`
-/

namespace A063880.P7425513579446843567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P7425513579446843567

namespace A063880

/-- `∩[A308053(n+1), A325812(n+1)]` -/
def P7425513579446843567.Spec : Prop :=
  ∀ n, (P7425513579446843567.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P16173447548828364410

`record[36*A147661(3*(n+1))]`
-/

namespace A063880.P16173447548828364410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A147661 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P16173447548828364410

namespace A063880

/-- `record[36*A147661(3*(n+1))]` -/
def P16173447548828364410.Spec : Prop :=
  ∀ n, P16173447548828364410.a n = A063880 (n + 1)

end A063880

/-! ## A063880.P7293388064706927482

`∩[A325812(n+1), A044102(n)]`
-/

namespace A063880.P7293388064706927482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P7293388064706927482

namespace A063880

/-- `∩[A325812(n+1), A044102(n)]` -/
def P7293388064706927482.Spec : Prop :=
  ∀ n, (P7293388064706927482.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P3430069382284546239

`∩[A325812(n+1), A167632(n)]`
-/

namespace A063880.P3430069382284546239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P3430069382284546239

namespace A063880

/-- `∩[A325812(n+1), A167632(n)]` -/
def P3430069382284546239.Spec : Prop :=
  ∀ n, (P3430069382284546239.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P5052160490783038622

`A044102(A276378(n+1)+2*A276378(n+1))`
-/

namespace A063880.P5052160490783038622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A276378 (n + 1) + 2 * A276378 (n + 1)).toNat

end

end A063880.P5052160490783038622

namespace A063880

/-- `A044102(A276378(n+1)+2*A276378(n+1))` -/
def P5052160490783038622.Spec : Prop :=
  ∀ n, P5052160490783038622.a n = A063880 (n + 1)

end A063880

/-! ## A063880.P14984736407047422512

`∩[A195087(n+1), A339983(n+1)]`
-/

namespace A063880.P14984736407047422512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P14984736407047422512

namespace A063880

/-- `∩[A195087(n+1), A339983(n+1)]` -/
def P14984736407047422512.Spec : Prop :=
  ∀ n, (P14984736407047422512.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P16430478445316542313

`∩[A249726(n+1), A325812(n+1)]`
-/

namespace A063880.P16430478445316542313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P16430478445316542313

namespace A063880

/-- `∩[A249726(n+1), A325812(n+1)]` -/
def P16430478445316542313.Spec : Prop :=
  ∀ n, (P16430478445316542313.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P10833458559144138221

`∩[A339983(n+1), A381315(n+1)]`
-/

namespace A063880.P10833458559144138221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P10833458559144138221

namespace A063880

/-- `∩[A339983(n+1), A381315(n+1)]` -/
def P10833458559144138221.Spec : Prop :=
  ∀ n, (P10833458559144138221.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P8187955336932287481

`record[lcm(27, A088613(n+1))]`
-/

namespace A063880.P8187955336932287481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 27 (A088613 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P8187955336932287481

namespace A063880

/-- `record[lcm(27, A088613(n+1))]` -/
def P8187955336932287481.Spec : Prop :=
  ∀ n, (P8187955336932287481.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P13094458639989111123

`∩[A329880(n+1), A339983(n+1)]`
-/

namespace A063880.P13094458639989111123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P13094458639989111123

namespace A063880

/-- `∩[A329880(n+1), A339983(n+1)]` -/
def P13094458639989111123.Spec : Prop :=
  ∀ n, (P13094458639989111123.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P3231458412785402018

`∩[A173743(n+1), A339983(n+1)]`
-/

namespace A063880.P3231458412785402018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063880.P3231458412785402018

namespace A063880

/-- `∩[A173743(n+1), A339983(n+1)]` -/
def P3231458412785402018.Spec : Prop :=
  ∀ n, (P3231458412785402018.a n : ℤ) = A063880 (n + 1)

end A063880

/-! ## A063880.P11004660063413463310

`A008588(A008588(A008585(A276378(n+1))))`
-/

namespace A063880.P11004660063413463310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A008588 (A008585 (A276378 (n + 1)).toNat).toNat).toNat

end

end A063880.P11004660063413463310

namespace A063880

/-- `A008588(A008588(A008585(A276378(n+1))))` -/
def P11004660063413463310.Spec : Prop :=
  ∀ n, P11004660063413463310.a n = A063880 (n + 1)

end A063880

/-!
# A063881: Number of oriented trees rooted at an arc.

The programs for A063881, there is no canonical definition to state claims against.
-/

/-! ## A063881.P2790453351632446981

`A000151(n+2)-A000238(n+2)`
-/

namespace A063881.P2790453351632446981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000151 (n + 2) - A000238 (n + 2)

end

end A063881.P2790453351632446981

/-! ## A063881.P1972492907033329267

`A000151(n+2)-Δ[A174146(n+1)]`
-/

namespace A063881.P1972492907033329267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000151 (n + 2) - (f1 (n + 1) - f1 n)

end

end A063881.P1972492907033329267

/-! ## A063881.P16594397706646604687

`A007748(2*(n+2))-A000238(n+2)`
-/

namespace A063881.P16594397706646604687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (2 * (n + 2)) - A000238 (n + 2)

end

end A063881.P16594397706646604687

/-! ## A063881.P17782983633938666181

`A174146(n+1)+A000151(n+2)-A174146(n+2)`
-/

namespace A063881.P17782983633938666181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174146 (n + 1) + (A000151 (n + 2) - A174146 (n + 2))

end

end A063881.P17782983633938666181

/-!
# A063882: a(n) = a(n - a(n - 1)) + a(n - a(n - 4)), with a(1) = ... = a(4) = 1.

The programs for A063882, the canonical program `A063882.P3070067966620141214` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063882 has offset 1).

The definition of A063882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A063882.P3070067966620141214`, by `A063882.P3070067966620141214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063882.P3070067966620141214

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063882

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P3070067966620141214.Spec : Prop :=
  ∀ n, (P3070067966620141214.a n : ℤ) = A063882 (n + 1)

theorem P3070067966620141214.correct : P3070067966620141214.Spec := by
  intro n
  simp only [A063882, Nat.add_sub_cancel]

end A063882

/-! ## A063882.P4547531238964081031

`A136036(n)+a(n-1)` with `a(0)=1`
-/

namespace A063882.P4547531238964081031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136036 n + a (n - 1)

end

end A063882.P4547531238964081031

namespace A063882

/-- `A136036(n)+a(n-1)` -/
def P4547531238964081031.Spec : Prop :=
  ∀ n, P4547531238964081031.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P273201210114664035

`∑[char[A202014(n+1)-1]]`
-/

namespace A063882.P273201210114664035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063882.P273201210114664035

namespace A063882

/-- `∑[char[A202014(n+1)-1]]` -/
def P273201210114664035.Spec : Prop :=
  ∀ n, (P273201210114664035.a n : ℤ) = A063882 (n + 1)

end A063882

/-! ## A063882.P1782916562998729417

`∑[A136036(n+1)]+1-A136036(n+1)`
-/

namespace A063882.P1782916562998729417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A136036 (n + 1))

end

end A063882.P1782916562998729417

namespace A063882

/-- `∑[A136036(n+1)]+1-A136036(n+1)` -/
def P1782916562998729417.Spec : Prop :=
  ∀ n, P1782916562998729417.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P9276484778737930063

`A129632(n+2)-(A136036(n+1)+A129632(n+1))`
-/

namespace A063882.P9276484778737930063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129632 (n + 2) - (A136036 (n + 1) + A129632 (n + 1))

end

end A063882.P9276484778737930063

namespace A063882

/-- `A129632(n+2)-(A136036(n+1)+A129632(n+1))` -/
def P9276484778737930063.Spec : Prop :=
  ∀ n, P9276484778737930063.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P13729881547088313159

`A285758(2*(n+1))/2`
-/

namespace A063882.P13729881547088313159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (2 * (n + 1)) : ℚ) / 2

end

end A063882.P13729881547088313159

namespace A063882

/-- `A285758(2*(n+1))/2` -/
def P13729881547088313159.Spec : Prop :=
  ∀ n, P13729881547088313159.a n = (A063882 (n + 1) : ℚ)

end A063882

/-! ## A063882.P1794616958222388883

`A004526(A285758(2*(n+1)))`
-/

namespace A063882.P1794616958222388883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285758 (2 * (n + 1))).toNat

end

end A063882.P1794616958222388883

namespace A063882

/-- `A004526(A285758(2*(n+1)))` -/
def P1794616958222388883.Spec : Prop :=
  ∀ n, P1794616958222388883.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P15705425052855905921

`A289440(A285758(2*n+2))`
-/

namespace A063882.P15705425052855905921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A285758 (2 * n + 2)).toNat

end

end A063882.P15705425052855905921

namespace A063882

/-- `A289440(A285758(2*n+2))` -/
def P15705425052855905921.Spec : Prop :=
  ∀ n, P15705425052855905921.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P8199693461218044220

`A003602(A285758(2*(n+1))-1)`
-/

namespace A063882.P8199693461218044220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A285758 (2 * (n + 1)) - 1).toNat

end

end A063882.P8199693461218044220

namespace A063882

/-- `A003602(A285758(2*(n+1))-1)` -/
def P8199693461218044220.Spec : Prop :=
  ∀ n, P8199693461218044220.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P7539366886400976803

`A008619(A285758(2*n+1)-1)`
-/

namespace A063882.P7539366886400976803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285758 (2 * n + 1) - 1).toNat

end

end A063882.P7539366886400976803

namespace A063882

/-- `A008619(A285758(2*n+1)-1)` -/
def P7539366886400976803.Spec : Prop :=
  ∀ n, P7539366886400976803.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P1515069517064822253

`A004526(A285758(n+1+n)+1)`
-/

namespace A063882.P1515069517064822253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285758 (n + 1 + n) + 1).toNat

end

end A063882.P1515069517064822253

namespace A063882

/-- `A004526(A285758(n+1+n)+1)` -/
def P1515069517064822253.Spec : Prop :=
  ∀ n, P1515069517064822253.a n = A063882 (n + 1)

end A063882

/-! ## A063882.P12111505826034771847

`∑[A285758(2*(n+1))-A285758(2*n+1)]`
-/

namespace A063882.P12111505826034771847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (2 * (n + 1)) - A285758 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063882.P12111505826034771847

namespace A063882

/-- `∑[A285758(2*(n+1))-A285758(2*n+1)]` -/
def P12111505826034771847.Spec : Prop :=
  ∀ n, P12111505826034771847.a n = A063882 (n + 1)

end A063882

/-!
# A063883: Number of ways writing n as a sum of different Mersenne prime exponents (terms of A000043).

The programs for A063883, there is no canonical definition to state claims against.
-/

/-! ## A063883.P11743998561029727357

`A054973(2^(n+1))`
-/

namespace A063883.P11743998561029727357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (2 ^ (n + 1))

end

end A063883.P11743998561029727357

/-! ## A063883.P3638705518311999373

`A000586(A081596(n)+A038502(A108411(n)))`
-/

namespace A063883.P3638705518311999373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A081596 n + A038502 (A108411 n).toNat).toNat

end

end A063883.P3638705518311999373

/-! ## A063883.P11214724079612351553

`A302354(xor(A219529(n), A265188(n+1)))`
-/

namespace A063883.P11214724079612351553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (Int.xor (A219529 n) (A265188 (n + 1))).toNat

end

end A063883.P11214724079612351553

/-! ## A063883.P7130642579528517678

`A001222(or(A035394(n+15)!, A035394(n+13)))`
-/

namespace A063883.P7130642579528517678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (Nat.factorial (A035394 (n + 15)).toNat : ℤ) (A035394 (n + 13))).toNat

end

end A063883.P7130642579528517678

/-! ## A063883.P6992429195690870036

`A001055(A282599(n))%A027748(n+1)`
-/

namespace A063883.P6992429195690870036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A282599 n).toNat) (A027748 (n + 1))

end

end A063883.P6992429195690870036

/-!
# A063884: a(1) = 2, a(2) = 3 and a(k+1) is the least prime not already chosen that divides some a(i)*a(j)+1, where 1<=i<=j<=k.

The programs for A063884, there is no canonical definition to state claims against.
-/

/-! ## A063884.P13498616413197213595

`A008864(A368239(n)%A065107(n+1)+1)-1`
-/

namespace A063884.P13498616413197213595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (Int.tmod (A368239 n) (A065107 (n + 1)) + 1).toNat - 1

end

end A063884.P13498616413197213595

/-! ## A063884.P3019546832758069059

`A105560(lcm(A095240(n+1), A189398(n+1)))`
-/

namespace A063884.P3019546832758069059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (Int.lcm (A095240 (n + 1)) (A189398 (n + 1)))

end

end A063884.P3019546832758069059

/-! ## A063884.P4023342022264132280

`A094746(A364280(n+1))`
-/

namespace A063884.P4023342022264132280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094746 (A364280 (n + 1)).toNat

end

end A063884.P4023342022264132280

/-! ## A063884.P1311883304907819958

`A181819(2^A194962(n+1))`
-/

namespace A063884.P1311883304907819958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A194962 (n + 1) : ℤ))).toNat

end

end A063884.P1311883304907819958

/-! ## A063884.P4458101991100851654

`A000040(A194962(n+1)^A083961(n+1))`
-/

namespace A063884.P4458101991100851654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A194962 (n + 1) : ℚ) ^ (A083961 (n + 1) : ℤ))).toNat

end

end A063884.P4458101991100851654

/-!
# A063886: Number of n-step walks on a line starting from the origin but not returning to it.

The programs for A063886, the canonical program `A063886.P9006225015591204980` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063886 has offset 0).

The definition of A063886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063886.P9006225015591204980

`4*a(n-2)+2*(a(n-1)-4*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063886

/-- `4*a(n-2)+2*(a(n-1)-4*a(n-2))/n` -/
def P9006225015591204980.Spec : Prop :=
  ∀ n, P9006225015591204980.a n = (A063886 n : ℚ)

end A063886

/-! ## A063886.P11900886519495654495

`A089849(n)+A138364(n)`
-/

namespace A063886.P11900886519495654495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n + A138364 n

end

end A063886.P11900886519495654495

namespace A063886

/-- `A089849(n)+A138364(n)` -/
def P11900886519495654495.Spec : Prop :=
  ∀ n, P11900886519495654495.a n = A063886 n

end A063886

/-! ## A063886.P9777489619744701237

`2^n*A000246(n)/n!`
-/

namespace A063886.P9777489619744701237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000246 n : ℚ) / (Nat.factorial n : ℚ)

end

end A063886.P9777489619744701237

namespace A063886

/-- `2^n*A000246(n)/n!` -/
def P9777489619744701237.Spec : Prop :=
  ∀ n, P9777489619744701237.a n = (A063886 n : ℚ)

end A063886

/-! ## A063886.P2453937088995922278

`(n-1)*a(n-1)/floor(n/2)` with `a(0)=1, a(1)=2`
-/

namespace A063886.P2453937088995922278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (a (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

end

end A063886.P2453937088995922278

namespace A063886

/-- `(n-1)*a(n-1)/floor(n/2)` -/
def P2453937088995922278.Spec : Prop :=
  ∀ n, P2453937088995922278.a n = (A063886 n : ℚ)

end A063886

/-! ## A063886.P14794458049048565949

`A182027((n+1)%(2*n+1))`
-/

namespace A063886.P14794458049048565949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 ((n + 1) % (2 * n + 1))

end

end A063886.P14794458049048565949

namespace A063886

/-- `A182027((n+1)%(2*n+1))` -/
def P14794458049048565949.Spec : Prop :=
  ∀ n, P14794458049048565949.a n = A063886 n

end A063886

/-! ## A063886.P7903360154483536444

`∑[char[2*n]]*A089408(n+1)`
-/

namespace A063886.P7903360154483536444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A089408 (n + 1)

end

end A063886.P7903360154483536444

namespace A063886

/-- `∑[char[2*n]]*A089408(n+1)` -/
def P7903360154483536444.Spec : Prop :=
  ∀ n, P7903360154483536444.a n = A063886 n

end A063886

/-! ## A063886.P10624682574513289213

`A182027(A326178(n))`
-/

namespace A063886.P10624682574513289213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A326178 n).toNat

end

end A063886.P10624682574513289213

namespace A063886

/-- `A182027(A326178(n))` -/
def P10624682574513289213.Spec : Prop :=
  ∀ n, P10624682574513289213.a n = A063886 n

end A063886

/-! ## A063886.P10397329179095753060

`A182027(A087156(n+1))`
-/

namespace A063886.P10397329179095753060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A087156 (n + 1)).toNat

end

end A063886.P10397329179095753060

namespace A063886

/-- `A182027(A087156(n+1))` -/
def P10397329179095753060.Spec : Prop :=
  ∀ n, P10397329179095753060.a n = A063886 n

end A063886

/-! ## A063886.P3212994845143559308

`A182027(A184985(n+1))`
-/

namespace A063886.P3212994845143559308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A184985 (n + 1)).toNat

end

end A063886.P3212994845143559308

namespace A063886

/-- `A182027(A184985(n+1))` -/
def P3212994845143559308.Spec : Prop :=
  ∀ n, P3212994845143559308.a n = A063886 n

end A063886

/-! ## A063886.P13142157692204027045

`A182027(A199969(n+2))`
-/

namespace A063886.P13142157692204027045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A199969 (n + 2)).toNat

end

end A063886.P13142157692204027045

namespace A063886

/-- `A182027(A199969(n+2))` -/
def P13142157692204027045.Spec : Prop :=
  ∀ n, P13142157692204027045.a n = A063886 n

end A063886

/-! ## A063886.P3686449344205300028

`A000034(n)*A128014(n)`
-/

namespace A063886.P3686449344205300028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A128014 n

end

end A063886.P3686449344205300028

namespace A063886

/-- `A000034(n)*A128014(n)` -/
def P3686449344205300028.Spec : Prop :=
  ∀ n, P3686449344205300028.a n = A063886 n

end A063886

/-! ## A063886.P10900384018734804586

`lcm(A001316(n), A128014(n))`
-/

namespace A063886.P10900384018734804586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A128014 n)

end

end A063886.P10900384018734804586

namespace A063886

/-- `lcm(A001316(n), A128014(n))` -/
def P10900384018734804586.Spec : Prop :=
  ∀ n, (P10900384018734804586.a n : ℤ) = A063886 n

end A063886

/-! ## A063886.P7746792347469725917

`A182027(A163300(n+1)/2)`
-/

namespace A063886.P7746792347469725917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (SequenceMachineLib.roundAway ((A163300 (n + 1) : ℚ) / 2)).toNat

end

end A063886.P7746792347469725917

namespace A063886

/-- `A182027(A163300(n+1)/2)` -/
def P7746792347469725917.Spec : Prop :=
  ∀ n, P7746792347469725917.a n = A063886 n

end A063886

/-! ## A063886.P14243287849053078931

`A182027(1-A000007(n)+n)`
-/

namespace A063886.P14243287849053078931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (1 - A000007 n + (n : ℤ)).toNat

end

end A063886.P14243287849053078931

namespace A063886

/-- `A182027(1-A000007(n)+n)` -/
def P14243287849053078931.Spec : Prop :=
  ∀ n, P14243287849053078931.a n = A063886 n

end A063886

/-! ## A063886.P10753197441560702416

`A040001(n+1)*A128014(n)`
-/

namespace A063886.P10753197441560702416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A128014 n

end

end A063886.P10753197441560702416

namespace A063886

/-- `A040001(n+1)*A128014(n)` -/
def P10753197441560702416.Spec : Prop :=
  ∀ n, P10753197441560702416.a n = A063886 n

end A063886

/-! ## A063886.P10531029218359637730

`A182027(1-(A000007(n)-n))`
-/

namespace A063886.P10531029218359637730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (1 - (A000007 n - (n : ℤ))).toNat

end

end A063886.P10531029218359637730

namespace A063886

/-- `A182027(1-(A000007(n)-n))` -/
def P10531029218359637730.Spec : Prop :=
  ∀ n, P10531029218359637730.a n = A063886 n

end A063886

/-! ## A063886.P9599519698128379681

`A036453(n+1)*A210736(n)`
-/

namespace A063886.P9599519698128379681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A210736 n

end

end A063886.P9599519698128379681

namespace A063886

/-- `A036453(n+1)*A210736(n)` -/
def P9599519698128379681.Spec : Prop :=
  ∀ n, P9599519698128379681.a n = A063886 n

end A063886

/-! ## A063886.P15056463476776382057

`A152271(n)*A241543(n+1)`
-/

namespace A063886.P15056463476776382057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A241543 (n + 1)

end

end A063886.P15056463476776382057

namespace A063886

/-- `A152271(n)*A241543(n+1)` -/
def P15056463476776382057.Spec : Prop :=
  ∀ n, P15056463476776382057.a n = A063886 n

end A063886

/-! ## A063886.P1143426498595844184

`(2-A000007(n))*A210736(n)`
-/

namespace A063886.P1143426498595844184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A210736 n

end

end A063886.P1143426498595844184

namespace A063886

/-- `(2-A000007(n))*A210736(n)` -/
def P1143426498595844184.Spec : Prop :=
  ∀ n, P1143426498595844184.a n = A063886 n

end A063886

/-!
# A063887: Number of n-step walks on a square lattice starting from the origin but not returning to it at any stage.

The programs for A063887, there is no canonical definition to state claims against.
-/

/-! ## A063887.P13467599590066129658

`record[A111580(A056941(n))]`
-/

namespace A063887.P13467599590066129658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111580 (A056941 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063887.P13467599590066129658

/-! ## A063887.P2538233136489665939

`A228354(A022811(n+1))`
-/

namespace A063887.P2538233136489665939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A022811 (n + 1)).toNat

end

end A063887.P2538233136489665939

/-!
# A063888: Number of n-step walks on a cube lattice starting from the origin but not returning to it at any stage.

The programs for A063888, there is no canonical definition to state claims against.
-/

/-! ## A063888.P13739353981604573348

`A078429(n!*A173682(n))`
-/

namespace A063888.P13739353981604573348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 ((Nat.factorial n : ℤ) * A173682 n).toNat

end

end A063888.P13739353981604573348

/-!
# A063894: Start with x, y; then concatenate each word in turn with all preceding words, getting x y xy xxy yxy xxxy yxxy xyxxy ...; sequence gives number of words of length n. Also binary trees by degree: x y (x,y) (x,(x,y)) (y,(x,y)) (x,(x,(x,y))) (y,(x,(x,y))) ((x,y),(x,(x,y)))...

The programs for A063894, there is no canonical definition to state claims against.
-/

/-! ## A063894.P12403433369528561888

`A317137(floor(A317132(n)+acot(n)))`
-/

namespace A063894.P12403433369528561888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 ⌊(A317132 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A063894.P12403433369528561888

/-! ## A063894.P709774411623474995

`A059117(n)+floor(root(A039628(n+1), 3)²)`
-/

namespace A063894.P709774411623474995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059117 n + ⌊((A039628 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋

end

end A063894.P709774411623474995

/-! ## A063894.P15800575926895404531

`A124344(n+1)+∑{d}[A002110(n), -(-1)^#]`
-/

namespace A063894.P15800575926895404531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124344 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A063894.P15800575926895404531

/-! ## A063894.P18100938579994573132

`A317137(A317132(n)+A034657(n))`
-/

namespace A063894.P18100938579994573132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A317132 n + A034657 n).toNat

end

end A063894.P18100938579994573132

/-!
# A063895: Start with x, xy; then concatenate each word in turn with all preceding words, getting x xy xxy xxxy xyxxy xxxxy xyxxxy xxyxxxy ...; sequence gives number of words of length n. Also binary trees by degree: x (x,y) (x,(x,y)) (x,(x,(x,y))) ((x,y),(x,(x,y)))...

The programs for A063895, there is no canonical definition to state claims against.
-/

/-! ## A063895.P407043448897714562

`A137735(xor(1, A333114(n)))`
-/

namespace A063895.P407043448897714562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor 1 (A333114 n)).toNat

end

end A063895.P407043448897714562

/-! ## A063895.P3071091736766150896

`A125007(A084835(n+2)+2)`
-/

namespace A063895.P3071091736766150896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (A084835 (n + 2) + 2).toNat

end

end A063895.P3071091736766150896

/-! ## A063895.P4478162309087552901

`floor(A022558(n)²/A239298(n))`
-/

namespace A063895.P4478162309087552901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022558 n ^ 2 : ℚ) / (A239298 n : ℚ)⌋

end

end A063895.P4478162309087552901

/-! ## A063895.P10955054476724125739

`A000196(floor(sqrt(A032184(n+1))/(n+1)))`
-/

namespace A063895.P10955054476724125739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊Real.sqrt (A032184 (n + 1) : ℝ) / (n + 1 : ℝ)⌋.toNat

end

end A063895.P10955054476724125739

/-! ## A063895.P15826334926357401884

`A358724(A124973(n))+A124973(n)`
-/

namespace A063895.P15826334926357401884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A124973 n).toNat + A124973 n

end

end A063895.P15826334926357401884

/-!
# A063896: a(n) = 2^Fibonacci(n) - 1.

The programs for A063896, the canonical program `A063896.P13745238574859807931` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063896 has offset 0).

The definition of A063896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063896.P13745238574859807931

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A063896

/-- `(a(n-1)+1)*(a(n-2)+1)-1` -/
def P13745238574859807931.Spec : Prop :=
  ∀ n, P13745238574859807931.a n = A063896 n

theorem P13745238574859807931.correct : P13745238574859807931.Spec := by
  intro n
  simp only [A063896]

end A063896

/-! ## A063896.P980573545906892194

`A000301(n)-1`
-/

namespace A063896.P980573545906892194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 n - 1

end

end A063896.P980573545906892194

namespace A063896

/-- `A000301(n)-1` -/
def P980573545906892194.Spec : Prop :=
  ∀ n, P980573545906892194.a n = A063896 n

end A063896

/-! ## A063896.P6046106280452694520

`A000225(A000045(n))`
-/

namespace A063896.P6046106280452694520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000045 n).toNat

end

end A063896.P6046106280452694520

namespace A063896

/-- `A000225(A000045(n))` -/
def P6046106280452694520.Spec : Prop :=
  ∀ n, P6046106280452694520.a n = A063896 n

end A063896

/-! ## A063896.P18127430887122000428

`Δ[∑[a(n-1)*a(n-2)]-n]` with `a(0)=2, a(1)=1`
-/

namespace A063896.P18127430887122000428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063896.P18127430887122000428

namespace A063896

/-- `Δ[∑[a(n-1)*a(n-2)]-n]` -/
def P18127430887122000428.Spec : Prop :=
  ∀ n, P18127430887122000428.a n = A063896 n

end A063896

/-! ## A063896.P10334803976482702689

`A228778(n)-2`
-/

namespace A063896.P10334803976482702689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228778 n - 2

end

end A063896.P10334803976482702689

namespace A063896

/-- `A228778(n)-2` -/
def P10334803976482702689.Spec : Prop :=
  ∀ n, P10334803976482702689.a n = A063896 n

end A063896

/-!
# A063897: a(n) is the least k such that k - A000215(j), j=0..n, are all primes.

The programs for A063897, there is no canonical definition to state claims against.
-/

/-! ## A063897.P4596353907014393330

`p?[or(1, 2^n)]+p?[2^n+1]-A052999(n+1)`
-/

namespace A063897.P4596353907014393330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A052999 (n + 1))

end

end A063897.P4596353907014393330

