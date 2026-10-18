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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110300: Not-really primes: numbers n such that n - 1, n and n + 1 all have only 1 or 2 prime factors.

The programs for A110300, there is no canonical definition to state claims against.
-/

/-! ## A110300.P3524455116872292730

`record[A000005(A193947(n+1))+2]`
-/

namespace A110300.P3524455116872292730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A193947 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110300.P3524455116872292730

/-! ## A110300.P4761917102497957350

`eq[A001222(A113058(n+1)), A324350(n)]`
-/

namespace A110300.P4761917102497957350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A113058 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110300.P4761917102497957350

/-! ## A110300.P12812100224374587420

`eq[A100802(n), A168181(A181821(n+1))]`
-/

namespace A110300.P12812100224374587420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A181821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110300.P12812100224374587420

/-! ## A110300.P15735612971010605648

`lt[A047994(2*(n+1)), A307720(A000326(3*n+1))]`
-/

namespace A110300.P15735612971010605648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A000326 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110300.P15735612971010605648

/-!
# A110301: Integers written in base "triangle".

The programs for A110301, there is no canonical definition to state claims against.
-/

/-! ## A110301.P11367366910275445867

`A083178(n+1)-A097013(A155497(n))`
-/

namespace A110301.P11367366910275445867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083178 (n + 1) - A097013 (A155497 n).toNat

end

end A110301.P11367366910275445867

/-! ## A110301.P4450575860570343887

`A083178(n+1)-A336488(A176642(n))`
-/

namespace A110301.P4450575860570343887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083178 (n + 1) - A336488 (A176642 n).toNat

end

end A110301.P4450575860570343887

/-!
# A110302: Number of inequivalent indecomposable self-dual codes of Type {4^H+}_II and length 2n.

The programs for A110302, there is no canonical definition to state claims against.
-/

/-! ## A110302.P10285470794561116369

`C(A046068(A046087(2*(n+2))), floor(n/3))`
-/

namespace A110302.P10285470794561116369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046068 (A046087 (2 * (n + 2))).toNat).toNat ⌊(n : ℚ) / 3⌋.toNat

end

end A110302.P10285470794561116369

/-! ## A110302.P3118379269563373846

`A175773(A000045(n+3))+A048720(n)`
-/

namespace A110302.P3118379269563373846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175773 (A000045 (n + 3)).toNat + A048720 n

end

end A110302.P3118379269563373846

/-! ## A110302.P10547116002512709334

`A175773(A173244(3*n+4))+A116900(n)`
-/

namespace A110302.P10547116002512709334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175773 (A173244 (3 * n + 4)).toNat + A116900 n

end

end A110302.P10547116002512709334

/-!
# A110303: Alternators.

The programs for A110303, the canonical program `A110303.P13833677431266145568` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110303 has offset 1).

The definition of A110303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110303.P4167729481018564351

`comp[20*n]`
-/

namespace A110303.P4167729481018564351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A110303.P4167729481018564351

namespace A110303

/-- `comp[20*n]` -/
def P4167729481018564351.Spec : Prop :=
  ∀ n, (P4167729481018564351.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P13833677431266145568

`lt[n, lcm(20, n)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110303

/-- `lt[n, lcm(20, n)]` -/
def P13833677431266145568.Spec : Prop :=
  ∀ n, (P13833677431266145568.a n : ℤ) = A110303 (n + 1)

theorem P13833677431266145568.correct : P13833677431266145568.Spec := by
  intro n
  simp only [A110303, Nat.add_sub_cancel]

end A110303

/-! ## A110303.P8669586020871667314

`∑[(char[19*(n+1)]+1)!]`
-/

namespace A110303.P8669586020871667314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110303.P8669586020871667314

namespace A110303

/-- `∑[(char[19*(n+1)]+1)!]` -/
def P8669586020871667314.Spec : Prop :=
  ∀ n, (P8669586020871667314.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P7638618520152909871

`record[(n+1)%lcm(4, lcm(5, n+1))]`
-/

namespace A110303.P7638618520152909871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.lcm 4 (Nat.lcm 5 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110303.P7638618520152909871

namespace A110303

/-- `record[(n+1)%lcm(4, lcm(5, n+1))]` -/
def P7638618520152909871.Spec : Prop :=
  ∀ n, (P7638618520152909871.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P3530507956890246739

`∑[∑[A014028(n)]]+n`
-/

namespace A110303.P3530507956890246739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110303.P3530507956890246739

namespace A110303

/-- `∑[∑[A014028(n)]]+n` -/
def P3530507956890246739.Spec : Prop :=
  ∀ n, P3530507956890246739.a n = A110303 (n + 1)

end A110303

/-! ## A110303.P15987510130866504381

`∪[A047201(n+1), A014528(n)]`
-/

namespace A110303.P15987510130866504381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110303.P15987510130866504381

namespace A110303

/-- `∪[A047201(n+1), A014528(n)]` -/
def P15987510130866504381.Spec : Prop :=
  ∀ n, (P15987510130866504381.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P5354663927396424710

`∪[A067251(n+1), A014528(n)]`
-/

namespace A110303.P5354663927396424710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110303.P5354663927396424710

namespace A110303

/-- `∪[A067251(n+1), A014528(n)]` -/
def P5354663927396424710.Spec : Prop :=
  ∀ n, (P5354663927396424710.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P11957158946388630964

`∪[A067251(n+1), A016825(n)]`
-/

namespace A110303.P11957158946388630964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110303.P11957158946388630964

namespace A110303

/-- `∪[A067251(n+1), A016825(n)]` -/
def P11957158946388630964.Spec : Prop :=
  ∀ n, (P11957158946388630964.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P5871192706544638525

`comp[A004767(A004767(n)+1+n)]+1`
-/

namespace A110303.P5871192706544638525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A004767 n + 1 + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A110303.P5871192706544638525

namespace A110303

/-- `comp[A004767(A004767(n)+1+n)]+1` -/
def P5871192706544638525.Spec : Prop :=
  ∀ n, (P5871192706544638525.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P1510741798002229983

`∑[A072721(gcd(n, A004769(n+1)))]+n`
-/

namespace A110303.P1510741798002229983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 (Int.gcd (n : ℤ) (A004769 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A110303.P1510741798002229983

namespace A110303

/-- `∑[A072721(gcd(n, A004769(n+1)))]+n` -/
def P1510741798002229983.Spec : Prop :=
  ∀ n, P1510741798002229983.a n = A110303 (n + 1)

end A110303

/-! ## A110303.P13661882320834335545

`lt[0, n*A106005(n)]`
-/

namespace A110303.P13661882320834335545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110303.P13661882320834335545

namespace A110303

/-- `lt[0, n*A106005(n)]` -/
def P13661882320834335545.Spec : Prop :=
  ∀ n, (P13661882320834335545.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P8419260073728966717

`lt[char[5*n], A255051(n+1)]`
-/

namespace A110303.P8419260073728966717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A110303.P8419260073728966717

namespace A110303

/-- `lt[char[5*n], A255051(n+1)]` -/
def P8419260073728966717.Spec : Prop :=
  ∀ n, (P8419260073728966717.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P11032569078560318853

`lt[acot(A109046(n)-n), A167817(n)]`
-/

namespace A110303.P11032569078560318853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A109046 n - (n : ℤ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A110303.P11032569078560318853

namespace A110303

/-- `lt[acot(A109046(n)-n), A167817(n)]` -/
def P11032569078560318853.Spec : Prop :=
  ∀ n, (P11032569078560318853.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P3209573934870226453

`lt[A040347(n), A040306(A072458(n))]`
-/

namespace A110303.P3209573934870226453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 (A072458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110303.P3209573934870226453

namespace A110303

/-- `lt[A040347(n), A040306(A072458(n))]` -/
def P3209573934870226453.Spec : Prop :=
  ∀ n, (P3209573934870226453.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P842141905734699039

`lt[1, Δ[A327539(n+1)]²]`
-/

namespace A110303.P842141905734699039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110303.P842141905734699039

namespace A110303

/-- `lt[1, Δ[A327539(n+1)]²]` -/
def P842141905734699039.Spec : Prop :=
  ∀ n, (P842141905734699039.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P11633398794927716658

`lt[A007814(n+4), A109046(n)+2-n]`
-/

namespace A110303.P11633398794927716658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 n + (2 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110303.P11633398794927716658

namespace A110303

/-- `lt[A007814(n+4), A109046(n)+2-n]` -/
def P11633398794927716658.Spec : Prop :=
  ∀ n, (P11633398794927716658.a n : ℤ) = A110303 (n + 1)

end A110303

/-! ## A110303.P7655100757580226183

`record[A056963(A056963(n+1))]`
-/

namespace A110303.P7655100757580226183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 (A056963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110303.P7655100757580226183

namespace A110303

/-- `record[A056963(A056963(n+1))]` -/
def P7655100757580226183.Spec : Prop :=
  ∀ n, P7655100757580226183.a n = A110303 (n + 1)

end A110303

/-! ## A110303.P14118276423405999680

`record[A169894(2*n+1)]`
-/

namespace A110303.P14118276423405999680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169894 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110303.P14118276423405999680

namespace A110303

/-- `record[A169894(2*n+1)]` -/
def P14118276423405999680.Spec : Prop :=
  ∀ n, P14118276423405999680.a n = A110303 (n + 1)

end A110303

/-!
# A110304: Least alternating multiple of alternators.

The programs for A110304, there is no canonical definition to state claims against.
-/

/-! ## A110304.P9168660435768960213

`(n+1)*A110305(n+1)`
-/

namespace A110304.P9168660435768960213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110305 (n + 1)

end

end A110304.P9168660435768960213

/-! ## A110304.P4498064091168350866

`A110305(1/(n+1)^(-1))/(n+1)^(-1)`
-/

namespace A110304.P4498064091168350866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110305 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) ^ (-1 : ℤ))).toNat : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A110304.P4498064091168350866

/-! ## A110304.P11787222605893952165

`A343335(n+1)/C(A343336(n+1), A110305(n+1))`
-/

namespace A110304.P11787222605893952165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343335 (n + 1) : ℚ) / (Nat.choose (A343336 (n + 1)).toNat (A110305 (n + 1)).toNat : ℚ)

end

end A110304.P11787222605893952165

/-! ## A110304.P14772405142644063571

`(n+1)^2^C(n, 10)`
-/

namespace A110304.P14772405142644063571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 ^ Nat.choose n 10

end

end A110304.P14772405142644063571

/-! ## A110304.P7057468143233423405

`(n+1)^and(n, dr(n+2)!)!`
-/

namespace A110304.P7057468143233423405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.factorial (Nat.land n (Nat.factorial (SequenceMachineLib.digitalRoot (n + 2 : ℤ))))

end

end A110304.P7057468143233423405

/-!
# A110305: Factors of alternators which produce least alternating multiples.

The programs for A110305, there is no canonical definition to state claims against.
-/

/-! ## A110305.P6604290787455273322

`A110304(n+1)/(1+n)`
-/

namespace A110305.P6604290787455273322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110304 (n + 1) : ℚ) / (1 + n : ℚ)

end

end A110305.P6604290787455273322

/-! ## A110305.P6093920777807618026

`ceil(acot(A110303(n+1))*A110304(n+1))`
-/

namespace A110305.P6093920777807618026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A110303 (n + 1) : ℝ) * (A110304 (n + 1) : ℝ)⌉

end

end A110305.P6093920777807618026

/-! ## A110305.P3322037615602608034

`A000027(n+1)^-1*A110304(n+1)`
-/

namespace A110305.P3322037615602608034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (-1 : ℤ) * (A110304 (n + 1) : ℚ)

end

end A110305.P3322037615602608034

/-! ## A110305.P481272264998969932

`(n+1)^A033999(2*n+3)*A110304(n+1)`
-/

namespace A110305.P481272264998969932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A033999 (2 * n + 3) : ℤ) * (A110304 (n + 1) : ℚ)

end

end A110305.P481272264998969932

/-! ## A110305.P16936915446583880498

`(A074378(2*n+3)-A110304(n+1))%(n+2)`
-/

namespace A110305.P16936915446583880498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074378 (2 * n + 3) - A110304 (n + 1)) (n + 2 : ℤ)

end

end A110305.P16936915446583880498

/-! ## A110305.P5927391557306276459

`(n+1)^A008683(A007918(n))*A110304(n+1)`
-/

namespace A110305.P5927391557306276459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ) * (A110304 (n + 1) : ℚ)

end

end A110305.P5927391557306276459

/-!
# A110306: Number of inequivalent (indecomposable or decomposable) self-dual codes of Type {4^H+}_II and length 2n.

The programs for A110306, there is no canonical definition to state claims against.
-/

/-! ## A110306.P1489297292669692183

`floor(sqrt(A290436(∑[n])))`
-/

namespace A110306.P1489297292669692183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A290436 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A110306.P1489297292669692183

/-! ## A110306.P10359223900423565015

`A151693(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=21`
-/

namespace A110306.P10359223900423565015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 21] fun n a =>
  A151693 (a (n - 1)).toNat

end

end A110306.P10359223900423565015

/-!
# A110307: Expansion of (1+2*x)/((1+x+x^2)*(1+5*x+x^2)).

The programs for A110307, the canonical program `A110307.P4265106444735686287` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110307 has offset 0).

The definition of A110307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+6x+7x^2+6x^3+x^4))` (program `A110307.P4265106444735686287`, by `A110307.P4265106444735686287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110307.P4265106444735686287

`ogf((1+2x)/(1+6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110307

/-- `ogf((1+2x)/(1+6x+7x^2+6x^3+x^4))` -/
def P4265106444735686287.Spec : Prop :=
  ∀ n, P4265106444735686287.a n = A110307 n

theorem P4265106444735686287.correct : P4265106444735686287.Spec := by
  intro n
  simp only [A110307]

end A110307

/-! ## A110307.P11629261436800223137

`A110310(n+1)-(A110311(n+1)+A110308(n+1))`
-/

namespace A110307.P11629261436800223137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110310 (n + 1) - (A110311 (n + 1) + A110308 (n + 1))

end

end A110307.P11629261436800223137

namespace A110307

/-- `A110310(n+1)-(A110311(n+1)+A110308(n+1))` -/
def P11629261436800223137.Spec : Prop :=
  ∀ n, P11629261436800223137.a n = A110307 n

end A110307

/-!
# A110308: Expansion of -x*(2+x)/((1+x+x^2)*(1+5*x+x^2)).

The programs for A110308, the canonical program `A110308.P3059975987130152659` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110308 has offset 0).

The definition of A110308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-2x-x^2)/(1+6x+7x^2+6x^3+x^4))` (program `A110308.P3059975987130152659`, by `A110308.P3059975987130152659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110308.P3059975987130152659

`ogf((-2x-x^2)/(1+6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110308

/-- `ogf((-2x-x^2)/(1+6x+7x^2+6x^3+x^4))` -/
def P3059975987130152659.Spec : Prop :=
  ∀ n, P3059975987130152659.a n = A110308 n

theorem P3059975987130152659.correct : P3059975987130152659.Spec := by
  intro n
  simp only [A110308]

end A110308

/-! ## A110308.P7676488652451304294

`Δ[A110309(n)-∑[A110307(n)]]`
-/

namespace A110308.P7676488652451304294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110309 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110308.P7676488652451304294

namespace A110308

/-- `Δ[A110309(n)-∑[A110307(n)]]` -/
def P7676488652451304294.Spec : Prop :=
  ∀ n, P7676488652451304294.a n = A110308 n

end A110308

/-! ## A110308.P5658442154763021286

`Δ[A110309(n)]-A110307(n+1)`
-/

namespace A110308.P5658442154763021286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110307 (n + 1)

end

end A110308.P5658442154763021286

namespace A110308

/-- `Δ[A110309(n)]-A110307(n+1)` -/
def P5658442154763021286.Spec : Prop :=
  ∀ n, P5658442154763021286.a n = A110308 n

end A110308

/-! ## A110308.P12098837598160573217

`A110309(n+1)-(A110309(n)+A110307(n+1))`
-/

namespace A110308.P12098837598160573217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110309 (n + 1) - (A110309 n + A110307 (n + 1))

end

end A110308.P12098837598160573217

namespace A110308

/-- `A110309(n+1)-(A110309(n)+A110307(n+1))` -/
def P12098837598160573217.Spec : Prop :=
  ∀ n, P12098837598160573217.a n = A110308 n

end A110308

/-! ## A110308.P207720080486704109

`Δ[(A184334(2*(n+1))+A110310(n))/3]-A110307(n+1)`
-/

namespace A110308.P207720080486704109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184334 (2 * (n + 1)) + A110310 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A110307 (n + 1) : ℚ)

end

end A110308.P207720080486704109

namespace A110308

/-- `Δ[(A184334(2*(n+1))+A110310(n))/3]-A110307(n+1)` -/
def P207720080486704109.Spec : Prop :=
  ∀ n, P207720080486704109.a n = (A110308 n : ℚ)

end A110308

/-!
# A110309: Expansion of (1+3*x+x^2)/((1+x+x^2)*(1+5*x+x^2)).

The programs for A110309, the canonical program `A110309.P11266882152803014108` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110309 has offset 0).

The definition of A110309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2)/(1+6x+7x^2+6x^3+x^4))` (program `A110309.P11266882152803014108`, by `A110309.P11266882152803014108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110309.P11266882152803014108

`ogf((1+3x+x^2)/(1+6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110309

/-- `ogf((1+3x+x^2)/(1+6x+7x^2+6x^3+x^4))` -/
def P11266882152803014108.Spec : Prop :=
  ∀ n, P11266882152803014108.a n = A110309 n

theorem P11266882152803014108.correct : P11266882152803014108.Spec := by
  intro n
  simp only [A110309]

end A110309

/-! ## A110309.P15053846724300576535

`(A184334(2*(n+1))+A110310(n))/3`
-/

namespace A110309.P15053846724300576535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184334 (2 * (n + 1)) + A110310 n : ℚ) / 3

end

end A110309.P15053846724300576535

namespace A110309

/-- `(A184334(2*(n+1))+A110310(n))/3` -/
def P15053846724300576535.Spec : Prop :=
  ∀ n, P15053846724300576535.a n = (A110309 n : ℚ)

end A110309

/-!
# A110310: Expansion of (1-x+x^2)/((x^2+x+1)*(x^2+5*x+1)).

The programs for A110310, the canonical program `A110310.P1317284694636161537` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110310 has offset 0).

The definition of A110310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1+6x+7x^2+6x^3+x^4))` (program `A110310.P1317284694636161537`, by `A110310.P1317284694636161537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110310.P1317284694636161537

`ogf((1-x+x^2)/(1+6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110310

/-- `ogf((1-x+x^2)/(1+6x+7x^2+6x^3+x^4))` -/
def P1317284694636161537.Spec : Prop :=
  ∀ n, P1317284694636161537.a n = A110310 n

theorem P1317284694636161537.correct : P1317284694636161537.Spec := by
  intro n
  simp only [A110310]

end A110310

/-! ## A110310.P9579343875913437573

`3*A110309(n)-A184334(2*(n+1))`
-/

namespace A110310.P9579343875913437573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A110309 n - A184334 (2 * (n + 1))

end

end A110310.P9579343875913437573

namespace A110310

/-- `3*A110309(n)-A184334(2*(n+1))` -/
def P9579343875913437573.Spec : Prop :=
  ∀ n, P9579343875913437573.a n = A110310 n

end A110310

/-!
# A110311: Expansion of 1/((1+x+x^2)*(1+5*x+x^2)).

The programs for A110311, the canonical program `A110311.P5970944863796196558` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110311 has offset 0).

The definition of A110311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+6x+7x^2+6x^3+x^4))` (program `A110311.P5970944863796196558`, by `A110311.P5970944863796196558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110311.P5970944863796196558

`ogf(1/(1+6x+7x^2+6x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110311

/-- `ogf(1/(1+6x+7x^2+6x^3+x^4))` -/
def P5970944863796196558.Spec : Prop :=
  ∀ n, P5970944863796196558.a n = A110311 n

theorem P5970944863796196558.correct : P5970944863796196558.Spec := by
  intro n
  simp only [A110311]

end A110311

/-! ## A110311.P14625688402975548930

`A110307(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A110311.P14625688402975548930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110307 n - (a (n - 1) + a (n - 1))

end

end A110311.P14625688402975548930

namespace A110311

/-- `A110307(n)-(a(n-1)+a(n-1))` -/
def P14625688402975548930.Spec : Prop :=
  ∀ n, P14625688402975548930.a n = A110311 n

end A110311

/-! ## A110311.P2394298532714079271

`(A049347(n+1)-A110309(n+1))/2`
-/

namespace A110311.P2394298532714079271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) - A110309 (n + 1) : ℚ) / 2

end

end A110311.P2394298532714079271

namespace A110311

/-- `(A049347(n+1)-A110309(n+1))/2` -/
def P2394298532714079271.Spec : Prop :=
  ∀ n, P2394298532714079271.a n = (A110311 n : ℚ)

end A110311

/-! ## A110311.P11088614135926357589

`A110307(n)+A110309(n)-A049347(n)`
-/

namespace A110311.P11088614135926357589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110307 n + (A110309 n - A049347 n)

end

end A110311.P11088614135926357589

namespace A110311

/-- `A110307(n)+A110309(n)-A049347(n)` -/
def P11088614135926357589.Spec : Prop :=
  ∀ n, P11088614135926357589.a n = A110311 n

end A110311

/-! ## A110311.P12422226022558897210

`A049347(n+1)+A110308(n+1)-A110307(n+1)`
-/

namespace A110311.P12422226022558897210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A110308 (n + 1) - A110307 (n + 1))

end

end A110311.P12422226022558897210

namespace A110311

/-- `A049347(n+1)+A110308(n+1)-A110307(n+1)` -/
def P12422226022558897210.Spec : Prop :=
  ∀ n, P12422226022558897210.a n = A110311 n

end A110311

/-! ## A110311.P17347203104255927463

`A110307(n+1)-A110308(n+1)-A110309(n+1)`
-/

namespace A110311.P17347203104255927463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110307 (n + 1) - A110308 (n + 1) - A110309 (n + 1)

end

end A110311.P17347203104255927463

namespace A110311

/-- `A110307(n+1)-A110308(n+1)-A110309(n+1)` -/
def P17347203104255927463.Spec : Prop :=
  ∀ n, P17347203104255927463.a n = A110311 n

end A110311

/-!
# A110313: Expansion of e.g.f. exp(x)/(1-x-x^2).

The programs for A110313, there is no canonical definition to state claims against.
-/

/-! ## A110313.P14989917624161503042

`n*(a(n-1)+(n-1)*a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A110313.P14989917624161503042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) + 1

end

end A110313.P14989917624161503042

/-! ## A110313.P8367571940152186502

`A000142(n)/A279335(n)*A279334(n)`
-/

namespace A110313.P8367571940152186502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A279335 n : ℚ) * (A279334 n : ℚ)

end

end A110313.P8367571940152186502

/-! ## A110313.P3914271368769030748

`A279334(n)*A333381(A001405(n))`
-/

namespace A110313.P3914271368769030748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279334 n * A333381 (A001405 n).toNat

end

end A110313.P3914271368769030748

/-! ## A110313.P3265773880781957554

`lcm(A002487(A164640(n+1)), A279334(n))`
-/

namespace A110313.P3265773880781957554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002487 (A164640 (n + 1)).toNat) (A279334 n)

end

end A110313.P3265773880781957554

/-!
# A110314: Inverse of number triangle related to Fibonacci numbers.

The programs for A110314, the canonical program `A110314.P17590807438528676276` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110314 has offset 0).

The definition of A110314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110314.P15025616465490740968

`A110330(n)/(char[∑[n]-2]+1)`
-/

namespace A110314.P15025616465490740968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110330 n : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A110314.P15025616465490740968

namespace A110314

/-- `A110330(n)/(char[∑[n]-2]+1)` -/
def P15025616465490740968.Spec : Prop :=
  ∀ n, P15025616465490740968.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P12344544191311321703

`A132440(n)+A110330(n)`
-/

namespace A110314.P12344544191311321703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n + A110330 n

end

end A110314.P12344544191311321703

namespace A110314

/-- `A132440(n)+A110330(n)` -/
def P12344544191311321703.Spec : Prop :=
  ∀ n, P12344544191311321703.a n = A110314 n

end A110314

/-! ## A110314.P15284048394825748429

`A110324(n)/A101566(n)`
-/

namespace A110314.P15284048394825748429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A101566 n : ℚ)

end

end A110314.P15284048394825748429

namespace A110314

/-- `A110324(n)/A101566(n)` -/
def P15284048394825748429.Spec : Prop :=
  ∀ n, P15284048394825748429.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P9896911865542672277

`A110324(n)/A106476(n)`
-/

namespace A110314.P9896911865542672277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A106476 n : ℚ)

end

end A110314.P9896911865542672277

namespace A110314

/-- `A110324(n)/A106476(n)` -/
def P9896911865542672277.Spec : Prop :=
  ∀ n, P9896911865542672277.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P4831524420210059309

`A110324(n)/A194543(n)`
-/

namespace A110314.P4831524420210059309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A194543 n : ℚ)

end

end A110314.P4831524420210059309

namespace A110314

/-- `A110324(n)/A194543(n)` -/
def P4831524420210059309.Spec : Prop :=
  ∀ n, P4831524420210059309.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P13534585440068650511

`A110324(n)/A343234(n)`
-/

namespace A110314.P13534585440068650511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A343234 n : ℚ)

end

end A110314.P13534585440068650511

namespace A110314

/-- `A110324(n)/A343234(n)` -/
def P13534585440068650511.Spec : Prop :=
  ∀ n, P13534585440068650511.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P17590807438528676276

`A094441(n)*A141679(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110314

/-- `A094441(n)*A141679(n+1)` -/
def P17590807438528676276.Spec : Prop :=
  ∀ n, P17590807438528676276.a n = A110314 n

theorem P17590807438528676276.correct : P17590807438528676276.Spec := by
  intro n
  simp only [A110314]

end A110314

/-! ## A110314.P14903782621780642665

`A107230(n)*A141679(n+1)`
-/

namespace A110314.P14903782621780642665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A141679 (n + 1)

end

end A110314.P14903782621780642665

namespace A110314

/-- `A107230(n)*A141679(n+1)` -/
def P14903782621780642665.Spec : Prop :=
  ∀ n, P14903782621780642665.a n = A110314 n

end A110314

/-! ## A110314.P16322547574860896937

`A119468(n)*A141679(n+1)`
-/

namespace A110314.P16322547574860896937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 n * A141679 (n + 1)

end

end A110314.P16322547574860896937

namespace A110314

/-- `A119468(n)*A141679(n+1)` -/
def P16322547574860896937.Spec : Prop :=
  ∀ n, P16322547574860896937.a n = A110314 n

end A110314

/-! ## A110314.P5663691115530654834

`A110324(n)/A258709(n)`
-/

namespace A110314.P5663691115530654834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A258709 n : ℚ)

end

end A110314.P5663691115530654834

namespace A110314

/-- `A110324(n)/A258709(n)` -/
def P5663691115530654834.Spec : Prop :=
  ∀ n, P5663691115530654834.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P10617952033034933991

`A110324(n)/A114423(n)`
-/

namespace A110314.P10617952033034933991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A114423 n : ℚ)

end

end A110314.P10617952033034933991

namespace A110314

/-- `A110324(n)/A114423(n)` -/
def P10617952033034933991.Spec : Prop :=
  ∀ n, P10617952033034933991.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P10743071370230205146

`A110324(n)/A119502(n)`
-/

namespace A110314.P10743071370230205146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A119502 n : ℚ)

end

end A110314.P10743071370230205146

namespace A110314

/-- `A110324(n)/A119502(n)` -/
def P10743071370230205146.Spec : Prop :=
  ∀ n, P10743071370230205146.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P3561462077163880091

`A094587(n)*A141679(n+1)`
-/

namespace A110314.P3561462077163880091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A141679 (n + 1)

end

end A110314.P3561462077163880091

namespace A110314

/-- `A094587(n)*A141679(n+1)` -/
def P3561462077163880091.Spec : Prop :=
  ∀ n, P3561462077163880091.a n = A110314 n

end A110314

/-! ## A110314.P4683275000249732842

`A111062(n)*A141679(n+1)`
-/

namespace A110314.P4683275000249732842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111062 n * A141679 (n + 1)

end

end A110314.P4683275000249732842

namespace A110314

/-- `A111062(n)*A141679(n+1)` -/
def P4683275000249732842.Spec : Prop :=
  ∀ n, P4683275000249732842.a n = A110314 n

end A110314

/-! ## A110314.P17050191501327003475

`A110324(n)/A239144(n)`
-/

namespace A110314.P17050191501327003475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A239144 n : ℚ)

end

end A110314.P17050191501327003475

namespace A110314

/-- `A110324(n)/A239144(n)` -/
def P17050191501327003475.Spec : Prop :=
  ∀ n, P17050191501327003475.a n = (A110314 n : ℚ)

end A110314

/-! ## A110314.P7256721497995264732

`A110324(n)/A079216(n)`
-/

namespace A110314.P7256721497995264732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110324 n : ℚ) / (A079216 n : ℚ)

end

end A110314.P7256721497995264732

namespace A110314

/-- `A110324(n)/A079216(n)` -/
def P7256721497995264732.Spec : Prop :=
  ∀ n, P7256721497995264732.a n = (A110314 n : ℚ)

end A110314

/-!
# A110315: Diagonal sums of the Fibonacci related number triangle A110314.

The programs for A110315, the canonical program `A110315.P4779439972755157241` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110315 has offset 0).

The definition of A110315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110315.P4779439972755157241

`(6-n²)*(-1)^n/8-(n²+4*n-2)/8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110315

/-- `(6-n²)*(-1)^n/8-(n²+4*n-2)/8` -/
def P4779439972755157241.Spec : Prop :=
  ∀ n, P4779439972755157241.a n = (A110315 n : ℚ)

end A110315

/-! ## A110315.P10440018003895306321

`floor(a(n-2)-n^(-1)^n)` with `a(0)=1, a(1)=-1`
-/

namespace A110315.P10440018003895306321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ⌊(a (n - 2) : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A110315.P10440018003895306321

namespace A110315

/-- `floor(a(n-2)-n^(-1)^n)` -/
def P10440018003895306321.Spec : Prop :=
  ∀ n, P10440018003895306321.a n = A110315 n

end A110315

/-! ## A110315.P14318468867611551231

`∑[n-2-(a(n-1)+lcm(2, 1-n))]` with `a(0)=1`
-/

namespace A110315.P14318468867611551231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 2 - (f1 (n - 1) + (Int.lcm 2 (1 - (n : ℤ)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110315.P14318468867611551231

namespace A110315

/-- `∑[n-2-(a(n-1)+lcm(2, 1-n))]` -/
def P14318468867611551231.Spec : Prop :=
  ∀ n, P14318468867611551231.a n = A110315 n

end A110315

/-! ## A110315.P629665791467298056

`∑[A124625(n)-a(n-1)-or(1, n)]` with `a(0)=1`
-/

namespace A110315.P629665791467298056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A124625 n - f1 (n - 1) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110315.P629665791467298056

namespace A110315

/-- `∑[A124625(n)-a(n-1)-or(1, n)]` -/
def P629665791467298056.Spec : Prop :=
  ∀ n, P629665791467298056.a n = A110315 n

end A110315

/-! ## A110315.P1407851055807701116

`A110332(n)/A000034(n)`
-/

namespace A110315.P1407851055807701116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110332 n : ℚ) / (A000034 n : ℚ)

end

end A110315.P1407851055807701116

namespace A110315

/-- `A110332(n)/A000034(n)` -/
def P1407851055807701116.Spec : Prop :=
  ∀ n, P1407851055807701116.a n = (A110315 n : ℚ)

end A110315

/-!
# A110316: a(n) is the number of different shapes of balanced binary trees with n nodes. The tree is balanced if the total number of nodes in the left and right branch of every node differ by at most one.

The programs for A110316, the canonical program `A110316.P13138358233452439156` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110316 has offset 0).

The definition of A110316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110316.P14776576388115303709

`2^A296062(n)`
-/

namespace A110316.P14776576388115303709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A296062 n : ℤ)

end

end A110316.P14776576388115303709

namespace A110316

/-- `2^A296062(n)` -/
def P14776576388115303709.Spec : Prop :=
  ∀ n, P14776576388115303709.a n = (A110316 n : ℚ)

end A110316

/-! ## A110316.P4386392037517373386

`2^(n-A268289(n))`
-/

namespace A110316.P4386392037517373386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A268289 n : ℤ)

end

end A110316.P4386392037517373386

namespace A110316

/-- `2^(n-A268289(n))` -/
def P4386392037517373386.Spec : Prop :=
  ∀ n, P4386392037517373386.a n = (A110316 n : ℚ)

end A110316

/-! ## A110316.P15084191005272155824

`2^(n-(A301336(n)+1))`
-/

namespace A110316.P15084191005272155824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (A301336 n + 1) : ℤ)

end

end A110316.P15084191005272155824

namespace A110316

/-- `2^(n-(A301336(n)+1))` -/
def P15084191005272155824.Spec : Prop :=
  ∀ n, P15084191005272155824.a n = (A110316 n : ℚ)

end A110316

/-! ## A110316.P13138358233452439156

`A000079(A296062(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A110316

/-- `A000079(A296062(n))` -/
def P13138358233452439156.Spec : Prop :=
  ∀ n, P13138358233452439156.a n = A110316 n

theorem P13138358233452439156.correct : P13138358233452439156.Spec := by
  intro n
  simp only [A110316]

end A110316

/-! ## A110316.P4845351232852146095

`A011782(A296062(n)+1)`
-/

namespace A110316.P4845351232852146095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A296062 n + 1).toNat

end

end A110316.P4845351232852146095

namespace A110316

/-- `A011782(A296062(n)+1)` -/
def P4845351232852146095.Spec : Prop :=
  ∀ n, P4845351232852146095.a n = A110316 n

end A110316

/-! ## A110316.P5676812111880917318

`A000079(n-A268289(n))`
-/

namespace A110316.P5676812111880917318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A268289 n).toNat

end

end A110316.P5676812111880917318

namespace A110316

/-- `A000079(n-A268289(n))` -/
def P5676812111880917318.Spec : Prop :=
  ∀ n, P5676812111880917318.a n = A110316 n

end A110316

/-! ## A110316.P7494396840369480906

`A011782(∑[A037861(2*n)])`
-/

namespace A110316.P7494396840369480906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110316.P7494396840369480906

namespace A110316

/-- `A011782(∑[A037861(2*n)])` -/
def P7494396840369480906.Spec : Prop :=
  ∀ n, P7494396840369480906.a n = A110316 n

end A110316

/-! ## A110316.P13298611711875366012

`A011782(∑[A037861(n)]+n)`
-/

namespace A110316.P13298611711875366012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A110316.P13298611711875366012

namespace A110316

/-- `A011782(∑[A037861(n)]+n)` -/
def P13298611711875366012.Spec : Prop :=
  ∀ n, P13298611711875366012.a n = A110316 n

end A110316

/-! ## A110316.P7269258498206162761

`A011782(∑[A008687(n+1)-A000120(n)])`
-/

namespace A110316.P7269258498206162761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110316.P7269258498206162761

namespace A110316

/-- `A011782(∑[A008687(n+1)-A000120(n)])` -/
def P7269258498206162761.Spec : Prop :=
  ∀ n, P7269258498206162761.a n = A110316 n

end A110316

/-! ## A110316.P13363416400259202779

`A011782(n)/A011782(n-A296062(n))`
-/

namespace A110316.P13363416400259202779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 ((n : ℤ) - A296062 n).toNat : ℚ)

end

end A110316.P13363416400259202779

namespace A110316

/-- `A011782(n)/A011782(n-A296062(n))` -/
def P13363416400259202779.Spec : Prop :=
  ∀ n, P13363416400259202779.a n = (A110316 n : ℚ)

end A110316

/-! ## A110316.P4304027340298250434

`A000079(n)/A000079(A268289(n))`
-/

namespace A110316.P4304027340298250434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A110316.P4304027340298250434

namespace A110316

/-- `A000079(n)/A000079(A268289(n))` -/
def P4304027340298250434.Spec : Prop :=
  ∀ n, P4304027340298250434.a n = (A110316 n : ℚ)

end A110316

/-! ## A110316.P18156285875358270257

`A059268(2*A296062(n)²)`
-/

namespace A110316.P18156285875358270257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A296062 n ^ 2).toNat

end

end A110316.P18156285875358270257

namespace A110316

/-- `A059268(2*A296062(n)²)` -/
def P18156285875358270257.Spec : Prop :=
  ∀ n, P18156285875358270257.a n = A110316 n

end A110316

/-! ## A110316.P11273150687445371185

`A059268(2*A296062(n)*A296062(n))`
-/

namespace A110316.P11273150687445371185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A296062 n * A296062 n).toNat

end

end A110316.P11273150687445371185

namespace A110316

/-- `A059268(2*A296062(n)*A296062(n))` -/
def P11273150687445371185.Spec : Prop :=
  ∀ n, P11273150687445371185.a n = A110316 n

end A110316

/-! ## A110316.P7824976672091748132

`A221857(A000217(n))+A000225(A296062(n))`
-/

namespace A110316.P7824976672091748132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 n).toNat + A000225 (A296062 n).toNat

end

end A110316.P7824976672091748132

namespace A110316

/-- `A221857(A000217(n))+A000225(A296062(n))` -/
def P7824976672091748132.Spec : Prop :=
  ∀ n, P7824976672091748132.a n = A110316 n

end A110316

/-! ## A110316.P17529555596501012236

`A221857(∑[n+3])`
-/

namespace A110316.P17529555596501012236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110316.P17529555596501012236

namespace A110316

/-- `A221857(∑[n+3])` -/
def P17529555596501012236.Spec : Prop :=
  ∀ n, P17529555596501012236.a n = A110316 n

end A110316

/-!
# A110318: Number of arcs covered by other arcs in all RNA secondary structures of size n+5 (i.e., with n+5 nodes).

The programs for A110318, there is no canonical definition to state claims against.
-/

/-! ## A110318.P1312850071085990587

`A110239(n+5)-A089737(n+2)`
-/

namespace A110318.P1312850071085990587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110239 (n + 5) - A089737 (n + 2)

end

end A110318.P1312850071085990587

/-! ## A110318.P3927791576739432206

`A079487(Δ[A059834(n+4)])`
-/

namespace A110318.P3927791576739432206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059834 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (f1 (n + 1) - f1 n).toNat

end

end A110318.P3927791576739432206

/-! ## A110318.P2222741252997039700

`A079487(A027379(2*(n+1))+A017425(n+4))`
-/

namespace A110318.P2222741252997039700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A027379 (2 * (n + 1)) + A017425 (n + 4)).toNat

end

end A110318.P2222741252997039700

/-! ## A110318.P5187933019190854431

`A079487(eq[16, A303950(n+1)])`
-/

namespace A110318.P5187933019190854431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110318.P5187933019190854431

/-!
# A110319: Triangle read by rows: T(n,k) (1 <= k <= n) is number of RNA secondary structures of size n (i.e., with n nodes) having k blocks (an RNA secondary structure can be viewed as a restricted noncrossing partition).

The programs for A110319, there is no canonical definition to state claims against.
-/

/-! ## A110319.P16620665191590415695

`A110235(A185180(n+1))`
-/

namespace A110319.P16620665191590415695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110235 (A185180 (n + 1)).toNat

end

end A110319.P16620665191590415695

/-! ## A110319.P2344125205268789135

`A026729(n)/A050167(n)*A107131(n)`
-/

namespace A110319.P2344125205268789135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n : ℚ) / (A050167 n : ℚ) * (A107131 n : ℚ)

end

end A110319.P2344125205268789135

/-! ## A110319.P13064498229071158471

`A111660(A002378(A026729(n)))`
-/

namespace A110319.P13064498229071158471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A002378 (A026729 n).toNat).toNat

end

end A110319.P13064498229071158471

/-! ## A110319.P8347951261102485661

`A000194(A194442(A026729(n)²))`
-/

namespace A110319.P8347951261102485661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A194442 (A026729 n ^ 2).toNat).toNat

end

end A110319.P8347951261102485661

/-! ## A110319.P10924939535734763248

`A003056(A213983(A026729(n)²))`
-/

namespace A110319.P10924939535734763248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A213983 (A026729 n ^ 2).toNat).toNat

end

end A110319.P10924939535734763248

/-!
# A110320: Number of blocks in all RNA secondary structures with n nodes (an RNA secondary structure can be viewed as a restricted noncrossing partition).

The programs for A110320, there is no canonical definition to state claims against.
-/

/-! ## A110320.P10465263418017061317

`(A051286(n+3)-A051286(n+2)-A051286(n+1))/2`
-/

namespace A110320.P10465263418017061317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051286 (n + 3) - A051286 (n + 2) - A051286 (n + 1) : ℚ) / 2

end

end A110320.P10465263418017061317

/-! ## A110320.P1597347222239594575

`A292460(n)+A166290(n+1)`
-/

namespace A110320.P1597347222239594575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n + A166290 (n + 1)

end

end A110320.P1597347222239594575

/-! ## A110320.P3138557274921665251

`A166290(n+1)+A004148(n+1)`
-/

namespace A110320.P3138557274921665251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166290 (n + 1) + A004148 (n + 1)

end

end A110320.P3138557274921665251

/-! ## A110320.P13176370460636536365

`A051291(n+1)-A004148(n+1)`
-/

namespace A110320.P13176370460636536365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A004148 (n + 1)

end

end A110320.P13176370460636536365

/-! ## A110320.P9687690222079899699

`A110236(n+1)+A203611(n+1)-A004148(n+1)`
-/

namespace A110320.P9687690222079899699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 1) + (A203611 (n + 1) - A004148 (n + 1))

end

end A110320.P9687690222079899699

/-! ## A110320.P17756380695316278968

`Δ[A166287(n+2)]`
-/

namespace A110320.P17756380695316278968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110320.P17756380695316278968

/-! ## A110320.P7260784564879884337

`record[A051292(n)-A203611(n)]`
-/

namespace A110320.P7260784564879884337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 n - A203611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110320.P7260784564879884337

/-! ## A110320.P7263424226303451863

`A110236(n+2)-A051286(n+1)`
-/

namespace A110320.P7263424226303451863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 2) - A051286 (n + 1)

end

end A110320.P7263424226303451863

/-! ## A110320.P6497920214376943222

`A203611(n+3)-A051286(n+2)`
-/

namespace A110320.P6497920214376943222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 (n + 3) - A051286 (n + 2)

end

end A110320.P6497920214376943222

/-! ## A110320.P1942155420347587118

`A166287(n+3)-A166287(n+2)`
-/

namespace A110320.P1942155420347587118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (n + 3) - A166287 (n + 2)

end

end A110320.P1942155420347587118

/-! ## A110320.P9910895931031882863

`(A051292(n+3)-A051286(n+2))/2`
-/

namespace A110320.P9910895931031882863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051292 (n + 3) - A051286 (n + 2) : ℚ) / 2

end

end A110320.P9910895931031882863

/-! ## A110320.P1646927803485650002

`A110236(n+2)+A110198(n)-A110198(n+1)`
-/

namespace A110320.P1646927803485650002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 2) + (A110198 n - A110198 (n + 1))

end

end A110320.P1646927803485650002

/-! ## A110320.P2099821385101995747

`A201631(n+2)-(A201631(n+1)+A004148(n+1))`
-/

namespace A110320.P2099821385101995747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 2) - (A201631 (n + 1) + A004148 (n + 1))

end

end A110320.P2099821385101995747

/-! ## A110320.P17579785332736222942

`A273713(∑[n+1]+3)`
-/

namespace A110320.P17579785332736222942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273713 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A110320.P17579785332736222942

/-!
# A110321: A Jacobsthal number related number triangle.

The programs for A110321, the canonical program `A110321.P1257881013958299813` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110321 has offset 0).

The definition of A110321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110321.P14540443503191456899

`A007318(n)*A052585(A025581(n))`
-/

namespace A110321.P14540443503191456899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052585 (A025581 n).toNat

end

end A110321.P14540443503191456899

namespace A110321

/-- `A007318(n)*A052585(A025581(n))` -/
def P14540443503191456899.Spec : Prop :=
  ∀ n, P14540443503191456899.a n = A110321 n

end A110321

/-! ## A110321.P1257881013958299813

`A001045(A004736(n+1))*A094587(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110321

/-- `A001045(A004736(n+1))*A094587(n)` -/
def P1257881013958299813.Spec : Prop :=
  ∀ n, P1257881013958299813.a n = A110321 n

theorem P1257881013958299813.correct : P1257881013958299813.Spec := by
  intro n
  simp only [A110321]

end A110321

/-! ## A110321.P6771926602421351395

`A001045(A025581(n)+1)*A094587(n)`
-/

namespace A110321.P6771926602421351395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A025581 n + 1).toNat * A094587 n

end

end A110321.P6771926602421351395

namespace A110321

/-- `A001045(A025581(n)+1)*A094587(n)` -/
def P6771926602421351395.Spec : Prop :=
  ∀ n, P6771926602421351395.a n = A110321 n

end A110321

/-! ## A110321.P6919329561650828616

`A004396(A130321(n))*A094587(n)`
-/

namespace A110321.P6919329561650828616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A130321 n).toNat * A094587 n

end

end A110321.P6919329561650828616

namespace A110321

/-- `A004396(A130321(n))*A094587(n)` -/
def P6919329561650828616.Spec : Prop :=
  ∀ n, P6919329561650828616.a n = A110321 n

end A110321

/-!
# A110322: Row sums of A110321, a number triangle related to the Jacobsthal numbers.

The programs for A110322, there is no canonical definition to state claims against.
-/

/-! ## A110322.P13351380437708414649

`n*(a(n-1)-2*(1-n)*a(n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A110322.P13351380437708414649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) - 2 * (1 - (n : ℤ)) * a (n - 2)) + 1

end

end A110322.P13351380437708414649

/-! ## A110322.P8042107094925351773

`floor(e^(1/2)*n!*2^n)-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A110322.P8042107094925351773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌊Real.exp 1 ^ ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋ : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A110322.P8042107094925351773

/-! ## A110322.P6163256310449764887

`A010844(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A110322.P6163256310449764887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010844 n - (n : ℤ) * a (n - 1)

end

end A110322.P6163256310449764887

/-! ## A110322.P7129430073025021701

`A182386(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A110322.P7129430073025021701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182386 n + (2 * n : ℤ) * a (n - 1)

end

end A110322.P7129430073025021701

/-! ## A110322.P5609562373719184178

`A161380(∑[n]+n)-a(n-1)/n^-1` with `a(0)=1`
-/

namespace A110322.P5609562373719184178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A161380 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A110322.P5609562373719184178

/-!
# A110323: Diagonal sums of a number triangle related to the Jacobsthal numbers.

The programs for A110323, there is no canonical definition to state claims against.
-/

/-! ## A110323.P3108199276829645949

`A085342(ceil(exp(n)²)+1)`
-/

namespace A110323.P3108199276829645949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085342 (⌈Real.exp (n : ℝ) ^ 2⌉ + 1).toNat

end

end A110323.P3108199276829645949

/-!
# A110324: Inverse of a number triangle related to the Jacobsthal numbers.

The programs for A110324, the canonical program `A110324.P17338203710823644534` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110324 has offset 0).

The definition of A110324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110324.P8004077626980568084

`A101566(n)*A110314(n)`
-/

namespace A110324.P8004077626980568084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101566 n * A110314 n

end

end A110324.P8004077626980568084

namespace A110324

/-- `A101566(n)*A110314(n)` -/
def P8004077626980568084.Spec : Prop :=
  ∀ n, P8004077626980568084.a n = A110324 n

end A110324

/-! ## A110324.P9425480942106957614

`A106476(n)*A110314(n)`
-/

namespace A110324.P9425480942106957614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 n * A110314 n

end

end A110324.P9425480942106957614

namespace A110324

/-- `A106476(n)*A110314(n)` -/
def P9425480942106957614.Spec : Prop :=
  ∀ n, P9425480942106957614.a n = A110324 n

end A110324

/-! ## A110324.P2017672726050038776

`A110314(n)*A194543(n)`
-/

namespace A110324.P2017672726050038776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A194543 n

end

end A110324.P2017672726050038776

namespace A110324

/-- `A110314(n)*A194543(n)` -/
def P2017672726050038776.Spec : Prop :=
  ∀ n, P2017672726050038776.a n = A110324 n

end A110324

/-! ## A110324.P17550068755683537984

`A110314(n)*A343234(n)`
-/

namespace A110324.P17550068755683537984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A343234 n

end

end A110324.P17550068755683537984

namespace A110324

/-- `A110314(n)*A343234(n)` -/
def P17550068755683537984.Spec : Prop :=
  ∀ n, P17550068755683537984.a n = A110324 n

end A110324

/-! ## A110324.P11926600659504239801

`A027293(n+1)*A110314(n)`
-/

namespace A110324.P11926600659504239801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) * A110314 n

end

end A110324.P11926600659504239801

namespace A110324

/-- `A027293(n+1)*A110314(n)` -/
def P11926600659504239801.Spec : Prop :=
  ∀ n, P11926600659504239801.a n = A110324 n

end A110324

/-! ## A110324.P10091192438697316812

`A049286(n+1)*A110314(n)`
-/

namespace A110324.P10091192438697316812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1) * A110314 n

end

end A110324.P10091192438697316812

namespace A110324

/-- `A049286(n+1)*A110314(n)` -/
def P10091192438697316812.Spec : Prop :=
  ∀ n, P10091192438697316812.a n = A110324 n

end A110324

/-! ## A110324.P13958805229165199783

`A059623(n+1)*A110314(n)`
-/

namespace A110324.P13958805229165199783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059623 (n + 1) * A110314 n

end

end A110324.P13958805229165199783

namespace A110324

/-- `A059623(n+1)*A110314(n)` -/
def P13958805229165199783.Spec : Prop :=
  ∀ n, P13958805229165199783.a n = A110324 n

end A110324

/-! ## A110324.P17338203710823644534

`A104762(n+1)*A110314(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110324

/-- `A104762(n+1)*A110314(n)` -/
def P17338203710823644534.Spec : Prop :=
  ∀ n, P17338203710823644534.a n = A110324 n

theorem P17338203710823644534.correct : P17338203710823644534.Spec := by
  intro n
  simp only [A110324]

end A110324

/-! ## A110324.P2660095510551575259

`A110314(n)*A115514(n+1)`
-/

namespace A110324.P2660095510551575259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A115514 (n + 1)

end

end A110324.P2660095510551575259

namespace A110324

/-- `A110314(n)*A115514(n+1)` -/
def P2660095510551575259.Spec : Prop :=
  ∀ n, P2660095510551575259.a n = A110324 n

end A110324

/-! ## A110324.P11042841543120458777

`A110330(n)+A132013(n)-A132014(n)`
-/

namespace A110324.P11042841543120458777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110330 n + (A132013 n - A132014 n)

end

end A110324.P11042841543120458777

namespace A110324

/-- `A110330(n)+A132013(n)-A132014(n)` -/
def P11042841543120458777.Spec : Prop :=
  ∀ n, P11042841543120458777.a n = A110324 n

end A110324

/-! ## A110324.P2221722263178113748

`A110314(n)*A258709(n)`
-/

namespace A110324.P2221722263178113748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A258709 n

end

end A110324.P2221722263178113748

namespace A110324

/-- `A110314(n)*A258709(n)` -/
def P2221722263178113748.Spec : Prop :=
  ∀ n, P2221722263178113748.a n = A110324 n

end A110324

/-! ## A110324.P8609632178653586691

`A110314(n)*A114423(n)`
-/

namespace A110324.P8609632178653586691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A114423 n

end

end A110324.P8609632178653586691

namespace A110324

/-- `A110314(n)*A114423(n)` -/
def P8609632178653586691.Spec : Prop :=
  ∀ n, P8609632178653586691.a n = A110324 n

end A110324

/-! ## A110324.P9330206610556553959

`A110314(n)*A119502(n)`
-/

namespace A110324.P9330206610556553959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A119502 n

end

end A110324.P9330206610556553959

namespace A110324

/-- `A110314(n)*A119502(n)` -/
def P9330206610556553959.Spec : Prop :=
  ∀ n, P9330206610556553959.a n = A110324 n

end A110324

/-! ## A110324.P6007490640963872888

`A039948(n)*A141679(n+1)`
-/

namespace A110324.P6007490640963872888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039948 n * A141679 (n + 1)

end

end A110324.P6007490640963872888

namespace A110324

/-- `A039948(n)*A141679(n+1)` -/
def P6007490640963872888.Spec : Prop :=
  ∀ n, P6007490640963872888.a n = A110324 n

end A110324

/-! ## A110324.P9255606947964389329

`A110314(n)*A239144(n)`
-/

namespace A110324.P9255606947964389329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A239144 n

end

end A110324.P9255606947964389329

namespace A110324

/-- `A110314(n)*A239144(n)` -/
def P9255606947964389329.Spec : Prop :=
  ∀ n, P9255606947964389329.a n = A110324 n

end A110324

/-! ## A110324.P8497804075807435595

`A079216(n)*A110314(n)`
-/

namespace A110324.P8497804075807435595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 n * A110314 n

end

end A110324.P8497804075807435595

namespace A110324

/-- `A079216(n)*A110314(n)` -/
def P8497804075807435595.Spec : Prop :=
  ∀ n, P8497804075807435595.a n = A110324 n

end A110324

/-!
# A110325: Row sums of number triangle related to the Jacobsthal numbers.

The programs for A110325, the canonical program `A110325.P3093289086518705686` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110325 has offset 0).

The definition of A110325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110325.P3093289086518705686

`1+n-2*n²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110325

/-- `1+n-2*n²` -/
def P3093289086518705686.Spec : Prop :=
  ∀ n, P3093289086518705686.a n = A110325 n

theorem P3093289086518705686.correct : P3093289086518705686.Spec := by
  intro n
  simp only [A110325]

end A110325

/-! ## A110325.P8689907573999748024

`∑[1-record[lcm(2, n)]]`
-/

namespace A110325.P8689907573999748024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110325.P8689907573999748024

namespace A110325

/-- `∑[1-record[lcm(2, n)]]` -/
def P8689907573999748024.Spec : Prop :=
  ∀ n, P8689907573999748024.a n = A110325 n

end A110325

/-! ## A110325.P2531943207456201372

`-(n-1)*record[xor(1, n)]`
-/

namespace A110325.P2531943207456201372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ))

end

end A110325.P2531943207456201372

namespace A110325

/-- `-(n-1)*record[xor(1, n)]` -/
def P2531943207456201372.Spec : Prop :=
  ∀ n, P2531943207456201372.a n = A110325 n

end A110325

/-! ## A110325.P12060609901229891284

`∑[a(n-1)-4]` with `a(0)=1, a(1)=-1`
-/

namespace A110325.P12060609901229891284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110325.P12060609901229891284

namespace A110325

/-- `∑[a(n-1)-4]` -/
def P12060609901229891284.Spec : Prop :=
  ∀ n, P12060609901229891284.a n = A110325 n

end A110325

/-! ## A110325.P11083712758514003256

`ogf((-1+3x+2x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A110325.P11083712758514003256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2] [1, -3, 3, -1] n

end

end A110325.P11083712758514003256

namespace A110325

/-- `ogf((-1+3x+2x^2)/(-1+3x-3x^2+x^3))` -/
def P11083712758514003256.Spec : Prop :=
  ∀ n, P11083712758514003256.a n = A110325 n

end A110325

/-! ## A110325.P18007621399235112748

`-(n-1)*or(1, 2*n)`
-/

namespace A110325.P18007621399235112748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (Nat.lor 1 (2 * n) : ℤ))

end

end A110325.P18007621399235112748

namespace A110325

/-- `-(n-1)*or(1, 2*n)` -/
def P18007621399235112748.Spec : Prop :=
  ∀ n, P18007621399235112748.a n = A110325 n

end A110325

/-! ## A110325.P9537376532597365257

`-(n-1)*xor(1, 2*n)`
-/

namespace A110325.P9537376532597365257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (Nat.xor 1 (2 * n) : ℤ))

end

end A110325.P9537376532597365257

namespace A110325

/-- `-(n-1)*xor(1, 2*n)` -/
def P9537376532597365257.Spec : Prop :=
  ∀ n, P9537376532597365257.a n = A110325 n

end A110325

/-! ## A110325.P7787257523335340717

`-xor(-1, -C(2*n, 2))`
-/

namespace A110325.P7787257523335340717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (-(Nat.choose (2 * n) 2 : ℤ))

end

end A110325.P7787257523335340717

namespace A110325

/-- `-xor(-1, -C(2*n, 2))` -/
def P7787257523335340717.Spec : Prop :=
  ∀ n, P7787257523335340717.a n = A110325 n

end A110325

/-! ## A110325.P17193594751512906651

`floor(a(n-1)+a(n-1)-4-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A110325.P17193594751512906651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 1) - 4) - a (n - 2)

end

end A110325.P17193594751512906651

namespace A110325

/-- `floor(a(n-1)+a(n-1)-4-a(n-2))` -/
def P17193594751512906651.Spec : Prop :=
  ∀ n, P17193594751512906651.a n = A110325 n

theorem P17193594751512906651.correct : P17193594751512906651.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A110325, Nat.add_sub_cancel, A110325.P17193594751512906651.a, A110325.P3093289086518705686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A110325, Nat.add_sub_cancel, A110325.P17193594751512906651.a, A110325.P3093289086518705686.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110325

/-! ## A110325.P1476169391066681500

`floor(a(n-1)-(4-a(n-1))-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A110325.P1476169391066681500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (4 - a (n - 1)) - a (n - 2)

end

end A110325.P1476169391066681500

namespace A110325

/-- `floor(a(n-1)-(4-a(n-1))-a(n-2))` -/
def P1476169391066681500.Spec : Prop :=
  ∀ n, P1476169391066681500.a n = A110325 n

theorem P1476169391066681500.correct : P1476169391066681500.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A110325, Nat.add_sub_cancel, A110325.P1476169391066681500.a, A110325.P3093289086518705686.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A110325, Nat.add_sub_cancel, A110325.P1476169391066681500.a, A110325.P3093289086518705686.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110325

/-! ## A110325.P10987583556665203231

`∑[1-A130824(n)]`
-/

namespace A110325.P10987583556665203231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110325.P10987583556665203231

namespace A110325

/-- `∑[1-A130824(n)]` -/
def P10987583556665203231.Spec : Prop :=
  ∀ n, P10987583556665203231.a n = A110325 n

end A110325

/-! ## A110325.P8894718027640248629

`(2-A002939(n))/2`
-/

namespace A110325.P8894718027640248629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A002939 n : ℚ) / 2

end

end A110325.P8894718027640248629

namespace A110325

/-- `(2-A002939(n))/2` -/
def P8894718027640248629.Spec : Prop :=
  ∀ n, P8894718027640248629.a n = (A110325 n : ℚ)

end A110325

/-! ## A110325.P10777177532129835312

`(3-A094159(n))/3`
-/

namespace A110325.P10777177532129835312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A094159 n : ℚ) / 3

end

end A110325.P10777177532129835312

namespace A110325

/-- `(3-A094159(n))/3` -/
def P10777177532129835312.Spec : Prop :=
  ∀ n, P10777177532129835312.a n = (A110325 n : ℚ)

end A110325

/-! ## A110325.P13155604312413831676

`(5-A080856(n))/4`
-/

namespace A110325.P13155604312413831676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A080856 n : ℚ) / 4

end

end A110325.P13155604312413831676

namespace A110325

/-- `(5-A080856(n))/4` -/
def P13155604312413831676.Spec : Prop :=
  ∀ n, P13155604312413831676.a n = (A110325 n : ℚ)

end A110325

/-! ## A110325.P8548515025013833847

`(1-n)*A223134(n)`
-/

namespace A110325.P8548515025013833847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A223134 n

end

end A110325.P8548515025013833847

namespace A110325

/-- `(1-n)*A223134(n)` -/
def P8548515025013833847.Spec : Prop :=
  ∀ n, P8548515025013833847.a n = A110325 n

end A110325

/-! ## A110325.P8306586357827798600

`(1-n)*A267872(n)`
-/

namespace A110325.P8306586357827798600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A267872 n

end

end A110325.P8306586357827798600

namespace A110325

/-- `(1-n)*A267872(n)` -/
def P8306586357827798600.Spec : Prop :=
  ∀ n, P8306586357827798600.a n = A110325 n

end A110325

/-! ## A110325.P12537673505111252130

`Δ[n²]*A024000(n)`
-/

namespace A110325.P12537673505111252130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A024000 n

end

end A110325.P12537673505111252130

namespace A110325

/-- `Δ[n²]*A024000(n)` -/
def P12537673505111252130.Spec : Prop :=
  ∀ n, P12537673505111252130.a n = A110325 n

end A110325

/-! ## A110325.P9903210309414325664

`∑[2-A131098(n+1)]`
-/

namespace A110325.P9903210309414325664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110325.P9903210309414325664

namespace A110325

/-- `∑[2-A131098(n+1)]` -/
def P9903210309414325664.Spec : Prop :=
  ∀ n, P9903210309414325664.a n = A110325 n

end A110325

/-! ## A110325.P15100161048628971379

`(3-A054554(n+1))/2`
-/

namespace A110325.P15100161048628971379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A054554 (n + 1) : ℚ) / 2

end

end A110325.P15100161048628971379

namespace A110325

/-- `(3-A054554(n+1))/2` -/
def P15100161048628971379.Spec : Prop :=
  ∀ n, P15100161048628971379.a n = (A110325 n : ℚ)

end A110325

/-! ## A110325.P1359121396582364580

`(1-n)*A004273(n+1)`
-/

namespace A110325.P1359121396582364580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A004273 (n + 1)

end

end A110325.P1359121396582364580

namespace A110325

/-- `(1-n)*A004273(n+1)` -/
def P1359121396582364580.Spec : Prop :=
  ∀ n, P1359121396582364580.a n = A110325 n

end A110325

/-!
# A110326: Diagonal sums of triangle A110324.

The programs for A110326, the canonical program `A110326.P2164820174088317283` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110326 has offset 0).

The definition of A110326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110326.P2164820174088317283

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=-1, a(2)=-3, a(3)=-2, a(4)=-11, a(5)=-3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110326

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P2164820174088317283.Spec : Prop :=
  ∀ n, P2164820174088317283.a n = A110326 n

theorem P2164820174088317283.correct : P2164820174088317283.Spec := by
  intro n
  simp only [A110326]

end A110326

/-! ## A110326.P9692384857211322944

`1-(A266304(n)+a(n-1))` with `a(0)=1`
-/

namespace A110326.P9692384857211322944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A266304 n + a (n - 1))

end

end A110326.P9692384857211322944

namespace A110326

/-- `1-(A266304(n)+a(n-1))` -/
def P9692384857211322944.Spec : Prop :=
  ∀ n, P9692384857211322944.a n = A110326 n

end A110326

/-! ## A110326.P6233597999677599122

`char[2*n]-round(A065530(n)/2)`
-/

namespace A110326.P6233597999677599122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - SequenceMachineLib.roundAway ((A065530 n : ℚ) / 2)

end

end A110326.P6233597999677599122

namespace A110326

/-- `char[2*n]-round(A065530(n)/2)` -/
def P6233597999677599122.Spec : Prop :=
  ∀ n, P6233597999677599122.a n = A110326 n

end A110326

/-! ## A110326.P2488252062838669595

`A097066(n)-A367965(n)`
-/

namespace A110326.P2488252062838669595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 n - A367965 n

end

end A110326.P2488252062838669595

namespace A110326

/-- `A097066(n)-A367965(n)` -/
def P2488252062838669595.Spec : Prop :=
  ∀ n, P2488252062838669595.a n = A110326 n

end A110326

/-! ## A110326.P12513481372008355001

`∑[A084265(n)-A066106(n)]`
-/

namespace A110326.P12513481372008355001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n - A066106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110326.P12513481372008355001

namespace A110326

/-- `∑[A084265(n)-A066106(n)]` -/
def P12513481372008355001.Spec : Prop :=
  ∀ n, P12513481372008355001.a n = A110326 n

end A110326

/-! ## A110326.P6467952960637777604

`A057979(n)-A240134(n+1)`
-/

namespace A110326.P6467952960637777604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A240134 (n + 1)

end

end A110326.P6467952960637777604

namespace A110326

/-- `A057979(n)-A240134(n+1)` -/
def P6467952960637777604.Spec : Prop :=
  ∀ n, P6467952960637777604.a n = A110326 n

end A110326

/-! ## A110326.P16010648270716467932

`(A133265(n)-A066106(n))/2`
-/

namespace A110326.P16010648270716467932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n - A066106 n : ℚ) / 2

end

end A110326.P16010648270716467932

namespace A110326

/-- `(A133265(n)-A066106(n))/2` -/
def P16010648270716467932.Spec : Prop :=
  ∀ n, P16010648270716467932.a n = (A110326 n : ℚ)

end A110326

/-! ## A110326.P9544405046901850737

`A152271(n)-A066106(n)/2`
-/

namespace A110326.P9544405046901850737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152271 n : ℚ) - (A066106 n : ℚ) / 2

end

end A110326.P9544405046901850737

namespace A110326

/-- `A152271(n)-A066106(n)/2` -/
def P9544405046901850737.Spec : Prop :=
  ∀ n, P9544405046901850737.a n = (A110326 n : ℚ)

end A110326

/-! ## A110326.P18061363558923406777

`A057979(n)-n*A158416(n)`
-/

namespace A110326.P18061363558923406777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - (n : ℤ) * A158416 n

end

end A110326.P18061363558923406777

namespace A110326

/-- `A057979(n)-n*A158416(n)` -/
def P18061363558923406777.Spec : Prop :=
  ∀ n, P18061363558923406777.a n = A110326 n

end A110326

/-! ## A110326.P17303728762982710094

`A000217(A093178(n))-∑[n%2+n]`
-/

namespace A110326.P17303728762982710094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A093178 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110326.P17303728762982710094

namespace A110326

/-- `A000217(A093178(n))-∑[n%2+n]` -/
def P17303728762982710094.Spec : Prop :=
  ∀ n, P17303728762982710094.a n = A110326 n

end A110326

/-! ## A110326.P10732317381498118378

`1-(A354280(n)+A110660(A141310(n)))`
-/

namespace A110326.P10732317381498118378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A354280 n + A110660 (A141310 n).toNat)

end

end A110326.P10732317381498118378

namespace A110326

/-- `1-(A354280(n)+A110660(A141310(n)))` -/
def P10732317381498118378.Spec : Prop :=
  ∀ n, P10732317381498118378.a n = A110326 n

end A110326

/-! ## A110326.P15252890441179646471

`1-A008619(n+1)*A124625(n+1)`
-/

namespace A110326.P15252890441179646471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008619 (n + 1) * A124625 (n + 1)

end

end A110326.P15252890441179646471

namespace A110326

/-- `1-A008619(n+1)*A124625(n+1)` -/
def P15252890441179646471.Spec : Prop :=
  ∀ n, P15252890441179646471.a n = A110326 n

end A110326

/-! ## A110326.P9457312887502738583

`A097140(n+1)-(n+1)*A057979(n+1)`
-/

namespace A110326.P9457312887502738583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (n + 1) - (n + 1 : ℤ) * A057979 (n + 1)

end

end A110326.P9457312887502738583

namespace A110326

/-- `A097140(n+1)-(n+1)*A057979(n+1)` -/
def P9457312887502738583.Spec : Prop :=
  ∀ n, P9457312887502738583.a n = A110326 n

end A110326

/-! ## A110326.P12450118578495835722

`A152271(n)-A052928(n+1)*A152271(n+1)`
-/

namespace A110326.P12450118578495835722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n - A052928 (n + 1) * A152271 (n + 1)

end

end A110326.P12450118578495835722

namespace A110326

/-- `A152271(n)-A052928(n+1)*A152271(n+1)` -/
def P12450118578495835722.Spec : Prop :=
  ∀ n, P12450118578495835722.a n = A110326 n

end A110326

/-! ## A110326.P493748737437029128

`Δ[A079097(n+1)]-A008642(2*n)`
-/

namespace A110326.P493748737437029128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008642 (2 * n)

end

end A110326.P493748737437029128

namespace A110326

/-- `Δ[A079097(n+1)]-A008642(2*n)` -/
def P493748737437029128.Spec : Prop :=
  ∀ n, P493748737437029128.a n = A110326 n

end A110326

/-! ## A110326.P1349917957268474363

`A093178(n)-A014682(A065530(n))`
-/

namespace A110326.P1349917957268474363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A014682 (A065530 n).toNat

end

end A110326.P1349917957268474363

namespace A110326

/-- `A093178(n)-A014682(A065530(n))` -/
def P1349917957268474363.Spec : Prop :=
  ∀ n, P1349917957268474363.a n = A110326 n

end A110326

/-! ## A110326.P14690328936511937873

`A152271(n)-A005843(A129889(n+1))`
-/

namespace A110326.P14690328936511937873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n - A005843 (A129889 (n + 1)).toNat

end

end A110326.P14690328936511937873

namespace A110326

/-- `A152271(n)-A005843(A129889(n+1))` -/
def P14690328936511937873.Spec : Prop :=
  ∀ n, P14690328936511937873.a n = A110326 n

end A110326

/-! ## A110326.P13062948021628934469

`2-A052938(A065530(n))`
-/

namespace A110326.P13062948021628934469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A052938 (A065530 n).toNat

end

end A110326.P13062948021628934469

namespace A110326

/-- `2-A052938(A065530(n))` -/
def P13062948021628934469.Spec : Prop :=
  ∀ n, P13062948021628934469.a n = A110326 n

end A110326

/-! ## A110326.P2418550265762061540

`A057979(n)-A026741(A065530(n))`
-/

namespace A110326.P2418550265762061540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n - A026741 (A065530 n).toNat

end

end A110326.P2418550265762061540

namespace A110326

/-- `A057979(n)-A026741(A065530(n))` -/
def P2418550265762061540.Spec : Prop :=
  ∀ n, P2418550265762061540.a n = A110326 n

end A110326

/-! ## A110326.P9781351709937267767

`A152271(n)-A004525(A066106(n))`
-/

namespace A110326.P9781351709937267767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n - A004525 (A066106 n).toNat

end

end A110326.P9781351709937267767

namespace A110326

/-- `A152271(n)-A004525(A066106(n))` -/
def P9781351709937267767.Spec : Prop :=
  ∀ n, P9781351709937267767.a n = A110326 n

end A110326

/-!
# A110327: Triangle read by rows: T(n,k) = n!*Pell(n-k+1)/k!, where Pell(n)=A000129(n).

The programs for A110327, the canonical program `A110327.P14773794744366081363` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110327 has offset 0).

The definition of A110327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110327.P4909604612605368070

`A094587(n)*A128514(n+1)`
-/

namespace A110327.P4909604612605368070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A128514 (n + 1)

end

end A110327.P4909604612605368070

namespace A110327

/-- `A094587(n)*A128514(n+1)` -/
def P4909604612605368070.Spec : Prop :=
  ∀ n, P4909604612605368070.a n = A110327 n

end A110327

/-! ## A110327.P14773794744366081363

`A000129(A004736(n+1))*A094587(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110327

/-- `A000129(A004736(n+1))*A094587(n)` -/
def P14773794744366081363.Spec : Prop :=
  ∀ n, P14773794744366081363.a n = A110327 n

theorem P14773794744366081363.correct : P14773794744366081363.Spec := by
  intro n
  simp only [A110327]

end A110327

/-!
# A110328: Row sums of a number triangle related to the Pell numbers.

The programs for A110328, there is no canonical definition to state claims against.
-/

/-! ## A110328.P13367882091564738532

`n*(2*a(n-1)+(n-1)*a(n-2))+1` with `a(0)=1, a(1)=3`
-/

namespace A110328.P13367882091564738532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) + 1

end

end A110328.P13367882091564738532

/-! ## A110328.P18365220597572449777

`A026253(n*a(n-1))` with `a(0)=1`
-/

namespace A110328.P18365220597572449777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026253 ((n : ℤ) * a (n - 1)).toNat

end

end A110328.P18365220597572449777

/-!
# A110329: Diagonal sums of a number triangle related to the Pell numbers.

The programs for A110329, there is no canonical definition to state claims against.
-/

/-! ## A110329.P8827691398887096274

`A020915(A187735(n))`
-/

namespace A110329.P8827691398887096274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A187735 n).toNat

end

end A110329.P8827691398887096274

/-!
# A110330: Inverse of a number triangle related to the Pell numbers.

The programs for A110330, the canonical program `A110330.P12777464114074436010` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110330 has offset 0).

The definition of A110330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110330.P3180421263256864771

`xor(1, 1-abs(A132014(n)))`
-/

namespace A110330.P3180421263256864771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - |A132014 n|)

end

end A110330.P3180421263256864771

namespace A110330

/-- `xor(1, 1-abs(A132014(n)))` -/
def P3180421263256864771.Spec : Prop :=
  ∀ n, P3180421263256864771.a n = A110330 n

end A110330

/-! ## A110330.P12777464114074436010

`A110314(n)-A132440(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110330

/-- `A110314(n)-A132440(n)` -/
def P12777464114074436010.Spec : Prop :=
  ∀ n, P12777464114074436010.a n = A110330 n

theorem P12777464114074436010.correct : P12777464114074436010.Spec := by
  intro n
  simp only [A110330]

end A110330

/-! ## A110330.P15401205343308724877

`A106246(n)*A106270(n)`
-/

namespace A110330.P15401205343308724877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106246 n * A106270 n

end

end A110330.P15401205343308724877

namespace A110330

/-- `A106246(n)*A106270(n)` -/
def P15401205343308724877.Spec : Prop :=
  ∀ n, P15401205343308724877.a n = A110330 n

end A110330

/-! ## A110330.P17653133646519158836

`A020906(n+1)*A110314(n)`
-/

namespace A110330.P17653133646519158836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (n + 1) * A110314 n

end

end A110330.P17653133646519158836

namespace A110330

/-- `A020906(n+1)*A110314(n)` -/
def P17653133646519158836.Spec : Prop :=
  ∀ n, P17653133646519158836.a n = A110330 n

end A110330

/-! ## A110330.P3979799584204379748

`A042974(n+1)*A110314(n)`
-/

namespace A110330.P3979799584204379748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (n + 1) * A110314 n

end

end A110330.P3979799584204379748

namespace A110330

/-- `A042974(n+1)*A110314(n)` -/
def P3979799584204379748.Spec : Prop :=
  ∀ n, P3979799584204379748.a n = A110330 n

end A110330

/-! ## A110330.P647673897800820072

`A110314(n)*A131406(n+1)`
-/

namespace A110330.P647673897800820072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A131406 (n + 1)

end

end A110330.P647673897800820072

namespace A110330

/-- `A110314(n)*A131406(n+1)` -/
def P647673897800820072.Spec : Prop :=
  ∀ n, P647673897800820072.a n = A110330 n

end A110330

/-! ## A110330.P9944555546678105693

`A129994(n)*A141679(n+1)`
-/

namespace A110330.P9944555546678105693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 n * A141679 (n + 1)

end

end A110330.P9944555546678105693

namespace A110330

/-- `A129994(n)*A141679(n+1)` -/
def P9944555546678105693.Spec : Prop :=
  ∀ n, P9944555546678105693.a n = A110330 n

end A110330

/-! ## A110330.P4185680116696463814

`A110314(n)*A167194(n+1)`
-/

namespace A110330.P4185680116696463814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A167194 (n + 1)

end

end A110330.P4185680116696463814

namespace A110330

/-- `A110314(n)*A167194(n+1)` -/
def P4185680116696463814.Spec : Prop :=
  ∀ n, P4185680116696463814.a n = A110330 n

end A110330

/-! ## A110330.P4028208761823842907

`A110314(n)*A220465(n+1)`
-/

namespace A110330.P4028208761823842907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A220465 (n + 1)

end

end A110330.P4028208761823842907

namespace A110330

/-- `A110314(n)*A220465(n+1)` -/
def P4028208761823842907.Spec : Prop :=
  ∀ n, P4028208761823842907.a n = A110330 n

end A110330

/-! ## A110330.P8008223216792293483

`A181983(abs(A132014(n)))`
-/

namespace A110330.P8008223216792293483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 |A132014 n|.toNat

end

end A110330.P8008223216792293483

namespace A110330

/-- `A181983(abs(A132014(n)))` -/
def P8008223216792293483.Spec : Prop :=
  ∀ n, P8008223216792293483.a n = A110330 n

end A110330

/-! ## A110330.P3917083522584398049

`-A038608(abs(A132014(n)))`
-/

namespace A110330.P3917083522584398049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 |A132014 n|.toNat

end

end A110330.P3917083522584398049

namespace A110330

/-- `-A038608(abs(A132014(n)))` -/
def P3917083522584398049.Spec : Prop :=
  ∀ n, P3917083522584398049.a n = A110330 n

end A110330

/-! ## A110330.P1975134978338419808

`1-A004442(abs(A132014(n)))`
-/

namespace A110330.P1975134978338419808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004442 |A132014 n|.toNat

end

end A110330.P1975134978338419808

namespace A110330

/-- `1-A004442(abs(A132014(n)))` -/
def P1975134978338419808.Spec : Prop :=
  ∀ n, P1975134978338419808.a n = A110330 n

end A110330

/-! ## A110330.P15267646116557104811

`A181738(n)*A185018(n)`
-/

namespace A110330.P15267646116557104811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181738 n * A185018 n

end

end A110330.P15267646116557104811

namespace A110330

/-- `A181738(n)*A185018(n)` -/
def P15267646116557104811.Spec : Prop :=
  ∀ n, P15267646116557104811.a n = A110330 n

end A110330

/-!
# A110331: Row sums of a number triangle related to the Pell numbers.

The programs for A110331, the canonical program `A110331.P16371603039450479503` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110331 has offset 0).

The definition of A110331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110331.P16371603039450479503

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110331

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16371603039450479503.Spec : Prop :=
  ∀ n, P16371603039450479503.a n = A110331 n

theorem P16371603039450479503.correct : P16371603039450479503.Spec := by
  intro n
  simp only [A110331]

end A110331

/-! ## A110331.P12280912383707706794

`-A165900(n+1)`
-/

namespace A110331.P12280912383707706794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165900 (n + 1)

end

end A110331.P12280912383707706794

namespace A110331

/-- `-A165900(n+1)` -/
def P12280912383707706794.Spec : Prop :=
  ∀ n, P12280912383707706794.a n = A110331 n

end A110331

/-! ## A110331.P15845642609368750039

`1-∑[2*n]`
-/

namespace A110331.P15845642609368750039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110331.P15845642609368750039

namespace A110331

/-- `1-∑[2*n]` -/
def P15845642609368750039.Spec : Prop :=
  ∀ n, P15845642609368750039.a n = A110331 n

end A110331

/-! ## A110331.P11265286259795921890

`or(1, ∑[-2*n])`
-/

namespace A110331.P11265286259795921890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110331.P11265286259795921890

namespace A110331

/-- `or(1, ∑[-2*n])` -/
def P11265286259795921890.Spec : Prop :=
  ∀ n, P11265286259795921890.a n = A110331 n

end A110331

/-! ## A110331.P8556883828700247377

`xor(1, ∑[-2*n])`
-/

namespace A110331.P8556883828700247377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110331.P8556883828700247377

namespace A110331

/-- `xor(1, ∑[-2*n])` -/
def P8556883828700247377.Spec : Prop :=
  ∀ n, P8556883828700247377.a n = A110331 n

end A110331

/-! ## A110331.P10340234898337819691

`ceil(cos(1)-n-n²)`
-/

namespace A110331.P10340234898337819691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A110331.P10340234898337819691

namespace A110331

/-- `ceil(cos(1)-n-n²)` -/
def P10340234898337819691.Spec : Prop :=
  ∀ n, P10340234898337819691.a n = A110331 n

end A110331

/-! ## A110331.P18019941153834481443

`round(cos(1)-n-n²)`
-/

namespace A110331.P18019941153834481443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ))

end

end A110331.P18019941153834481443

namespace A110331

/-- `round(cos(1)-n-n²)` -/
def P18019941153834481443.Spec : Prop :=
  ∀ n, P18019941153834481443.a n = A110331 n

end A110331

/-! ## A110331.P12493964872552109212

`ceil(sin(1)-n-n²)`
-/

namespace A110331.P12493964872552109212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A110331.P12493964872552109212

namespace A110331

/-- `ceil(sin(1)-n-n²)` -/
def P12493964872552109212.Spec : Prop :=
  ∀ n, P12493964872552109212.a n = A110331 n

end A110331

/-! ## A110331.P4032419806670978627

`floor(tan(1)-n-n²)`
-/

namespace A110331.P4032419806670978627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A110331.P4032419806670978627

namespace A110331

/-- `floor(tan(1)-n-n²)` -/
def P4032419806670978627.Spec : Prop :=
  ∀ n, P4032419806670978627.a n = A110331 n

end A110331

/-! ## A110331.P14666826976037862635

`round(sin(1)-n-n²)`
-/

namespace A110331.P14666826976037862635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ))

end

end A110331.P14666826976037862635

namespace A110331

/-- `round(sin(1)-n-n²)` -/
def P14666826976037862635.Spec : Prop :=
  ∀ n, P14666826976037862635.a n = A110331 n

end A110331

/-! ## A110331.P4295018092243631324

`floor(asin(1)-n-n²)`
-/

namespace A110331.P4295018092243631324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A110331.P4295018092243631324

namespace A110331

/-- `floor(asin(1)-n-n²)` -/
def P4295018092243631324.Spec : Prop :=
  ∀ n, P4295018092243631324.a n = A110331 n

end A110331

/-! ## A110331.P13345440388951305140

`ceil(atan(1)-n-n²)`
-/

namespace A110331.P13345440388951305140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A110331.P13345440388951305140

namespace A110331

/-- `ceil(atan(1)-n-n²)` -/
def P13345440388951305140.Spec : Prop :=
  ∀ n, P13345440388951305140.a n = A110331 n

end A110331

/-! ## A110331.P16924740570950966813

`floor(cosh(1)-n-n²)`
-/

namespace A110331.P16924740570950966813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A110331.P16924740570950966813

namespace A110331

/-- `floor(cosh(1)-n-n²)` -/
def P16924740570950966813.Spec : Prop :=
  ∀ n, P16924740570950966813.a n = A110331 n

end A110331

/-! ## A110331.P15757426010146349850

`floor(atan(2)-n-n²)`
-/

namespace A110331.P15757426010146349850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (2 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A110331.P15757426010146349850

namespace A110331

/-- `floor(atan(2)-n-n²)` -/
def P15757426010146349850.Spec : Prop :=
  ∀ n, P15757426010146349850.a n = A110331 n

end A110331

/-! ## A110331.P16885024195526553706

`round(atan(1)-n-n²)`
-/

namespace A110331.P16885024195526553706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ))

end

end A110331.P16885024195526553706

namespace A110331

/-- `round(atan(1)-n-n²)` -/
def P16885024195526553706.Spec : Prop :=
  ∀ n, P16885024195526553706.a n = A110331 n

end A110331

/-! ## A110331.P15258847555082786610

`floor(sinh(1)-n-n²)`
-/

namespace A110331.P15258847555082786610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A110331.P15258847555082786610

namespace A110331

/-- `floor(sinh(1)-n-n²)` -/
def P15258847555082786610.Spec : Prop :=
  ∀ n, P15258847555082786610.a n = A110331 n

end A110331

/-! ## A110331.P1814460634426112279

`round(sinh(1)-n-n²)`
-/

namespace A110331.P1814460634426112279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ))

end

end A110331.P1814460634426112279

namespace A110331

/-- `round(sinh(1)-n-n²)` -/
def P1814460634426112279.Spec : Prop :=
  ∀ n, P1814460634426112279.a n = A110331 n

end A110331

/-! ## A110331.P2947407975573299954

`ceil(tanh(1)-n-n²)`
-/

namespace A110331.P2947407975573299954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A110331.P2947407975573299954

namespace A110331

/-- `ceil(tanh(1)-n-n²)` -/
def P2947407975573299954.Spec : Prop :=
  ∀ n, P2947407975573299954.a n = A110331 n

end A110331

/-! ## A110331.P13390961063910878166

`round(tanh(1)-n-n²)`
-/

namespace A110331.P13390961063910878166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ))

end

end A110331.P13390961063910878166

namespace A110331

/-- `round(tanh(1)-n-n²)` -/
def P13390961063910878166.Spec : Prop :=
  ∀ n, P13390961063910878166.a n = A110331 n

end A110331

/-! ## A110331.P14029793251252684496

`ceil(cot(1)-n-n²)`
-/

namespace A110331.P14029793251252684496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 : ℝ) - (n : ℝ) - (n ^ 2 : ℝ)⌉

end

end A110331.P14029793251252684496

namespace A110331

/-- `ceil(cot(1)-n-n²)` -/
def P14029793251252684496.Spec : Prop :=
  ∀ n, P14029793251252684496.a n = A110331 n

end A110331

/-!
# A110332: Diagonal sums of number a triangle related to the Pell numbers.

The programs for A110332, the canonical program `A110332.P11186720442391818474` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110332 has offset 0).

The definition of A110332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110332.P11186720442391818474

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=-2, a(2)=-1, a(3)=-4, a(4)=-5, a(5)=-6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110332

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P11186720442391818474.Spec : Prop :=
  ∀ n, P11186720442391818474.a n = A110332 n

theorem P11186720442391818474.correct : P11186720442391818474.Spec := by
  intro n
  simp only [A110332]

end A110332

/-! ## A110332.P1349298203538921504

`floor(a(n-2)^(-1)^n-n)` with `a(0)=1, a(1)=-2`
-/

namespace A110332.P1349298203538921504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  ⌊(a (n - 2) : ℚ) ^ ((-1) ^ n : ℤ) - (n : ℚ)⌋

end

end A110332.P1349298203538921504

namespace A110332

/-- `floor(a(n-2)^(-1)^n-n)` -/
def P1349298203538921504.Spec : Prop :=
  ∀ n, P1349298203538921504.a n = A110332 n

end A110332

/-! ## A110332.P710473280174361692

`A000034(n)*A110315(n)`
-/

namespace A110332.P710473280174361692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A110315 n

end

end A110332.P710473280174361692

namespace A110332

/-- `A000034(n)*A110315(n)` -/
def P710473280174361692.Spec : Prop :=
  ∀ n, P710473280174361692.a n = A110332 n

end A110332

/-! ## A110332.P9016483574645943721

`log2(A010694(n))*A110315(n)`
-/

namespace A110332.P9016483574645943721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A010694 n : ℝ) * (A110315 n : ℝ)

end

end A110332.P9016483574645943721

namespace A110332

/-- `log2(A010694(n))*A110315(n)` -/
def P9016483574645943721.Spec : Prop :=
  ∀ n, P9016483574645943721.a n = (A110332 n : ℝ)

end A110332

/-! ## A110332.P16762497090532427599

`A040001(n+1)*A110315(n)`
-/

namespace A110332.P16762497090532427599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A110315 n

end

end A110332.P16762497090532427599

namespace A110332

/-- `A040001(n+1)*A110315(n)` -/
def P16762497090532427599.Spec : Prop :=
  ∀ n, P16762497090532427599.a n = A110332 n

end A110332

/-! ## A110332.P6960036532272155004

`A000463(n+1)+1-A080513(n)²`
-/

namespace A110332.P6960036532272155004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) + (1 - A080513 n ^ 2)

end

end A110332.P6960036532272155004

namespace A110332

/-- `A000463(n+1)+1-A080513(n)²` -/
def P6960036532272155004.Spec : Prop :=
  ∀ n, P6960036532272155004.a n = A110332 n

end A110332

/-! ## A110332.P2493698483356095781

`(A354354(3*n+2)+1)*A110315(n)`
-/

namespace A110332.P2493698483356095781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354354 (3 * n + 2) + 1) * A110315 n

end

end A110332.P2493698483356095781

namespace A110332

/-- `(A354354(3*n+2)+1)*A110315(n)` -/
def P2493698483356095781.Spec : Prop :=
  ∀ n, P2493698483356095781.a n = A110332 n

end A110332

/-! ## A110332.P16814176360475968411

`xor(-A002620(A141310(n)), A093178(n))`
-/

namespace A110332.P16814176360475968411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A002620 (A141310 n).toNat) (A093178 n)

end

end A110332.P16814176360475968411

namespace A110332

/-- `xor(-A002620(A141310(n)), A093178(n))` -/
def P16814176360475968411.Spec : Prop :=
  ∀ n, P16814176360475968411.a n = A110332 n

end A110332

/-! ## A110332.P6054100069115712250

`A002378(A057979(n))-∑[A093178(n)]`
-/

namespace A110332.P6054100069115712250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A057979 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110332.P6054100069115712250

namespace A110332

/-- `A002378(A057979(n))-∑[A093178(n)]` -/
def P6054100069115712250.Spec : Prop :=
  ∀ n, P6054100069115712250.a n = A110332 n

end A110332

/-! ## A110332.P11200386176927717231

`A000463(n+1)-A005563(A110654(n))`
-/

namespace A110332.P11200386176927717231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) - A005563 (A110654 n).toNat

end

end A110332.P11200386176927717231

namespace A110332

/-- `A000463(n+1)-A005563(A110654(n))` -/
def P11200386176927717231.Spec : Prop :=
  ∀ n, P11200386176927717231.a n = A110332 n

end A110332

/-! ## A110332.P7359889762461871274

`A033999(n)-A026741(n)*A158416(n)`
-/

namespace A110332.P7359889762461871274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A026741 n * A158416 n

end

end A110332.P7359889762461871274

namespace A110332

/-- `A033999(n)-A026741(n)*A158416(n)` -/
def P7359889762461871274.Spec : Prop :=
  ∀ n, P7359889762461871274.a n = A110332 n

end A110332

/-! ## A110332.P11973137751043305304

`A000463(n+1)-A005563(n-A004526(n))`
-/

namespace A110332.P11973137751043305304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) - A005563 ((n : ℤ) - A004526 n).toNat

end

end A110332.P11973137751043305304

namespace A110332

/-- `A000463(n+1)-A005563(n-A004526(n))` -/
def P11973137751043305304.Spec : Prop :=
  ∀ n, P11973137751043305304.a n = A110332 n

end A110332

/-! ## A110332.P6032453258436528509

`A317301(n+1)-A131119(n)`
-/

namespace A110332.P6032453258436528509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317301 (n + 1) - A131119 n

end

end A110332.P6032453258436528509

namespace A110332

/-- `A317301(n+1)-A131119(n)` -/
def P6032453258436528509.Spec : Prop :=
  ∀ n, P6032453258436528509.a n = A110332 n

end A110332

/-! ## A110332.P8736247963774069193

`A064455(n+2)-(n+1+A000463(n+2))`
-/

namespace A110332.P8736247963774069193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 2) - ((n + 1 : ℤ) + A000463 (n + 2))

end

end A110332.P8736247963774069193

namespace A110332

/-- `A064455(n+2)-(n+1+A000463(n+2))` -/
def P8736247963774069193.Spec : Prop :=
  ∀ n, P8736247963774069193.a n = A110332 n

end A110332

/-! ## A110332.P745515582511251803

`Δ[A001057(n)]-A028552(A142150(n))`
-/

namespace A110332.P745515582511251803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A028552 (A142150 n).toNat

end

end A110332.P745515582511251803

namespace A110332

/-- `Δ[A001057(n)]-A028552(A142150(n))` -/
def P745515582511251803.Spec : Prop :=
  ∀ n, P745515582511251803.a n = A110332 n

end A110332

/-! ## A110332.P3208566969989304495

`Δ[A066104(n)-A167875(A110654(n))]`
-/

namespace A110332.P3208566969989304495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n - A167875 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110332.P3208566969989304495

namespace A110332

/-- `Δ[A066104(n)-A167875(A110654(n))]` -/
def P3208566969989304495.Spec : Prop :=
  ∀ n, P3208566969989304495.a n = A110332 n

end A110332

/-! ## A110332.P3476308904083839091

`A026741(n+2)*A028242(n)-A000096(n)`
-/

namespace A110332.P3476308904083839091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A028242 n - A000096 n

end

end A110332.P3476308904083839091

namespace A110332

/-- `A026741(n+2)*A028242(n)-A000096(n)` -/
def P3476308904083839091.Spec : Prop :=
  ∀ n, P3476308904083839091.a n = A110332 n

end A110332

/-! ## A110332.P2491316745842033857

`A110315(A059029(n))`
-/

namespace A110332.P2491316745842033857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (A059029 n).toNat

end

end A110332.P2491316745842033857

namespace A110332

/-- `A110315(A059029(n))` -/
def P2491316745842033857.Spec : Prop :=
  ∀ n, P2491316745842033857.a n = A110332 n

end A110332

/-! ## A110332.P12278302798112925356

`A008796(A321220(n))-A001399(2*n+1)`
-/

namespace A110332.P12278302798112925356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (A321220 n).toNat - A001399 (2 * n + 1)

end

end A110332.P12278302798112925356

namespace A110332

/-- `A008796(A321220(n))-A001399(2*n+1)` -/
def P12278302798112925356.Spec : Prop :=
  ∀ n, P12278302798112925356.a n = A110332 n

end A110332

/-! ## A110332.P4170594329368874239

`A152271(n)-A129889(A165998(n))`
-/

namespace A110332.P4170594329368874239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n - A129889 (A165998 n).toNat

end

end A110332.P4170594329368874239

namespace A110332

/-- `A152271(n)-A129889(A165998(n))` -/
def P4170594329368874239.Spec : Prop :=
  ∀ n, P4170594329368874239.a n = A110332 n

end A110332

/-!
# A110333: Triangle read by rows: T(n,k) (n,k>=0) = number of peakless Motzkin paths of length n having k valleys (i.e., (1,-1) followed by (1,1)) at level zero (can be easily translated into RNA secondary structure terminology).

The programs for A110333, there is no canonical definition to state claims against.
-/

/-! ## A110333.P7885475864992106934

`A186733(A209178(n+1))+A089738(n)`
-/

namespace A110333.P7885475864992106934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (A209178 (n + 1)).toNat + A089738 n

end

end A110333.P7885475864992106934

/-! ## A110333.P5195808035692670311

`A089738(n)+A010051(A137390(n+3))`
-/

namespace A110333.P5195808035692670311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089738 n + A010051 (A137390 (n + 3)).toNat

end

end A110333.P5195808035692670311

/-! ## A110333.P1287986529506367696

`A089738(A024653(n))`
-/

namespace A110333.P1287986529506367696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089738 (A024653 n).toNat

end

end A110333.P1287986529506367696

/-! ## A110333.P4527034279936097528

`A089738(A024654(n))`
-/

namespace A110333.P4527034279936097528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089738 (A024654 n).toNat

end

end A110333.P4527034279936097528

/-! ## A110333.P3269206684763764832

`A089738(A024655(n))`
-/

namespace A110333.P3269206684763764832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089738 (A024655 n).toNat

end

end A110333.P3269206684763764832

/-!
# A110334: Number of peakless Motzkin paths of length n having no valleys (i.e., (1,-1) followed by (1,1)) at level zero (can be easily translated into RNA secondary structure terminology).

The programs for A110334, there is no canonical definition to state claims against.
-/

/-! ## A110334.P17800324700324014226

`A110333(lt[A237113(n), A110333(n)])`
-/

namespace A110334.P17800324700324014226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110334.P17800324700324014226

/-! ## A110334.P9332311594325014755

`A110333(lt[A360244(n), A110333(n)])`
-/

namespace A110334.P9332311594325014755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110334.P9332311594325014755

/-! ## A110334.P15407534518171937970

`A110333(lt[A112473(n+3), A110333(n)])`
-/

namespace A110334.P15407534518171937970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112473 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110334.P15407534518171937970

/-! ## A110334.P3012263165136361812

`A299271(A299480(2^n))`
-/

namespace A110334.P3012263165136361812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299271 (A299480 (2 ^ n)).toNat

end

end A110334.P3012263165136361812

/-! ## A110334.P10776184042416036209

`A299271(log2(A008619(2^n-1)))`
-/

namespace A110334.P10776184042416036209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299271 (SequenceMachineLib.roundAway (Real.logb 2 (A008619 (2 ^ n - 1) : ℝ))).toNat

end

end A110334.P10776184042416036209

/-!
# A110335: Number of valleys (i.e., (1,-1) followed by (1,1)) at level zero in all peakless Motzkin paths of length n+6 (can be easily translated into RNA secondary structure terminology).

The programs for A110335, there is no canonical definition to state claims against.
-/

/-! ## A110335.P10522515197327318122

`Δ[A089737(n+2)-A004148(n+5)]`
-/

namespace A110335.P10522515197327318122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089737 (n + 2) - A004148 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110335.P10522515197327318122

/-! ## A110335.P3698851104304773096

`Δ[A089737(n+2)-A203019(n+7)]`
-/

namespace A110335.P3698851104304773096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089737 (n + 2) - A203019 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110335.P3698851104304773096

/-! ## A110335.P17410874533529468340

`(A004148(n+8)-A089737(n+2))%A004148(n+7)`
-/

namespace A110335.P17410874533529468340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004148 (n + 8) - A089737 (n + 2)) (A004148 (n + 7))

end

end A110335.P17410874533529468340

/-!
# A110337: a(n) = 2n+1 if 2n+1 is prime else a(n) = least prime of the form (2n+1)(2n+3)...(2n+2k-1) + 2.

The programs for A110337, there is no canonical definition to state claims against.
-/

/-! ## A110337.P10119285898106021163

`p?[A294937(A051033(n))+n^gcd(2, n)]`
-/

namespace A110337.P10119285898106021163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A051033 n).toNat + (n ^ Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110337.P10119285898106021163

/-!
# A110340: First column of triangle in A110339.

The programs for A110340, there is no canonical definition to state claims against.
-/

/-! ## A110340.P2950076132735124273

`(n+1)*A000688(A237648(n))`
-/

namespace A110340.P2950076132735124273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000688 (A237648 n).toNat

end

end A110340.P2950076132735124273

/-! ## A110340.P14979527485287111269

`A000688(A237648(n))*A028242(2*n)`
-/

namespace A110340.P14979527485287111269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A237648 n).toNat * A028242 (2 * n)

end

end A110340.P14979527485287111269

/-! ## A110340.P2430461264840843617

`A110339(∑[n]+1)`
-/

namespace A110340.P2430461264840843617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110339 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110340.P2430461264840843617

/-! ## A110340.P14628798978840952037

`A110339(A000124(n))%61`
-/

namespace A110340.P14628798978840952037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110339 (A000124 n).toNat) 61

end

end A110340.P14628798978840952037

/-! ## A110340.P4321877171709481703

`A184955(n)+A110339(A000124(n))`
-/

namespace A110340.P4321877171709481703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A110339 (A000124 n).toNat

end

end A110340.P4321877171709481703

/-!
# A110341: Right diagonal of triangle in A110339.

The programs for A110341, there is no canonical definition to state claims against.
-/

/-! ## A110341.P4433168088530480916

`A110339(∑[n+1])`
-/

namespace A110341.P4433168088530480916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110341.P4433168088530480916

/-! ## A110341.P11260890029198672817

`and(-1, A110339(A000217(n+1)))`
-/

namespace A110341.P11260890029198672817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A110339 (A000217 (n + 1)).toNat)

end

end A110341.P11260890029198672817

/-! ## A110341.P2570788361502119285

`A184955(n)+A110339(A000217(n+1))`
-/

namespace A110341.P2570788361502119285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A110339 (A000217 (n + 1)).toNat

end

end A110341.P2570788361502119285

/-! ## A110341.P4528603866998633340

`A061674(n)*A110339(A000217(n+1))`
-/

namespace A110341.P4528603866998633340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n * A110339 (A000217 (n + 1)).toNat

end

end A110341.P4528603866998633340

/-! ## A110341.P3946245200828660421

`A110339(A000217(n+1))%A065903(n+1)`
-/

namespace A110341.P3946245200828660421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110339 (A000217 (n + 1)).toNat) (A065903 (n + 1))

end

end A110341.P3946245200828660421

/-!
# A110344: a(n) = Sum_{k=0..n-1} (n+k) = n(3n-1)/2 if n is even; a(n) = Sum_{k=0..n-1} (n-k) = n(n+1)/2 if n is odd.

The programs for A110344, the canonical program `A110344.P6646687625527835927` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110344 has offset 1).

The definition of A110344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110344.P5132453462365292087

`(n+1)*(2*(n+1)+n*(-1)^(n+1))/2`
-/

namespace A110344.P5132453462365292087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((2 * (n + 1) : ℤ) + (n : ℤ) * (-1) ^ (n + 1) : ℚ) / 2)

end

end A110344.P5132453462365292087

namespace A110344

/-- `(n+1)*(2*(n+1)+n*(-1)^(n+1))/2` -/
def P5132453462365292087.Spec : Prop :=
  ∀ n, P5132453462365292087.a n = (A110344 (n + 1) : ℚ)

theorem P5132453462365292087.correct : P5132453462365292087.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A110344, Nat.add_sub_cancel, A110344.P5132453462365292087.a, A110344.P6646687625527835927.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A110344, Nat.add_sub_cancel, A110344.P5132453462365292087.a, A110344.P6646687625527835927.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110344

/-! ## A110344.P6646687625527835927

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=22, a(4)=15, a(5)=51`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110344

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6646687625527835927.Spec : Prop :=
  ∀ n, P6646687625527835927.a n = A110344 (n + 1)

theorem P6646687625527835927.correct : P6646687625527835927.Spec := by
  intro n
  simp only [A110344, Nat.add_sub_cancel]

end A110344

/-! ## A110344.P8337105511133370042

`∑[1-(n-Δ[lcm(n-1, 2*n)])]`
-/

namespace A110344.P8337105511133370042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110344.P8337105511133370042

namespace A110344

/-- `∑[1-(n-Δ[lcm(n-1, 2*n)])]` -/
def P8337105511133370042.Spec : Prop :=
  ∀ n, P8337105511133370042.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P2371982445727348506

`abs((n+1)²*(-1)^n-A000217(n))`
-/

namespace A110344.P2371982445727348506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) * (-1) ^ n - A000217 n|

end

end A110344.P2371982445727348506

namespace A110344

/-- `abs((n+1)²*(-1)^n-A000217(n))` -/
def P2371982445727348506.Spec : Prop :=
  ∀ n, P2371982445727348506.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P18377104994220546542

`A126274(n)/A110345(n+1)`
-/

namespace A110344.P18377104994220546542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126274 n : ℚ) / (A110345 (n + 1) : ℚ)

end

end A110344.P18377104994220546542

namespace A110344

/-- `A126274(n)/A110345(n+1)` -/
def P18377104994220546542.Spec : Prop :=
  ∀ n, P18377104994220546542.a n = (A110344 (n + 1) : ℚ)

end A110344

/-! ## A110344.P3782955463071719372

`A245288(A014601(n+1))`
-/

namespace A110344.P3782955463071719372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A014601 (n + 1)).toNat

end

end A110344.P3782955463071719372

namespace A110344

/-- `A245288(A014601(n+1))` -/
def P3782955463071719372.Spec : Prop :=
  ∀ n, P3782955463071719372.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P16281695503097164375

`A245288(A154708(n+1))`
-/

namespace A110344.P16281695503097164375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A154708 (n + 1)).toNat

end

end A110344.P16281695503097164375

namespace A110344

/-- `A245288(A154708(n+1))` -/
def P16281695503097164375.Spec : Prop :=
  ∀ n, P16281695503097164375.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P9687841078348674513

`A245288(A042963(n+1)+2)`
-/

namespace A110344.P9687841078348674513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (A042963 (n + 1) + 2).toNat

end

end A110344.P9687841078348674513

namespace A110344

/-- `A245288(A042963(n+1)+2)` -/
def P9687841078348674513.Spec : Prop :=
  ∀ n, P9687841078348674513.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P8771066010345895276

`A245288(A047451(n+2)/2)`
-/

namespace A110344.P8771066010345895276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (SequenceMachineLib.roundAway ((A047451 (n + 2) : ℚ) / 2)).toNat

end

end A110344.P8771066010345895276

namespace A110344

/-- `A245288(A047451(n+2)/2)` -/
def P8771066010345895276.Spec : Prop :=
  ∀ n, P8771066010345895276.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P15340063774762263491

`A245288(A047463(n+1)/2+2)`
-/

namespace A110344.P15340063774762263491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (SequenceMachineLib.roundAway ((A047463 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A110344.P15340063774762263491

namespace A110344

/-- `A245288(A047463(n+1)/2+2)` -/
def P15340063774762263491.Spec : Prop :=
  ∀ n, P15340063774762263491.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P17666850610083865598

`A267322(A047264(n+1))`
-/

namespace A110344.P17666850610083865598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267322 (A047264 (n + 1)).toNat

end

end A110344.P17666850610083865598

namespace A110344

/-- `A267322(A047264(n+1))` -/
def P17666850610083865598.Spec : Prop :=
  ∀ n, P17666850610083865598.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P242263343208434398

`A213548(A084265(n))`
-/

namespace A110344.P242263343208434398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (A084265 n).toNat

end

end A110344.P242263343208434398

namespace A110344

/-- `A213548(A084265(n))` -/
def P242263343208434398.Spec : Prop :=
  ∀ n, P242263343208434398.a n = A110344 (n + 1)

end A110344

/-! ## A110344.P15638792878104745038

`A126890(A266665(n+1))`
-/

namespace A110344.P15638792878104745038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 (A266665 (n + 1)).toNat

end

end A110344.P15638792878104745038

namespace A110344

/-- `A126890(A266665(n+1))` -/
def P15638792878104745038.Spec : Prop :=
  ∀ n, P15638792878104745038.a n = A110344 (n + 1)

end A110344

/-!
# A110345: a(n) = n + (n+1) + (n+2) + ... n terms if n is odd, else a(n) = n + (n-1) + (n-2) + ... n terms = n(n+1)/2 = n-th triangular number if n is even.

The programs for A110345, the canonical program `A110345.P5698654357641482564` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110345 has offset 1).

The definition of A110345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110345.P5115894961604810476

`∑[n]+(n+1)^gcd(2, n)`
-/

namespace A110345.P5115894961604810476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ Nat.gcd 2 n

end

end A110345.P5115894961604810476

namespace A110345

/-- `∑[n]+(n+1)^gcd(2, n)` -/
def P5115894961604810476.Spec : Prop :=
  ∀ n, (P5115894961604810476.a n : ℤ) = A110345 (n + 1)

end A110345

/-! ## A110345.P5698654357641482564

`2*lcm(n, ∑[n])-∑[n-1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110345

/-- `2*lcm(n, ∑[n])-∑[n-1]` -/
def P5698654357641482564.Spec : Prop :=
  ∀ n, P5698654357641482564.a n = A110345 (n + 1)

theorem P5698654357641482564.correct : P5698654357641482564.Spec := by
  intro n
  simp only [A110345, Nat.add_sub_cancel]

end A110345

/-! ## A110345.P5279660317468614533

`(n+1)²+(-1)^n*∑[n]`
-/

namespace A110345.P5279660317468614533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110345.P5279660317468614533

namespace A110345

/-- `(n+1)²+(-1)^n*∑[n]` -/
def P5279660317468614533.Spec : Prop :=
  ∀ n, P5279660317468614533.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P12003201183173846179

`abs(A000217(n)+(n+1)²*(-1)^n)`
-/

namespace A110345.P12003201183173846179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n + ((n + 1) ^ 2 : ℤ) * (-1) ^ n|

end

end A110345.P12003201183173846179

namespace A110345

/-- `abs(A000217(n)+(n+1)²*(-1)^n)` -/
def P12003201183173846179.Spec : Prop :=
  ∀ n, P12003201183173846179.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P2747573315896030279

`lcm(A030640(n), A071054(n))`
-/

namespace A110345.P2747573315896030279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030640 n) (A071054 n)

end

end A110345.P2747573315896030279

namespace A110345

/-- `lcm(A030640(n), A071054(n))` -/
def P2747573315896030279.Spec : Prop :=
  ∀ n, (P2747573315896030279.a n : ℤ) = A110345 (n + 1)

end A110345

/-! ## A110345.P7442063999064055717

`A126274(n)/A110344(n+1)`
-/

namespace A110345.P7442063999064055717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126274 n : ℚ) / (A110344 (n + 1) : ℚ)

end

end A110345.P7442063999064055717

namespace A110345

/-- `A126274(n)/A110344(n+1)` -/
def P7442063999064055717.Spec : Prop :=
  ∀ n, P7442063999064055717.a n = (A110345 (n + 1) : ℚ)

end A110345

/-! ## A110345.P10078701311340678245

`A062346(n+2)%A195605(n)`
-/

namespace A110345.P10078701311340678245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062346 (n + 2)) (A195605 n)

end

end A110345.P10078701311340678245

namespace A110345

/-- `A062346(n+2)%A195605(n)` -/
def P10078701311340678245.Spec : Prop :=
  ∀ n, P10078701311340678245.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P18388844230773778711

`A109613(n+1)*A123684(n+1)`
-/

namespace A110345.P18388844230773778711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) * A123684 (n + 1)

end

end A110345.P18388844230773778711

namespace A110345

/-- `A109613(n+1)*A123684(n+1)` -/
def P18388844230773778711.Spec : Prop :=
  ∀ n, P18388844230773778711.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P3881469007858102332

`(A000034(n)+n)*A123684(n+1)`
-/

namespace A110345.P3881469007858102332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n + (n : ℤ)) * A123684 (n + 1)

end

end A110345.P3881469007858102332

namespace A110345

/-- `(A000034(n)+n)*A123684(n+1)` -/
def P3881469007858102332.Spec : Prop :=
  ∀ n, P3881469007858102332.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P5527077162110969526

`lcm(A109613(A000027(n+1)), A123684(n+1))`
-/

namespace A110345.P5527077162110969526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109613 (A000027 (n + 1)).toNat) (A123684 (n + 1))

end

end A110345.P5527077162110969526

namespace A110345

/-- `lcm(A109613(A000027(n+1)), A123684(n+1))` -/
def P5527077162110969526.Spec : Prop :=
  ∀ n, (P5527077162110969526.a n : ℤ) = A110345 (n + 1)

end A110345

/-! ## A110345.P4380516112270191462

`(A030451(n)+A026741(n+1))*A026741(n+1)`
-/

namespace A110345.P4380516112270191462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030451 n + A026741 (n + 1)) * A026741 (n + 1)

end

end A110345.P4380516112270191462

namespace A110345

/-- `(A030451(n)+A026741(n+1))*A026741(n+1)` -/
def P4380516112270191462.Spec : Prop :=
  ∀ n, P4380516112270191462.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P2155779648382279058

`(A042948(n+1)-A026741(n))*A026741(n+1)`
-/

namespace A110345.P2155779648382279058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042948 (n + 1) - A026741 n) * A026741 (n + 1)

end

end A110345.P2155779648382279058

namespace A110345

/-- `(A042948(n+1)-A026741(n))*A026741(n+1)` -/
def P2155779648382279058.Spec : Prop :=
  ∀ n, P2155779648382279058.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P9807298630120621732

`A000217(n+1)*A123684(n+1)/A008619(n)`
-/

namespace A110345.P9807298630120621732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) * A123684 (n + 1) : ℚ) / (A008619 n : ℚ)

end

end A110345.P9807298630120621732

namespace A110345

/-- `A000217(n+1)*A123684(n+1)/A008619(n)` -/
def P9807298630120621732.Spec : Prop :=
  ∀ n, P9807298630120621732.a n = (A110345 (n + 1) : ℚ)

end A110345

/-! ## A110345.P4123616039196813688

`(A266981(n+1)-1)*A109613(n+1)`
-/

namespace A110345.P4123616039196813688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266981 (n + 1) - 1) * A109613 (n + 1)

end

end A110345.P4123616039196813688

namespace A110345

/-- `(A266981(n+1)-1)*A109613(n+1)` -/
def P4123616039196813688.Spec : Prop :=
  ∀ n, P4123616039196813688.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P15922601385559449900

`(A266981(n+1)-1)*A063196(n+2)`
-/

namespace A110345.P15922601385559449900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266981 (n + 1) - 1) * A063196 (n + 2)

end

end A110345.P15922601385559449900

namespace A110345

/-- `(A266981(n+1)-1)*A063196(n+2)` -/
def P15922601385559449900.Spec : Prop :=
  ∀ n, P15922601385559449900.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P9216101201736965439

`(A123684(n+2)-A001057(n))*A123684(n+1)`
-/

namespace A110345.P9216101201736965439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123684 (n + 2) - A001057 n) * A123684 (n + 1)

end

end A110345.P9216101201736965439

namespace A110345

/-- `(A123684(n+2)-A001057(n))*A123684(n+1)` -/
def P9216101201736965439.Spec : Prop :=
  ∀ n, P9216101201736965439.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P4004240255414614838

`(A028242(n+1)+A026741(n+1))*A026741(n+1)`
-/

namespace A110345.P4004240255414614838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028242 (n + 1) + A026741 (n + 1)) * A026741 (n + 1)

end

end A110345.P4004240255414614838

namespace A110345

/-- `(A028242(n+1)+A026741(n+1))*A026741(n+1)` -/
def P4004240255414614838.Spec : Prop :=
  ∀ n, P4004240255414614838.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P2496066819254135862

`(A014682(n+1)-A123684(n+2))*A319556(n+1)`
-/

namespace A110345.P2496066819254135862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014682 (n + 1) - A123684 (n + 2)) * A319556 (n + 1)

end

end A110345.P2496066819254135862

namespace A110345

/-- `(A014682(n+1)-A123684(n+2))*A319556(n+1)` -/
def P2496066819254135862.Spec : Prop :=
  ∀ n, P2496066819254135862.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P5065577095409057747

`(A004526(n+1)-A319556(n+2))*A319556(n+1)`
-/

namespace A110345.P5065577095409057747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 (n + 1) - A319556 (n + 2)) * A319556 (n + 1)

end

end A110345.P5065577095409057747

namespace A110345

/-- `(A004526(n+1)-A319556(n+2))*A319556(n+1)` -/
def P5065577095409057747.Spec : Prop :=
  ∀ n, P5065577095409057747.a n = A110345 (n + 1)

end A110345

/-! ## A110345.P12322639911414578209

`or(1, n+1)*A333448(2*(n+1))`
-/

namespace A110345.P12322639911414578209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) * A333448 (2 * (n + 1))

end

end A110345.P12322639911414578209

namespace A110345

/-- `or(1, n+1)*A333448(2*(n+1))` -/
def P12322639911414578209.Spec : Prop :=
  ∀ n, P12322639911414578209.a n = A110345 (n + 1)

end A110345

/-!
# A110346: Largest multiple of n in n + (n-1) +(n-2) + ... (n-k).

The programs for A110346, there is no canonical definition to state claims against.
-/

/-! ## A110346.P3773938973549494432

`A095200(n+1)+1+n`
-/

namespace A110346.P3773938973549494432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095200 (n + 1) + 1 + (n : ℤ)

end

end A110346.P3773938973549494432

/-! ## A110346.P826961764672890605

`A199343(A095200(n+1))+n`
-/

namespace A110346.P826961764672890605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A095200 (n + 1)).toNat + (n : ℤ)

end

end A110346.P826961764672890605

/-! ## A110346.P14541120129743980375

`(n+1)*(A095201(n+1)+1)`
-/

namespace A110346.P14541120129743980375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A095201 (n + 1) + 1)

end

end A110346.P14541120129743980375

/-! ## A110346.P18302324322429077389

`A075362(A095201(n+1)+A000124(n))`
-/

namespace A110346.P18302324322429077389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A095201 (n + 1) + A000124 n).toNat

end

end A110346.P18302324322429077389

/-! ## A110346.P9631498083394895982

`A095200(A077168(n))+n+1`
-/

namespace A110346.P9631498083394895982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095200 (A077168 n).toNat + (n + 1 : ℤ)

end

end A110346.P9631498083394895982

/-!
# A110347: a(n) = meantorial(n) = the product of the set of n closest numbers with an arithmetic mean of n.

The programs for A110347, there is no canonical definition to state claims against.
-/

/-! ## A110347.P4191836486468640521

`char[1]+(n+1)*A110348(n+1)`
-/

namespace A110347.P4191836486468640521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n + 1 : ℤ) * A110348 (n + 1)

end

end A110347.P4191836486468640521

/-! ## A110347.P11899237053011995624

`A001710(n+2)*A047749(n+1)`
-/

namespace A110347.P11899237053011995624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2) * A047749 (n + 1)

end

end A110347.P11899237053011995624

/-! ## A110347.P928771149844104563

`abs(A134565(n+1))*A001710(n+2)`
-/

namespace A110347.P928771149844104563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134565 (n + 1)| * A001710 (n + 2)

end

end A110347.P928771149844104563

/-! ## A110347.P3209857096819154096

`∏[A065475(n+1)]*A047749(n+1)`
-/

namespace A110347.P3209857096819154096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A047749 (n + 1)

end

end A110347.P3209857096819154096

/-! ## A110347.P16461589160759866175

`A047749(n+1)*A187741(2*(n+1))`
-/

namespace A110347.P16461589160759866175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (n + 1) * A187741 (2 * (n + 1))

end

end A110347.P16461589160759866175

/-!
# A110348: a(2) = 1 by definition; otherwise a(n) = A109347(n)/n.

The programs for A110348, there is no canonical definition to state claims against.
-/

/-! ## A110348.P12011923846656386519

`floor(A110347(n+1)/(n+1))`
-/

namespace A110348.P12011923846656386519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110347 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A110348.P12011923846656386519

/-! ## A110348.P3347220357054036213

`floor(A001710(n+2)*A047749(n+1)/(n+1))`
-/

namespace A110348.P3347220357054036213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001710 (n + 2) * A047749 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A110348.P3347220357054036213

/-!
# A110349: a(n) = n + (n+1) + (n-1) + (n+2) + (n-2) ... n terms.

The programs for A110349, the canonical program `A110349.P1170699636304025855` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110349 has offset 1).

The definition of A110349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110349.P1170699636304025855

`(n+1)*(4*(n+1)+(-1)^(n+1)+1)/4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110349

/-- `(n+1)*(4*(n+1)+(-1)^(n+1)+1)/4` -/
def P1170699636304025855.Spec : Prop :=
  ∀ n, P1170699636304025855.a n = (A110349 (n + 1) : ℚ)

end A110349

/-! ## A110349.P15581058524380316317

`ceil((sqrt(a(n-2))+2)²)` with `a(0)=1, a(1)=5`
-/

namespace A110349.P15581058524380316317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈(Real.sqrt (a (n - 2) : ℝ) + 2) ^ 2⌉

end

end A110349.P15581058524380316317

namespace A110349

/-- `ceil((sqrt(a(n-2))+2)²)` -/
def P15581058524380316317.Spec : Prop :=
  ∀ n, P15581058524380316317.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P7798697567517115475

`round((sqrt(a(n-2))+2)²)` with `a(0)=1, a(1)=5`
-/

namespace A110349.P7798697567517115475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 2) : ℝ) + 2) ^ 2)

end

end A110349.P7798697567517115475

namespace A110349

/-- `round((sqrt(a(n-2))+2)²)` -/
def P7798697567517115475.Spec : Prop :=
  ∀ n, P7798697567517115475.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P13963423430657199877

`∑[floor(lcm(2, n)+(n+3)/2)]`
-/

namespace A110349.P13963423430657199877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n : ℚ) + (n + 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110349.P13963423430657199877

namespace A110349

/-- `∑[floor(lcm(2, n)+(n+3)/2)]` -/
def P13963423430657199877.Spec : Prop :=
  ∀ n, P13963423430657199877.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P15410082957618856617

`∑[n]%(n+1)+(n+1)²`
-/

namespace A110349.P15410082957618856617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + (n + 1) ^ 2

end

end A110349.P15410082957618856617

namespace A110349

/-- `∑[n]%(n+1)+(n+1)²` -/
def P15410082957618856617.Spec : Prop :=
  ∀ n, (P15410082957618856617.a n : ℤ) = A110349 (n + 1)

end A110349

/-! ## A110349.P14394391240774649605

`floor((∑[floor(a(n-2))]/4)²)` with `a(0)=4, a(1)=5, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A110349.P14394391240774649605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) ^ 2⌋

end

end A110349.P14394391240774649605

namespace A110349

/-- `floor((∑[floor(a(n-2))]/4)²)` -/
def P14394391240774649605.Spec : Prop :=
  ∀ n, P14394391240774649605.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P5083522944579352844

`(n+1)*(n+2)-gcd(n+1, ∑[n])`
-/

namespace A110349.P5083522944579352844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110349.P5083522944579352844

namespace A110349

/-- `(n+1)*(n+2)-gcd(n+1, ∑[n])` -/
def P5083522944579352844.Spec : Prop :=
  ∀ n, P5083522944579352844.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P7672938768572111107

`∑[2*n+1]+∑[n+1]%(n+1)`
-/

namespace A110349.P7672938768572111107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

end

end A110349.P7672938768572111107

namespace A110349

/-- `∑[2*n+1]+∑[n+1]%(n+1)` -/
def P7672938768572111107.Spec : Prop :=
  ∀ n, (P7672938768572111107.a n : ℤ) = A110349 (n + 1)

end A110349

/-! ## A110349.P13297710524747362932

`A265225(n)+∑[n]`
-/

namespace A110349.P13297710524747362932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110349.P13297710524747362932

namespace A110349

/-- `A265225(n)+∑[n]` -/
def P13297710524747362932.Spec : Prop :=
  ∀ n, P13297710524747362932.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P18157602968579930008

`A093353(n)+∑[n+1]`
-/

namespace A110349.P18157602968579930008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110349.P18157602968579930008

namespace A110349

/-- `A093353(n)+∑[n+1]` -/
def P18157602968579930008.Spec : Prop :=
  ∀ n, P18157602968579930008.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P464791606867688111

`∑[A001057(n)]+(n+1)²`
-/

namespace A110349.P464791606867688111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A110349.P464791606867688111

namespace A110349

/-- `∑[A001057(n)]+(n+1)²` -/
def P464791606867688111.Spec : Prop :=
  ∀ n, P464791606867688111.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P15393341538486291497

`(n+1)²-∑[A130472(n)]`
-/

namespace A110349.P15393341538486291497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110349.P15393341538486291497

namespace A110349

/-- `(n+1)²-∑[A130472(n)]` -/
def P15393341538486291497.Spec : Prop :=
  ∀ n, P15393341538486291497.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P957590667882719934

`A080512(n+1)+∑[2*n]`
-/

namespace A110349.P957590667882719934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110349.P957590667882719934

namespace A110349

/-- `A080512(n+1)+∑[2*n]` -/
def P957590667882719934.Spec : Prop :=
  ∀ n, P957590667882719934.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P7254115338395218611

`A074149(n+1)-n*∑[n]`
-/

namespace A110349.P7254115338395218611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) - ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A110349.P7254115338395218611

namespace A110349

/-- `A074149(n+1)-n*∑[n]` -/
def P7254115338395218611.Spec : Prop :=
  ∀ n, P7254115338395218611.a n = A110349 (n + 1)

end A110349

/-! ## A110349.P4701765479444016405

`A397113(n)+A357946(n)`
-/

namespace A110349.P4701765479444016405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397113 n + A357946 n

end

end A110349.P4701765479444016405

namespace A110349

/-- `A397113(n)+A357946(n)` -/
def P4701765479444016405.Spec : Prop :=
  ∀ n, P4701765479444016405.a n = A110349 (n + 1)

end A110349

/-!
# A110350: Least sum (n+1) + (n+2) + ...+(n+k) >= (n(n+1)/2), the n-th triangular number.

The programs for A110350, there is no canonical definition to state claims against.
-/

/-! ## A110350.P12262892220075015095

`A127739(∑[2*(n+1)])-∑[n+1]`
-/

namespace A110350.P12262892220075015095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110350.P12262892220075015095

/-! ## A110350.P3950886458051478601

`A025581((n+1)²+n)+∑[n+1]`
-/

namespace A110350.P3950886458051478601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n + 1) ^ 2 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110350.P3950886458051478601

/-! ## A110350.P6352996275426246455

`A004736(∑[2*(n+1)])+∑[n]+n`
-/

namespace A110350.P6352996275426246455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

end

end A110350.P6352996275426246455

/-! ## A110350.P6916528654806995540

`A000217(A093001(n+1))-∑[n+1]`
-/

namespace A110350.P6916528654806995540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A093001 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110350.P6916528654806995540

/-! ## A110350.P7919555945225037667

`A007401(A038722((n+1)*(n+2)))/2`
-/

namespace A110350.P7919555945225037667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007401 (A038722 ((n + 1) * (n + 2))).toNat : ℚ) / 2

end

end A110350.P7919555945225037667

/-! ## A110350.P8041452313279049130

`floor(A014132(A038722(∑[2*(n+1)]))/2)`
-/

namespace A110350.P8041452313279049130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014132 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 2⌋

end

end A110350.P8041452313279049130

/-! ## A110350.P5681762220632051589

`A179865(n+2)+A025581(A028387(n))`
-/

namespace A110350.P5681762220632051589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2) + A025581 (A028387 n).toNat

end

end A110350.P5681762220632051589

/-! ## A110350.P16049198858268646926

`A000124(A093001(n+1))-A000124(n+1)`
-/

namespace A110350.P16049198858268646926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A093001 (n + 1)).toNat - A000124 (n + 1)

end

end A110350.P16049198858268646926

/-!
# A110351: Least sum (n+1) + (n+2) + ... + (n+k) that is a multiple of the n-th triangular number, n(n+1)/2.

The programs for A110351, there is no canonical definition to state claims against.
-/

/-! ## A110351.P17156896800967785386

`A068084(n+1)-∑[n+1]`
-/

namespace A110351.P17156896800967785386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110351.P17156896800967785386

/-! ## A110351.P3494555260954320052

`(A188621(n+1)-1)*∑[n+1]`
-/

namespace A110351.P3494555260954320052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188621 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110351.P3494555260954320052

/-! ## A110351.P9541990125797589073

`C(A069752(n+1)+1, 2)-∑[n+1]`
-/

namespace A110351.P9541990125797589073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A069752 (n + 1) + 1).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110351.P9541990125797589073

/-! ## A110351.P2141136452598021128

`A068084(n+1)-1-A000096(n)`
-/

namespace A110351.P2141136452598021128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) - 1 - A000096 n

end

end A110351.P2141136452598021128

/-! ## A110351.P2391772531428124998

`A068084(n+1)+5-A167499(n)`
-/

namespace A110351.P2391772531428124998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) + 5 - A167499 n

end

end A110351.P2391772531428124998

/-! ## A110351.P16790204205603401306

`A068084(n+1)-n-A000124(n)`
-/

namespace A110351.P16790204205603401306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) - (n : ℤ) - A000124 n

end

end A110351.P16790204205603401306

/-! ## A110351.P2947773485481577979

`abs(A000217(n+1)-A068084(n+1))`
-/

namespace A110351.P2947773485481577979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A068084 (n + 1)|

end

end A110351.P2947773485481577979

/-! ## A110351.P10990702590147627214

`A068084(n+1)-(n+1)-A000217(n)`
-/

namespace A110351.P10990702590147627214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) - (n + 1 : ℤ) - A000217 n

end

end A110351.P10990702590147627214

/-! ## A110351.P12127346928432377636

`2*n+A068084(n+1)-A052905(n)`
-/

namespace A110351.P12127346928432377636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A068084 (n + 1) - A052905 n)

end

end A110351.P12127346928432377636

/-! ## A110351.P9939512810784888104

`A068084(n+1)-(2*n+1)-A161680(n)`
-/

namespace A110351.P9939512810784888104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068084 (n + 1) - (2 * n + 1 : ℤ) - A161680 n

end

end A110351.P9939512810784888104

/-! ## A110351.P11570414703487624768

`A000217(n+1)*A188621(n+1)-A000217(n+1)`
-/

namespace A110351.P11570414703487624768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A188621 (n + 1) - A000217 (n + 1)

end

end A110351.P11570414703487624768

/-! ## A110351.P15207854925764777779

`A000217(A069752(n+1))-∑[n+1]`
-/

namespace A110351.P15207854925764777779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A069752 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110351.P15207854925764777779

/-! ## A110351.P454390400808785884

`A000124(A069752(n+1))-A000124(n+1)`
-/

namespace A110351.P454390400808785884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A069752 (n + 1)).toNat - A000124 (n + 1)

end

end A110351.P454390400808785884

/-!
# A110352: A110351(n)/T(n) where T(n) is the n-th triangular number.

The programs for A110352, there is no canonical definition to state claims against.
-/

/-! ## A110352.P15582686064306170424

`2*A110351(n+1)/((n+1)*(n+2))`
-/

namespace A110352.P15582686064306170424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A110351 (n + 1) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A110352.P15582686064306170424

/-! ## A110352.P11823459583952482211

`A188621(n+1)-1`
-/

namespace A110352.P11823459583952482211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188621 (n + 1) - 1

end

end A110352.P11823459583952482211

/-! ## A110352.P17062100558454046800

`A110351(n+1)/∑[n+1]`
-/

namespace A110352.P17062100558454046800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110351 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A110352.P17062100558454046800

/-! ## A110352.P13296899861833980261

`A068084(n+1)/∑[n+1]-1`
-/

namespace A110352.P13296899861833980261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068084 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - 1

end

end A110352.P13296899861833980261

/-! ## A110352.P10281796677897964667

`A023443(A188621(n+1))`
-/

namespace A110352.P10281796677897964667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188621 (n + 1)).toNat

end

end A110352.P10281796677897964667

/-! ## A110352.P11484742407446391392

`A023444(A188621(n+1)+1)`
-/

namespace A110352.P11484742407446391392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A188621 (n + 1) + 1).toNat

end

end A110352.P11484742407446391392

/-! ## A110352.P10531082743614531565

`A023445(A188621(n+1)+2)`
-/

namespace A110352.P10531082743614531565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A188621 (n + 1) + 2).toNat

end

end A110352.P10531082743614531565

/-! ## A110352.P18322256035949207630

`A140106(2*A188621(n+1))`
-/

namespace A110352.P18322256035949207630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A188621 (n + 1)).toNat

end

end A110352.P18322256035949207630

/-! ## A110352.P15896893425961660738

`A023453(A188621(n+1)+10)`
-/

namespace A110352.P15896893425961660738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A188621 (n + 1) + 10).toNat

end

end A110352.P15896893425961660738

/-! ## A110352.P17234979496637656132

`A023443(A068084(n+1)/∑[n+1])`
-/

namespace A110352.P17234979496637656132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A068084 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A110352.P17234979496637656132

/-!
# A110353: Value of k pertaining to A110351(n). Least k such that the sum (n+1) + (n+2) + ...+(n+k) is a multiple of the n-th triangular number n(n+1)/2.

The programs for A110353, there is no canonical definition to state claims against.
-/

/-! ## A110353.P7405818623794374508

`A069752(n+1)-(n+1)`
-/

namespace A110353.P7405818623794374508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069752 (n + 1) - (n + 1 : ℤ)

end

end A110353.P7405818623794374508

/-! ## A110353.P1901130271137836393

`floor(sqrt(2*A068084(n+1))-(n+1))`
-/

namespace A110353.P1901130271137836393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * A068084 (n + 1) : ℝ) - (n + 1 : ℝ)⌋

end

end A110353.P1901130271137836393

/-! ## A110353.P8175744499187942096

`abs(A069752(n+1)+A001478(n+1))`
-/

namespace A110353.P8175744499187942096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069752 (n + 1) + A001478 (n + 1)|

end

end A110353.P8175744499187942096

/-! ## A110353.P1771799130923216288

`A000027(A069752(n+1)+A001478(n+1))`
-/

namespace A110353.P1771799130923216288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069752 (n + 1) + A001478 (n + 1)).toNat

end

end A110353.P1771799130923216288

/-! ## A110353.P15608957851190324024

`or(A069752(n+1)+A001478(n+1), A000007(n))`
-/

namespace A110353.P15608957851190324024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069752 (n + 1) + A001478 (n + 1)) (A000007 n)

end

end A110353.P15608957851190324024

/-! ## A110353.P4452558386905323871

`A000007(3*n+2)+A069752(n+1)+A001478(n+1)`
-/

namespace A110353.P4452558386905323871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 2) + (A069752 (n + 1) + A001478 (n + 1))

end

end A110353.P4452558386905323871

/-! ## A110353.P17398370023441413125

`A023443(A069752(n+1)-n)`
-/

namespace A110353.P17398370023441413125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069752 (n + 1) - (n : ℤ)).toNat

end

end A110353.P17398370023441413125

/-!
# A110355: Following array contains numbers INT[n/1], INT[INT[n/1]/2],... until a zero is obtained. Sequence contains the array by rows.

The programs for A110355, there is no canonical definition to state claims against.
-/

/-! ## A110355.P16715383774614882525

`A101436(A152046(n))+A071802(n+1)`
-/

namespace A110355.P16715383774614882525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A152046 n).toNat + A071802 (n + 1)

end

end A110355.P16715383774614882525

/-! ## A110355.P14547182987852080749

`lcm(A071802(n+1), A132068(A359497(n)))`
-/

namespace A110355.P14547182987852080749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071802 (n + 1)) (A132068 (A359497 n).toNat)

end

end A110355.P14547182987852080749

/-! ## A110355.P5580646597846467859

`A055229(A058944(n+1))*A071802(n+1)`
-/

namespace A110355.P5580646597846467859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A058944 (n + 1)).toNat * A071802 (n + 1)

end

end A110355.P5580646597846467859

/-!
# A110358: Beginning with 3, the least prime which is the product of one or more previous terms + 2.

The programs for A110358, there is no canonical definition to state claims against.
-/

/-! ## A110358.P11296989902731458331

`p?[∑[A193330(A024596(n+1))]]`
-/

namespace A110358.P11296989902731458331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A024596 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110358.P11296989902731458331

/-! ## A110358.P8853448738405789760

`p?[∑[A094290(A113590(n+1))]]`
-/

namespace A110358.P8853448738405789760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (A113590 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110358.P8853448738405789760

/-! ## A110358.P854669252470708492

`A000040(∑[A269972(∑[n+2]-1)])`
-/

namespace A110358.P854669252470708492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269972 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110358.P854669252470708492

/-! ## A110358.P4152969735927773460

`p?[∑[gcd(10, A263709(n+1))]]`
-/

namespace A110358.P4152969735927773460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A263709 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A110358.P4152969735927773460

/-! ## A110358.P10874716697555963105

`A065091(ceil(log2(A056683(n+1))))`
-/

namespace A110358.P10874716697555963105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 ⌈Real.logb 2 (A056683 (n + 1) : ℝ)⌉.toNat

end

end A110358.P10874716697555963105

/-!
# A110359: a(n) = n+1 if n+1 is a prime else a(n) = 2n+1 if 2n+1 is a prime else a(n) = 2*(2n+1) +1 =g(n) if this number is prime else the next candidate is 2*g(n) + 1 etc.

The programs for A110359, there is no canonical definition to state claims against.
-/

/-! ## A110359.P7456271798741478757

`A006530(A052333(n+1)+A010051(n+2))`
-/

namespace A110359.P7456271798741478757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052333 (n + 1) + A010051 (n + 2)).toNat

end

end A110359.P7456271798741478757

/-! ## A110359.P9096632575785821516

`A006530(A052333(n+1)+Δ[A000720(n+1)])`
-/

namespace A110359.P9096632575785821516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052333 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A110359.P9096632575785821516

/-! ## A110359.P5616582136308965805

`A006530(A038699(2*(n+2))+A010051(n+2))`
-/

namespace A110359.P5616582136308965805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038699 (2 * (n + 2)) + A010051 (n + 2)).toNat

end

end A110359.P5616582136308965805

/-! ## A110359.P9297822832894246096

`A175427(A034694(n+1)+1)`
-/

namespace A110359.P9297822832894246096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A034694 (n + 1) + 1).toNat

end

end A110359.P9297822832894246096

/-! ## A110359.P16221413182241477882

`A048105(A001333(n))+A034694(n+1)`
-/

namespace A110359.P16221413182241477882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A001333 n).toNat + A034694 (n + 1)

end

end A110359.P16221413182241477882

/-!
# A110360: Integers with mutual residues of 8.

The programs for A110360, the canonical program `A110360.P14410281261716493034` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110360 has offset 1).

The definition of A110360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110360.P14410281261716493034

`a(n-1)*(a(n-1)-8)+8` with `a(0)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110360

/-- `a(n-1)*(a(n-1)-8)+8` -/
def P14410281261716493034.Spec : Prop :=
  ∀ n, P14410281261716493034.a n = A110360 (n + 1)

theorem P14410281261716493034.correct : P14410281261716493034.Spec := by
  intro n
  simp only [A110360, Nat.add_sub_cancel]

end A110360

/-! ## A110360.P9336810932327318884

`(4-a(n-1))²-8` with `a(0)=9`
-/

namespace A110360.P9336810932327318884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  (4 - a (n - 1)) ^ 2 - 8

end

end A110360.P9336810932327318884

namespace A110360

/-- `(4-a(n-1))²-8` -/
def P9336810932327318884.Spec : Prop :=
  ∀ n, P9336810932327318884.a n = A110360 (n + 1)

theorem P9336810932327318884.correct : P9336810932327318884.Spec := by
  intro n
  simp only [A110360, Nat.add_sub_cancel, A110360.P9336810932327318884.a, A110360.P14410281261716493034.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110360

/-! ## A110360.P6805202756813825671

`8-(8-a(n-1))*a(n-1)` with `a(0)=9`
-/

namespace A110360.P6805202756813825671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  8 - (8 - a (n - 1)) * a (n - 1)

end

end A110360.P6805202756813825671

namespace A110360

/-- `8-(8-a(n-1))*a(n-1)` -/
def P6805202756813825671.Spec : Prop :=
  ∀ n, P6805202756813825671.a n = A110360 (n + 1)

theorem P6805202756813825671.correct : P6805202756813825671.Spec := by
  intro n
  simp only [A110360, Nat.add_sub_cancel, A110360.P6805202756813825671.a, A110360.P14410281261716493034.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110360

/-!
# A110361: A triangle of coefficients based on A000931 and A000045: a(n) = a(n - 2) + a(n - 3); t(n,m) := a(n - m + 1)*a(m + 1)*Fibonacci[(n - m + 1)]*Fibonacci[(m + 1)].

The programs for A110361, there is no canonical definition to state claims against.
-/

/-! ## A110361.P9660833435236183759

`A058071(n)*A110102(n+1)`
-/

namespace A110361.P9660833435236183759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n * A110102 (n + 1)

end

end A110361.P9660833435236183759

/-! ## A110361.P3339601903520305148

`A110102(n+1)*A246028(A089633(n))`
-/

namespace A110361.P3339601903520305148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110102 (n + 1) * A246028 (A089633 n).toNat

end

end A110361.P3339601903520305148

/-! ## A110361.P10598240410427569066

`∏{e}[A036561(n), A018052(#)]*A058071(n)`
-/

namespace A110361.P10598240410427569066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018052 (Nat.factorization (f1 n).natAbs p)) * A058071 n

end

end A110361.P10598240410427569066

/-! ## A110361.P8639048377224575333

`∏{e}[A036561(n), A018124(#)]*A058071(n)`
-/

namespace A110361.P8639048377224575333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018124 (Nat.factorization (f1 n).natAbs p)) * A058071 n

end

end A110361.P8639048377224575333

/-! ## A110361.P13980096455477505723

`∏{e}[A175840(n), A018052(#)]*A058071(n)`
-/

namespace A110361.P13980096455477505723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018052 (Nat.factorization (f1 n).natAbs p)) * A058071 n

end

end A110361.P13980096455477505723

/-! ## A110361.P4486066185791280231

`A098356(lt[0, A098356(n)])*A110102(n+1)`
-/

namespace A110361.P4486066185791280231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A110102 (n + 1)

end

end A110361.P4486066185791280231

/-! ## A110361.P12833551781800046915

`A110102(n+1)/A007318(n)*A109906(n)`
-/

namespace A110361.P12833551781800046915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110102 (n + 1) : ℚ) / (A007318 n : ℚ) * (A109906 n : ℚ)

end

end A110361.P12833551781800046915

/-! ## A110361.P13937129350241412253

`abs(A110102(n+1)/A108086(n)*A109906(n))`
-/

namespace A110361.P13937129350241412253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110102 (n + 1) : ℚ) / (A108086 n : ℚ) * (A109906 n : ℚ)|

end

end A110361.P13937129350241412253

/-! ## A110361.P2291803717030850119

`(A108035(n+1)-A039913(n))*A110102(n+1)`
-/

namespace A110361.P2291803717030850119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108035 (n + 1) - A039913 n) * A110102 (n + 1)

end

end A110361.P2291803717030850119

/-! ## A110361.P10699057572730555691

`(A131410(n+1)-A098356(n))*A110102(n+1)`
-/

namespace A110361.P10699057572730555691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131410 (n + 1) - A098356 n) * A110102 (n + 1)

end

end A110361.P10699057572730555691

/-!
# A110363: Beginning with 2, prime numbers such that successive differences are Fibonacci numbers.

The programs for A110363, there is no canonical definition to state claims against.
-/

/-! ## A110363.P1226368074927583738

`A155833(A101128(n+2))`
-/

namespace A110363.P1226368074927583738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155833 (A101128 (n + 2)).toNat

end

end A110363.P1226368074927583738

/-! ## A110363.P10521499770861507146

`p?[∑[A000045(A248809(n))]]`
-/

namespace A110363.P10521499770861507146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A248809 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110363.P10521499770861507146

/-! ## A110363.P2651879385350112864

`p?[∑[A000045(A059380(n+2))]]`
-/

namespace A110363.P2651879385350112864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A059380 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110363.P2651879385350112864

/-!
# A110364: Beginning with 2, prime numbers such that the successive differences are distinct Fibonacci numbers.

The programs for A110364, there is no canonical definition to state claims against.
-/

/-! ## A110364.P17550185137630152741

`p?[∑[A053602(∑[round(sqrt(2*n))!])]]`
-/

namespace A110364.P17550185137630152741
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110364.P17550185137630152741

/-! ## A110364.P5798256146330725688

`p?[∑[A053602(A051683(n+1))]]`
-/

namespace A110364.P5798256146330725688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A051683 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110364.P5798256146330725688

/-! ## A110364.P14700452606717982343

`p?[∑[A047930(A127602(n+1))]]`
-/

namespace A110364.P14700452606717982343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (A127602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110364.P14700452606717982343

/-!
# A110365: a(1)=2, a(n+1) = a(n)*A010888(a(n)).

The programs for A110365, the canonical program `A110365.P2178869335422946688` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110365 has offset 1).

The definition of A110365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110365.P2178869335422946688

`28*a(n-2)` with `a(0)=2, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110365

/-- `28*a(n-2)` -/
def P2178869335422946688.Spec : Prop :=
  ∀ n, (P2178869335422946688.a n : ℤ) = A110365 (n + 1)

theorem P2178869335422946688.correct : P2178869335422946688.Spec := by
  intro n
  simp only [A110365, Nat.add_sub_cancel]

end A110365

/-! ## A110365.P328155144145793592

`∏[dr(a(n-1)²)]` with `a(0)=2, a(1)=2`
-/

namespace A110365.P328155144145793592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P328155144145793592

namespace A110365

/-- `∏[dr(a(n-1)²)]` -/
def P328155144145793592.Spec : Prop :=
  ∀ n, (P328155144145793592.a n : ℤ) = A110365 (n + 1)

end A110365

/-! ## A110365.P7317039130735813495

`∏[11-a(n-1)]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A110365.P7317039130735813495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P7317039130735813495

namespace A110365

/-- `∏[11-a(n-1)]` -/
def P7317039130735813495.Spec : Prop :=
  ∀ n, P7317039130735813495.a n = A110365 (n + 1)

end A110365

/-! ## A110365.P462929048254459800

`∏[dr(A162251(n+1))]`
-/

namespace A110365.P462929048254459800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A162251 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P462929048254459800

namespace A110365

/-- `∏[dr(A162251(n+1))]` -/
def P462929048254459800.Spec : Prop :=
  ∀ n, (P462929048254459800.a n : ℤ) = A110365 (n + 1)

end A110365

/-! ## A110365.P5796922998884052293

`∏[dr(A122391(n+1)+1)]`
-/

namespace A110365.P5796922998884052293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A122391 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P5796922998884052293

namespace A110365

/-- `∏[dr(A122391(n+1)+1)]` -/
def P5796922998884052293.Spec : Prop :=
  ∀ n, (P5796922998884052293.a n : ℤ) = A110365 (n + 1)

end A110365

/-! ## A110365.P16889552926396505886

`∏[dr(A057147(a(n-1)))]` with `a(0)=2, a(1)=2`
-/

namespace A110365.P16889552926396505886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (A057147 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P16889552926396505886

namespace A110365

/-- `∏[dr(A057147(a(n-1)))]` -/
def P16889552926396505886.Spec : Prop :=
  ∀ n, (P16889552926396505886.a n : ℤ) = A110365 (n + 1)

end A110365

/-! ## A110365.P6450812670278697161

`∏[A247832(A278219(A071044(n)))]`
-/

namespace A110365.P6450812670278697161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A278219 (A071044 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110365.P6450812670278697161

namespace A110365

/-- `∏[A247832(A278219(A071044(n)))]` -/
def P6450812670278697161.Spec : Prop :=
  ∀ n, P6450812670278697161.a n = A110365 (n + 1)

end A110365

/-!
# A110368: Integers with mutual residues of 9.

The programs for A110368, the canonical program `A110368.P10548928436869669755` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110368 has offset 1).

The definition of A110368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110368.P10548928436869669755

`a(n-1)*(a(n-1)-9)+9` with `a(0)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110368

/-- `a(n-1)*(a(n-1)-9)+9` -/
def P10548928436869669755.Spec : Prop :=
  ∀ n, P10548928436869669755.a n = A110368 (n + 1)

theorem P10548928436869669755.correct : P10548928436869669755.Spec := by
  intro n
  simp only [A110368, Nat.add_sub_cancel]

end A110368

/-! ## A110368.P17802237084262738476

`9-(9-a(n-1))*a(n-1)` with `a(0)=10`
-/

namespace A110368.P17802237084262738476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  9 - (9 - a (n - 1)) * a (n - 1)

end

end A110368.P17802237084262738476

namespace A110368

/-- `9-(9-a(n-1))*a(n-1)` -/
def P17802237084262738476.Spec : Prop :=
  ∀ n, P17802237084262738476.a n = A110368 (n + 1)

theorem P17802237084262738476.correct : P17802237084262738476.Spec := by
  intro n
  simp only [A110368, Nat.add_sub_cancel, A110368.P17802237084262738476.a, A110368.P10548928436869669755.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110368

/-!
# A110369: (Digit 1 repeated n times) + n.

The programs for A110369, the canonical program `A110369.P12768015722278915803` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110369 has offset 1).

The definition of A110369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110369.P12768015722278915803

`(10^(n+1)-1)/9+n+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110369

/-- `(10^(n+1)-1)/9+n+1` -/
def P12768015722278915803.Spec : Prop :=
  ∀ n, P12768015722278915803.a n = (A110369 (n + 1) : ℚ)

end A110369

/-! ## A110369.P16612241195958424239

`abs(∑[10*a(n-1)-9])` with `a(0)=2`
-/

namespace A110369.P16612241195958424239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A110369.P16612241195958424239

namespace A110369

/-- `abs(∑[10*a(n-1)-9])` -/
def P16612241195958424239.Spec : Prop :=
  ∀ n, P16612241195958424239.a n = A110369 (n + 1)

end A110369

/-! ## A110369.P16246607544362112421

`floor(∑[10*a(n-1)-9])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A110369.P16246607544362112421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110369.P16246607544362112421

namespace A110369

/-- `floor(∑[10*a(n-1)-9])` -/
def P16246607544362112421.Spec : Prop :=
  ∀ n, P16246607544362112421.a n = A110369 (n + 1)

end A110369

/-! ## A110369.P8731978060648774800

`Δ[A014824(n)+∑[n]]`
-/

namespace A110369.P8731978060648774800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110369.P8731978060648774800

namespace A110369

/-- `Δ[A014824(n)+∑[n]]` -/
def P8731978060648774800.Spec : Prop :=
  ∀ n, P8731978060648774800.a n = A110369 (n + 1)

end A110369

/-!
# A110370: Floor[ (digits n times n) divided by digits (n times 1)].

The programs for A110370, there is no canonical definition to state claims against.
-/

/-! ## A110370.P11864516743168558724

`record[∑[A014992(A309863(n))]]`
-/

namespace A110370.P11864516743168558724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014992 (A309863 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110370.P11864516743168558724

/-!
# A110371: a(n)=[(n+1)(n+2)(n+3)...(2n)]/(1+2+3+...+n).

The programs for A110371, there is no canonical definition to state claims against.
-/

/-! ## A110371.P2376269316518437941

`((2*n)²+2*n)*a(n-1)/(n+2)` with `a(0)=2`
-/

namespace A110371.P2376269316518437941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((2 * n) ^ 2 + 2 * n : ℚ) * (a (n - 1) / (n + 2 : ℚ))

end

end A110371.P2376269316518437941

/-! ## A110371.P355182546871855907

`(2*n+1)*2*n*a(n-1)/(n+2)` with `a(0)=2`
-/

namespace A110371.P355182546871855907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 1 : ℚ) * ((2 * n : ℚ) * (a (n - 1) / (n + 2 : ℚ)))

end

end A110371.P355182546871855907

/-! ## A110371.P13754498037244783592

`2*A065866(n)`
-/

namespace A110371.P13754498037244783592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065866 n

end

end A110371.P13754498037244783592

/-! ## A110371.P17720653449021559413

`2*A000108(n+1)*n!`
-/

namespace A110371.P17720653449021559413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 (n + 1) * (Nat.factorial n : ℤ)

end

end A110371.P17720653449021559413

/-! ## A110371.P2653088159049641419

`n!*A089408(2*(n+2))`
-/

namespace A110371.P2653088159049641419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A089408 (2 * (n + 2))

end

end A110371.P2653088159049641419

/-! ## A110371.P5212926404945428985

`(∑[A000245(n)]+1)*2*n!`
-/

namespace A110371.P5212926404945428985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (2 * Nat.factorial n : ℤ)

end

end A110371.P5212926404945428985

/-! ## A110371.P4152425976654170438

`n*a(n-1)*ratio[A000108(n)]` with `a(0)=2`
-/

namespace A110371.P4152425976654170438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℚ) * (a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A110371.P4152425976654170438

/-! ## A110371.P8426573970540884541

`∏[C(n, a(n-1))]*A097331(2*n+3)` with `a(0)=2, a(1)=1`
-/

namespace A110371.P8426573970540884541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A097331 (2 * n + 3)

end

end A110371.P8426573970540884541

/-! ## A110371.P14536917486222916952

`A000142(n)*A068875(n+1)`
-/

namespace A110371.P14536917486222916952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A068875 (n + 1)

end

end A110371.P14536917486222916952

/-!
# A110372: a(n) = F(n+1)!/F(n)! where F(n) = n-th Fibonacci number.

The programs for A110372, there is no canonical definition to state claims against.
-/

/-! ## A110372.P542189925783354284

`record[ratio[A360208(n)]]`
-/

namespace A110372.P542189925783354284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360208 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110372.P542189925783354284

/-! ## A110372.P6030489813904194640

`A360208(A134869(n+2))`
-/

namespace A110372.P6030489813904194640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360208 (A134869 (n + 2)).toNat

end

end A110372.P6030489813904194640

/-! ## A110372.P2826025158927809518

`A360208(A254835(n+2))`
-/

namespace A110372.P2826025158927809518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360208 (A254835 (n + 2)).toNat

end

end A110372.P2826025158927809518

/-! ## A110372.P3997378659414867609

`ratio[A060001(n+1)]`
-/

namespace A110372.P3997378659414867609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060001 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A110372.P3997378659414867609

/-! ## A110372.P16394264469482625812

`ratio[-A005181(n)!]`
-/

namespace A110372.P16394264469482625812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (A005181 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A110372.P16394264469482625812

/-!
# A110373: a(n) = Sum_{prime p <= n} n!/p.

The programs for A110373, there is no canonical definition to state claims against.
-/

/-! ## A110373.P14052565289085105544

`A049614(n+2)*A106830(n+2)`
-/

namespace A110373.P14052565289085105544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (n + 2) * A106830 (n + 2)

end

end A110373.P14052565289085105544

/-! ## A110373.P8766206960421873034

`∑{p}[(n+2)!, (n+2)!/#]`
-/

namespace A110373.P8766206960421873034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorial (n + 2) : ℚ) / (p : ℚ)

end

end A110373.P8766206960421873034

/-! ## A110373.P3101960406058141868

`∑{p}[A000142(n+2), A000142(n+2)/#]`
-/

namespace A110373.P3101960406058141868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000142 (n + 2) : ℚ) / (p : ℚ)

end

end A110373.P3101960406058141868

/-! ## A110373.P9501717675450693362

`∑{p}[A154657(n+2), A062919(n+2)/#]`
-/

namespace A110373.P9501717675450693362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154657 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A062919 (n + 2) : ℚ) / (p : ℚ)

end

end A110373.P9501717675450693362

/-!
# A110374: a(n) = Sum_{composite c <= n} n!/c.

The programs for A110374, there is no canonical definition to state claims against.
-/

/-! ## A110374.P910047217151437947

`A024187(n+1)-A249818(A024188(n+2))`
-/

namespace A110374.P910047217151437947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024187 (n + 1) - A249818 (A024188 (n + 2)).toNat

end

end A110374.P910047217151437947

/-!
# A110376: a(n) = Sum_{r < n, gcd(r,n)=1} n!/r.

The programs for A110376, there is no canonical definition to state claims against.
-/

/-! ## A110376.P8264487652488885288

`A056855(n+1)*A066570(n+1)`
-/

namespace A110376.P8264487652488885288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056855 (n + 1) * A066570 (n + 1)

end

end A110376.P8264487652488885288

/-! ## A110376.P8293646858414623198

`(n+1)!/A001783(n+1)*A056855(n+1)`
-/

namespace A110376.P8293646858414623198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (A056855 (n + 1) : ℚ)

end

end A110376.P8293646858414623198

/-! ## A110376.P5196193731658784283

`A056855(n+1)/A001783(n+1)*record[A094587(n)]`
-/

namespace A110376.P5196193731658784283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A110376.P5196193731658784283

/-! ## A110376.P9825085025534750432

`A056855(n+1)/A001783(n+1)*record[A098361(n)]`
-/

namespace A110376.P9825085025534750432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A110376.P9825085025534750432

/-! ## A110376.P865033175873625923

`A000142(n+1)/A001783(n+1)*A056855(n+1)`
-/

namespace A110376.P865033175873625923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (A056855 (n + 1) : ℚ)

end

end A110376.P865033175873625923

/-! ## A110376.P12864911837713272181

`A047920(∑[n+1])/A001783(n+1)*A056855(n+1)`
-/

namespace A110376.P12864911837713272181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047920 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A001783 (n + 1) : ℚ) * (A056855 (n + 1) : ℚ)

end

end A110376.P12864911837713272181

/-! ## A110376.P4008902725706626390

`A056855(n+1)/A001783(n+1)*record[A216919(n+1)]`
-/

namespace A110376.P4008902725706626390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A110376.P4008902725706626390

/-!
# A110377: a(n) = Sum_{r < n, gcd(r,n)=1} n!/r!.

The programs for A110377, there is no canonical definition to state claims against.
-/

/-! ## A110377.P11276857320518517397

`(n+1)*A275511(A053496(n))`
-/

namespace A110377.P11276857320518517397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275511 (A053496 n).toNat

end

end A110377.P11276857320518517397

/-! ## A110377.P8714144495093694389

`(n*A344646(A202087(n))+1)*(n+1)`
-/

namespace A110377.P8714144495093694389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A344646 (A202087 n).toNat + 1) * (n + 1 : ℤ)

end

end A110377.P8714144495093694389

/-!
# A110378: a(n) = Sum_{prime p <= n} n!/p!.

The programs for A110378, there is no canonical definition to state claims against.
-/

/-! ## A110378.P12607224071521455740

`C(2, A000005(n+2))+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A110378.P12607224071521455740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (A000005 (n + 2)).toNat + (n + 2) * a (n - 1)

end

end A110378.P12607224071521455740

/-! ## A110378.P4979248232041118741

`C(A000010(n+2), n+1)+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A110378.P4979248232041118741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A000010 (n + 2)).toNat (n + 1) + (n + 2) * a (n - 1)

end

end A110378.P4979248232041118741

/-! ## A110378.P13580046631997071858

`C(A006530(n+2), n+2)+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A110378.P13580046631997071858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A006530 (n + 2)).toNat (n + 2) + (n + 2) * a (n - 1)

end

end A110378.P13580046631997071858

/-! ## A110378.P2970618908776693525

`C(A014963(n+2), n+2)+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A110378.P2970618908776693525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A014963 (n + 2)).toNat (n + 2) + (n + 2) * a (n - 1)

end

end A110378.P2970618908776693525

/-! ## A110378.P6468748387178700855

`C(n+3, A000203(n+2))+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A110378.P6468748387178700855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 3) (A000203 (n + 2)).toNat + (n + 2) * a (n - 1)

end

end A110378.P6468748387178700855

/-!
# A110379: a(n) = Sum_{composite c <= n} n!/c!.

The programs for A110379, there is no canonical definition to state claims against.
-/

/-! ## A110379.P5503168407100046802

`A109613((n+4)*a(n-1))` with `a(0)=1`
-/

namespace A110379.P5503168407100046802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109613 ((n + 4 : ℤ) * a (n - 1)).toNat

end

end A110379.P5503168407100046802

/-!
# A110380: a(n) = min{p + q + r + ...} where p,q,r,... are distinct unary numbers - containing only ones, i.e., of the form (10^k - 1)/9 - formed by using a total of n ones.

The programs for A110380, the canonical program `A110380.P5136329825465001748` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110380 has offset 1).

The definition of A110380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110380.P12140813930283518913

`∑[10^(C(comp[∑[n]]-n, 2)-(n+1))]`
-/

namespace A110380.P12140813930283518913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P12140813930283518913

namespace A110380

/-- `∑[10^(C(comp[∑[n]]-n, 2)-(n+1))]` -/
def P12140813930283518913.Spec : Prop :=
  ∀ n, P12140813930283518913.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P3869661759764694748

`∑[10^A025581(n)]`
-/

namespace A110380.P3869661759764694748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A025581 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P3869661759764694748

namespace A110380

/-- `∑[10^A025581(n)]` -/
def P3869661759764694748.Spec : Prop :=
  ∀ n, P3869661759764694748.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P1730016307355135858

`∑[10^(A004736(n+1)-1)]`
-/

namespace A110380.P1730016307355135858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P1730016307355135858

namespace A110380

/-- `∑[10^(A004736(n+1)-1)]` -/
def P1730016307355135858.Spec : Prop :=
  ∀ n, P1730016307355135858.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P3982004355805650954

`∑[10^A057554(2*(n+1))]`
-/

namespace A110380.P3982004355805650954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A057554 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P3982004355805650954

namespace A110380

/-- `∑[10^A057554(2*(n+1))]` -/
def P3982004355805650954.Spec : Prop :=
  ∀ n, P3982004355805650954.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P18325521473445218527

`∑[10^∑[A066182(n+1)-(n+1)]]`
-/

namespace A110380.P18325521473445218527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n + 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P18325521473445218527

namespace A110380

/-- `∑[10^∑[A066182(n+1)-(n+1)]]` -/
def P18325521473445218527.Spec : Prop :=
  ∀ n, P18325521473445218527.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P5136329825465001748

`∑[A011557(A025581(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110380

/-- `∑[A011557(A025581(n))]` -/
def P5136329825465001748.Spec : Prop :=
  ∀ n, P5136329825465001748.a n = A110380 (n + 1)

theorem P5136329825465001748.correct : P5136329825465001748.Spec := by
  intro n
  simp only [A110380, Nat.add_sub_cancel]

end A110380

/-! ## A110380.P473869684740105928

`∑[10^A002262(A061579(n))]`
-/

namespace A110380.P473869684740105928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A002262 (A061579 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P473869684740105928

namespace A110380

/-- `∑[10^A002262(A061579(n))]` -/
def P473869684740105928.Spec : Prop :=
  ∀ n, P473869684740105928.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P14771227454521280258

`∑[A011557(A004736(n+1)-1)]`
-/

namespace A110380.P14771227454521280258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A004736 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P14771227454521280258

namespace A110380

/-- `∑[A011557(A004736(n+1)-1)]` -/
def P14771227454521280258.Spec : Prop :=
  ∀ n, P14771227454521280258.a n = A110380 (n + 1)

end A110380

/-! ## A110380.P16383602791828779233

`∑[10^(A004736(n+2)%A004736(n+1))]`
-/

namespace A110380.P16383602791828779233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod (A004736 (n + 2)) (A004736 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P16383602791828779233

namespace A110380

/-- `∑[10^(A004736(n+2)%A004736(n+1))]` -/
def P16383602791828779233.Spec : Prop :=
  ∀ n, P16383602791828779233.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P7095405085020212771

`∑[A038303(n)/A007318(n)]`
-/

namespace A110380.P7095405085020212771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038303 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P7095405085020212771

namespace A110380

/-- `∑[A038303(n)/A007318(n)]` -/
def P7095405085020212771.Spec : Prop :=
  ∀ n, P7095405085020212771.a n = (A110380 (n + 1) : ℚ)

end A110380

/-! ## A110380.P13996270710991301538

`∑[A014417(A139764(A035513(n+1)))]`
-/

namespace A110380.P13996270710991301538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A139764 (A035513 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P13996270710991301538

namespace A110380

/-- `∑[A014417(A139764(A035513(n+1)))]` -/
def P13996270710991301538.Spec : Prop :=
  ∀ n, P13996270710991301538.a n = A110380 (n + 1)

end A110380

/-! ## A110380.P10707548620275391117

`∑[A007088(A341509(A023758(n+2)))]`
-/

namespace A110380.P10707548620275391117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A341509 (A023758 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P10707548620275391117

namespace A110380

/-- `∑[A007088(A341509(A023758(n+2)))]` -/
def P10707548620275391117.Spec : Prop :=
  ∀ n, P10707548620275391117.a n = A110380 (n + 1)

end A110380

/-! ## A110380.P18438940263986990670

`∑[A007088(A341509(A175332(n+1)))]`
-/

namespace A110380.P18438940263986990670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A341509 (A175332 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P18438940263986990670

namespace A110380

/-- `∑[A007088(A341509(A175332(n+1)))]` -/
def P18438940263986990670.Spec : Prop :=
  ∀ n, P18438940263986990670.a n = A110380 (n + 1)

end A110380

/-! ## A110380.P2241236985860056318

`∑[gcd(10^n, A108779(n+1))]`
-/

namespace A110380.P2241236985860056318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 ^ n : ℤ) (A108779 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P2241236985860056318

namespace A110380

/-- `∑[gcd(10^n, A108779(n+1))]` -/
def P2241236985860056318.Spec : Prop :=
  ∀ n, (P2241236985860056318.a n : ℤ) = A110380 (n + 1)

end A110380

/-!
# A110381: a(n) = corresponding product of parts in A110380.

The programs for A110381, there is no canonical definition to state claims against.
-/

/-! ## A110381.P17580518700540296290

`A136400(2*n+3)*A136400(A004096(n+3))`
-/

namespace A110381.P17580518700540296290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (2 * n + 3) * A136400 (A004096 (n + 3)).toNat

end

end A110381.P17580518700540296290

/-! ## A110381.P13767214049889017490

`A136400(2*n+3)*A136400(A080567(n+3))`
-/

namespace A110381.P13767214049889017490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (2 * n + 3) * A136400 (A080567 (n + 3)).toNat

end

end A110381.P13767214049889017490

/-!
# A110382: 

The programs for A110382, there is no canonical definition to state claims against.
-/

/-! ## A110382.P18358411061712295541

`a(floor((n+1)/2)-1)+A007088(n+1)` with `a(0)=1`
-/

namespace A110382.P18358411061712295541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + A007088 (n + 1)

end

end A110382.P18358411061712295541

/-! ## A110382.P6591527354739509776

`10*a(floor((n+1)/2)-1)+A000120(n+1)` with `a(0)=1`
-/

namespace A110382.P6591527354739509776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + A000120 (n + 1)

end

end A110382.P6591527354739509776

/-! ## A110382.P6224307061911607147

`(10*A007088(n+1)-A000120(n+1))/9`
-/

namespace A110382.P6224307061911607147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A007088 (n + 1) - A000120 (n + 1) : ℚ) / 9

end

end A110382.P6224307061911607147

/-!
# A110383: Integers with mutual residues of 10.

The programs for A110383, the canonical program `A110383.P6033348431362093436` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110383 has offset 1).

The definition of A110383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110383.P6033348431362093436

`a(n-1)*(a(n-1)-10)+10` with `a(0)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110383

/-- `a(n-1)*(a(n-1)-10)+10` -/
def P6033348431362093436.Spec : Prop :=
  ∀ n, P6033348431362093436.a n = A110383 (n + 1)

theorem P6033348431362093436.correct : P6033348431362093436.Spec := by
  intro n
  simp only [A110383, Nat.add_sub_cancel]

end A110383

/-! ## A110383.P15114523207632330334

`(5-a(n-1))²-15` with `a(0)=11`
-/

namespace A110383.P15114523207632330334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  (5 - a (n - 1)) ^ 2 - 15

end

end A110383.P15114523207632330334

namespace A110383

/-- `(5-a(n-1))²-15` -/
def P15114523207632330334.Spec : Prop :=
  ∀ n, P15114523207632330334.a n = A110383 (n + 1)

theorem P15114523207632330334.correct : P15114523207632330334.Spec := by
  intro n
  simp only [A110383, Nat.add_sub_cancel, A110383.P15114523207632330334.a, A110383.P6033348431362093436.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110383

/-!
# A110384: a(1) = 1; a(n+1) = a(n)*(a(n) + n).

The programs for A110384, the canonical program `A110384.P17260831095699422876` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110384 has offset 1).

The definition of A110384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110384.P17260831095699422876

`a(n-1)*(a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110384

/-- `a(n-1)*(a(n-1)+n)` -/
def P17260831095699422876.Spec : Prop :=
  ∀ n, (P17260831095699422876.a n : ℤ) = A110384 (n + 1)

theorem P17260831095699422876.correct : P17260831095699422876.Spec := by
  intro n
  simp only [A110384, Nat.add_sub_cancel]

end A110384

/-! ## A110384.P11317932981535085605

`(n-floor(-a(n-1)))*a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A110384.P11317932981535085605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (-a (n - 1))) * a (n - 1)

end

end A110384.P11317932981535085605

namespace A110384

/-- `(n-floor(-a(n-1)))*a(n-1)` -/
def P11317932981535085605.Spec : Prop :=
  ∀ n, P11317932981535085605.a n = A110384 (n + 1)

end A110384

/-! ## A110384.P3027486790325831683

`(n-ceil(-a(n-1)))*a(n-1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A110384.P3027486790325831683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (-a (n - 1))) * a (n - 1)

end

end A110384.P3027486790325831683

namespace A110384

/-- `(n-ceil(-a(n-1)))*a(n-1)` -/
def P3027486790325831683.Spec : Prop :=
  ∀ n, P3027486790325831683.a n = A110384 (n + 1)

end A110384

/-! ## A110384.P13262681991682154278

`abs(xor(-n, a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A110384.P13262681991682154278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (-(n : ℤ)) (a (n - 1))| * a (n - 1)

end

end A110384.P13262681991682154278

namespace A110384

/-- `abs(xor(-n, a(n-1)))*a(n-1)` -/
def P13262681991682154278.Spec : Prop :=
  ∀ n, P13262681991682154278.a n = A110384 (n + 1)

end A110384

/-! ## A110384.P11512697566996806130

`-xor(-n, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A110384.P11512697566996806130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.xor (-(n : ℤ)) (a (n - 1)) * a (n - 1))

end

end A110384.P11512697566996806130

namespace A110384

/-- `-xor(-n, a(n-1))*a(n-1)` -/
def P11512697566996806130.Spec : Prop :=
  ∀ n, P11512697566996806130.a n = A110384 (n + 1)

end A110384

/-!
# A110385: a(1) = 3; a(n+1) = (a(n) + n)*(a(n) - n).

The programs for A110385, there is no canonical definition to state claims against.
-/

/-! ## A110385.P18400825346027586126

`a(n-1)²-n²` with `a(0)=3`
-/

namespace A110385.P18400825346027586126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 - (n ^ 2 : ℤ)

end

end A110385.P18400825346027586126

/-! ## A110385.P7680331745733355849

`(a(n-1)+n)*(a(n-1)-n)` with `a(0)=3`
-/

namespace A110385.P7680331745733355849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + (n : ℤ)) * (a (n - 1) - (n : ℤ))

end

end A110385.P7680331745733355849

/-! ## A110385.P7500745018486936935

`a(n-1)*a(n-1)-n*n` with `a(0)=3`
-/

namespace A110385.P7500745018486936935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * a (n - 1) - (n * n : ℤ)

end

end A110385.P7500745018486936935

/-!
# A110386: a(1) = 1, a(2) = a(1) + 1, a(3) = a(2)^2 + a(2) + 1; a(n + 1) = a(n)^n + a(n)^(n-1) + ... + a(n)^2 + a(n) + 1 = {a(n)^(n + 1)-1}/{a(n) - 1}.

The programs for A110386, there is no canonical definition to state claims against.
-/

/-! ## A110386.P16018625196205438765

`(1-a(n-1)^(n+1))/(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A110386.P16018625196205438765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 - a (n - 1) ^ (n + 1)) / (1 - a (n - 1))

end

end A110386.P16018625196205438765

/-!
# A110387: a(1) = 1, a(2) = a(1) + 1, a(3) = a(2)^2 + a(1) + 1; a(n+1) = a(n)^n + a(n-1)^(n-1) + ... + a(2)^2 + a(1) + 1.

The programs for A110387, the canonical program `A110387.P9996695591141999248` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110387 has offset 1).

The definition of A110387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110387.P9996695591141999248

`a(n-1)+a(n-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110387

/-- `a(n-1)+a(n-1)^n` -/
def P9996695591141999248.Spec : Prop :=
  ∀ n, (P9996695591141999248.a n : ℤ) = A110387 (n + 1)

theorem P9996695591141999248.correct : P9996695591141999248.Spec := by
  intro n
  simp only [A110387, Nat.add_sub_cancel]

end A110387

/-!
# A110388: a(n) = F(n)*F(n+1) mod 9, where F(n) = n-th Fibonacci number.

The programs for A110388, the canonical program `A110388.P11303662736327610985` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110388 has offset 1).

The definition of A110388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110388.P11303662736327610985

`A001654(n+1)%9`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110388

/-- `A001654(n+1)%9` -/
def P11303662736327610985.Spec : Prop :=
  ∀ n, P11303662736327610985.a n = A110388 (n + 1)

theorem P11303662736327610985.correct : P11303662736327610985.Spec := by
  intro n
  simp only [A110388, Nat.add_sub_cancel]

end A110388

/-!
# A110389: Integers with mutual residues -1.

The programs for A110389, the canonical program `A110389.P2560207981094747909` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110389 has offset 1).

The definition of A110389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110389.P2560207981094747909

`a(n-1)²+a(n-1)-1` with `a(0)=2, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110389

/-- `a(n-1)²+a(n-1)-1` -/
def P2560207981094747909.Spec : Prop :=
  ∀ n, P2560207981094747909.a n = A110389 (n + 1)

theorem P2560207981094747909.correct : P2560207981094747909.Spec := by
  intro n
  simp only [A110389, Nat.add_sub_cancel]

end A110389

/-! ## A110389.P5527351998640505862

`a(n-1)-(1-a(n-1)²)` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A110389.P5527351998640505862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  a (n - 1) - (1 - a (n - 1) ^ 2)

end

end A110389.P5527351998640505862

namespace A110389

/-- `a(n-1)-(1-a(n-1)²)` -/
def P5527351998640505862.Spec : Prop :=
  ∀ n, P5527351998640505862.a n = A110389 (n + 1)

theorem P5527351998640505862.correct : P5527351998640505862.Spec := by
  intro n
  simp only [A110389, Nat.add_sub_cancel, A110389.P5527351998640505862.a, A110389.P2560207981094747909.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110389

/-! ## A110389.P8562972527147375881

`(a(n-1)+1)*a(n-1)-1` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A110389.P8562972527147375881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  (a (n - 1) + 1) * a (n - 1) - 1

end

end A110389.P8562972527147375881

namespace A110389

/-- `(a(n-1)+1)*a(n-1)-1` -/
def P8562972527147375881.Spec : Prop :=
  ∀ n, P8562972527147375881.a n = A110389 (n + 1)

theorem P8562972527147375881.correct : P8562972527147375881.Spec := by
  intro n
  simp only [A110389, Nat.add_sub_cancel, A110389.P8562972527147375881.a, A110389.P2560207981094747909.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110389

/-! ## A110389.P7302849588092479116

`record[A005267(A028242(n))]`
-/

namespace A110389.P7302849588092479116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005267 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110389.P7302849588092479116

namespace A110389

/-- `record[A005267(A028242(n))]` -/
def P7302849588092479116.Spec : Prop :=
  ∀ n, P7302849588092479116.a n = A110389 (n + 1)

end A110389

/-! ## A110389.P8478443249398219111

`A005267(xor(n, A008683(A108650(n))))`
-/

namespace A110389.P8478443249398219111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005267 (Int.xor (n : ℤ) (A008683 (A108650 n).toNat)).toNat

end

end A110389.P8478443249398219111

namespace A110389

/-- `A005267(xor(n, A008683(A108650(n))))` -/
def P8478443249398219111.Spec : Prop :=
  ∀ n, P8478443249398219111.a n = A110389 (n + 1)

end A110389

/-!
# A110390: a(n) = F(n) mod s(n) where s(n) is the sum of the digits of the n-th Fibonacci number F(n).

The programs for A110390, the canonical program `A110390.P10483059375321568774` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110390 has offset 7).

The definition of A110390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110390.P10483059375321568774

`A020695(n+4)%∑{digits}[A020695(n+4), #]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110390

/-- `A020695(n+4)%∑{digits}[A020695(n+4), #]` -/
def P10483059375321568774.Spec : Prop :=
  ∀ n, P10483059375321568774.a n = A110390 (n + 7)

theorem P10483059375321568774.correct : P10483059375321568774.Spec := by
  intro n
  simp only [A110390, Nat.add_sub_cancel]

end A110390

/-! ## A110390.P5404651245622833819

`A071679(n+5)%∑{digits}[A071679(n+5), #]`
-/

namespace A110390.P5404651245622833819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071679 (n + 5)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A110390.P5404651245622833819

namespace A110390

/-- `A071679(n+5)%∑{digits}[A071679(n+5), #]` -/
def P5404651245622833819.Spec : Prop :=
  ∀ n, P5404651245622833819.a n = A110390 (n + 7)

end A110390

/-! ## A110390.P1202383519047484167

`Δ[A000071(n+8)]%A004090(n+7)`
-/

namespace A110390.P1202383519047484167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A004090 (n + 7))

end

end A110390.P1202383519047484167

namespace A110390

/-- `Δ[A000071(n+8)]%A004090(n+7)` -/
def P1202383519047484167.Spec : Prop :=
  ∀ n, P1202383519047484167.a n = A110390 (n + 7)

end A110390

/-! ## A110390.P15234814875237764968

`A070635(record[round(ϕ*a(n-1))])` with `a(0)=13, a(1)=1`
-/

namespace A110390.P15234814875237764968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A110390.P15234814875237764968

namespace A110390

/-- `A070635(record[round(ϕ*a(n-1))])` -/
def P15234814875237764968.Spec : Prop :=
  ∀ n, P15234814875237764968.a n = A110390 (n + 7)

end A110390

/-! ## A110390.P10695388069285296721

`A070635(A000045(n+7))`
-/

namespace A110390.P10695388069285296721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000045 (n + 7)).toNat

end

end A110390.P10695388069285296721

namespace A110390

/-- `A070635(A000045(n+7))` -/
def P10695388069285296721.Spec : Prop :=
  ∀ n, P10695388069285296721.a n = A110390 (n + 7)

end A110390

/-!
# A110391: a(n) = L(3*n)/L(n), where L(n) = Lucas number.

The programs for A110391, the canonical program `A110391.P7949160918366271779` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110391 has offset 0).

The definition of A110391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110391.P7949160918366271779

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A110391

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P7949160918366271779.Spec : Prop :=
  ∀ n, P7949160918366271779.a n = A110391 n

theorem P7949160918366271779.correct : P7949160918366271779.Spec := by
  intro n
  simp only [A110391]

end A110391

/-! ## A110391.P10700748010035541780

`A005248(n)-(-1)^n`
-/

namespace A110391.P10700748010035541780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - (-1) ^ n

end

end A110391.P10700748010035541780

namespace A110391

/-- `A005248(n)-(-1)^n` -/
def P10700748010035541780.Spec : Prop :=
  ∀ n, P10700748010035541780.a n = A110391 n

end A110391

/-! ## A110391.P3597773289037548371

`ogf((1+2x-4x^2)/(1-2x-2x^2+x^3))`
-/

namespace A110391.P3597773289037548371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, -2, -2, 1] n

end

end A110391.P3597773289037548371

namespace A110391

/-- `ogf((1+2x-4x^2)/(1-2x-2x^2+x^3))` -/
def P3597773289037548371.Spec : Prop :=
  ∀ n, P3597773289037548371.a n = A110391 n

end A110391

/-! ## A110391.P10926178947447379437

`Δ[or(1, n)]+floor((ϕ^n)²)`
-/

namespace A110391.P10926178947447379437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊(Real.goldenRatio ^ n) ^ 2⌋

end

end A110391.P10926178947447379437

namespace A110391

/-- `Δ[or(1, n)]+floor((ϕ^n)²)` -/
def P10926178947447379437.Spec : Prop :=
  ∀ n, P10926178947447379437.a n = A110391 n

end A110391

/-! ## A110391.P2537683143327098122

`floor(ϕ²^n)+2*n%2`
-/

namespace A110391.P2537683143327098122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ 2) ^ n⌋ + ((2 * (n % 2) : ℕ) : ℤ)

end

end A110391.P2537683143327098122

namespace A110391

/-- `floor(ϕ²^n)+2*n%2` -/
def P2537683143327098122.Spec : Prop :=
  ∀ n, P2537683143327098122.a n = A110391 n

end A110391

/-! ## A110391.P648185533306059120

`floor(2*and(1, n)+ϕ^(2*n))`
-/

namespace A110391.P648185533306059120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.land 1 n : ℝ) + Real.goldenRatio ^ (2 * n)⌋

end

end A110391.P648185533306059120

namespace A110391

/-- `floor(2*and(1, n)+ϕ^(2*n))` -/
def P648185533306059120.Spec : Prop :=
  ∀ n, P648185533306059120.a n = A110391 n

end A110391

/-! ## A110391.P9323688698965487219

`floor((ϕ^n)²)-(-1)^n+1`
-/

namespace A110391.P9323688698965487219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ - (-1) ^ n + 1

end

end A110391.P9323688698965487219

namespace A110391

/-- `floor((ϕ^n)²)-(-1)^n+1` -/
def P9323688698965487219.Spec : Prop :=
  ∀ n, P9323688698965487219.a n = A110391 n

end A110391

/-! ## A110391.P164488008742082215

`abs(3-A075150(n))`
-/

namespace A110391.P164488008742082215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A075150 n|

end

end A110391.P164488008742082215

namespace A110391

/-- `abs(3-A075150(n))` -/
def P164488008742082215.Spec : Prop :=
  ∀ n, P164488008742082215.a n = A110391 n

end A110391

/-! ## A110391.P7657986482324199695

`∪[A005592(2*n+1)+2, A005592(2*n)]`
-/

namespace A110391.P7657986482324199695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110391.P7657986482324199695

namespace A110391

/-- `∪[A005592(2*n+1)+2, A005592(2*n)]` -/
def P7657986482324199695.Spec : Prop :=
  ∀ n, (P7657986482324199695.a n : ℤ) = A110391 n

end A110391

/-! ## A110391.P8870971815782980361

`round((A000045(2*n+1)/A000045(n+1))²)`
-/

namespace A110391.P8870971815782980361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000045 (2 * n + 1) : ℚ) / (A000045 (n + 1) : ℚ)) ^ 2)

end

end A110391.P8870971815782980361

namespace A110391

/-- `round((A000045(2*n+1)/A000045(n+1))²)` -/
def P8870971815782980361.Spec : Prop :=
  ∀ n, P8870971815782980361.a n = A110391 n

end A110391

/-! ## A110391.P536019443982236002

`floor((A000032(n+1)²+ϕ)/ϕ²)`
-/

namespace A110391.P536019443982236002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (n + 1) ^ 2 : ℝ) + Real.goldenRatio) / Real.goldenRatio ^ 2⌋

end

end A110391.P536019443982236002

namespace A110391

/-- `floor((A000032(n+1)²+ϕ)/ϕ²)` -/
def P536019443982236002.Spec : Prop :=
  ∀ n, P536019443982236002.a n = A110391 n

end A110391

/-! ## A110391.P16530996078543427648

`(A061084(2*n)+A001254(n+1))/2`
-/

namespace A110391.P16530996078543427648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n) + A001254 (n + 1) : ℚ) / 2

end

end A110391.P16530996078543427648

namespace A110391

/-- `(A061084(2*n)+A001254(n+1))/2` -/
def P16530996078543427648.Spec : Prop :=
  ∀ n, P16530996078543427648.a n = (A110391 n : ℚ)

end A110391

/-! ## A110391.P8931782129793805155

`(A061084(2*n)+A006499(2*n))/2`
-/

namespace A110391.P8931782129793805155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n) + A006499 (2 * n) : ℚ) / 2

end

end A110391.P8931782129793805155

namespace A110391

/-- `(A061084(2*n)+A006499(2*n))/2` -/
def P8931782129793805155.Spec : Prop :=
  ∀ n, P8931782129793805155.a n = (A110391 n : ℚ)

end A110391

/-! ## A110391.P5495230544725377509

`round((A022086(2*n+1)/A022086(n+1))²)`
-/

namespace A110391.P5495230544725377509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A022086 (2 * n + 1) : ℚ) / (A022086 (n + 1) : ℚ)) ^ 2)

end

end A110391.P5495230544725377509

namespace A110391

/-- `round((A022086(2*n+1)/A022086(n+1))²)` -/
def P5495230544725377509.Spec : Prop :=
  ∀ n, P5495230544725377509.a n = A110391 n

end A110391

/-! ## A110391.P9681813973801113367

`round((A022087(2*n+1)/A022087(n+1))²)`
-/

namespace A110391.P9681813973801113367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A022087 (2 * n + 1) : ℚ) / (A022087 (n + 1) : ℚ)) ^ 2)

end

end A110391.P9681813973801113367

namespace A110391

/-- `round((A022087(2*n+1)/A022087(n+1))²)` -/
def P9681813973801113367.Spec : Prop :=
  ∀ n, P9681813973801113367.a n = A110391 n

end A110391

/-! ## A110391.P36388894648606579

`round((A055389(2*n+1)/A055389(n+1))²)`
-/

namespace A110391.P36388894648606579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A055389 (2 * n + 1) : ℚ) / (A055389 (n + 1) : ℚ)) ^ 2)

end

end A110391.P36388894648606579

namespace A110391

/-- `round((A055389(2*n+1)/A055389(n+1))²)` -/
def P36388894648606579.Spec : Prop :=
  ∀ n, P36388894648606579.a n = A110391 n

end A110391

/-! ## A110391.P8844933650439244787

`(A000032(2*n+1)+Δ[A000032(n)]²)/2`
-/

namespace A110391.P8844933650439244787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) + (f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A110391.P8844933650439244787

namespace A110391

/-- `(A000032(2*n+1)+Δ[A000032(n)]²)/2` -/
def P8844933650439244787.Spec : Prop :=
  ∀ n, P8844933650439244787.a n = (A110391 n : ℚ)

end A110391

/-! ## A110391.P15423643107273789720

`round((A022359(2*n+1)/A022359(n+1))²)`
-/

namespace A110391.P15423643107273789720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A022359 (2 * n + 1) : ℚ) / (A022359 (n + 1) : ℚ)) ^ 2)

end

end A110391.P15423643107273789720

namespace A110391

/-- `round((A022359(2*n+1)/A022359(n+1))²)` -/
def P15423643107273789720.Spec : Prop :=
  ∀ n, P15423643107273789720.a n = A110391 n

end A110391

/-! ## A110391.P10583496699882367116

`round((A022369(2*n+1)/A022369(n+1))²)`
-/

namespace A110391.P10583496699882367116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A022369 (2 * n + 1) : ℚ) / (A022369 (n + 1) : ℚ)) ^ 2)

end

end A110391.P10583496699882367116

namespace A110391

/-- `round((A022369(2*n+1)/A022369(n+1))²)` -/
def P10583496699882367116.Spec : Prop :=
  ∀ n, P10583496699882367116.a n = A110391 n

end A110391

/-! ## A110391.P3169248962674071285

`A014448(n)/A000032(n)`
-/

namespace A110391.P3169248962674071285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014448 n : ℚ) / (A000032 n : ℚ)

end

end A110391.P3169248962674071285

namespace A110391

/-- `A014448(n)/A000032(n)` -/
def P3169248962674071285.Spec : Prop :=
  ∀ n, P3169248962674071285.a n = (A110391 n : ℚ)

end A110391

/-!
# A110392: a(n) = L((2n+1)^2)/L(2n+1), where L(n) = Lucas Number.

The programs for A110392, there is no canonical definition to state claims against.
-/

/-! ## A110392.P8292825054973797823

`A002878(∑[4*n])/A002878(n)`
-/

namespace A110392.P8292825054973797823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002878 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A002878 n : ℚ)

end

end A110392.P8292825054973797823

/-! ## A110392.P1589261194444319389

`A247035(∑[4*n])/A247035(n)`
-/

namespace A110392.P1589261194444319389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247035 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A247035 n : ℚ)

end

end A110392.P1589261194444319389

/-! ## A110392.P4658220543770886139

`A000032((2*n+1)²)/A000032(2*n+1)`
-/

namespace A110392.P4658220543770886139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 ((2 * n + 1) ^ 2) : ℚ) / (A000032 (2 * n + 1) : ℚ)

end

end A110392.P4658220543770886139

/-!
# A110394: a(1) = 1; a(n) = n times (9's complement of a(n-1)).

The programs for A110394, there is no canonical definition to state claims against.
-/

/-! ## A110394.P3901063502510680508

`(n+1)*A061601(a(n-1))` with `a(0)=1`
-/

namespace A110394.P3901063502510680508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A061601 (a (n - 1)).toNat

end

end A110394.P3901063502510680508

/-!
# A110395: a(1) = 1. a(n) = n times (10's complement of a(n-1)).

The programs for A110395, there is no canonical definition to state claims against.
-/

/-! ## A110395.P3313178180744669778

`(n+1)*A089186(a(n-1))` with `a(0)=1`
-/

namespace A110395.P3313178180744669778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A089186 (a (n - 1)).toNat

end

end A110395.P3313178180744669778

/-!
# A110396: 10's complement factorial of n: a(n) = (10's complement of n)*(10's complement of n-1)*...*(10's complement of 2)*(10's complement of 1).

The programs for A110396, there is no canonical definition to state claims against.
-/

/-! ## A110396.P4489041674576684255

`a(n-1)*A089186(n)` with `a(0)=1`
-/

namespace A110396.P4489041674576684255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A089186 n

end

end A110396.P4489041674576684255

/-! ## A110396.P9607381963059651970

`a(n-1)*A178914(n)` with `a(0)=1`
-/

namespace A110396.P9607381963059651970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A178914 n

end

end A110396.P9607381963059651970

/-! ## A110396.P15069940172410920335

`(A061601(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A110396.P15069940172410920335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A061601 n + 1) * a (n - 1)

end

end A110396.P15069940172410920335

/-! ## A110396.P15365997888655016687

`∏[A089186(n+1)]/A089186(n+1)`
-/

namespace A110396.P15365997888655016687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A089186 (n + 1) : ℚ)

end

end A110396.P15365997888655016687

/-! ## A110396.P7267936938565520390

`A000027(∏[(688+abs(743-n))%9+1])`
-/

namespace A110396.P7267936938565520390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (688 + |743 - (n : ℤ)|) 9 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110396.P7267936938565520390

/-!
# A110397: a(n) = (10^k - n)(10^k + n), where k is the number of digits in n.

The programs for A110397, the canonical program `A110397.P12959332454578711254` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110397 has offset 1).

The definition of A110397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110397.P14753114210291516766

`(10^A055642(n+1))²-(n+1)²`
-/

namespace A110397.P14753114210291516766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A055642 (n + 1) : ℤ)) ^ 2 - ((n + 1) ^ 2 : ℚ)

end

end A110397.P14753114210291516766

namespace A110397

/-- `(10^A055642(n+1))²-(n+1)²` -/
def P14753114210291516766.Spec : Prop :=
  ∀ n, P14753114210291516766.a n = (A110397 (n + 1) : ℚ)

end A110397

/-! ## A110397.P12959332454578711254

`(A061601(n+1)+n+2)²-(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110397

/-- `(A061601(n+1)+n+2)²-(n+1)²` -/
def P12959332454578711254.Spec : Prop :=
  ∀ n, P12959332454578711254.a n = A110397 (n + 1)

theorem P12959332454578711254.correct : P12959332454578711254.Spec := by
  intro n
  simp only [A110397, Nat.add_sub_cancel]

end A110397

/-! ## A110397.P10108010181687628254

`A089186(n+1)²+2*A068824(n+1)`
-/

namespace A110397.P10108010181687628254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089186 (n + 1) ^ 2 + 2 * A068824 (n + 1)

end

end A110397.P10108010181687628254

namespace A110397

/-- `A089186(n+1)²+2*A068824(n+1)` -/
def P10108010181687628254.Spec : Prop :=
  ∀ n, P10108010181687628254.a n = A110397 (n + 1)

end A110397

/-! ## A110397.P14394685764788828669

`(A061601(n+1)+1)*(Δ[A014206(n)]+A061601(n+1)+1)`
-/

namespace A110397.P14394685764788828669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 (n + 1) + 1) * (f1 (n + 1) - f1 n + (A061601 (n + 1) + 1))

end

end A110397.P14394685764788828669

namespace A110397

/-- `(A061601(n+1)+1)*(Δ[A014206(n)]+A061601(n+1)+1)` -/
def P14394685764788828669.Spec : Prop :=
  ∀ n, P14394685764788828669.a n = A110397 (n + 1)

end A110397

/-! ## A110397.P6751504225724241543

`(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A087712(A100484(n+1))`
-/

namespace A110397.P6751504225724241543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) * A087712 (A100484 (n + 1)).toNat

end

end A110397.P6751504225724241543

namespace A110397

/-- `(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A087712(A100484(n+1))` -/
def P6751504225724241543.Spec : Prop :=
  ∀ n, P6751504225724241543.a n = A110397 (n + 1)

end A110397

/-! ## A110397.P16324784307811116240

`(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A084855(A000124(n))`
-/

namespace A110397.P16324784307811116240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) * A084855 (A000124 n).toNat

end

end A110397.P16324784307811116240

namespace A110397

/-- `(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A084855(A000124(n))` -/
def P16324784307811116240.Spec : Prop :=
  ∀ n, P16324784307811116240.a n = A110397 (n + 1)

end A110397

/-! ## A110397.P9454371143435945525

`A084855(A000124(n))*A089186(n+1)`
-/

namespace A110397.P9454371143435945525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (A000124 n).toNat * A089186 (n + 1)

end

end A110397.P9454371143435945525

namespace A110397

/-- `A084855(A000124(n))*A089186(n+1)` -/
def P9454371143435945525.Spec : Prop :=
  ∀ n, P9454371143435945525.a n = A110397 (n + 1)

end A110397

/-! ## A110397.P11370617681108454234

`(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A136687(A056524(n+1))`
-/

namespace A110397.P11370617681108454234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ)) * A136687 (A056524 (n + 1)).toNat

end

end A110397.P11370617681108454234

namespace A110397

/-- `(∏{digits}[n+1, floor(#/10)+10]-(n+1))*A136687(A056524(n+1))` -/
def P11370617681108454234.Spec : Prop :=
  ∀ n, P11370617681108454234.a n = A110397 (n + 1)

end A110397

/-!
# A110399: Expansion of (theta_3(q)*theta_3(q^7) - 1)/2 in powers of q.

The programs for A110399, there is no canonical definition to state claims against.
-/

/-! ## A110399.P659587130998880066

`A033719(n+1)/2`
-/

namespace A110399.P659587130998880066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 (n + 1) : ℚ) / 2

end

end A110399.P659587130998880066

/-! ## A110399.P9489874424360036435

`A001281(A033719(n+1))`
-/

namespace A110399.P9489874424360036435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033719 (n + 1)).toNat

end

end A110399.P9489874424360036435

/-! ## A110399.P912402153972215476

`A004524(A033719(n+1)+1)`
-/

namespace A110399.P912402153972215476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A033719 (n + 1) + 1).toNat

end

end A110399.P912402153972215476

/-! ## A110399.P15924329429124111934

`A028242(A033719(n+1)+1)`
-/

namespace A110399.P15924329429124111934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A033719 (n + 1) + 1).toNat

end

end A110399.P15924329429124111934

/-! ## A110399.P4895276683093968777

`A123108(A033719(n+1)+1)`
-/

namespace A110399.P4895276683093968777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A033719 (n + 1) + 1).toNat

end

end A110399.P4895276683093968777

/-! ## A110399.P3093550726673777986

`A002265(2*A033719(n+1))`
-/

namespace A110399.P3093550726673777986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A033719 (n + 1)).toNat

end

end A110399.P3093550726673777986

/-! ## A110399.P3212971300359037497

`val(A000079(A033719(n+1)+1), 4)`
-/

namespace A110399.P3212971300359037497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A033719 (n + 1) + 1).toNat).toNat 4

end

end A110399.P3212971300359037497

/-! ## A110399.P7339636545562989010

`Δ[∑[A033719(n)]/2]`
-/

namespace A110399.P7339636545562989010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110399.P7339636545562989010

/-! ## A110399.P7693293395146749987

`A216512(n+1)+A216511(n+1)`
-/

namespace A110399.P7693293395146749987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216512 (n + 1) + A216511 (n + 1)

end

end A110399.P7693293395146749987

/-! ## A110399.P8219126019565074021

`A205974(n+1)/(2*A324969(n+2))`
-/

namespace A110399.P8219126019565074021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205974 (n + 1) : ℚ) / (2 * A324969 (n + 2) : ℚ)

end

end A110399.P8219126019565074021

/-! ## A110399.P553026628641749337

`A216512(A085959(n+1))`
-/

namespace A110399.P553026628641749337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216512 (A085959 (n + 1)).toNat

end

end A110399.P553026628641749337

/-! ## A110399.P18316804968682247979

`A209454(n+1)/(2*A000129(n+1))`
-/

namespace A110399.P18316804968682247979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209454 (n + 1) : ℚ) / (2 * A000129 (n + 1) : ℚ)

end

end A110399.P18316804968682247979

/-! ## A110399.P15707598179386763778

`A209454(n+1)/(2*A215928(n+1))`
-/

namespace A110399.P15707598179386763778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209454 (n + 1) : ℚ) / (2 * A215928 (n + 1) : ℚ)

end

end A110399.P15707598179386763778

