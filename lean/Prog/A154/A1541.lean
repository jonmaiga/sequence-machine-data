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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154101: Numbers n with property that A077116(n) is nonzero square.

The programs for A154101, there is no canonical definition to state claims against.
-/

/-! ## A154101.P10107154972538547108

`lt[1, A056926(A077116(n))]`
-/

namespace A154101.P10107154972538547108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A077116 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154101.P10107154972538547108

/-! ## A154101.P3741295745037116403

`lt[1, A056926(n^3-A065733(n))]`
-/

namespace A154101.P3741295745037116403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((n ^ 3 : ℤ) - A065733 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154101.P3741295745037116403

/-! ## A154101.P7918230825173280146

`lt[1, A056926(n*n²-A000093(n)²)]`
-/

namespace A154101.P7918230825173280146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((n * n ^ 2 : ℤ) - A000093 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154101.P7918230825173280146

/-! ## A154101.P9608524132554874418

`lt[1, A037213(n^3-floor(sqrt(n^3))²)]`
-/

namespace A154101.P9608524132554874418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n ^ 3 - Nat.sqrt (n ^ 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154101.P9608524132554874418

/-! ## A154101.P9722720209830628147

`lt[A267635(n^3-A065733(n)), 1]`
-/

namespace A154101.P9722720209830628147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 ((n ^ 3 : ℤ) - A065733 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154101.P9722720209830628147

/-!
# A154103: Auxiliary array for computing A153835.

The programs for A154103, there is no canonical definition to state claims against.
-/

/-! ## A154103.P6650677441341621075

`A154104((1-A154104(n))*A061579(n))`
-/

namespace A154103.P6650677441341621075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154104 ((1 - A154104 n) * A061579 n).toNat

end

end A154103.P6650677441341621075

/-! ## A154103.P851181320985350196

`A154104(∑[2*n]%comp[∑[n]])`
-/

namespace A154103.P851181320985350196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154104 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A154103.P851181320985350196

/-! ## A154103.P14406899908217547247

`A154104(∑[char[∑[n]]]²-n-1)`
-/

namespace A154103.P14406899908217547247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154104 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A154103.P14406899908217547247

/-! ## A154103.P18229639469256423181

`and(1, A154104(A061579(n)))`
-/

namespace A154103.P18229639469256423181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A154104 (A061579 n).toNat)

end

end A154103.P18229639469256423181

/-! ## A154103.P17498351781917085378

`A280749(A384866(n))`
-/

namespace A154103.P17498351781917085378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (A384866 n).toNat

end

end A154103.P17498351781917085378

/-!
# A154104: Transpose of array A154103.

The programs for A154104, there is no canonical definition to state claims against.
-/

/-! ## A154104.P3483586758355609156

`A154103(∑[2*n]%comp[∑[n]])`
-/

namespace A154104.P3483586758355609156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A154104.P3483586758355609156

/-! ## A154104.P17077266267969804787

`A154103(∑[char[∑[n]]]²-(n+1))`
-/

namespace A154104.P17077266267969804787
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A154104.P17077266267969804787

/-! ## A154104.P13666931830790652160

`and(1, A154103(A061579(n)))`
-/

namespace A154104.P13666931830790652160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A154103 (A061579 n).toNat)

end

end A154104.P13666931830790652160

/-! ## A154104.P13535542173037549295

`A023532(n)*A154103(A061579(n))`
-/

namespace A154104.P13535542173037549295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A154103 (A061579 n).toNat

end

end A154104.P13535542173037549295

/-! ## A154104.P15266748456518936426

`A057427(n)*A154103(A061579(n))`
-/

namespace A154104.P15266748456518936426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A154103 (A061579 n).toNat

end

end A154104.P15266748456518936426

/-! ## A154104.P7702526811884757503

`A154103(A061579(n))*A178334(n)`
-/

namespace A154104.P7702526811884757503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 (A061579 n).toNat * A178334 n

end

end A154104.P7702526811884757503

/-! ## A154104.P3423373092611410548

`(A033999(n)*A154103(A061579(n)))²`
-/

namespace A154104.P3423373092611410548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n * A154103 (A061579 n).toNat) ^ 2

end

end A154104.P3423373092611410548

/-! ## A154104.P4285556632990538724

`A268936(C(2, n))+A154103(A061579(n))`
-/

namespace A154104.P4285556632990538724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268936 (Nat.choose 2 n) + A154103 (A061579 n).toNat

end

end A154104.P4285556632990538724

/-! ## A154104.P13047699063037021333

`A007318(C(2, n))*A154103(A061579(n))`
-/

namespace A154104.P13047699063037021333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A154103 (A061579 n).toNat

end

end A154104.P13047699063037021333

/-! ## A154104.P3826944969334625900

`A154103(A061579(n))*A321341(C(2, n))`
-/

namespace A154104.P3826944969334625900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154103 (A061579 n).toNat * A321341 (Nat.choose 2 n)

end

end A154104.P3826944969334625900

/-! ## A154104.P10551147004107035839

`A014963(4*n+2)*A154103(A061579(n))`
-/

namespace A154104.P10551147004107035839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A154103 (A061579 n).toNat

end

end A154104.P10551147004107035839

/-! ## A154104.P8172691645458145816

`A000108(C(2, n+2))*A154103(A061579(n))`
-/

namespace A154104.P8172691645458145816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A154103 (A061579 n).toNat

end

end A154104.P8172691645458145816

/-! ## A154104.P2262064452904656080

`A165326(2*(n+1))²*A154103(A061579(n))`
-/

namespace A154104.P2262064452904656080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) ^ 2 * A154103 (A061579 n).toNat

end

end A154104.P2262064452904656080

/-! ## A154104.P2289278916188654026

`(A062157(A038722(n+1))*A154103(A061579(n)))²`
-/

namespace A154104.P2289278916188654026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062157 (A038722 (n + 1)).toNat * A154103 (A061579 n).toNat) ^ 2

end

end A154104.P2289278916188654026

/-!
# A154105: a(n) = 12*n^2 + 18*n + 7.

The programs for A154105, the canonical program `A154105.P6664719848169599409` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154105 has offset 0).

The definition of A154105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+18*n+7` (program `A154105.P6664719848169599409`, by `A154105.P6664719848169599409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154105.P6664719848169599409

`12*n²+18*n+7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154105

/-- `12*n²+18*n+7` -/
def P6664719848169599409.Spec : Prop :=
  ∀ n, (P6664719848169599409.a n : ℤ) = A154105 n

theorem P6664719848169599409.correct : P6664719848169599409.Spec := by
  intro n
  simp only [A154105]

end A154105

/-! ## A154105.P10597828065617592679

`∑[a(n-1)+24]` with `a(0)=7, a(1)=30`
-/

namespace A154105.P10597828065617592679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 30] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154105.P10597828065617592679

namespace A154105

/-- `∑[a(n-1)+24]` -/
def P10597828065617592679.Spec : Prop :=
  ∀ n, (P10597828065617592679.a n : ℤ) = A154105 n

end A154105

/-! ## A154105.P15608364492799521388

`Δ[A395241(n)]`
-/

namespace A154105.P15608364492799521388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P15608364492799521388

namespace A154105

/-- `Δ[A395241(n)]` -/
def P15608364492799521388.Spec : Prop :=
  ∀ n, P15608364492799521388.a n = A154105 n

theorem P15608364492799521388.correct : P15608364492799521388.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P15608364492799521388.f1, A154105.P15608364492799521388.a, A154105.P6664719848169599409.a, A395241, A395241.P8661816280605708552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P2207392155848040759

`∑[A063128(n+1)]`
-/

namespace A154105.P2207392155848040759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154105.P2207392155848040759

namespace A154105

/-- `∑[A063128(n+1)]` -/
def P2207392155848040759.Spec : Prop :=
  ∀ n, P2207392155848040759.a n = A154105 n

end A154105

/-! ## A154105.P15920445974153317906

`∑[A063140(n+1)+2]`
-/

namespace A154105.P15920445974153317906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063140 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154105.P15920445974153317906

namespace A154105

/-- `∑[A063140(n+1)+2]` -/
def P15920445974153317906.Spec : Prop :=
  ∀ n, P15920445974153317906.a n = A154105 n

end A154105

/-! ## A154105.P17137209167944866263

`∑[A063134(n+1)-2]`
-/

namespace A154105.P17137209167944866263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063134 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154105.P17137209167944866263

namespace A154105

/-- `∑[A063134(n+1)-2]` -/
def P17137209167944866263.Spec : Prop :=
  ∀ n, P17137209167944866263.a n = A154105 n

end A154105

/-! ## A154105.P17873671401886685642

`∑[A063162(n+1)-4]`
-/

namespace A154105.P17873671401886685642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063162 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154105.P17873671401886685642

namespace A154105

/-- `∑[A063162(n+1)-4]` -/
def P17873671401886685642.Spec : Prop :=
  ∀ n, P17873671401886685642.a n = A154105 n

end A154105

/-! ## A154105.P18063566013191256047

`(A157265(n+1)-n)/3`
-/

namespace A154105.P18063566013191256047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157265 (n + 1) - (n : ℤ) : ℚ) / 3

end

end A154105.P18063566013191256047

namespace A154105

/-- `(A157265(n+1)-n)/3` -/
def P18063566013191256047.Spec : Prop :=
  ∀ n, P18063566013191256047.a n = (A154105 n : ℚ)

theorem P18063566013191256047.correct : P18063566013191256047.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P18063566013191256047.a, A154105.P6664719848169599409.a, A157265, A157265.P9165229674493035226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P18026760458284679821

`A068626(2*A016789(n))`
-/

namespace A154105.P18026760458284679821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (2 * A016789 n).toNat

end

end A154105.P18026760458284679821

namespace A154105

/-- `A068626(2*A016789(n))` -/
def P18026760458284679821.Spec : Prop :=
  ∀ n, P18026760458284679821.a n = A154105 n

end A154105

/-! ## A154105.P14454358444756227007

`A291582(n+1)%A158544(n+1)`
-/

namespace A154105.P14454358444756227007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291582 (n + 1)) (A158544 (n + 1))

end

end A154105.P14454358444756227007

namespace A154105

/-- `A291582(n+1)%A158544(n+1)` -/
def P14454358444756227007.Spec : Prop :=
  ∀ n, P14454358444756227007.a n = A154105 n

end A154105

/-! ## A154105.P9344603514238904875

`Δ[n*n*Δ[C(2*n+1, 2)]]`
-/

namespace A154105.P9344603514238904875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P9344603514238904875

namespace A154105

/-- `Δ[n*n*Δ[C(2*n+1, 2)]]` -/
def P9344603514238904875.Spec : Prop :=
  ∀ n, P9344603514238904875.a n = A154105 n

theorem P9344603514238904875.correct : P9344603514238904875.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P9344603514238904875.f2, A154105.P9344603514238904875.f1, A154105.P9344603514238904875.a, A154105.P6664719848169599409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P13190217809794824634

`Δ[n*A033954(n)]`
-/

namespace A154105.P13190217809794824634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P13190217809794824634

namespace A154105

/-- `Δ[n*A033954(n)]` -/
def P13190217809794824634.Spec : Prop :=
  ∀ n, P13190217809794824634.a n = A154105 n

theorem P13190217809794824634.correct : P13190217809794824634.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P13190217809794824634.f1, A154105.P13190217809794824634.a, A154105.P6664719848169599409.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P14534074690903470017

`Δ[n²*A004767(n)]`
-/

namespace A154105.P14534074690903470017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P14534074690903470017

namespace A154105

/-- `Δ[n²*A004767(n)]` -/
def P14534074690903470017.Spec : Prop :=
  ∀ n, P14534074690903470017.a n = A154105 n

theorem P14534074690903470017.correct : P14534074690903470017.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P14534074690903470017.f1, A154105.P14534074690903470017.a, A154105.P6664719848169599409.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P13385604523106160757

`Δ[n*(A033951(n)-1)]`
-/

namespace A154105.P13385604523106160757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033951 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P13385604523106160757

namespace A154105

/-- `Δ[n*(A033951(n)-1)]` -/
def P13385604523106160757.Spec : Prop :=
  ∀ n, P13385604523106160757.a n = A154105 n

theorem P13385604523106160757.correct : P13385604523106160757.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P13385604523106160757.f1, A154105.P13385604523106160757.a, A154105.P6664719848169599409.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P6426560598209174019

`Δ[n*(A185669(n)-2)]`
-/

namespace A154105.P6426560598209174019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A185669 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P6426560598209174019

namespace A154105

/-- `Δ[n*(A185669(n)-2)]` -/
def P6426560598209174019.Spec : Prop :=
  ∀ n, P6426560598209174019.a n = A154105 n

theorem P6426560598209174019.correct : P6426560598209174019.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P6426560598209174019.f1, A154105.P6426560598209174019.a, A154105.P6664719848169599409.a, A185669, A185669.P13041267673244999932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P6914108820689768806

`Δ[n/2*A033587(n)]`
-/

namespace A154105.P6914108820689768806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A033587 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P6914108820689768806

namespace A154105

/-- `Δ[n/2*A033587(n)]` -/
def P6914108820689768806.Spec : Prop :=
  ∀ n, P6914108820689768806.a n = (A154105 n : ℚ)

theorem P6914108820689768806.correct : P6914108820689768806.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P6914108820689768806.f1, A154105.P6914108820689768806.a, A154105.P6664719848169599409.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P10247515634549890001

`Δ[n*(A002943(n)+n)]`
-/

namespace A154105.P10247515634549890001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002943 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P10247515634549890001

namespace A154105

/-- `Δ[n*(A002943(n)+n)]` -/
def P10247515634549890001.Spec : Prop :=
  ∀ n, P10247515634549890001.a n = A154105 n

theorem P10247515634549890001.correct : P10247515634549890001.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P10247515634549890001.f1, A154105.P10247515634549890001.a, A154105.P6664719848169599409.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P9017694456900184728

`Δ[n*(A033996(n)-n)]`
-/

namespace A154105.P9017694456900184728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033996 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154105.P9017694456900184728

namespace A154105

/-- `Δ[n*(A033996(n)-n)]` -/
def P9017694456900184728.Spec : Prop :=
  ∀ n, P9017694456900184728.a n = A154105 n

theorem P9017694456900184728.correct : P9017694456900184728.Spec := by
  intro n
  simp only [A154105, Nat.add_sub_cancel, A154105.P9017694456900184728.f1, A154105.P9017694456900184728.a, A154105.P6664719848169599409.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154105

/-! ## A154105.P15895923225332433184

`A003215(Δ[n²])`
-/

namespace A154105.P15895923225332433184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A154105.P15895923225332433184

namespace A154105

/-- `A003215(Δ[n²])` -/
def P15895923225332433184.Spec : Prop :=
  ∀ n, P15895923225332433184.a n = A154105 n

end A154105

/-! ## A154105.P10246092043154854599

`A153286(2*(n+1))`
-/

namespace A154105.P10246092043154854599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153286 (2 * (n + 1))

end

end A154105.P10246092043154854599

namespace A154105

/-- `A153286(2*(n+1))` -/
def P10246092043154854599.Spec : Prop :=
  ∀ n, P10246092043154854599.a n = A154105 n

end A154105

/-!
# A154106: a(n) = 12*n^2 + 22*n + 11.

The programs for A154106, the canonical program `A154106.P16112730020414109564` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154106 has offset 0).

The definition of A154106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+22*n+11` (program `A154106.P16112730020414109564`, by `A154106.P16112730020414109564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154106.P16112730020414109564

`12*n²+22*n+11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154106

/-- `12*n²+22*n+11` -/
def P16112730020414109564.Spec : Prop :=
  ∀ n, (P16112730020414109564.a n : ℤ) = A154106 n

theorem P16112730020414109564.correct : P16112730020414109564.Spec := by
  intro n
  simp only [A154106]

end A154106

/-! ## A154106.P5352226389795440695

`∑[a(n-1)+24]` with `a(0)=11, a(1)=34`
-/

namespace A154106.P5352226389795440695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 34] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P5352226389795440695

namespace A154106

/-- `∑[a(n-1)+24]` -/
def P5352226389795440695.Spec : Prop :=
  ∀ n, (P5352226389795440695.a n : ℤ) = A154106 n

end A154106

/-! ## A154106.P13459164881523179765

`∑[ogf((11+12x+x^2)/(1-2x+x^2))]`
-/

namespace A154106.P13459164881523179765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 12, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P13459164881523179765

namespace A154106

/-- `∑[ogf((11+12x+x^2)/(1-2x+x^2))]` -/
def P13459164881523179765.Spec : Prop :=
  ∀ n, P13459164881523179765.a n = A154106 n

end A154106

/-! ## A154106.P9065990330573939152

`(2*C(6*(n+1), 2)+3)/3`
-/

namespace A154106.P9065990330573939152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (6 * (n + 1)) 2 + 3 : ℚ) / 3

end

end A154106.P9065990330573939152

namespace A154106

/-- `(2*C(6*(n+1), 2)+3)/3` -/
def P9065990330573939152.Spec : Prop :=
  ∀ n, P9065990330573939152.a n = (A154106 n : ℚ)

theorem P9065990330573939152.correct : P9065990330573939152.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P9065990330573939152.a, A154106.P16112730020414109564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P6131491220272446457

`∑[A063162(n+1)]`
-/

namespace A154106.P6131491220272446457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P6131491220272446457

namespace A154106

/-- `∑[A063162(n+1)]` -/
def P6131491220272446457.Spec : Prop :=
  ∀ n, P6131491220272446457.a n = A154106 n

end A154106

/-! ## A154106.P9324564424961597190

`∑[A063160(n+1)+1]`
-/

namespace A154106.P9324564424961597190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063160 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P9324564424961597190

namespace A154106

/-- `∑[A063160(n+1)+1]` -/
def P9324564424961597190.Spec : Prop :=
  ∀ n, P9324564424961597190.a n = A154106 n

end A154106

/-! ## A154106.P18123295006665942806

`∑[A063134(n+1)+2]`
-/

namespace A154106.P18123295006665942806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063134 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P18123295006665942806

namespace A154106

/-- `∑[A063134(n+1)+2]` -/
def P18123295006665942806.Spec : Prop :=
  ∀ n, P18123295006665942806.a n = A154106 n

end A154106

/-! ## A154106.P10351797119410745438

`∑[A063128(n+1)+4]`
-/

namespace A154106.P10351797119410745438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063128 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P10351797119410745438

namespace A154106

/-- `∑[A063128(n+1)+4]` -/
def P10351797119410745438.Spec : Prop :=
  ∀ n, P10351797119410745438.a n = A154106 n

end A154106

/-! ## A154106.P10398080952276740332

`A158062(n+1)%A158544(n+1)`
-/

namespace A154106.P10398080952276740332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158062 (n + 1)) (A158544 (n + 1))

end

end A154106.P10398080952276740332

namespace A154106

/-- `A158062(n+1)%A158544(n+1)` -/
def P10398080952276740332.Spec : Prop :=
  ∀ n, P10398080952276740332.a n = A154106 n

end A154106

/-! ## A154106.P1342037749351387921

`A158067(n+1)%A158640(n+1)`
-/

namespace A154106.P1342037749351387921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158067 (n + 1)) (A158640 (n + 1))

end

end A154106.P1342037749351387921

namespace A154106

/-- `A158067(n+1)%A158640(n+1)` -/
def P1342037749351387921.Spec : Prop :=
  ∀ n, P1342037749351387921.a n = A154106 n

end A154106

/-! ## A154106.P7812260359323938357

`Δ[A204674(n)]`
-/

namespace A154106.P7812260359323938357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P7812260359323938357

namespace A154106

/-- `Δ[A204674(n)]` -/
def P7812260359323938357.Spec : Prop :=
  ∀ n, P7812260359323938357.a n = A154106 n

theorem P7812260359323938357.correct : P7812260359323938357.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P7812260359323938357.f1, A154106.P7812260359323938357.a, A154106.P16112730020414109564.a, A204674, A204674.P410369923834642929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P18146992396967337595

`Δ[A191593(n)/3]`
-/

namespace A154106.P18146992396967337595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191593 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P18146992396967337595

namespace A154106

/-- `Δ[A191593(n)/3]` -/
def P18146992396967337595.Spec : Prop :=
  ∀ n, P18146992396967337595.a n = (A154106 n : ℚ)

theorem P18146992396967337595.correct : P18146992396967337595.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P18146992396967337595.f1, A154106.P18146992396967337595.a, A154106.P16112730020414109564.a, A191593, A191593.P1404647331602006259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P15566668472644805196

`Δ[A280059(n)/4]`
-/

namespace A154106.P15566668472644805196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280059 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P15566668472644805196

namespace A154106

/-- `Δ[A280059(n)/4]` -/
def P15566668472644805196.Spec : Prop :=
  ∀ n, P15566668472644805196.a n = (A154106 n : ℚ)

theorem P15566668472644805196.correct : P15566668472644805196.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P15566668472644805196.f1, A154106.P15566668472644805196.a, A154106.P16112730020414109564.a, A280059, A280059.P842335069521915048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P17986640898705439694

`Δ[A300758(n)-n²]`
-/

namespace A154106.P17986640898705439694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P17986640898705439694

namespace A154106

/-- `Δ[A300758(n)-n²]` -/
def P17986640898705439694.Spec : Prop :=
  ∀ n, P17986640898705439694.a n = A154106 n

theorem P17986640898705439694.correct : P17986640898705439694.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P17986640898705439694.f1, A154106.P17986640898705439694.a, A154106.P16112730020414109564.a, A300758, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P11289986717760924120

`∑[A101103(n+2)-2]`
-/

namespace A154106.P11289986717760924120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154106.P11289986717760924120

namespace A154106

/-- `∑[A101103(n+2)-2]` -/
def P11289986717760924120.Spec : Prop :=
  ∀ n, P11289986717760924120.a n = A154106 n

end A154106

/-! ## A154106.P723799372553223018

`Δ[n*(A069894(n)+n)]`
-/

namespace A154106.P723799372553223018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A069894 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P723799372553223018

namespace A154106

/-- `Δ[n*(A069894(n)+n)]` -/
def P723799372553223018.Spec : Prop :=
  ∀ n, P723799372553223018.a n = A154106 n

theorem P723799372553223018.correct : P723799372553223018.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P723799372553223018.f1, A154106.P723799372553223018.a, A154106.P16112730020414109564.a, A069894, A069894.P6207372148760126868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P3929167535186508180

`Δ[(n+1)*A054567(n+1)]`
-/

namespace A154106.P3929167535186508180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P3929167535186508180

namespace A154106

/-- `Δ[(n+1)*A054567(n+1)]` -/
def P3929167535186508180.Spec : Prop :=
  ∀ n, P3929167535186508180.a n = A154106 n

theorem P3929167535186508180.correct : P3929167535186508180.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P3929167535186508180.f1, A154106.P3929167535186508180.a, A154106.P16112730020414109564.a, A054567, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P5353373240559120599

`Δ[A005917(n+1)-(n+1)²]`
-/

namespace A154106.P5353373240559120599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P5353373240559120599

namespace A154106

/-- `Δ[A005917(n+1)-(n+1)²]` -/
def P5353373240559120599.Spec : Prop :=
  ∀ n, P5353373240559120599.a n = A154106 n

theorem P5353373240559120599.correct : P5353373240559120599.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P5353373240559120599.f1, A154106.P5353373240559120599.a, A154106.P16112730020414109564.a, A005917, A005917.P593194106963301078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P475808485707362055

`Δ[n*A054552(n+1)]`
-/

namespace A154106.P475808485707362055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P475808485707362055

namespace A154106

/-- `Δ[n*A054552(n+1)]` -/
def P475808485707362055.Spec : Prop :=
  ∀ n, P475808485707362055.a n = A154106 n

theorem P475808485707362055.correct : P475808485707362055.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P475808485707362055.f1, A154106.P475808485707362055.a, A154106.P16112730020414109564.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-! ## A154106.P9940765709165055356

`Δ[Δ[A060886(n)]-n²]`
-/

namespace A154106.P9940765709165055356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154106.P9940765709165055356

namespace A154106

/-- `Δ[Δ[A060886(n)]-n²]` -/
def P9940765709165055356.Spec : Prop :=
  ∀ n, P9940765709165055356.a n = A154106 n

theorem P9940765709165055356.correct : P9940765709165055356.Spec := by
  intro n
  simp only [A154106, Nat.add_sub_cancel, A154106.P9940765709165055356.f2, A154106.P9940765709165055356.f1, A154106.P9940765709165055356.a, A154106.P16112730020414109564.a, A060886, A060886.P3465628418501274115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154106

/-!
# A154107: A000110 / A014182: (A154107 convolved with A014182 = Bell numbers).

The programs for A154107, there is no canonical definition to state claims against.
-/

/-! ## A154107.P10762921418942398233

`A096008(A041281(n))+A000110(n)`
-/

namespace A154107.P10762921418942398233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A041281 n).toNat + A000110 n

end

end A154107.P10762921418942398233

/-! ## A154107.P12720832682476060909

`A283976(or(1, A150817(n)))`
-/

namespace A154107.P12720832682476060909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Int.lor 1 (A150817 n)).toNat

end

end A154107.P12720832682476060909

/-! ## A154107.P9194809632225520305

`or(1, A316211(A235925(n+1)))`
-/

namespace A154107.P9194809632225520305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316211 (A235925 (n + 1)).toNat)

end

end A154107.P9194809632225520305

/-!
# A154108: A000110 / (1,2,3,...): (convolved with (1,2,3,...) = Bell numbers).

The programs for A154108, there is no canonical definition to state claims against.
-/

/-! ## A154108.P6543334336600415072

`A154109(∑[n+1])`
-/

namespace A154108.P6543334336600415072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154108.P6543334336600415072

/-! ## A154108.P8427863183030957123

`and(floor(1/(γ-n)), A095149(∑[n+2]-2))`
-/

namespace A154108.P8427863183030957123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A095149 (∑ j ∈ Finset.range (n + 1), f1 j - 2))

end

end A154108.P8427863183030957123

/-! ## A154108.P8069918720756907672

`A106436(A055998(n))-A178333(n)`
-/

namespace A154108.P8069918720756907672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A055998 n).toNat - A178333 n

end

end A154108.P8069918720756907672

/-! ## A154108.P8862956886144065572

`Δ[Δ[A011968(n)%A000110(n)]]`
-/

namespace A154108.P8862956886144065572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011968 n) (A000110 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154108.P8862956886144065572

/-! ## A154108.P13138257284896820294

`Δ[Δ[A130191(A152947(n+1))]]`
-/

namespace A154108.P13138257284896820294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (A152947 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154108.P13138257284896820294

/-!
# A154109: Convolution triangle by rows, A004736 * (A154108 * 0^(n-k)); row sums = Bell numbers.

The programs for A154109, there is no canonical definition to state claims against.
-/

/-! ## A154109.P12847362515639685644

`A004736(n+1)*A154108(A002260(n+1))`
-/

namespace A154109.P12847362515639685644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A154108 (A002260 (n + 1)).toNat

end

end A154109.P12847362515639685644

/-! ## A154109.P17907905418493096313

`(A025581(n)+1)*A154108(A002260(n+1))`
-/

namespace A154109.P17907905418493096313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A154108 (A002260 (n + 1)).toNat

end

end A154109.P17907905418493096313

/-! ## A154109.P8743178409916458367

`sqrt(A055461(n+1))*A154108(A002260(n+1))`
-/

namespace A154109.P8743178409916458367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A154108 (A002260 (n + 1)).toNat : ℝ)

end

end A154109.P8743178409916458367

/-! ## A154109.P18093684526908026898

`(log2(A130321(n))+1)*A154108(A002260(n+1))`
-/

namespace A154109.P18093684526908026898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A130321 n : ℝ) + 1) * (A154108 (A002260 (n + 1)).toNat : ℝ)

end

end A154109.P18093684526908026898

/-! ## A154109.P3589158901493831009

`(1-∑[A167407(n)])*A154108(A002260(n+1))`
-/

namespace A154109.P3589158901493831009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * A154108 (A002260 (n + 1)).toNat

end

end A154109.P3589158901493831009

/-! ## A154109.P14955679748527168965

`(A099375(n)+1)/2*A154108(A002260(n+1))`
-/

namespace A154109.P14955679748527168965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1 : ℚ) / 2 * (A154108 (A002260 (n + 1)).toNat : ℚ)

end

end A154109.P14955679748527168965

/-! ## A154109.P12767746980358351704

`A000463(A099375(n))*A154108(A002260(n+1))`
-/

namespace A154109.P12767746980358351704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat * A154108 (A002260 (n + 1)).toNat

end

end A154109.P12767746980358351704

/-! ## A154109.P8721973362708574009

`A154108(A002260(n+1))/A007318(n)*A093375(n+1)`
-/

namespace A154109.P8721973362708574009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154108 (A002260 (n + 1)).toNat : ℚ) / (A007318 n : ℚ) * (A093375 (n + 1) : ℚ)

end

end A154109.P8721973362708574009

/-!
# A154111: Numbers n such that (n+1)^2 - n^3 is a (positive or negative) prime.

The programs for A154111, there is no canonical definition to state claims against.
-/

/-! ## A154111.P9777570444702703596

`eq[1, ∑{e}[A153257(n), #]]`
-/

namespace A154111.P9777570444702703596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153257 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154111.P9777570444702703596

/-! ## A154111.P4840879712712830786

`eq[1, A001222(abs((n+1)²-n^3))]`
-/

namespace A154111.P4840879712712830786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |((n + 1) ^ 2 : ℤ) - (n ^ 3 : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154111.P4840879712712830786

/-! ## A154111.P4206093552562428843

`eq[2, A000005(abs(A153257(n)))]`
-/

namespace A154111.P4206093552562428843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A153257 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154111.P4206093552562428843

/-!
# A154112: Numbers k such that (k+1)^3 - k^2 is prime.

The programs for A154112, there is no canonical definition to state claims against.
-/

/-! ## A154112.P7716549084274752898

`A093480(n+1)-1`
-/

namespace A154112.P7716549084274752898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093480 (n + 1) - 1

end

end A154112.P7716549084274752898

/-! ## A154112.P7777962685115210240

`floor(root(A154113(n+1), 3))`
-/

namespace A154112.P7777962685115210240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A154112.P7777962685115210240

/-! ## A154112.P11674562912985193322

`A154113(n+1)%A093480(n+1)`
-/

namespace A154112.P11674562912985193322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154113 (n + 1)) (A093480 (n + 1))

end

end A154112.P11674562912985193322

/-! ## A154112.P6391409212050739912

`A000027(round(root(A154113(n+1), 3))-1)`
-/

namespace A154112.P6391409212050739912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) - 1).toNat

end

end A154112.P6391409212050739912

/-! ## A154112.P2181653838513015638

`round(root(A154113(n+1), 3))-A057427(n+1)`
-/

namespace A154112.P2181653838513015638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) - A057427 (n + 1)

end

end A154112.P2181653838513015638

/-! ## A154112.P13290010510558910351

`round(root(A154113(n+1), 3))-A010127(2*n+1)`
-/

namespace A154112.P13290010510558910351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) - A010127 (2 * n + 1)

end

end A154112.P13290010510558910351

/-! ## A154112.P15902102529450624535

`2*n-(A005408(n)-round(root(A154113(n+1), 3)))`
-/

namespace A154112.P15902102529450624535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A005408 n - SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ))))

end

end A154112.P15902102529450624535

/-! ## A154112.P15220897655211910437

`A023443(A093480(n+1))`
-/

namespace A154112.P15220897655211910437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A093480 (n + 1)).toNat

end

end A154112.P15220897655211910437

/-! ## A154112.P3335599900564056698

`A254667(round(root(A154113(n+1), 3)))-1`
-/

namespace A154112.P3335599900564056698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat - 1

end

end A154112.P3335599900564056698

/-! ## A154112.P16363483669474100722

`A115638(2*n+1)+round(root(A154113(n+1), 3))`
-/

namespace A154112.P16363483669474100722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + SequenceMachineLib.roundAway ((A154113 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A154112.P16363483669474100722

/-!
# A154113: Primes of the form (n+1)^3 - n^2.

The programs for A154113, there is no canonical definition to state claims against.
-/

/-! ## A154113.P944474755849768203

`A261893(A154112(n+1))`
-/

namespace A154113.P944474755849768203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 (A154112 (n + 1)).toNat

end

end A154113.P944474755849768203

/-! ## A154113.P188224359555628601

`A261893(A093480(n+1)-1)`
-/

namespace A154113.P188224359555628601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 (A093480 (n + 1) - 1).toNat

end

end A154113.P188224359555628601

/-! ## A154113.P10625671198659932224

`A154112(n+1)+A069778(A093480(n+1)-1)`
-/

namespace A154113.P10625671198659932224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154112 (n + 1) + A069778 (A093480 (n + 1) - 1).toNat

end

end A154113.P10625671198659932224

/-! ## A154113.P2739724706003026840

`A270867(A093480(n+1)-1)-A154112(n+1)`
-/

namespace A154113.P2739724706003026840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 (A093480 (n + 1) - 1).toNat - A154112 (n + 1)

end

end A154113.P2739724706003026840

/-! ## A154113.P1708992416637856814

`A270867(A154112(n+1))-A023443(A093480(n+1))`
-/

namespace A154113.P1708992416637856814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 (A154112 (n + 1)).toNat - A023443 (A093480 (n + 1)).toNat

end

end A154113.P1708992416637856814

/-! ## A154113.P7358830930484914344

`A270867(A154112(n+1))-A154112(A000027(n+1))`
-/

namespace A154113.P7358830930484914344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 (A154112 (n + 1)).toNat - A154112 (A000027 (n + 1)).toNat

end

end A154113.P7358830930484914344

/-!
# A154115: Numbers n such that n + 3 is prime.

The programs for A154115, the canonical program `A154115.P220062109648616098` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154115 has offset 1).

The definition of A154115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A154115.P220062109648616098

`A086801(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154115

/-- `A086801(n+2)` -/
def P220062109648616098.Spec : Prop :=
  ∀ n, P220062109648616098.a n = A154115 (n + 1)

theorem P220062109648616098.correct : P220062109648616098.Spec := by
  intro n
  simp only [A154115, Nat.add_sub_cancel]

end A154115

/-! ## A154115.P10689511367684819787

`p?[2*n+1]-3`
-/

namespace A154115.P10689511367684819787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3

end

end A154115.P10689511367684819787

namespace A154115

/-- `p?[2*n+1]-3` -/
def P10689511367684819787.Spec : Prop :=
  ∀ n, P10689511367684819787.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P6802588831327234105

`abs(3-p?[n+1+n])`
-/

namespace A154115.P6802588831327234105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)|

end

end A154115.P6802588831327234105

namespace A154115

/-- `abs(3-p?[n+1+n])` -/
def P6802588831327234105.Spec : Prop :=
  ∀ n, P6802588831327234105.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P3141875951344572331

`lcm(2, 3-p?[n+1+n])`
-/

namespace A154115.P3141875951344572331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))

end

end A154115.P3141875951344572331

namespace A154115

/-- `lcm(2, 3-p?[n+1+n])` -/
def P3141875951344572331.Spec : Prop :=
  ∀ n, (P3141875951344572331.a n : ℤ) = A154115 (n + 1)

end A154115

/-! ## A154115.P1296946215840903751

`xor(1, p?[n+1+n]-2)`
-/

namespace A154115.P1296946215840903751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2)

end

end A154115.P1296946215840903751

namespace A154115

/-- `xor(1, p?[n+1+n]-2)` -/
def P1296946215840903751.Spec : Prop :=
  ∀ n, P1296946215840903751.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P18060541576169811955

`or(1, p?[n+1+n])-3`
-/

namespace A154115.P18060541576169811955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) - 3

end

end A154115.P18060541576169811955

namespace A154115

/-- `or(1, p?[n+1+n])-3` -/
def P18060541576169811955.Spec : Prop :=
  ∀ n, P18060541576169811955.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P14969151047221747742

`∑{d}[p?[n+1+n], #-2]`
-/

namespace A154115.P14969151047221747742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 2)

end

end A154115.P14969151047221747742

namespace A154115

/-- `∑{d}[p?[n+1+n], #-2]` -/
def P14969151047221747742.Spec : Prop :=
  ∀ n, P14969151047221747742.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P9906417660916472404

`∏{d}[p?[n+1+n], #]-3`
-/

namespace A154115.P9906417660916472404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 3

end

end A154115.P9906417660916472404

namespace A154115

/-- `∏{d}[p?[n+1+n], #]-3` -/
def P9906417660916472404.Spec : Prop :=
  ∀ n, P9906417660916472404.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P7858097674971858

`∑{p}[p?[n+1+n], #-3]`
-/

namespace A154115.P7858097674971858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 3)

end

end A154115.P7858097674971858

namespace A154115

/-- `∑{p}[p?[n+1+n], #-3]` -/
def P7858097674971858.Spec : Prop :=
  ∀ n, P7858097674971858.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P11030711483212819859

`∏{p}[p?[n+1+n], #-3]`
-/

namespace A154115.P11030711483212819859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 3)

end

end A154115.P11030711483212819859

namespace A154115

/-- `∏{p}[p?[n+1+n], #-3]` -/
def P11030711483212819859.Spec : Prop :=
  ∀ n, P11030711483212819859.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P11656384608032528618

`A118538(n+1)+3`
-/

namespace A154115.P11656384608032528618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + 3

end

end A154115.P11656384608032528618

namespace A154115

/-- `A118538(n+1)+3` -/
def P11656384608032528618.Spec : Prop :=
  ∀ n, P11656384608032528618.a n = A154115 (n + 1)

theorem P11656384608032528618.correct : P11656384608032528618.Spec := by
  intro n
  simp only [A154115, Nat.add_sub_cancel, A154115.P11656384608032528618.a, A154115.P220062109648616098.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A118538, A118538.P16184586288289674409.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154115

/-! ## A154115.P10645596634404369063

`A065091(n+1)-3`
-/

namespace A154115.P10645596634404369063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 3

end

end A154115.P10645596634404369063

namespace A154115

/-- `A065091(n+1)-3` -/
def P10645596634404369063.Spec : Prop :=
  ∀ n, P10645596634404369063.a n = A154115 (n + 1)

theorem P10645596634404369063.correct : P10645596634404369063.Spec := by
  intro n
  simp only [A154115, Nat.add_sub_cancel, A154115.P10645596634404369063.a, A154115.P220062109648616098.a, A065091, A065091.P6971844946592549357.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154115

/-! ## A154115.P61542987986953044

`2*A067076(n+1)`
-/

namespace A154115.P61542987986953044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067076 (n + 1)

end

end A154115.P61542987986953044

namespace A154115

/-- `2*A067076(n+1)` -/
def P61542987986953044.Spec : Prop :=
  ∀ n, P61542987986953044.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P9738955344594579591

`A048974(n+1)-5`
-/

namespace A154115.P9738955344594579591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 5

end

end A154115.P9738955344594579591

namespace A154115

/-- `A048974(n+1)-5` -/
def P9738955344594579591.Spec : Prop :=
  ∀ n, P9738955344594579591.a n = A154115 (n + 1)

theorem P9738955344594579591.correct : P9738955344594579591.Spec := by
  intro n
  simp only [A154115, Nat.add_sub_cancel, A154115.P9738955344594579591.a, A154115.P220062109648616098.a, A048974, A048974.P12620924037349992420.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154115

/-! ## A154115.P17998202179858215781

`∑[A001223(n+1)]-1`
-/

namespace A154115.P17998202179858215781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A154115.P17998202179858215781

namespace A154115

/-- `∑[A001223(n+1)]-1` -/
def P17998202179858215781.Spec : Prop :=
  ∀ n, P17998202179858215781.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P2016935401681742812

`Δ[A007504(n+1)]-3`
-/

namespace A154115.P2016935401681742812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A154115.P2016935401681742812

namespace A154115

/-- `Δ[A007504(n+1)]-3` -/
def P2016935401681742812.Spec : Prop :=
  ∀ n, P2016935401681742812.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P10365942704177752086

`∑[A046933(n+1)]+n`
-/

namespace A154115.P10365942704177752086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A154115.P10365942704177752086

namespace A154115

/-- `∑[A046933(n+1)]+n` -/
def P10365942704177752086.Spec : Prop :=
  ∀ n, P10365942704177752086.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P2916881945303501379

`2*(A005097(n+1)-1)`
-/

namespace A154115.P2916881945303501379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005097 (n + 1) - 1)

end

end A154115.P2916881945303501379

namespace A154115

/-- `2*(A005097(n+1)-1)` -/
def P2916881945303501379.Spec : Prop :=
  ∀ n, P2916881945303501379.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P2081455599292139705

`2*(A006254(n+1)-2)`
-/

namespace A154115.P2081455599292139705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006254 (n + 1) - 2)

end

end A154115.P2081455599292139705

namespace A154115

/-- `2*(A006254(n+1)-2)` -/
def P2081455599292139705.Spec : Prop :=
  ∀ n, P2081455599292139705.a n = A154115 (n + 1)

end A154115

/-! ## A154115.P8040926407183810431

`A014690(n+1)-A020705(n)`
-/

namespace A154115.P8040926407183810431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A020705 n

end

end A154115.P8040926407183810431

namespace A154115

/-- `A014690(n+1)-A020705(n)` -/
def P8040926407183810431.Spec : Prop :=
  ∀ n, P8040926407183810431.a n = A154115 (n + 1)

end A154115

/-!
# A154117: Expansion of (1 - x + 3*x^2)/((1-x)*(1-2*x)).

The programs for A154117, the canonical program `A154117.P13320697860926190376` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154117 has offset 0).

The definition of A154117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+3x^2)/(1-3x+2x^2))` (program `A154117.P13320697860926190376`, by `A154117.P13320697860926190376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154117.P13320697860926190376

`ogf((1-x+3x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154117

/-- `ogf((1-x+3x^2)/(1-3x+2x^2))` -/
def P13320697860926190376.Spec : Prop :=
  ∀ n, P13320697860926190376.a n = A154117 n

theorem P13320697860926190376.correct : P13320697860926190376.Spec := by
  intro n
  simp only [A154117]

end A154117

/-! ## A154117.P1307439887857274372

`2*a(n-1)+3` with `a(0)=1, a(1)=2`
-/

namespace A154117.P1307439887857274372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 3

end

end A154117.P1307439887857274372

namespace A154117

/-- `2*a(n-1)+3` -/
def P1307439887857274372.Spec : Prop :=
  ∀ n, (P1307439887857274372.a n : ℤ) = A154117 n

end A154117

/-! ## A154117.P6768886256799226524

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A154117.P6768886256799226524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154117.P6768886256799226524

namespace A154117

/-- `∑[2*a(n-1)]` -/
def P6768886256799226524.Spec : Prop :=
  ∀ n, (P6768886256799226524.a n : ℤ) = A154117 n

end A154117

/-! ## A154117.P7033764679949025563

`5-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A154117.P7033764679949025563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - 2 * (1 - a (n - 1))

end

end A154117.P7033764679949025563

namespace A154117

/-- `5-2*(1-a(n-1))` -/
def P7033764679949025563.Spec : Prop :=
  ∀ n, P7033764679949025563.a n = A154117 n

end A154117

/-! ## A154117.P2456348584368959214

`a(n-1)+a(n-1)+3` with `a(0)=1, a(1)=2`
-/

namespace A154117.P2456348584368959214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A154117.P2456348584368959214

namespace A154117

/-- `a(n-1)+a(n-1)+3` -/
def P2456348584368959214.Spec : Prop :=
  ∀ n, (P2456348584368959214.a n : ℤ) = A154117 n

end A154117

/-! ## A154117.P5272153568934429322

`3-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A154117.P5272153568934429322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A154117.P5272153568934429322

namespace A154117

/-- `3-a(n-1)/(1/2-1)` -/
def P5272153568934429322.Spec : Prop :=
  ∀ n, P5272153568934429322.a n = (A154117 n : ℚ)

end A154117

/-! ## A154117.P816950702789437715

`4-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A154117.P816950702789437715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (1 - a (n - 1) - a (n - 1))

end

end A154117.P816950702789437715

namespace A154117

/-- `4-floor(1-a(n-1)-a(n-1))` -/
def P816950702789437715.Spec : Prop :=
  ∀ n, P816950702789437715.a n = A154117 n

end A154117

/-! ## A154117.P13781416882556572428

`4-((1-a(n-1))%a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A154117.P13781416882556572428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 1))

end

end A154117.P13781416882556572428

namespace A154117

/-- `4-((1-a(n-1))%a(n-1)-a(n-1))` -/
def P13781416882556572428.Spec : Prop :=
  ∀ n, P13781416882556572428.a n = A154117 n

end A154117

/-! ## A154117.P7610568765920745597

`4-(gcd(3, a(n-1))-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A154117.P7610568765920745597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - ((Int.gcd 3 (a (n - 1)) : ℤ) - a (n - 1) - a (n - 1))

end

end A154117.P7610568765920745597

namespace A154117

/-- `4-(gcd(3, a(n-1))-a(n-1)-a(n-1))` -/
def P7610568765920745597.Spec : Prop :=
  ∀ n, P7610568765920745597.a n = A154117 n

end A154117

/-! ## A154117.P8343152306395519589

`A188589(n)+n`
-/

namespace A154117.P8343152306395519589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188589 n + (n : ℤ)

end

end A154117.P8343152306395519589

namespace A154117

/-- `A188589(n)+n` -/
def P8343152306395519589.Spec : Prop :=
  ∀ n, P8343152306395519589.a n = A154117 n

end A154117

/-! ## A154117.P16339249839225860679

`abs(2-A052549(n))`
-/

namespace A154117.P16339249839225860679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A052549 n|

end

end A154117.P16339249839225860679

namespace A154117

/-- `abs(2-A052549(n))` -/
def P16339249839225860679.Spec : Prop :=
  ∀ n, P16339249839225860679.a n = A154117 n

end A154117

/-! ## A154117.P8030663440568508615

`A084215(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154117.P8030663440568508615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A084215 n + a (n - 1)

end

end A154117.P8030663440568508615

namespace A154117

/-- `A084215(n)+a(n-1)` -/
def P8030663440568508615.Spec : Prop :=
  ∀ n, P8030663440568508615.a n = A154117 n

end A154117

/-! ## A154117.P2708025532011864009

`A146523(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A154117.P2708025532011864009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146523 (n - 1) + a (n - 1)

end

end A154117.P2708025532011864009

namespace A154117

/-- `A146523(n-1)+a(n-1)` -/
def P2708025532011864009.Spec : Prop :=
  ∀ n, P2708025532011864009.a n = A154117 n

end A154117

/-! ## A154117.P5544346195265299129

`3*A131051(n)-a(n-1)` with `a(0)=1`
-/

namespace A154117.P5544346195265299129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A131051 n - a (n - 1)

end

end A154117.P5544346195265299129

namespace A154117

/-- `3*A131051(n)-a(n-1)` -/
def P5544346195265299129.Spec : Prop :=
  ∀ n, P5544346195265299129.a n = A154117 n

end A154117

/-! ## A154117.P10151896011714617727

`A257113(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154117.P10151896011714617727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A257113 (n + 1) + a (n - 1)

end

end A154117.P10151896011714617727

namespace A154117

/-- `A257113(n+1)+a(n-1)` -/
def P10151896011714617727.Spec : Prop :=
  ∀ n, P10151896011714617727.a n = A154117 n

end A154117

/-! ## A154117.P10440463789204654713

`A020714(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154117.P10440463789204654713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020714 (n - 2) + a (n - 1)

end

end A154117.P10440463789204654713

namespace A154117

/-- `A020714(n-2)+a(n-1)` -/
def P10440463789204654713.Spec : Prop :=
  ∀ n, P10440463789204654713.a n = A154117 n

end A154117

/-! ## A154117.P3308189595201652787

`A287798(n+3)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154117.P3308189595201652787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A287798 (n + 3) + a (n - 1)

end

end A154117.P3308189595201652787

namespace A154117

/-- `A287798(n+3)+a(n-1)` -/
def P3308189595201652787.Spec : Prop :=
  ∀ n, P3308189595201652787.a n = A154117 n

end A154117

/-! ## A154117.P16022093747557402579

`∑[A111286(n+1)]-floor(2^(n-1))`
-/

namespace A154117.P16022093747557402579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A154117.P16022093747557402579

namespace A154117

/-- `∑[A111286(n+1)]-floor(2^(n-1))` -/
def P16022093747557402579.Spec : Prop :=
  ∀ n, P16022093747557402579.a n = A154117 n

end A154117

/-! ## A154117.P423802789999298691

`A192033(n)+A051049(n)`
-/

namespace A154117.P423802789999298691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192033 n + A051049 n

end

end A154117.P423802789999298691

namespace A154117

/-- `A192033(n)+A051049(n)` -/
def P423802789999298691.Spec : Prop :=
  ∀ n, P423802789999298691.a n = A154117 n

end A154117

/-! ## A154117.P11415708779886606573

`A296953(n)+A255047(n)`
-/

namespace A154117.P11415708779886606573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + A255047 n

end

end A154117.P11415708779886606573

namespace A154117

/-- `A296953(n)+A255047(n)` -/
def P11415708779886606573.Spec : Prop :=
  ∀ n, P11415708779886606573.a n = A154117 n

end A154117

/-!
# A154118: Expansion of (1 - x + 5x^2)/((1-x)*(1-2x)).

The programs for A154118, the canonical program `A154118.P1620604866688181424` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154118 has offset 0).

The definition of A154118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+5x^2)/(1-3x+2x^2))` (program `A154118.P1620604866688181424`, by `A154118.P1620604866688181424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154118.P1620604866688181424

`ogf((1-x+5x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154118

/-- `ogf((1-x+5x^2)/(1-3x+2x^2))` -/
def P1620604866688181424.Spec : Prop :=
  ∀ n, P1620604866688181424.a n = A154118 n

theorem P1620604866688181424.correct : P1620604866688181424.Spec := by
  intro n
  simp only [A154118]

end A154118

/-! ## A154118.P8073260152922169740

`2*a(n-1)+5` with `a(0)=1, a(1)=2`
-/

namespace A154118.P8073260152922169740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 5

end

end A154118.P8073260152922169740

namespace A154118

/-- `2*a(n-1)+5` -/
def P8073260152922169740.Spec : Prop :=
  ∀ n, (P8073260152922169740.a n : ℤ) = A154118 n

end A154118

/-! ## A154118.P3534919682105722388

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A154118.P3534919682105722388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154118.P3534919682105722388

namespace A154118

/-- `∑[2*a(n-1)]` -/
def P3534919682105722388.Spec : Prop :=
  ∀ n, (P3534919682105722388.a n : ℤ) = A154118 n

end A154118

/-! ## A154118.P11998397366526699905

`7-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A154118.P11998397366526699905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 - 2 * (1 - a (n - 1))

end

end A154118.P11998397366526699905

namespace A154118

/-- `7-2*(1-a(n-1))` -/
def P11998397366526699905.Spec : Prop :=
  ∀ n, P11998397366526699905.a n = A154118 n

end A154118

/-! ## A154118.P4453634332487992888

`a(n-1)+a(n-1)+5` with `a(0)=1, a(1)=2`
-/

namespace A154118.P4453634332487992888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 5)

end

end A154118.P4453634332487992888

namespace A154118

/-- `a(n-1)+a(n-1)+5` -/
def P4453634332487992888.Spec : Prop :=
  ∀ n, (P4453634332487992888.a n : ℤ) = A154118 n

end A154118

/-! ## A154118.P16081154179683789725

`A135092(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A154118.P16081154179683789725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135092 (n - 1) + a (n - 1)

end

end A154118.P16081154179683789725

namespace A154118

/-- `A135092(n-1)+a(n-1)` -/
def P16081154179683789725.Spec : Prop :=
  ∀ n, P16081154179683789725.a n = A154118 n

end A154118

/-! ## A154118.P16446048001515600748

`∑[A082505(n)]+ceil(2^(n-1))`
-/

namespace A154118.P16446048001515600748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A154118.P16446048001515600748

namespace A154118

/-- `∑[A082505(n)]+ceil(2^(n-1))` -/
def P16446048001515600748.Spec : Prop :=
  ∀ n, P16446048001515600748.a n = A154118 n

end A154118

/-! ## A154118.P17640211251235238232

`A125176(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154118.P17640211251235238232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A125176 (n + 1) + a (n - 1)

end

end A154118.P17640211251235238232

namespace A154118

/-- `A125176(n+1)+a(n-1)` -/
def P17640211251235238232.Spec : Prop :=
  ∀ n, P17640211251235238232.a n = A154118 n

end A154118

/-! ## A154118.P9707085462220236373

`A005009(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154118.P9707085462220236373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005009 (n - 2) + a (n - 1)

end

end A154118.P9707085462220236373

namespace A154118

/-- `A005009(n-2)+a(n-1)` -/
def P9707085462220236373.Spec : Prop :=
  ∀ n, P9707085462220236373.a n = A154118 n

end A154118

/-! ## A154118.P5116881179620732683

`A131130(n)+1-ceil(2^(n-1))`
-/

namespace A154118.P5116881179620732683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n + 1 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A154118.P5116881179620732683

namespace A154118

/-- `A131130(n)+1-ceil(2^(n-1))` -/
def P5116881179620732683.Spec : Prop :=
  ∀ n, P5116881179620732683.a n = A154118 n

end A154118

/-! ## A154118.P5212200174462374641

`A053208(n)-A158388(n)`
-/

namespace A154118.P5212200174462374641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053208 n - A158388 n

end

end A154118.P5212200174462374641

namespace A154118

/-- `A053208(n)-A158388(n)` -/
def P5212200174462374641.Spec : Prop :=
  ∀ n, P5212200174462374641.a n = A154118 n

end A154118

/-! ## A154118.P10778389850711687002

`A011782(n)+∑[A082505(n)]`
-/

namespace A154118.P10778389850711687002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154118.P10778389850711687002

namespace A154118

/-- `A011782(n)+∑[A082505(n)]` -/
def P10778389850711687002.Spec : Prop :=
  ∀ n, P10778389850711687002.a n = A154118 n

end A154118

/-! ## A154118.P11988018153798489069

`A153881(n+1)+A053208(n)`
-/

namespace A154118.P11988018153798489069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A053208 n

end

end A154118.P11988018153798489069

namespace A154118

/-- `A153881(n+1)+A053208(n)` -/
def P11988018153798489069.Spec : Prop :=
  ∀ n, P11988018153798489069.a n = A154118 n

end A154118

/-! ## A154118.P12568259323149130021

`2*A095121(n)-A094373(n)`
-/

namespace A154118.P12568259323149130021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095121 n - A094373 n

end

end A154118.P12568259323149130021

namespace A154118

/-- `2*A095121(n)-A094373(n)` -/
def P12568259323149130021.Spec : Prop :=
  ∀ n, P12568259323149130021.a n = A154118 n

end A154118

/-! ## A154118.P11474936572905932335

`A026622(n+1)-(A130130(2*n)+1)`
-/

namespace A154118.P11474936572905932335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 (n + 1) - (A130130 (2 * n) + 1)

end

end A154118.P11474936572905932335

namespace A154118

/-- `A026622(n+1)-(A130130(2*n)+1)` -/
def P11474936572905932335.Spec : Prop :=
  ∀ n, P11474936572905932335.a n = A154118 n

end A154118

/-! ## A154118.P2972040634497085826

`A000079(n)+A131130(n)-A083329(n)`
-/

namespace A154118.P2972040634497085826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A131130 n - A083329 n)

end

end A154118.P2972040634497085826

namespace A154118

/-- `A000079(n)+A131130(n)-A083329(n)` -/
def P2972040634497085826.Spec : Prop :=
  ∀ n, P2972040634497085826.a n = A154118 n

end A154118

/-! ## A154118.P7929576489200755837

`A083329(n)+A131128(n)-A000079(n)`
-/

namespace A154118.P7929576489200755837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + (A131128 n - A000079 n)

end

end A154118.P7929576489200755837

namespace A154118

/-- `A083329(n)+A131128(n)-A000079(n)` -/
def P7929576489200755837.Spec : Prop :=
  ∀ n, P7929576489200755837.a n = A154118 n

end A154118

/-! ## A154118.P15363357153532054119

`A000079(n)+A131128(n)-A094373(n)`
-/

namespace A154118.P15363357153532054119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A131128 n - A094373 n)

end

end A154118.P15363357153532054119

namespace A154118

/-- `A000079(n)+A131128(n)-A094373(n)` -/
def P15363357153532054119.Spec : Prop :=
  ∀ n, P15363357153532054119.a n = A154118 n

end A154118

/-! ## A154118.P5236108489397690273

`A094373(n)+A131130(n)-A000079(n)`
-/

namespace A154118.P5236108489397690273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + (A131130 n - A000079 n)

end

end A154118.P5236108489397690273

namespace A154118

/-- `A094373(n)+A131130(n)-A000079(n)` -/
def P5236108489397690273.Spec : Prop :=
  ∀ n, P5236108489397690273.a n = A154118 n

end A154118

/-!
# A154119: Numbers k such that binomial(3k,k) is odd and not divisible by 5.

The programs for A154119, there is no canonical definition to state claims against.
-/

/-! ## A154119.P3341457477565916609

`lt[A027052(3*n+2), A166040(A335465(n))]`
-/

namespace A154119.P3341457477565916609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166040 (A335465 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154119.P3341457477565916609

/-!
# A154120: Array read by antidiagonals: T(n,k) = (k+1)^n*(n+k)!.

The programs for A154120, the canonical program `A154120.P5175712412237171774` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154120 has offset 0).

The definition of A154120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154120.P6689949218689177892

`A098361(n)*A154372(n)`
-/

namespace A154120.P6689949218689177892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A154372 n

end

end A154120.P6689949218689177892

namespace A154120

/-- `A098361(n)*A154372(n)` -/
def P6689949218689177892.Spec : Prop :=
  ∀ n, P6689949218689177892.a n = A154120 n

end A154120

/-! ## A154120.P5175712412237171774

`A119502(n)*A152818(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A154120

/-- `A119502(n)*A152818(n)` -/
def P5175712412237171774.Spec : Prop :=
  ∀ n, P5175712412237171774.a n = A154120 n

theorem P5175712412237171774.correct : P5175712412237171774.Spec := by
  intro n
  simp only [A154120]

end A154120

/-! ## A154120.P10309919247325150531

`A094587(n)*A299504(n)`
-/

namespace A154120.P10309919247325150531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A299504 n

end

end A154120.P10309919247325150531

namespace A154120

/-- `A094587(n)*A299504(n)` -/
def P10309919247325150531.Spec : Prop :=
  ∀ n, P10309919247325150531.a n = A154120 n

end A154120

/-! ## A154120.P15603548969258321989

`A003056(n)!*A009998(n)`
-/

namespace A154120.P15603548969258321989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A009998 n

end

end A154120.P15603548969258321989

namespace A154120

/-- `A003056(n)!*A009998(n)` -/
def P15603548969258321989.Spec : Prop :=
  ∀ n, P15603548969258321989.a n = A154120 n

end A154120

/-! ## A154120.P16134530819616190494

`A009998(n)*A098361(A057944(n))`
-/

namespace A154120.P16134530819616190494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A098361 (A057944 n).toNat

end

end A154120.P16134530819616190494

namespace A154120

/-- `A009998(n)*A098361(A057944(n))` -/
def P16134530819616190494.Spec : Prop :=
  ∀ n, P16134530819616190494.a n = A154120 n

end A154120

/-! ## A154120.P17637549654675377510

`A009998(n)*A081123(A131507(n))`
-/

namespace A154120.P17637549654675377510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A081123 (A131507 n).toNat

end

end A154120.P17637549654675377510

namespace A154120

/-- `A009998(n)*A081123(A131507(n))` -/
def P17637549654675377510.Spec : Prop :=
  ∀ n, P17637549654675377510.a n = A154120 n

end A154120

/-!
# A154121: Signature permutation of a Catalan bijection: row 3655 of A089840.

The programs for A154121, there is no canonical definition to state claims against.
-/

/-! ## A154121.P4646899902665912087

`A129610(A074679(n))`
-/

namespace A154121.P4646899902665912087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 (A074679 n).toNat

end

end A154121.P4646899902665912087

/-! ## A154121.P16461320724503482976

`A154123(A129607(n))`
-/

namespace A154121.P16461320724503482976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154123 (A129607 n).toNat

end

end A154121.P16461320724503482976

/-! ## A154121.P11534253074580688545

`A073280(A154122(A073280(n)))`
-/

namespace A154121.P11534253074580688545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A154122 (A073280 n).toNat).toNat

end

end A154121.P11534253074580688545

/-! ## A154121.P7275762274141393199

`A154123(A154122(A154123(n)))`
-/

namespace A154121.P7275762274141393199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154123 (A154122 (A154123 n).toNat).toNat

end

end A154121.P7275762274141393199

/-! ## A154121.P12052046504561080803

`A129610(A073269(A074680(A073269(n))))`
-/

namespace A154121.P12052046504561080803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 (A073269 (A074680 (A073269 n).toNat).toNat).toNat

end

end A154121.P12052046504561080803

/-! ## A154121.P17949718713256678506

`A154123(A129605(A129605(A129605(n))))`
-/

namespace A154121.P17949718713256678506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154123 (A129605 (A129605 (A129605 n).toNat).toNat).toNat

end

end A154121.P17949718713256678506

/-! ## A154121.P8716156320074058563

`A129610(A073269(n)+n-A089850(n))`
-/

namespace A154121.P8716156320074058563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 (A073269 n + ((n : ℤ) - A089850 n)).toNat

end

end A154121.P8716156320074058563

/-! ## A154121.P7798589129375070393

`A129610(n-(A089850(n)-A073269(n)))`
-/

namespace A154121.P7798589129375070393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 ((n : ℤ) - (A089850 n - A073269 n)).toNat

end

end A154121.P7798589129375070393

/-! ## A154121.P10122890391810150089

`A057163(A089866(A057163(n)))`
-/

namespace A154121.P10122890391810150089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A089866 (A057163 n).toNat).toNat

end

end A154121.P10122890391810150089

/-! ## A154121.P1477683751536330664

`A069770(A089865(A069770(n)))`
-/

namespace A154121.P1477683751536330664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089865 (A069770 n).toNat).toNat

end

end A154121.P1477683751536330664

/-!
# A154122: Signature permutation of a Catalan bijection: row 3747 of A089840.

The programs for A154122, there is no canonical definition to state claims against.
-/

/-! ## A154122.P219368602358652488

`A074680(A129609(n))`
-/

namespace A154122.P219368602358652488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A129609 n).toNat

end

end A154122.P219368602358652488

/-! ## A154122.P14277723370394146449

`A129607(A154124(n))`
-/

namespace A154122.P14277723370394146449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A154124 n).toNat

end

end A154122.P14277723370394146449

/-! ## A154122.P14805702004121293967

`A129609(n)+n-A074679(n)`
-/

namespace A154122.P14805702004121293967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 n + ((n : ℤ) - A074679 n)

end

end A154122.P14805702004121293967

/-! ## A154122.P3090997172767642371

`A073280(A154121(A073280(n)))`
-/

namespace A154122.P3090997172767642371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A154121 (A073280 n).toNat).toNat

end

end A154122.P3090997172767642371

/-! ## A154122.P6567270039461966891

`A129609(n)+n-A129609(A154121(n))`
-/

namespace A154122.P6567270039461966891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 n + ((n : ℤ) - A129609 (A154121 n).toNat)

end

end A154122.P6567270039461966891

/-! ## A154122.P8561790175184784090

`A129607(A129607(n))-(A074679(n)-A129609(n))`
-/

namespace A154122.P8561790175184784090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A129607 n).toNat - (A074679 n - A129609 n)

end

end A154122.P8561790175184784090

/-! ## A154122.P7685268677532763406

`A129609(n)-(A074679(n)-A129609(A129610(n)))`
-/

namespace A154122.P7685268677532763406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 n - (A074679 n - A129609 (A129610 n).toNat)

end

end A154122.P7685268677532763406

/-! ## A154122.P2787149611670428020

`A089850(A154121(A089850(A154121(A089850(n)))))`
-/

namespace A154122.P2787149611670428020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A154121 (A089850 (A154121 (A089850 n).toNat).toNat).toNat).toNat

end

end A154122.P2787149611670428020

/-! ## A154122.P1021975437994699925

`A069770(A089866(A069770(n)))`
-/

namespace A154122.P1021975437994699925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089866 (A069770 n).toNat).toNat

end

end A154122.P1021975437994699925

/-!
# A154123: Signature permutation of a Catalan bijection: row 3656 of A089840.

The programs for A154123, there is no canonical definition to state claims against.
-/

/-! ## A154123.P2199370384940759953

`A154121(A129607(n))`
-/

namespace A154123.P2199370384940759953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A129607 n).toNat

end

end A154123.P2199370384940759953

/-! ## A154123.P9661875788291887729

`A154121(A154124(A154121(n)))`
-/

namespace A154123.P9661875788291887729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A154124 (A154121 n).toNat).toNat

end

end A154123.P9661875788291887729

/-! ## A154123.P9754851799931221245

`A154121(A129605(A129605(A129605(n))))`
-/

namespace A154123.P9754851799931221245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (A129605 (A129605 (A129605 n).toNat).toNat).toNat

end

end A154123.P9754851799931221245

/-! ## A154123.P15156517188517792590

`A154121(A130339(n)%A122312(3*n+1))`
-/

namespace A154123.P15156517188517792590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (Int.tmod (A130339 n) (A122312 (3 * n + 1))).toNat

end

end A154123.P15156517188517792590

/-! ## A154123.P11033897850187560838

`A154121(A130339(n))%A089853(3*n+2)`
-/

namespace A154123.P11033897850187560838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154121 (A130339 n).toNat) (A089853 (3 * n + 2))

end

end A154123.P11033897850187560838

/-!
# A154124: Signature permutation of a Catalan bijection: row 3748 of A089840.

The programs for A154124, there is no canonical definition to state claims against.
-/

/-! ## A154124.P17638988040420640804

`A129607(A154122(n))`
-/

namespace A154124.P17638988040420640804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A154122 n).toNat

end

end A154124.P17638988040420640804

/-! ## A154124.P1617620419299573346

`A129607(A129609(n)+n-A074679(n))`
-/

namespace A154124.P1617620419299573346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A129609 n + ((n : ℤ) - A074679 n)).toNat

end

end A154124.P1617620419299573346

/-! ## A154124.P2933075968942883487

`A129607(n-(A074679(n)-A129609(n)))`
-/

namespace A154124.P2933075968942883487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 ((n : ℤ) - (A074679 n - A129609 n)).toNat

end

end A154124.P2933075968942883487

/-! ## A154124.P2056082753304053270

`A154122(A154123(A154122(n)%A014137(n)))`
-/

namespace A154124.P2056082753304053270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (A154123 (Int.tmod (A154122 n) (A014137 n)).toNat).toNat

end

end A154124.P2056082753304053270

/-! ## A154124.P3980514847632038915

`A130340(A154122(n)%A225172(n))`
-/

namespace A154124.P3980514847632038915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130340 (Int.tmod (A154122 n) (A225172 n)).toNat

end

end A154124.P3980514847632038915

/-!
# A154125: Self-inverse signature permutation of a Catalan bijection: row 83 of A089840.

The programs for A154125, there is no canonical definition to state claims against.
-/

/-! ## A154125.P1409178410460512904

`A154126(A069770(n))`
-/

namespace A154125.P1409178410460512904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A069770 n).toNat

end

end A154125.P1409178410460512904

/-! ## A154125.P6307746549933998829

`A069770(A074680(A082351(n)))`
-/

namespace A154125.P6307746549933998829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074680 (A082351 n).toNat).toNat

end

end A154125.P6307746549933998829

/-! ## A154125.P10670899573048827754

`A082352(A069770(A074680(A069770(A074680(n)))))`
-/

namespace A154125.P10670899573048827754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082352 (A069770 (A074680 (A069770 (A074680 n).toNat).toNat).toNat).toNat

end

end A154125.P10670899573048827754

/-! ## A154125.P14442515445027000509

`A089855(A082351(n))`
-/

namespace A154125.P14442515445027000509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089855 (A082351 n).toNat

end

end A154125.P14442515445027000509

/-! ## A154125.P7739626822190069025

`A082354(A089851(n))`
-/

namespace A154125.P7739626822190069025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A089851 n).toNat

end

end A154125.P7739626822190069025

/-! ## A154125.P17381901609890771857

`A074680(A123495(n))`
-/

namespace A154125.P17381901609890771857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A123495 n).toNat

end

end A154125.P17381901609890771857

/-! ## A154125.P5067117364329608388

`A069770(A127378(A127379(n)))`
-/

namespace A154125.P5067117364329608388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A127378 (A127379 n).toNat).toNat

end

end A154125.P5067117364329608388

/-! ## A154125.P5837561217886252964

`A069770(A127378(A127380(A127380(A127380(n)))))`
-/

namespace A154125.P5837561217886252964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A127378 (A127380 (A127380 (A127380 n).toNat).toNat).toNat).toNat

end

end A154125.P5837561217886252964

/-! ## A154125.P2321673164723044305

`A089853(A082353(n))`
-/

namespace A154125.P2321673164723044305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089853 (A082353 n).toNat

end

end A154125.P2321673164723044305

/-! ## A154125.P5076778180509779888

`A123496(A074679(n))`
-/

namespace A154125.P5076778180509779888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123496 (A074679 n).toNat

end

end A154125.P5076778180509779888

/-!
# A154126: Self-inverse signature permutation of a Catalan bijection: row 183 of A089840.

The programs for A154126, there is no canonical definition to state claims against.
-/

/-! ## A154126.P11667686410604778077

`A082352(A074679(n))`
-/

namespace A154126.P11667686410604778077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082352 (A074679 n).toNat

end

end A154126.P11667686410604778077

/-! ## A154126.P14697791488734321914

`A082354(A074680(n))`
-/

namespace A154126.P14697791488734321914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A074680 n).toNat

end

end A154126.P14697791488734321914

/-! ## A154126.P5213771708923695790

`A074680(A082351(n))`
-/

namespace A154126.P5213771708923695790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A082351 n).toNat

end

end A154126.P5213771708923695790

/-! ## A154126.P7309088113812615019

`A074679(A082353(n))`
-/

namespace A154126.P7309088113812615019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A082353 n).toNat

end

end A154126.P7309088113812615019

/-! ## A154126.P10828863409880188210

`A154125(A069770(n))`
-/

namespace A154126.P10828863409880188210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A069770 n).toNat

end

end A154126.P10828863409880188210

/-! ## A154126.P7992093695185095251

`A057502(A057509(n))+n-A154125(n)`
-/

namespace A154126.P7992093695185095251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057509 n).toNat + ((n : ℤ) - A154125 n)

end

end A154126.P7992093695185095251

/-! ## A154126.P16097586250429933942

`A069768(A130341(n))+n-A154125(n)`
-/

namespace A154126.P16097586250429933942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130341 n).toNat + ((n : ℤ) - A154125 n)

end

end A154126.P16097586250429933942

/-! ## A154126.P10452055298571801871

`A130368(A130345(n))+n-A154125(n)`
-/

namespace A154126.P10452055298571801871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130368 (A130345 n).toNat + ((n : ℤ) - A154125 n)

end

end A154126.P10452055298571801871

/-! ## A154126.P17346179620431418347

`A123496(A089857(n))`
-/

namespace A154126.P17346179620431418347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123496 (A089857 n).toNat

end

end A154126.P17346179620431418347

/-! ## A154126.P13860558421606028983

`A123713(A123495(n))`
-/

namespace A154126.P13860558421606028983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A123495 n).toNat

end

end A154126.P13860558421606028983

/-!
# A154127: Period 6: repeat [1, 2, 5, 8, 7, 4].

The programs for A154127, the canonical program `A154127.P1703957402214527792` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154127 has offset 0).

The definition of A154127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154127.P1703957402214527792

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154127

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P1703957402214527792.Spec : Prop :=
  ∀ n, P1703957402214527792.a n = A154127 n

theorem P1703957402214527792.correct : P1703957402214527792.Spec := by
  intro n
  simp only [A154127]

end A154127

/-!
# A154128: a(n) = 5^n*(n+4)!/n!.

The programs for A154128, the canonical program `A154128.P7872891340682016042` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154128 has offset 0).

The definition of A154128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154128.P7872891340682016042

`5^n*(n+4)*(n+3)*(n+2)*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154128

/-- `5^n*(n+4)*(n+3)*(n+2)*(n+1)` -/
def P7872891340682016042.Spec : Prop :=
  ∀ n, (P7872891340682016042.a n : ℤ) = A154128 n

theorem P7872891340682016042.correct : P7872891340682016042.Spec := by
  intro n
  simp only [A154128]

end A154128

/-! ## A154128.P14696053276879485481

`5^n*(n+4)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154128.P14696053276879485481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n * Nat.factorial (n + 4) : ℚ) / (Nat.factorial n : ℚ)

end

end A154128.P14696053276879485481

namespace A154128

/-- `5^n*(n+4)!/n!` -/
def P14696053276879485481.Spec : Prop :=
  ∀ n, P14696053276879485481.a n = (A154128 n : ℚ)

end A154128

/-! ## A154128.P5623855291591545979

`25*A036071(n)-A036071(n)`
-/

namespace A154128.P5623855291591545979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A036071 n - A036071 n

end

end A154128.P5623855291591545979

namespace A154128

/-- `25*A036071(n)-A036071(n)` -/
def P5623855291591545979.Spec : Prop :=
  ∀ n, P5623855291591545979.a n = A154128 n

theorem P5623855291591545979.correct : P5623855291591545979.Spec := by
  intro n
  simp only [A154128, Nat.add_sub_cancel, A154128.P5623855291591545979.a, A154128.P7872891340682016042.a, A036071, A036071.P13945972300625865625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154128

/-! ## A154128.P16682744510906407295

`A218016(A155212(n)+12)`
-/

namespace A154128.P16682744510906407295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (A155212 n + 12).toNat

end

end A154128.P16682744510906407295

namespace A154128

/-- `A218016(A155212(n)+12)` -/
def P16682744510906407295.Spec : Prop :=
  ∀ n, P16682744510906407295.a n = A154128 n

end A154128

/-! ## A154128.P2785489365624216960

`A218016(A056000(n)+14)`
-/

namespace A154128.P2785489365624216960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (A056000 n + 14).toNat

end

end A154128.P2785489365624216960

namespace A154128

/-- `A218016(A056000(n)+14)` -/
def P2785489365624216960.Spec : Prop :=
  ∀ n, P2785489365624216960.a n = A154128 n

end A154128

/-! ## A154128.P15915181026603918454

`A218016(eq[4, A002262(n)])`
-/

namespace A154128.P15915181026603918454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154128.P15915181026603918454

namespace A154128

/-- `A218016(eq[4, A002262(n)])` -/
def P15915181026603918454.Spec : Prop :=
  ∀ n, P15915181026603918454.a n = A154128 n

end A154128

/-! ## A154128.P12678855971890661500

`A218016(eq[16, A059268(n)])`
-/

namespace A154128.P12678855971890661500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154128.P12678855971890661500

namespace A154128

/-- `A218016(eq[16, A059268(n)])` -/
def P12678855971890661500.Spec : Prop :=
  ∀ n, P12678855971890661500.a n = A154128 n

end A154128

/-! ## A154128.P16073704505213389727

`A218016(A051936(n+4)+13)`
-/

namespace A154128.P16073704505213389727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (A051936 (n + 4) + 13).toNat

end

end A154128.P16073704505213389727

namespace A154128

/-- `A218016(A051936(n+4)+13)` -/
def P16073704505213389727.Spec : Prop :=
  ∀ n, P16073704505213389727.a n = A154128 n

end A154128

/-! ## A154128.P16717476680583769980

`A218016(eq[5, A002260(n+1)])`
-/

namespace A154128.P16717476680583769980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154128.P16717476680583769980

namespace A154128

/-- `A218016(eq[5, A002260(n+1)])` -/
def P16717476680583769980.Spec : Prop :=
  ∀ n, P16717476680583769980.a n = A154128 n

end A154128

/-!
# A154129: a(n) = (A132207(n)-1)/3.

The programs for A154129, there is no canonical definition to state claims against.
-/

/-! ## A154129.P9768526770684764112

`(A132207(n)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154129.P9768526770684764112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132207 n - 1 : ℚ) / 3

end

end A154129.P9768526770684764112

/-! ## A154129.P8381237995073482744

`floor(A132207(n)/3)`
-/

namespace A154129.P8381237995073482744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132207 n : ℚ) / 3⌋

end

end A154129.P8381237995073482744

/-! ## A154129.P8025919121146134037

`A002264(A132207(n))`
-/

namespace A154129.P8025919121146134037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A132207 n).toNat

end

end A154129.P8025919121146134037

/-! ## A154129.P9516712343631445126

`round(A132207(n)/3)%A000124(n)`
-/

namespace A154129.P9516712343631445126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3)) (A000124 n)

end

end A154129.P9516712343631445126

/-! ## A154129.P7425539703784585457

`∑{d}[round(A132207(n)/3), A000010(#)]`
-/

namespace A154129.P7425539703784585457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A154129.P7425539703784585457

/-! ## A154129.P3578945264724164352

`A000007(n+1)+round(A132207(n)/3)`
-/

namespace A154129.P3578945264724164352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3)

end

end A154129.P3578945264724164352

/-! ## A154129.P7628355194145849516

`A007318(C(2, n))*round(A132207(n)/3)`
-/

namespace A154129.P7628355194145849516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3)

end

end A154129.P7628355194145849516

/-! ## A154129.P9969393079759520498

`round(A132207(n)/3)^A000108(C(2, n))`
-/

namespace A154129.P9969393079759520498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3) : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A154129.P9969393079759520498

/-! ## A154129.P9058216793595630979

`2*round(A132207(n)/3)/A001222(2*A006530(n+1))`
-/

namespace A154129.P9058216793595630979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.roundAway ((A132207 n : ℚ) / 3) : ℚ) / (A001222 (2 * A006530 (n + 1)).toNat : ℚ)

end

end A154129.P9058216793595630979

/-!
# A154130: Exponents m with decreasing fractional part of (4/3)^m.

The programs for A154130, there is no canonical definition to state claims against.
-/

/-! ## A154130.P9770727551020241061

`p?[A152034(n+2)]%(3^(n+1))`
-/

namespace A154130.P9770727551020241061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (3 ^ (n + 1) : ℤ)

end

end A154130.P9770727551020241061

/-!
# A154131: Numbers n such that the fractional part of (4/3)^n is less than 1/n.

The programs for A154131, there is no canonical definition to state claims against.
-/

/-! ## A154131.P8954591414982453714

`∑[A014963(A350478(∑{d}[n+1, #]))]`
-/

namespace A154131.P8954591414982453714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A350478 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154131.P8954591414982453714

/-!
# A154132: Minimal exponents m such that the fractional part of (4/3)^m increases monotonically (when starting with m=1).

The programs for A154132, there is no canonical definition to state claims against.
-/

/-! ## A154132.P2626991756378680871

`∑[A323081(A292480(ceil(2^(n-1))))]`
-/

namespace A154132.P2626991756378680871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323081 (A292480 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154132.P2626991756378680871

/-!
# A154133: Numbers k such that the fractional part of (4/3)^k is greater than 1-(1/k).

The programs for A154133, there is no canonical definition to state claims against.
-/

/-! ## A154133.P650573997114775295

`A154132(n+1)%A000040(A071314(n)+1)`
-/

namespace A154133.P650573997114775295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154132 (n + 1)) (A000040 (A071314 n + 1).toNat)

end

end A154133.P650573997114775295

/-!
# A154134: Greatest number m such that the fractional part of (4/3)^A154130(n) <= 1/m.

The programs for A154134, there is no canonical definition to state claims against.
-/

/-! ## A154134.P1961647318053851835

`∑{d}[n+1, 2^(#-1)]+p?[∑[A332304(n)]]`
-/

namespace A154134.P1961647318053851835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

end

end A154134.P1961647318053851835

/-! ## A154134.P8230903198177693564

`or(record[A070730(n)], A118355(n+1))`
-/

namespace A154134.P8230903198177693564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A118355 (n + 1))

end

end A154134.P8230903198177693564

/-!
# A154138: Indices k such that 3 plus the k-th triangular number is a perfect square.

The programs for A154138, the canonical program `A154138.P16631486895031572867` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154138 has offset 1).

The definition of A154138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154138.P16631486895031572867

`6*a(n-2)-a(n-4)+2` with `a(0)=1, a(1)=3, a(2)=12, a(3)=22`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154138

/-- `6*a(n-2)-a(n-4)+2` -/
def P16631486895031572867.Spec : Prop :=
  ∀ n, P16631486895031572867.a n = A154138 (n + 1)

theorem P16631486895031572867.correct : P16631486895031572867.Spec := by
  intro n
  simp only [A154138, Nat.add_sub_cancel]

end A154138

/-! ## A154138.P9758906280343188378

`A216134(n)+A077241(n)`
-/

namespace A154138.P9758906280343188378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + A077241 n

end

end A154138.P9758906280343188378

namespace A154138

/-- `A216134(n)+A077241(n)` -/
def P9758906280343188378.Spec : Prop :=
  ∀ n, P9758906280343188378.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P18423825463355549767

`A006451(n)+A001333(or(1, n))`
-/

namespace A154138.P18423825463355549767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + A001333 (Nat.lor 1 n)

end

end A154138.P18423825463355549767

namespace A154138

/-- `A006451(n)+A001333(or(1, n))` -/
def P18423825463355549767.Spec : Prop :=
  ∀ n, P18423825463355549767.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P16275813108272094459

`A216162(2*n+1)+A077241(n)`
-/

namespace A154138.P16275813108272094459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 1) + A077241 n

end

end A154138.P16275813108272094459

namespace A154138

/-- `A216162(2*n+1)+A077241(n)` -/
def P16275813108272094459.Spec : Prop :=
  ∀ n, P16275813108272094459.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P2137041380921847222

`A006451(n)+A002315(A004526(n))`
-/

namespace A154138.P2137041380921847222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + A002315 (A004526 n).toNat

end

end A154138.P2137041380921847222

namespace A154138

/-- `A006451(n)+A002315(A004526(n))` -/
def P2137041380921847222.Spec : Prop :=
  ∀ n, P2137041380921847222.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P12051326939014231689

`A046090(A004526(n))+2*A216134(n)`
-/

namespace A154138.P12051326939014231689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 (A004526 n).toNat + 2 * A216134 n

end

end A154138.P12051326939014231689

namespace A154138

/-- `A046090(A004526(n))+2*A216134(n)` -/
def P12051326939014231689.Spec : Prop :=
  ∀ n, P12051326939014231689.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P14780123526875120498

`A006451(n)+A077444(A008619(n))/2`
-/

namespace A154138.P14780123526875120498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 n : ℚ) + (A077444 (A008619 n).toNat : ℚ) / 2

end

end A154138.P14780123526875120498

namespace A154138

/-- `A006451(n)+A077444(A008619(n))/2` -/
def P14780123526875120498.Spec : Prop :=
  ∀ n, P14780123526875120498.a n = (A154138 (n + 1) : ℚ)

end A154138

/-! ## A154138.P2150968923179314906

`A006451(n)+A002203(A109613(n))/2`
-/

namespace A154138.P2150968923179314906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 n : ℚ) + (A002203 (A109613 n).toNat : ℚ) / 2

end

end A154138.P2150968923179314906

namespace A154138

/-- `A006451(n)+A002203(A109613(n))/2` -/
def P2150968923179314906.Spec : Prop :=
  ∀ n, P2150968923179314906.a n = (A154138 (n + 1) : ℚ)

end A154138

/-! ## A154138.P3904848486775110115

`A154141(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154138.P3904848486775110115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154138.P3904848486775110115

namespace A154138

/-- `A154141(n+1)+A006451(n)-A154139(n+1)` -/
def P3904848486775110115.Spec : Prop :=
  ∀ n, P3904848486775110115.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P5164358905709586267

`floor(A154152(n+1)/3)`
-/

namespace A154138.P5164358905709586267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154152 (n + 1) : ℚ) / 3⌋

end

end A154138.P5164358905709586267

namespace A154138

/-- `floor(A154152(n+1)/3)` -/
def P5164358905709586267.Spec : Prop :=
  ∀ n, P5164358905709586267.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P8190985051166758917

`(A387549(n+1)-1)/2`
-/

namespace A154138.P8190985051166758917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387549 (n + 1) - 1 : ℚ) / 2

end

end A154138.P8190985051166758917

namespace A154138

/-- `(A387549(n+1)-1)/2` -/
def P8190985051166758917.Spec : Prop :=
  ∀ n, P8190985051166758917.a n = (A154138 (n + 1) : ℚ)

end A154138

/-! ## A154138.P7731536114316831095

`A154144(n+1)-A077446(n+1)`
-/

namespace A154138.P7731536114316831095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) - A077446 (n + 1)

end

end A154138.P7731536114316831095

namespace A154138

/-- `A154144(n+1)-A077446(n+1)` -/
def P7731536114316831095.Spec : Prop :=
  ∀ n, P7731536114316831095.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P451886340736581587

`A154152(n+1)-A387549(n+1)`
-/

namespace A154138.P451886340736581587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A387549 (n + 1)

end

end A154138.P451886340736581587

namespace A154138

/-- `A154152(n+1)-A387549(n+1)` -/
def P451886340736581587.Spec : Prop :=
  ∀ n, P451886340736581587.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P15445227092904725852

`(A154140(n+1)+A006451(n))/2`
-/

namespace A154138.P15445227092904725852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154140 (n + 1) + A006451 n : ℚ) / 2

end

end A154138.P15445227092904725852

namespace A154138

/-- `(A154140(n+1)+A006451(n))/2` -/
def P15445227092904725852.Spec : Prop :=
  ∀ n, P15445227092904725852.a n = (A154138 (n + 1) : ℚ)

end A154138

/-! ## A154138.P5752056687285886689

`A154154(n+1)-2*A077446(n+1)`
-/

namespace A154138.P5752056687285886689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) - 2 * A077446 (n + 1)

end

end A154138.P5752056687285886689

namespace A154138

/-- `A154154(n+1)-2*A077446(n+1)` -/
def P5752056687285886689.Spec : Prop :=
  ∀ n, P5752056687285886689.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P12814614883820182948

`2*A154140(n+1)-A154143(n+1)`
-/

namespace A154138.P12814614883820182948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154140 (n + 1) - A154143 (n + 1)

end

end A154138.P12814614883820182948

namespace A154138

/-- `2*A154140(n+1)-A154143(n+1)` -/
def P12814614883820182948.Spec : Prop :=
  ∀ n, P12814614883820182948.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P11391976829065957963

`A154140(n+1)-A002315(A004526(n))`
-/

namespace A154138.P11391976829065957963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) - A002315 (A004526 n).toNat

end

end A154138.P11391976829065957963

namespace A154138

/-- `A154140(n+1)-A002315(A004526(n))` -/
def P11391976829065957963.Spec : Prop :=
  ∀ n, P11391976829065957963.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P5498765486955889204

`A154143(n+1)-A077444(A008619(n))`
-/

namespace A154138.P5498765486955889204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) - A077444 (A008619 n).toNat

end

end A154138.P5498765486955889204

namespace A154138

/-- `A154143(n+1)-A077444(A008619(n))` -/
def P5498765486955889204.Spec : Prop :=
  ∀ n, P5498765486955889204.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P9484227238362255851

`A154140(n+1)-A001333(A109613(n))`
-/

namespace A154138.P9484227238362255851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) - A001333 (A109613 n).toNat

end

end A154138.P9484227238362255851

namespace A154138

/-- `A154140(n+1)-A001333(A109613(n))` -/
def P9484227238362255851.Spec : Prop :=
  ∀ n, P9484227238362255851.a n = A154138 (n + 1)

end A154138

/-! ## A154138.P190455038450733112

`A154143(n+1)-A002203(A109613(n))`
-/

namespace A154138.P190455038450733112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) - A002203 (A109613 n).toNat

end

end A154138.P190455038450733112

namespace A154138

/-- `A154143(n+1)-A002203(A109613(n))` -/
def P190455038450733112.Spec : Prop :=
  ∀ n, P190455038450733112.a n = A154138 (n + 1)

end A154138

/-!
# A154139: Indices k such that 4 plus the k-th triangular number is a perfect square.

The programs for A154139, the canonical program `A154139.P8711321547081482942` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154139 has offset 1).

The definition of A154139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154139.P8711321547081482942

`6*a(n-2)-a(n-4)+2` with `a(0)=0, a(1)=6, a(2)=9, a(3)=39`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154139

/-- `6*a(n-2)-a(n-4)+2` -/
def P8711321547081482942.Spec : Prop :=
  ∀ n, P8711321547081482942.a n = A154139 (n + 1)

theorem P8711321547081482942.correct : P8711321547081482942.Spec := by
  intro n
  simp only [A154139, Nat.add_sub_cancel]

end A154139

/-! ## A154139.P3368928304252088068

`A154141(n+1)-A002315(A004526(n))`
-/

namespace A154139.P3368928304252088068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) - A002315 (A004526 n).toNat

end

end A154139.P3368928304252088068

namespace A154139

/-- `A154141(n+1)-A002315(A004526(n))` -/
def P3368928304252088068.Spec : Prop :=
  ∀ n, P3368928304252088068.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P14252650607735959264

`A006451(n)+A078057(n)-A123335(n)`
-/

namespace A154139.P14252650607735959264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (A078057 n - A123335 n)

end

end A154139.P14252650607735959264

namespace A154139

/-- `A006451(n)+A078057(n)-A123335(n)` -/
def P14252650607735959264.Spec : Prop :=
  ∀ n, P14252650607735959264.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P8288533126272668176

`A159582(n)+A216134(n)-A006452(n)`
-/

namespace A154139.P8288533126272668176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159582 n + (A216134 n - A006452 n)

end

end A154139.P8288533126272668176

namespace A154139

/-- `A159582(n)+A216134(n)-A006452(n)` -/
def P8288533126272668176.Spec : Prop :=
  ∀ n, P8288533126272668176.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P3564985089831518017

`A154142(n+1)+A123335(n)-A078057(n)`
-/

namespace A154139.P3564985089831518017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A123335 n - A078057 n)

end

end A154139.P3564985089831518017

namespace A154139

/-- `A154142(n+1)+A123335(n)-A078057(n)` -/
def P3564985089831518017.Spec : Prop :=
  ∀ n, P3564985089831518017.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P9017873352208521134

`A154141(n+1)+A006451(n)-A154138(n+1)`
-/

namespace A154139.P9017873352208521134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + (A006451 n - A154138 (n + 1))

end

end A154139.P9017873352208521134

namespace A154139

/-- `A154141(n+1)+A006451(n)-A154138(n+1)` -/
def P9017873352208521134.Spec : Prop :=
  ∀ n, P9017873352208521134.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P10050729294311709214

`A154154(n+1)-A387549(n+1)`
-/

namespace A154139.P10050729294311709214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) - A387549 (n + 1)

end

end A154139.P10050729294311709214

namespace A154139

/-- `A154154(n+1)-A387549(n+1)` -/
def P10050729294311709214.Spec : Prop :=
  ∀ n, P10050729294311709214.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P9324949620334365917

`(A154142(n+1)+A006451(n))/2`
-/

namespace A154139.P9324949620334365917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154142 (n + 1) + A006451 n : ℚ) / 2

end

end A154139.P9324949620334365917

namespace A154139

/-- `(A154142(n+1)+A006451(n))/2` -/
def P9324949620334365917.Spec : Prop :=
  ∀ n, P9324949620334365917.a n = (A154139 (n + 1) : ℚ)

end A154139

/-! ## A154139.P1253368554116412898

`A154144(n+1)-2*A002315(A004526(n))`
-/

namespace A154139.P1253368554116412898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) - 2 * A002315 (A004526 n).toNat

end

end A154139.P1253368554116412898

namespace A154139

/-- `A154144(n+1)-2*A002315(A004526(n))` -/
def P1253368554116412898.Spec : Prop :=
  ∀ n, P1253368554116412898.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P1372324824468534401

`A006451(n)+A154146(n)-A154142(n+1)`
-/

namespace A154139.P1372324824468534401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (A154146 n - A154142 (n + 1))

end

end A154139.P1372324824468534401

namespace A154139

/-- `A006451(n)+A154146(n)-A154142(n+1)` -/
def P1372324824468534401.Spec : Prop :=
  ∀ n, P1372324824468534401.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P9258829834520948736

`A154138(n+1)+A154141(n+1)-A154140(n+1)`
-/

namespace A154139.P9258829834520948736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154141 (n + 1) - A154140 (n + 1))

end

end A154139.P9258829834520948736

namespace A154139

/-- `A154138(n+1)+A154141(n+1)-A154140(n+1)` -/
def P9258829834520948736.Spec : Prop :=
  ∀ n, P9258829834520948736.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P15208005276450964303

`A154142(n+1)+A154143(n+1)-A154147(n+1)`
-/

namespace A154139.P15208005276450964303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154143 (n + 1) - A154147 (n + 1))

end

end A154139.P15208005276450964303

namespace A154139

/-- `A154142(n+1)+A154143(n+1)-A154147(n+1)` -/
def P15208005276450964303.Spec : Prop :=
  ∀ n, P15208005276450964303.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P16604684270918434851

`2*A154142(n+1)-A154146(n)`
-/

namespace A154139.P16604684270918434851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154142 (n + 1) - A154146 n

end

end A154139.P16604684270918434851

namespace A154139

/-- `2*A154142(n+1)-A154146(n)` -/
def P16604684270918434851.Spec : Prop :=
  ∀ n, P16604684270918434851.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P13227247365686359274

`A154149(n+2)%A001333(n+2)`
-/

namespace A154139.P13227247365686359274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154149 (n + 2)) (A001333 (n + 2))

end

end A154139.P13227247365686359274

namespace A154139

/-- `A154149(n+2)%A001333(n+2)` -/
def P13227247365686359274.Spec : Prop :=
  ∀ n, P13227247365686359274.a n = A154139 (n + 1)

end A154139

/-! ## A154139.P3434952388648776179

`A006451(n+3)%A266506(A047550(n+2))`
-/

namespace A154139.P3434952388648776179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006451 (n + 3)) (A266506 (A047550 (n + 2)).toNat)

end

end A154139.P3434952388648776179

namespace A154139

/-- `A006451(n+3)%A266506(A047550(n+2))` -/
def P3434952388648776179.Spec : Prop :=
  ∀ n, P3434952388648776179.a n = A154139 (n + 1)

end A154139

/-!
# A154140: Indices k such that 6 plus the k-th triangular number is a perfect square.

The programs for A154140, the canonical program `A154140.P18073990900715975994` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154140 has offset 1).

The definition of A154140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154140.P18073990900715975994

`6*a(n-2)-a(n-4)+2` with `a(0)=2, a(1)=4, a(2)=19, a(3)=29`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154140

/-- `6*a(n-2)-a(n-4)+2` -/
def P18073990900715975994.Spec : Prop :=
  ∀ n, P18073990900715975994.a n = A154140 (n + 1)

theorem P18073990900715975994.correct : P18073990900715975994.Spec := by
  intro n
  simp only [A154140, Nat.add_sub_cancel]

end A154140

/-! ## A154140.P15066365366291978371

`A154147(n+1)-A077446(n+1)`
-/

namespace A154140.P15066365366291978371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - A077446 (n + 1)

end

end A154140.P15066365366291978371

namespace A154140

/-- `A154147(n+1)-A077446(n+1)` -/
def P15066365366291978371.Spec : Prop :=
  ∀ n, P15066365366291978371.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P14750602374456160276

`2*A154138(n+1)-A006451(n)`
-/

namespace A154140.P14750602374456160276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154138 (n + 1) - A006451 n

end

end A154140.P14750602374456160276

namespace A154140

/-- `2*A154138(n+1)-A006451(n)` -/
def P14750602374456160276.Spec : Prop :=
  ∀ n, P14750602374456160276.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P14000802181295584227

`A077444(A008619(n))+A006451(n)`
-/

namespace A154140.P14000802181295584227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (A008619 n).toNat + A006451 n

end

end A154140.P14000802181295584227

namespace A154140

/-- `A077444(A008619(n))+A006451(n)` -/
def P14000802181295584227.Spec : Prop :=
  ∀ n, P14000802181295584227.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P4003338506677176293

`A006451(n)+A002203(A109613(n))`
-/

namespace A154140.P4003338506677176293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + A002203 (A109613 n).toNat

end

end A154140.P4003338506677176293

namespace A154140

/-- `A006451(n)+A002203(A109613(n))` -/
def P4003338506677176293.Spec : Prop :=
  ∀ n, P4003338506677176293.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P4184000045515254301

`A154138(A109613(n))+A078057(n)`
-/

namespace A154140.P4184000045515254301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (A109613 n).toNat + A078057 n

end

end A154140.P4184000045515254301

namespace A154140

/-- `A154138(A109613(n))+A078057(n)` -/
def P4184000045515254301.Spec : Prop :=
  ∀ n, P4184000045515254301.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P1386311973364707721

`A301383(A004526(n))+A077442(n)`
-/

namespace A154140.P1386311973364707721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301383 (A004526 n).toNat + A077442 n

end

end A154140.P1386311973364707721

namespace A154140

/-- `A301383(A004526(n))+A077442(n)` -/
def P1386311973364707721.Spec : Prop :=
  ∀ n, P1386311973364707721.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P14932533021572754688

`A154143(n+1)+A123335(A109613(n))`
-/

namespace A154140.P14932533021572754688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + A123335 (A109613 n).toNat

end

end A154140.P14932533021572754688

namespace A154140

/-- `A154143(n+1)+A123335(A109613(n))` -/
def P14932533021572754688.Spec : Prop :=
  ∀ n, P14932533021572754688.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P1407102399935061363

`A154143(n+1)-A078057(A052928(n))`
-/

namespace A154140.P1407102399935061363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) - A078057 (A052928 n).toNat

end

end A154140.P1407102399935061363

namespace A154140

/-- `A154143(n+1)-A078057(A052928(n))` -/
def P1407102399935061363.Spec : Prop :=
  ∀ n, P1407102399935061363.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P8662615984182891733

`A006451(n)+2*A002315(A004526(n))`
-/

namespace A154140.P8662615984182891733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + 2 * A002315 (A004526 n).toNat

end

end A154140.P8662615984182891733

namespace A154140

/-- `A006451(n)+2*A002315(A004526(n))` -/
def P8662615984182891733.Spec : Prop :=
  ∀ n, P8662615984182891733.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P14140297038619377331

`A154143(n+1)-A077444(A008619(n))/2`
-/

namespace A154140.P14140297038619377331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154143 (n + 1) : ℚ) - (A077444 (A008619 n).toNat : ℚ) / 2

end

end A154140.P14140297038619377331

namespace A154140

/-- `A154143(n+1)-A077444(A008619(n))/2` -/
def P14140297038619377331.Spec : Prop :=
  ∀ n, P14140297038619377331.a n = (A154140 (n + 1) : ℚ)

end A154140

/-! ## A154140.P5765888282712563234

`A154144(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154140.P5765888282712563234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154140.P5765888282712563234

namespace A154140

/-- `A154144(n+1)+A006451(n)-A154139(n+1)` -/
def P5765888282712563234.Spec : Prop :=
  ∀ n, P5765888282712563234.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P14167384583236972711

`A216134(n)+A266504(n+1)*A266505(n+1)`
-/

namespace A154140.P14167384583236972711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + A266504 (n + 1) * A266505 (n + 1)

end

end A154140.P14167384583236972711

namespace A154140

/-- `A216134(n)+A266504(n+1)*A266505(n+1)` -/
def P14167384583236972711.Spec : Prop :=
  ∀ n, P14167384583236972711.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P1728798537577234444

`A154138(n+1)+A154141(n+1)-A154139(n+1)`
-/

namespace A154140.P1728798537577234444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154141 (n + 1) - A154139 (n + 1))

end

end A154140.P1728798537577234444

namespace A154140

/-- `A154138(n+1)+A154141(n+1)-A154139(n+1)` -/
def P1728798537577234444.Spec : Prop :=
  ∀ n, P1728798537577234444.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P8003300081223496166

`A154139(n+1)+A154144(n+1)-A154142(n+1)`
-/

namespace A154140.P8003300081223496166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154144 (n + 1) - A154142 (n + 1))

end

end A154140.P8003300081223496166

namespace A154140

/-- `A154139(n+1)+A154144(n+1)-A154142(n+1)` -/
def P8003300081223496166.Spec : Prop :=
  ∀ n, P8003300081223496166.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P11262312439467346482

`A154139(n+1)+A154153(n+1)-A154152(n+1)`
-/

namespace A154140.P11262312439467346482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154153 (n + 1) - A154152 (n + 1))

end

end A154140.P11262312439467346482

namespace A154140

/-- `A154139(n+1)+A154153(n+1)-A154152(n+1)` -/
def P11262312439467346482.Spec : Prop :=
  ∀ n, P11262312439467346482.a n = A154140 (n + 1)

end A154140

/-! ## A154140.P9323520577029902273

`A154143(A109613(n))+A123335(A004442(n))`
-/

namespace A154140.P9323520577029902273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (A109613 n).toNat + A123335 (A004442 n).toNat

end

end A154140.P9323520577029902273

namespace A154140

/-- `A154143(A109613(n))+A123335(A004442(n))` -/
def P9323520577029902273.Spec : Prop :=
  ∀ n, P9323520577029902273.a n = A154140 (n + 1)

end A154140

/-!
# A154141: Indices k such that 8 plus the k-th triangular number is a perfect square.

The programs for A154141, the canonical program `A154141.P15143111333930356715` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154141 has offset 1).

The definition of A154141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154141.P15143111333930356715

`6*a(n-2)-a(n-4)+2` with `a(0)=1, a(1)=7, a(2)=16, a(3)=46`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154141

/-- `6*a(n-2)-a(n-4)+2` -/
def P15143111333930356715.Spec : Prop :=
  ∀ n, P15143111333930356715.a n = A154141 (n + 1)

theorem P15143111333930356715.correct : P15143111333930356715.Spec := by
  intro n
  simp only [A154141, Nat.add_sub_cancel]

end A154141

/-! ## A154141.P3963629091961583283

`3*A006451(n)+1`
-/

namespace A154141.P3963629091961583283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006451 n + 1

end

end A154141.P3963629091961583283

namespace A154141

/-- `3*A006451(n)+1` -/
def P3963629091961583283.Spec : Prop :=
  ∀ n, P3963629091961583283.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P2095940332070337561

`3*A364319(n+1)-2`
-/

namespace A154141.P2095940332070337561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A364319 (n + 1) - 2

end

end A154141.P2095940332070337561

namespace A154141

/-- `3*A364319(n+1)-2` -/
def P2095940332070337561.Spec : Prop :=
  ∀ n, P2095940332070337561.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P2795553868694763356

`3*(A077446(n+1)-1)/2+1`
-/

namespace A154141.P2795553868694763356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A077446 (n + 1) - 1 : ℚ) / 2) + 1

end

end A154141.P2795553868694763356

namespace A154141

/-- `3*(A077446(n+1)-1)/2+1` -/
def P2795553868694763356.Spec : Prop :=
  ∀ n, P2795553868694763356.a n = (A154141 (n + 1) : ℚ)

end A154141

/-! ## A154141.P11294559309246722118

`A077446(n+1)+A006451(n)`
-/

namespace A154141.P11294559309246722118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + A006451 n

end

end A154141.P11294559309246722118

namespace A154141

/-- `A077446(n+1)+A006451(n)` -/
def P11294559309246722118.Spec : Prop :=
  ∀ n, P11294559309246722118.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P10017805497959843084

`A276601(n+1)+A216134(n)`
-/

namespace A154141.P10017805497959843084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276601 (n + 1) + A216134 n

end

end A154141.P10017805497959843084

namespace A154141

/-- `A276601(n+1)+A216134(n)` -/
def P10017805497959843084.Spec : Prop :=
  ∀ n, P10017805497959843084.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P15877483249827084919

`3*(A048739(n)-A079496(n))+1`
-/

namespace A154141.P15877483249827084919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048739 n - A079496 n) + 1

end

end A154141.P15877483249827084919

namespace A154141

/-- `3*(A048739(n)-A079496(n))+1` -/
def P15877483249827084919.Spec : Prop :=
  ∀ n, P15877483249827084919.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P1329814461747712732

`A154138(n+1)+A154139(n+1)-A006451(n)`
-/

namespace A154141.P1329814461747712732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154139 (n + 1) - A006451 n)

end

end A154141.P1329814461747712732

namespace A154141

/-- `A154138(n+1)+A154139(n+1)-A006451(n)` -/
def P1329814461747712732.Spec : Prop :=
  ∀ n, P1329814461747712732.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P16247533509403025766

`A077446(n+1)+A216134(n+1)-A006452(n+1)`
-/

namespace A154141.P16247533509403025766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A216134 (n + 1) - A006452 (n + 1))

end

end A154141.P16247533509403025766

namespace A154141

/-- `A077446(n+1)+A216134(n+1)-A006452(n+1)` -/
def P16247533509403025766.Spec : Prop :=
  ∀ n, P16247533509403025766.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P4254895169707305333

`A154138(n+1)+A154142(n+1)-A154139(n+1)`
-/

namespace A154141.P4254895169707305333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154142 (n + 1) - A154139 (n + 1))

end

end A154141.P4254895169707305333

namespace A154141

/-- `A154138(n+1)+A154142(n+1)-A154139(n+1)` -/
def P4254895169707305333.Spec : Prop :=
  ∀ n, P4254895169707305333.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P4898254445995984694

`A077446(n+1)+A077446(n+1)-A364319(n+1)`
-/

namespace A154141.P4898254445995984694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A077446 (n + 1) - A364319 (n + 1))

end

end A154141.P4898254445995984694

namespace A154141

/-- `A077446(n+1)+A077446(n+1)-A364319(n+1)` -/
def P4898254445995984694.Spec : Prop :=
  ∀ n, P4898254445995984694.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P5968169555620476480

`A154149(n+1)-A077446(n+1)`
-/

namespace A154141.P5968169555620476480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) - A077446 (n + 1)

end

end A154141.P5968169555620476480

namespace A154141

/-- `A154149(n+1)-A077446(n+1)` -/
def P5968169555620476480.Spec : Prop :=
  ∀ n, P5968169555620476480.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P9523470937697546323

`A006451(n+2)-A077447(n+1)`
-/

namespace A154141.P9523470937697546323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 2) - A077447 (n + 1)

end

end A154141.P9523470937697546323

namespace A154141

/-- `A006451(n+2)-A077447(n+1)` -/
def P9523470937697546323.Spec : Prop :=
  ∀ n, P9523470937697546323.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P1507325497645155248

`(A154149(n+1)+A006451(n))/2`
-/

namespace A154141.P1507325497645155248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154149 (n + 1) + A006451 n : ℚ) / 2

end

end A154141.P1507325497645155248

namespace A154141

/-- `(A154149(n+1)+A006451(n))/2` -/
def P1507325497645155248.Spec : Prop :=
  ∀ n, P1507325497645155248.a n = (A154141 (n + 1) : ℚ)

end A154141

/-! ## A154141.P9233583438326778551

`(A154144(n+1)+A154139(n+1))/2`
-/

namespace A154141.P9233583438326778551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154144 (n + 1) + A154139 (n + 1) : ℚ) / 2

end

end A154141.P9233583438326778551

namespace A154141

/-- `(A154144(n+1)+A154139(n+1))/2` -/
def P9233583438326778551.Spec : Prop :=
  ∀ n, P9233583438326778551.a n = (A154141 (n + 1) : ℚ)

end A154141

/-! ## A154141.P6130744155152343989

`A154144(n+1)-A002315(A004526(n))`
-/

namespace A154141.P6130744155152343989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) - A002315 (A004526 n).toNat

end

end A154141.P6130744155152343989

namespace A154141

/-- `A154144(n+1)-A002315(A004526(n))` -/
def P6130744155152343989.Spec : Prop :=
  ∀ n, P6130744155152343989.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P8383590091370941981

`A133326(n+1)-(A001652(A004526(n))+1)`
-/

namespace A154141.P8383590091370941981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133326 (n + 1) - (A001652 (A004526 n).toNat + 1)

end

end A154141.P8383590091370941981

namespace A154141

/-- `A133326(n+1)-(A001652(A004526(n))+1)` -/
def P8383590091370941981.Spec : Prop :=
  ∀ n, P8383590091370941981.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P16375380346571064295

`A154147(n+1)-2*A002315(A004526(n))`
-/

namespace A154141.P16375380346571064295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - 2 * A002315 (A004526 n).toNat

end

end A154141.P16375380346571064295

namespace A154141

/-- `A154147(n+1)-2*A002315(A004526(n))` -/
def P16375380346571064295.Spec : Prop :=
  ∀ n, P16375380346571064295.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P2767401345328673077

`A154147(n+1)-2*A001333(A109613(n))`
-/

namespace A154141.P2767401345328673077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - 2 * A001333 (A109613 n).toNat

end

end A154141.P2767401345328673077

namespace A154141

/-- `A154147(n+1)-2*A001333(A109613(n))` -/
def P2767401345328673077.Spec : Prop :=
  ∀ n, P2767401345328673077.a n = A154141 (n + 1)

end A154141

/-! ## A154141.P15995246391427387563

`A154139(n+1)+A154140(n+1)-A154138(n+1)`
-/

namespace A154141.P15995246391427387563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154140 (n + 1) - A154138 (n + 1))

end

end A154141.P15995246391427387563

namespace A154141

/-- `A154139(n+1)+A154140(n+1)-A154138(n+1)` -/
def P15995246391427387563.Spec : Prop :=
  ∀ n, P15995246391427387563.a n = A154141 (n + 1)

end A154141

/-!
# A154142: Indices k such that 9 plus the k-th triangular number is a perfect square.

The programs for A154142, the canonical program `A154142.P1208268630004971440` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154142 has offset 1).

The definition of A154142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154142.P1208268630004971440

`6*a(n-2)-a(n-4)+2` with `a(0)=0, a(1)=10, a(2)=13, a(3)=63`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154142

/-- `6*a(n-2)-a(n-4)+2` -/
def P1208268630004971440.Spec : Prop :=
  ∀ n, P1208268630004971440.a n = A154142 (n + 1)

theorem P1208268630004971440.correct : P1208268630004971440.Spec := by
  intro n
  simp only [A154142, Nat.add_sub_cancel]

end A154142

/-! ## A154142.P3872726552684064974

`A154139(n+1)+A154139(n+1)-A006451(n)`
-/

namespace A154142.P3872726552684064974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154139 (n + 1) - A006451 n)

end

end A154142.P3872726552684064974

namespace A154142

/-- `A154139(n+1)+A154139(n+1)-A006451(n)` -/
def P3872726552684064974.Spec : Prop :=
  ∀ n, P3872726552684064974.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P7452103112030280533

`A154139(n+1)+A154141(n+1)-A154138(n+1)`
-/

namespace A154142.P7452103112030280533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154141 (n + 1) - A154138 (n + 1))

end

end A154142.P7452103112030280533

namespace A154142

/-- `A154139(n+1)+A154141(n+1)-A154138(n+1)` -/
def P7452103112030280533.Spec : Prop :=
  ∀ n, P7452103112030280533.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P10512694137710567636

`A154150(n+1)-A077446(n+1)`
-/

namespace A154142.P10512694137710567636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154150 (n + 1) - A077446 (n + 1)

end

end A154142.P10512694137710567636

namespace A154142

/-- `A154150(n+1)-A077446(n+1)` -/
def P10512694137710567636.Spec : Prop :=
  ∀ n, P10512694137710567636.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P5642381086691189256

`2*A154139(n+1)-A006451(n)`
-/

namespace A154142.P5642381086691189256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154139 (n + 1) - A006451 n

end

end A154142.P5642381086691189256

namespace A154142

/-- `2*A154139(n+1)-A006451(n)` -/
def P5642381086691189256.Spec : Prop :=
  ∀ n, P5642381086691189256.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P12948735260773144390

`2*A154141(n+1)-A154140(n+1)`
-/

namespace A154142.P12948735260773144390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154141 (n + 1) - A154140 (n + 1)

end

end A154142.P12948735260773144390

namespace A154142

/-- `2*A154141(n+1)-A154140(n+1)` -/
def P12948735260773144390.Spec : Prop :=
  ∀ n, P12948735260773144390.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P14595172476234043789

`A154146(n)-A143608(A052928(n+1))`
-/

namespace A154142.P14595172476234043789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n - A143608 (A052928 (n + 1)).toNat

end

end A154142.P14595172476234043789

namespace A154142

/-- `A154146(n)-A143608(A052928(n+1))` -/
def P14595172476234043789.Spec : Prop :=
  ∀ n, P14595172476234043789.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P10136884030008367709

`A123335(n)+A154146(n)-A078057(n)`
-/

namespace A154142.P10136884030008367709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n + (A154146 n - A078057 n)

end

end A154142.P10136884030008367709

namespace A154142

/-- `A123335(n)+A154146(n)-A078057(n)` -/
def P10136884030008367709.Spec : Prop :=
  ∀ n, P10136884030008367709.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P1157735795604586920

`A154149(n+1)-2*A002315(A004526(n))`
-/

namespace A154142.P1157735795604586920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) - 2 * A002315 (A004526 n).toNat

end

end A154142.P1157735795604586920

namespace A154142

/-- `A154149(n+1)-2*A002315(A004526(n))` -/
def P1157735795604586920.Spec : Prop :=
  ∀ n, P1157735795604586920.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P3844072408122900660

`A154149(n+1)-2*A001333(A109613(n))`
-/

namespace A154142.P3844072408122900660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) - 2 * A001333 (A109613 n).toNat

end

end A154142.P3844072408122900660

namespace A154142

/-- `A154149(n+1)-2*A001333(A109613(n))` -/
def P3844072408122900660.Spec : Prop :=
  ∀ n, P3844072408122900660.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P15533018588022153035

`A154149(n+1)-2*A078057(A052928(n))`
-/

namespace A154142.P15533018588022153035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) - 2 * A078057 (A052928 n).toNat

end

end A154142.P15533018588022153035

namespace A154142

/-- `A154149(n+1)-2*A078057(A052928(n))` -/
def P15533018588022153035.Spec : Prop :=
  ∀ n, P15533018588022153035.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P2350038986090408003

`A006451(n)+A154146(n)-A154139(n+1)`
-/

namespace A154142.P2350038986090408003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (A154146 n - A154139 (n + 1))

end

end A154142.P2350038986090408003

namespace A154142

/-- `A006451(n)+A154146(n)-A154139(n+1)` -/
def P2350038986090408003.Spec : Prop :=
  ∀ n, P2350038986090408003.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P2179850706131921765

`A154149(n+1)+A006451(n)-A154140(n+1)`
-/

namespace A154142.P2179850706131921765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + (A006451 n - A154140 (n + 1))

end

end A154142.P2179850706131921765

namespace A154142

/-- `A154149(n+1)+A006451(n)-A154140(n+1)` -/
def P2179850706131921765.Spec : Prop :=
  ∀ n, P2179850706131921765.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P11525434422222720336

`A154139(n+1)+A154147(n+1)-A154143(n+1)`
-/

namespace A154142.P11525434422222720336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154147 (n + 1) - A154143 (n + 1))

end

end A154142.P11525434422222720336

namespace A154142

/-- `A154139(n+1)+A154147(n+1)-A154143(n+1)` -/
def P11525434422222720336.Spec : Prop :=
  ∀ n, P11525434422222720336.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P8488600648034271757

`A154147(n+1)+A154147(n+1)-A154153(n+1)`
-/

namespace A154142.P8488600648034271757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + (A154147 (n + 1) - A154153 (n + 1))

end

end A154142.P8488600648034271757

namespace A154142

/-- `A154147(n+1)+A154147(n+1)-A154153(n+1)` -/
def P8488600648034271757.Spec : Prop :=
  ∀ n, P8488600648034271757.a n = A154142 (n + 1)

end A154142

/-! ## A154142.P5243238273586525455

`(A154151(n+1)+A006451(n))/2`
-/

namespace A154142.P5243238273586525455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154151 (n + 1) + A006451 n : ℚ) / 2

end

end A154142.P5243238273586525455

namespace A154142

/-- `(A154151(n+1)+A006451(n))/2` -/
def P5243238273586525455.Spec : Prop :=
  ∀ n, P5243238273586525455.a n = (A154142 (n + 1) : ℚ)

end A154142

/-! ## A154142.P5468635097907650619

`(A154146(n)+A154139(n+1))/2`
-/

namespace A154142.P5468635097907650619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154146 n + A154139 (n + 1) : ℚ) / 2

end

end A154142.P5468635097907650619

namespace A154142

/-- `(A154146(n)+A154139(n+1))/2` -/
def P5468635097907650619.Spec : Prop :=
  ∀ n, P5468635097907650619.a n = (A154142 (n + 1) : ℚ)

end A154142

/-! ## A154142.P17483041604306903307

`2*A154147(n+1)-A154153(n+1)`
-/

namespace A154142.P17483041604306903307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154147 (n + 1) - A154153 (n + 1)

end

end A154142.P17483041604306903307

namespace A154142

/-- `2*A154147(n+1)-A154153(n+1)` -/
def P17483041604306903307.Spec : Prop :=
  ∀ n, P17483041604306903307.a n = A154142 (n + 1)

end A154142

/-!
# A154143: Indices k such that 10 plus the k-th triangular number is a perfect square.

The programs for A154143, the canonical program `A154143.P4214936294251827874` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154143 has offset 1).

The definition of A154143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154143.P4214936294251827874

`6*a(n-2)-a(n-4)+2` with `a(0)=3, a(1)=5, a(2)=26, a(3)=36`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154143

/-- `6*a(n-2)-a(n-4)+2` -/
def P4214936294251827874.Spec : Prop :=
  ∀ n, P4214936294251827874.a n = A154143 (n + 1)

theorem P4214936294251827874.correct : P4214936294251827874.Spec := by
  intro n
  simp only [A154143, Nat.add_sub_cancel]

end A154143

/-! ## A154143.P7650369256551736778

`A154152(n+1)-A077446(n+1)`
-/

namespace A154143.P7650369256551736778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A077446 (n + 1)

end

end A154143.P7650369256551736778

namespace A154143

/-- `A154152(n+1)-A077446(n+1)` -/
def P7650369256551736778.Spec : Prop :=
  ∀ n, P7650369256551736778.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P3256000520936255303

`(A154153(n+1)+A006451(n))/2`
-/

namespace A154143.P3256000520936255303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154153 (n + 1) + A006451 n : ℚ) / 2

end

end A154143.P3256000520936255303

namespace A154143

/-- `(A154153(n+1)+A006451(n))/2` -/
def P3256000520936255303.Spec : Prop :=
  ∀ n, P3256000520936255303.a n = (A154143 (n + 1) : ℚ)

end A154143

/-! ## A154143.P10680453711885582060

`2*A154140(n+1)-A154138(n+1)`
-/

namespace A154143.P10680453711885582060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154140 (n + 1) - A154138 (n + 1)

end

end A154143.P10680453711885582060

namespace A154143

/-- `2*A154140(n+1)-A154138(n+1)` -/
def P10680453711885582060.Spec : Prop :=
  ∀ n, P10680453711885582060.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P4273237161458048064

`A077446(n+1)+A006451(A004442(n))`
-/

namespace A154143.P4273237161458048064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + A006451 (A004442 n).toNat

end

end A154143.P4273237161458048064

namespace A154143

/-- `A077446(n+1)+A006451(A004442(n))` -/
def P4273237161458048064.Spec : Prop :=
  ∀ n, P4273237161458048064.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P15379659065410406207

`A154140(n+1)+A002315(A004526(n))`
-/

namespace A154143.P15379659065410406207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + A002315 (A004526 n).toNat

end

end A154143.P15379659065410406207

namespace A154143

/-- `A154140(n+1)+A002315(A004526(n))` -/
def P15379659065410406207.Spec : Prop :=
  ∀ n, P15379659065410406207.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P2940737923304920209

`A154140(n+1)+A001333(A109613(n))`
-/

namespace A154143.P2940737923304920209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + A001333 (A109613 n).toNat

end

end A154143.P2940737923304920209

namespace A154143

/-- `A154140(n+1)+A001333(A109613(n))` -/
def P2940737923304920209.Spec : Prop :=
  ∀ n, P2940737923304920209.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P12281587204716499346

`A154140(n+1)+A078057(A052928(n))`
-/

namespace A154143.P12281587204716499346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + A078057 (A052928 n).toNat

end

end A154143.P12281587204716499346

namespace A154143

/-- `A154140(n+1)+A078057(A052928(n))` -/
def P12281587204716499346.Spec : Prop :=
  ∀ n, P12281587204716499346.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P13519410019677419946

`A154138(n+1)+A154140(n+1)-A006451(n)`
-/

namespace A154143.P13519410019677419946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154140 (n + 1) - A006451 n)

end

end A154143.P13519410019677419946

namespace A154143

/-- `A154138(n+1)+A154140(n+1)-A006451(n)` -/
def P13519410019677419946.Spec : Prop :=
  ∀ n, P13519410019677419946.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P7104945345294772849

`A154147(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154143.P7104945345294772849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154143.P7104945345294772849

namespace A154143

/-- `A154147(n+1)+A006451(n)-A154139(n+1)` -/
def P7104945345294772849.Spec : Prop :=
  ∀ n, P7104945345294772849.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P12306626506108429471

`A154138(n+1)+A154144(n+1)-A154139(n+1)`
-/

namespace A154143.P12306626506108429471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154144 (n + 1) - A154139 (n + 1))

end

end A154143.P12306626506108429471

namespace A154143

/-- `A154138(n+1)+A154144(n+1)-A154139(n+1)` -/
def P12306626506108429471.Spec : Prop :=
  ∀ n, P12306626506108429471.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P2144262436663647960

`A154140(n+1)+A154141(n+1)-A154139(n+1)`
-/

namespace A154143.P2144262436663647960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + (A154141 (n + 1) - A154139 (n + 1))

end

end A154143.P2144262436663647960

namespace A154143

/-- `A154140(n+1)+A154141(n+1)-A154139(n+1)` -/
def P2144262436663647960.Spec : Prop :=
  ∀ n, P2144262436663647960.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P2019451300856221720

`A154139(n+1)+A154153(n+1)-A154147(n+1)`
-/

namespace A154143.P2019451300856221720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154153 (n + 1) - A154147 (n + 1))

end

end A154143.P2019451300856221720

namespace A154143

/-- `A154139(n+1)+A154153(n+1)-A154147(n+1)` -/
def P2019451300856221720.Spec : Prop :=
  ∀ n, P2019451300856221720.a n = A154143 (n + 1)

end A154143

/-! ## A154143.P16338968346076644159

`A154138(n+1)+A387549(n+1)-A077446(n+1)`
-/

namespace A154143.P16338968346076644159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A387549 (n + 1) - A077446 (n + 1))

end

end A154143.P16338968346076644159

namespace A154143

/-- `A154138(n+1)+A387549(n+1)-A077446(n+1)` -/
def P16338968346076644159.Spec : Prop :=
  ∀ n, P16338968346076644159.a n = A154143 (n + 1)

end A154143

/-!
# A154144: Indices k such that 13 plus the k-th triangular number is a perfect square.

The programs for A154144, the canonical program `A154144.P4668697629490694785` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154144 has offset 1).

The definition of A154144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154144.P4668697629490694785

`6*a(n-2)-a(n-4)+2` with `a(0)=2, a(1)=8, a(2)=23, a(3)=53`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154144

/-- `6*a(n-2)-a(n-4)+2` -/
def P4668697629490694785.Spec : Prop :=
  ∀ n, P4668697629490694785.a n = A154144 (n + 1)

theorem P4668697629490694785.correct : P4668697629490694785.Spec := by
  intro n
  simp only [A154144, Nat.add_sub_cancel]

end A154144

/-! ## A154144.P7961264678369165742

`A006451(n)+2*A077442(n)`
-/

namespace A154144.P7961264678369165742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + 2 * A077442 n

end

end A154144.P7961264678369165742

namespace A154144

/-- `A006451(n)+2*A077442(n)` -/
def P7961264678369165742.Spec : Prop :=
  ∀ n, P7961264678369165742.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P2695041831225678239

`A154138(n+1)+A077446(n+1)`
-/

namespace A154144.P2695041831225678239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + A077446 (n + 1)

end

end A154144.P2695041831225678239

namespace A154144

/-- `A154138(n+1)+A077446(n+1)` -/
def P2695041831225678239.Spec : Prop :=
  ∀ n, P2695041831225678239.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P7420587185138955854

`A154154(n+1)-A077446(n+1)`
-/

namespace A154144.P7420587185138955854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) - A077446 (n + 1)

end

end A154144.P7420587185138955854

namespace A154144

/-- `A154154(n+1)-A077446(n+1)` -/
def P7420587185138955854.Spec : Prop :=
  ∀ n, P7420587185138955854.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P2279594790398786279

`2*A154141(n+1)-A154139(n+1)`
-/

namespace A154144.P2279594790398786279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154141 (n + 1) - A154139 (n + 1)

end

end A154144.P2279594790398786279

namespace A154144

/-- `2*A154141(n+1)-A154139(n+1)` -/
def P2279594790398786279.Spec : Prop :=
  ∀ n, P2279594790398786279.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P4191541260799355955

`A133326(n+1)+A001652(A004526(n))`
-/

namespace A154144.P4191541260799355955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133326 (n + 1) + A001652 (A004526 n).toNat

end

end A154144.P4191541260799355955

namespace A154144

/-- `A133326(n+1)+A001652(A004526(n))` -/
def P4191541260799355955.Spec : Prop :=
  ∀ n, P4191541260799355955.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P7445058693468433318

`A154141(n+1)+A002315(A004526(n))`
-/

namespace A154144.P7445058693468433318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + A002315 (A004526 n).toNat

end

end A154144.P7445058693468433318

namespace A154144

/-- `A154141(n+1)+A002315(A004526(n))` -/
def P7445058693468433318.Spec : Prop :=
  ∀ n, P7445058693468433318.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P10584449062057555439

`A154147(n+1)-A002315(A004526(n))`
-/

namespace A154144.P10584449062057555439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - A002315 (A004526 n).toNat

end

end A154144.P10584449062057555439

namespace A154144

/-- `A154147(n+1)-A002315(A004526(n))` -/
def P10584449062057555439.Spec : Prop :=
  ∀ n, P10584449062057555439.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P11854812275594062376

`A154147(n+1)-A001333(A109613(n))`
-/

namespace A154144.P11854812275594062376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) - A001333 (A109613 n).toNat

end

end A154144.P11854812275594062376

namespace A154144

/-- `A154147(n+1)-A001333(A109613(n))` -/
def P11854812275594062376.Spec : Prop :=
  ∀ n, P11854812275594062376.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P6220565047669330140

`A154152(n+1)-2*A002315(A004526(n))`
-/

namespace A154144.P6220565047669330140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - 2 * A002315 (A004526 n).toNat

end

end A154144.P6220565047669330140

namespace A154144

/-- `A154152(n+1)-2*A002315(A004526(n))` -/
def P6220565047669330140.Spec : Prop :=
  ∀ n, P6220565047669330140.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P898996990540631831

`A154152(n+1)-2*A001333(A109613(n))`
-/

namespace A154144.P898996990540631831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - 2 * A001333 (A109613 n).toNat

end

end A154144.P898996990540631831

namespace A154144

/-- `A154152(n+1)-2*A001333(A109613(n))` -/
def P898996990540631831.Spec : Prop :=
  ∀ n, P898996990540631831.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P15136956729382677556

`A154152(n+1)-2*A078057(A052928(n))`
-/

namespace A154144.P15136956729382677556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - 2 * A078057 (A052928 n).toNat

end

end A154144.P15136956729382677556

namespace A154144

/-- `A154152(n+1)-2*A078057(A052928(n))` -/
def P15136956729382677556.Spec : Prop :=
  ∀ n, P15136956729382677556.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P8246955919640145895

`A154152(n+1)-2*A097564(A047235(n+1))`
-/

namespace A154144.P8246955919640145895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - 2 * A097564 (A047235 (n + 1)).toNat

end

end A154144.P8246955919640145895

namespace A154144

/-- `A154152(n+1)-2*A097564(A047235(n+1))` -/
def P8246955919640145895.Spec : Prop :=
  ∀ n, P8246955919640145895.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P647587370794632790

`A154138(n+1)+A154141(n+1)-A006451(n)`
-/

namespace A154144.P647587370794632790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + (A154141 (n + 1) - A006451 n)

end

end A154144.P647587370794632790

namespace A154144

/-- `A154138(n+1)+A154141(n+1)-A006451(n)` -/
def P647587370794632790.Spec : Prop :=
  ∀ n, P647587370794632790.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P15281369032820592589

`A154139(n+1)+A154140(n+1)-A006451(n)`
-/

namespace A154144.P15281369032820592589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154140 (n + 1) - A006451 n)

end

end A154144.P15281369032820592589

namespace A154144

/-- `A154139(n+1)+A154140(n+1)-A006451(n)` -/
def P15281369032820592589.Spec : Prop :=
  ∀ n, P15281369032820592589.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P17224868590310792392

`A154149(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154144.P17224868590310792392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154144.P17224868590310792392

namespace A154144

/-- `A154149(n+1)+A006451(n)-A154139(n+1)` -/
def P17224868590310792392.Spec : Prop :=
  ∀ n, P17224868590310792392.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P16594262036103251371

`A154154(n+1)+A006451(n)-A154141(n+1)`
-/

namespace A154144.P16594262036103251371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) + (A006451 n - A154141 (n + 1))

end

end A154144.P16594262036103251371

namespace A154144

/-- `A154154(n+1)+A006451(n)-A154141(n+1)` -/
def P16594262036103251371.Spec : Prop :=
  ∀ n, P16594262036103251371.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P5671542385997838593

`A154140(n+1)+A154141(n+1)-A154138(n+1)`
-/

namespace A154144.P5671542385997838593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + (A154141 (n + 1) - A154138 (n + 1))

end

end A154144.P5671542385997838593

namespace A154144

/-- `A154140(n+1)+A154141(n+1)-A154138(n+1)` -/
def P5671542385997838593.Spec : Prop :=
  ∀ n, P5671542385997838593.a n = A154144 (n + 1)

end A154144

/-! ## A154144.P12758051035608851846

`(A154149(n+1)+A154140(n+1))/2`
-/

namespace A154144.P12758051035608851846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154149 (n + 1) + A154140 (n + 1) : ℚ) / 2

end

end A154144.P12758051035608851846

namespace A154144

/-- `(A154149(n+1)+A154140(n+1))/2` -/
def P12758051035608851846.Spec : Prop :=
  ∀ n, P12758051035608851846.a n = (A154144 (n + 1) : ℚ)

end A154144

/-! ## A154144.P99075942044216870

`(A154152(n+1)+A154139(n+1))/2`
-/

namespace A154144.P99075942044216870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154152 (n + 1) + A154139 (n + 1) : ℚ) / 2

end

end A154144.P99075942044216870

namespace A154144

/-- `(A154152(n+1)+A154139(n+1))/2` -/
def P99075942044216870.Spec : Prop :=
  ∀ n, P99075942044216870.a n = (A154144 (n + 1) : ℚ)

end A154144

/-!
# A154145: Indices k such that 15 plus the k-th triangular number is a perfect square.

The programs for A154145, the canonical program `A154145.P2167413779772439925` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154145 has offset 1).

The definition of A154145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154145.P2167413779772439925

`a(n-1)+6*a(n-4)-6*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=11, a(4)=20, a(5)=33, a(6)=43, a(7)=70, a(8)=121`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154145

/-- `a(n-1)+6*a(n-4)-6*a(n-5)-a(n-8)+a(n-9)` -/
def P2167413779772439925.Spec : Prop :=
  ∀ n, P2167413779772439925.a n = A154145 (n + 1)

theorem P2167413779772439925.correct : P2167413779772439925.Spec := by
  intro n
  simp only [A154145, Nat.add_sub_cancel]

end A154145

/-! ## A154145.P4202712794767981689

`lt[A092487(C(n, 2)+15), 1]-1`
-/

namespace A154145.P4202712794767981689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (Nat.choose n 2 + 15)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A154145.P4202712794767981689

namespace A154145

/-- `lt[A092487(C(n, 2)+15), 1]-1` -/
def P4202712794767981689.Spec : Prop :=
  ∀ n, P4202712794767981689.a n = A154145 (n + 1)

end A154145

/-! ## A154145.P657913856531013623

`record[A127093(2*n+(n+3)²-8)]`
-/

namespace A154145.P657913856531013623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((2 * n : ℤ) + (((n + 3) ^ 2 : ℤ) - 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154145.P657913856531013623

namespace A154145

/-- `record[A127093(2*n+(n+3)²-8)]` -/
def P657913856531013623.Spec : Prop :=
  ∀ n, P657913856531013623.a n = A154145 (n + 1)

end A154145

/-! ## A154145.P18133729537127185344

`record[A051340(A028566(n))]`
-/

namespace A154145.P18133729537127185344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A028566 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154145.P18133729537127185344

namespace A154145

/-- `record[A051340(A028566(n))]` -/
def P18133729537127185344.Spec : Prop :=
  ∀ n, P18133729537127185344.a n = A154145 (n + 1)

end A154145

/-! ## A154145.P11936171944862570151

`eq[1, A267006(A173036(n))]`
-/

namespace A154145.P11936171944862570151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (A173036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154145.P11936171944862570151

namespace A154145

/-- `eq[1, A267006(A173036(n))]` -/
def P11936171944862570151.Spec : Prop :=
  ∀ n, (P11936171944862570151.a n : ℤ) = A154145 (n + 1)

end A154145

/-!
# A154146: Numbers k such that 16 plus the k-th triangular number is a perfect square.

The programs for A154146, the canonical program `A154146.P2615686752762627851` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154146 has offset 0).

The definition of A154146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154146.P8081751666466692314

`A154150(n+1)-A001333(A109613(n))`
-/

namespace A154146.P8081751666466692314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154150 (n + 1) - A001333 (A109613 n).toNat

end

end A154146.P8081751666466692314

namespace A154146

/-- `A154150(n+1)-A001333(A109613(n))` -/
def P8081751666466692314.Spec : Prop :=
  ∀ n, P8081751666466692314.a n = A154146 n

end A154146

/-! ## A154146.P4627155477266272231

`A154142(n+1)+A078057(n)-A123335(n)`
-/

namespace A154146.P4627155477266272231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A078057 n - A123335 n)

end

end A154146.P4627155477266272231

namespace A154146

/-- `A154142(n+1)+A078057(n)-A123335(n)` -/
def P4627155477266272231.Spec : Prop :=
  ∀ n, P4627155477266272231.a n = A154146 n

end A154146

/-! ## A154146.P2510878188235728508

`A154139(n+1)+A154142(n+1)-A006451(n)`
-/

namespace A154146.P2510878188235728508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154142 (n + 1) - A006451 n)

end

end A154146.P2510878188235728508

namespace A154146

/-- `A154139(n+1)+A154142(n+1)-A006451(n)` -/
def P2510878188235728508.Spec : Prop :=
  ∀ n, P2510878188235728508.a n = A154146 n

end A154146

/-! ## A154146.P16548982625048295969

`A154139(n+1)+A154149(n+1)-A154140(n+1)`
-/

namespace A154146.P16548982625048295969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154149 (n + 1) - A154140 (n + 1))

end

end A154146.P16548982625048295969

namespace A154146

/-- `A154139(n+1)+A154149(n+1)-A154140(n+1)` -/
def P16548982625048295969.Spec : Prop :=
  ∀ n, P16548982625048295969.a n = A154146 n

end A154146

/-! ## A154146.P14114690717855923672

`A154139(n+1)+A154150(n+1)-A154141(n+1)`
-/

namespace A154146.P14114690717855923672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154150 (n + 1) - A154141 (n + 1))

end

end A154146.P14114690717855923672

namespace A154146

/-- `A154139(n+1)+A154150(n+1)-A154141(n+1)` -/
def P14114690717855923672.Spec : Prop :=
  ∀ n, P14114690717855923672.a n = A154146 n

end A154146

/-! ## A154146.P5140616288172164539

`A154142(n+1)+A154147(n+1)-A154143(n+1)`
-/

namespace A154146.P5140616288172164539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154147 (n + 1) - A154143 (n + 1))

end

end A154146.P5140616288172164539

namespace A154146

/-- `A154142(n+1)+A154147(n+1)-A154143(n+1)` -/
def P5140616288172164539.Spec : Prop :=
  ∀ n, P5140616288172164539.a n = A154146 n

end A154146

/-! ## A154146.P14270131591827532066

`A154144(n+1)+A154150(n+1)-A154147(n+1)`
-/

namespace A154146.P14270131591827532066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + (A154150 (n + 1) - A154147 (n + 1))

end

end A154146.P14270131591827532066

namespace A154146

/-- `A154144(n+1)+A154150(n+1)-A154147(n+1)` -/
def P14270131591827532066.Spec : Prop :=
  ∀ n, P14270131591827532066.a n = A154146 n

end A154146

/-! ## A154146.P8178909416484926732

`A154149(n+1)+A154149(n+1)-A154152(n+1)`
-/

namespace A154146.P8178909416484926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + (A154149 (n + 1) - A154152 (n + 1))

end

end A154146.P8178909416484926732

namespace A154146

/-- `A154149(n+1)+A154149(n+1)-A154152(n+1)` -/
def P8178909416484926732.Spec : Prop :=
  ∀ n, P8178909416484926732.a n = A154146 n

end A154146

/-! ## A154146.P2615686752762627851

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=14, a(2)=17, a(3)=87, a(4)=104`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154146

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P2615686752762627851.Spec : Prop :=
  ∀ n, P2615686752762627851.a n = A154146 n

theorem P2615686752762627851.correct : P2615686752762627851.Spec := by
  intro n
  simp only [A154146]

end A154146

/-! ## A154146.P5904518864767804595

`2*A154142(n+1)-A154139(n+1)`
-/

namespace A154146.P5904518864767804595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154142 (n + 1) - A154139 (n + 1)

end

end A154146.P5904518864767804595

namespace A154146

/-- `2*A154142(n+1)-A154139(n+1)` -/
def P5904518864767804595.Spec : Prop :=
  ∀ n, P5904518864767804595.a n = A154146 n

end A154146

/-! ## A154146.P6129041965493026773

`(A154151(n+1)+A154142(n+1))/2`
-/

namespace A154146.P6129041965493026773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154151 (n + 1) + A154142 (n + 1) : ℚ) / 2

end

end A154146.P6129041965493026773

namespace A154146

/-- `(A154151(n+1)+A154142(n+1))/2` -/
def P6129041965493026773.Spec : Prop :=
  ∀ n, P6129041965493026773.a n = (A154146 n : ℚ)

end A154146

/-! ## A154146.P8630328618298142785

`2*A154149(n+1)-A154152(n+1)`
-/

namespace A154146.P8630328618298142785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154149 (n + 1) - A154152 (n + 1)

end

end A154146.P8630328618298142785

namespace A154146

/-- `2*A154149(n+1)-A154152(n+1)` -/
def P8630328618298142785.Spec : Prop :=
  ∀ n, P8630328618298142785.a n = A154146 n

end A154146

/-! ## A154146.P7466787247807203073

`A154151(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154146.P7466787247807203073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154151 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154146.P7466787247807203073

namespace A154146

/-- `A154151(n+1)+A006451(n)-A154139(n+1)` -/
def P7466787247807203073.Spec : Prop :=
  ∀ n, P7466787247807203073.a n = A154146 n

end A154146

/-!
# A154147: Indices k such that 19 plus the k-th triangular number is a perfect square.

The programs for A154147, the canonical program `A154147.P14310672329101220625` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154147 has offset 1).

The definition of A154147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154147.P14310672329101220625

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=30, a(3)=60, a(4)=179`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154147

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P14310672329101220625.Spec : Prop :=
  ∀ n, P14310672329101220625.a n = A154147 (n + 1)

theorem P14310672329101220625.correct : P14310672329101220625.Spec := by
  intro n
  simp only [A154147, Nat.add_sub_cancel]

end A154147

/-! ## A154147.P9575985460702331356

`A387549(n+1)+A006451(n)`
-/

namespace A154147.P9575985460702331356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387549 (n + 1) + A006451 n

end

end A154147.P9575985460702331356

namespace A154147

/-- `A387549(n+1)+A006451(n)` -/
def P9575985460702331356.Spec : Prop :=
  ∀ n, P9575985460702331356.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P14543098317862301956

`A154140(n+1)+A077446(n+1)`
-/

namespace A154147.P14543098317862301956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + A077446 (n + 1)

end

end A154147.P14543098317862301956

namespace A154147

/-- `A154140(n+1)+A077446(n+1)` -/
def P14543098317862301956.Spec : Prop :=
  ∀ n, P14543098317862301956.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P14759448199642898887

`A154144(n+1)+A002315(A004526(n))`
-/

namespace A154147.P14759448199642898887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + A002315 (A004526 n).toNat

end

end A154147.P14759448199642898887

namespace A154147

/-- `A154144(n+1)+A002315(A004526(n))` -/
def P14759448199642898887.Spec : Prop :=
  ∀ n, P14759448199642898887.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P12045052140042434844

`A154152(n+1)-A002315(A004526(n))`
-/

namespace A154147.P12045052140042434844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A002315 (A004526 n).toNat

end

end A154147.P12045052140042434844

namespace A154147

/-- `A154152(n+1)-A002315(A004526(n))` -/
def P12045052140042434844.Spec : Prop :=
  ∀ n, P12045052140042434844.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P7565855705451797456

`A154152(n+1)-A001333(A109613(n))`
-/

namespace A154147.P7565855705451797456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A001333 (A109613 n).toNat

end

end A154147.P7565855705451797456

namespace A154147

/-- `A154152(n+1)-A001333(A109613(n))` -/
def P7565855705451797456.Spec : Prop :=
  ∀ n, P7565855705451797456.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P7156148955156011224

`A154152(n+1)-A078057(A052928(n))`
-/

namespace A154147.P7156148955156011224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A078057 (A052928 n).toNat

end

end A154147.P7156148955156011224

namespace A154147

/-- `A154152(n+1)-A078057(A052928(n))` -/
def P7156148955156011224.Spec : Prop :=
  ∀ n, P7156148955156011224.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P7572323830786476074

`A154152(n+1)-A097564(A047235(n+1))`
-/

namespace A154147.P7572323830786476074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) - A097564 (A047235 (n + 1)).toNat

end

end A154147.P7572323830786476074

namespace A154147

/-- `A154152(n+1)-A097564(A047235(n+1))` -/
def P7572323830786476074.Spec : Prop :=
  ∀ n, P7572323830786476074.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P8886505522954865733

`A154141(n+1)+2*A002315(A004526(n))`
-/

namespace A154147.P8886505522954865733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + 2 * A002315 (A004526 n).toNat

end

end A154147.P8886505522954865733

namespace A154147

/-- `A154141(n+1)+2*A002315(A004526(n))` -/
def P8886505522954865733.Spec : Prop :=
  ∀ n, P8886505522954865733.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P6430753965769790368

`A154140(n+1)+A154141(n+1)-A006451(n)`
-/

namespace A154147.P6430753965769790368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + (A154141 (n + 1) - A006451 n)

end

end A154147.P6430753965769790368

namespace A154147

/-- `A154140(n+1)+A154141(n+1)-A006451(n)` -/
def P6430753965769790368.Spec : Prop :=
  ∀ n, P6430753965769790368.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P4088321383097124

`A154154(n+1)+A006451(n)-A154139(n+1)`
-/

namespace A154147.P4088321383097124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) + (A006451 n - A154139 (n + 1))

end

end A154147.P4088321383097124

namespace A154147

/-- `A154154(n+1)+A006451(n)-A154139(n+1)` -/
def P4088321383097124.Spec : Prop :=
  ∀ n, P4088321383097124.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P12166079701676437311

`A154140(n+1)+A154149(n+1)-A154141(n+1)`
-/

namespace A154147.P12166079701676437311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + (A154149 (n + 1) - A154141 (n + 1))

end

end A154147.P12166079701676437311

namespace A154147

/-- `A154140(n+1)+A154149(n+1)-A154141(n+1)` -/
def P12166079701676437311.Spec : Prop :=
  ∀ n, P12166079701676437311.a n = A154147 (n + 1)

end A154147

/-! ## A154147.P12916464496040945652

`(A154153(n+1)+A154142(n+1))/2`
-/

namespace A154147.P12916464496040945652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154153 (n + 1) + A154142 (n + 1) : ℚ) / 2

end

end A154147.P12916464496040945652

namespace A154147

/-- `(A154153(n+1)+A154142(n+1))/2` -/
def P12916464496040945652.Spec : Prop :=
  ∀ n, P12916464496040945652.a n = (A154147 (n + 1) : ℚ)

end A154147

/-!
# A154148: Numbers k such that 21 plus the k-th triangular number is a perfect square.

The programs for A154148, the canonical program `A154148.P4117915320982025151` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154148 has offset 1).

The definition of A154148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154148.P4117915320982025151

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=7, a(2)=40, a(3)=50, a(4)=237`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154148

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P4117915320982025151.Spec : Prop :=
  ∀ n, P4117915320982025151.a n = A154148 (n + 1)

theorem P4117915320982025151.correct : P4117915320982025151.Spec := by
  intro n
  simp only [A154148, Nat.add_sub_cancel]

end A154148

/-! ## A154148.P6329657445662931331

`A154143(n+1)+A077444(A008619(n))`
-/

namespace A154148.P6329657445662931331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + A077444 (A008619 n).toNat

end

end A154148.P6329657445662931331

namespace A154148

/-- `A154143(n+1)+A077444(A008619(n))` -/
def P6329657445662931331.Spec : Prop :=
  ∀ n, P6329657445662931331.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P17688970517213968301

`A154143(n+1)+A002203(A109613(n))`
-/

namespace A154148.P17688970517213968301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + A002203 (A109613 n).toNat

end

end A154148.P17688970517213968301

namespace A154148

/-- `A154143(n+1)+A002203(A109613(n))` -/
def P17688970517213968301.Spec : Prop :=
  ∀ n, P17688970517213968301.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P6971003860972891842

`A154153(n+1)-A002315(A004526(n))`
-/

namespace A154148.P6971003860972891842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154153 (n + 1) - A002315 (A004526 n).toNat

end

end A154148.P6971003860972891842

namespace A154148

/-- `A154153(n+1)-A002315(A004526(n))` -/
def P6971003860972891842.Spec : Prop :=
  ∀ n, P6971003860972891842.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P16938982040759666642

`A154153(n+1)-A001333(A109613(n))`
-/

namespace A154148.P16938982040759666642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154153 (n + 1) - A001333 (A109613 n).toNat

end

end A154148.P16938982040759666642

namespace A154148

/-- `A154153(n+1)-A001333(A109613(n))` -/
def P16938982040759666642.Spec : Prop :=
  ∀ n, P16938982040759666642.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P13768629196158147864

`A154153(n+1)-A078057(A052928(n))`
-/

namespace A154148.P13768629196158147864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154153 (n + 1) - A078057 (A052928 n).toNat

end

end A154148.P13768629196158147864

namespace A154148

/-- `A154153(n+1)-A078057(A052928(n))` -/
def P13768629196158147864.Spec : Prop :=
  ∀ n, P13768629196158147864.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P724187906273115634

`A154143(n+1)+2*A078057(A052928(n))`
-/

namespace A154148.P724187906273115634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + 2 * A078057 (A052928 n).toNat

end

end A154148.P724187906273115634

namespace A154148

/-- `A154143(n+1)+2*A078057(A052928(n))` -/
def P724187906273115634.Spec : Prop :=
  ∀ n, P724187906273115634.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P8362996098438597495

`A154153(n+1)+A006451(n)-A154138(n+1)`
-/

namespace A154148.P8362996098438597495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154153 (n + 1) + (A006451 n - A154138 (n + 1))

end

end A154148.P8362996098438597495

namespace A154148

/-- `A154153(n+1)+A006451(n)-A154138(n+1)` -/
def P8362996098438597495.Spec : Prop :=
  ∀ n, P8362996098438597495.a n = A154148 (n + 1)

end A154148

/-! ## A154148.P13656636633855962619

`A154139(n+1)+A154153(n+1)-A154141(n+1)`
-/

namespace A154148.P13656636633855962619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154153 (n + 1) - A154141 (n + 1))

end

end A154148.P13656636633855962619

namespace A154148

/-- `A154139(n+1)+A154153(n+1)-A154141(n+1)` -/
def P13656636633855962619.Spec : Prop :=
  ∀ n, P13656636633855962619.a n = A154148 (n + 1)

end A154148

/-!
# A154149: Indices k such that 22 plus the k-th triangular number is a perfect square.

The programs for A154149, the canonical program `A154149.P10016728120442053166` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154149 has offset 1).

The definition of A154149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154149.P10016728120442053166

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=12, a(2)=27, a(3)=77, a(4)=162`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154149

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P10016728120442053166.Spec : Prop :=
  ∀ n, P10016728120442053166.a n = A154149 (n + 1)

theorem P10016728120442053166.correct : P10016728120442053166.Spec := by
  intro n
  simp only [A154149, Nat.add_sub_cancel]

end A154149

/-! ## A154149.P16002950729989342120

`5*A006451(n)+2`
-/

namespace A154149.P16002950729989342120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006451 n + 2

end

end A154149.P16002950729989342120

namespace A154149

/-- `5*A006451(n)+2` -/
def P16002950729989342120.Spec : Prop :=
  ∀ n, P16002950729989342120.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P17892972568824877645

`5*(A077446(n+1)-1)/2+2`
-/

namespace A154149.P17892972568824877645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A077446 (n + 1) - 1 : ℚ) / 2) + 2

end

end A154149.P17892972568824877645

namespace A154149

/-- `5*(A077446(n+1)-1)/2+2` -/
def P17892972568824877645.Spec : Prop :=
  ∀ n, P17892972568824877645.a n = (A154149 (n + 1) : ℚ)

end A154149

/-! ## A154149.P6464530059949667659

`A154141(n+1)+A077446(n+1)`
-/

namespace A154149.P6464530059949667659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + A077446 (n + 1)

end

end A154149.P6464530059949667659

namespace A154149

/-- `A154141(n+1)+A077446(n+1)` -/
def P6464530059949667659.Spec : Prop :=
  ∀ n, P6464530059949667659.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P7848967466810627037

`5*(A048739(n)-A079496(n))+2`
-/

namespace A154149.P7848967466810627037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A048739 n - A079496 n) + 2

end

end A154149.P7848967466810627037

namespace A154149

/-- `5*(A048739(n)-A079496(n))+2` -/
def P7848967466810627037.Spec : Prop :=
  ∀ n, P7848967466810627037.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P6460758508825540495

`A006451(n)+lcm(2, A077446(n+1))`
-/

namespace A154149.P6460758508825540495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (Int.lcm 2 (A077446 (n + 1)) : ℤ)

end

end A154149.P6460758508825540495

namespace A154149

/-- `A006451(n)+lcm(2, A077446(n+1))` -/
def P6460758508825540495.Spec : Prop :=
  ∀ n, P6460758508825540495.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P13554896924744634456

`5*(A216134(n+1)-A006452(n+1))+2`
-/

namespace A154149.P13554896924744634456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A216134 (n + 1) - A006452 (n + 1)) + 2

end

end A154149.P13554896924744634456

namespace A154149

/-- `5*(A216134(n+1)-A006452(n+1))+2` -/
def P13554896924744634456.Spec : Prop :=
  ∀ n, P13554896924744634456.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P8741216628330414966

`A154139(n+1)+A154144(n+1)-A006451(n)`
-/

namespace A154149.P8741216628330414966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154144 (n + 1) - A006451 n)

end

end A154149.P8741216628330414966

namespace A154149

/-- `A154139(n+1)+A154144(n+1)-A006451(n)` -/
def P8741216628330414966.Spec : Prop :=
  ∀ n, P8741216628330414966.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P10206812447777821703

`A154141(n+1)+A154141(n+1)-A006451(n)`
-/

namespace A154149.P10206812447777821703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + (A154141 (n + 1) - A006451 n)

end

end A154149.P10206812447777821703

namespace A154149

/-- `A154141(n+1)+A154141(n+1)-A006451(n)` -/
def P10206812447777821703.Spec : Prop :=
  ∀ n, P10206812447777821703.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P1499005243780903957

`A154154(n+1)+A006451(n)-A154138(n+1)`
-/

namespace A154149.P1499005243780903957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) + (A006451 n - A154138 (n + 1))

end

end A154149.P1499005243780903957

namespace A154149

/-- `A154154(n+1)+A006451(n)-A154138(n+1)` -/
def P1499005243780903957.Spec : Prop :=
  ∀ n, P1499005243780903957.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P13257974976436095855

`A154142(n+1)+A154144(n+1)-A154139(n+1)`
-/

namespace A154149.P13257974976436095855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154144 (n + 1) - A154139 (n + 1))

end

end A154149.P13257974976436095855

namespace A154149

/-- `A154142(n+1)+A154144(n+1)-A154139(n+1)` -/
def P13257974976436095855.Spec : Prop :=
  ∀ n, P13257974976436095855.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P4799778785890544032

`A154152(n+1)+A154152(n+1)-A154153(n+1)`
-/

namespace A154149.P4799778785890544032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 1) + (A154152 (n + 1) - A154153 (n + 1))

end

end A154149.P4799778785890544032

namespace A154149

/-- `A154152(n+1)+A154152(n+1)-A154153(n+1)` -/
def P4799778785890544032.Spec : Prop :=
  ∀ n, P4799778785890544032.a n = A154149 (n + 1)

end A154149

/-! ## A154149.P7978415240669716822

`(A154152(n+1)+A154146(n))/2`
-/

namespace A154149.P7978415240669716822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154152 (n + 1) + A154146 n : ℚ) / 2

end

end A154149.P7978415240669716822

namespace A154149

/-- `(A154152(n+1)+A154146(n))/2` -/
def P7978415240669716822.Spec : Prop :=
  ∀ n, P7978415240669716822.a n = (A154149 (n + 1) : ℚ)

end A154149

/-! ## A154149.P13696914272368620006

`(A154150(n+1)+A154147(n+1))/2`
-/

namespace A154149.P13696914272368620006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154150 (n + 1) + A154147 (n + 1) : ℚ) / 2

end

end A154149.P13696914272368620006

namespace A154149

/-- `(A154150(n+1)+A154147(n+1))/2` -/
def P13696914272368620006.Spec : Prop :=
  ∀ n, P13696914272368620006.a n = (A154149 (n + 1) : ℚ)

end A154149

/-! ## A154149.P477960635784581767

`2*A154152(n+1)-A154153(n+1)`
-/

namespace A154149.P477960635784581767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154152 (n + 1) - A154153 (n + 1)

end

end A154149.P477960635784581767

namespace A154149

/-- `2*A154152(n+1)-A154153(n+1)` -/
def P477960635784581767.Spec : Prop :=
  ∀ n, P477960635784581767.a n = A154149 (n + 1)

end A154149

/-!
# A154150: Numbers k such that 24 plus the k-th triangular number is a perfect square.

The programs for A154150, the canonical program `A154150.P8930341919736203005` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154150 has offset 1).

The definition of A154150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154150.P14473074490350224049

`A154142(n+1)+A077446(n+1)`
-/

namespace A154150.P14473074490350224049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + A077446 (n + 1)

end

end A154150.P14473074490350224049

namespace A154150

/-- `A154142(n+1)+A077446(n+1)` -/
def P14473074490350224049.Spec : Prop :=
  ∀ n, P14473074490350224049.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P4255339176322275822

`A154146(n)+A002315(A004526(n))`
-/

namespace A154150.P4255339176322275822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n + A002315 (A004526 n).toNat

end

end A154150.P4255339176322275822

namespace A154150

/-- `A154146(n)+A002315(A004526(n))` -/
def P4255339176322275822.Spec : Prop :=
  ∀ n, P4255339176322275822.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P13705454684634394276

`A154146(n)+A001333(A109613(n))`
-/

namespace A154150.P13705454684634394276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n + A001333 (A109613 n).toNat

end

end A154150.P13705454684634394276

namespace A154150

/-- `A154146(n)+A001333(A109613(n))` -/
def P13705454684634394276.Spec : Prop :=
  ∀ n, P13705454684634394276.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P7062584961635631668

`A154146(n)+A078057(A052928(n))`
-/

namespace A154150.P7062584961635631668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n + A078057 (A052928 n).toNat

end

end A154150.P7062584961635631668

namespace A154150

/-- `A154146(n)+A078057(A052928(n))` -/
def P7062584961635631668.Spec : Prop :=
  ∀ n, P7062584961635631668.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P13115522458995798324

`A154146(n)+Δ[A119016(A014601(n))]`
-/

namespace A154150.P13115522458995798324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n + (f1 (n + 1) - f1 n)

end

end A154150.P13115522458995798324

namespace A154150

/-- `A154146(n)+Δ[A119016(A014601(n))]` -/
def P13115522458995798324.Spec : Prop :=
  ∀ n, P13115522458995798324.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P314024846465552455

`A154146(n)+A143608(A052928(n)+1)`
-/

namespace A154150.P314024846465552455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 n + A143608 (A052928 n + 1).toNat

end

end A154150.P314024846465552455

namespace A154150

/-- `A154146(n)+A143608(A052928(n)+1)` -/
def P314024846465552455.Spec : Prop :=
  ∀ n, P314024846465552455.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P1516514419290218115

`A154141(n+1)+A154149(n+1)-A154140(n+1)`
-/

namespace A154150.P1516514419290218115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + (A154149 (n + 1) - A154140 (n + 1))

end

end A154150.P1516514419290218115

namespace A154150

/-- `A154141(n+1)+A154149(n+1)-A154140(n+1)` -/
def P1516514419290218115.Spec : Prop :=
  ∀ n, P1516514419290218115.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P8630260330881816926

`A154142(n+1)+A154144(n+1)-A154138(n+1)`
-/

namespace A154150.P8630260330881816926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154144 (n + 1) - A154138 (n + 1))

end

end A154150.P8630260330881816926

namespace A154150

/-- `A154142(n+1)+A154144(n+1)-A154138(n+1)` -/
def P8630260330881816926.Spec : Prop :=
  ∀ n, P8630260330881816926.a n = A154150 (n + 1)

end A154150

/-! ## A154150.P8930341919736203005

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=15, a(2)=24, a(3)=94, a(4)=145`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154150

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P8930341919736203005.Spec : Prop :=
  ∀ n, P8930341919736203005.a n = A154150 (n + 1)

theorem P8930341919736203005.correct : P8930341919736203005.Spec := by
  intro n
  simp only [A154150, Nat.add_sub_cancel]

end A154150

/-!
# A154151: Indices k such that 25 plus the k-th triangular number is a perfect square.

The programs for A154151, the canonical program `A154151.P1050885672584903705` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154151 has offset 1).

The definition of A154151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154151.P1050885672584903705

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=18, a(2)=21, a(3)=111, a(4)=128`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154151

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P1050885672584903705.Spec : Prop :=
  ∀ n, P1050885672584903705.a n = A154151 (n + 1)

theorem P1050885672584903705.correct : P1050885672584903705.Spec := by
  intro n
  simp only [A154151, Nat.add_sub_cancel]

end A154151

/-! ## A154151.P3676565876002367270

`2*A154142(n+1)-A006451(n)`
-/

namespace A154151.P3676565876002367270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154142 (n + 1) - A006451 n

end

end A154151.P3676565876002367270

namespace A154151

/-- `2*A154142(n+1)-A006451(n)` -/
def P3676565876002367270.Spec : Prop :=
  ∀ n, P3676565876002367270.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P12151041490489157612

`2*A154146(n)-A154142(n+1)`
-/

namespace A154151.P12151041490489157612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154146 n - A154142 (n + 1)

end

end A154151.P12151041490489157612

namespace A154151

/-- `2*A154146(n)-A154142(n+1)` -/
def P12151041490489157612.Spec : Prop :=
  ∀ n, P12151041490489157612.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P9792490422748057285

`2*A154154(n+1)-A154153(n+1)`
-/

namespace A154151.P9792490422748057285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154154 (n + 1) - A154153 (n + 1)

end

end A154151.P9792490422748057285

namespace A154151

/-- `2*A154154(n+1)-A154153(n+1)` -/
def P9792490422748057285.Spec : Prop :=
  ∀ n, P9792490422748057285.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P1054926693297083219

`A154146(A052928(n+1))+A143608(n)`
-/

namespace A154151.P1054926693297083219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154146 (A052928 (n + 1)).toNat + A143608 n

end

end A154151.P1054926693297083219

namespace A154151

/-- `A154146(A052928(n+1))+A143608(n)` -/
def P1054926693297083219.Spec : Prop :=
  ∀ n, P1054926693297083219.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P1603211217823493889

`A078057(n)+A154146(n)-A123335(n)`
-/

namespace A154151.P1603211217823493889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (A154146 n - A123335 n)

end

end A154151.P1603211217823493889

namespace A154151

/-- `A078057(n)+A154146(n)-A123335(n)` -/
def P1603211217823493889.Spec : Prop :=
  ∀ n, P1603211217823493889.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P3814150705891177149

`A154139(n+1)+A154146(n)-A006451(n)`
-/

namespace A154151.P3814150705891177149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154146 n - A006451 n)

end

end A154151.P3814150705891177149

namespace A154151

/-- `A154139(n+1)+A154146(n)-A006451(n)` -/
def P3814150705891177149.Spec : Prop :=
  ∀ n, P3814150705891177149.a n = A154151 (n + 1)

end A154151

/-! ## A154151.P10004292385921453950

`A154142(n+1)+A154146(n)-A154139(n+1)`
-/

namespace A154151.P10004292385921453950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154146 n - A154139 (n + 1))

end

end A154151.P10004292385921453950

namespace A154151

/-- `A154142(n+1)+A154146(n)-A154139(n+1)` -/
def P10004292385921453950.Spec : Prop :=
  ∀ n, P10004292385921453950.a n = A154151 (n + 1)

end A154151

/-!
# A154152: Indices k such that 26 plus the k-th triangular number is a perfect square.

The programs for A154152, the canonical program `A154152.P16833474660933875920` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154152 has offset 1).

The definition of A154152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154152.P16833474660933875920

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=10, a(2)=37, a(3)=67, a(4)=220`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154152

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P16833474660933875920.Spec : Prop :=
  ∀ n, P16833474660933875920.a n = A154152 (n + 1)

theorem P16833474660933875920.correct : P16833474660933875920.Spec := by
  intro n
  simp only [A154152, Nat.add_sub_cancel]

end A154152

/-! ## A154152.P6884542930740900167

`3*A154138(n+1)+1`
-/

namespace A154152.P6884542930740900167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A154138 (n + 1) + 1

end

end A154152.P6884542930740900167

namespace A154152

/-- `3*A154138(n+1)+1` -/
def P6884542930740900167.Spec : Prop :=
  ∀ n, P6884542930740900167.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P6552998349747182031

`A006451(n)+4*A077241(n)`
-/

namespace A154152.P6552998349747182031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + 4 * A077241 n

end

end A154152.P6552998349747182031

namespace A154152

/-- `A006451(n)+4*A077241(n)` -/
def P6552998349747182031.Spec : Prop :=
  ∀ n, P6552998349747182031.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P3113580050188907844

`A154143(n+1)+A077446(n+1)`
-/

namespace A154152.P3113580050188907844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + A077446 (n + 1)

end

end A154152.P3113580050188907844

namespace A154152

/-- `A154143(n+1)+A077446(n+1)` -/
def P3113580050188907844.Spec : Prop :=
  ∀ n, P3113580050188907844.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P8480808741772621437

`A387549(n+1)+A154138(n+1)`
-/

namespace A154152.P8480808741772621437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387549 (n + 1) + A154138 (n + 1)

end

end A154152.P8480808741772621437

namespace A154152

/-- `A387549(n+1)+A154138(n+1)` -/
def P8480808741772621437.Spec : Prop :=
  ∀ n, P8480808741772621437.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P4405808975235679209

`3*(A216134(n)+A077241(n))+1`
-/

namespace A154152.P4405808975235679209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A216134 n + A077241 n) + 1

end

end A154152.P4405808975235679209

namespace A154152

/-- `3*(A216134(n)+A077241(n))+1` -/
def P4405808975235679209.Spec : Prop :=
  ∀ n, P4405808975235679209.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P2651836682871137435

`A154147(n+1)+A002315(A004526(n))`
-/

namespace A154152.P2651836682871137435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + A002315 (A004526 n).toNat

end

end A154152.P2651836682871137435

namespace A154152

/-- `A154147(n+1)+A002315(A004526(n))` -/
def P2651836682871137435.Spec : Prop :=
  ∀ n, P2651836682871137435.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P2839753989243064696

`A154147(n+1)+A001333(A109613(n))`
-/

namespace A154152.P2839753989243064696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + A001333 (A109613 n).toNat

end

end A154152.P2839753989243064696

namespace A154152

/-- `A154147(n+1)+A001333(A109613(n))` -/
def P2839753989243064696.Spec : Prop :=
  ∀ n, P2839753989243064696.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P7875152305881995989

`A006451(A004442(n))+2*A077446(n+1)`
-/

namespace A154152.P7875152305881995989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A004442 n).toNat + 2 * A077446 (n + 1)

end

end A154152.P7875152305881995989

namespace A154152

/-- `A006451(A004442(n))+2*A077446(n+1)` -/
def P7875152305881995989.Spec : Prop :=
  ∀ n, P7875152305881995989.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P16264520492833603482

`A154144(n+1)+2*A002315(A004526(n))`
-/

namespace A154152.P16264520492833603482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + 2 * A002315 (A004526 n).toNat

end

end A154152.P16264520492833603482

namespace A154152

/-- `A154144(n+1)+2*A002315(A004526(n))` -/
def P16264520492833603482.Spec : Prop :=
  ∀ n, P16264520492833603482.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P8104705126756384303

`A154149(n+1)+A154149(n+1)-A154146(n)`
-/

namespace A154152.P8104705126756384303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + (A154149 (n + 1) - A154146 n)

end

end A154152.P8104705126756384303

namespace A154152

/-- `A154149(n+1)+A154149(n+1)-A154146(n)` -/
def P8104705126756384303.Spec : Prop :=
  ∀ n, P8104705126756384303.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P12968686962666790793

`A154139(n+1)+A154153(n+1)-A154140(n+1)`
-/

namespace A154152.P12968686962666790793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154153 (n + 1) - A154140 (n + 1))

end

end A154152.P12968686962666790793

namespace A154152

/-- `A154139(n+1)+A154153(n+1)-A154140(n+1)` -/
def P12968686962666790793.Spec : Prop :=
  ∀ n, P12968686962666790793.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P862077170698645172

`A154140(n+1)+A154149(n+1)-A154139(n+1)`
-/

namespace A154152.P862077170698645172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154140 (n + 1) + (A154149 (n + 1) - A154139 (n + 1))

end

end A154152.P862077170698645172

namespace A154152

/-- `A154140(n+1)+A154149(n+1)-A154139(n+1)` -/
def P862077170698645172.Spec : Prop :=
  ∀ n, P862077170698645172.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P17692316958200463812

`A154144(n+1)+A154144(n+1)-A154139(n+1)`
-/

namespace A154152.P17692316958200463812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + (A154144 (n + 1) - A154139 (n + 1))

end

end A154152.P17692316958200463812

namespace A154152

/-- `A154144(n+1)+A154144(n+1)-A154139(n+1)` -/
def P17692316958200463812.Spec : Prop :=
  ∀ n, P17692316958200463812.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P8907882609422800739

`A154142(n+1)+A154153(n+1)-A154144(n+1)`
-/

namespace A154152.P8907882609422800739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154142 (n + 1) + (A154153 (n + 1) - A154144 (n + 1))

end

end A154152.P8907882609422800739

namespace A154152

/-- `A154142(n+1)+A154153(n+1)-A154144(n+1)` -/
def P8907882609422800739.Spec : Prop :=
  ∀ n, P8907882609422800739.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P423579439189223322

`A154147(n+1)+A154147(n+1)-A154144(n+1)`
-/

namespace A154152.P423579439189223322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + (A154147 (n + 1) - A154144 (n + 1))

end

end A154152.P423579439189223322

namespace A154152

/-- `A154147(n+1)+A154147(n+1)-A154144(n+1)` -/
def P423579439189223322.Spec : Prop :=
  ∀ n, P423579439189223322.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P10091726704067051042

`3*(A154141(n+1)+A006451(n)-A154139(n+1))+1`
-/

namespace A154152.P10091726704067051042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A154141 (n + 1) + (A006451 n - A154139 (n + 1))) + 1

end

end A154152.P10091726704067051042

namespace A154152

/-- `3*(A154141(n+1)+A006451(n)-A154139(n+1))+1` -/
def P10091726704067051042.Spec : Prop :=
  ∀ n, P10091726704067051042.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P5463582080905734459

`2*A154149(n+1)-A154146(n)`
-/

namespace A154152.P5463582080905734459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154149 (n + 1) - A154146 n

end

end A154152.P5463582080905734459

namespace A154152

/-- `2*A154149(n+1)-A154146(n)` -/
def P5463582080905734459.Spec : Prop :=
  ∀ n, P5463582080905734459.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P3192745808913973842

`2*A154144(n+1)-A154139(n+1)`
-/

namespace A154152.P3192745808913973842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154144 (n + 1) - A154139 (n + 1)

end

end A154152.P3192745808913973842

namespace A154152

/-- `2*A154144(n+1)-A154139(n+1)` -/
def P3192745808913973842.Spec : Prop :=
  ∀ n, P3192745808913973842.a n = A154152 (n + 1)

end A154152

/-! ## A154152.P3003994278184559261

`2*A154147(n+1)-A154144(n+1)`
-/

namespace A154152.P3003994278184559261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154147 (n + 1) - A154144 (n + 1)

end

end A154152.P3003994278184559261

namespace A154152

/-- `2*A154147(n+1)-A154144(n+1)` -/
def P3003994278184559261.Spec : Prop :=
  ∀ n, P3003994278184559261.a n = A154152 (n + 1)

end A154152

/-!
# A154153: Numbers k such that 28 plus the k-th triangular number is a perfect square.

The programs for A154153, the canonical program `A154153.P334636549273016014` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154153 has offset 1).

The definition of A154153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154153.P6507390488469554606

`2*A154143(n+1)-A006451(n)`
-/

namespace A154153.P6507390488469554606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154143 (n + 1) - A006451 n

end

end A154153.P6507390488469554606

namespace A154153

/-- `2*A154143(n+1)-A006451(n)` -/
def P6507390488469554606.Spec : Prop :=
  ∀ n, P6507390488469554606.a n = A154153 (n + 1)

end A154153

/-! ## A154153.P18092134230642212346

`A154149(n+1)+A154152(n+1)-A154146(n)`
-/

namespace A154153.P18092134230642212346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + (A154152 (n + 1) - A154146 n)

end

end A154153.P18092134230642212346

namespace A154153

/-- `A154149(n+1)+A154152(n+1)-A154146(n)` -/
def P18092134230642212346.Spec : Prop :=
  ∀ n, P18092134230642212346.a n = A154153 (n + 1)

end A154153

/-! ## A154153.P10118087498331341498

`A154143(n+1)+A154147(n+1)-A154139(n+1)`
-/

namespace A154153.P10118087498331341498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154143 (n + 1) + (A154147 (n + 1) - A154139 (n + 1))

end

end A154153.P10118087498331341498

namespace A154153

/-- `A154143(n+1)+A154147(n+1)-A154139(n+1)` -/
def P10118087498331341498.Spec : Prop :=
  ∀ n, P10118087498331341498.a n = A154153 (n + 1)

end A154153

/-! ## A154153.P5066204089258698105

`A154147(n+1)+A154147(n+1)-A154142(n+1)`
-/

namespace A154153.P5066204089258698105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + (A154147 (n + 1) - A154142 (n + 1))

end

end A154153.P5066204089258698105

namespace A154153

/-- `A154147(n+1)+A154147(n+1)-A154142(n+1)` -/
def P5066204089258698105.Spec : Prop :=
  ∀ n, P5066204089258698105.a n = A154153 (n + 1)

end A154153

/-! ## A154153.P334636549273016014

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=6, a(1)=8, a(2)=47, a(3)=57, a(4)=278`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154153

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P334636549273016014.Spec : Prop :=
  ∀ n, P334636549273016014.a n = A154153 (n + 1)

theorem P334636549273016014.correct : P334636549273016014.Spec := by
  intro n
  simp only [A154153, Nat.add_sub_cancel]

end A154153

/-! ## A154153.P16860774438031547291

`2*A154147(n+1)-A154142(n+1)`
-/

namespace A154153.P16860774438031547291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154147 (n + 1) - A154142 (n + 1)

end

end A154153.P16860774438031547291

namespace A154153

/-- `2*A154147(n+1)-A154142(n+1)` -/
def P16860774438031547291.Spec : Prop :=
  ∀ n, P16860774438031547291.a n = A154153 (n + 1)

end A154153

/-! ## A154153.P9028069891285402920

`2*A154152(n+1)-A154149(n+1)`
-/

namespace A154153.P9028069891285402920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154152 (n + 1) - A154149 (n + 1)

end

end A154153.P9028069891285402920

namespace A154153

/-- `2*A154152(n+1)-A154149(n+1)` -/
def P9028069891285402920.Spec : Prop :=
  ∀ n, P9028069891285402920.a n = A154153 (n + 1)

end A154153

/-!
# A154154: Numbers k such that 30 plus the k-th triangular number is a perfect square.

The programs for A154154, the canonical program `A154154.P16311721674498044286` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154154 has offset 1).

The definition of A154154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154154.P6492405096503667492

`A154144(n+1)+A077446(n+1)`
-/

namespace A154154.P6492405096503667492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + A077446 (n + 1)

end

end A154154.P6492405096503667492

namespace A154154

/-- `A154144(n+1)+A077446(n+1)` -/
def P6492405096503667492.Spec : Prop :=
  ∀ n, P6492405096503667492.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P9673784522350869690

`A387549(n+1)+A154139(n+1)`
-/

namespace A154154.P9673784522350869690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387549 (n + 1) + A154139 (n + 1)

end

end A154154.P9673784522350869690

namespace A154154

/-- `A387549(n+1)+A154139(n+1)` -/
def P9673784522350869690.Spec : Prop :=
  ∀ n, P9673784522350869690.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P8621859011910245578

`A154141(n+1)+2*A077442(n)`
-/

namespace A154154.P8621859011910245578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + 2 * A077442 n

end

end A154154.P8621859011910245578

namespace A154154

/-- `A154141(n+1)+2*A077442(n)` -/
def P8621859011910245578.Spec : Prop :=
  ∀ n, P8621859011910245578.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P4287991733664997767

`A154138(n+1)+2*A077446(n+1)`
-/

namespace A154154.P4287991733664997767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) + 2 * A077446 (n + 1)

end

end A154154.P4287991733664997767

namespace A154154

/-- `A154138(n+1)+2*A077446(n+1)` -/
def P4287991733664997767.Spec : Prop :=
  ∀ n, P4287991733664997767.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P17186253152283445050

`A154149(n+1)+A002315(A004526(n))`
-/

namespace A154154.P17186253152283445050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + A002315 (A004526 n).toNat

end

end A154154.P17186253152283445050

namespace A154154

/-- `A154149(n+1)+A002315(A004526(n))` -/
def P17186253152283445050.Spec : Prop :=
  ∀ n, P17186253152283445050.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P1038986585718760370

`A154149(n+1)+A001333(A109613(n))`
-/

namespace A154154.P1038986585718760370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + A001333 (A109613 n).toNat

end

end A154154.P1038986585718760370

namespace A154154

/-- `A154149(n+1)+A001333(A109613(n))` -/
def P1038986585718760370.Spec : Prop :=
  ∀ n, P1038986585718760370.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P6992786850324221987

`A154149(n+1)+A078057(A052928(n))`
-/

namespace A154154.P6992786850324221987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (n + 1) + A078057 (A052928 n).toNat

end

end A154154.P6992786850324221987

namespace A154154

/-- `A154149(n+1)+A078057(A052928(n))` -/
def P6992786850324221987.Spec : Prop :=
  ∀ n, P6992786850324221987.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P7975048643920610427

`A154139(n+1)+A154147(n+1)-A006451(n)`
-/

namespace A154154.P7975048643920610427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154139 (n + 1) + (A154147 (n + 1) - A006451 n)

end

end A154154.P7975048643920610427

namespace A154154

/-- `A154139(n+1)+A154147(n+1)-A006451(n)` -/
def P7975048643920610427.Spec : Prop :=
  ∀ n, P7975048643920610427.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P9561484105310037980

`A154141(n+1)+A154149(n+1)-A154139(n+1)`
-/

namespace A154154.P9561484105310037980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) + (A154149 (n + 1) - A154139 (n + 1))

end

end A154154.P9561484105310037980

namespace A154154

/-- `A154141(n+1)+A154149(n+1)-A154139(n+1)` -/
def P9561484105310037980.Spec : Prop :=
  ∀ n, P9561484105310037980.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P2737414051576858554

`A154144(n+1)+A154144(n+1)-A154138(n+1)`
-/

namespace A154154.P2737414051576858554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) + (A154144 (n + 1) - A154138 (n + 1))

end

end A154154.P2737414051576858554

namespace A154154

/-- `A154144(n+1)+A154144(n+1)-A154138(n+1)` -/
def P2737414051576858554.Spec : Prop :=
  ∀ n, P2737414051576858554.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P11355904224354851376

`A154147(n+1)+A154147(n+1)-A154143(n+1)`
-/

namespace A154154.P11355904224354851376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154147 (n + 1) + (A154147 (n + 1) - A154143 (n + 1))

end

end A154154.P11355904224354851376

namespace A154154

/-- `A154147(n+1)+A154147(n+1)-A154143(n+1)` -/
def P11355904224354851376.Spec : Prop :=
  ∀ n, P11355904224354851376.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P16311721674498044286

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=13, a(2)=34, a(3)=84, a(4)=203`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154154

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P16311721674498044286.Spec : Prop :=
  ∀ n, P16311721674498044286.a n = A154154 (n + 1)

theorem P16311721674498044286.correct : P16311721674498044286.Spec := by
  intro n
  simp only [A154154, Nat.add_sub_cancel]

end A154154

/-! ## A154154.P13041594060037056050

`2*A154144(n+1)-A154138(n+1)`
-/

namespace A154154.P13041594060037056050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154144 (n + 1) - A154138 (n + 1)

end

end A154154.P13041594060037056050

namespace A154154

/-- `2*A154144(n+1)-A154138(n+1)` -/
def P13041594060037056050.Spec : Prop :=
  ∀ n, P13041594060037056050.a n = A154154 (n + 1)

end A154154

/-! ## A154154.P11078369578402677021

`2*A154147(n+1)-A154143(n+1)`
-/

namespace A154154.P11078369578402677021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154147 (n + 1) - A154143 (n + 1)

end

end A154154.P11078369578402677021

namespace A154154

/-- `2*A154147(n+1)-A154143(n+1)` -/
def P11078369578402677021.Spec : Prop :=
  ∀ n, P11078369578402677021.a n = A154154 (n + 1)

end A154154

/-!
# A154155: Decimal expansion of log_4 (10).

The programs for A154155, there is no canonical definition to state claims against.
-/

/-! ## A154155.P17377151183465511589

`A153201(n)+A154197(n)-A153460(n)`
-/

namespace A154155.P17377151183465511589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153201 (n + 1) + (A154197 (n + 1) - A153460 (n + 1))

end

end A154155.P17377151183465511589

/-! ## A154155.P7821102430328288426

`A153201(n)+A154464(n)-A153615(n)`
-/

namespace A154155.P7821102430328288426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153201 (n + 1) + (A154464 (n + 1) - A153615 (n + 1))

end

end A154155.P7821102430328288426

/-! ## A154155.P1125065245790912199

`A155183(floor(A127731(n+2)/(n+1)+n))`
-/

namespace A154155.P1125065245790912199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155183 (⌊(A127731 (n + 2) : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋.toNat + 1)

end

end A154155.P1125065245790912199

/-!
# A154170: Decimal expansion of log_20 (10).

The programs for A154170, there is no canonical definition to state claims against.
-/

/-! ## A154170.P5610727033624085448

`9-A152821(n)`
-/

namespace A154170.P5610727033624085448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152821 n

end

end A154170.P5610727033624085448

/-!
# A154193: Decimal expansion of log_22 (11).

The programs for A154193, there is no canonical definition to state claims against.
-/

/-! ## A154193.P14568519754668175712

`9-A152858(n)`
-/

namespace A154193.P14568519754668175712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152858 n

end

end A154193.P14568519754668175712

/-!
# A154197: Decimal expansion of log_4 (12).

The programs for A154197, there is no canonical definition to state claims against.
-/

/-! ## A154197.P1915304356836063247

`A153460(n)+A154155(n)-A153201(n)`
-/

namespace A154197.P1915304356836063247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (n + 1) + (A154155 (n + 1) - A153201 (n + 1))

end

end A154197.P1915304356836063247

/-! ## A154197.P4621509365127889191

`A153460(n)+A154464(n)-A153615(n)`
-/

namespace A154197.P4621509365127889191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (n + 1) + (A154464 (n + 1) - A153615 (n + 1))

end

end A154197.P4621509365127889191

