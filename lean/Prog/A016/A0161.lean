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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A016100: Inverse of 2091st cyclotomic polynomial.

The programs for A016100, there is no canonical definition to state claims against.
-/

/-! ## A016100.P15664296173026528750

`A016202(n)%A282535(n+4)`
-/

namespace A016100.P15664296173026528750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016202 n) (A282535 (n + 4))

end

end A016100.P15664296173026528750

/-!
# A016101: (n! - n)/2 for even n.

The programs for A016101, there is no canonical definition to state claims against.
-/

/-! ## A016101.P16233738585818617177

`(n+1)*(Δ[n²]!-1)`
-/

namespace A016101.P16233738585818617177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) - 1)

end

end A016101.P16233738585818617177

/-! ## A016101.P14090710612117091773

`lcm(n+1, 1-Δ[n²]!)`
-/

namespace A016101.P14090710612117091773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ))

end

end A016101.P14090710612117091773

/-! ## A016101.P11869771308962319800

`((2*n+1)!-1)*(n+1)`
-/

namespace A016101.P11869771308962319800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n + 1) : ℤ) - 1) * (n + 1 : ℤ)

end

end A016101.P11869771308962319800

/-! ## A016101.P16249918011233376758

`(n+1)*xor(-1, -(2*n+1)!)`
-/

namespace A016101.P16249918011233376758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (-1) (-(Nat.factorial (2 * n + 1) : ℤ))

end

end A016101.P16249918011233376758

/-! ## A016101.P15996837472878625598

`record[-(n+2)*a(n-1)]-(n+1)` with `a(0)=1`
-/

namespace A016101.P15996837472878625598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n + 2 : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A016101.P15996837472878625598

/-!
# A016102: Inverse of 2093rd cyclotomic polynomial.

The programs for A016102, there is no canonical definition to state claims against.
-/

/-! ## A016102.P9455258586252947830

`Δ[A025441(Δ[A167887(2*(n+3))])]`
-/

namespace A016102.P9455258586252947830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167887 (2 * (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016102.P9455258586252947830

/-! ## A016102.P15906142327147530434

`A016377(A024661(n))`
-/

namespace A016102.P15906142327147530434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016377 (A024661 n).toNat

end

end A016102.P15906142327147530434

/-!
# A016103: Expansion of 1/((1-4x)(1-5x)(1-6x)).

The programs for A016103, the canonical program `A016103.P16218402845199427653` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016103 has offset 0).

The definition of A016103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016103.P16218402845199427653

`15*a(n-1)-74*a(n-2)+120*a(n-3)` with `a(0)=1, a(1)=15, a(2)=151`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016103

/-- `15*a(n-1)-74*a(n-2)+120*a(n-3)` -/
def P16218402845199427653.Spec : Prop :=
  ∀ n, P16218402845199427653.a n = A016103 n

theorem P16218402845199427653.correct : P16218402845199427653.Spec := by
  intro n
  simp only [A016103]

end A016103

/-! ## A016103.P16049957825124980412

`A245020(n+2)/2`
-/

namespace A016103.P16049957825124980412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245020 (n + 2) : ℚ) / 2

end

end A016103.P16049957825124980412

namespace A016103

/-- `A245020(n+2)/2` -/
def P16049957825124980412.Spec : Prop :=
  ∀ n, P16049957825124980412.a n = (A016103 n : ℚ)

end A016103

/-! ## A016103.P14534043933101569182

`Δ[A016222(n)-A016218(n)]`
-/

namespace A016103.P14534043933101569182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 n - A016218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016103.P14534043933101569182

namespace A016103

/-- `Δ[A016222(n)-A016218(n)]` -/
def P14534043933101569182.Spec : Prop :=
  ∀ n, P14534043933101569182.a n = A016103 n

end A016103

/-! ## A016103.P690459880660529400

`Δ[A016228(n)-A016222(n)]`
-/

namespace A016103.P690459880660529400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016228 n - A016222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016103.P690459880660529400

namespace A016103

/-- `Δ[A016228(n)-A016222(n)]` -/
def P690459880660529400.Spec : Prop :=
  ∀ n, P690459880660529400.a n = A016103 n

end A016103

/-! ## A016103.P2232091455445482012

`2*A016295(n)-A016282(n)`
-/

namespace A016103.P2232091455445482012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016295 n - A016282 n

end

end A016103.P2232091455445482012

namespace A016103

/-- `2*A016295(n)-A016282(n)` -/
def P2232091455445482012.Spec : Prop :=
  ∀ n, P2232091455445482012.a n = A016103 n

end A016103

/-! ## A016103.P6265888297286520452

`Δ[(A016228(n)-A016218(n))/2]`
-/

namespace A016103.P6265888297286520452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016228 n - A016218 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016103.P6265888297286520452

namespace A016103

/-- `Δ[(A016228(n)-A016218(n))/2]` -/
def P6265888297286520452.Spec : Prop :=
  ∀ n, P6265888297286520452.a n = (A016103 n : ℚ)

end A016103

/-! ## A016103.P12994066556723255106

`A005062(n+2)-A016149(n+1)`
-/

namespace A016103.P12994066556723255106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005062 (n + 2) - A016149 (n + 1)

end

end A016103.P12994066556723255106

namespace A016103

/-- `A005062(n+2)-A016149(n+1)` -/
def P12994066556723255106.Spec : Prop :=
  ∀ n, P12994066556723255106.a n = A016103 n

end A016103

/-! ## A016103.P14423127240067864035

`A081199(n+2)-A005060(n+2)`
-/

namespace A016103.P14423127240067864035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 (n + 2) - A005060 (n + 2)

end

end A016103.P14423127240067864035

namespace A016103

/-- `A081199(n+2)-A005060(n+2)` -/
def P14423127240067864035.Spec : Prop :=
  ∀ n, P14423127240067864035.a n = A016103 n

end A016103

/-! ## A016103.P12002925883342165852

`A020980(n)/2^n`
-/

namespace A016103.P12002925883342165852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020980 n : ℚ) / (2 ^ n : ℚ)

end

end A016103.P12002925883342165852

namespace A016103

/-- `A020980(n)/2^n` -/
def P12002925883342165852.Spec : Prop :=
  ∀ n, P12002925883342165852.a n = (A016103 n : ℚ)

end A016103

/-! ## A016103.P16508354125768810746

`A143496(A166136(n+1))`
-/

namespace A016103.P16508354125768810746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143496 (A166136 (n + 1)).toNat

end

end A016103.P16508354125768810746

namespace A016103

/-- `A143496(A166136(n+1))` -/
def P16508354125768810746.Spec : Prop :=
  ∀ n, P16508354125768810746.a n = A016103 n

end A016103

/-!
# A016105: Blum integers: numbers of the form p * q where p and q are distinct primes congruent to 3 (mod 4).

The programs for A016105, the canonical program `A016105.P4057351417721320231` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016105 has offset 1).

The definition of A016105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5074 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016105.P495772957869592175

`A195758(n+1)*A195759(n+1)`
-/

namespace A016105.P495772957869592175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195758 (n + 1) * A195759 (n + 1)

end

end A016105.P495772957869592175

namespace A016105

/-- `A195758(n+1)*A195759(n+1)` -/
def P495772957869592175.Spec : Prop :=
  ∀ n, P495772957869592175.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P9760176569643272774

`filter[A057948(n+2), A354108(#)]`
-/

namespace A016105.P9760176569643272774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A016105.P9760176569643272774

namespace A016105

/-- `filter[A057948(n+2), A354108(#)]` -/
def P9760176569643272774.Spec : Prop :=
  ∀ n, P9760176569643272774.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P1742925752082776

`filter[A057948(n+2), A354353(#)]`
-/

namespace A016105.P1742925752082776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A016105.P1742925752082776

namespace A016105

/-- `filter[A057948(n+2), A354353(#)]` -/
def P1742925752082776.Spec : Prop :=
  ∀ n, P1742925752082776.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P606247404231261810

`filter[A057948(n+2), A354819(#)]`
-/

namespace A016105.P606247404231261810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A016105.P606247404231261810

namespace A016105

/-- `filter[A057948(n+2), A354819(#)]` -/
def P606247404231261810.Spec : Prop :=
  ∀ n, P606247404231261810.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P6555366156836916148

`filter[A057948(n+2), A354927(#)]`
-/

namespace A016105.P6555366156836916148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A016105.P6555366156836916148

namespace A016105

/-- `filter[A057948(n+2), A354927(#)]` -/
def P6555366156836916148.Spec : Prop :=
  ∀ n, P6555366156836916148.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P14518156098155334600

`filter[A057948(n+2), A359156(#)]`
-/

namespace A016105.P14518156098155334600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A016105.P14518156098155334600

namespace A016105

/-- `filter[A057948(n+2), A359156(#)]` -/
def P14518156098155334600.Spec : Prop :=
  ∀ n, P14518156098155334600.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P3552646148971309855

`filter[A057948(n+2), A359464(#)]`
-/

namespace A016105.P3552646148971309855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A016105.P3552646148971309855

namespace A016105

/-- `filter[A057948(n+2), A359464(#)]` -/
def P3552646148971309855.Spec : Prop :=
  ∀ n, P3552646148971309855.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P4057351417721320231

`filter[A176258(n+1), A354927(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A016105

/-- `filter[A176258(n+1), A354927(#)]` -/
def P4057351417721320231.Spec : Prop :=
  ∀ n, P4057351417721320231.a n = A016105 (n + 1)

theorem P4057351417721320231.correct : P4057351417721320231.Spec := by
  intro n
  simp only [A016105, Nat.add_sub_cancel]

end A016105

/-! ## A016105.P659266219252534951

`filter[A176258(n+1), A374128(#)]`
-/

namespace A016105.P659266219252534951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A016105.P659266219252534951

namespace A016105

/-- `filter[A176258(n+1), A374128(#)]` -/
def P659266219252534951.Spec : Prop :=
  ∀ n, P659266219252534951.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P18317130594517372921

`filter[A084109(n+1), A354927(#)]`
-/

namespace A016105.P18317130594517372921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A016105.P18317130594517372921

namespace A016105

/-- `filter[A084109(n+1), A354927(#)]` -/
def P18317130594517372921.Spec : Prop :=
  ∀ n, P18317130594517372921.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P14743360781391318151

`filter[A084109(n+1), A064911(#)]`
-/

namespace A016105.P14743360781391318151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A016105.P14743360781391318151

namespace A016105

/-- `filter[A084109(n+1), A064911(#)]` -/
def P14743360781391318151.Spec : Prop :=
  ∀ n, P14743360781391318151.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P3305923280827777504

`filter[A084109(n+1), A101040(#)]`
-/

namespace A016105.P3305923280827777504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A016105.P3305923280827777504

namespace A016105

/-- `filter[A084109(n+1), A101040(#)]` -/
def P3305923280827777504.Spec : Prop :=
  ∀ n, P3305923280827777504.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P8770109763217806579

`filter[A084109(n+1), A123927(#)]`
-/

namespace A016105.P8770109763217806579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A016105.P8770109763217806579

namespace A016105

/-- `filter[A084109(n+1), A123927(#)]` -/
def P8770109763217806579.Spec : Prop :=
  ∀ n, P8770109763217806579.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P715684186740447334

`filter[A167181(n+1), A064911(#)]`
-/

namespace A016105.P715684186740447334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A016105.P715684186740447334

namespace A016105

/-- `filter[A167181(n+1), A064911(#)]` -/
def P715684186740447334.Spec : Prop :=
  ∀ n, P715684186740447334.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P5721018266767760412

`filter[A004614(n+1), A280710(#)]`
-/

namespace A016105.P5721018266767760412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A016105.P5721018266767760412

namespace A016105

/-- `filter[A004614(n+1), A280710(#)]` -/
def P5721018266767760412.Spec : Prop :=
  ∀ n, P5721018266767760412.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P6512367246021674811

`filter[A057948(n+1), A280710(#)]`
-/

namespace A016105.P6512367246021674811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A016105.P6512367246021674811

namespace A016105

/-- `filter[A057948(n+1), A280710(#)]` -/
def P6512367246021674811.Spec : Prop :=
  ∀ n, P6512367246021674811.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P2731268000459882817

`filter[A004614(n+1), A340370(#)]`
-/

namespace A016105.P2731268000459882817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A016105.P2731268000459882817

namespace A016105

/-- `filter[A004614(n+1), A340370(#)]` -/
def P2731268000459882817.Spec : Prop :=
  ∀ n, P2731268000459882817.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P2680522482213613511

`filter[A004614(n+1), A353481(#)]`
-/

namespace A016105.P2680522482213613511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A016105.P2680522482213613511

namespace A016105

/-- `filter[A004614(n+1), A353481(#)]` -/
def P2680522482213613511.Spec : Prop :=
  ∀ n, P2680522482213613511.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P6983519078156395796

`filter[A004614(n+1), A353482(#)]`
-/

namespace A016105.P6983519078156395796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353482 (f1 j).toNat = 1) n)

end

end A016105.P6983519078156395796

namespace A016105

/-- `filter[A004614(n+1), A353482(#)]` -/
def P6983519078156395796.Spec : Prop :=
  ∀ n, P6983519078156395796.a n = A016105 (n + 1)

end A016105

/-! ## A016105.P7000241244422728820

`filter[A004614(n+1), A353483(#)]`
-/

namespace A016105.P7000241244422728820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A016105.P7000241244422728820

namespace A016105

/-- `filter[A004614(n+1), A353483(#)]` -/
def P7000241244422728820.Spec : Prop :=
  ∀ n, P7000241244422728820.a n = A016105 (n + 1)

end A016105

/-!
# A016106: Nonpalindromic and "non-core" numbers that when squared give palindrome with odd number of digits.

The programs for A016106, there is no canonical definition to state claims against.
-/

/-! ## A016106.P3115375197248647167

`A059744(comp[A279262(n+1)])`
-/

namespace A016106.P3115375197248647167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016106.P3115375197248647167

/-! ## A016106.P13834174825871304488

`A059744(lt[char[A279262(n+1)], 1])`
-/

namespace A016106.P13834174825871304488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279262 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A016106.P13834174825871304488

/-! ## A016106.P6061829434175085184

`A059744(comp[∑[A358374(2*n+3)]]+1)`
-/

namespace A016106.P6061829434175085184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A016106.P6061829434175085184

/-! ## A016106.P6108510482402915851

`sqrt(A028818(n+1))`
-/

namespace A016106.P6108510482402915851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028818 (n + 1) : ℝ)

end

end A016106.P6108510482402915851

/-! ## A016106.P3384809389727327296

`root(A028818(n+1), ratio[A000079(n)])`
-/

namespace A016106.P3384809389727327296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028818 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A016106.P3384809389727327296

/-!
# A016108: Numbers k=3*m+1 such that 2^m == 1 (mod k).

The programs for A016108, there is no canonical definition to state claims against.
-/

/-! ## A016108.P12604780322958068365

`A014752(A028310(n))%A000217(A001248(n+1))`
-/

namespace A016108.P12604780322958068365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014752 (A028310 n).toNat) (A000217 (A001248 (n + 1)).toNat)

end

end A016108.P12604780322958068365

/-! ## A016108.P1320254207680947870

`A306787(A028310(n))%A038636(n+1)`
-/

namespace A016108.P1320254207680947870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306787 (A028310 n).toNat) (A038636 (n + 1))

end

end A016108.P1320254207680947870

/-! ## A016108.P3580264048533844300

`A306787(A065033(2*n))%A038636(n+1)`
-/

namespace A016108.P3580264048533844300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306787 (A065033 (2 * n)).toNat) (A038636 (n + 1))

end

end A016108.P3580264048533844300

/-! ## A016108.P16070372740127503855

`A014752(A028310(n))%A008778(A008778(n))`
-/

namespace A016108.P16070372740127503855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014752 (A028310 n).toNat) (A008778 (A008778 n).toNat)

end

end A016108.P16070372740127503855

/-! ## A016108.P6922477825867300423

`A014752(A065033(2*n))%A025418(n+1)`
-/

namespace A016108.P6922477825867300423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014752 (A065033 (2 * n)).toNat) (A025418 (n + 1))

end

end A016108.P6922477825867300423

/-!
# A016109: Expansion of 1/((1-7*x)*(1-8*x)*(1-9*x)*(1-10*x)).

The programs for A016109, the canonical program `A016109.P15188837992162782543` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016109 has offset 0).

The definition of A016109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016109.P15188837992162782543

`19*a(n-1)-90*a(n-2)+8^(n+1)-7^(n+1)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016109

/-- `19*a(n-1)-90*a(n-2)+8^(n+1)-7^(n+1)` -/
def P15188837992162782543.Spec : Prop :=
  ∀ n, P15188837992162782543.a n = A016109 n

theorem P15188837992162782543.correct : P15188837992162782543.Spec := by
  intro n
  simp only [A016109]

end A016109

/-! ## A016109.P5120282609381429977

`(10^(n+3)-3*9^(n+3)+3*8^(n+3)-7^(n+3))/6`
-/

namespace A016109.P5120282609381429977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (3 * 9 ^ (n + 3) : ℤ) + (3 * 8 ^ (n + 3) : ℤ) - (7 ^ (n + 3) : ℤ) : ℚ) / 6

end

end A016109.P5120282609381429977

namespace A016109

/-- `(10^(n+3)-3*9^(n+3)+3*8^(n+3)-7^(n+3))/6` -/
def P5120282609381429977.Spec : Prop :=
  ∀ n, P5120282609381429977.a n = (A016109 n : ℚ)

theorem P5120282609381429977.correct : P5120282609381429977.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016109, Nat.add_sub_cancel, A016109.P5120282609381429977.a, A016109.P15188837992162782543.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016109, Nat.add_sub_cancel, A016109.P5120282609381429977.a, A016109.P15188837992162782543.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016109

/-! ## A016109.P8667513416860051587

`Δ[A024438(n)-A024437(n)]`
-/

namespace A016109.P8667513416860051587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024438 n - A024437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016109.P8667513416860051587

namespace A016109

/-- `Δ[A024438(n)-A024437(n)]` -/
def P8667513416860051587.Spec : Prop :=
  ∀ n, P8667513416860051587.a n = A016109 n

end A016109

/-! ## A016109.P389195401102770710

`Δ[A024441(n)-A024438(n)]`
-/

namespace A016109.P389195401102770710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024441 n - A024438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016109.P389195401102770710

namespace A016109

/-- `Δ[A024441(n)-A024438(n)]` -/
def P389195401102770710.Spec : Prop :=
  ∀ n, P389195401102770710.a n = A016109 n

end A016109

/-! ## A016109.P7461278480346470103

`2*A028155(n)-A028145(n)`
-/

namespace A016109.P7461278480346470103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028155 n - A028145 n

end

end A016109.P7461278480346470103

namespace A016109

/-- `2*A028155(n)-A028145(n)` -/
def P7461278480346470103.Spec : Prop :=
  ∀ n, P7461278480346470103.a n = A016109 n

end A016109

/-! ## A016109.P7346880144916092687

`2*A028190(n)-A028181(n)`
-/

namespace A016109.P7346880144916092687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028190 n - A028181 n

end

end A016109.P7346880144916092687

namespace A016109

/-- `2*A028190(n)-A028181(n)` -/
def P7346880144916092687.Spec : Prop :=
  ∀ n, P7346880144916092687.a n = A016109 n

end A016109

/-! ## A016109.P10339693551772627733

`2*A028204(n)-A028200(n)`
-/

namespace A016109.P10339693551772627733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028204 n - A028200 n

end

end A016109.P10339693551772627733

namespace A016109

/-- `2*A028204(n)-A028200(n)` -/
def P10339693551772627733.Spec : Prop :=
  ∀ n, P10339693551772627733.a n = A016109 n

end A016109

/-! ## A016109.P9254649977664827677

`2*A028210(n)-A028204(n)`
-/

namespace A016109.P9254649977664827677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028210 n - A028204 n

end

end A016109.P9254649977664827677

namespace A016109

/-- `2*A028210(n)-A028204(n)` -/
def P9254649977664827677.Spec : Prop :=
  ∀ n, P9254649977664827677.a n = A016109 n

end A016109

/-! ## A016109.P13213783187867280184

`A020838(n+1)-A020782(n+1)`
-/

namespace A016109.P13213783187867280184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020838 (n + 1) - A020782 (n + 1)

end

end A016109.P13213783187867280184

namespace A016109

/-- `A020838(n+1)-A020782(n+1)` -/
def P13213783187867280184.Spec : Prop :=
  ∀ n, P13213783187867280184.a n = A016109 n

end A016109

/-! ## A016109.P12896667830269306440

`A020976(n+1)-A020970(n+1)`
-/

namespace A016109.P12896667830269306440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020976 (n + 1) - A020970 (n + 1)

end

end A016109.P12896667830269306440

namespace A016109

/-- `A020976(n+1)-A020970(n+1)` -/
def P12896667830269306440.Spec : Prop :=
  ∀ n, P12896667830269306440.a n = A016109 n

end A016109

/-!
# A016110: 

The programs for A016110, there is no canonical definition to state claims against.
-/

/-! ## A016110.P15856137576085251753

`A143315(3^A191291(n+5))`
-/

namespace A016110.P15856137576085251753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143315 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A191291 (n + 5) : ℤ))).toNat

end

end A016110.P15856137576085251753

/-! ## A016110.P14292211449277938389

`val(A118767(A262731(n+5)), 5)`
-/

namespace A016110.P14292211449277938389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118767 (A262731 (n + 5)).toNat).toNat 5

end

end A016110.P14292211449277938389

/-! ## A016110.P15144982340564803871

`C(A214210(n)+1, A026815(n))`
-/

namespace A016110.P15144982340564803871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214210 n + 1).toNat (A026815 n).toNat

end

end A016110.P15144982340564803871

/-! ## A016110.P16309067088514501631

`C(n, A247802(A051038(n+1)))`
-/

namespace A016110.P16309067088514501631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A247802 (A051038 (n + 1)).toNat).toNat

end

end A016110.P16309067088514501631

/-! ## A016110.P13655586486785596311

`∏{d}[A091194(n+1), A269303(#)]`
-/

namespace A016110.P13655586486785596311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A269303 d

end

end A016110.P13655586486785596311

/-! ## A016110.P5033244634905485033

`A010052(∑[A010052(3*(n+1))]!)`
-/

namespace A016110.P5033244634905485033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A016110.P5033244634905485033

/-! ## A016110.P10992521880042825310

`A030308((n-1-A004762(n+3))²)`
-/

namespace A016110.P10992521880042825310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (((n : ℤ) - 1 - A004762 (n + 3)) ^ 2).toNat

end

end A016110.P10992521880042825310

/-! ## A016110.P4224825838959467216

`A010052(∑[A208756(xor(n, n+1)+1)])`
-/

namespace A016110.P4224825838959467216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016110.P4224825838959467216

/-! ## A016110.P17916926731685890970

`A000007(A131981(2*n+5)*A131981(n+1))`
-/

namespace A016110.P17916926731685890970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A131981 (2 * n + 5) * A131981 (n + 1)).toNat

end

end A016110.P17916926731685890970

/-! ## A016110.P5599634948908599258

`A001221(floor(A034828(n+2)/A253647(n+1))+1)`
-/

namespace A016110.P5599634948908599258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌊(A034828 (n + 2) : ℚ) / (A253647 (n + 1) : ℚ)⌋ + 1).toNat

end

end A016110.P5599634948908599258

/-! ## A016110.P5444872868141475164

`A097806(∑[A000122(3*(n+1))^(A067760(n)+2)])`
-/

namespace A016110.P5444872868141475164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (3 * (n + 1)) : ℚ) ^ (A067760 n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A016110.P5444872868141475164

/-! ## A016110.P6519193364877051683

`C(n, comp[A374520(n+1)])`
-/

namespace A016110.P6519193364877051683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016110.P6519193364877051683

/-! ## A016110.P3935675879357517587

`floor(A243932(2*(n+1))/A076919(2*(n+2)))`
-/

namespace A016110.P3935675879357517587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243932 (2 * (n + 1)) : ℚ) / (A076919 (2 * (n + 2)) : ℚ)⌋

end

end A016110.P3935675879357517587

/-! ## A016110.P15361804842134050812

`C(A036580(A240874(n)), A240874(n))`
-/

namespace A016110.P15361804842134050812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036580 (A240874 n).toNat).toNat (A240874 n).toNat

end

end A016110.P15361804842134050812

/-! ## A016110.P3701871810661803408

`C(A007953(A320470(n)), A320470(n))`
-/

namespace A016110.P3701871810661803408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007953 (A320470 n).toNat).toNat (A320470 n).toNat

end

end A016110.P3701871810661803408

/-! ## A016110.P4741550233974659024

`A145649(A112815(n+1)-A106108(n+1))`
-/

namespace A016110.P4741550233974659024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A112815 (n + 1) - A106108 (n + 1)).toNat

end

end A016110.P4741550233974659024

/-!
# A016111: Expansion of 1/((1-11x)(1-12x)(1-13x)(1-14x)(1-15x)).

The programs for A016111, there is no canonical definition to state claims against.
-/

/-! ## A016111.P562625668728275270

`A035348(A141214(n)+7)`
-/

namespace A016111.P562625668728275270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (A141214 n + 7).toNat

end

end A016111.P562625668728275270

/-! ## A016111.P12794612030976992926

`A035348(A052905(n)+9)`
-/

namespace A016111.P12794612030976992926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (A052905 n + 9).toNat

end

end A016111.P12794612030976992926

/-! ## A016111.P1597910443916628032

`A035348(A055999(n)+10)`
-/

namespace A016111.P1597910443916628032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (A055999 n + 10).toNat

end

end A016111.P1597910443916628032

/-! ## A016111.P16943700961169731227

`A035348(A167614(n+2)+1)`
-/

namespace A016111.P16943700961169731227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (A167614 (n + 2) + 1).toNat

end

end A016111.P16943700961169731227

/-! ## A016111.P15779085545581070171

`A035348(eq[5, A131818(n+1)])`
-/

namespace A016111.P15779085545581070171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035348 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A016111.P15779085545581070171

/-!
# A016114: The smallest representative in a cycle of circular primes, where circular primes are numbers that remain prime under cyclic shifts of digits.

The programs for A016114, there is no canonical definition to state claims against.
-/

/-! ## A016114.P11547115649216947411

`A000040(A173819(n+1))`
-/

namespace A016114.P11547115649216947411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173819 (n + 1)).toNat

end

end A016114.P11547115649216947411

/-! ## A016114.P12068090849366690171

`A008578(A173819(n+1)+1)`
-/

namespace A016114.P12068090849366690171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A173819 (n + 1) + 1).toNat

end

end A016114.P12068090849366690171

/-! ## A016114.P10697295020656459015

`A073846(2*A173819(n+1))`
-/

namespace A016114.P10697295020656459015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A173819 (n + 1)).toNat

end

end A016114.P10697295020656459015

/-! ## A016114.P12313100676412406212

`A082500(2*A173819(n+1))`
-/

namespace A016114.P12313100676412406212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A173819 (n + 1)).toNat

end

end A016114.P12313100676412406212

/-! ## A016114.P15342449800493088307

`A219606(2*A173819(n+1))`
-/

namespace A016114.P15342449800493088307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A173819 (n + 1)).toNat

end

end A016114.P15342449800493088307

/-!
# A016115: Number of prime palindromes with n digits.

The programs for A016115, there is no canonical definition to state claims against.
-/

/-! ## A016115.P15161267348860420006

`Δ[A050251(n)]`
-/

namespace A016115.P15161267348860420006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016115.P15161267348860420006

/-! ## A016115.P15251513204674246775

`A050251(n+1)-A050251(n)`
-/

namespace A016115.P15251513204674246775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 (n + 1) - A050251 n

end

end A016115.P15251513204674246775

/-! ## A016115.P11969293999993704698

`2*A256623(n+1)-A048054(n+1)`
-/

namespace A016115.P11969293999993704698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256623 (n + 1) - A048054 (n + 1)

end

end A016115.P11969293999993704698

/-! ## A016115.P12658762243527269443

`A048054(n+1)-A152014(n+1)`
-/

namespace A016115.P12658762243527269443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048054 (n + 1) - A152014 (n + 1)

end

end A016115.P12658762243527269443

/-! ## A016115.P7326522529887698739

`A256623(n+1)-A152014(n+1)/2`
-/

namespace A016115.P7326522529887698739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256623 (n + 1) : ℚ) - (A152014 (n + 1) : ℚ) / 2

end

end A016115.P7326522529887698739

/-!
# A016116: a(n) = 2^floor(n/2).

The programs for A016116, the canonical program `A016116.P661627231399665482` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016116 has offset 0).

The definition of A016116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016116.P6211292814120846871

`2^floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016116.P6211292814120846871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A016116.P6211292814120846871

namespace A016116

/-- `2^floor(n/2)` -/
def P6211292814120846871.Spec : Prop :=
  ∀ n, P6211292814120846871.a n = (A016116 n : ℚ)

end A016116

/-! ## A016116.P661627231399665482

`2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016116

/-- `2*a(n-2)` -/
def P661627231399665482.Spec : Prop :=
  ∀ n, (P661627231399665482.a n : ℤ) = A016116 n

theorem P661627231399665482.correct : P661627231399665482.Spec := by
  intro n
  simp only [A016116]

end A016116

/-! ## A016116.P13253512868090769913

`∏[gcd(2, ∏{d}[n, #])]`
-/

namespace A016116.P13253512868090769913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P13253512868090769913

namespace A016116

/-- `∏[gcd(2, ∏{d}[n, #])]` -/
def P13253512868090769913.Spec : Prop :=
  ∀ n, (P13253512868090769913.a n : ℤ) = A016116 n

end A016116

/-! ## A016116.P5662128013926858495

`∏[gcd(4, ∏{p}[n, #])]`
-/

namespace A016116.P5662128013926858495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P5662128013926858495

namespace A016116

/-- `∏[gcd(4, ∏{p}[n, #])]` -/
def P5662128013926858495.Spec : Prop :=
  ∀ n, (P5662128013926858495.a n : ℤ) = A016116 n

end A016116

/-! ## A016116.P12808882021127032351

`∏[2-and(1, n)^n]`
-/

namespace A016116.P12808882021127032351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P12808882021127032351

namespace A016116

/-- `∏[2-and(1, n)^n]` -/
def P12808882021127032351.Spec : Prop :=
  ∀ n, P12808882021127032351.a n = A016116 n

end A016116

/-! ## A016116.P3975263699339862545

`∏[Δ[abs(or(1, -n))]!]`
-/

namespace A016116.P3975263699339862545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P3975263699339862545

namespace A016116

/-- `∏[Δ[abs(or(1, -n))]!]` -/
def P3975263699339862545.Spec : Prop :=
  ∀ n, (P3975263699339862545.a n : ℤ) = A016116 n

end A016116

/-! ## A016116.P1531261435355697942

`∏[3-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A016116.P1531261435355697942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P1531261435355697942

namespace A016116

/-- `∏[3-a(n-1)]` -/
def P1531261435355697942.Spec : Prop :=
  ∀ n, P1531261435355697942.a n = A016116 n

end A016116

/-! ## A016116.P6123610957227210254

`∏[((n-1)%2+1)!]`
-/

namespace A016116.P6123610957227210254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - 1) 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P6123610957227210254

namespace A016116

/-- `∏[((n-1)%2+1)!]` -/
def P6123610957227210254.Spec : Prop :=
  ∀ n, (P6123610957227210254.a n : ℤ) = A016116 n

end A016116

/-! ## A016116.P10204178318378388611

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=1`
-/

namespace A016116.P10204178318378388611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A016116.P10204178318378388611

namespace A016116

/-- `a(n-2)/sqrt(1/4)` -/
def P10204178318378388611.Spec : Prop :=
  ∀ n, P10204178318378388611.a n = (A016116 n : ℝ)

end A016116

/-! ## A016116.P14571696483919192544

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A016116.P14571696483919192544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A016116.P14571696483919192544

namespace A016116

/-- `a(n-2)+a(n-2)` -/
def P14571696483919192544.Spec : Prop :=
  ∀ n, (P14571696483919192544.a n : ℤ) = A016116 n

theorem P14571696483919192544.correct : P14571696483919192544.Spec := by
  intro n
  simp only [A016116, Nat.add_sub_cancel, A016116.P14571696483919192544.a, A016116.P661627231399665482.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016116

/-! ## A016116.P7895480159906877104

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A016116.P7895480159906877104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A016116.P7895480159906877104

namespace A016116

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P7895480159906877104.Spec : Prop :=
  ∀ n, P7895480159906877104.a n = A016116 n

end A016116

/-! ## A016116.P763982035751890857

`abs(A320770(n))`
-/

namespace A016116.P763982035751890857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320770 n|

end

end A016116.P763982035751890857

namespace A016116

/-- `abs(A320770(n))` -/
def P763982035751890857.Spec : Prop :=
  ∀ n, P763982035751890857.a n = A016116 n

end A016116

/-! ## A016116.P16797860330567831390

`∏[A040001(n)]`
-/

namespace A016116.P16797860330567831390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A016116.P16797860330567831390

namespace A016116

/-- `∏[A040001(n)]` -/
def P16797860330567831390.Spec : Prop :=
  ∀ n, P16797860330567831390.a n = A016116 n

end A016116

/-! ## A016116.P10909736255985246884

`A158780(n+2)`
-/

namespace A016116.P10909736255985246884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2)

end

end A016116.P10909736255985246884

namespace A016116

/-- `A158780(n+2)` -/
def P10909736255985246884.Spec : Prop :=
  ∀ n, P10909736255985246884.a n = A016116 n

end A016116

/-! ## A016116.P8631493352179639625

`A060546(n+1)/2`
-/

namespace A016116.P8631493352179639625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (n + 1) : ℚ) / 2

end

end A016116.P8631493352179639625

namespace A016116

/-- `A060546(n+1)/2` -/
def P8631493352179639625.Spec : Prop :=
  ∀ n, P8631493352179639625.a n = (A016116 n : ℚ)

end A016116

/-!
# A016117: Inverse of 2108th cyclotomic polynomial.

The programs for A016117, there is no canonical definition to state claims against.
-/

/-! ## A016117.P17981687956838024218

`A016118(A122124(n+1))`
-/

namespace A016117.P17981687956838024218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016118 (A122124 (n + 1)).toNat

end

end A016117.P17981687956838024218

/-!
# A016118: Inverse of 2109th cyclotomic polynomial.

The programs for A016118, there is no canonical definition to state claims against.
-/

/-! ## A016118.P10275313460047269092

`(-1)^n*A011652(n)`
-/

namespace A016118.P10275313460047269092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011652 n

end

end A016118.P10275313460047269092

/-! ## A016118.P6400288736462857324

`A011646(A047562(n+1))`
-/

namespace A016118.P6400288736462857324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A047562 (n + 1)).toNat

end

end A016118.P6400288736462857324

/-! ## A016118.P5158603986350774028

`A011646(A047567(n+1))`
-/

namespace A016118.P5158603986350774028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A047567 (n + 1)).toNat

end

end A016118.P5158603986350774028

/-! ## A016118.P4894265898146248397

`A011646(A047577(n+1))`
-/

namespace A016118.P4894265898146248397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A047577 (n + 1)).toNat

end

end A016118.P4894265898146248397

/-! ## A016118.P16231614589057764202

`A011646(A370132(n+1))`
-/

namespace A016118.P16231614589057764202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A370132 (n + 1)).toNat

end

end A016118.P16231614589057764202

/-!
# A016119: Minimal number of cosets in an orthogonal sublattice of A_n (minimal number of paths in any trellis diagram).

The programs for A016119, there is no canonical definition to state claims against.
-/

/-! ## A016119.P3370596636571031517

`A327271(n+2)/(n+2)`
-/

namespace A016119.P3370596636571031517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327271 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A016119.P3370596636571031517

/-! ## A016119.P10631081204051372833

`A327267(2^(n+2))/(n+2)`
-/

namespace A016119.P10631081204051372833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327267 (2 ^ (n + 2)) : ℚ) / (n + 2 : ℚ)

end

end A016119.P10631081204051372833

/-! ## A016119.P6075402510901148224

`A000010(gcd(2, n+1)*lcm(n+2, a(n-1)))` with `a(0)=1`
-/

namespace A016119.P6075402510901148224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.gcd 2 (n + 1) * Int.lcm (n + 2 : ℤ) (a (n - 1)))

end

end A016119.P6075402510901148224

/-! ## A016119.P14069395779237272141

`gcd(record[gcd(n, 5^n-(2^n+3^n))]!, A340111(2*(n+1)))`
-/

namespace A016119.P14069395779237272141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((5 ^ n : ℤ) - (2 ^ n + 3 ^ n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) (A340111 (2 * (n + 1)))

end

end A016119.P14069395779237272141

/-! ## A016119.P9592588227192175464

`gcd(A037223(n+1), A110296(n+1))`
-/

namespace A016119.P9592588227192175464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037223 (n + 1)) (A110296 (n + 1))

end

end A016119.P9592588227192175464

/-!
# A016120: Minimal number of cosets in an orthogonal sublattice of {A_n}* (minimal number of paths in any trellis diagram).

The programs for A016120, there is no canonical definition to state claims against.
-/

/-! ## A016120.P6113334109402736770

`and(A298409(n), A337881(n+3))`
-/

namespace A016120.P6113334109402736770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298409 n) (A337881 (n + 3))

end

end A016120.P6113334109402736770

/-! ## A016120.P7872580673606906390

`gcd(record[A337881(n+3)], A161168(n))`
-/

namespace A016120.P7872580673606906390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337881 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A161168 n)

end

end A016120.P7872580673606906390

/-! ## A016120.P11081214203131052240

`and(A178066(n+1), A337881(n+3))`
-/

namespace A016120.P11081214203131052240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178066 (n + 1)) (A337881 (n + 3))

end

end A016120.P11081214203131052240

/-!
# A016121: Number of sequences (a_1, a_2, ..., a_n) of length n with a_1 = 1 satisfying a_i <= a_{i+1} <= 2*a_i.

The programs for A016121, there is no canonical definition to state claims against.
-/

/-! ## A016121.P4805202071690611675

`∑[A125862(abs(1-n))]-2`
-/

namespace A016121.P4805202071690611675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A016121.P4805202071690611675

/-! ## A016121.P637325836811687225

`∑[A125862(log2(ceil(2^(n-1))))]`
-/

namespace A016121.P637325836811687225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016121.P637325836811687225

/-! ## A016121.P15163032185071693325

`A125862(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016121.P15163032185071693325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125862 (n - 1) + a (n - 1)

end

end A016121.P15163032185071693325

/-! ## A016121.P8775158891868686226

`Δ[A097713(n)]-A125862(n)`
-/

namespace A016121.P8775158891868686226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125862 n

end

end A016121.P8775158891868686226

/-! ## A016121.P15781871224946275297

`record[A125860(n)]`
-/

namespace A016121.P15781871224946275297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016121.P15781871224946275297

/-!
# A016123: a(n) = (11^(n+1) - 1)/10.

The programs for A016123, the canonical program `A016123.P12151105359055444619` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016123 has offset 0).

The definition of A016123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11^(n+1)-1)/10` (program `A016123.P16008283882812211745`, by `A016123.P16008283882812211745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016123.P16008283882812211745

`(11^(n+1)-1)/10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016123.P16008283882812211745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - 1 : ℚ) / 10

end

end A016123.P16008283882812211745

namespace A016123

/-- `(11^(n+1)-1)/10` -/
def P16008283882812211745.Spec : Prop :=
  ∀ n, P16008283882812211745.a n = (A016123 n : ℚ)

theorem P16008283882812211745.correct : P16008283882812211745.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016123, Nat.add_sub_cancel, A016123.P16008283882812211745.a, A016123.P12151105359055444619.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016123, Nat.add_sub_cancel, A016123.P16008283882812211745.a, A016123.P12151105359055444619.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016123

/-! ## A016123.P12151105359055444619

`1+11*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016123

/-- `1+11*a(n-1)` -/
def P12151105359055444619.Spec : Prop :=
  ∀ n, (P12151105359055444619.a n : ℤ) = A016123 n

theorem P12151105359055444619.correct : P12151105359055444619.Spec := by
  intro n
  simp only [A016123]

end A016123

/-! ## A016123.P14441186881664882588

`∑[11*a(n-1)]` with `a(0)=1`
-/

namespace A016123.P14441186881664882588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016123.P14441186881664882588

namespace A016123

/-- `∑[11*a(n-1)]` -/
def P14441186881664882588.Spec : Prop :=
  ∀ n, (P14441186881664882588.a n : ℤ) = A016123 n

end A016123

/-! ## A016123.P14067202462181769642

`lcm(11, a(n-1))+1` with `a(0)=1`
-/

namespace A016123.P14067202462181769642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 1

end

end A016123.P14067202462181769642

namespace A016123

/-- `lcm(11, a(n-1))+1` -/
def P14067202462181769642.Spec : Prop :=
  ∀ n, (P14067202462181769642.a n : ℤ) = A016123 n

end A016123

/-! ## A016123.P14030204671911942839

`11^n+a(n-1)` with `a(0)=1`
-/

namespace A016123.P14030204671911942839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  11 ^ n + a (n - 1)

end

end A016123.P14030204671911942839

namespace A016123

/-- `11^n+a(n-1)` -/
def P14030204671911942839.Spec : Prop :=
  ∀ n, (P14030204671911942839.a n : ℤ) = A016123 n

end A016123

/-! ## A016123.P13353454931789935792

`1-(a(n-1)-12*a(n-1))` with `a(0)=1`
-/

namespace A016123.P13353454931789935792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 12 * a (n - 1))

end

end A016123.P13353454931789935792

namespace A016123

/-- `1-(a(n-1)-12*a(n-1))` -/
def P13353454931789935792.Spec : Prop :=
  ∀ n, P13353454931789935792.a n = A016123 n

end A016123

/-! ## A016123.P6238932789389389086

`A105280(n)+1`
-/

namespace A016123.P6238932789389389086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105280 n + 1

end

end A016123.P6238932789389389086

namespace A016123

/-- `A105280(n)+1` -/
def P6238932789389389086.Spec : Prop :=
  ∀ n, P6238932789389389086.a n = A016123 n

end A016123

/-! ## A016123.P17154975823973607019

`A047856(n+1)-1`
-/

namespace A016123.P17154975823973607019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 (n + 1) - 1

end

end A016123.P17154975823973607019

namespace A016123

/-- `A047856(n+1)-1` -/
def P17154975823973607019.Spec : Prop :=
  ∀ n, P17154975823973607019.a n = A016123 n

end A016123

/-! ## A016123.P8283155184569259866

`A048335(A017281(n))`
-/

namespace A016123.P8283155184569259866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048335 (A017281 n).toNat

end

end A016123.P8283155184569259866

namespace A016123

/-- `A048335(A017281(n))` -/
def P8283155184569259866.Spec : Prop :=
  ∀ n, P8283155184569259866.a n = A016123 n

end A016123

/-!
# A016125: Expansion of 1/((1-x)*(1-12*x)).

The programs for A016125, the canonical program `A016125.P13310118144162396173` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016125 has offset 0).

The definition of A016125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016125.P13310118144162396173

`∑[12^n]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016125

/-- `∑[12^n]` -/
def P13310118144162396173.Spec : Prop :=
  ∀ n, (P13310118144162396173.a n : ℤ) = A016125 n

theorem P13310118144162396173.correct : P13310118144162396173.Spec := by
  intro n
  simp only [A016125]

end A016125

/-! ## A016125.P1760765616564947766

`12*a(n-1)+1` with `a(0)=1`
-/

namespace A016125.P1760765616564947766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  12 * a (n - 1) + 1

end

end A016125.P1760765616564947766

namespace A016125

/-- `12*a(n-1)+1` -/
def P1760765616564947766.Spec : Prop :=
  ∀ n, (P1760765616564947766.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P10889729669482623000

`lcm(12, a(n-1))+1` with `a(0)=1`
-/

namespace A016125.P10889729669482623000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 12 (a (n - 1)) + 1

end

end A016125.P10889729669482623000

namespace A016125

/-- `lcm(12, a(n-1))+1` -/
def P10889729669482623000.Spec : Prop :=
  ∀ n, (P10889729669482623000.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P13669766521180081323

`or(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016125.P13669766521180081323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (12 * a (n - 1))

end

end A016125.P13669766521180081323

namespace A016125

/-- `or(1, 12*a(n-1))` -/
def P13669766521180081323.Spec : Prop :=
  ∀ n, (P13669766521180081323.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P6516800608852912794

`xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016125.P6516800608852912794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (12 * a (n - 1))

end

end A016125.P6516800608852912794

namespace A016125

/-- `xor(1, 12*a(n-1))` -/
def P6516800608852912794.Spec : Prop :=
  ∀ n, (P6516800608852912794.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P4258510717095789175

`12^n+a(n-1)` with `a(0)=1`
-/

namespace A016125.P4258510717095789175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  12 ^ n + a (n - 1)

end

end A016125.P4258510717095789175

namespace A016125

/-- `12^n+a(n-1)` -/
def P4258510717095789175.Spec : Prop :=
  ∀ n, (P4258510717095789175.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P14200591926196571353

`floor(∑[12*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A016125.P14200591926196571353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016125.P14200591926196571353

namespace A016125

/-- `floor(∑[12*a(n-1)])` -/
def P14200591926196571353.Spec : Prop :=
  ∀ n, (P14200591926196571353.a n : ℤ) = A016125 n

end A016125

/-! ## A016125.P2500587862874145708

`∑[12*a(n-1)]/2` with `a(0)=2`
-/

namespace A016125.P2500587862874145708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A016125.P2500587862874145708

namespace A016125

/-- `∑[12*a(n-1)]/2` -/
def P2500587862874145708.Spec : Prop :=
  ∀ n, P2500587862874145708.a n = (A016125 n : ℚ)

end A016125

/-! ## A016125.P3716776661545506711

`4-3*(1-4*a(n-1))` with `a(0)=1`
-/

namespace A016125.P3716776661545506711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - 3 * (1 - 4 * a (n - 1))

end

end A016125.P3716776661545506711

namespace A016125

/-- `4-3*(1-4*a(n-1))` -/
def P3716776661545506711.Spec : Prop :=
  ∀ n, P3716776661545506711.a n = A016125 n

end A016125

/-!
# A016126: Inverse of 2117th cyclotomic polynomial.

The programs for A016126, there is no canonical definition to state claims against.
-/

/-! ## A016126.P9761065352927807317

`A016272(A244215(5*(n+4))+n)`
-/

namespace A016126.P9761065352927807317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016272 (A244215 (5 * (n + 4)) + (n : ℤ)).toNat

end

end A016126.P9761065352927807317

/-! ## A016126.P13272997308929519262

`1-A033107(A113724(n+1))`
-/

namespace A016126.P13272997308929519262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033107 (A113724 (n + 1)).toNat

end

end A016126.P13272997308929519262

/-! ## A016126.P14151138727754929252

`A239110(A113724(n+1)+11)`
-/

namespace A016126.P14151138727754929252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239110 (A113724 (n + 1) + 11).toNat

end

end A016126.P14151138727754929252

/-! ## A016126.P1032615434052063648

`A293119(or(6, A113724(n+1)))`
-/

namespace A016126.P1032615434052063648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293119 (Int.lor 6 (A113724 (n + 1))).toNat

end

end A016126.P1032615434052063648

/-! ## A016126.P1571863749589331190

`A010060(C(14, A113724(n+1)))`
-/

namespace A016126.P1571863749589331190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 14 (A113724 (n + 1)).toNat)

end

end A016126.P1571863749589331190

/-! ## A016126.P2341707022702096649

`A010060(or(14, A113724(n+1)))`
-/

namespace A016126.P2341707022702096649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor 14 (A113724 (n + 1))).toNat

end

end A016126.P2341707022702096649

/-! ## A016126.P6375254618214829785

`A144473(or(15, A113724(n+1)))`
-/

namespace A016126.P6375254618214829785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144473 (Int.lor 15 (A113724 (n + 1))).toNat

end

end A016126.P6375254618214829785

/-! ## A016126.P7906368671188413854

`A219987(floor(log2(A113724(n+1))))`
-/

namespace A016126.P7906368671188413854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219987 (Nat.log 2 (A113724 (n + 1)).toNat)

end

end A016126.P7906368671188413854

/-! ## A016126.P18263508871856350178

`A377666(floor(log2(A113724(n+1))))`
-/

namespace A016126.P18263508871856350178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377666 (Nat.log 2 (A113724 (n + 1)).toNat)

end

end A016126.P18263508871856350178

/-! ## A016126.P14947892385634351956

`A010054(A054451(C(comp[12*n-5]-n, 2)))`
-/

namespace A016126.P14947892385634351956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054451 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2)).toNat

end

end A016126.P14947892385634351956

/-!
# A016127: Expansion of g.f. 1/((1-2*x)*(1-5*x)).

The programs for A016127, the canonical program `A016127.P13065376476729147918` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016127 has offset 0).

The definition of A016127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016127.P13065376476729147918

`2*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016127

/-- `2*a(n-1)+5^n` -/
def P13065376476729147918.Spec : Prop :=
  ∀ n, (P13065376476729147918.a n : ℤ) = A016127 n

theorem P13065376476729147918.correct : P13065376476729147918.Spec := by
  intro n
  simp only [A016127]

end A016127

/-! ## A016127.P13834326493048626585

`(5^(n+1)-2^(n+1))/3`
-/

namespace A016127.P13834326493048626585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016127.P13834326493048626585

namespace A016127

/-- `(5^(n+1)-2^(n+1))/3` -/
def P13834326493048626585.Spec : Prop :=
  ∀ n, P13834326493048626585.a n = (A016127 n : ℚ)

theorem P13834326493048626585.correct : P13834326493048626585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016127, Nat.add_sub_cancel, A016127.P13834326493048626585.a, A016127.P13065376476729147918.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016127, Nat.add_sub_cancel, A016127.P13834326493048626585.a, A016127.P13065376476729147918.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016127

/-! ## A016127.P10378670785428444183

`9*a(n-1)-24*a(n-2)+20*a(n-3)` with `a(0)=1, a(1)=7, a(2)=39`
-/

namespace A016127.P10378670785428444183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 39] fun n a =>
  9 * a (n - 1) - 24 * a (n - 2) + 20 * a (n - 3)

end

end A016127.P10378670785428444183

namespace A016127

/-- `9*a(n-1)-24*a(n-2)+20*a(n-3)` -/
def P10378670785428444183.Spec : Prop :=
  ∀ n, P10378670785428444183.a n = A016127 n

end A016127

/-! ## A016127.P1829259020093716833

`lcm(2, a(n-1))+5^n` with `a(0)=1`
-/

namespace A016127.P1829259020093716833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 5 ^ n

end

end A016127.P1829259020093716833

namespace A016127

/-- `lcm(2, a(n-1))+5^n` -/
def P1829259020093716833.Spec : Prop :=
  ∀ n, (P1829259020093716833.a n : ℤ) = A016127 n

end A016127

/-! ## A016127.P3860463818262385951

`5^n+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016127.P3860463818262385951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 ^ n + (a (n - 1) + a (n - 1))

end

end A016127.P3860463818262385951

namespace A016127

/-- `5^n+a(n-1)+a(n-1)` -/
def P3860463818262385951.Spec : Prop :=
  ∀ n, (P3860463818262385951.a n : ℤ) = A016127 n

theorem P3860463818262385951.correct : P3860463818262385951.Spec := by
  intro n
  simp only [A016127, Nat.add_sub_cancel, A016127.P3860463818262385951.a, A016127.P13065376476729147918.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016127

/-! ## A016127.P16177584511164630074

`A083421(n)-a(n-1)` with `a(0)=1`
-/

namespace A016127.P16177584511164630074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083421 n - a (n - 1)

end

end A016127.P16177584511164630074

namespace A016127

/-- `A083421(n)-a(n-1)` -/
def P16177584511164630074.Spec : Prop :=
  ∀ n, P16177584511164630074.a n = A016127 n

end A016127

/-! ## A016127.P438241838620657033

`A000079(n)+lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A016127.P438241838620657033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A016127.P438241838620657033

namespace A016127

/-- `A000079(n)+lcm(5, a(n-1))` -/
def P438241838620657033.Spec : Prop :=
  ∀ n, P438241838620657033.a n = A016127 n

end A016127

/-! ## A016127.P12074202700598256973

`a(n-1)+A000351(n)+a(n-1)` with `a(0)=1`
-/

namespace A016127.P12074202700598256973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000351 n + a (n - 1))

end

end A016127.P12074202700598256973

namespace A016127

/-- `a(n-1)+A000351(n)+a(n-1)` -/
def P12074202700598256973.Spec : Prop :=
  ∀ n, P12074202700598256973.a n = A016127 n

end A016127

/-! ## A016127.P5093495919801872462

`2*A000351(n)-A247313(n)`
-/

namespace A016127.P5093495919801872462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A247313 n

end

end A016127.P5093495919801872462

namespace A016127

/-- `2*A000351(n)-A247313(n)` -/
def P5093495919801872462.Spec : Prop :=
  ∀ n, P5093495919801872462.a n = A016127 n

end A016127

/-! ## A016127.P8474777904626992954

`∑[A084177(n+1)+A084177(n)]`
-/

namespace A016127.P8474777904626992954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (n + 1) + A084177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016127.P8474777904626992954

namespace A016127

/-- `∑[A084177(n+1)+A084177(n)]` -/
def P8474777904626992954.Spec : Prop :=
  ∀ n, P8474777904626992954.a n = A016127 n

end A016127

/-! ## A016127.P16276166211440158874

`A084153(n+1)+A084153(n+2)`
-/

namespace A016127.P16276166211440158874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084153 (n + 1) + A084153 (n + 2)

end

end A016127.P16276166211440158874

namespace A016127

/-- `A084153(n+1)+A084153(n+2)` -/
def P16276166211440158874.Spec : Prop :=
  ∀ n, P16276166211440158874.a n = A016127 n

end A016127

/-! ## A016127.P4759956953608627366

`A247313(n+1)-A000079(n+1)`
-/

namespace A016127.P4759956953608627366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247313 (n + 1) - A000079 (n + 1)

end

end A016127.P4759956953608627366

namespace A016127

/-- `A247313(n+1)-A000079(n+1)` -/
def P4759956953608627366.Spec : Prop :=
  ∀ n, P4759956953608627366.a n = A016127 n

end A016127

/-! ## A016127.P7166548829617621161

`A276508(n+1)-A024494(n+1)`
-/

namespace A016127.P7166548829617621161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276508 (n + 1) - A024494 (n + 1)

end

end A016127.P7166548829617621161

namespace A016127

/-- `A276508(n+1)-A024494(n+1)` -/
def P7166548829617621161.Spec : Prop :=
  ∀ n, P7166548829617621161.a n = A016127 n

end A016127

/-! ## A016127.P1738181230028666871

`2*A015531(n+1)-A001045(n+1)`
-/

namespace A016127.P1738181230028666871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015531 (n + 1) - A001045 (n + 1)

end

end A016127.P1738181230028666871

namespace A016127

/-- `2*A015531(n+1)-A001045(n+1)` -/
def P1738181230028666871.Spec : Prop :=
  ∀ n, P1738181230028666871.a n = A016127 n

end A016127

/-! ## A016127.P16826996633260367708

`A074600(n+1)-2*A247313(n+1)`
-/

namespace A016127.P16826996633260367708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 (n + 1) - 2 * A247313 (n + 1)

end

end A016127.P16826996633260367708

namespace A016127

/-- `A074600(n+1)-2*A247313(n+1)` -/
def P16826996633260367708.Spec : Prop :=
  ∀ n, P16826996633260367708.a n = A016127 n

end A016127

/-!
# A016128: 

The programs for A016128, there is no canonical definition to state claims against.
-/

/-! ## A016128.P14673264319062166552

`A019590(A109701(n))`
-/

namespace A016128.P14673264319062166552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A109701 n).toNat

end

end A016128.P14673264319062166552

/-! ## A016128.P938244529770454570

`A000001(C(2, A326594(n)))`
-/

namespace A016128.P938244529770454570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Nat.choose 2 (A326594 n).toNat)

end

end A016128.P938244529770454570

/-! ## A016128.P15771353875220490486

`A000014(C(2, A326594(n)))`
-/

namespace A016128.P15771353875220490486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000014 (Nat.choose 2 (A326594 n).toNat)

end

end A016128.P15771353875220490486

/-! ## A016128.P9776657571641422276

`A000045(C(2, A326594(n)))`
-/

namespace A016128.P9776657571641422276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A326594 n).toNat)

end

end A016128.P9776657571641422276

/-! ## A016128.P7158441659346891190

`A000120(C(2, A326594(n)))`
-/

namespace A016128.P7158441659346891190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A326594 n).toNat)

end

end A016128.P7158441659346891190

/-! ## A016128.P6403272743234716689

`A000311(C(2, A326594(n)))`
-/

namespace A016128.P6403272743234716689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 (Nat.choose 2 (A326594 n).toNat)

end

end A016128.P6403272743234716689

/-! ## A016128.P10849538844899179165

`C(A389101(n), A326594(n))`
-/

namespace A016128.P10849538844899179165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A389101 n).toNat (A326594 n).toNat

end

end A016128.P10849538844899179165

/-! ## A016128.P2581558060618106289

`A036987(∑[A051516(3*n+1)]²)`
-/

namespace A016128.P2581558060618106289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A016128.P2581558060618106289

/-! ## A016128.P10423476328098122524

`C(A218616(n), A218616(A004885(n+1)))`
-/

namespace A016128.P10423476328098122524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A218616 n).toNat (A218616 (A004885 (n + 1)).toNat).toNat

end

end A016128.P10423476328098122524

/-! ## A016128.P1838991919088230119

`C(A051159(A096304(n+1)), A210631(n+1))`
-/

namespace A016128.P1838991919088230119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051159 (A096304 (n + 1)).toNat).toNat (A210631 (n + 1)).toNat

end

end A016128.P1838991919088230119

/-! ## A016128.P16453244733394337949

`C(A231153(n+2), A269725(A231153(n+2)))`
-/

namespace A016128.P16453244733394337949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A231153 (n + 2)).toNat (A269725 (A231153 (n + 2)).toNat).toNat

end

end A016128.P16453244733394337949

/-! ## A016128.P6429090776479369757

`C(n, comp[A320048(3*n+4)])`
-/

namespace A016128.P6429090776479369757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320048 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016128.P6429090776479369757

/-! ## A016128.P11372863164690927942

`C(A060854(A085091(n+4)), A133854(n+1))`
-/

namespace A016128.P11372863164690927942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060854 (A085091 (n + 4)).toNat).toNat (A133854 (n + 1)).toNat

end

end A016128.P11372863164690927942

/-! ## A016128.P242668330509764943

`C(A004526(n+3), A349144(A004526(n+3)))`
-/

namespace A016128.P242668330509764943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (n + 3)).toNat (A349144 (A004526 (n + 3)).toNat).toNat

end

end A016128.P242668330509764943

/-! ## A016128.P17396549193632585694

`A000120(C(2, A326593(n)))`
-/

namespace A016128.P17396549193632585694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A326593 n).toNat)

end

end A016128.P17396549193632585694

/-! ## A016128.P7856819074121922250

`A332383(C(2, A326593(n)))`
-/

namespace A016128.P7856819074121922250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332383 (Nat.choose 2 (A326593 n).toNat)

end

end A016128.P7856819074121922250

/-! ## A016128.P1305147363685857598

`C(A270641(A005153(n+1)), A326593(n))`
-/

namespace A016128.P1305147363685857598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270641 (A005153 (n + 1)).toNat).toNat (A326593 n).toNat

end

end A016128.P1305147363685857598

/-! ## A016128.P1173853648903021790

`C(A270641(A367907(n+1)), A326593(n))`
-/

namespace A016128.P1173853648903021790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270641 (A367907 (n + 1)).toNat).toNat (A326593 n).toNat

end

end A016128.P1173853648903021790

/-! ## A016128.P2915289057633541610

`C(A270641(A380352(n+4)), A326593(n))`
-/

namespace A016128.P2915289057633541610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270641 (A380352 (n + 4)).toNat).toNat (A326593 n).toNat

end

end A016128.P2915289057633541610

/-!
# A016129: Expansion of 1/((1-2*x)*(1-6*x)).

The programs for A016129, the canonical program `A016129.P5430888539380694376` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016129 has offset 0).

The definition of A016129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016129.P7886823109637273935

`2^(n-1)*(3^(n+1)-1)`
-/

namespace A016129.P7886823109637273935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A016129.P7886823109637273935

namespace A016129

/-- `2^(n-1)*(3^(n+1)-1)` -/
def P7886823109637273935.Spec : Prop :=
  ∀ n, P7886823109637273935.a n = (A016129 n : ℚ)

end A016129

/-! ## A016129.P5430888539380694376

`8*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016129

/-- `8*a(n-1)-12*a(n-2)` -/
def P5430888539380694376.Spec : Prop :=
  ∀ n, P5430888539380694376.a n = A016129 n

theorem P5430888539380694376.correct : P5430888539380694376.Spec := by
  intro n
  simp only [A016129]

end A016129

/-! ## A016129.P14896844396038844138

`2*a(n-1)+6^n` with `a(0)=1`
-/

namespace A016129.P14896844396038844138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 6 ^ n

end

end A016129.P14896844396038844138

namespace A016129

/-- `2*a(n-1)+6^n` -/
def P14896844396038844138.Spec : Prop :=
  ∀ n, (P14896844396038844138.a n : ℤ) = A016129 n

end A016129

/-! ## A016129.P12397852014476469722

`∑[lcm(2, 3^n)/2]/2^-n`
-/

namespace A016129.P12397852014476469722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 ^ n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A016129.P12397852014476469722

namespace A016129

/-- `∑[lcm(2, 3^n)/2]/2^-n` -/
def P12397852014476469722.Spec : Prop :=
  ∀ n, P12397852014476469722.a n = (A016129 n : ℚ)

end A016129

/-! ## A016129.P6275436656734337672

`a(n-1)+a(n-1)+6^n` with `a(0)=1`
-/

namespace A016129.P6275436656734337672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 6 ^ n)

end

end A016129.P6275436656734337672

namespace A016129

/-- `a(n-1)+a(n-1)+6^n` -/
def P6275436656734337672.Spec : Prop :=
  ∀ n, (P6275436656734337672.a n : ℤ) = A016129 n

end A016129

/-! ## A016129.P6946735548445215530

`(lcm(3, floor(3^n/2))+1)/2^-n`
-/

namespace A016129.P6946735548445215530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ⌊(3 ^ n : ℚ) / 2⌋ + 1 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A016129.P6946735548445215530

namespace A016129

/-- `(lcm(3, floor(3^n/2))+1)/2^-n` -/
def P6946735548445215530.Spec : Prop :=
  ∀ n, P6946735548445215530.a n = (A016129 n : ℚ)

end A016129

/-! ## A016129.P8545363273793692078

`(∑[xor(3^n, floor(acot(n)))]+1)/2^-n`
-/

namespace A016129.P8545363273793692078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A016129.P8545363273793692078

namespace A016129

/-- `(∑[xor(3^n, floor(acot(n)))]+1)/2^-n` -/
def P8545363273793692078.Spec : Prop :=
  ∀ n, P8545363273793692078.a n = (A016129 n : ℚ)

end A016129

/-! ## A016129.P11815614249134387808

`∑[a(n-1)/sqrt(1/9)]/2^-n` with `a(0)=1`
-/

namespace A016129.P11815614249134387808
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ)

end

end A016129.P11815614249134387808

namespace A016129

/-- `∑[a(n-1)/sqrt(1/9)]/2^-n` -/
def P11815614249134387808.Spec : Prop :=
  ∀ n, P11815614249134387808.a n = (A016129 n : ℝ)

end A016129

/-! ## A016129.P6180276786745637296

`a(n-1)+A000400(n)+a(n-1)` with `a(0)=1`
-/

namespace A016129.P6180276786745637296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000400 n + a (n - 1))

end

end A016129.P6180276786745637296

namespace A016129

/-- `a(n-1)+A000400(n)+a(n-1)` -/
def P6180276786745637296.Spec : Prop :=
  ∀ n, P6180276786745637296.a n = A016129 n

end A016129

/-! ## A016129.P11877886612196061700

`A081656(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A016129.P11877886612196061700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081656 n - (a (n - 1) + a (n - 1))

end

end A016129.P11877886612196061700

namespace A016129

/-- `A081656(n)-(a(n-1)+a(n-1))` -/
def P11877886612196061700.Spec : Prop :=
  ∀ n, P11877886612196061700.a n = A016129 n

end A016129

/-! ## A016129.P8413830449324955798

`A248216(n)+A081335(n)`
-/

namespace A016129.P8413830449324955798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n + A081335 n

end

end A016129.P8413830449324955798

namespace A016129

/-- `A248216(n)+A081335(n)` -/
def P8413830449324955798.Spec : Prop :=
  ∀ n, P8413830449324955798.a n = A016129 n

end A016129

/-! ## A016129.P17011538211541216091

`A154407(n)-A007283(n)`
-/

namespace A016129.P17011538211541216091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154407 n - A007283 n

end

end A016129.P17011538211541216091

namespace A016129

/-- `A154407(n)-A007283(n)` -/
def P17011538211541216091.Spec : Prop :=
  ∀ n, P17011538211541216091.a n = A016129 n

end A016129

/-! ## A016129.P4369350558129833609

`2*A090040(n)-A000079(n)`
-/

namespace A016129.P4369350558129833609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090040 n - A000079 n

end

end A016129.P4369350558129833609

namespace A016129

/-- `2*A090040(n)-A000079(n)` -/
def P4369350558129833609.Spec : Prop :=
  ∀ n, P4369350558129833609.a n = A016129 n

end A016129

/-! ## A016129.P13634173186683717309

`A241275(n+1)+∑[A000079(n)]`
-/

namespace A016129.P13634173186683717309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241275 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016129.P13634173186683717309

namespace A016129

/-- `A241275(n+1)+∑[A000079(n)]` -/
def P13634173186683717309.Spec : Prop :=
  ∀ n, P13634173186683717309.a n = A016129 n

end A016129

/-! ## A016129.P3932954402264847961

`A241275(n+1)+A000225(n+1)`
-/

namespace A016129.P3932954402264847961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241275 (n + 1) + A000225 (n + 1)

end

end A016129.P3932954402264847961

namespace A016129

/-- `A241275(n+1)+A000225(n+1)` -/
def P3932954402264847961.Spec : Prop :=
  ∀ n, P3932954402264847961.a n = A016129 n

end A016129

/-! ## A016129.P15170075541190369300

`A059945(n+2)+A003462(n+1)`
-/

namespace A016129.P15170075541190369300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059945 (n + 2) + A003462 (n + 1)

end

end A016129.P15170075541190369300

namespace A016129

/-- `A059945(n+2)+A003462(n+1)` -/
def P15170075541190369300.Spec : Prop :=
  ∀ n, P15170075541190369300.a n = A016129 n

end A016129

/-! ## A016129.P5532203629462937147

`A092803(n+1)-A000079(n+1)`
-/

namespace A016129.P5532203629462937147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092803 (n + 1) - A000079 (n + 1)

end

end A016129.P5532203629462937147

namespace A016129

/-- `A092803(n+1)-A000079(n+1)` -/
def P5532203629462937147.Spec : Prop :=
  ∀ n, P5532203629462937147.a n = A016129 n

end A016129

/-! ## A016129.P13877010208908393487

`A241275(n+1)+∑[∑[A011782(n)]]`
-/

namespace A016129.P13877010208908393487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241275 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016129.P13877010208908393487

namespace A016129

/-- `A241275(n+1)+∑[∑[A011782(n)]]` -/
def P13877010208908393487.Spec : Prop :=
  ∀ n, P13877010208908393487.a n = A016129 n

end A016129

/-! ## A016129.P9704791155764747899

`A000079(n+1)+A241275(n+1)-1`
-/

namespace A016129.P9704791155764747899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A241275 (n + 1) - 1)

end

end A016129.P9704791155764747899

namespace A016129

/-- `A000079(n+1)+A241275(n+1)-1` -/
def P9704791155764747899.Spec : Prop :=
  ∀ n, P9704791155764747899.a n = A016129 n

end A016129

/-!
# A016130: Expansion of g.f. 1/((1-2*x)*(1-7*x)).

The programs for A016130, the canonical program `A016130.P1134822904330919760` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016130 has offset 0).

The definition of A016130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016130.P1134822904330919760

`7*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016130

/-- `7*a(n-1)+2^n` -/
def P1134822904330919760.Spec : Prop :=
  ∀ n, (P1134822904330919760.a n : ℤ) = A016130 n

theorem P1134822904330919760.correct : P1134822904330919760.Spec := by
  intro n
  simp only [A016130]

end A016130

/-! ## A016130.P6219034237497507963

`(7^(n+1)-2^(n+1))/5`
-/

namespace A016130.P6219034237497507963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A016130.P6219034237497507963

namespace A016130

/-- `(7^(n+1)-2^(n+1))/5` -/
def P6219034237497507963.Spec : Prop :=
  ∀ n, P6219034237497507963.a n = (A016130 n : ℚ)

theorem P6219034237497507963.correct : P6219034237497507963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016130, Nat.add_sub_cancel, A016130.P6219034237497507963.a, A016130.P1134822904330919760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016130, Nat.add_sub_cancel, A016130.P6219034237497507963.a, A016130.P1134822904330919760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016130

/-! ## A016130.P11589078407353500136

`lcm(2, a(n-1))+7^n` with `a(0)=1`
-/

namespace A016130.P11589078407353500136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 7 ^ n

end

end A016130.P11589078407353500136

namespace A016130

/-- `lcm(2, a(n-1))+7^n` -/
def P11589078407353500136.Spec : Prop :=
  ∀ n, (P11589078407353500136.a n : ℤ) = A016130 n

end A016130

/-! ## A016130.P12216212615621279077

`7^n+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016130.P12216212615621279077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 ^ n + (a (n - 1) + a (n - 1))

end

end A016130.P12216212615621279077

namespace A016130

/-- `7^n+a(n-1)+a(n-1)` -/
def P12216212615621279077.Spec : Prop :=
  ∀ n, (P12216212615621279077.a n : ℤ) = A016130 n

end A016130

/-! ## A016130.P6725486971765916480

`A000420(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016130.P6725486971765916480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000420 n + 2 * a (n - 1)

end

end A016130.P6725486971765916480

namespace A016130

/-- `A000420(n)+2*a(n-1)` -/
def P6725486971765916480.Spec : Prop :=
  ∀ n, P6725486971765916480.a n = A016130 n

end A016130

/-! ## A016130.P11927415032560760396

`A000079(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A016130.P11927415032560760396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + 7 * a (n - 1)

end

end A016130.P11927415032560760396

namespace A016130

/-- `A000079(n)+7*a(n-1)` -/
def P11927415032560760396.Spec : Prop :=
  ∀ n, P11927415032560760396.a n = A016130 n

end A016130

/-!
# A016131: Expansion of 1/((1-2*x)*(1-8*x)).

The programs for A016131, the canonical program `A016131.P9715253818641744306` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016131 has offset 0).

The definition of A016131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016131.P9715253818641744306

`8*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016131

/-- `8*a(n-1)+2^n` -/
def P9715253818641744306.Spec : Prop :=
  ∀ n, (P9715253818641744306.a n : ℤ) = A016131 n

theorem P9715253818641744306.correct : P9715253818641744306.Spec := by
  intro n
  simp only [A016131]

end A016131

/-! ## A016131.P13342032184210483994

`(2^(3*n+2)-2^n)/3`
-/

namespace A016131.P13342032184210483994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (3 * n + 2) : ℤ) - (2 ^ n : ℤ) : ℚ) / 3

end

end A016131.P13342032184210483994

namespace A016131

/-- `(2^(3*n+2)-2^n)/3` -/
def P13342032184210483994.Spec : Prop :=
  ∀ n, P13342032184210483994.a n = (A016131 n : ℚ)

theorem P13342032184210483994.correct : P13342032184210483994.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016131, Nat.add_sub_cancel, A016131.P13342032184210483994.a, A016131.P9715253818641744306.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016131, Nat.add_sub_cancel, A016131.P13342032184210483994.a, A016131.P9715253818641744306.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016131

/-! ## A016131.P3289092528924925544

`A000079(n)*A002450(n+1)`
-/

namespace A016131.P3289092528924925544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002450 (n + 1)

end

end A016131.P3289092528924925544

namespace A016131

/-- `A000079(n)*A002450(n+1)` -/
def P3289092528924925544.Spec : Prop :=
  ∀ n, P3289092528924925544.a n = A016131 n

end A016131

/-! ## A016131.P119861880572500160

`lcm(2^n, ∑[4^n])`
-/

namespace A016131.P119861880572500160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016131.P119861880572500160

namespace A016131

/-- `lcm(2^n, ∑[4^n])` -/
def P119861880572500160.Spec : Prop :=
  ∀ n, (P119861880572500160.a n : ℤ) = A016131 n

end A016131

/-! ## A016131.P2578907066983458790

`or(2*a(n-1), 8^n)` with `a(0)=1`
-/

namespace A016131.P2578907066983458790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (8 ^ n)

end

end A016131.P2578907066983458790

namespace A016131

/-- `or(2*a(n-1), 8^n)` -/
def P2578907066983458790.Spec : Prop :=
  ∀ n, (P2578907066983458790.a n : ℤ) = A016131 n

end A016131

/-! ## A016131.P5083208351243722607

`xor(2*a(n-1), 8^n)` with `a(0)=1`
-/

namespace A016131.P5083208351243722607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (8 ^ n)

end

end A016131.P5083208351243722607

namespace A016131

/-- `xor(2*a(n-1), 8^n)` -/
def P5083208351243722607.Spec : Prop :=
  ∀ n, (P5083208351243722607.a n : ℤ) = A016131 n

end A016131

/-! ## A016131.P11013848538316634832

`a(n-1)+a(n-1)+8^n` with `a(0)=1`
-/

namespace A016131.P11013848538316634832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 8 ^ n)

end

end A016131.P11013848538316634832

namespace A016131

/-- `a(n-1)+a(n-1)+8^n` -/
def P11013848538316634832.Spec : Prop :=
  ∀ n, (P11013848538316634832.a n : ℤ) = A016131 n

end A016131

/-! ## A016131.P2050689178417137899

`A083333(Δ[n²])`
-/

namespace A016131.P2050689178417137899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A016131.P2050689178417137899

namespace A016131

/-- `A083333(Δ[n²])` -/
def P2050689178417137899.Spec : Prop :=
  ∀ n, P2050689178417137899.a n = A016131 n

end A016131

/-! ## A016131.P6600633161445438924

`A081342(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A016131.P6600633161445438924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081342 n + 5 * a (n - 1)

end

end A016131.P6600633161445438924

namespace A016131

/-- `A081342(n)+5*a(n-1)` -/
def P6600633161445438924.Spec : Prop :=
  ∀ n, P6600633161445438924.a n = A016131 n

end A016131

/-! ## A016131.P2607445400483170546

`a(n-1)+A001018(n)+a(n-1)` with `a(0)=1`
-/

namespace A016131.P2607445400483170546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001018 n + a (n - 1))

end

end A016131.P2607445400483170546

namespace A016131

/-- `a(n-1)+A001018(n)+a(n-1)` -/
def P2607445400483170546.Spec : Prop :=
  ∀ n, P2607445400483170546.a n = A016131 n

end A016131

/-! ## A016131.P17979680143160951221

`A082365(n)-A001045(n)`
-/

namespace A016131.P17979680143160951221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082365 n - A001045 n

end

end A016131.P17979680143160951221

namespace A016131

/-- `A082365(n)-A001045(n)` -/
def P17979680143160951221.Spec : Prop :=
  ∀ n, P17979680143160951221.a n = A016131 n

end A016131

/-! ## A016131.P5093658491606169652

`A132397(n)-A078008(n)`
-/

namespace A016131.P5093658491606169652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132397 n - A078008 n

end

end A016131.P5093658491606169652

namespace A016131

/-- `A132397(n)-A078008(n)` -/
def P5093658491606169652.Spec : Prop :=
  ∀ n, P5093658491606169652.a n = A016131 n

end A016131

/-! ## A016131.P5799908762701478982

`A016290(n)-A026740(n+1)`
-/

namespace A016131.P5799908762701478982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n - A026740 (n + 1)

end

end A016131.P5799908762701478982

namespace A016131

/-- `A016290(n)-A026740(n+1)` -/
def P5799908762701478982.Spec : Prop :=
  ∀ n, P5799908762701478982.a n = A016131 n

end A016131

/-! ## A016131.P3730935500226498650

`2*A082311(n)-A078008(n)`
-/

namespace A016131.P3730935500226498650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082311 n - A078008 n

end

end A016131.P3730935500226498650

namespace A016131

/-- `2*A082311(n)-A078008(n)` -/
def P3730935500226498650.Spec : Prop :=
  ∀ n, P3730935500226498650.a n = A016131 n

end A016131

/-! ## A016131.P784186672669536189

`A132397(n)-A230096(2*n)`
-/

namespace A016131.P784186672669536189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132397 n - A230096 (2 * n)

end

end A016131.P784186672669536189

namespace A016131

/-- `A132397(n)-A230096(2*n)` -/
def P784186672669536189.Spec : Prop :=
  ∀ n, P784186672669536189.a n = A016131 n

end A016131

/-! ## A016131.P2884412509218578549

`A000079(n)*A052992(2*n)`
-/

namespace A016131.P2884412509218578549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A052992 (2 * n)

end

end A016131.P2884412509218578549

namespace A016131

/-- `A000079(n)*A052992(2*n)` -/
def P2884412509218578549.Spec : Prop :=
  ∀ n, P2884412509218578549.a n = A016131 n

end A016131

/-! ## A016131.P17766328801097913505

`A000079(n)*A097163(2*n)`
-/

namespace A016131.P17766328801097913505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A097163 (2 * n)

end

end A016131.P17766328801097913505

namespace A016131

/-- `A000079(n)*A097163(2*n)` -/
def P17766328801097913505.Spec : Prop :=
  ∀ n, P17766328801097913505.a n = A016131 n

end A016131

/-! ## A016131.P5367622133485712894

`record[∑[A130123(n)²]*A130123(n)]`
-/

namespace A016131.P5367622133485712894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016131.P5367622133485712894

namespace A016131

/-- `record[∑[A130123(n)²]*A130123(n)]` -/
def P5367622133485712894.Spec : Prop :=
  ∀ n, P5367622133485712894.a n = A016131 n

end A016131

/-! ## A016131.P2167410909162780618

`A026740(n+1)+A006516(n+1)`
-/

namespace A016131.P2167410909162780618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026740 (n + 1) + A006516 (n + 1)

end

end A016131.P2167410909162780618

namespace A016131

/-- `A026740(n+1)+A006516(n+1)` -/
def P2167410909162780618.Spec : Prop :=
  ∀ n, P2167410909162780618.a n = A016131 n

end A016131

/-!
# A016132: 

The programs for A016132, there is no canonical definition to state claims against.
-/

/-! ## A016132.P14707386463644738366

`A000010(A109697(n))%2`
-/

namespace A016132.P14707386463644738366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A109697 n).toNat) 2

end

end A016132.P14707386463644738366

/-! ## A016132.P8176970911770630062

`A187034(C(A135585(n), 2))`
-/

namespace A016132.P8176970911770630062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187034 (Nat.choose (A135585 n).toNat 2)

end

end A016132.P8176970911770630062

/-! ## A016132.P3264054644379170439

`A113047(∑[∑[A031346(n)]])`
-/

namespace A016132.P3264054644379170439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016132.P3264054644379170439

/-! ## A016132.P14734285014933176026

`A388072(∏[char[A000040(3*n+5)]+1])`
-/

namespace A016132.P14734285014933176026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388072 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A016132.P14734285014933176026

/-!
# A016133: Expansion of 1/((1-2*x)*(1-9*x)).

The programs for A016133, the canonical program `A016133.P16838906782053762427` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016133 has offset 0).

The definition of A016133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016133.P16838906782053762427

`9*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016133

/-- `9*a(n-1)+2^n` -/
def P16838906782053762427.Spec : Prop :=
  ∀ n, (P16838906782053762427.a n : ℤ) = A016133 n

theorem P16838906782053762427.correct : P16838906782053762427.Spec := by
  intro n
  simp only [A016133]

end A016133

/-! ## A016133.P9704331560411594695

`lcm(2, a(n-1))+9^n` with `a(0)=1`
-/

namespace A016133.P9704331560411594695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 9 ^ n

end

end A016133.P9704331560411594695

namespace A016133

/-- `lcm(2, a(n-1))+9^n` -/
def P9704331560411594695.Spec : Prop :=
  ∀ n, (P9704331560411594695.a n : ℤ) = A016133 n

end A016133

/-! ## A016133.P2160632002823541268

`9^n+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016133.P2160632002823541268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  9 ^ n + (a (n - 1) + a (n - 1))

end

end A016133.P2160632002823541268

namespace A016133

/-- `9^n+a(n-1)+a(n-1)` -/
def P2160632002823541268.Spec : Prop :=
  ∀ n, (P2160632002823541268.a n : ℤ) = A016133 n

end A016133

/-! ## A016133.P6935815449751620350

`A135247(2*n)`
-/

namespace A016133.P6935815449751620350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135247 (2 * n)

end

end A016133.P6935815449751620350

namespace A016133

/-- `A135247(2*n)` -/
def P6935815449751620350.Spec : Prop :=
  ∀ n, P6935815449751620350.a n = A016133 n

end A016133

/-! ## A016133.P11055029604253212264

`A135247(Δ[n²])/3`
-/

namespace A016133.P11055029604253212264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A016133.P11055029604253212264

namespace A016133

/-- `A135247(Δ[n²])/3` -/
def P11055029604253212264.Spec : Prop :=
  ∀ n, P11055029604253212264.a n = (A016133 n : ℚ)

end A016133

/-! ## A016133.P9334483946659886027

`A109498(n+1)-2^(n+1)`
-/

namespace A016133.P9334483946659886027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109498 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A016133.P9334483946659886027

namespace A016133

/-- `A109498(n+1)-2^(n+1)` -/
def P9334483946659886027.Spec : Prop :=
  ∀ n, P9334483946659886027.a n = A016133 n

end A016133

/-! ## A016133.P772027535785588554

`A117317(∑[n])+10*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A016133.P772027535785588554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117317 (∑ j ∈ Finset.range (n + 1), f1 j) + 10 * a (n - 1) - a (n - 1)

end

end A016133.P772027535785588554

namespace A016133

/-- `A117317(∑[n])+10*a(n-1)-a(n-1)` -/
def P772027535785588554.Spec : Prop :=
  ∀ n, P772027535785588554.a n = A016133 n

end A016133

/-! ## A016133.P7387238239453599081

`A099215(2*n+1)-A078010(n)`
-/

namespace A016133.P7387238239453599081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099215 (2 * n + 1) - A078010 n

end

end A016133.P7387238239453599081

namespace A016133

/-- `A099215(2*n+1)-A078010(n)` -/
def P7387238239453599081.Spec : Prop :=
  ∀ n, P7387238239453599081.a n = A016133 n

end A016133

/-! ## A016133.P12942343562147561305

`∑[A000079(n)/A013708(n)]*A013708(n)`
-/

namespace A016133.P12942343562147561305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A013708 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A013708 n : ℚ)

end

end A016133.P12942343562147561305

namespace A016133

/-- `∑[A000079(n)/A013708(n)]*A013708(n)` -/
def P12942343562147561305.Spec : Prop :=
  ∀ n, P12942343562147561305.a n = (A016133 n : ℚ)

end A016133

/-! ## A016133.P11105595878818863137

`(9^(n+1)-2^(n+1))/7`
-/

namespace A016133.P11105595878818863137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / 7

end

end A016133.P11105595878818863137

namespace A016133

/-- `(9^(n+1)-2^(n+1))/7` -/
def P11105595878818863137.Spec : Prop :=
  ∀ n, P11105595878818863137.a n = (A016133 n : ℚ)

theorem P11105595878818863137.correct : P11105595878818863137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016133, Nat.add_sub_cancel, A016133.P11105595878818863137.a, A016133.P16838906782053762427.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016133, Nat.add_sub_cancel, A016133.P11105595878818863137.a, A016133.P16838906782053762427.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016133

/-!
# A016134: Expansion of g.f. 1/((1-2*x)*(1-10*x)).

The programs for A016134, the canonical program `A016134.P11493562999087993072` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016134 has offset 0).

The definition of A016134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016134.P17539694068672124643

`(5*10^n-2^n)/4`
-/

namespace A016134.P17539694068672124643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 4

end

end A016134.P17539694068672124643

namespace A016134

/-- `(5*10^n-2^n)/4` -/
def P17539694068672124643.Spec : Prop :=
  ∀ n, P17539694068672124643.a n = (A016134 n : ℚ)

theorem P17539694068672124643.correct : P17539694068672124643.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016134, Nat.add_sub_cancel, A016134.P17539694068672124643.a, A016134.P11493562999087993072.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016134, Nat.add_sub_cancel, A016134.P17539694068672124643.a, A016134.P11493562999087993072.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016134

/-! ## A016134.P11493562999087993072

`a(n-1)*10+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016134

/-- `a(n-1)*10+2^n` -/
def P11493562999087993072.Spec : Prop :=
  ∀ n, (P11493562999087993072.a n : ℤ) = A016134 n

theorem P11493562999087993072.correct : P11493562999087993072.Spec := by
  intro n
  simp only [A016134]

end A016134

/-! ## A016134.P2066233549097910914

`12*a(n-1)-20*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A016134.P2066233549097910914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  12 * a (n - 1) - 20 * a (n - 2)

end

end A016134.P2066233549097910914

namespace A016134

/-- `12*a(n-1)-20*a(n-2)` -/
def P2066233549097910914.Spec : Prop :=
  ∀ n, P2066233549097910914.a n = A016134 n

end A016134

/-! ## A016134.P4050636245805415651

`a(n-1)+a(n-1)+10^n` with `a(0)=1`
-/

namespace A016134.P4050636245805415651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 10 ^ n)

end

end A016134.P4050636245805415651

namespace A016134

/-- `a(n-1)+a(n-1)+10^n` -/
def P4050636245805415651.Spec : Prop :=
  ∀ n, (P4050636245805415651.a n : ℤ) = A016134 n

end A016134

/-! ## A016134.P18400841811896525195

`A011557(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016134.P18400841811896525195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011557 n + 2 * a (n - 1)

end

end A016134.P18400841811896525195

namespace A016134

/-- `A011557(n)+2*a(n-1)` -/
def P18400841811896525195.Spec : Prop :=
  ∀ n, P18400841811896525195.a n = A016134 n

end A016134

/-! ## A016134.P16503679064526467507

`A000079(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A016134.P16503679064526467507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + 10 * a (n - 1)

end

end A016134.P16503679064526467507

namespace A016134

/-- `A000079(n)+10*a(n-1)` -/
def P16503679064526467507.Spec : Prop :=
  ∀ n, P16503679064526467507.a n = A016134 n

end A016134

/-! ## A016134.P2935954932607836240

`A000079(n)*A047850(n+1)-A000079(n)`
-/

namespace A016134.P2935954932607836240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A047850 (n + 1) - A000079 n

end

end A016134.P2935954932607836240

namespace A016134

/-- `A000079(n)*A047850(n+1)-A000079(n)` -/
def P2935954932607836240.Spec : Prop :=
  ∀ n, P2935954932607836240.a n = A016134 n

end A016134

/-! ## A016134.P10516029031594142026

`(A001045(n+1)+A001045(n))*A003463(n+1)`
-/

namespace A016134.P10516029031594142026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) + A001045 n) * A003463 (n + 1)

end

end A016134.P10516029031594142026

namespace A016134

/-- `(A001045(n+1)+A001045(n))*A003463(n+1)` -/
def P10516029031594142026.Spec : Prop :=
  ∀ n, P10516029031594142026.a n = A016134 n

end A016134

/-! ## A016134.P5377496866218893629

`A003463(n+1)+A000225(n)*A003463(n+1)`
-/

namespace A016134.P5377496866218893629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + A000225 n * A003463 (n + 1)

end

end A016134.P5377496866218893629

namespace A016134

/-- `A003463(n+1)+A000225(n)*A003463(n+1)` -/
def P5377496866218893629.Spec : Prop :=
  ∀ n, P5377496866218893629.a n = A016134 n

end A016134

/-!
# A016135: Expansion of g.f. 1/((1-2*x)*(1-11*x)).

The programs for A016135, the canonical program `A016135.P4891304771623436382` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016135 has offset 0).

The definition of A016135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016135.P15903905126554617716

`(11^(n+1)-2^(n+1))/9`
-/

namespace A016135.P15903905126554617716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / 9

end

end A016135.P15903905126554617716

namespace A016135

/-- `(11^(n+1)-2^(n+1))/9` -/
def P15903905126554617716.Spec : Prop :=
  ∀ n, P15903905126554617716.a n = (A016135 n : ℚ)

theorem P15903905126554617716.correct : P15903905126554617716.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016135, Nat.add_sub_cancel, A016135.P15903905126554617716.a, A016135.P4891304771623436382.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016135, Nat.add_sub_cancel, A016135.P15903905126554617716.a, A016135.P4891304771623436382.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016135

/-! ## A016135.P4891304771623436382

`13*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016135

/-- `13*a(n-1)-22*a(n-2)` -/
def P4891304771623436382.Spec : Prop :=
  ∀ n, P4891304771623436382.a n = A016135 n

theorem P4891304771623436382.correct : P4891304771623436382.Spec := by
  intro n
  simp only [A016135]

end A016135

/-! ## A016135.P12049260565263083658

`2*a(n-1)+11^n` with `a(0)=1`
-/

namespace A016135.P12049260565263083658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 11 ^ n

end

end A016135.P12049260565263083658

namespace A016135

/-- `2*a(n-1)+11^n` -/
def P12049260565263083658.Spec : Prop :=
  ∀ n, (P12049260565263083658.a n : ℤ) = A016135 n

end A016135

/-! ## A016135.P16376175884904998907

`lcm(2, a(n-1))+11^n` with `a(0)=1`
-/

namespace A016135.P16376175884904998907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 11 ^ n

end

end A016135.P16376175884904998907

namespace A016135

/-- `lcm(2, a(n-1))+11^n` -/
def P16376175884904998907.Spec : Prop :=
  ∀ n, (P16376175884904998907.a n : ℤ) = A016135 n

end A016135

/-! ## A016135.P4409853607415142146

`11^n+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016135.P4409853607415142146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  11 ^ n + (a (n - 1) + a (n - 1))

end

end A016135.P4409853607415142146

namespace A016135

/-- `11^n+a(n-1)+a(n-1)` -/
def P4409853607415142146.Spec : Prop :=
  ∀ n, (P4409853607415142146.a n : ℤ) = A016135 n

end A016135

/-! ## A016135.P4283986294440952347

`floor(A139740(n+1)/9)`
-/

namespace A016135.P4283986294440952347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139740 (n + 1) : ℚ) / 9⌋

end

end A016135.P4283986294440952347

namespace A016135

/-- `floor(A139740(n+1)/9)` -/
def P4283986294440952347.Spec : Prop :=
  ∀ n, P4283986294440952347.a n = A016135 n

end A016135

/-! ## A016135.P1274685776039350062

`A001020(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016135.P1274685776039350062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001020 n + 2 * a (n - 1)

end

end A016135.P1274685776039350062

namespace A016135

/-- `A001020(n)+2*a(n-1)` -/
def P1274685776039350062.Spec : Prop :=
  ∀ n, P1274685776039350062.a n = A016135 n

end A016135

/-! ## A016135.P975951535335580367

`A000079(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A016135.P975951535335580367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + 11 * a (n - 1)

end

end A016135.P975951535335580367

namespace A016135

/-- `A000079(n)+11*a(n-1)` -/
def P975951535335580367.Spec : Prop :=
  ∀ n, P975951535335580367.a n = A016135 n

end A016135

/-!
# A016136: Expansion of 1/((1-2*x)*(1-12*x)).

The programs for A016136, the canonical program `A016136.P14738534416873467134` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016136 has offset 0).

The definition of A016136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016136.P11838346879758873800

`2^n*(6^(n+1)-1)/5`
-/

namespace A016136.P11838346879758873800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (((6 ^ (n + 1) : ℤ) - 1 : ℚ) / 5)

end

end A016136.P11838346879758873800

namespace A016136

/-- `2^n*(6^(n+1)-1)/5` -/
def P11838346879758873800.Spec : Prop :=
  ∀ n, P11838346879758873800.a n = (A016136 n : ℚ)

theorem P11838346879758873800.correct : P11838346879758873800.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016136, Nat.add_sub_cancel, A016136.P11838346879758873800.a, A016136.P14738534416873467134.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016136, Nat.add_sub_cancel, A016136.P11838346879758873800.a, A016136.P14738534416873467134.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016136

/-! ## A016136.P14738534416873467134

`14*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016136

/-- `14*a(n-1)-24*a(n-2)` -/
def P14738534416873467134.Spec : Prop :=
  ∀ n, P14738534416873467134.a n = A016136 n

theorem P14738534416873467134.correct : P14738534416873467134.Spec := by
  intro n
  simp only [A016136]

end A016136

/-! ## A016136.P4264849868026325238

`lcm(2^n, ∑[6^n])`
-/

namespace A016136.P4264849868026325238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016136.P4264849868026325238

namespace A016136

/-- `lcm(2^n, ∑[6^n])` -/
def P4264849868026325238.Spec : Prop :=
  ∀ n, (P4264849868026325238.a n : ℤ) = A016136 n

end A016136

/-! ## A016136.P16589165560938636668

`2^n+12*a(n-1)` with `a(0)=1`
-/

namespace A016136.P16589165560938636668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + 12 * a (n - 1)

end

end A016136.P16589165560938636668

namespace A016136

/-- `2^n+12*a(n-1)` -/
def P16589165560938636668.Spec : Prop :=
  ∀ n, (P16589165560938636668.a n : ℤ) = A016136 n

end A016136

/-! ## A016136.P8628319257097968952

`or(12*a(n-1), 2^n)` with `a(0)=1`
-/

namespace A016136.P8628319257097968952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (12 * a (n - 1)) (2 ^ n)

end

end A016136.P8628319257097968952

namespace A016136

/-- `or(12*a(n-1), 2^n)` -/
def P8628319257097968952.Spec : Prop :=
  ∀ n, (P8628319257097968952.a n : ℤ) = A016136 n

end A016136

/-! ## A016136.P16984822041553336385

`xor(12*a(n-1), 2^n)` with `a(0)=1`
-/

namespace A016136.P16984822041553336385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (12 * a (n - 1)) (2 ^ n)

end

end A016136.P16984822041553336385

namespace A016136

/-- `xor(12*a(n-1), 2^n)` -/
def P16984822041553336385.Spec : Prop :=
  ∀ n, (P16984822041553336385.a n : ℤ) = A016136 n

end A016136

/-! ## A016136.P5213784487675234153

`a(n-1)+A001021(n)+a(n-1)` with `a(0)=1`
-/

namespace A016136.P5213784487675234153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001021 n + a (n - 1))

end

end A016136.P5213784487675234153

namespace A016136

/-- `a(n-1)+A001021(n)+a(n-1)` -/
def P5213784487675234153.Spec : Prop :=
  ∀ n, P5213784487675234153.a n = A016136 n

end A016136

/-! ## A016136.P11391969186707280264

`A000079(n)*A047851(n+1)-A000079(n)`
-/

namespace A016136.P11391969186707280264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A047851 (n + 1) - A000079 n

end

end A016136.P11391969186707280264

namespace A016136

/-- `A000079(n)*A047851(n+1)-A000079(n)` -/
def P11391969186707280264.Spec : Prop :=
  ∀ n, P11391969186707280264.a n = A016136 n

end A016136

/-! ## A016136.P12843185390671860015

`A003464(n+1)+A000225(n)*A003464(n+1)`
-/

namespace A016136.P12843185390671860015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) + A000225 n * A003464 (n + 1)

end

end A016136.P12843185390671860015

namespace A016136

/-- `A003464(n+1)+A000225(n)*A003464(n+1)` -/
def P12843185390671860015.Spec : Prop :=
  ∀ n, P12843185390671860015.a n = A016136 n

end A016136

/-!
# A016137: Expansion of 1/((1-3*x)*(1-6*x)).

The programs for A016137, the canonical program `A016137.P6245206813600161382` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016137 has offset 0).

The definition of A016137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016137.P6245206813600161382

`2*6^n-3^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016137

/-- `2*6^n-3^n` -/
def P6245206813600161382.Spec : Prop :=
  ∀ n, P6245206813600161382.a n = A016137 n

theorem P6245206813600161382.correct : P6245206813600161382.Spec := by
  intro n
  simp only [A016137]

end A016137

/-! ## A016137.P16258911301587393497

`∑[2^n]/tan(acot(3^n))`
-/

namespace A016137.P16258911301587393497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (3 ^ n : ℝ))

end

end A016137.P16258911301587393497

namespace A016137

/-- `∑[2^n]/tan(acot(3^n))` -/
def P16258911301587393497.Spec : Prop :=
  ∀ n, P16258911301587393497.a n = (A016137 n : ℝ)

end A016137

/-! ## A016137.P16512822226014131611

`3^n*A126646(n)`
-/

namespace A016137.P16512822226014131611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A126646 n

end

end A016137.P16512822226014131611

namespace A016137

/-- `3^n*A126646(n)` -/
def P16512822226014131611.Spec : Prop :=
  ∀ n, P16512822226014131611.a n = A016137 n

end A016137

/-! ## A016137.P12226462329169303050

`3^n*A000225(n+1)`
-/

namespace A016137.P12226462329169303050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000225 (n + 1)

end

end A016137.P12226462329169303050

namespace A016137

/-- `3^n*A000225(n+1)` -/
def P12226462329169303050.Spec : Prop :=
  ∀ n, P12226462329169303050.a n = A016137 n

end A016137

/-! ## A016137.P7020400659745227934

`3^n*A255047(n+1)`
-/

namespace A016137.P7020400659745227934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A255047 (n + 1)

end

end A016137.P7020400659745227934

namespace A016137

/-- `3^n*A255047(n+1)` -/
def P7020400659745227934.Spec : Prop :=
  ∀ n, P7020400659745227934.a n = A016137 n

end A016137

/-! ## A016137.P16469272588141298703

`∑[A000079(n)]/3^-n`
-/

namespace A016137.P16469272588141298703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A016137.P16469272588141298703

namespace A016137

/-- `∑[A000079(n)]/3^-n` -/
def P16469272588141298703.Spec : Prop :=
  ∀ n, P16469272588141298703.a n = (A016137 n : ℚ)

end A016137

/-! ## A016137.P6894869422509135548

`∑[A025192(n)*A052549(n)]`
-/

namespace A016137.P6894869422509135548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n * A052549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016137.P6894869422509135548

namespace A016137

/-- `∑[A025192(n)*A052549(n)]` -/
def P6894869422509135548.Spec : Prop :=
  ∀ n, P6894869422509135548.a n = A016137 n

end A016137

/-! ## A016137.P473461534709337186

`record[A098355(n)*A130330(n)]`
-/

namespace A016137.P473461534709337186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n * A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016137.P473461534709337186

namespace A016137

/-- `record[A098355(n)*A130330(n)]` -/
def P473461534709337186.Spec : Prop :=
  ∀ n, P473461534709337186.a n = A016137 n

end A016137

/-! ## A016137.P224268582235989822

`record[A130330(n)*A140303(n)]`
-/

namespace A016137.P224268582235989822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n * A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016137.P224268582235989822

namespace A016137

/-- `record[A130330(n)*A140303(n)]` -/
def P224268582235989822.Spec : Prop :=
  ∀ n, P224268582235989822.a n = A016137 n

end A016137

/-! ## A016137.P11783439730001966008

`record[A130330(n)*A175840(n)]`
-/

namespace A016137.P11783439730001966008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n * A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016137.P11783439730001966008

namespace A016137

/-- `record[A130330(n)*A175840(n)]` -/
def P11783439730001966008.Spec : Prop :=
  ∀ n, P11783439730001966008.a n = A016137 n

end A016137

/-! ## A016137.P1511449523098242787

`A000225(n+1)*A000244(n)`
-/

namespace A016137.P1511449523098242787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A000244 n

end

end A016137.P1511449523098242787

namespace A016137

/-- `A000225(n+1)*A000244(n)` -/
def P1511449523098242787.Spec : Prop :=
  ∀ n, P1511449523098242787.a n = A016137 n

end A016137

/-! ## A016137.P11641160674777084315

`A000244(n)*A077896(2*n)`
-/

namespace A016137.P11641160674777084315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A077896 (2 * n)

end

end A016137.P11641160674777084315

namespace A016137

/-- `A000244(n)*A077896(2*n)` -/
def P11641160674777084315.Spec : Prop :=
  ∀ n, P11641160674777084315.a n = A016137 n

end A016137

/-! ## A016137.P11283123114488712015

`A000225(n+1)*A038754(2*n)`
-/

namespace A016137.P11283123114488712015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A038754 (2 * n)

end

end A016137.P11283123114488712015

namespace A016137

/-- `A000225(n+1)*A038754(2*n)` -/
def P11283123114488712015.Spec : Prop :=
  ∀ n, P11283123114488712015.a n = A016137 n

end A016137

/-! ## A016137.P4481397606912524583

`A052955(2*n)*A133494(n+1)`
-/

namespace A016137.P4481397606912524583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) * A133494 (n + 1)

end

end A016137.P4481397606912524583

namespace A016137

/-- `A052955(2*n)*A133494(n+1)` -/
def P4481397606912524583.Spec : Prop :=
  ∀ n, P4481397606912524583.a n = A016137 n

end A016137

/-! ## A016137.P13445202554198270895

`A052551(2*n)*A182522(2*n+1)`
-/

namespace A016137.P13445202554198270895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * n) * A182522 (2 * n + 1)

end

end A016137.P13445202554198270895

namespace A016137

/-- `A052551(2*n)*A182522(2*n+1)` -/
def P13445202554198270895.Spec : Prop :=
  ∀ n, P13445202554198270895.a n = A016137 n

end A016137

/-! ## A016137.P14081088822061654523

`(A274230(n+1)+A027383(n))*A000244(n)`
-/

namespace A016137.P14081088822061654523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274230 (n + 1) + A027383 n) * A000244 n

end

end A016137.P14081088822061654523

namespace A016137

/-- `(A274230(n+1)+A027383(n))*A000244(n)` -/
def P14081088822061654523.Spec : Prop :=
  ∀ n, P14081088822061654523.a n = A016137 n

end A016137

/-! ## A016137.P212355493873101193

`(A000244(n)-A028243(n+1))*A000244(n)`
-/

namespace A016137.P212355493873101193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A028243 (n + 1)) * A000244 n

end

end A016137.P212355493873101193

namespace A016137

/-- `(A000244(n)-A028243(n+1))*A000244(n)` -/
def P212355493873101193.Spec : Prop :=
  ∀ n, P212355493873101193.a n = A016137 n

end A016137

/-! ## A016137.P15919573061940816575

`(A094374(n)-A000392(n+1))*A000244(n)`
-/

namespace A016137.P15919573061940816575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094374 n - A000392 (n + 1)) * A000244 n

end

end A016137.P15919573061940816575

namespace A016137

/-- `(A094374(n)-A000392(n+1))*A000244(n)` -/
def P15919573061940816575.Spec : Prop :=
  ∀ n, P15919573061940816575.a n = A016137 n

end A016137

/-! ## A016137.P5439932166217642539

`A060589(n+1)/2`
-/

namespace A016137.P5439932166217642539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060589 (n + 1) : ℚ) / 2

end

end A016137.P5439932166217642539

namespace A016137

/-- `A060589(n+1)/2` -/
def P5439932166217642539.Spec : Prop :=
  ∀ n, P5439932166217642539.a n = (A016137 n : ℚ)

end A016137

/-!
# A016138: Expansion of 1/((1-3*x)*(1-7*x)).

The programs for A016138, the canonical program `A016138.P17527774173746458049` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016138 has offset 0).

The definition of A016138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016138.P14422069641619528069

`(7^(n+1)-3^(n+1))/4`
-/

namespace A016138.P14422069641619528069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A016138.P14422069641619528069

namespace A016138

/-- `(7^(n+1)-3^(n+1))/4` -/
def P14422069641619528069.Spec : Prop :=
  ∀ n, P14422069641619528069.a n = (A016138 n : ℚ)

theorem P14422069641619528069.correct : P14422069641619528069.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016138, Nat.add_sub_cancel, A016138.P14422069641619528069.a, A016138.P17527774173746458049.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016138, Nat.add_sub_cancel, A016138.P14422069641619528069.a, A016138.P17527774173746458049.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016138

/-! ## A016138.P17527774173746458049

`10*a(n-1)-21*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016138

/-- `10*a(n-1)-21*a(n-2)` -/
def P17527774173746458049.Spec : Prop :=
  ∀ n, P17527774173746458049.a n = A016138 n

theorem P17527774173746458049.correct : P17527774173746458049.Spec := by
  intro n
  simp only [A016138]

end A016138

/-! ## A016138.P5702792995551696945

`3^n+7*a(n-1)` with `a(0)=1`
-/

namespace A016138.P5702792995551696945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n + 7 * a (n - 1)

end

end A016138.P5702792995551696945

namespace A016138

/-- `3^n+7*a(n-1)` -/
def P5702792995551696945.Spec : Prop :=
  ∀ n, (P5702792995551696945.a n : ℤ) = A016138 n

end A016138

/-! ## A016138.P17307456287995202128

`lcm(3, a(n-1))+7^n` with `a(0)=1`
-/

namespace A016138.P17307456287995202128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 7 ^ n

end

end A016138.P17307456287995202128

namespace A016138

/-- `lcm(3, a(n-1))+7^n` -/
def P17307456287995202128.Spec : Prop :=
  ∀ n, (P17307456287995202128.a n : ℤ) = A016138 n

end A016138

/-! ## A016138.P1420465264594220451

`∑[A165147(n)]`
-/

namespace A016138.P1420465264594220451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016138.P1420465264594220451

namespace A016138

/-- `∑[A165147(n)]` -/
def P1420465264594220451.Spec : Prop :=
  ∀ n, P1420465264594220451.a n = A016138 n

end A016138

/-! ## A016138.P9685610341152509322

`∑[A199417(n)-A007051(n)]`
-/

namespace A016138.P9685610341152509322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016138.P9685610341152509322

namespace A016138

/-- `∑[A199417(n)-A007051(n)]` -/
def P9685610341152509322.Spec : Prop :=
  ∀ n, P9685610341152509322.a n = A016138 n

end A016138

/-! ## A016138.P2612481707057918735

`∑[A000420(n)+A190541(n)/2]`
-/

namespace A016138.P2612481707057918735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) + (A190541 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016138.P2612481707057918735

namespace A016138

/-- `∑[A000420(n)+A190541(n)/2]` -/
def P2612481707057918735.Spec : Prop :=
  ∀ n, P2612481707057918735.a n = (A016138 n : ℚ)

end A016138

/-! ## A016138.P8894307751736396163

`∑[A000420(n)/A000244(n)]*A000244(n)`
-/

namespace A016138.P8894307751736396163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) / (A000244 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000244 n : ℚ)

end

end A016138.P8894307751736396163

namespace A016138

/-- `∑[A000420(n)/A000244(n)]*A000244(n)` -/
def P8894307751736396163.Spec : Prop :=
  ∀ n, P8894307751736396163.a n = (A016138 n : ℚ)

end A016138

/-! ## A016138.P6893014911661956295

`A015552(n+1)+A015552(n+1)-A015518(n+1)`
-/

namespace A016138.P6893014911661956295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) + (A015552 (n + 1) - A015518 (n + 1))

end

end A016138.P6893014911661956295

namespace A016138

/-- `A015552(n+1)+A015552(n+1)-A015518(n+1)` -/
def P6893014911661956295.Spec : Prop :=
  ∀ n, P6893014911661956295.a n = A016138 n

end A016138

/-! ## A016138.P12205459719958785526

`Δ[A346796(n+1)/2]`
-/

namespace A016138.P12205459719958785526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346796 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016138.P12205459719958785526

namespace A016138

/-- `Δ[A346796(n+1)/2]` -/
def P12205459719958785526.Spec : Prop :=
  ∀ n, P12205459719958785526.a n = (A016138 n : ℚ)

end A016138

/-! ## A016138.P12774335518578832312

`∑[abs(Δ[A190541(n)/4])]`
-/

namespace A016138.P12774335518578832312
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190541 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016138.P12774335518578832312

namespace A016138

/-- `∑[abs(Δ[A190541(n)/4])]` -/
def P12774335518578832312.Spec : Prop :=
  ∀ n, P12774335518578832312.a n = (A016138 n : ℚ)

end A016138

/-!
# A016140: Expansion of 1/((1-3*x)*(1-8*x)).

The programs for A016140, the canonical program `A016140.P2778918463246575270` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016140 has offset 0).

The definition of A016140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016140.P2778918463246575270

`3*a(n-1)+8^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016140

/-- `3*a(n-1)+8^n` -/
def P2778918463246575270.Spec : Prop :=
  ∀ n, (P2778918463246575270.a n : ℤ) = A016140 n

theorem P2778918463246575270.correct : P2778918463246575270.Spec := by
  intro n
  simp only [A016140]

end A016140

/-! ## A016140.P4508470387027737605

`(8^(n+1)-3^(n+1))/5`
-/

namespace A016140.P4508470387027737605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A016140.P4508470387027737605

namespace A016140

/-- `(8^(n+1)-3^(n+1))/5` -/
def P4508470387027737605.Spec : Prop :=
  ∀ n, P4508470387027737605.a n = (A016140 n : ℚ)

theorem P4508470387027737605.correct : P4508470387027737605.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016140, Nat.add_sub_cancel, A016140.P4508470387027737605.a, A016140.P2778918463246575270.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016140, Nat.add_sub_cancel, A016140.P4508470387027737605.a, A016140.P2778918463246575270.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016140

/-! ## A016140.P12099420680819095093

`lcm(3, a(n-1))+8^n` with `a(0)=1`
-/

namespace A016140.P12099420680819095093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 8 ^ n

end

end A016140.P12099420680819095093

namespace A016140

/-- `lcm(3, a(n-1))+8^n` -/
def P12099420680819095093.Spec : Prop :=
  ∀ n, (P12099420680819095093.a n : ℤ) = A016140 n

end A016140

/-! ## A016140.P12864924340943644095

`or(3*a(n-1), 8^n)` with `a(0)=1`
-/

namespace A016140.P12864924340943644095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (3 * a (n - 1)) (8 ^ n)

end

end A016140.P12864924340943644095

namespace A016140

/-- `or(3*a(n-1), 8^n)` -/
def P12864924340943644095.Spec : Prop :=
  ∀ n, (P12864924340943644095.a n : ℤ) = A016140 n

end A016140

/-! ## A016140.P6579962109895357496

`xor(3*a(n-1), 8^n)` with `a(0)=1`
-/

namespace A016140.P6579962109895357496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (3 * a (n - 1)) (8 ^ n)

end

end A016140.P6579962109895357496

namespace A016140

/-- `xor(3*a(n-1), 8^n)` -/
def P6579962109895357496.Spec : Prop :=
  ∀ n, (P6579962109895357496.a n : ℤ) = A016140 n

end A016140

/-! ## A016140.P11431700499456360582

`A001018(n)+lcm(3, a(n-1))` with `a(0)=1`
-/

namespace A016140.P11431700499456360582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001018 n + (Int.lcm 3 (a (n - 1)) : ℤ)

end

end A016140.P11431700499456360582

namespace A016140

/-- `A001018(n)+lcm(3, a(n-1))` -/
def P11431700499456360582.Spec : Prop :=
  ∀ n, P11431700499456360582.a n = A016140 n

end A016140

/-! ## A016140.P17552738604323158454

`A000244(n)+2*4*a(n-1)` with `a(0)=1`
-/

namespace A016140.P17552738604323158454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n + 2 * (4 * a (n - 1))

end

end A016140.P17552738604323158454

namespace A016140

/-- `A000244(n)+2*4*a(n-1)` -/
def P17552738604323158454.Spec : Prop :=
  ∀ n, P17552738604323158454.a n = A016140 n

end A016140

/-! ## A016140.P1820188154648322858

`A271939(n+1)/A001018(n+1)*A001018(n)`
-/

namespace A016140.P1820188154648322858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271939 (n + 1) : ℚ) / (A001018 (n + 1) : ℚ) * (A001018 n : ℚ)

end

end A016140.P1820188154648322858

namespace A016140

/-- `A271939(n+1)/A001018(n+1)*A001018(n)` -/
def P1820188154648322858.Spec : Prop :=
  ∀ n, P1820188154648322858.a n = (A016140 n : ℚ)

end A016140

/-!
# A016141: Inverse of 2132nd cyclotomic polynomial.

The programs for A016141, there is no canonical definition to state claims against.
-/

/-! ## A016141.P18371131353018983738

`A016240(A367579(and(2, n+1)+n+1))*A016245(n)`
-/

namespace A016141.P18371131353018983738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 (A367579 (Nat.land 2 (n + 1) + (n + 1))).toNat * A016245 n

end

end A016141.P18371131353018983738

/-! ## A016141.P10222102740028667784

`A016240(A367579(n+4))*A016245(n)`
-/

namespace A016141.P10222102740028667784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 (A367579 (n + 4)).toNat * A016245 n

end

end A016141.P10222102740028667784

/-!
# A016142: Expansion of 1/((1-3*x)*(1-9*x)).

The programs for A016142, the canonical program `A016142.P1745612610297386382` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016142 has offset 0).

The definition of A016142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016142.P1745612610297386382

`12*a(n-1)-27*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016142

/-- `12*a(n-1)-27*a(n-2)` -/
def P1745612610297386382.Spec : Prop :=
  ∀ n, P1745612610297386382.a n = A016142 n

theorem P1745612610297386382.correct : P1745612610297386382.Spec := by
  intro n
  simp only [A016142]

end A016142

/-! ## A016142.P8506761654185243952

`(9^(n+1)-3^(n+1))/6`
-/

namespace A016142.P8506761654185243952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) / 6

end

end A016142.P8506761654185243952

namespace A016142

/-- `(9^(n+1)-3^(n+1))/6` -/
def P8506761654185243952.Spec : Prop :=
  ∀ n, P8506761654185243952.a n = (A016142 n : ℚ)

theorem P8506761654185243952.correct : P8506761654185243952.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016142, Nat.add_sub_cancel, A016142.P8506761654185243952.a, A016142.P1745612610297386382.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016142, Nat.add_sub_cancel, A016142.P8506761654185243952.a, A016142.P1745612610297386382.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016142

/-! ## A016142.P13875143699044410645

`lcm(3^n, ∑[3^n])`
-/

namespace A016142.P13875143699044410645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016142.P13875143699044410645

namespace A016142

/-- `lcm(3^n, ∑[3^n])` -/
def P13875143699044410645.Spec : Prop :=
  ∀ n, (P13875143699044410645.a n : ℤ) = A016142 n

end A016142

/-! ## A016142.P16592535560024791610

`3^n+9*a(n-1)` with `a(0)=1`
-/

namespace A016142.P16592535560024791610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n + 9 * a (n - 1)

end

end A016142.P16592535560024791610

namespace A016142

/-- `3^n+9*a(n-1)` -/
def P16592535560024791610.Spec : Prop :=
  ∀ n, (P16592535560024791610.a n : ℤ) = A016142 n

end A016142

/-! ## A016142.P2748484671927299020

`∑[A226508(n)/3]`
-/

namespace A016142.P2748484671927299020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226508 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016142.P2748484671927299020

namespace A016142

/-- `∑[A226508(n)/3]` -/
def P2748484671927299020.Spec : Prop :=
  ∀ n, P2748484671927299020.a n = (A016142 n : ℚ)

end A016142

/-! ## A016142.P411208601815570788

`A167993(2*(n+1))`
-/

namespace A016142.P411208601815570788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * (n + 1))

end

end A016142.P411208601815570788

namespace A016142

/-- `A167993(2*(n+1))` -/
def P411208601815570788.Spec : Prop :=
  ∀ n, P411208601815570788.a n = A016142 n

end A016142

/-! ## A016142.P3486267127214810817

`3^n*A003462(n+1)`
-/

namespace A016142.P3486267127214810817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A003462 (n + 1)

end

end A016142.P3486267127214810817

namespace A016142

/-- `3^n*A003462(n+1)` -/
def P3486267127214810817.Spec : Prop :=
  ∀ n, P3486267127214810817.a n = A016142 n

end A016142

/-! ## A016142.P14252102902102607717

`3^n*A261547(n+1)`
-/

namespace A016142.P14252102902102607717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A261547 (n + 1)

end

end A016142.P14252102902102607717

namespace A016142

/-- `3^n*A261547(n+1)` -/
def P14252102902102607717.Spec : Prop :=
  ∀ n, P14252102902102607717.a n = A016142 n

end A016142

/-! ## A016142.P16412411067630636727

`A001019(n)+C(3^n, 2)`
-/

namespace A016142.P16412411067630636727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (Nat.choose (3 ^ n) 2 : ℤ)

end

end A016142.P16412411067630636727

namespace A016142

/-- `A001019(n)+C(3^n, 2)` -/
def P16412411067630636727.Spec : Prop :=
  ∀ n, P16412411067630636727.a n = A016142 n

end A016142

/-! ## A016142.P2720031728835355044

`Δ[A099583(2*n+1)/2]`
-/

namespace A016142.P2720031728835355044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099583 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016142.P2720031728835355044

namespace A016142

/-- `Δ[A099583(2*n+1)/2]` -/
def P2720031728835355044.Spec : Prop :=
  ∀ n, P2720031728835355044.a n = (A016142 n : ℚ)

end A016142

/-! ## A016142.P8041473666914142268

`A024101(n)+3*a(n-1)+1` with `a(0)=1`
-/

namespace A016142.P8041473666914142268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024101 n + (3 * a (n - 1) + 1)

end

end A016142.P8041473666914142268

namespace A016142

/-- `A024101(n)+3*a(n-1)+1` -/
def P8041473666914142268.Spec : Prop :=
  ∀ n, P8041473666914142268.a n = A016142 n

end A016142

/-! ## A016142.P4892641236377571658

`A024023(n)+9*a(n-1)+1` with `a(0)=1`
-/

namespace A016142.P4892641236377571658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024023 n + (9 * a (n - 1) + 1)

end

end A016142.P4892641236377571658

namespace A016142

/-- `A024023(n)+9*a(n-1)+1` -/
def P4892641236377571658.Spec : Prop :=
  ∀ n, P4892641236377571658.a n = A016142 n

end A016142

/-! ## A016142.P14394887874598212494

`A051407(n)-A000244(n)`
-/

namespace A016142.P14394887874598212494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051407 n - A000244 n

end

end A016142.P14394887874598212494

namespace A016142

/-- `A051407(n)-A000244(n)` -/
def P14394887874598212494.Spec : Prop :=
  ∀ n, P14394887874598212494.a n = A016142 n

end A016142

/-! ## A016142.P6923517542449849012

`A199560(n)-A007051(n)`
-/

namespace A016142.P6923517542449849012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199560 n - A007051 n

end

end A016142.P6923517542449849012

namespace A016142

/-- `A199560(n)-A007051(n)` -/
def P6923517542449849012.Spec : Prop :=
  ∀ n, P6923517542449849012.a n = A016142 n

end A016142

/-! ## A016142.P16102743770884492652

`A067771(2*n)-A115098(n)`
-/

namespace A016142.P16102743770884492652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 (2 * n) - A115098 n

end

end A016142.P16102743770884492652

namespace A016142

/-- `A067771(2*n)-A115098(n)` -/
def P16102743770884492652.Spec : Prop :=
  ∀ n, P16102743770884492652.a n = A016142 n

end A016142

/-! ## A016142.P11809278325061066479

`A003462(n+1)*A133494(n+1)`
-/

namespace A016142.P11809278325061066479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) * A133494 (n + 1)

end

end A016142.P11809278325061066479

namespace A016142

/-- `A003462(n+1)*A133494(n+1)` -/
def P11809278325061066479.Spec : Prop :=
  ∀ n, P11809278325061066479.a n = A016142 n

end A016142

/-! ## A016142.P12068790349720941081

`A001444(2*n+1)-A000244(n)`
-/

namespace A016142.P12068790349720941081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (2 * n + 1) - A000244 n

end

end A016142.P12068790349720941081

namespace A016142

/-- `A001444(2*n+1)-A000244(n)` -/
def P12068790349720941081.Spec : Prop :=
  ∀ n, P12068790349720941081.a n = A016142 n

end A016142

/-! ## A016142.P7607385868002172698

`A003462(2*n+1)-A003462(n)`
-/

namespace A016142.P7607385868002172698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n + 1) - A003462 n

end

end A016142.P7607385868002172698

namespace A016142

/-- `A003462(2*n+1)-A003462(n)` -/
def P7607385868002172698.Spec : Prop :=
  ∀ n, P7607385868002172698.a n = A016142 n

end A016142

/-! ## A016142.P9641436902080200395

`A007051(2*n+1)-A007051(n)`
-/

namespace A016142.P9641436902080200395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n + 1) - A007051 n

end

end A016142.P9641436902080200395

namespace A016142

/-- `A007051(2*n+1)-A007051(n)` -/
def P9641436902080200395.Spec : Prop :=
  ∀ n, P9641436902080200395.a n = A016142 n

end A016142

/-!
# A016143: Inverse of 2134th cyclotomic polynomial.

The programs for A016143, there is no canonical definition to state claims against.
-/

/-! ## A016143.P9790814206598353913

`A015076(n)*A033999(n)`
-/

namespace A016143.P9790814206598353913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015076 n * A033999 n

end

end A016143.P9790814206598353913

/-! ## A016143.P339751851462049817

`A016275(n)^((n+2)%A204763(n+1))`
-/

namespace A016143.P339751851462049817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (Int.tmod (n + 2 : ℤ) (A204763 (n + 1)) : ℤ)

end

end A016143.P339751851462049817

/-! ## A016143.P8897837116928675707

`A016275(n)^A204763(n+2)`
-/

namespace A016143.P8897837116928675707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A204763 (n + 2) : ℤ)

end

end A016143.P8897837116928675707

/-! ## A016143.P9595552704447160003

`and(A016231(n), A189048(n+2))`
-/

namespace A016143.P9595552704447160003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016231 n) (A189048 (n + 2))

end

end A016143.P9595552704447160003

/-! ## A016143.P11482255574492411457

`and(A016275(n), A189048(n+2))`
-/

namespace A016143.P11482255574492411457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016275 n) (A189048 (n + 2))

end

end A016143.P11482255574492411457

/-! ## A016143.P4312807519835555883

`A016275(n)^A000041(A369816(n+2))`
-/

namespace A016143.P4312807519835555883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016275 n : ℚ) ^ (A000041 (A369816 (n + 2)).toNat : ℤ)

end

end A016143.P4312807519835555883

/-!
# A016145: Expansion of g.f. 1/((1-3*x)*(1-10*x)).

The programs for A016145, the canonical program `A016145.P8112690832788272695` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016145 has offset 0).

The definition of A016145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016145.P8112690832788272695

`3*a(n-1)+10^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016145

/-- `3*a(n-1)+10^n` -/
def P8112690832788272695.Spec : Prop :=
  ∀ n, (P8112690832788272695.a n : ℤ) = A016145 n

theorem P8112690832788272695.correct : P8112690832788272695.Spec := by
  intro n
  simp only [A016145]

end A016145

/-! ## A016145.P10145388181292177353

`(10^(n+1)-3^(n+1))/7`
-/

namespace A016145.P10145388181292177353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) / 7

end

end A016145.P10145388181292177353

namespace A016145

/-- `(10^(n+1)-3^(n+1))/7` -/
def P10145388181292177353.Spec : Prop :=
  ∀ n, P10145388181292177353.a n = (A016145 n : ℚ)

theorem P10145388181292177353.correct : P10145388181292177353.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016145, Nat.add_sub_cancel, A016145.P10145388181292177353.a, A016145.P8112690832788272695.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016145, Nat.add_sub_cancel, A016145.P10145388181292177353.a, A016145.P8112690832788272695.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016145

/-! ## A016145.P2643546244690493170

`lcm(3, a(n-1))+10^n` with `a(0)=1`
-/

namespace A016145.P2643546244690493170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 10 ^ n

end

end A016145.P2643546244690493170

namespace A016145

/-- `lcm(3, a(n-1))+10^n` -/
def P2643546244690493170.Spec : Prop :=
  ∀ n, (P2643546244690493170.a n : ℤ) = A016145 n

end A016145

/-! ## A016145.P11621059244688211281

`10^n+a(n-1)+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A016145.P11621059244688211281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 ^ n + (a (n - 1) + (a (n - 1) + a (n - 1)))

end

end A016145.P11621059244688211281

namespace A016145

/-- `10^n+a(n-1)+a(n-1)+a(n-1)` -/
def P11621059244688211281.Spec : Prop :=
  ∀ n, (P11621059244688211281.a n : ℤ) = A016145 n

theorem P11621059244688211281.correct : P11621059244688211281.Spec := by
  intro n
  simp only [A016145, Nat.add_sub_cancel, A016145.P11621059244688211281.a, A016145.P8112690832788272695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A016145

/-! ## A016145.P18439671530062218832

`A011557(n)+lcm(3, a(n-1))` with `a(0)=1`
-/

namespace A016145.P18439671530062218832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011557 n + (Int.lcm 3 (a (n - 1)) : ℤ)

end

end A016145.P18439671530062218832

namespace A016145

/-- `A011557(n)+lcm(3, a(n-1))` -/
def P18439671530062218832.Spec : Prop :=
  ∀ n, P18439671530062218832.a n = A016145 n

end A016145

/-! ## A016145.P10089552211024801886

`A000244(n)+5*2*a(n-1)` with `a(0)=1`
-/

namespace A016145.P10089552211024801886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n + 5 * (2 * a (n - 1))

end

end A016145.P10089552211024801886

namespace A016145

/-- `A000244(n)+5*2*a(n-1)` -/
def P10089552211024801886.Spec : Prop :=
  ∀ n, P10089552211024801886.a n = A016145 n

end A016145

/-! ## A016145.P13651402399306414905

`Δ[A115098(n)]+5*2*a(n-1)` with `a(0)=1`
-/

namespace A016145.P13651402399306414905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 5 * (2 * a (n - 1))

end

end A016145.P13651402399306414905

namespace A016145

/-- `Δ[A115098(n)]+5*2*a(n-1)` -/
def P13651402399306414905.Spec : Prop :=
  ∀ n, P13651402399306414905.a n = A016145 n

end A016145

/-!
# A016146: Expansion of g.f. 1/((1-3*x)*(1-11*x)).

The programs for A016146, the canonical program `A016146.P1222709863407533344` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016146 has offset 0).

The definition of A016146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016146.P1222709863407533344

`14*a(n-1)-33*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016146

/-- `14*a(n-1)-33*a(n-2)` -/
def P1222709863407533344.Spec : Prop :=
  ∀ n, P1222709863407533344.a n = A016146 n

theorem P1222709863407533344.correct : P1222709863407533344.Spec := by
  intro n
  simp only [A016146]

end A016146

/-! ## A016146.P9819696086387044051

`A139741(n+1)/8`
-/

namespace A016146.P9819696086387044051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139741 (n + 1) : ℚ) / 8

end

end A016146.P9819696086387044051

namespace A016146

/-- `A139741(n+1)/8` -/
def P9819696086387044051.Spec : Prop :=
  ∀ n, P9819696086387044051.a n = (A016146 n : ℚ)

end A016146

/-! ## A016146.P15250251811688340398

`3^n+11*a(n-1)` with `a(0)=1`
-/

namespace A016146.P15250251811688340398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n + 11 * a (n - 1)

end

end A016146.P15250251811688340398

namespace A016146

/-- `3^n+11*a(n-1)` -/
def P15250251811688340398.Spec : Prop :=
  ∀ n, (P15250251811688340398.a n : ℤ) = A016146 n

end A016146

/-! ## A016146.P15326600410813348492

`lcm(11, a(n-1))+3^n` with `a(0)=1`
-/

namespace A016146.P15326600410813348492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 3 ^ n

end

end A016146.P15326600410813348492

namespace A016146

/-- `lcm(11, a(n-1))+3^n` -/
def P15326600410813348492.Spec : Prop :=
  ∀ n, (P15326600410813348492.a n : ℤ) = A016146 n

end A016146

/-! ## A016146.P10119745727661624948

`(11^(n+1)-3^(n+1))/8`
-/

namespace A016146.P10119745727661624948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) / 8

end

end A016146.P10119745727661624948

namespace A016146

/-- `(11^(n+1)-3^(n+1))/8` -/
def P10119745727661624948.Spec : Prop :=
  ∀ n, P10119745727661624948.a n = (A016146 n : ℚ)

theorem P10119745727661624948.correct : P10119745727661624948.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016146, Nat.add_sub_cancel, A016146.P10119745727661624948.a, A016146.P1222709863407533344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016146, Nat.add_sub_cancel, A016146.P10119745727661624948.a, A016146.P1222709863407533344.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016146

/-! ## A016146.P7066563114083941865

`3*a(n-1)+A226737(n)-n` with `a(0)=1`
-/

namespace A016146.P7066563114083941865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (A226737 n - (n : ℤ))

end

end A016146.P7066563114083941865

namespace A016146

/-- `3*a(n-1)+A226737(n)-n` -/
def P7066563114083941865.Spec : Prop :=
  ∀ n, P7066563114083941865.a n = A016146 n

end A016146

/-! ## A016146.P15024665643129674238

`11*a(n-1)-(A000007(n)-3^n)` with `a(0)=1`
-/

namespace A016146.P15024665643129674238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * a (n - 1) - (A000007 n - (3 ^ n : ℤ))

end

end A016146.P15024665643129674238

namespace A016146

/-- `11*a(n-1)-(A000007(n)-3^n)` -/
def P15024665643129674238.Spec : Prop :=
  ∀ n, P15024665643129674238.a n = A016146 n

end A016146

/-! ## A016146.P12466757609587326371

`3*a(n-1)+A001020(n)*A057427(n)` with `a(0)=1`
-/

namespace A016146.P12466757609587326371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A001020 n * A057427 n

end

end A016146.P12466757609587326371

namespace A016146

/-- `3*a(n-1)+A001020(n)*A057427(n)` -/
def P12466757609587326371.Spec : Prop :=
  ∀ n, P12466757609587326371.a n = A016146 n

end A016146

/-! ## A016146.P10605457651952857375

`Δ[∑[A139741(n)]/8]`
-/

namespace A016146.P10605457651952857375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139741 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016146.P10605457651952857375

namespace A016146

/-- `Δ[∑[A139741(n)]/8]` -/
def P10605457651952857375.Spec : Prop :=
  ∀ n, P10605457651952857375.a n = (A016146 n : ℚ)

end A016146

/-!
# A016147: Expansion of 1/((1-3*x)*(1-12*x)).

The programs for A016147, the canonical program `A016147.P1128574679245797249` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016147 has offset 0).

The definition of A016147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016147.P9874228668526521773

`(4*12^n-3^n)/3`
-/

namespace A016147.P9874228668526521773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 12 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 3

end

end A016147.P9874228668526521773

namespace A016147

/-- `(4*12^n-3^n)/3` -/
def P9874228668526521773.Spec : Prop :=
  ∀ n, P9874228668526521773.a n = (A016147 n : ℚ)

theorem P9874228668526521773.correct : P9874228668526521773.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016147, Nat.add_sub_cancel, A016147.P9874228668526521773.a, A016147.P1128574679245797249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016147, Nat.add_sub_cancel, A016147.P9874228668526521773.a, A016147.P1128574679245797249.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016147

/-! ## A016147.P1128574679245797249

`15*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016147

/-- `15*a(n-1)-36*a(n-2)` -/
def P1128574679245797249.Spec : Prop :=
  ∀ n, P1128574679245797249.a n = A016147 n

theorem P1128574679245797249.correct : P1128574679245797249.Spec := by
  intro n
  simp only [A016147]

end A016147

/-! ## A016147.P9828220098501494390

`3^n+12*a(n-1)` with `a(0)=1`
-/

namespace A016147.P9828220098501494390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n + 12 * a (n - 1)

end

end A016147.P9828220098501494390

namespace A016147

/-- `3^n+12*a(n-1)` -/
def P9828220098501494390.Spec : Prop :=
  ∀ n, (P9828220098501494390.a n : ℤ) = A016147 n

end A016147

/-! ## A016147.P8527701349585860475

`3^n*A002450(n+1)`
-/

namespace A016147.P8527701349585860475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002450 (n + 1)

end

end A016147.P8527701349585860475

namespace A016147

/-- `3^n*A002450(n+1)` -/
def P8527701349585860475.Spec : Prop :=
  ∀ n, P8527701349585860475.a n = A016147 n

end A016147

/-! ## A016147.P9606066300057873350

`A000244(n)*A000975(2*n+1)`
-/

namespace A016147.P9606066300057873350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000975 (2 * n + 1)

end

end A016147.P9606066300057873350

namespace A016147

/-- `A000244(n)*A000975(2*n+1)` -/
def P9606066300057873350.Spec : Prop :=
  ∀ n, P9606066300057873350.a n = A016147 n

end A016147

/-! ## A016147.P4803813643209973969

`A000244(n)*A092809(2*n+1)`
-/

namespace A016147.P4803813643209973969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A092809 (2 * n + 1)

end

end A016147.P4803813643209973969

namespace A016147

/-- `A000244(n)*A092809(2*n+1)` -/
def P4803813643209973969.Spec : Prop :=
  ∀ n, P4803813643209973969.a n = A016147 n

end A016147

/-! ## A016147.P17893827319877613495

`A038754(2*n)*A092809(2*n+1)`
-/

namespace A016147.P17893827319877613495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) * A092809 (2 * n + 1)

end

end A016147.P17893827319877613495

namespace A016147

/-- `A038754(2*n)*A092809(2*n+1)` -/
def P17893827319877613495.Spec : Prop :=
  ∀ n, P17893827319877613495.a n = A016147 n

end A016147

/-! ## A016147.P2122329298303893448

`A000244(n)*A047849(n+1)-A000244(n)`
-/

namespace A016147.P2122329298303893448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A047849 (n + 1) - A000244 n

end

end A016147.P2122329298303893448

namespace A016147

/-- `A000244(n)*A047849(n+1)-A000244(n)` -/
def P2122329298303893448.Spec : Prop :=
  ∀ n, P2122329298303893448.a n = A016147 n

end A016147

/-!
# A016149: Expansion of g.f. 1/((1 - 4*x)*(1 - 6*x)).

The programs for A016149, the canonical program `A016149.P16027144309782875915` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016149 has offset 0).

The definition of A016149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016149.P13917986305145929095

`(6^(n+1)-4^(n+1))/2`
-/

namespace A016149.P13917986305145929095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 2

end

end A016149.P13917986305145929095

namespace A016149

/-- `(6^(n+1)-4^(n+1))/2` -/
def P13917986305145929095.Spec : Prop :=
  ∀ n, P13917986305145929095.a n = (A016149 n : ℚ)

theorem P13917986305145929095.correct : P13917986305145929095.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016149, Nat.add_sub_cancel, A016149.P13917986305145929095.a, A016149.P16027144309782875915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016149, Nat.add_sub_cancel, A016149.P13917986305145929095.a, A016149.P16027144309782875915.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016149

/-! ## A016149.P16027144309782875915

`10*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016149

/-- `10*a(n-1)-24*a(n-2)` -/
def P16027144309782875915.Spec : Prop :=
  ∀ n, P16027144309782875915.a n = A016149 n

theorem P16027144309782875915.correct : P16027144309782875915.Spec := by
  intro n
  simp only [A016149]

end A016149

/-! ## A016149.P5355268727341140973

`A081199(n+1)`
-/

namespace A016149.P5355268727341140973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 (n + 1)

end

end A016149.P5355268727341140973

namespace A016149

/-- `A081199(n+1)` -/
def P5355268727341140973.Spec : Prop :=
  ∀ n, P5355268727341140973.a n = A016149 n

end A016149

/-! ## A016149.P3744516484922906906

`4^n+6*a(n-1)` with `a(0)=1`
-/

namespace A016149.P3744516484922906906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ n + 6 * a (n - 1)

end

end A016149.P3744516484922906906

namespace A016149

/-- `4^n+6*a(n-1)` -/
def P3744516484922906906.Spec : Prop :=
  ∀ n, (P3744516484922906906.a n : ℤ) = A016149 n

end A016149

/-! ## A016149.P5558805859660143549

`∑[abs(Δ[A081199(n)])]`
-/

namespace A016149.P5558805859660143549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016149.P5558805859660143549

namespace A016149

/-- `∑[abs(Δ[A081199(n)])]` -/
def P5558805859660143549.Spec : Prop :=
  ∀ n, P5558805859660143549.a n = A016149 n

end A016149

/-! ## A016149.P9024569958806857199

`record[A081199(abs(1-n))]`
-/

namespace A016149.P9024569958806857199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081199 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016149.P9024569958806857199

namespace A016149

/-- `record[A081199(abs(1-n))]` -/
def P9024569958806857199.Spec : Prop :=
  ∀ n, P9024569958806857199.a n = A016149 n

end A016149

/-! ## A016149.P14477479686216676150

`Δ[∑[A248337(n)]/2]`
-/

namespace A016149.P14477479686216676150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248337 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016149.P14477479686216676150

namespace A016149

/-- `Δ[∑[A248337(n)]/2]` -/
def P14477479686216676150.Spec : Prop :=
  ∀ n, P14477479686216676150.a n = (A016149 n : ℚ)

end A016149

/-! ## A016149.P13542118172076105315

`floor(A155627(n+1)/2)`
-/

namespace A016149.P13542118172076105315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155627 (n + 1) : ℚ) / 2⌋

end

end A016149.P13542118172076105315

namespace A016149

/-- `floor(A155627(n+1)/2)` -/
def P13542118172076105315.Spec : Prop :=
  ∀ n, P13542118172076105315.a n = A016149 n

end A016149

/-! ## A016149.P16991740113246331631

`2^n*A001047(n+1)`
-/

namespace A016149.P16991740113246331631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001047 (n + 1)

end

end A016149.P16991740113246331631

namespace A016149

/-- `2^n*A001047(n+1)` -/
def P16991740113246331631.Spec : Prop :=
  ∀ n, P16991740113246331631.a n = A016149 n

end A016149

/-! ## A016149.P9234095787316542295

`a(n-1)+A081626(n)+a(n-1)` with `a(0)=1`
-/

namespace A016149.P9234095787316542295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081626 n + a (n - 1))

end

end A016149.P9234095787316542295

namespace A016149

/-- `a(n-1)+A081626(n)+a(n-1)` -/
def P9234095787316542295.Spec : Prop :=
  ∀ n, P9234095787316542295.a n = A016149 n

end A016149

/-! ## A016149.P8228177769519588271

`lcm(∑[A027649(n)], A122803(n))`
-/

namespace A016149.P8228177769519588271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A122803 n)

end

end A016149.P8228177769519588271

namespace A016149

/-- `lcm(∑[A027649(n)], A122803(n))` -/
def P8228177769519588271.Spec : Prop :=
  ∀ n, (P8228177769519588271.a n : ℤ) = A016149 n

end A016149

/-! ## A016149.P15375358553615059402

`A081341(n+1)-A004171(n)`
-/

namespace A016149.P15375358553615059402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (n + 1) - A004171 n

end

end A016149.P15375358553615059402

namespace A016149

/-- `A081341(n+1)-A004171(n)` -/
def P15375358553615059402.Spec : Prop :=
  ∀ n, P15375358553615059402.a n = A016149 n

end A016149

/-! ## A016149.P4818232562445733846

`A169604(n)-2*A000302(n)`
-/

namespace A016149.P4818232562445733846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 n - 2 * A000302 n

end

end A016149.P4818232562445733846

namespace A016149

/-- `A169604(n)-2*A000302(n)` -/
def P4818232562445733846.Spec : Prop :=
  ∀ n, P4818232562445733846.a n = A016149 n

end A016149

/-! ## A016149.P9110365656880164849

`Δ[Δ[A016283(n)]]-A016283(n)`
-/

namespace A016149.P9110365656880164849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016283 n

end

end A016149.P9110365656880164849

namespace A016149

/-- `Δ[Δ[A016283(n)]]-A016283(n)` -/
def P9110365656880164849.Spec : Prop :=
  ∀ n, P9110365656880164849.a n = A016149 n

end A016149

/-! ## A016149.P14933461835989514010

`∑[(A257286(n)+A257285(n))/2]`
-/

namespace A016149.P14933461835989514010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257286 n + A257285 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016149.P14933461835989514010

namespace A016149

/-- `∑[(A257286(n)+A257285(n))/2]` -/
def P14933461835989514010.Spec : Prop :=
  ∀ n, P14933461835989514010.a n = (A016149 n : ℚ)

end A016149

/-! ## A016149.P14283181496716703615

`A081341(n+1)-A081294(n+1)`
-/

namespace A016149.P14283181496716703615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (n + 1) - A081294 (n + 1)

end

end A016149.P14283181496716703615

namespace A016149

/-- `A081341(n+1)-A081294(n+1)` -/
def P14283181496716703615.Spec : Prop :=
  ∀ n, P14283181496716703615.a n = A016149 n

end A016149

/-! ## A016149.P18425638332334393480

`A001047(n+1)*A011782(n+1)`
-/

namespace A016149.P18425638332334393480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) * A011782 (n + 1)

end

end A016149.P18425638332334393480

namespace A016149

/-- `A001047(n+1)*A011782(n+1)` -/
def P18425638332334393480.Spec : Prop :=
  ∀ n, P18425638332334393480.a n = A016149 n

end A016149

/-! ## A016149.P12473916915452188915

`A001047(n+1)*A098293(2*n)`
-/

namespace A016149.P12473916915452188915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) * A098293 (2 * n)

end

end A016149.P12473916915452188915

namespace A016149

/-- `A001047(n+1)*A098293(2*n)` -/
def P12473916915452188915.Spec : Prop :=
  ∀ n, P12473916915452188915.a n = A016149 n

end A016149

/-! ## A016149.P9116067719029006963

`A081187(n+1)-A000079(n+1)²`
-/

namespace A016149.P9116067719029006963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081187 (n + 1) - A000079 (n + 1) ^ 2

end

end A016149.P9116067719029006963

namespace A016149

/-- `A081187(n+1)-A000079(n+1)²` -/
def P9116067719029006963.Spec : Prop :=
  ∀ n, P9116067719029006963.a n = A016149 n

end A016149

/-!
# A016150: Expansion of g.f. 1/((1-4*x)*(1-7*x)).

The programs for A016150, the canonical program `A016150.P11114964904556306822` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016150 has offset 0).

The definition of A016150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016150.P8732376625710350657

`(7^(n+1)-4^(n+1))/3`
-/

namespace A016150.P8732376625710350657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016150.P8732376625710350657

namespace A016150

/-- `(7^(n+1)-4^(n+1))/3` -/
def P8732376625710350657.Spec : Prop :=
  ∀ n, P8732376625710350657.a n = (A016150 n : ℚ)

theorem P8732376625710350657.correct : P8732376625710350657.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016150, Nat.add_sub_cancel, A016150.P8732376625710350657.a, A016150.P11114964904556306822.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016150, Nat.add_sub_cancel, A016150.P8732376625710350657.a, A016150.P11114964904556306822.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016150

/-! ## A016150.P11114964904556306822

`11*a(n-1)-28*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016150

/-- `11*a(n-1)-28*a(n-2)` -/
def P11114964904556306822.Spec : Prop :=
  ∀ n, P11114964904556306822.a n = A016150 n

theorem P11114964904556306822.correct : P11114964904556306822.Spec := by
  intro n
  simp only [A016150]

end A016150

/-! ## A016150.P15104077036091698264

`4^n+7*a(n-1)` with `a(0)=1`
-/

namespace A016150.P15104077036091698264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ n + 7 * a (n - 1)

end

end A016150.P15104077036091698264

namespace A016150

/-- `4^n+7*a(n-1)` -/
def P15104077036091698264.Spec : Prop :=
  ∀ n, (P15104077036091698264.a n : ℤ) = A016150 n

end A016150

/-! ## A016150.P18261819657727143872

`lcm(4, a(n-1))+7^n` with `a(0)=1`
-/

namespace A016150.P18261819657727143872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 7 ^ n

end

end A016150.P18261819657727143872

namespace A016150

/-- `lcm(4, a(n-1))+7^n` -/
def P18261819657727143872.Spec : Prop :=
  ∀ n, (P18261819657727143872.a n : ℤ) = A016150 n

end A016150

/-! ## A016150.P1053402328891856446

`Δ[∑[A190542(n)]/3]`
-/

namespace A016150.P1053402328891856446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190542 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016150.P1053402328891856446

namespace A016150

/-- `Δ[∑[A190542(n)]/3]` -/
def P1053402328891856446.Spec : Prop :=
  ∀ n, P1053402328891856446.a n = (A016150 n : ℚ)

end A016150

/-! ## A016150.P9046410106567340520

`∑[A109808(n+1)-4^n]`
-/

namespace A016150.P9046410106567340520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109808 (n + 1) - (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016150.P9046410106567340520

namespace A016150

/-- `∑[A109808(n+1)-4^n]` -/
def P9046410106567340520.Spec : Prop :=
  ∀ n, P9046410106567340520.a n = A016150 n

end A016150

/-! ## A016150.P1717626628965370556

`∑[A155628(n)+7^n-1]`
-/

namespace A016150.P1717626628965370556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155628 n + ((7 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016150.P1717626628965370556

namespace A016150

/-- `∑[A155628(n)+7^n-1]` -/
def P1717626628965370556.Spec : Prop :=
  ∀ n, P1717626628965370556.a n = A016150 n

end A016150

/-! ## A016150.P17702141120788752825

`A125725(n+2)-∑[A122803(n)²]`
-/

namespace A016150.P17702141120788752825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016150.P17702141120788752825

namespace A016150

/-- `A125725(n+2)-∑[A122803(n)²]` -/
def P17702141120788752825.Spec : Prop :=
  ∀ n, P17702141120788752825.a n = A016150 n

end A016150

/-! ## A016150.P14926242402881616916

`A125725(n+2)-∑[A122803(2*n)]`
-/

namespace A016150.P14926242402881616916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016150.P14926242402881616916

namespace A016150

/-- `A125725(n+2)-∑[A122803(2*n)]` -/
def P14926242402881616916.Spec : Prop :=
  ∀ n, P14926242402881616916.a n = A016150 n

end A016150

/-! ## A016150.P17073836784116510005

`2*A023000(n+1)-A002450(n+1)`
-/

namespace A016150.P17073836784116510005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023000 (n + 1) - A002450 (n + 1)

end

end A016150.P17073836784116510005

namespace A016150

/-- `2*A023000(n+1)-A002450(n+1)` -/
def P17073836784116510005.Spec : Prop :=
  ∀ n, P17073836784116510005.a n = A016150 n

end A016150

/-! ## A016150.P2471235188847392607

`A125725(n+2)+A077925(2*n+1)`
-/

namespace A016150.P2471235188847392607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) + A077925 (2 * n + 1)

end

end A016150.P2471235188847392607

namespace A016150

/-- `A125725(n+2)+A077925(2*n+1)` -/
def P2471235188847392607.Spec : Prop :=
  ∀ n, P2471235188847392607.a n = A016150 n

end A016150

/-! ## A016150.P6284530369214362237

`A125725(n+2)-A000975(2*n+1)`
-/

namespace A016150.P6284530369214362237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - A000975 (2 * n + 1)

end

end A016150.P6284530369214362237

namespace A016150

/-- `A125725(n+2)-A000975(2*n+1)` -/
def P6284530369214362237.Spec : Prop :=
  ∀ n, P6284530369214362237.a n = A016150 n

end A016150

/-! ## A016150.P6203298089495797554

`2*A016157(n)-A016181(n)`
-/

namespace A016150.P6203298089495797554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016157 n - A016181 n

end

end A016150.P6203298089495797554

namespace A016150

/-- `2*A016157(n)-A016181(n)` -/
def P6203298089495797554.Spec : Prop :=
  ∀ n, P6203298089495797554.a n = A016150 n

end A016150

/-!
# A016151: Inverse of 2142nd cyclotomic polynomial.

The programs for A016151, there is no canonical definition to state claims against.
-/

/-! ## A016151.P13947717637432035845

`A015437(round(2*n/3))`
-/

namespace A016151.P13947717637432035845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A016151.P13947717637432035845

/-! ## A016151.P5937703170445587043

`A010892(n)*A015080(n)`
-/

namespace A016151.P5937703170445587043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A015080 n

end

end A016151.P5937703170445587043

/-! ## A016151.P9413370035055420381

`A015080(n)*A033999(n)`
-/

namespace A016151.P9413370035055420381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015080 n * A033999 n

end

end A016151.P9413370035055420381

/-! ## A016151.P3781645744047382325

`A015080(n)*A016350(n)`
-/

namespace A016151.P3781645744047382325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015080 n * A016350 n

end

end A016151.P3781645744047382325

/-!
# A016152: a(n) = 4^(n-1)*(2^n-1).

The programs for A016152, the canonical program `A016152.P12719847848793856673` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016152 has offset 0).

The definition of A016152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016152.P10367909734497555378

`4^(n-1)*(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016152.P10367909734497555378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((2 ^ n : ℤ) - 1 : ℚ)

end

end A016152.P10367909734497555378

namespace A016152

/-- `4^(n-1)*(2^n-1)` -/
def P10367909734497555378.Spec : Prop :=
  ∀ n, P10367909734497555378.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P12719847848793856673

`12*a(n-1)-32*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016152

/-- `12*a(n-1)-32*a(n-2)` -/
def P12719847848793856673.Spec : Prop :=
  ∀ n, P12719847848793856673.a n = A016152 n

theorem P12719847848793856673.correct : P12719847848793856673.Spec := by
  intro n
  simp only [A016152]

end A016152

/-! ## A016152.P5539242571362573098

`2^n*C(2^n, 2)/2`
-/

namespace A016152.P5539242571362573098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.choose (2 ^ n) 2 : ℚ) / 2

end

end A016152.P5539242571362573098

namespace A016152

/-- `2^n*C(2^n, 2)/2` -/
def P5539242571362573098.Spec : Prop :=
  ∀ n, P5539242571362573098.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P13462832903260152834

`lcm(2^n-1, floor(4^(n-1)))`
-/

namespace A016152.P13462832903260152834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A016152.P13462832903260152834

namespace A016152

/-- `lcm(2^n-1, floor(4^(n-1)))` -/
def P13462832903260152834.Spec : Prop :=
  ∀ n, (P13462832903260152834.a n : ℤ) = A016152 n

end A016152

/-! ## A016152.P8427846206459859667

`A000225(n)/4^(1-n)`
-/

namespace A016152.P8427846206459859667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) / (4 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A016152.P8427846206459859667

namespace A016152

/-- `A000225(n)/4^(1-n)` -/
def P8427846206459859667.Spec : Prop :=
  ∀ n, P8427846206459859667.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P9701346548041952717

`round(2^(n-1)*A006516(n))`
-/

namespace A016152.P9701346548041952717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A006516 n : ℚ))

end

end A016152.P9701346548041952717

namespace A016152

/-- `round(2^(n-1)*A006516(n))` -/
def P9701346548041952717.Spec : Prop :=
  ∀ n, P9701346548041952717.a n = A016152 n

end A016152

/-! ## A016152.P15774896534034646585

`C(2^n, 2)*A000079(n)/2`
-/

namespace A016152.P15774896534034646585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 ^ n) 2 : ℤ) * A000079 n : ℚ) / 2

end

end A016152.P15774896534034646585

namespace A016152

/-- `C(2^n, 2)*A000079(n)/2` -/
def P15774896534034646585.Spec : Prop :=
  ∀ n, P15774896534034646585.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P5359402024557977030

`(A081189(n)-A081187(n))/2`
-/

namespace A016152.P5359402024557977030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081189 n - A081187 n : ℚ) / 2

end

end A016152.P5359402024557977030

namespace A016152

/-- `(A081189(n)-A081187(n))/2` -/
def P5359402024557977030.Spec : Prop :=
  ∀ n, P5359402024557977030.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P1546648986414214507

`lcm(A006516(n), A081294(n))/2`
-/

namespace A016152.P1546648986414214507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006516 n) (A081294 n) : ℚ) / 2

end

end A016152.P1546648986414214507

namespace A016152

/-- `lcm(A006516(n), A081294(n))/2` -/
def P1546648986414214507.Spec : Prop :=
  ∀ n, P1546648986414214507.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P15640666032835982609

`A006516(n)*A011782(n+1)/2`
-/

namespace A016152.P15640666032835982609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006516 n * A011782 (n + 1) : ℚ) / 2

end

end A016152.P15640666032835982609

namespace A016152

/-- `A006516(n)*A011782(n+1)/2` -/
def P15640666032835982609.Spec : Prop :=
  ∀ n, P15640666032835982609.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P7332032524550980294

`A011782(2*n)*A000225(n)/2`
-/

namespace A016152.P7332032524550980294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) * A000225 n : ℚ) / 2

end

end A016152.P7332032524550980294

namespace A016152

/-- `A011782(2*n)*A000225(n)/2` -/
def P7332032524550980294.Spec : Prop :=
  ∀ n, P7332032524550980294.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P2156396189731881804

`A000225(n)*A131577(2*n)/2`
-/

namespace A016152.P2156396189731881804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n * A131577 (2 * n) : ℚ) / 2

end

end A016152.P2156396189731881804

namespace A016152

/-- `A000225(n)*A131577(2*n)/2` -/
def P2156396189731881804.Spec : Prop :=
  ∀ n, P2156396189731881804.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P4147750119571958000

`C(A000079(n), 2)*Δ[A000225(n)]/2`
-/

namespace A016152.P4147750119571958000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (A000079 n).toNat 2 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A016152.P4147750119571958000

namespace A016152

/-- `C(A000079(n), 2)*Δ[A000225(n)]/2` -/
def P4147750119571958000.Spec : Prop :=
  ∀ n, P4147750119571958000.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P15063218514295470044

`(A098657(2*n)-A098657(2*n+1))/2`
-/

namespace A016152.P15063218514295470044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098657 (2 * n) - A098657 (2 * n + 1) : ℚ) / 2

end

end A016152.P15063218514295470044

namespace A016152

/-- `(A098657(2*n)-A098657(2*n+1))/2` -/
def P15063218514295470044.Spec : Prop :=
  ∀ n, P15063218514295470044.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P16327351439412046462

`A291779(A110654(record[A019426(n)]))`
-/

namespace A016152.P16327351439412046462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291779 (A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A016152.P16327351439412046462

namespace A016152

/-- `A291779(A110654(record[A019426(n)]))` -/
def P16327351439412046462.Spec : Prop :=
  ∀ n, P16327351439412046462.a n = A016152 n

end A016152

/-! ## A016152.P10744046525800765931

`A006516(n)*A094373(n)-A006516(n)`
-/

namespace A016152.P10744046525800765931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A094373 n - A006516 n

end

end A016152.P10744046525800765931

namespace A016152

/-- `A006516(n)*A094373(n)-A006516(n)` -/
def P10744046525800765931.Spec : Prop :=
  ∀ n, P10744046525800765931.a n = A016152 n

end A016152

/-! ## A016152.P8575116906406051764

`A059409(n)/4`
-/

namespace A016152.P8575116906406051764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059409 n : ℚ) / 4

end

end A016152.P8575116906406051764

namespace A016152

/-- `A059409(n)/4` -/
def P8575116906406051764.Spec : Prop :=
  ∀ n, P8575116906406051764.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P5288915411923424611

`(A155629(n)-1)/4`
-/

namespace A016152.P5288915411923424611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155629 n - 1 : ℚ) / 4

end

end A016152.P5288915411923424611

namespace A016152

/-- `(A155629(n)-1)/4` -/
def P5288915411923424611.Spec : Prop :=
  ∀ n, P5288915411923424611.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P15688751138932970162

`A291779(3*n)/4`
-/

namespace A016152.P15688751138932970162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291779 (3 * n) : ℚ) / 4

end

end A016152.P15688751138932970162

namespace A016152

/-- `A291779(3*n)/4` -/
def P15688751138932970162.Spec : Prop :=
  ∀ n, P15688751138932970162.a n = (A016152 n : ℚ)

end A016152

/-! ## A016152.P16678574948779327972

`(2^n+8^n+1-A001576(n))/4`
-/

namespace A016152.P16678574948779327972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + ((8 ^ n + 1 : ℤ) - A001576 n) : ℚ) / 4

end

end A016152.P16678574948779327972

namespace A016152

/-- `(2^n+8^n+1-A001576(n))/4` -/
def P16678574948779327972.Spec : Prop :=
  ∀ n, P16678574948779327972.a n = (A016152 n : ℚ)

end A016152

/-!
# A016153: a(n) = (9^n-4^n)/5.

The programs for A016153, the canonical program `A016153.P16641770497363213505` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016153 has offset 0).

The definition of A016153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n-4^n)/5` (program `A016153.P1977689316804805999`, by `A016153.P1977689316804805999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016153.P16641770497363213505

`13*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016153

/-- `13*a(n-1)-36*a(n-2)` -/
def P16641770497363213505.Spec : Prop :=
  ∀ n, P16641770497363213505.a n = A016153 n

theorem P16641770497363213505.correct : P16641770497363213505.Spec := by
  intro n
  simp only [A016153]

end A016153

/-! ## A016153.P14556308368945138064

`A015441(2*n)`
-/

namespace A016153.P14556308368945138064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n)

end

end A016153.P14556308368945138064

namespace A016153

/-- `A015441(2*n)` -/
def P14556308368945138064.Spec : Prop :=
  ∀ n, P14556308368945138064.a n = A016153 n

end A016153

/-! ## A016153.P1977689316804805999

`(9^n-4^n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A016153.P1977689316804805999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 5

end

end A016153.P1977689316804805999

namespace A016153

/-- `(9^n-4^n)/5` -/
def P1977689316804805999.Spec : Prop :=
  ∀ n, P1977689316804805999.a n = (A016153 n : ℚ)

theorem P1977689316804805999.correct : P1977689316804805999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016153, Nat.add_sub_cancel, A016153.P1977689316804805999.a, A016153.P16641770497363213505.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016153, Nat.add_sub_cancel, A016153.P1977689316804805999.a, A016153.P16641770497363213505.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016153

/-! ## A016153.P3808676273227761092

`4^(n-1)+9*a(n-1)` with `a(0)=0`
-/

namespace A016153.P3808676273227761092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 9 * a (n - 1)

end

end A016153.P3808676273227761092

namespace A016153

/-- `4^(n-1)+9*a(n-1)` -/
def P3808676273227761092.Spec : Prop :=
  ∀ n, P3808676273227761092.a n = (A016153 n : ℚ)

end A016153

/-! ## A016153.P12229819555294877711

`A167910(2*n)`
-/

namespace A016153.P12229819555294877711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * n)

end

end A016153.P12229819555294877711

namespace A016153

/-- `A167910(2*n)` -/
def P12229819555294877711.Spec : Prop :=
  ∀ n, P12229819555294877711.a n = A016153 n

end A016153

/-! ## A016153.P10724280832302762545

`record[-A091005(n)]`
-/

namespace A016153.P10724280832302762545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A091005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016153.P10724280832302762545

namespace A016153

/-- `record[-A091005(n)]` -/
def P10724280832302762545.Spec : Prop :=
  ∀ n, P10724280832302762545.a n = A016153 n

end A016153

/-! ## A016153.P361732721849722227

`abs(A091005(Δ[n²]))`
-/

namespace A016153.P361732721849722227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A016153.P361732721849722227

namespace A016153

/-- `abs(A091005(Δ[n²]))` -/
def P361732721849722227.Spec : Prop :=
  ∀ n, P361732721849722227.a n = A016153 n

end A016153

/-! ## A016153.P11649246948054484345

`record[A015441(A014681(n))]`
-/

namespace A016153.P11649246948054484345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016153.P11649246948054484345

namespace A016153

/-- `record[A015441(A014681(n))]` -/
def P11649246948054484345.Spec : Prop :=
  ∀ n, P11649246948054484345.a n = A016153 n

end A016153

/-! ## A016153.P2522054150514758400

`lcm(A015441(n), A087451(n))`
-/

namespace A016153.P2522054150514758400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015441 n) (A087451 n)

end

end A016153.P2522054150514758400

namespace A016153

/-- `lcm(A015441(n), A087451(n))` -/
def P2522054150514758400.Spec : Prop :=
  ∀ n, (P2522054150514758400.a n : ℤ) = A016153 n

end A016153

/-! ## A016153.P18327803491655014387

`2*A015577(n)-A015521(n)`
-/

namespace A016153.P18327803491655014387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015577 n - A015521 n

end

end A016153.P18327803491655014387

namespace A016153

/-- `2*A015577(n)-A015521(n)` -/
def P18327803491655014387.Spec : Prop :=
  ∀ n, P18327803491655014387.a n = A016153 n

end A016153

/-! ## A016153.P5124035126383412471

`A096951(n)-A102901(2*n)`
-/

namespace A016153.P5124035126383412471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096951 n - A102901 (2 * n)

end

end A016153.P5124035126383412471

namespace A016153

/-- `A096951(n)-A102901(2*n)` -/
def P5124035126383412471.Spec : Prop :=
  ∀ n, P5124035126383412471.a n = A016153 n

end A016153

/-! ## A016153.P18300071382864794108

`A232015(2*n)-A122803(n)²`
-/

namespace A016153.P18300071382864794108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n) - A122803 n ^ 2

end

end A016153.P18300071382864794108

namespace A016153

/-- `A232015(2*n)-A122803(n)²` -/
def P18300071382864794108.Spec : Prop :=
  ∀ n, P18300071382864794108.a n = A016153 n

end A016153

/-! ## A016153.P15180742149509957001

`record[gcd(A167910(n+1), A167910(n))]`
-/

namespace A016153.P15180742149509957001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167910 (n + 1)) (A167910 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016153.P15180742149509957001

namespace A016153

/-- `record[gcd(A167910(n+1), A167910(n))]` -/
def P15180742149509957001.Spec : Prop :=
  ∀ n, (P15180742149509957001.a n : ℤ) = A016153 n

end A016153

/-! ## A016153.P13681792950416990366

`∑[A102901(n)]²-A102901(n)²`
-/

namespace A016153.P13681792950416990366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A102901 n ^ 2

end

end A016153.P13681792950416990366

namespace A016153

/-- `∑[A102901(n)]²-A102901(n)²` -/
def P13681792950416990366.Spec : Prop :=
  ∀ n, P13681792950416990366.a n = A016153 n

end A016153

/-! ## A016153.P2052012321338280746

`A091002(2*n)+A091001(2*n)`
-/

namespace A016153.P2052012321338280746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (2 * n) + A091001 (2 * n)

end

end A016153.P2052012321338280746

namespace A016153

/-- `A091002(2*n)+A091001(2*n)` -/
def P2052012321338280746.Spec : Prop :=
  ∀ n, P2052012321338280746.a n = A016153 n

end A016153

/-! ## A016153.P11634144989081353641

`A232015(2*n)-A099430(2*n)`
-/

namespace A016153.P11634144989081353641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n) - A099430 (2 * n)

end

end A016153.P11634144989081353641

namespace A016153

/-- `A232015(2*n)-A099430(2*n)` -/
def P11634144989081353641.Spec : Prop :=
  ∀ n, P11634144989081353641.a n = A016153 n

end A016153

/-! ## A016153.P16603691255647529437

`A102901(2*n)-A232015(2*n)`
-/

namespace A016153.P16603691255647529437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 (2 * n) - A232015 (2 * n)

end

end A016153.P16603691255647529437

namespace A016153

/-- `A102901(2*n)-A232015(2*n)` -/
def P16603691255647529437.Spec : Prop :=
  ∀ n, P16603691255647529437.a n = A016153 n

end A016153

/-! ## A016153.P3956435637299654338

`A232015(2*n)-A122803(2*n)`
-/

namespace A016153.P3956435637299654338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n) - A122803 (2 * n)

end

end A016153.P3956435637299654338

namespace A016153

/-- `A232015(2*n)-A122803(2*n)` -/
def P3956435637299654338.Spec : Prop :=
  ∀ n, P3956435637299654338.a n = A016153 n

end A016153

/-! ## A016153.P3059586250026736649

`A000038(n+1)-A091005(2*n+1)`
-/

namespace A016153.P3059586250026736649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A091005 (2 * n + 1)

end

end A016153.P3059586250026736649

namespace A016153

/-- `A000038(n+1)-A091005(2*n+1)` -/
def P3059586250026736649.Spec : Prop :=
  ∀ n, P3059586250026736649.a n = A016153 n

end A016153

/-! ## A016153.P14323773208285188238

`A091002(2*n+1)-A091002(2*n)`
-/

namespace A016153.P14323773208285188238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (2 * n + 1) - A091002 (2 * n)

end

end A016153.P14323773208285188238

namespace A016153

/-- `A091002(2*n+1)-A091002(2*n)` -/
def P14323773208285188238.Spec : Prop :=
  ∀ n, P14323773208285188238.a n = A016153 n

end A016153

/-!
# A016155: Inverse of 2146th cyclotomic polynomial.

The programs for A016155, there is no canonical definition to state claims against.
-/

/-! ## A016155.P11188970047978236331

`A015082(n)*A033999(n)`
-/

namespace A016155.P11188970047978236331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A033999 n

end

end A016155.P11188970047978236331

/-! ## A016155.P2342200153073973940

`A010815(A153679(n+1)-A109613(n))`
-/

namespace A016155.P2342200153073973940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A153679 (n + 1) - A109613 n).toNat

end

end A016155.P2342200153073973940

/-! ## A016155.P10505097619671333199

`A033999(A000290(3*n+4))%A239896(n+2)`
-/

namespace A016155.P10505097619671333199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033999 (A000290 (3 * n + 4)).toNat) (A239896 (n + 2))

end

end A016155.P10505097619671333199

/-!
# A016156: Inverse of 2147th cyclotomic polynomial.

The programs for A016156, there is no canonical definition to state claims against.
-/

/-! ## A016156.P6028357803915320125

`C(2, A262669(A000700(n)))`
-/

namespace A016156.P6028357803915320125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A262669 (A000700 n).toNat).toNat

end

end A016156.P6028357803915320125

/-! ## A016156.P2203575458898893491

`C(2, A289207(A308977(n)))`
-/

namespace A016156.P2203575458898893491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A289207 (A308977 n).toNat).toNat

end

end A016156.P2203575458898893491

/-! ## A016156.P17977637176101525074

`A250120(A071809(n+5))%2`
-/

namespace A016156.P17977637176101525074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A071809 (n + 5)).toNat) 2

end

end A016156.P17977637176101525074

/-! ## A016156.P4683931558895438019

`A000007(floor(Δ[A000009(n)]/10))`
-/

namespace A016156.P4683931558895438019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(f1 (n + 1) - f1 n : ℚ) / 10⌋.toNat

end

end A016156.P4683931558895438019

/-! ## A016156.P12114658456366675682

`C(n+1, A178334(A253170(n+1))+n)`
-/

namespace A016156.P12114658456366675682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A178334 (A253170 (n + 1)).toNat + (n : ℤ)).toNat

end

end A016156.P12114658456366675682

/-! ## A016156.P9618117335701463287

`C(A001285(n), A130520(A195852(n)))`
-/

namespace A016156.P9618117335701463287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 n).toNat (A130520 (A195852 n).toNat).toNat

end

end A016156.P9618117335701463287

/-! ## A016156.P6432622205743609352

`C(A316826(n), A130520(A195852(n)))`
-/

namespace A016156.P6432622205743609352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A316826 n).toNat (A130520 (A195852 n).toNat).toNat

end

end A016156.P6432622205743609352

/-! ## A016156.P8516764056626968630

`C(A317189(n), A130520(A195852(n)))`
-/

namespace A016156.P8516764056626968630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A317189 n).toNat (A130520 (A195852 n).toNat).toNat

end

end A016156.P8516764056626968630

/-! ## A016156.P6919195773151753632

`C(A000010(A175782(n)), A175782(n+1))`
-/

namespace A016156.P6919195773151753632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A175782 n).toNat).toNat (A175782 (n + 1)).toNat

end

end A016156.P6919195773151753632

/-! ## A016156.P17089985997472879589

`C(A100063(n), A326542(n))`
-/

namespace A016156.P17089985997472879589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100063 n).toNat (A326542 n).toNat

end

end A016156.P17089985997472879589

/-! ## A016156.P11798599055500549707

`C(A210851(n), A005843(A326542(n)))`
-/

namespace A016156.P11798599055500549707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A210851 n).toNat (A005843 (A326542 n).toNat).toNat

end

end A016156.P11798599055500549707

/-! ## A016156.P16032787999674743536

`C(A035188(A000203(n+1)), A326542(n))`
-/

namespace A016156.P16032787999674743536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035188 (A000203 (n + 1)).toNat).toNat (A326542 n).toNat

end

end A016156.P16032787999674743536

/-! ## A016156.P17167868662929428334

`C(A072911(A290843(n+1)), A326542(n))`
-/

namespace A016156.P17167868662929428334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072911 (A290843 (n + 1)).toNat).toNat (A326542 n).toNat

end

end A016156.P17167868662929428334

/-! ## A016156.P3673411727281841987

`A353682(3^A236241(n+1)+2)`
-/

namespace A016156.P3673411727281841987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A236241 (n + 1) : ℤ) + 2)).toNat

end

end A016156.P3673411727281841987

/-! ## A016156.P12501466051522991991

`A094497(n)^A345166(A065033(n))`
-/

namespace A016156.P12501466051522991991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094497 n : ℚ) ^ (A345166 (A065033 n).toNat : ℤ)

end

end A016156.P12501466051522991991

/-! ## A016156.P6809778978188604843

`C(2, A326542(n+2))`
-/

namespace A016156.P6809778978188604843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326542 (n + 2)).toNat

end

end A016156.P6809778978188604843

/-!
# A016157: Expansion of g.f. 1/((1-4*x)*(1-10*x)).

The programs for A016157, the canonical program `A016157.P98442681734758247` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016157 has offset 0).

The definition of A016157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016157.P98442681734758247

`4*a(n-1)+10^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016157

/-- `4*a(n-1)+10^n` -/
def P98442681734758247.Spec : Prop :=
  ∀ n, (P98442681734758247.a n : ℤ) = A016157 n

theorem P98442681734758247.correct : P98442681734758247.Spec := by
  intro n
  simp only [A016157]

end A016157

/-! ## A016157.P8885346988822432038

`(5*10^n-2*4^n)/3`
-/

namespace A016157.P8885346988822432038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ n : ℤ) - (2 * 4 ^ n : ℤ) : ℚ) / 3

end

end A016157.P8885346988822432038

namespace A016157

/-- `(5*10^n-2*4^n)/3` -/
def P8885346988822432038.Spec : Prop :=
  ∀ n, P8885346988822432038.a n = (A016157 n : ℚ)

theorem P8885346988822432038.correct : P8885346988822432038.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016157, Nat.add_sub_cancel, A016157.P8885346988822432038.a, A016157.P98442681734758247.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016157, Nat.add_sub_cancel, A016157.P8885346988822432038.a, A016157.P98442681734758247.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016157

/-! ## A016157.P6709293701017898040

`10^n+a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A016157.P6709293701017898040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 ^ n : ℚ) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A016157.P6709293701017898040

namespace A016157

/-- `10^n+a(n-1)/(1/2)²` -/
def P6709293701017898040.Spec : Prop :=
  ∀ n, P6709293701017898040.a n = (A016157 n : ℚ)

end A016157

/-! ## A016157.P5654958241754517937

`A000079(n)*A016127(n)`
-/

namespace A016157.P5654958241754517937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016127 n

end

end A016157.P5654958241754517937

namespace A016157

/-- `A000079(n)*A016127(n)` -/
def P5654958241754517937.Spec : Prop :=
  ∀ n, P5654958241754517937.a n = A016157 n

end A016157

/-! ## A016157.P15815084797439182170

`lcm(A016127(n), A122803(n))`
-/

namespace A016157.P15815084797439182170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016127 n) (A122803 n)

end

end A016157.P15815084797439182170

namespace A016157

/-- `lcm(A016127(n), A122803(n))` -/
def P15815084797439182170.Spec : Prop :=
  ∀ n, (P15815084797439182170.a n : ℤ) = A016157 n

end A016157

/-! ## A016157.P2575928193503319057

`A016127(n)+A000225(n)*A016127(n)`
-/

namespace A016157.P2575928193503319057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n + A000225 n * A016127 n

end

end A016157.P2575928193503319057

namespace A016157

/-- `A016127(n)+A000225(n)*A016127(n)` -/
def P2575928193503319057.Spec : Prop :=
  ∀ n, P2575928193503319057.a n = A016157 n

end A016157

/-! ## A016157.P4778333396010297273

`A000051(n)*A016127(n)-A016127(n)`
-/

namespace A016157.P4778333396010297273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A016127 n - A016127 n

end

end A016157.P4778333396010297273

namespace A016157

/-- `A000051(n)*A016127(n)-A016127(n)` -/
def P4778333396010297273.Spec : Prop :=
  ∀ n, P4778333396010297273.a n = A016157 n

end A016157

/-! ## A016157.P17390236020299753166

`(A001045(n+1)+A001045(n))*A016127(n)`
-/

namespace A016157.P17390236020299753166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) + A001045 n) * A016127 n

end

end A016157.P17390236020299753166

namespace A016157

/-- `(A001045(n+1)+A001045(n))*A016127(n)` -/
def P17390236020299753166.Spec : Prop :=
  ∀ n, P17390236020299753166.a n = A016157 n

end A016157

/-!
# A016158: Expansion of g.f. 1/((1-4*x)*(1-11*x)).

The programs for A016158, the canonical program `A016158.P7127457054888100275` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016158 has offset 0).

The definition of A016158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016158.P7127457054888100275

`11*a(n-1)+4^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016158

/-- `11*a(n-1)+4^n` -/
def P7127457054888100275.Spec : Prop :=
  ∀ n, (P7127457054888100275.a n : ℤ) = A016158 n

theorem P7127457054888100275.correct : P7127457054888100275.Spec := by
  intro n
  simp only [A016158]

end A016158

/-! ## A016158.P2058707898738730056

`(11^(n+1)-2^(2*n+2))/7`
-/

namespace A016158.P2058707898738730056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (2 ^ (2 * n + 2) : ℤ) : ℚ) / 7

end

end A016158.P2058707898738730056

namespace A016158

/-- `(11^(n+1)-2^(2*n+2))/7` -/
def P2058707898738730056.Spec : Prop :=
  ∀ n, P2058707898738730056.a n = (A016158 n : ℚ)

end A016158

/-! ## A016158.P14777176223755930324

`lcm(2, 4^n)+lcm(11, a(n-1))` with `a(0)=1`
-/

namespace A016158.P14777176223755930324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (4 ^ n) + Nat.lcm 11 (a (n - 1))

end

end A016158.P14777176223755930324

namespace A016158

/-- `lcm(2, 4^n)+lcm(11, a(n-1))` -/
def P14777176223755930324.Spec : Prop :=
  ∀ n, (P14777176223755930324.a n : ℤ) = A016158 n

end A016158

/-! ## A016158.P6527825563583339577

`round(A139742(n+1)/7)`
-/

namespace A016158.P6527825563583339577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139742 (n + 1) : ℚ) / 7)

end

end A016158.P6527825563583339577

namespace A016158

/-- `round(A139742(n+1)/7)` -/
def P6527825563583339577.Spec : Prop :=
  ∀ n, P6527825563583339577.a n = A016158 n

end A016158

/-! ## A016158.P18160471704024662589

`round(A155632(n+1)/7)`
-/

namespace A016158.P18160471704024662589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155632 (n + 1) : ℚ) / 7)

end

end A016158.P18160471704024662589

namespace A016158

/-- `round(A155632(n+1)/7)` -/
def P18160471704024662589.Spec : Prop :=
  ∀ n, P18160471704024662589.a n = A016158 n

end A016158

/-! ## A016158.P15756001416529020282

`lcm(11, a(n-1))+A000079(n)²` with `a(0)=1`
-/

namespace A016158.P15756001416529020282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) + A000079 n ^ 2

end

end A016158.P15756001416529020282

namespace A016158

/-- `lcm(11, a(n-1))+A000079(n)²` -/
def P15756001416529020282.Spec : Prop :=
  ∀ n, P15756001416529020282.a n = A016158 n

end A016158

/-!
# A016159: Expansion of 1/((1-4*x)*(1-12*x)).

The programs for A016159, the canonical program `A016159.P14381278172682145649` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016159 has offset 0).

The definition of A016159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016159.P14381278172682145649

`12*a(n-1)+4^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016159

/-- `12*a(n-1)+4^n` -/
def P14381278172682145649.Spec : Prop :=
  ∀ n, (P14381278172682145649.a n : ℤ) = A016159 n

theorem P14381278172682145649.correct : P14381278172682145649.Spec := by
  intro n
  simp only [A016159]

end A016159

/-! ## A016159.P11278277920511780103

`2^(2*n-1)*(3^(n+1)-1)`
-/

namespace A016159.P11278277920511780103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) * ((3 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A016159.P11278277920511780103

namespace A016159

/-- `2^(2*n-1)*(3^(n+1)-1)` -/
def P11278277920511780103.Spec : Prop :=
  ∀ n, P11278277920511780103.a n = (A016159 n : ℚ)

end A016159

/-! ## A016159.P7934367439093742858

`A024036(n)+xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016159.P7934367439093742858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024036 n + Int.xor 1 (12 * a (n - 1))

end

end A016159.P7934367439093742858

namespace A016159

/-- `A024036(n)+xor(1, 12*a(n-1))` -/
def P7934367439093742858.Spec : Prop :=
  ∀ n, P7934367439093742858.a n = A016159 n

end A016159

/-! ## A016159.P10170672767380411636

`record[A048328(n+1)*A122803(n)]`
-/

namespace A016159.P10170672767380411636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (n + 1) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016159.P10170672767380411636

namespace A016159

/-- `record[A048328(n+1)*A122803(n)]` -/
def P10170672767380411636.Spec : Prop :=
  ∀ n, P10170672767380411636.a n = A016159 n

end A016159

/-! ## A016159.P11911496581135999684

`A016129(n)+A000225(n)*A016129(n)`
-/

namespace A016159.P11911496581135999684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n + A000225 n * A016129 n

end

end A016159.P11911496581135999684

namespace A016159

/-- `A016129(n)+A000225(n)*A016129(n)` -/
def P11911496581135999684.Spec : Prop :=
  ∀ n, P11911496581135999684.a n = A016159 n

end A016159

/-! ## A016159.P11233152170074521922

`A000051(n)*A016129(n)-A016129(n)`
-/

namespace A016159.P11233152170074521922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A016129 n - A016129 n

end

end A016159.P11233152170074521922

namespace A016159

/-- `A000051(n)*A016129(n)-A016129(n)` -/
def P11233152170074521922.Spec : Prop :=
  ∀ n, P11233152170074521922.a n = A016159 n

end A016159

/-! ## A016159.P12395877384687620547

`A000302(n)*A007051(n+1)-A000302(n)`
-/

namespace A016159.P12395877384687620547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A007051 (n + 1) - A000302 n

end

end A016159.P12395877384687620547

namespace A016159

/-- `A000302(n)*A007051(n+1)-A000302(n)` -/
def P12395877384687620547.Spec : Prop :=
  ∀ n, P12395877384687620547.a n = A016159 n

end A016159

/-! ## A016159.P4808886865461428706

`A002001(n+1)*A007051(n)-A004171(n)`
-/

namespace A016159.P4808886865461428706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 (n + 1) * A007051 n - A004171 n

end

end A016159.P4808886865461428706

namespace A016159

/-- `A002001(n+1)*A007051(n)-A004171(n)` -/
def P4808886865461428706.Spec : Prop :=
  ∀ n, P4808886865461428706.a n = A016159 n

end A016159

/-! ## A016159.P5535822995538327438

`A003462(n+1)+A003462(n+1)*A024036(n)`
-/

namespace A016159.P5535822995538327438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + A003462 (n + 1) * A024036 n

end

end A016159.P5535822995538327438

namespace A016159

/-- `A003462(n+1)+A003462(n+1)*A024036(n)` -/
def P5535822995538327438.Spec : Prop :=
  ∀ n, P5535822995538327438.a n = A016159 n

end A016159

/-! ## A016159.P6559270184209202880

`A016129(n)²/A003462(n+1)`
-/

namespace A016159.P6559270184209202880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016129 n ^ 2 : ℚ) / (A003462 (n + 1) : ℚ)

end

end A016159.P6559270184209202880

namespace A016159

/-- `A016129(n)²/A003462(n+1)` -/
def P6559270184209202880.Spec : Prop :=
  ∀ n, P6559270184209202880.a n = (A016159 n : ℚ)

end A016159

/-!
# A016161: Expansion of g.f. 1/((1-5*x)*(1-7*x)).

The programs for A016161, the canonical program `A016161.P15394518219996675423` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016161 has offset 0).

The definition of A016161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016161.P15394518219996675423

`7*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016161

/-- `7*a(n-1)+5^n` -/
def P15394518219996675423.Spec : Prop :=
  ∀ n, (P15394518219996675423.a n : ℤ) = A016161 n

theorem P15394518219996675423.correct : P15394518219996675423.Spec := by
  intro n
  simp only [A016161]

end A016161

/-! ## A016161.P15904908979846206951

`(7^(n+1)-5^(n+1))/2`
-/

namespace A016161.P15904908979846206951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2

end

end A016161.P15904908979846206951

namespace A016161

/-- `(7^(n+1)-5^(n+1))/2` -/
def P15904908979846206951.Spec : Prop :=
  ∀ n, P15904908979846206951.a n = (A016161 n : ℚ)

theorem P15904908979846206951.correct : P15904908979846206951.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016161, Nat.add_sub_cancel, A016161.P15904908979846206951.a, A016161.P15394518219996675423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016161, Nat.add_sub_cancel, A016161.P15904908979846206951.a, A016161.P15394518219996675423.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016161

/-! ## A016161.P15424085103020448995

`A081200(n+1)`
-/

namespace A016161.P15424085103020448995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 (n + 1)

end

end A016161.P15424085103020448995

namespace A016161

/-- `A081200(n+1)` -/
def P15424085103020448995.Spec : Prop :=
  ∀ n, P15424085103020448995.a n = A016161 n

end A016161

/-! ## A016161.P8229061596020595471

`lcm(5, a(n-1))+7^n` with `a(0)=1`
-/

namespace A016161.P8229061596020595471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 7 ^ n

end

end A016161.P8229061596020595471

namespace A016161

/-- `lcm(5, a(n-1))+7^n` -/
def P8229061596020595471.Spec : Prop :=
  ∀ n, (P8229061596020595471.a n : ℤ) = A016161 n

end A016161

/-! ## A016161.P9455981259338269994

`∑[abs(Δ[A081200(n)])]`
-/

namespace A016161.P9455981259338269994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016161.P9455981259338269994

namespace A016161

/-- `∑[abs(Δ[A081200(n)])]` -/
def P9455981259338269994.Spec : Prop :=
  ∀ n, P9455981259338269994.a n = A016161 n

end A016161

/-! ## A016161.P1643240264125528058

`record[A081200(abs(1-n))]`
-/

namespace A016161.P1643240264125528058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016161.P1643240264125528058

namespace A016161

/-- `record[A081200(abs(1-n))]` -/
def P1643240264125528058.Spec : Prop :=
  ∀ n, P1643240264125528058.a n = A016161 n

end A016161

/-! ## A016161.P11309135088549268018

`A081033(n)-a(n-1)` with `a(0)=1`
-/

namespace A016161.P11309135088549268018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081033 n - a (n - 1)

end

end A016161.P11309135088549268018

namespace A016161

/-- `A081033(n)-a(n-1)` -/
def P11309135088549268018.Spec : Prop :=
  ∀ n, P11309135088549268018.a n = A016161 n

end A016161

/-! ## A016161.P5722904813986883539

`A034494(n+1)-A034478(n+1)`
-/

namespace A016161.P5722904813986883539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (n + 1) - A034478 (n + 1)

end

end A016161.P5722904813986883539

namespace A016161

/-- `A034494(n+1)-A034478(n+1)` -/
def P5722904813986883539.Spec : Prop :=
  ∀ n, P5722904813986883539.a n = A016161 n

end A016161

/-! ## A016161.P14924746244849899142

`A120741(n+1)+1-A034478(n+1)`
-/

namespace A016161.P14924746244849899142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) + (1 - A034478 (n + 1))

end

end A016161.P14924746244849899142

namespace A016161

/-- `A120741(n+1)+1-A034478(n+1)` -/
def P14924746244849899142.Spec : Prop :=
  ∀ n, P14924746244849899142.a n = A016161 n

end A016161

/-!
# A016162: Expansion of 1/((1-5*x)*(1-8*x)).

The programs for A016162, the canonical program `A016162.P6293440392599841634` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016162 has offset 0).

The definition of A016162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016162.P6293440392599841634

`8*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016162

/-- `8*a(n-1)+5^n` -/
def P6293440392599841634.Spec : Prop :=
  ∀ n, (P6293440392599841634.a n : ℤ) = A016162 n

theorem P6293440392599841634.correct : P6293440392599841634.Spec := by
  intro n
  simp only [A016162]

end A016162

/-! ## A016162.P9099999658955570912

`(8^(n+1)-5^(n+1))/3`
-/

namespace A016162.P9099999658955570912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016162.P9099999658955570912

namespace A016162

/-- `(8^(n+1)-5^(n+1))/3` -/
def P9099999658955570912.Spec : Prop :=
  ∀ n, P9099999658955570912.a n = (A016162 n : ℚ)

theorem P9099999658955570912.correct : P9099999658955570912.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016162, Nat.add_sub_cancel, A016162.P9099999658955570912.a, A016162.P6293440392599841634.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016162, Nat.add_sub_cancel, A016162.P9099999658955570912.a, A016162.P6293440392599841634.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016162

/-! ## A016162.P17480524390589729637

`lcm(5, a(n-1))+8^n` with `a(0)=1`
-/

namespace A016162.P17480524390589729637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 8 ^ n

end

end A016162.P17480524390589729637

namespace A016162

/-- `lcm(5, a(n-1))+8^n` -/
def P17480524390589729637.Spec : Prop :=
  ∀ n, (P17480524390589729637.a n : ℤ) = A016162 n

end A016162

/-! ## A016162.P1602291361413141309

`∑[(8/5)^n]*A000351(n)`
-/

namespace A016162.P1602291361413141309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 : ℚ) / 5) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000351 n : ℚ)

end

end A016162.P1602291361413141309

namespace A016162

/-- `∑[(8/5)^n]*A000351(n)` -/
def P1602291361413141309.Spec : Prop :=
  ∀ n, P1602291361413141309.a n = (A016162 n : ℚ)

end A016162

/-! ## A016162.P2574573846876738536

`A001018(n)+lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A016162.P2574573846876738536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001018 n + (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A016162.P2574573846876738536

namespace A016162

/-- `A001018(n)+lcm(5, a(n-1))` -/
def P2574573846876738536.Spec : Prop :=
  ∀ n, P2574573846876738536.a n = A016162 n

end A016162

/-! ## A016162.P11723202849367002411

`2*A016131(n)-A016127(n)`
-/

namespace A016162.P11723202849367002411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016131 n - A016127 n

end

end A016162.P11723202849367002411

namespace A016162

/-- `2*A016131(n)-A016127(n)` -/
def P11723202849367002411.Spec : Prop :=
  ∀ n, P11723202849367002411.a n = A016162 n

end A016162

/-! ## A016162.P523010703744825346

`A000079(n+1)*A002450(n+1)-A016127(n)`
-/

namespace A016162.P523010703744825346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A002450 (n + 1) - A016127 n

end

end A016162.P523010703744825346

namespace A016162

/-- `A000079(n+1)*A002450(n+1)-A016127(n)` -/
def P523010703744825346.Spec : Prop :=
  ∀ n, P523010703744825346.a n = A016162 n

end A016162

/-!
# A016163: Expansion of 1/((1-5*x)*(1-9*x)).

The programs for A016163, the canonical program `A016163.P2998526495991273584` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016163 has offset 0).

The definition of A016163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016163.P2998526495991273584

`9*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016163

/-- `9*a(n-1)+5^n` -/
def P2998526495991273584.Spec : Prop :=
  ∀ n, (P2998526495991273584.a n : ℤ) = A016163 n

theorem P2998526495991273584.correct : P2998526495991273584.Spec := by
  intro n
  simp only [A016163]

end A016163

/-! ## A016163.P12998412689808089312

`(9^(n+1)-5^(n+1))/4`
-/

namespace A016163.P12998412689808089312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A016163.P12998412689808089312

namespace A016163

/-- `(9^(n+1)-5^(n+1))/4` -/
def P12998412689808089312.Spec : Prop :=
  ∀ n, P12998412689808089312.a n = (A016163 n : ℚ)

theorem P12998412689808089312.correct : P12998412689808089312.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016163, Nat.add_sub_cancel, A016163.P12998412689808089312.a, A016163.P2998526495991273584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016163, Nat.add_sub_cancel, A016163.P12998412689808089312.a, A016163.P2998526495991273584.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016163

/-! ## A016163.P3601239028244188871

`lcm(5, a(n-1))+9^n` with `a(0)=1`
-/

namespace A016163.P3601239028244188871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 9 ^ n

end

end A016163.P3601239028244188871

namespace A016163

/-- `lcm(5, a(n-1))+9^n` -/
def P3601239028244188871.Spec : Prop :=
  ∀ n, (P3601239028244188871.a n : ℤ) = A016163 n

end A016163

/-! ## A016163.P6023991333053243458

`A001019(n)+lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A016163.P6023991333053243458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001019 n + (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A016163.P6023991333053243458

namespace A016163

/-- `A001019(n)+lcm(5, a(n-1))` -/
def P6023991333053243458.Spec : Prop :=
  ∀ n, P6023991333053243458.a n = A016163 n

end A016163

/-! ## A016163.P2708461660687631171

`A211866(n+1)-A104891(n)`
-/

namespace A016163.P2708461660687631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211866 (n + 1) - A104891 n

end

end A016163.P2708461660687631171

namespace A016163

/-- `A211866(n+1)-A104891(n)` -/
def P2708461660687631171.Spec : Prop :=
  ∀ n, P2708461660687631171.a n = A016163 n

end A016163

/-! ## A016163.P7066494941393212326

`A003462(n+1)²-A007798(n+1)`
-/

namespace A016163.P7066494941393212326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) ^ 2 - A007798 (n + 1)

end

end A016163.P7066494941393212326

namespace A016163

/-- `A003462(n+1)²-A007798(n+1)` -/
def P7066494941393212326.Spec : Prop :=
  ∀ n, P7066494941393212326.a n = A016163 n

end A016163

/-! ## A016163.P12791126273065155982

`2*A002452(n+1)-A003463(n+1)`
-/

namespace A016163.P12791126273065155982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002452 (n + 1) - A003463 (n + 1)

end

end A016163.P12791126273065155982

namespace A016163

/-- `2*A002452(n+1)-A003463(n+1)` -/
def P12791126273065155982.Spec : Prop :=
  ∀ n, P12791126273065155982.a n = A016163 n

end A016163

/-! ## A016163.P14249371904931356503

`A191681(n+1)/2-A003463(n+1)`
-/

namespace A016163.P14249371904931356503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191681 (n + 1) : ℚ) / 2 - (A003463 (n + 1) : ℚ)

end

end A016163.P14249371904931356503

namespace A016163

/-- `A191681(n+1)/2-A003463(n+1)` -/
def P14249371904931356503.Spec : Prop :=
  ∀ n, P14249371904931356503.a n = (A016163 n : ℚ)

end A016163

/-!
# A016164: Expansion of 1/((1-5*x)*(1-10*x)).

The programs for A016164, the canonical program `A016164.P6397874879676796381` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016164 has offset 0).

The definition of A016164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016164.P6397874879676796381

`5^n*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016164

/-- `5^n*(2^(n+1)-1)` -/
def P6397874879676796381.Spec : Prop :=
  ∀ n, P6397874879676796381.a n = A016164 n

theorem P6397874879676796381.correct : P6397874879676796381.Spec := by
  intro n
  simp only [A016164]

end A016164

/-! ## A016164.P3072847674092127421

`A248340(n+1)/5`
-/

namespace A016164.P3072847674092127421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248340 (n + 1) : ℚ) / 5

end

end A016164.P3072847674092127421

namespace A016164

/-- `A248340(n+1)/5` -/
def P3072847674092127421.Spec : Prop :=
  ∀ n, P3072847674092127421.a n = (A016164 n : ℚ)

end A016164

/-! ## A016164.P6113040809935038276

`record[A156703(n+1)/5]`
-/

namespace A016164.P6113040809935038276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156703 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016164.P6113040809935038276

namespace A016164

/-- `record[A156703(n+1)/5]` -/
def P6113040809935038276.Spec : Prop :=
  ∀ n, P6113040809935038276.a n = (A016164 n : ℚ)

end A016164

/-! ## A016164.P17629076278849153757

`Δ[A002276(n)]-5^n`
-/

namespace A016164.P17629076278849153757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (5 ^ n : ℤ)

end

end A016164.P17629076278849153757

namespace A016164

/-- `Δ[A002276(n)]-5^n` -/
def P17629076278849153757.Spec : Prop :=
  ∀ n, P17629076278849153757.a n = A016164 n

end A016164

/-! ## A016164.P6499890124337504242

`2*10^n-A000351(n)`
-/

namespace A016164.P6499890124337504242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n : ℤ) - A000351 n

end

end A016164.P6499890124337504242

namespace A016164

/-- `2*10^n-A000351(n)` -/
def P6499890124337504242.Spec : Prop :=
  ∀ n, P6499890124337504242.a n = A016164 n

end A016164

/-! ## A016164.P15937400681013331661

`or(1, 5^n*A126646(n))`
-/

namespace A016164.P15937400681013331661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((5 ^ n : ℤ) * A126646 n)

end

end A016164.P15937400681013331661

namespace A016164

/-- `or(1, 5^n*A126646(n))` -/
def P15937400681013331661.Spec : Prop :=
  ∀ n, P15937400681013331661.a n = A016164 n

end A016164

/-! ## A016164.P12513495242305049109

`A093141(n+1)/2-5^n`
-/

namespace A016164.P12513495242305049109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093141 (n + 1) : ℚ) / 2 - (5 ^ n : ℚ)

end

end A016164.P12513495242305049109

namespace A016164

/-- `A093141(n+1)/2-5^n` -/
def P12513495242305049109.Spec : Prop :=
  ∀ n, P12513495242305049109.a n = (A016164 n : ℚ)

end A016164

/-! ## A016164.P8376232069656760673

`A011557(n)+10^n-5^n`
-/

namespace A016164.P8376232069656760673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + ((10 ^ n : ℤ) - (5 ^ n : ℤ))

end

end A016164.P8376232069656760673

namespace A016164

/-- `A011557(n)+10^n-5^n` -/
def P8376232069656760673.Spec : Prop :=
  ∀ n, P8376232069656760673.a n = A016164 n

end A016164

/-! ## A016164.P1852395201619118758

`A248340(n)+A011557(n)`
-/

namespace A016164.P1852395201619118758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248340 n + A011557 n

end

end A016164.P1852395201619118758

namespace A016164

/-- `A248340(n)+A011557(n)` -/
def P1852395201619118758.Spec : Prop :=
  ∀ n, P1852395201619118758.a n = A016164 n

end A016164

/-! ## A016164.P3920683529957783815

`A062397(n)+A248340(n)-1`
-/

namespace A016164.P3920683529957783815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n + (A248340 n - 1)

end

end A016164.P3920683529957783815

namespace A016164

/-- `A062397(n)+A248340(n)-1` -/
def P3920683529957783815.Spec : Prop :=
  ∀ n, P3920683529957783815.a n = A016164 n

end A016164

/-! ## A016164.P15700405518934086669

`Δ[2*A002275(n)-A003463(n)]`
-/

namespace A016164.P15700405518934086669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016164.P15700405518934086669

namespace A016164

/-- `Δ[2*A002275(n)-A003463(n)]` -/
def P15700405518934086669.Spec : Prop :=
  ∀ n, P15700405518934086669.a n = A016164 n

end A016164

/-! ## A016164.P12064562909210098509

`2*A004663(2*n)-A026383(2*n)`
-/

namespace A016164.P12064562909210098509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004663 (2 * n) - A026383 (2 * n)

end

end A016164.P12064562909210098509

namespace A016164

/-- `2*A004663(2*n)-A026383(2*n)` -/
def P12064562909210098509.Spec : Prop :=
  ∀ n, P12064562909210098509.a n = A016164 n

end A016164

/-! ## A016164.P11320307550321461215

`A000225(n+1)+A000225(n+1)*A024049(n)`
-/

namespace A016164.P11320307550321461215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000225 (n + 1) * A024049 n

end

end A016164.P11320307550321461215

namespace A016164

/-- `A000225(n+1)+A000225(n+1)*A024049(n)` -/
def P11320307550321461215.Spec : Prop :=
  ∀ n, P11320307550321461215.a n = A016164 n

end A016164

/-! ## A016164.P13606556345951958941

`A000225(n+1)*A034474(n)-A000225(n+1)`
-/

namespace A016164.P13606556345951958941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A034474 n - A000225 (n + 1)

end

end A016164.P13606556345951958941

namespace A016164

/-- `A000225(n+1)*A034474(n)-A000225(n+1)` -/
def P13606556345951958941.Spec : Prop :=
  ∀ n, P13606556345951958941.a n = A016164 n

end A016164

/-! ## A016164.P9476753330057790826

`A093136(n+1)-A093136(n+1)/A000079(n+1)`
-/

namespace A016164.P9476753330057790826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093136 (n + 1) : ℚ) - (A093136 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A016164.P9476753330057790826

namespace A016164

/-- `A093136(n+1)-A093136(n+1)/A000079(n+1)` -/
def P9476753330057790826.Spec : Prop :=
  ∀ n, P9476753330057790826.a n = (A016164 n : ℚ)

end A016164

/-! ## A016164.P18029673030449454544

`A016116(2*n)*A026383(2*n+1)-A026383(2*n)`
-/

namespace A016164.P18029673030449454544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A026383 (2 * n + 1) - A026383 (2 * n)

end

end A016164.P18029673030449454544

namespace A016164

/-- `A016116(2*n)*A026383(2*n+1)-A026383(2*n)` -/
def P18029673030449454544.Spec : Prop :=
  ∀ n, P18029673030449454544.a n = A016164 n

end A016164

/-! ## A016164.P2130623660178847224

`A004643(2*n+1)-A004643(2*n+1)/A000079(n+1)`
-/

namespace A016164.P2130623660178847224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004643 (2 * n + 1) : ℚ) - (A004643 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A016164.P2130623660178847224

namespace A016164

/-- `A004643(2*n+1)-A004643(2*n+1)/A000079(n+1)` -/
def P2130623660178847224.Spec : Prop :=
  ∀ n, P2130623660178847224.a n = (A016164 n : ℚ)

end A016164

/-!
# A016165: Expansion of 1/((1-5*x)*(1-11*x)).

The programs for A016165, the canonical program `A016165.P13434365768860381966` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016165 has offset 0).

The definition of A016165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016165.P13434365768860381966

`11*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016165

/-- `11*a(n-1)+5^n` -/
def P13434365768860381966.Spec : Prop :=
  ∀ n, (P13434365768860381966.a n : ℤ) = A016165 n

theorem P13434365768860381966.correct : P13434365768860381966.Spec := by
  intro n
  simp only [A016165]

end A016165

/-! ## A016165.P1114947933853120398

`(11^(n+1)-5^(n+1))/6`
-/

namespace A016165.P1114947933853120398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 6

end

end A016165.P1114947933853120398

namespace A016165

/-- `(11^(n+1)-5^(n+1))/6` -/
def P1114947933853120398.Spec : Prop :=
  ∀ n, P1114947933853120398.a n = (A016165 n : ℚ)

theorem P1114947933853120398.correct : P1114947933853120398.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016165, Nat.add_sub_cancel, A016165.P1114947933853120398.a, A016165.P13434365768860381966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016165, Nat.add_sub_cancel, A016165.P1114947933853120398.a, A016165.P13434365768860381966.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016165

/-! ## A016165.P15740683202846237920

`lcm(11, a(n-1))+5^n` with `a(0)=1`
-/

namespace A016165.P15740683202846237920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 5 ^ n

end

end A016165.P15740683202846237920

namespace A016165

/-- `lcm(11, a(n-1))+5^n` -/
def P15740683202846237920.Spec : Prop :=
  ∀ n, (P15740683202846237920.a n : ℤ) = A016165 n

end A016165

/-! ## A016165.P2708196769378488541

`2*A015592(n+1)-A015531(n+1)`
-/

namespace A016165.P2708196769378488541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015592 (n + 1) - A015531 (n + 1)

end

end A016165.P2708196769378488541

namespace A016165

/-- `2*A015592(n+1)-A015531(n+1)` -/
def P2708196769378488541.Spec : Prop :=
  ∀ n, P2708196769378488541.a n = A016165 n

end A016165

/-! ## A016165.P13201395439475528829

`Δ[∑[A139743(n)]/6]`
-/

namespace A016165.P13201395439475528829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139743 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016165.P13201395439475528829

namespace A016165

/-- `Δ[∑[A139743(n)]/6]` -/
def P13201395439475528829.Spec : Prop :=
  ∀ n, P13201395439475528829.a n = (A016165 n : ℚ)

end A016165

/-!
# A016166: Expansion of 1/((1-5*x)*(1-12*x)).

The programs for A016166, the canonical program `A016166.P13015572138639565557` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016166 has offset 0).

The definition of A016166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016166.P13015572138639565557

`12*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016166

/-- `12*a(n-1)+5^n` -/
def P13015572138639565557.Spec : Prop :=
  ∀ n, (P13015572138639565557.a n : ℤ) = A016166 n

theorem P13015572138639565557.correct : P13015572138639565557.Spec := by
  intro n
  simp only [A016166]

end A016166

/-! ## A016166.P16174524926296624981

`(12^(n+1)-5^(n+1))/7`
-/

namespace A016166.P16174524926296624981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 7

end

end A016166.P16174524926296624981

namespace A016166

/-- `(12^(n+1)-5^(n+1))/7` -/
def P16174524926296624981.Spec : Prop :=
  ∀ n, P16174524926296624981.a n = (A016166 n : ℚ)

theorem P16174524926296624981.correct : P16174524926296624981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016166, Nat.add_sub_cancel, A016166.P16174524926296624981.a, A016166.P13015572138639565557.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016166, Nat.add_sub_cancel, A016166.P16174524926296624981.a, A016166.P13015572138639565557.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016166

/-! ## A016166.P18109166178204645989

`A024049(n)+xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016166.P18109166178204645989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024049 n + Int.xor 1 (12 * a (n - 1))

end

end A016166.P18109166178204645989

namespace A016166

/-- `A024049(n)+xor(1, 12*a(n-1))` -/
def P18109166178204645989.Spec : Prop :=
  ∀ n, P18109166178204645989.a n = A016166 n

end A016166

/-! ## A016166.P8422633161631390284

`Δ[A003463(n)]+6*2*a(n-1)` with `a(0)=1`
-/

namespace A016166.P8422633161631390284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 6 * (2 * a (n - 1))

end

end A016166.P8422633161631390284

namespace A016166

/-- `Δ[A003463(n)]+6*2*a(n-1)` -/
def P8422633161631390284.Spec : Prop :=
  ∀ n, P8422633161631390284.a n = A016166 n

end A016166

/-! ## A016166.P4658751231312054080

`∑[A001021(n)/A000351(n)]*A000351(n)`
-/

namespace A016166.P4658751231312054080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n : ℚ) / (A000351 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000351 n : ℚ)

end

end A016166.P4658751231312054080

namespace A016166

/-- `∑[A001021(n)/A000351(n)]*A000351(n)` -/
def P4658751231312054080.Spec : Prop :=
  ∀ n, P4658751231312054080.a n = (A016166 n : ℚ)

end A016166

/-!
# A016167: Inverse of 2158th cyclotomic polynomial.

The programs for A016167, there is no canonical definition to state claims against.
-/

/-! ## A016167.P2007745282855091118

`(A004442(n)-n)*A015088(n)`
-/

namespace A016167.P2007745282855091118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A015088 n

end

end A016167.P2007745282855091118

/-!
# A016168: Inverse of 2159th cyclotomic polynomial.

The programs for A016168, the canonical program `A016168.P15478913577721105647` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016168 has offset 0).

The definition of A016168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A016168.P4179350082638440016

`A010060(∑[A010052(2*(n+1))]!)`
-/

namespace A016168.P4179350082638440016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A016168.P4179350082638440016

namespace A016168

/-- `A010060(∑[A010052(2*(n+1))]!)` -/
def P4179350082638440016.Spec : Prop :=
  ∀ n, P4179350082638440016.a n = A016168 n

end A016168

/-! ## A016168.P16023483709166257376

`C(A302690(2^val(n+1, 2)), A308977(n))`
-/

namespace A016168.P16023483709166257376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302690 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat (A308977 n).toNat

end

end A016168.P16023483709166257376

namespace A016168

/-- `C(A302690(2^val(n+1, 2)), A308977(n))` -/
def P16023483709166257376.Spec : Prop :=
  ∀ n, (P16023483709166257376.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P10109334956692095048

`floor(A136804(n+2)/A392650(2*n+3))`
-/

namespace A016168.P10109334956692095048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136804 (n + 2) : ℚ) / (A392650 (2 * n + 3) : ℚ)⌋

end

end A016168.P10109334956692095048

namespace A016168

/-- `floor(A136804(n+2)/A392650(2*n+3))` -/
def P10109334956692095048.Spec : Prop :=
  ∀ n, P10109334956692095048.a n = A016168 n

end A016168

/-! ## A016168.P16738376653639886938

`C(n, comp[A381433(A163714(2*n+1))-1])`
-/

namespace A016168.P16738376653639886938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (A163714 (2 * n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016168.P16738376653639886938

namespace A016168

/-- `C(n, comp[A381433(A163714(2*n+1))-1])` -/
def P16738376653639886938.Spec : Prop :=
  ∀ n, (P16738376653639886938.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P15478913577721105647

`A010054(∑[A079957((n+1)/∏{p}[n+1, #])])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A016168

/-- `A010054(∑[A079957((n+1)/∏{p}[n+1, #])])` -/
def P15478913577721105647.Spec : Prop :=
  ∀ n, P15478913577721105647.a n = A016168 n

theorem P15478913577721105647.correct : P15478913577721105647.Spec := by
  intro n
  simp only [A016168]

end A016168

/-! ## A016168.P6350694665476822775

`(2-A084630(A035668(n+4)))*a(n-1)` with `a(0)=1`
-/

namespace A016168.P6350694665476822775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - A084630 (A035668 (n + 4)).toNat) * a (n - 1)

end

end A016168.P6350694665476822775

namespace A016168

/-- `(2-A084630(A035668(n+4)))*a(n-1)` -/
def P6350694665476822775.Spec : Prop :=
  ∀ n, P6350694665476822775.a n = A016168 n

end A016168

/-! ## A016168.P15698244582431569716

`C(A174965(A018805(n+1)), A091194(n+1))`
-/

namespace A016168.P15698244582431569716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174965 (A018805 (n + 1)).toNat).toNat (A091194 (n + 1)).toNat

end

end A016168.P15698244582431569716

namespace A016168

/-- `C(A174965(A018805(n+1)), A091194(n+1))` -/
def P15698244582431569716.Spec : Prop :=
  ∀ n, (P15698244582431569716.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P13271080810962771249

`C(A089009(n+1), A089009(A242031(n+1)))`
-/

namespace A016168.P13271080810962771249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089009 (n + 1)).toNat (A089009 (A242031 (n + 1)).toNat).toNat

end

end A016168.P13271080810962771249

namespace A016168

/-- `C(A089009(n+1), A089009(A242031(n+1)))` -/
def P13271080810962771249.Spec : Prop :=
  ∀ n, (P13271080810962771249.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P13129127115893106556

`C(A007953(A046074(2*n+3)), A046074(2*n+3))`
-/

namespace A016168.P13129127115893106556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007953 (A046074 (2 * n + 3)).toNat).toNat (A046074 (2 * n + 3)).toNat

end

end A016168.P13129127115893106556

namespace A016168

/-- `C(A007953(A046074(2*n+3)), A046074(2*n+3))` -/
def P13129127115893106556.Spec : Prop :=
  ∀ n, (P13129127115893106556.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P456447879651316132

`C(A174965(A065727(n+1)), A091194(n+1))`
-/

namespace A016168.P456447879651316132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174965 (A065727 (n + 1)).toNat).toNat (A091194 (n + 1)).toNat

end

end A016168.P456447879651316132

namespace A016168

/-- `C(A174965(A065727(n+1)), A091194(n+1))` -/
def P456447879651316132.Spec : Prop :=
  ∀ n, (P456447879651316132.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P1421224144502748437

`floor(1/(n+1))^∑[A230571(n+1)]`
-/

namespace A016168.P1421224144502748437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A016168.P1421224144502748437

namespace A016168

/-- `floor(1/(n+1))^∑[A230571(n+1)]` -/
def P1421224144502748437.Spec : Prop :=
  ∀ n, P1421224144502748437.a n = (A016168 n : ℚ)

end A016168

/-! ## A016168.P4039814409825219438

`A059048(comp[A117968(n+4)]-n)`
-/

namespace A016168.P4039814409825219438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059048 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A016168.P4039814409825219438

namespace A016168

/-- `A059048(comp[A117968(n+4)]-n)` -/
def P4039814409825219438.Spec : Prop :=
  ∀ n, P4039814409825219438.a n = A016168 n

end A016168

/-! ## A016168.P18318537001911373007

`A389449(2*A025521(n+5)+1)`
-/

namespace A016168.P18318537001911373007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389449 (2 * A025521 (n + 5) + 1).toNat

end

end A016168.P18318537001911373007

namespace A016168

/-- `A389449(2*A025521(n+5)+1)` -/
def P18318537001911373007.Spec : Prop :=
  ∀ n, P18318537001911373007.a n = A016168 n

end A016168

/-! ## A016168.P907403794020516720

`round(1/A034887(A000700(n+3)))`
-/

namespace A016168.P907403794020516720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A034887 (A000700 (n + 3)).toNat : ℚ))

end

end A016168.P907403794020516720

namespace A016168

/-- `round(1/A034887(A000700(n+3)))` -/
def P907403794020516720.Spec : Prop :=
  ∀ n, P907403794020516720.a n = A016168 n

end A016168

/-! ## A016168.P15937959320762131300

`A359550(C(A245716(n+1), A326458(n)))`
-/

namespace A016168.P15937959320762131300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (Nat.choose (A245716 (n + 1)).toNat (A326458 n).toNat)

end

end A016168.P15937959320762131300

namespace A016168

/-- `A359550(C(A245716(n+1), A326458(n)))` -/
def P15937959320762131300.Spec : Prop :=
  ∀ n, P15937959320762131300.a n = A016168 n

end A016168

/-! ## A016168.P7045820330326103616

`C(A281116(A065515(n+2)), A326458(n))`
-/

namespace A016168.P7045820330326103616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281116 (A065515 (n + 2)).toNat).toNat (A326458 n).toNat

end

end A016168.P7045820330326103616

namespace A016168

/-- `C(A281116(A065515(n+2)), A326458(n))` -/
def P7045820330326103616.Spec : Prop :=
  ∀ n, (P7045820330326103616.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P1619686566575521678

`C(A281116(A100006(n+5)), A326458(n))`
-/

namespace A016168.P1619686566575521678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281116 (A100006 (n + 5)).toNat).toNat (A326458 n).toNat

end

end A016168.P1619686566575521678

namespace A016168

/-- `C(A281116(A100006(n+5)), A326458(n))` -/
def P1619686566575521678.Spec : Prop :=
  ∀ n, (P1619686566575521678.a n : ℤ) = A016168 n

end A016168

/-! ## A016168.P2723025909138912192

`A115944(A000170(ceil(sqrt(n))))`
-/

namespace A016168.P2723025909138912192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115944 (A000170 ⌈Real.sqrt (n : ℝ)⌉.toNat).toNat

end

end A016168.P2723025909138912192

namespace A016168

/-- `A115944(A000170(ceil(sqrt(n))))` -/
def P2723025909138912192.Spec : Prop :=
  ∀ n, P2723025909138912192.a n = A016168 n

end A016168

/-! ## A016168.P5465416593073343253

`A121373(∏[A330751(2*n+1)])²`
-/

namespace A016168.P5465416593073343253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330751 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∏ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A016168.P5465416593073343253

namespace A016168

/-- `A121373(∏[A330751(2*n+1)])²` -/
def P5465416593073343253.Spec : Prop :=
  ∀ n, P5465416593073343253.a n = A016168 n

end A016168

/-!
# A016169: a(n) = 7^n - 6^n.

The programs for A016169, the canonical program `A016169.P17767092086917867481` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016169 has offset 0).

The definition of A016169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-6^n` (program `A016169.P17767092086917867481`, by `A016169.P17767092086917867481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016169.P17767092086917867481

`7^n-6^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016169

/-- `7^n-6^n` -/
def P17767092086917867481.Spec : Prop :=
  ∀ n, P17767092086917867481.a n = A016169 n

theorem P17767092086917867481.correct : P17767092086917867481.Spec := by
  intro n
  simp only [A016169]

end A016169

/-! ## A016169.P16533705541784816156

`abs(1-A155650(n))`
-/

namespace A016169.P16533705541784816156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155650 n|

end

end A016169.P16533705541784816156

namespace A016169

/-- `abs(1-A155650(n))` -/
def P16533705541784816156.Spec : Prop :=
  ∀ n, P16533705541784816156.a n = A016169 n

end A016169

/-! ## A016169.P11563263901142827558

`abs(A000400(n)-A000420(n))`
-/

namespace A016169.P11563263901142827558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000400 n - A000420 n|

end

end A016169.P11563263901142827558

namespace A016169

/-- `abs(A000400(n)-A000420(n))` -/
def P11563263901142827558.Spec : Prop :=
  ∀ n, P11563263901142827558.a n = A016169 n

end A016169

/-! ## A016169.P963276527975079181

`abs(A024062(n)-A024075(n))`
-/

namespace A016169.P963276527975079181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024062 n - A024075 n|

end

end A016169.P963276527975079181

namespace A016169

/-- `abs(A024062(n)-A024075(n))` -/
def P963276527975079181.Spec : Prop :=
  ∀ n, P963276527975079181.a n = A016169 n

end A016169

/-! ## A016169.P18311404646628419342

`abs(A024063(n)-A024076(n))`
-/

namespace A016169.P18311404646628419342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024063 n - A024076 n|

end

end A016169.P18311404646628419342

namespace A016169

/-- `abs(A024063(n)-A024076(n))` -/
def P18311404646628419342.Spec : Prop :=
  ∀ n, P18311404646628419342.a n = A016169 n

end A016169

/-! ## A016169.P18359169847418139343

`abs(A001579(n)-A074552(n))`
-/

namespace A016169.P18359169847418139343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - A074552 n|

end

end A016169.P18359169847418139343

namespace A016169

/-- `abs(A001579(n)-A074552(n))` -/
def P18359169847418139343.Spec : Prop :=
  ∀ n, P18359169847418139343.a n = A016169 n

end A016169

/-! ## A016169.P12053938623676903337

`abs(A034491(n)-A062394(n))`
-/

namespace A016169.P12053938623676903337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A062394 n|

end

end A016169.P12053938623676903337

namespace A016169

/-- `abs(A034491(n)-A062394(n))` -/
def P12053938623676903337.Spec : Prop :=
  ∀ n, P12053938623676903337.a n = A016169 n

end A016169

/-! ## A016169.P7356056061408487930

`abs(A074533(n)-A074534(n))`
-/

namespace A016169.P7356056061408487930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074533 n - A074534 n|

end

end A016169.P7356056061408487930

namespace A016169

/-- `abs(A074533(n)-A074534(n))` -/
def P7356056061408487930.Spec : Prop :=
  ∀ n, P7356056061408487930.a n = A016169 n

end A016169

/-! ## A016169.P12581493837612994698

`abs(A155633(n)-A155634(n))`
-/

namespace A016169.P12581493837612994698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155633 n - A155634 n|

end

end A016169.P12581493837612994698

namespace A016169

/-- `abs(A155633(n)-A155634(n))` -/
def P12581493837612994698.Spec : Prop :=
  ∀ n, P12581493837612994698.a n = A016169 n

end A016169

/-! ## A016169.P10775505805997399226

`abs(A155639(n)-A155640(n))`
-/

namespace A016169.P10775505805997399226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155639 n - A155640 n|

end

end A016169.P10775505805997399226

namespace A016169

/-- `abs(A155639(n)-A155640(n))` -/
def P10775505805997399226.Spec : Prop :=
  ∀ n, P10775505805997399226.a n = A016169 n

end A016169

/-! ## A016169.P6381022016389577007

`∑[A055272(n)-A052934(n)]`
-/

namespace A016169.P6381022016389577007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016169.P6381022016389577007

namespace A016169

/-- `∑[A055272(n)-A052934(n)]` -/
def P6381022016389577007.Spec : Prop :=
  ∀ n, P6381022016389577007.a n = A016169 n

end A016169

/-! ## A016169.P15511750437718207176

`Δ[A023000(n)-A003464(n)]`
-/

namespace A016169.P15511750437718207176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016169.P15511750437718207176

namespace A016169

/-- `Δ[A023000(n)-A003464(n)]` -/
def P15511750437718207176.Spec : Prop :=
  ∀ n, P15511750437718207176.a n = A016169 n

end A016169

/-! ## A016169.P5549989298798640153

`Δ[A047852(n)-A047851(n)]`
-/

namespace A016169.P5549989298798640153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016169.P5549989298798640153

namespace A016169

/-- `Δ[A047852(n)-A047851(n)]` -/
def P5549989298798640153.Spec : Prop :=
  ∀ n, P5549989298798640153.a n = A016169 n

end A016169

/-! ## A016169.P12222440417429100004

`∑[A257287(n)]%A257287(n)`
-/

namespace A016169.P12222440417429100004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A257287 n)

end

end A016169.P12222440417429100004

namespace A016169

/-- `∑[A257287(n)]%A257287(n)` -/
def P12222440417429100004.Spec : Prop :=
  ∀ n, P12222440417429100004.a n = A016169 n

end A016169

/-! ## A016169.P7054726401348031804

`A109808(n+1)%A074619(n)`
-/

namespace A016169.P7054726401348031804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109808 (n + 1)) (A074619 n)

end

end A016169.P7054726401348031804

namespace A016169

/-- `A109808(n+1)%A074619(n)` -/
def P7054726401348031804.Spec : Prop :=
  ∀ n, P7054726401348031804.a n = A016169 n

end A016169

/-! ## A016169.P8904100586377620133

`Δ[A125725(n+1)/2-A003464(n)]`
-/

namespace A016169.P8904100586377620133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125725 (n + 1) : ℚ) / 2 - (A003464 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016169.P8904100586377620133

namespace A016169

/-- `Δ[A125725(n+1)/2-A003464(n)]` -/
def P8904100586377620133.Spec : Prop :=
  ∀ n, P8904100586377620133.a n = (A016169 n : ℚ)

end A016169

/-! ## A016169.P18021949715117598702

`Δ[A125725(n+1)/2-A047851(n)]`
-/

namespace A016169.P18021949715117598702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125725 (n + 1) : ℚ) / 2 - (A047851 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016169.P18021949715117598702

namespace A016169

/-- `Δ[A125725(n+1)/2-A047851(n)]` -/
def P18021949715117598702.Spec : Prop :=
  ∀ n, P18021949715117598702.a n = (A016169 n : ℚ)

end A016169

/-! ## A016169.P1967654881082657629

`A155655(n)%A155646(n)`
-/

namespace A016169.P1967654881082657629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155655 n) (A155646 n)

end

end A016169.P1967654881082657629

namespace A016169

/-- `A155655(n)%A155646(n)` -/
def P1967654881082657629.Spec : Prop :=
  ∀ n, P1967654881082657629.a n = A016169 n

end A016169

/-!
# A016170: Expansion of 1/((1-6*x)*(1-8*x)).

The programs for A016170, the canonical program `A016170.P3443833864965805153` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016170 has offset 0).

The definition of A016170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016170.P3443833864965805153

`4*8^n-3*6^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016170

/-- `4*8^n-3*6^n` -/
def P3443833864965805153.Spec : Prop :=
  ∀ n, P3443833864965805153.a n = A016170 n

theorem P3443833864965805153.correct : P3443833864965805153.Spec := by
  intro n
  simp only [A016170]

end A016170

/-! ## A016170.P3872348677921209653

`A081201(n+1)`
-/

namespace A016170.P3872348677921209653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 (n + 1)

end

end A016170.P3872348677921209653

namespace A016170

/-- `A081201(n+1)` -/
def P3872348677921209653.Spec : Prop :=
  ∀ n, P3872348677921209653.a n = A016170 n

end A016170

/-! ## A016170.P13747316091433451970

`∑[abs(Δ[A081201(n)])]`
-/

namespace A016170.P13747316091433451970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016170.P13747316091433451970

namespace A016170

/-- `∑[abs(Δ[A081201(n)])]` -/
def P13747316091433451970.Spec : Prop :=
  ∀ n, P13747316091433451970.a n = A016170 n

end A016170

/-! ## A016170.P2507756260787106348

`record[A081201(abs(1-n))]`
-/

namespace A016170.P2507756260787106348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016170.P2507756260787106348

namespace A016170

/-- `record[A081201(abs(1-n))]` -/
def P2507756260787106348.Spec : Prop :=
  ∀ n, P2507756260787106348.a n = A016170 n

end A016170

/-! ## A016170.P8312820600884784079

`2^n*∑[A255463(n)]`
-/

namespace A016170.P8312820600884784079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016170.P8312820600884784079

namespace A016170

/-- `2^n*∑[A255463(n)]` -/
def P8312820600884784079.Spec : Prop :=
  ∀ n, P8312820600884784079.a n = A016170 n

end A016170

/-! ## A016170.P3873436252257183130

`2^n*A005061(n+1)`
-/

namespace A016170.P3873436252257183130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005061 (n + 1)

end

end A016170.P3873436252257183130

namespace A016170

/-- `2^n*A005061(n+1)` -/
def P3873436252257183130.Spec : Prop :=
  ∀ n, P3873436252257183130.a n = A016170 n

end A016170

/-! ## A016170.P12889155737998147775

`(A155609(n+1)-1)*2^n`
-/

namespace A016170.P12889155737998147775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155609 (n + 1) - 1) * (2 ^ n : ℤ)

end

end A016170.P12889155737998147775

namespace A016170

/-- `(A155609(n+1)-1)*2^n` -/
def P12889155737998147775.Spec : Prop :=
  ∀ n, P12889155737998147775.a n = A016170 n

end A016170

/-! ## A016170.P1858459780462379251

`2^(n-2)*A145544(n+1)`
-/

namespace A016170.P1858459780462379251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A145544 (n + 1) : ℚ)

end

end A016170.P1858459780462379251

namespace A016170

/-- `2^(n-2)*A145544(n+1)` -/
def P1858459780462379251.Spec : Prop :=
  ∀ n, P1858459780462379251.a n = (A016170 n : ℚ)

end A016170

/-! ## A016170.P9070114329764887806

`∑[A255463(n)]*A000079(n)`
-/

namespace A016170.P9070114329764887806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A016170.P9070114329764887806

namespace A016170

/-- `∑[A255463(n)]*A000079(n)` -/
def P9070114329764887806.Spec : Prop :=
  ∀ n, P9070114329764887806.a n = A016170 n

end A016170

/-! ## A016170.P8924997977867236035

`Δ[A162725(n+1)]*A000079(n)`
-/

namespace A016170.P8924997977867236035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A016170.P8924997977867236035

namespace A016170

/-- `Δ[A162725(n+1)]*A000079(n)` -/
def P8924997977867236035.Spec : Prop :=
  ∀ n, P8924997977867236035.a n = A016170 n

end A016170

/-! ## A016170.P10535965779482109237

`∑[A255463(n)/3]*A007283(n)`
-/

namespace A016170.P10535965779482109237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007283 n : ℚ)

end

end A016170.P10535965779482109237

namespace A016170

/-- `∑[A255463(n)/3]*A007283(n)` -/
def P10535965779482109237.Spec : Prop :=
  ∀ n, P10535965779482109237.a n = (A016170 n : ℚ)

end A016170

/-! ## A016170.P9677754634824621946

`A005061(n+1)*A011782(n+1)`
-/

namespace A016170.P9677754634824621946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A011782 (n + 1)

end

end A016170.P9677754634824621946

namespace A016170

/-- `A005061(n+1)*A011782(n+1)` -/
def P9677754634824621946.Spec : Prop :=
  ∀ n, P9677754634824621946.a n = A016170 n

end A016170

/-! ## A016170.P12045332203371324289

`A005061(n+1)*A152166(2*n)`
-/

namespace A016170.P12045332203371324289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A152166 (2 * n)

end

end A016170.P12045332203371324289

namespace A016170

/-- `A005061(n+1)*A152166(2*n)` -/
def P12045332203371324289.Spec : Prop :=
  ∀ n, P12045332203371324289.a n = A016170 n

end A016170

/-! ## A016170.P1767905768540404603

`A005061(n+1)/2*A155559(n+1)`
-/

namespace A016170.P1767905768540404603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005061 (n + 1) : ℚ) / 2 * (A155559 (n + 1) : ℚ)

end

end A016170.P1767905768540404603

namespace A016170

/-- `A005061(n+1)/2*A155559(n+1)` -/
def P1767905768540404603.Spec : Prop :=
  ∀ n, P1767905768540404603.a n = (A016170 n : ℚ)

end A016170

/-! ## A016170.P16441175153968320240

`A005061(n+1)/2*A171449(n+1)`
-/

namespace A016170.P16441175153968320240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005061 (n + 1) : ℚ) / 2 * (A171449 (n + 1) : ℚ)

end

end A016170.P16441175153968320240

namespace A016170

/-- `A005061(n+1)/2*A171449(n+1)` -/
def P16441175153968320240.Spec : Prop :=
  ∀ n, P16441175153968320240.a n = (A016170 n : ℚ)

end A016170

/-! ## A016170.P4201047862751240258

`A005061(n+1)/2*A171559(n+1)`
-/

namespace A016170.P4201047862751240258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005061 (n + 1) : ℚ) / 2 * (A171559 (n + 1) : ℚ)

end

end A016170.P4201047862751240258

namespace A016170

/-- `A005061(n+1)/2*A171559(n+1)` -/
def P4201047862751240258.Spec : Prop :=
  ∀ n, P4201047862751240258.a n = (A016170 n : ℚ)

end A016170

/-! ## A016170.P6211418810828110432

`(A000302(n+1)-A000244(n+1))*A000079(n)`
-/

namespace A016170.P6211418810828110432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) - A000244 (n + 1)) * A000079 n

end

end A016170.P6211418810828110432

namespace A016170

/-- `(A000302(n+1)-A000244(n+1))*A000079(n)` -/
def P6211418810828110432.Spec : Prop :=
  ∀ n, P6211418810828110432.a n = A016170 n

end A016170

/-! ## A016170.P16109917331726173254

`(A001576(n+1)-A001550(n+1))*A000079(n)`
-/

namespace A016170.P16109917331726173254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001576 (n + 1) - A001550 (n + 1)) * A000079 n

end

end A016170.P16109917331726173254

namespace A016170

/-- `(A001576(n+1)-A001550(n+1))*A000079(n)` -/
def P16109917331726173254.Spec : Prop :=
  ∀ n, P16109917331726173254.a n = A016170 n

end A016170

/-! ## A016170.P3828054388759238609

`(A060867(n+1)-A028243(n+2))*A000079(n)`
-/

namespace A016170.P3828054388759238609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) - A028243 (n + 2)) * A000079 n

end

end A016170.P3828054388759238609

namespace A016170

/-- `(A060867(n+1)-A028243(n+2))*A000079(n)` -/
def P3828054388759238609.Spec : Prop :=
  ∀ n, P3828054388759238609.a n = A016170 n

end A016170

/-!
# A016171: Inverse of 2162nd cyclotomic polynomial.

The programs for A016171, there is no canonical definition to state claims against.
-/

/-! ## A016171.P9916866477817859899

`A015090(n)*A033999(n)`
-/

namespace A016171.P9916866477817859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015090 n * A033999 n

end

end A016171.P9916866477817859899

/-!
# A016172: Expansion of 1/((1-6*x)*(1-9*x)).

The programs for A016172, the canonical program `A016172.P6000274408651480974` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016172 has offset 0).

The definition of A016172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016172.P6000274408651480974

`9*a(n-1)+6^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016172

/-- `9*a(n-1)+6^n` -/
def P6000274408651480974.Spec : Prop :=
  ∀ n, (P6000274408651480974.a n : ℤ) = A016172 n

theorem P6000274408651480974.correct : P6000274408651480974.Spec := by
  intro n
  simp only [A016172]

end A016172

/-! ## A016172.P10310587565392182793

`(9^(n+1)-6^(n+1))/3`
-/

namespace A016172.P10310587565392182793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016172.P10310587565392182793

namespace A016172

/-- `(9^(n+1)-6^(n+1))/3` -/
def P10310587565392182793.Spec : Prop :=
  ∀ n, P10310587565392182793.a n = (A016172 n : ℚ)

theorem P10310587565392182793.correct : P10310587565392182793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016172, Nat.add_sub_cancel, A016172.P10310587565392182793.a, A016172.P6000274408651480974.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016172, Nat.add_sub_cancel, A016172.P10310587565392182793.a, A016172.P6000274408651480974.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016172

/-! ## A016172.P9895254197428060321

`3^n*A001047(n+1)`
-/

namespace A016172.P9895254197428060321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001047 (n + 1)

end

end A016172.P9895254197428060321

namespace A016172

/-- `3^n*A001047(n+1)` -/
def P9895254197428060321.Spec : Prop :=
  ∀ n, P9895254197428060321.a n = A016172 n

end A016172

/-! ## A016172.P15153417671987339645

`A001019(n)+a(n-1)/(1-5/6)` with `a(0)=1`
-/

namespace A016172.P15153417671987339645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001019 n : ℚ) + a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A016172.P15153417671987339645

namespace A016172

/-- `A001019(n)+a(n-1)/(1-5/6)` -/
def P15153417671987339645.Spec : Prop :=
  ∀ n, P15153417671987339645.a n = (A016172 n : ℚ)

end A016172

/-! ## A016172.P10487272676182495929

`lcm(∑[A027649(n)], A000244(n))`
-/

namespace A016172.P10487272676182495929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000244 n)

end

end A016172.P10487272676182495929

namespace A016172

/-- `lcm(∑[A027649(n)], A000244(n))` -/
def P10487272676182495929.Spec : Prop :=
  ∀ n, (P10487272676182495929.a n : ℤ) = A016172 n

end A016172

/-! ## A016172.P12041358674014518632

`A013708(n)-2*A000400(n)`
-/

namespace A016172.P12041358674014518632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n - 2 * A000400 n

end

end A016172.P12041358674014518632

namespace A016172

/-- `A013708(n)-2*A000400(n)` -/
def P12041358674014518632.Spec : Prop :=
  ∀ n, P12041358674014518632.a n = A016172 n

end A016172

/-! ## A016172.P17313854966803467319

`Δ[A001047(n)]²-A001047(n)²`
-/

namespace A016172.P17313854966803467319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A001047 n ^ 2

end

end A016172.P17313854966803467319

namespace A016172

/-- `Δ[A001047(n)]²-A001047(n)²` -/
def P17313854966803467319.Spec : Prop :=
  ∀ n, P17313854966803467319.a n = A016172 n

end A016172

/-! ## A016172.P2074350455010691941

`3*A000244(n)²-A167747(n+1)`
-/

namespace A016172.P2074350455010691941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000244 n ^ 2 - A167747 (n + 1)

end

end A016172.P2074350455010691941

namespace A016172

/-- `3*A000244(n)²-A167747(n+1)` -/
def P2074350455010691941.Spec : Prop :=
  ∀ n, P2074350455010691941.a n = A016172 n

end A016172

/-! ## A016172.P5477470938282537117

`A000244(2*n+1)-A167747(n+1)`
-/

namespace A016172.P5477470938282537117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n + 1) - A167747 (n + 1)

end

end A016172.P5477470938282537117

namespace A016172

/-- `A000244(2*n+1)-A167747(n+1)` -/
def P5477470938282537117.Spec : Prop :=
  ∀ n, P5477470938282537117.a n = A016172 n

end A016172

/-! ## A016172.P3762208684511428136

`A024023(2*n+1)-A164559(n+1)`
-/

namespace A016172.P3762208684511428136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (2 * n + 1) - A164559 (n + 1)

end

end A016172.P3762208684511428136

namespace A016172

/-- `A024023(2*n+1)-A164559(n+1)` -/
def P3762208684511428136.Spec : Prop :=
  ∀ n, P3762208684511428136.a n = A016172 n

end A016172

/-! ## A016172.P17925081954778207454

`A001047(n+1)*A098293(2*n+1)`
-/

namespace A016172.P17925081954778207454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) * A098293 (2 * n + 1)

end

end A016172.P17925081954778207454

namespace A016172

/-- `A001047(n+1)*A098293(2*n+1)` -/
def P17925081954778207454.Spec : Prop :=
  ∀ n, P17925081954778207454.a n = A016172 n

end A016172

/-! ## A016172.P7778610989339586173

`3*A000244(n)²-A067411(n+1)/2`
-/

namespace A016172.P7778610989339586173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000244 n ^ 2 : ℚ) - (A067411 (n + 1) : ℚ) / 2

end

end A016172.P7778610989339586173

namespace A016172

/-- `3*A000244(n)²-A067411(n+1)/2` -/
def P7778610989339586173.Spec : Prop :=
  ∀ n, P7778610989339586173.a n = (A016172 n : ℚ)

end A016172

/-! ## A016172.P1250219470610006490

`A024023(2*n+1)-A164560(2*n+1)`
-/

namespace A016172.P1250219470610006490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (2 * n + 1) - A164560 (2 * n + 1)

end

end A016172.P1250219470610006490

namespace A016172

/-- `A024023(2*n+1)-A164560(2*n+1)` -/
def P1250219470610006490.Spec : Prop :=
  ∀ n, P1250219470610006490.a n = A016172 n

end A016172

/-! ## A016172.P4242828939576553089

`A000244(2*n+1)-A067411(n+1)/2`
-/

namespace A016172.P4242828939576553089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (2 * n + 1) : ℚ) - (A067411 (n + 1) : ℚ) / 2

end

end A016172.P4242828939576553089

namespace A016172

/-- `A000244(2*n+1)-A067411(n+1)/2` -/
def P4242828939576553089.Spec : Prop :=
  ∀ n, P4242828939576553089.a n = (A016172 n : ℚ)

end A016172

/-! ## A016172.P316669521939782371

`(A056182(n)+A000244(n))*A000244(n)`
-/

namespace A016172.P316669521939782371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056182 n + A000244 n) * A000244 n

end

end A016172.P316669521939782371

namespace A016172

/-- `(A056182(n)+A000244(n))*A000244(n)` -/
def P316669521939782371.Spec : Prop :=
  ∀ n, P316669521939782371.a n = A016172 n

end A016172

/-! ## A016172.P9359465104256044163

`(A094705(n+1)+A094705(n))*A000244(n)`
-/

namespace A016172.P9359465104256044163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094705 (n + 1) + A094705 n) * A000244 n

end

end A016172.P9359465104256044163

namespace A016172

/-- `(A094705(n+1)+A094705(n))*A000244(n)` -/
def P9359465104256044163.Spec : Prop :=
  ∀ n, P9359465104256044163.a n = A016172 n

end A016172

/-! ## A016172.P1200943154390193436

`A000244(n)*A083323(n+1)-A000244(n)`
-/

namespace A016172.P1200943154390193436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A083323 (n + 1) - A000244 n

end

end A016172.P1200943154390193436

namespace A016172

/-- `A000244(n)*A083323(n+1)-A000244(n)` -/
def P1200943154390193436.Spec : Prop :=
  ∀ n, P1200943154390193436.a n = A016172 n

end A016172

/-! ## A016172.P18045948473598417080

`A001047(n+1)+A001047(n+1)*A024023(n)`
-/

namespace A016172.P18045948473598417080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) + A001047 (n + 1) * A024023 n

end

end A016172.P18045948473598417080

namespace A016172

/-- `A001047(n+1)+A001047(n+1)*A024023(n)` -/
def P18045948473598417080.Spec : Prop :=
  ∀ n, P18045948473598417080.a n = A016172 n

end A016172

/-! ## A016172.P13435001298861682949

`(A000244(n+1)-A000079(n+1))*A000244(n)`
-/

namespace A016172.P13435001298861682949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) - A000079 (n + 1)) * A000244 n

end

end A016172.P13435001298861682949

namespace A016172

/-- `(A000244(n+1)-A000079(n+1))*A000244(n)` -/
def P13435001298861682949.Spec : Prop :=
  ∀ n, P13435001298861682949.a n = A016172 n

end A016172

/-! ## A016172.P5618092267282065892

`(A003063(n+2)+A000079(n+1))*A000244(n)`
-/

namespace A016172.P5618092267282065892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003063 (n + 2) + A000079 (n + 1)) * A000244 n

end

end A016172.P5618092267282065892

namespace A016172

/-- `(A003063(n+2)+A000079(n+1))*A000244(n)` -/
def P5618092267282065892.Spec : Prop :=
  ∀ n, P5618092267282065892.a n = A016172 n

end A016172

/-!
# A016173: Expansion of 1/((1-6*x)*(1-10*x)).

The programs for A016173, the canonical program `A016173.P7170147443175932794` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016173 has offset 0).

The definition of A016173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016173.P7170147443175932794

`10*a(n-1)+6^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016173

/-- `10*a(n-1)+6^n` -/
def P7170147443175932794.Spec : Prop :=
  ∀ n, (P7170147443175932794.a n : ℤ) = A016173 n

theorem P7170147443175932794.correct : P7170147443175932794.Spec := by
  intro n
  simp only [A016173]

end A016173

/-! ## A016173.P14988323798130355761

`(10^(n+1)-6^(n+1))/4`
-/

namespace A016173.P14988323798130355761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A016173.P14988323798130355761

namespace A016173

/-- `(10^(n+1)-6^(n+1))/4` -/
def P14988323798130355761.Spec : Prop :=
  ∀ n, P14988323798130355761.a n = (A016173 n : ℚ)

theorem P14988323798130355761.correct : P14988323798130355761.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016173, Nat.add_sub_cancel, A016173.P14988323798130355761.a, A016173.P7170147443175932794.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016173, Nat.add_sub_cancel, A016173.P14988323798130355761.a, A016173.P7170147443175932794.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016173

/-! ## A016173.P9965410758398037298

`round(A155653(n+1)/4)`
-/

namespace A016173.P9965410758398037298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155653 (n + 1) : ℚ) / 4)

end

end A016173.P9965410758398037298

namespace A016173

/-- `round(A155653(n+1)/4)` -/
def P9965410758398037298.Spec : Prop :=
  ∀ n, P9965410758398037298.a n = A016173 n

end A016173

/-! ## A016173.P10144769296717350860

`2^n*A005059(n+1)`
-/

namespace A016173.P10144769296717350860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005059 (n + 1)

end

end A016173.P10144769296717350860

namespace A016173

/-- `2^n*A005059(n+1)` -/
def P10144769296717350860.Spec : Prop :=
  ∀ n, P10144769296717350860.a n = A016173 n

end A016173

/-! ## A016173.P3432297958597958701

`2*A016134(n)-A016129(n)`
-/

namespace A016173.P3432297958597958701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016134 n - A016129 n

end

end A016173.P3432297958597958701

namespace A016173

/-- `2*A016134(n)-A016129(n)` -/
def P3432297958597958701.Spec : Prop :=
  ∀ n, P3432297958597958701.a n = A016173 n

end A016173

/-! ## A016173.P7330540769964994446

`A005059(n+1)*A011782(n+1)`
-/

namespace A016173.P7330540769964994446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1) * A011782 (n + 1)

end

end A016173.P7330540769964994446

namespace A016173

/-- `A005059(n+1)*A011782(n+1)` -/
def P7330540769964994446.Spec : Prop :=
  ∀ n, P7330540769964994446.a n = A016173 n

end A016173

/-! ## A016173.P3552855043685476433

`A005058(n+1)/2*A011782(n+1)`
-/

namespace A016173.P3552855043685476433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005058 (n + 1) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A016173.P3552855043685476433

namespace A016173

/-- `A005058(n+1)/2*A011782(n+1)` -/
def P3552855043685476433.Spec : Prop :=
  ∀ n, P3552855043685476433.a n = (A016173 n : ℚ)

end A016173

/-! ## A016173.P15507246133775528546

`A000079(n)²/A000079(n+1)*A005058(n+1)`
-/

namespace A016173.P15507246133775528546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ) * (A005058 (n + 1) : ℚ)

end

end A016173.P15507246133775528546

namespace A016173

/-- `A000079(n)²/A000079(n+1)*A005058(n+1)` -/
def P15507246133775528546.Spec : Prop :=
  ∀ n, P15507246133775528546.a n = (A016173 n : ℚ)

end A016173

/-! ## A016173.P1261595959601401471

`A000079(2*n)/A000079(n+1)*A005058(n+1)`
-/

namespace A016173.P1261595959601401471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ) * (A005058 (n + 1) : ℚ)

end

end A016173.P1261595959601401471

namespace A016173

/-- `A000079(2*n)/A000079(n+1)*A005058(n+1)` -/
def P1261595959601401471.Spec : Prop :=
  ∀ n, P1261595959601401471.a n = (A016173 n : ℚ)

end A016173

/-!
# A016174: Expansion of 1/((1-6*x)*(1-11*x)).

The programs for A016174, the canonical program `A016174.P289307915438905451` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016174 has offset 0).

The definition of A016174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016174.P289307915438905451

`11*a(n-1)+6^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016174

/-- `11*a(n-1)+6^n` -/
def P289307915438905451.Spec : Prop :=
  ∀ n, (P289307915438905451.a n : ℤ) = A016174 n

theorem P289307915438905451.correct : P289307915438905451.Spec := by
  intro n
  simp only [A016174]

end A016174

/-! ## A016174.P15949932612105246019

`(11^(n+1)-6^(n+1))/5`
-/

namespace A016174.P15949932612105246019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (6 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A016174.P15949932612105246019

namespace A016174

/-- `(11^(n+1)-6^(n+1))/5` -/
def P15949932612105246019.Spec : Prop :=
  ∀ n, P15949932612105246019.a n = (A016174 n : ℚ)

theorem P15949932612105246019.correct : P15949932612105246019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016174, Nat.add_sub_cancel, A016174.P15949932612105246019.a, A016174.P289307915438905451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016174, Nat.add_sub_cancel, A016174.P15949932612105246019.a, A016174.P289307915438905451.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016174

/-! ## A016174.P2014319848998296992

`lcm(6, a(n-1))+11^n` with `a(0)=1`
-/

namespace A016174.P2014319848998296992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 6 (a (n - 1)) + 11 ^ n

end

end A016174.P2014319848998296992

namespace A016174

/-- `lcm(6, a(n-1))+11^n` -/
def P2014319848998296992.Spec : Prop :=
  ∀ n, (P2014319848998296992.a n : ℤ) = A016174 n

end A016174

/-! ## A016174.P6137348067557514467

`floor(A155654(n+1)/5)`
-/

namespace A016174.P6137348067557514467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155654 (n + 1) : ℚ) / 5⌋

end

end A016174.P6137348067557514467

namespace A016174

/-- `floor(A155654(n+1)/5)` -/
def P6137348067557514467.Spec : Prop :=
  ∀ n, P6137348067557514467.a n = A016174 n

end A016174

/-! ## A016174.P9535120361376016109

`lcm(3, 2*a(A023443(n)))+11^n` with `a(0)=1`
-/

namespace A016174.P9535120361376016109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (2 * a (A023443 n).toNat) + 11 ^ n

end

end A016174.P9535120361376016109

namespace A016174

/-- `lcm(3, 2*a(A023443(n)))+11^n` -/
def P9535120361376016109.Spec : Prop :=
  ∀ n, (P9535120361376016109.a n : ℤ) = A016174 n

end A016174

/-! ## A016174.P1114594983846596600

`A024062(n)+1-(a(n-1)-12*a(n-1))` with `a(0)=1`
-/

namespace A016174.P1114594983846596600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024062 n + (1 - (a (n - 1) - 12 * a (n - 1)))

end

end A016174.P1114594983846596600

namespace A016174

/-- `A024062(n)+1-(a(n-1)-12*a(n-1))` -/
def P1114594983846596600.Spec : Prop :=
  ∀ n, P1114594983846596600.a n = A016174 n

end A016174

/-! ## A016174.P5463444500744390514

`Δ[∑[A155654(n)-1]/5]`
-/

namespace A016174.P5463444500744390514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155654 n - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016174.P5463444500744390514

namespace A016174

/-- `Δ[∑[A155654(n)-1]/5]` -/
def P5463444500744390514.Spec : Prop :=
  ∀ n, P5463444500744390514.a n = (A016174 n : ℚ)

end A016174

/-!
# A016175: Expansion of 1/((1-6*x)*(1-12*x)).

The programs for A016175, the canonical program `A016175.P9083425521543477515` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016175 has offset 0).

The definition of A016175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016175.P9083425521543477515

`2*12^n-6^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016175

/-- `2*12^n-6^n` -/
def P9083425521543477515.Spec : Prop :=
  ∀ n, P9083425521543477515.a n = A016175 n

theorem P9083425521543477515.correct : P9083425521543477515.Spec := by
  intro n
  simp only [A016175]

end A016175

/-! ## A016175.P4500740043504760388

`3^n*A171476(n)`
-/

namespace A016175.P4500740043504760388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A171476 n

end

end A016175.P4500740043504760388

namespace A016175

/-- `3^n*A171476(n)` -/
def P4500740043504760388.Spec : Prop :=
  ∀ n, P4500740043504760388.a n = A016175 n

end A016175

/-! ## A016175.P14695261923722507967

`lcm(2^n, A016137(n))`
-/

namespace A016175.P14695261923722507967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A016137 n)

end

end A016175.P14695261923722507967

namespace A016175

/-- `lcm(2^n, A016137(n))` -/
def P14695261923722507967.Spec : Prop :=
  ∀ n, (P14695261923722507967.a n : ℤ) = A016175 n

end A016175

/-! ## A016175.P10797671291436009240

`3^n*A006516(n+1)`
-/

namespace A016175.P10797671291436009240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A006516 (n + 1)

end

end A016175.P10797671291436009240

namespace A016175

/-- `3^n*A006516(n+1)` -/
def P10797671291436009240.Spec : Prop :=
  ∀ n, P10797671291436009240.a n = A016175 n

end A016175

/-! ## A016175.P8926673961792943652

`∑[2^n]/6^A001489(n)`
-/

namespace A016175.P8926673961792943652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (6 : ℚ) ^ (A001489 n : ℤ)

end

end A016175.P8926673961792943652

namespace A016175

/-- `∑[2^n]/6^A001489(n)` -/
def P8926673961792943652.Spec : Prop :=
  ∀ n, P8926673961792943652.a n = (A016175 n : ℚ)

end A016175

/-! ## A016175.P18444058682296943806

`lcm(2, A059153(n)/2*3^n)/2`
-/

namespace A016175.P18444058682296943806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((A059153 n : ℚ) / 2 * (3 ^ n : ℚ))) : ℚ) / 2

end

end A016175.P18444058682296943806

namespace A016175

/-- `lcm(2, A059153(n)/2*3^n)/2` -/
def P18444058682296943806.Spec : Prop :=
  ∀ n, P18444058682296943806.a n = (A016175 n : ℚ)

end A016175

/-! ## A016175.P9469600948115250051

`A000244(n)*A287470(2*n)`
-/

namespace A016175.P9469600948115250051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A287470 (2 * n)

end

end A016175.P9469600948115250051

namespace A016175

/-- `A000244(n)*A287470(2*n)` -/
def P9469600948115250051.Spec : Prop :=
  ∀ n, P9469600948115250051.a n = A016175 n

end A016175

/-! ## A016175.P13460906645214327721

`A006516(n+1)*A108411(2*n)`
-/

namespace A016175.P13460906645214327721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) * A108411 (2 * n)

end

end A016175.P13460906645214327721

namespace A016175

/-- `A006516(n+1)*A108411(2*n)` -/
def P13460906645214327721.Spec : Prop :=
  ∀ n, P13460906645214327721.a n = A016175 n

end A016175

/-! ## A016175.P9014380404329963635

`A006516(n+1)*A232801(2*n+1)`
-/

namespace A016175.P9014380404329963635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) * A232801 (2 * n + 1)

end

end A016175.P9014380404329963635

namespace A016175

/-- `A006516(n+1)*A232801(2*n+1)` -/
def P9014380404329963635.Spec : Prop :=
  ∀ n, P9014380404329963635.a n = A016175 n

end A016175

/-! ## A016175.P5378119585756418041

`A032085(2*(n+1))*A108411(2*n)`
-/

namespace A016175.P5378119585756418041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (2 * (n + 1)) * A108411 (2 * n)

end

end A016175.P5378119585756418041

namespace A016175

/-- `A032085(2*(n+1))*A108411(2*n)` -/
def P5378119585756418041.Spec : Prop :=
  ∀ n, P5378119585756418041.a n = A016175 n

end A016175

/-!
# A016176: 

The programs for A016176, there is no canonical definition to state claims against.
-/

/-! ## A016176.P16106900303549898846

`C(n, comp[A357074(n+1)])`
-/

namespace A016176.P16106900303549898846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016176.P16106900303549898846

/-! ## A016176.P6240080466420908167

`C(n+1, ∑[A298444(n+1)])`
-/

namespace A016176.P6240080466420908167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016176.P6240080466420908167

/-! ## A016176.P8423724036739142914

`C(n, comp[A350395(2*(n+2))])`
-/

namespace A016176.P8423724036739142914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016176.P8423724036739142914

/-! ## A016176.P10035246554608381491

`A294934(Δ[A128689(n+1)])`
-/

namespace A016176.P10035246554608381491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (f1 (n + 1) - f1 n).toNat

end

end A016176.P10035246554608381491

/-! ## A016176.P506872377800143577

`A000007(A075905(n+1)-n)`
-/

namespace A016176.P506872377800143577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A075905 (n + 1) - (n : ℤ)).toNat

end

end A016176.P506872377800143577

/-! ## A016176.P6522733571994250580

`A000007(n*A105390(n+1))`
-/

namespace A016176.P6522733571994250580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A105390 (n + 1)).toNat

end

end A016176.P6522733571994250580

/-! ## A016176.P4355902880916108726

`A261585(n)^-A067604(n+4)`
-/

namespace A016176.P4355902880916108726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261585 n : ℚ) ^ (-A067604 (n + 4) : ℤ)

end

end A016176.P4355902880916108726

/-! ## A016176.P11644250134190981449

`and(char[A321108(n)], A299521(n+1))`
-/

namespace A016176.P11644250134190981449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321108 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A299521 (n + 1))

end

end A016176.P11644250134190981449

/-! ## A016176.P15814641322620443717

`lcm(A014560(A008718(n+2)), A014592(n))`
-/

namespace A016176.P15814641322620443717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014560 (A008718 (n + 2)).toNat) (A014592 n)

end

end A016176.P15814641322620443717

/-! ## A016176.P3859720218862545382

`C(A301722(n), A301722(A391860(n+1)))`
-/

namespace A016176.P3859720218862545382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301722 n).toNat (A301722 (A391860 (n + 1)).toNat).toNat

end

end A016176.P3859720218862545382

/-! ## A016176.P4936927151130753242

`C(A033665(n), ∑[A033665(n)])`
-/

namespace A016176.P4936927151130753242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033665 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016176.P4936927151130753242

/-! ## A016176.P12952587080500351839

`C(A005711(A233547(3*n+5)), A135585(n))`
-/

namespace A016176.P12952587080500351839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005711 (A233547 (3 * n + 5)).toNat).toNat (A135585 n).toNat

end

end A016176.P12952587080500351839

/-! ## A016176.P17998057868432302024

`C(A186444(A143824(3*n+4)), A186444(n+1))`
-/

namespace A016176.P17998057868432302024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A186444 (A143824 (3 * n + 4)).toNat).toNat (A186444 (n + 1)).toNat

end

end A016176.P17998057868432302024

/-!
# A016177: a(n) = 8^n - 7^n.

The programs for A016177, the canonical program `A016177.P16704984265590064916` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016177 has offset 0).

The definition of A016177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-7^n` (program `A016177.P16704984265590064916`, by `A016177.P16704984265590064916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016177.P16704984265590064916

`8^n-7^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016177

/-- `8^n-7^n` -/
def P16704984265590064916.Spec : Prop :=
  ∀ n, P16704984265590064916.a n = A016177 n

theorem P16704984265590064916.correct : P16704984265590064916.Spec := by
  intro n
  simp only [A016177]

end A016177

/-! ## A016177.P13227402890002864335

`abs(1-A155659(n))`
-/

namespace A016177.P13227402890002864335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155659 n|

end

end A016177.P13227402890002864335

namespace A016177

/-- `abs(1-A155659(n))` -/
def P13227402890002864335.Spec : Prop :=
  ∀ n, P13227402890002864335.a n = A016177 n

end A016177

/-! ## A016177.P15832456851081582834

`xor(A024075(n), A024088(n))`
-/

namespace A016177.P15832456851081582834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024075 n) (A024088 n)

end

end A016177.P15832456851081582834

namespace A016177

/-- `xor(A024075(n), A024088(n))` -/
def P15832456851081582834.Spec : Prop :=
  ∀ n, P15832456851081582834.a n = A016177 n

end A016177

/-! ## A016177.P17462159688291076450

`abs(A000420(n)-A001018(n))`
-/

namespace A016177.P17462159688291076450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A001018 n|

end

end A016177.P17462159688291076450

namespace A016177

/-- `abs(A000420(n)-A001018(n))` -/
def P17462159688291076450.Spec : Prop :=
  ∀ n, P17462159688291076450.a n = A016177 n

end A016177

/-! ## A016177.P8916041091038961186

`abs(A024076(n)-A024089(n))`
-/

namespace A016177.P8916041091038961186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - A024089 n|

end

end A016177.P8916041091038961186

namespace A016177

/-- `abs(A024076(n)-A024089(n))` -/
def P8916041091038961186.Spec : Prop :=
  ∀ n, P8916041091038961186.a n = A016177 n

end A016177

/-! ## A016177.P3540513755536464920

`abs(A034491(n)-A062395(n))`
-/

namespace A016177.P3540513755536464920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A062395 n|

end

end A016177.P3540513755536464920

namespace A016177

/-- `abs(A034491(n)-A062395(n))` -/
def P3540513755536464920.Spec : Prop :=
  ∀ n, P3540513755536464920.a n = A016177 n

end A016177

/-! ## A016177.P114251965072551288

`abs(A074503(n)-A074504(n))`
-/

namespace A016177.P114251965072551288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074503 n - A074504 n|

end

end A016177.P114251965072551288

namespace A016177

/-- `abs(A074503(n)-A074504(n))` -/
def P114251965072551288.Spec : Prop :=
  ∀ n, P114251965072551288.a n = A016177 n

end A016177

/-! ## A016177.P2908806571648289464

`abs(A074534(n)-A074535(n))`
-/

namespace A016177.P2908806571648289464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074534 n - A074535 n|

end

end A016177.P2908806571648289464

namespace A016177

/-- `abs(A074534(n)-A074535(n))` -/
def P2908806571648289464.Spec : Prop :=
  ∀ n, P2908806571648289464.a n = A016177 n

end A016177

/-! ## A016177.P8818317549370709464

`abs(A074538(n)-A074539(n))`
-/

namespace A016177.P8818317549370709464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074538 n - A074539 n|

end

end A016177.P8818317549370709464

namespace A016177

/-- `abs(A074538(n)-A074539(n))` -/
def P8818317549370709464.Spec : Prop :=
  ∀ n, P8818317549370709464.a n = A016177 n

end A016177

/-! ## A016177.P4117696197704414534

`abs(A074541(n)-A074542(n))`
-/

namespace A016177.P4117696197704414534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074541 n - A074542 n|

end

end A016177.P4117696197704414534

namespace A016177

/-- `abs(A074541(n)-A074542(n))` -/
def P4117696197704414534.Spec : Prop :=
  ∀ n, P4117696197704414534.a n = A016177 n

end A016177

/-! ## A016177.P3676439355143085883

`abs(A155628(n)-A155629(n))`
-/

namespace A016177.P3676439355143085883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155628 n - A155629 n|

end

end A016177.P3676439355143085883

namespace A016177

/-- `abs(A155628(n)-A155629(n))` -/
def P3676439355143085883.Spec : Prop :=
  ∀ n, P3676439355143085883.a n = A016177 n

end A016177

/-! ## A016177.P8530229055332984294

`abs(A155634(n)-A155635(n))`
-/

namespace A016177.P8530229055332984294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155634 n - A155635 n|

end

end A016177.P8530229055332984294

namespace A016177

/-- `abs(A155634(n)-A155635(n))` -/
def P8530229055332984294.Spec : Prop :=
  ∀ n, P8530229055332984294.a n = A016177 n

end A016177

/-! ## A016177.P690779093716962782

`abs(A155640(n)-A155641(n))`
-/

namespace A016177.P690779093716962782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155640 n - A155641 n|

end

end A016177.P690779093716962782

namespace A016177

/-- `abs(A155640(n)-A155641(n))` -/
def P690779093716962782.Spec : Prop :=
  ∀ n, P690779093716962782.a n = A016177 n

end A016177

/-! ## A016177.P16074058225582046865

`abs(A155645(n)-A155646(n))`
-/

namespace A016177.P16074058225582046865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155645 n - A155646 n|

end

end A016177.P16074058225582046865

namespace A016177

/-- `abs(A155645(n)-A155646(n))` -/
def P16074058225582046865.Spec : Prop :=
  ∀ n, P16074058225582046865.a n = A016177 n

end A016177

/-! ## A016177.P11823095576522994736

`abs(A155650(n)-A155651(n))`
-/

namespace A016177.P11823095576522994736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155650 n - A155651 n|

end

end A016177.P11823095576522994736

namespace A016177

/-- `abs(A155650(n)-A155651(n))` -/
def P11823095576522994736.Spec : Prop :=
  ∀ n, P11823095576522994736.a n = A016177 n

end A016177

/-! ## A016177.P13105279139435108728

`∑[A055274(n)-A055272(n)]`
-/

namespace A016177.P13105279139435108728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016177.P13105279139435108728

namespace A016177

/-- `∑[A055274(n)-A055272(n)]` -/
def P13105279139435108728.Spec : Prop :=
  ∀ n, P13105279139435108728.a n = A016177 n

end A016177

/-! ## A016177.P8348404550066547900

`Δ[A023001(n)-A023000(n)]`
-/

namespace A016177.P8348404550066547900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016177.P8348404550066547900

namespace A016177

/-- `Δ[A023001(n)-A023000(n)]` -/
def P8348404550066547900.Spec : Prop :=
  ∀ n, P8348404550066547900.a n = A016177 n

end A016177

/-! ## A016177.P9562927782994480134

`∑[A257288(n)]%A257288(n)`
-/

namespace A016177.P9562927782994480134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A257288 n)

end

end A016177.P9562927782994480134

namespace A016177

/-- `∑[A257288(n)]%A257288(n)` -/
def P9562927782994480134.Spec : Prop :=
  ∀ n, P9562927782994480134.a n = A016177 n

end A016177

/-!
# A016178: Expansion of g.f. 1/((1 - 7x)*(1 - 9x)).

The programs for A016178, the canonical program `A016178.P8565379569865310444` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016178 has offset 0).

The definition of A016178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016178.P8565379569865310444

`9*a(n-1)+7^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016178

/-- `9*a(n-1)+7^n` -/
def P8565379569865310444.Spec : Prop :=
  ∀ n, (P8565379569865310444.a n : ℤ) = A016178 n

theorem P8565379569865310444.correct : P8565379569865310444.Spec := by
  intro n
  simp only [A016178]

end A016178

/-! ## A016178.P8123376789457440739

`A081202(n+1)`
-/

namespace A016178.P8123376789457440739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 (n + 1)

end

end A016178.P8123376789457440739

namespace A016178

/-- `A081202(n+1)` -/
def P8123376789457440739.Spec : Prop :=
  ∀ n, P8123376789457440739.a n = A016178 n

end A016178

/-! ## A016178.P758929301344025563

`(9^(n+1)-7^(n+1))/2`
-/

namespace A016178.P758929301344025563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 2

end

end A016178.P758929301344025563

namespace A016178

/-- `(9^(n+1)-7^(n+1))/2` -/
def P758929301344025563.Spec : Prop :=
  ∀ n, P758929301344025563.a n = (A016178 n : ℚ)

theorem P758929301344025563.correct : P758929301344025563.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016178, Nat.add_sub_cancel, A016178.P758929301344025563.a, A016178.P8565379569865310444.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016178, Nat.add_sub_cancel, A016178.P758929301344025563.a, A016178.P8565379569865310444.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016178

/-! ## A016178.P13576078265057123926

`lcm(7, a(n-1))+9^n` with `a(0)=1`
-/

namespace A016178.P13576078265057123926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 9 ^ n

end

end A016178.P13576078265057123926

namespace A016178

/-- `lcm(7, a(n-1))+9^n` -/
def P13576078265057123926.Spec : Prop :=
  ∀ n, (P13576078265057123926.a n : ℤ) = A016178 n

end A016178

/-! ## A016178.P14955246291044852690

`∑[abs(Δ[A081202(n)])]`
-/

namespace A016178.P14955246291044852690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016178.P14955246291044852690

namespace A016178

/-- `∑[abs(Δ[A081202(n)])]` -/
def P14955246291044852690.Spec : Prop :=
  ∀ n, P14955246291044852690.a n = A016178 n

end A016178

/-! ## A016178.P2862320547794355467

`record[A081202(abs(1-n))]`
-/

namespace A016178.P2862320547794355467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081202 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016178.P2862320547794355467

namespace A016178

/-- `record[A081202(abs(1-n))]` -/
def P2862320547794355467.Spec : Prop :=
  ∀ n, P2862320547794355467.a n = A016178 n

end A016178

/-! ## A016178.P14036452395148192386

`A081035(n)-a(n-1)` with `a(0)=1`
-/

namespace A016178.P14036452395148192386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081035 n - a (n - 1)

end

end A016178.P14036452395148192386

namespace A016178

/-- `A081035(n)-a(n-1)` -/
def P14036452395148192386.Spec : Prop :=
  ∀ n, P14036452395148192386.a n = A016178 n

end A016178

/-! ## A016178.P10320841160712485486

`A081035(n)-A081202(n)`
-/

namespace A016178.P10320841160712485486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081035 n - A081202 n

end

end A016178.P10320841160712485486

namespace A016178

/-- `A081035(n)-A081202(n)` -/
def P10320841160712485486.Spec : Prop :=
  ∀ n, P10320841160712485486.a n = A016178 n

end A016178

/-! ## A016178.P6153436129399243600

`A025551(n+1)-A081336(n+1)`
-/

namespace A016178.P6153436129399243600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025551 (n + 1) - A081336 (n + 1)

end

end A016178.P6153436129399243600

namespace A016178

/-- `A025551(n+1)-A081336(n+1)` -/
def P6153436129399243600.Spec : Prop :=
  ∀ n, P6153436129399243600.a n = A016178 n

end A016178

/-! ## A016178.P2607955138274802211

`A191681(n+1)-A120741(n+1)`
-/

namespace A016178.P2607955138274802211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 (n + 1) - A120741 (n + 1)

end

end A016178.P2607955138274802211

namespace A016178

/-- `A191681(n+1)-A120741(n+1)` -/
def P2607955138274802211.Spec : Prop :=
  ∀ n, P2607955138274802211.a n = A016178 n

end A016178

/-! ## A016178.P2266113315232373882

`floor(A155660(n+1)/2)`
-/

namespace A016178.P2266113315232373882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155660 (n + 1) : ℚ) / 2⌋

end

end A016178.P2266113315232373882

namespace A016178

/-- `floor(A155660(n+1)/2)` -/
def P2266113315232373882.Spec : Prop :=
  ∀ n, P2266113315232373882.a n = A016178 n

end A016178

/-! ## A016178.P2949631270109325774

`A001019(n+1)-A081190(n+1)`
-/

namespace A016178.P2949631270109325774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (n + 1) - A081190 (n + 1)

end

end A016178.P2949631270109325774

namespace A016178

/-- `A001019(n+1)-A081190(n+1)` -/
def P2949631270109325774.Spec : Prop :=
  ∀ n, P2949631270109325774.a n = A016178 n

end A016178

/-! ## A016178.P18413194536032755290

`A074623(n+1)/2-A000420(n+1)`
-/

namespace A016178.P18413194536032755290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074623 (n + 1) : ℚ) / 2 - (A000420 (n + 1) : ℚ)

end

end A016178.P18413194536032755290

namespace A016178

/-- `A074623(n+1)/2-A000420(n+1)` -/
def P18413194536032755290.Spec : Prop :=
  ∀ n, P18413194536032755290.a n = (A016178 n : ℚ)

end A016178

/-!
# A016179: Inverse of 2170th cyclotomic polynomial.

The programs for A016179, there is no canonical definition to state claims against.
-/

/-! ## A016179.P14777369567739242256

`A015094(n)*A033999(n)`
-/

namespace A016179.P14777369567739242256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015094 n * A033999 n

end

end A016179.P14777369567739242256

/-!
# A016180: 

The programs for A016180, there is no canonical definition to state claims against.
-/

/-! ## A016180.P5745367657283682383

`C(n, comp[A366529(2*n+5)])`
-/

namespace A016180.P5745367657283682383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366529 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A016180.P5745367657283682383

/-! ## A016180.P17305940234210892312

`A000120(C(2, A326596(n)))`
-/

namespace A016180.P17305940234210892312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose 2 (A326596 n).toNat)

end

end A016180.P17305940234210892312

/-! ## A016180.P10425137041993883135

`A004525(C(2, A326596(n)))`
-/

namespace A016180.P10425137041993883135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose 2 (A326596 n).toNat)

end

end A016180.P10425137041993883135

/-! ## A016180.P8281771561416608695

`A010060(C(2, A326596(n)))`
-/

namespace A016180.P8281771561416608695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 2 (A326596 n).toNat)

end

end A016180.P8281771561416608695

/-! ## A016180.P2824609340899235055

`A057427(C(2, A326596(n)))`
-/

namespace A016180.P2824609340899235055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose 2 (A326596 n).toNat)

end

end A016180.P2824609340899235055

/-! ## A016180.P13077359563549908559

`A220080(C(2, A326596(n)))`
-/

namespace A016180.P13077359563549908559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220080 (Nat.choose 2 (A326596 n).toNat)

end

end A016180.P13077359563549908559

/-! ## A016180.P9992261989731045310

`C(A331910(n+1), A326596(n))`
-/

namespace A016180.P9992261989731045310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331910 (n + 1)).toNat (A326596 n).toNat

end

end A016180.P9992261989731045310

/-! ## A016180.P5278415833740064714

`C(A001285(A264987(n)), A326596(n))`
-/

namespace A016180.P5278415833740064714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 (A264987 n).toNat).toNat (A326596 n).toNat

end

end A016180.P5278415833740064714

/-! ## A016180.P1327205269738627838

`C(A030363(A003961(n+1)), A326596(n))`
-/

namespace A016180.P1327205269738627838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030363 (A003961 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A016180.P1327205269738627838

/-! ## A016180.P419596561724962766

`C(A033762(A036036(n+1)), A326596(n))`
-/

namespace A016180.P419596561724962766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033762 (A036036 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A016180.P419596561724962766

/-! ## A016180.P14317445861704393061

`C(A033762(A059998(n+1)), A326596(n))`
-/

namespace A016180.P14317445861704393061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033762 (A059998 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A016180.P14317445861704393061

/-! ## A016180.P15736707779657898216

`C(A001285(n), A000389(A001156(n)))`
-/

namespace A016180.P15736707779657898216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001285 n).toNat (A000389 (A001156 n).toNat).toNat

end

end A016180.P15736707779657898216

/-! ## A016180.P7590307904929172310

`C(A299924(n+1), A000389(A001156(n)))`
-/

namespace A016180.P7590307904929172310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A299924 (n + 1)).toNat (A000389 (A001156 n).toNat).toNat

end

end A016180.P7590307904929172310

/-! ## A016180.P6707470747698643461

`C(A001055(A001055(2*(n+2))), A326591(n))`
-/

namespace A016180.P6707470747698643461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001055 (A001055 (2 * (n + 2))).toNat).toNat (A326591 n).toNat

end

end A016180.P6707470747698643461

/-!
# A016181: Expansion of g.f. 1/((1-7*x)*(1-10*x)).

The programs for A016181, the canonical program `A016181.P12717746842307707311` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016181 has offset 0).

The definition of A016181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016181.P12717746842307707311

`10*a(n-1)+7^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016181

/-- `10*a(n-1)+7^n` -/
def P12717746842307707311.Spec : Prop :=
  ∀ n, (P12717746842307707311.a n : ℤ) = A016181 n

theorem P12717746842307707311.correct : P12717746842307707311.Spec := by
  intro n
  simp only [A016181]

end A016181

/-! ## A016181.P2624272726980037427

`(10^(n+1)-7^(n+1))/3`
-/

namespace A016181.P2624272726980037427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016181.P2624272726980037427

namespace A016181

/-- `(10^(n+1)-7^(n+1))/3` -/
def P2624272726980037427.Spec : Prop :=
  ∀ n, P2624272726980037427.a n = (A016181 n : ℚ)

theorem P2624272726980037427.correct : P2624272726980037427.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016181, Nat.add_sub_cancel, A016181.P2624272726980037427.a, A016181.P12717746842307707311.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016181, Nat.add_sub_cancel, A016181.P2624272726980037427.a, A016181.P12717746842307707311.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016181

/-! ## A016181.P1411162562453819261

`lcm(7, a(n-1))+10^n` with `a(0)=1`
-/

namespace A016181.P1411162562453819261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 10 ^ n

end

end A016181.P1411162562453819261

namespace A016181

/-- `lcm(7, a(n-1))+10^n` -/
def P1411162562453819261.Spec : Prop :=
  ∀ n, (P1411162562453819261.a n : ℤ) = A016181 n

end A016181

/-! ## A016181.P4266113112559769449

`1/3*A248341(n+1)`
-/

namespace A016181.P4266113112559769449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A248341 (n + 1) : ℚ)

end

end A016181.P4266113112559769449

namespace A016181

/-- `1/3*A248341(n+1)` -/
def P4266113112559769449.Spec : Prop :=
  ∀ n, P4266113112559769449.a n = (A016181 n : ℚ)

end A016181

/-! ## A016181.P17452520547570549721

`A000420(n)+5*2*a(n-1)` with `a(0)=1`
-/

namespace A016181.P17452520547570549721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000420 n + 5 * (2 * a (n - 1))

end

end A016181.P17452520547570549721

namespace A016181

/-- `A000420(n)+5*2*a(n-1)` -/
def P17452520547570549721.Spec : Prop :=
  ∀ n, P17452520547570549721.a n = A016181 n

end A016181

/-! ## A016181.P672401447385976686

`A102752(Δ[A000292(n+8)]-n+2*n+1)`
-/

namespace A016181.P672401447385976686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102752 (f1 (n + 1) - f1 n - (n : ℤ) + (2 * n + 1 : ℤ)).toNat

end

end A016181.P672401447385976686

namespace A016181

/-- `A102752(Δ[A000292(n+8)]-n+2*n+1)` -/
def P672401447385976686.Spec : Prop :=
  ∀ n, P672401447385976686.a n = A016181 n

end A016181

/-!
# A016182: Inverse of 2173rd cyclotomic polynomial.

The programs for A016182, there is no canonical definition to state claims against.
-/

/-! ## A016182.P4484417301043151076

`A015280(n-A181834(n+4))`
-/

namespace A016182.P4484417301043151076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015280 ((n : ℤ) - A181834 (n + 4)).toNat

end

end A016182.P4484417301043151076

/-! ## A016182.P8297064543183090676

`A000034(A105360(n+5))%2`
-/

namespace A016182.P8297064543183090676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 (A105360 (n + 5)).toNat) 2

end

end A016182.P8297064543183090676

/-! ## A016182.P3913686461130286788

`A175860(floor(sqrt(A169866(n+1))))`
-/

namespace A016182.P3913686461130286788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (Int.sqrt (A169866 (n + 1))).toNat

end

end A016182.P3913686461130286788

/-! ## A016182.P4338665616291224246

`∑[A014562(∑[A140446(n+1)])]`
-/

namespace A016182.P4338665616291224246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016182.P4338665616291224246

/-! ## A016182.P6403180767906259641

`A010052(C(A268708(2*n+1), 17))`
-/

namespace A016182.P6403180767906259641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Nat.choose (A268708 (2 * n + 1)).toNat 17)

end

end A016182.P6403180767906259641

/-! ## A016182.P5471439436885173343

`A355350(floor(∑[n]/A216497(n+1)))`
-/

namespace A016182.P5471439436885173343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A216497 (n + 1) : ℚ)⌋.toNat

end

end A016182.P5471439436885173343

/-! ## A016182.P6978077659759803401

`A392037(floor(∑[n]/A216497(n+1)))`
-/

namespace A016182.P6978077659759803401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392037 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A216497 (n + 1) : ℚ)⌋.toNat

end

end A016182.P6978077659759803401

/-! ## A016182.P6363101019944244235

`A183135(ceil(∑[n]/A216497(n+1)))`
-/

namespace A016182.P6363101019944244235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A216497 (n + 1) : ℚ)⌉.toNat

end

end A016182.P6363101019944244235

/-! ## A016182.P9518232687037512270

`A030300(A357118(n+1)+A324520(n+3))`
-/

namespace A016182.P9518232687037512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A357118 (n + 1) + A324520 (n + 3)).toNat

end

end A016182.P9518232687037512270

/-! ## A016182.P6256666009518366207

`C(A167439(2*(n+2)), A241690(A113722(n)))`
-/

namespace A016182.P6256666009518366207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A167439 (2 * (n + 2))).toNat (A241690 (A113722 n).toNat).toNat

end

end A016182.P6256666009518366207

/-!
# A016183: Expansion of g.f. 1/((1-7*x)*(1-11*x)).

The programs for A016183, the canonical program `A016183.P6986817148517752649` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016183 has offset 0).

The definition of A016183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016183.P6986817148517752649

`11*a(n-1)+7^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016183

/-- `11*a(n-1)+7^n` -/
def P6986817148517752649.Spec : Prop :=
  ∀ n, (P6986817148517752649.a n : ℤ) = A016183 n

theorem P6986817148517752649.correct : P6986817148517752649.Spec := by
  intro n
  simp only [A016183]

end A016183

/-! ## A016183.P1343213564027291674

`(11^(n+1)-7^(n+1))/4`
-/

namespace A016183.P1343213564027291674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 4

end

end A016183.P1343213564027291674

namespace A016183

/-- `(11^(n+1)-7^(n+1))/4` -/
def P1343213564027291674.Spec : Prop :=
  ∀ n, P1343213564027291674.a n = (A016183 n : ℚ)

theorem P1343213564027291674.correct : P1343213564027291674.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016183, Nat.add_sub_cancel, A016183.P1343213564027291674.a, A016183.P6986817148517752649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016183, Nat.add_sub_cancel, A016183.P1343213564027291674.a, A016183.P6986817148517752649.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016183

/-! ## A016183.P1222049310193178344

`lcm(11, a(n-1))+7^n` with `a(0)=1`
-/

namespace A016183.P1222049310193178344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 7 ^ n

end

end A016183.P1222049310193178344

namespace A016183

/-- `lcm(11, a(n-1))+7^n` -/
def P1222049310193178344.Spec : Prop :=
  ∀ n, (P1222049310193178344.a n : ℤ) = A016183 n

end A016183

/-! ## A016183.P12444338819444996798

`Δ[abs(18*a(n-1)-77*a(n-2)+1)]` with `a(0)=0, a(1)=1, a(2)=19`
-/

namespace A016183.P12444338819444996798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 19] fun n f1 =>
  |18 * f1 (n - 1) - 77 * f1 (n - 2) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016183.P12444338819444996798

namespace A016183

/-- `Δ[abs(18*a(n-1)-77*a(n-2)+1)]` -/
def P12444338819444996798.Spec : Prop :=
  ∀ n, P12444338819444996798.a n = A016183 n

end A016183

/-! ## A016183.P15901430592058685518

`∑[Δ[A155662(n)]/4]`
-/

namespace A016183.P15901430592058685518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155662 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016183.P15901430592058685518

namespace A016183

/-- `∑[Δ[A155662(n)]/4]` -/
def P15901430592058685518.Spec : Prop :=
  ∀ n, P15901430592058685518.a n = (A016183 n : ℚ)

end A016183

/-! ## A016183.P11279719050157440695

`a(n-1)+A000420(n)+5*2*a(n-1)` with `a(0)=1`
-/

namespace A016183.P11279719050157440695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000420 n + 5 * (2 * a (n - 1)))

end

end A016183.P11279719050157440695

namespace A016183

/-- `a(n-1)+A000420(n)+5*2*a(n-1)` -/
def P11279719050157440695.Spec : Prop :=
  ∀ n, P11279719050157440695.a n = A016183 n

end A016183

/-! ## A016183.P1729189831328655629

`2*A016146(n)-A016138(n)`
-/

namespace A016183.P1729189831328655629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016146 n - A016138 n

end

end A016183.P1729189831328655629

namespace A016183

/-- `2*A016146(n)-A016138(n)` -/
def P1729189831328655629.Spec : Prop :=
  ∀ n, P1729189831328655629.a n = A016183 n

end A016183

/-! ## A016183.P2713407527405896622

`Δ[∑[A139745(n)]/4]`
-/

namespace A016183.P2713407527405896622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139745 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016183.P2713407527405896622

namespace A016183

/-- `Δ[∑[A139745(n)]/4]` -/
def P2713407527405896622.Spec : Prop :=
  ∀ n, P2713407527405896622.a n = (A016183 n : ℚ)

end A016183

/-!
# A016184: Expansion of 1/((1-7*x)*(1-12*x)).

The programs for A016184, the canonical program `A016184.P11653724415668287470` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016184 has offset 0).

The definition of A016184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016184.P11653724415668287470

`12*a(n-1)+7^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016184

/-- `12*a(n-1)+7^n` -/
def P11653724415668287470.Spec : Prop :=
  ∀ n, (P11653724415668287470.a n : ℤ) = A016184 n

theorem P11653724415668287470.correct : P11653724415668287470.Spec := by
  intro n
  simp only [A016184]

end A016184

/-! ## A016184.P14774697566565257484

`(12^(n+1)-7^(n+1))/5`
-/

namespace A016184.P14774697566565257484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A016184.P14774697566565257484

namespace A016184

/-- `(12^(n+1)-7^(n+1))/5` -/
def P14774697566565257484.Spec : Prop :=
  ∀ n, P14774697566565257484.a n = (A016184 n : ℚ)

theorem P14774697566565257484.correct : P14774697566565257484.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016184, Nat.add_sub_cancel, A016184.P14774697566565257484.a, A016184.P11653724415668287470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016184, Nat.add_sub_cancel, A016184.P14774697566565257484.a, A016184.P11653724415668287470.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016184

/-! ## A016184.P11376960208158890775

`lcm(7, a(n-1))+12^n` with `a(0)=1`
-/

namespace A016184.P11376960208158890775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 12 ^ n

end

end A016184.P11376960208158890775

namespace A016184

/-- `lcm(7, a(n-1))+12^n` -/
def P11376960208158890775.Spec : Prop :=
  ∀ n, (P11376960208158890775.a n : ℤ) = A016184 n

end A016184

/-! ## A016184.P11340230308316589657

`A024075(n)+xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016184.P11340230308316589657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024075 n + Int.xor 1 (12 * a (n - 1))

end

end A016184.P11340230308316589657

namespace A016184

/-- `A024075(n)+xor(1, 12*a(n-1))` -/
def P11340230308316589657.Spec : Prop :=
  ∀ n, P11340230308316589657.a n = A016184 n

end A016184

/-! ## A016184.P18444808099164378914

`2*A016136(n)-A016130(n)`
-/

namespace A016184.P18444808099164378914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016136 n - A016130 n

end

end A016184.P18444808099164378914

namespace A016184

/-- `2*A016136(n)-A016130(n)` -/
def P18444808099164378914.Spec : Prop :=
  ∀ n, P18444808099164378914.a n = A016184 n

end A016184

/-!
# A016185: a(n) = 9^n - 8^n.

The programs for A016185, the canonical program `A016185.P15454333231645791196` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016185 has offset 0).

The definition of A016185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-8^n` (program `A016185.P15454333231645791196`, by `A016185.P15454333231645791196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016185.P15454333231645791196

`9^n-8^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016185

/-- `9^n-8^n` -/
def P15454333231645791196.Spec : Prop :=
  ∀ n, P15454333231645791196.a n = A016185 n

theorem P15454333231645791196.correct : P15454333231645791196.Spec := by
  intro n
  simp only [A016185]

end A016185

/-! ## A016185.P16398117409364395120

`abs(1-A155666(n))`
-/

namespace A016185.P16398117409364395120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155666 n|

end

end A016185.P16398117409364395120

namespace A016185

/-- `abs(1-A155666(n))` -/
def P16398117409364395120.Spec : Prop :=
  ∀ n, P16398117409364395120.a n = A016185 n

end A016185

/-! ## A016185.P13926478530216858814

`abs(A001018(n)-A001019(n))`
-/

namespace A016185.P13926478530216858814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A001019 n|

end

end A016185.P13926478530216858814

namespace A016185

/-- `abs(A001018(n)-A001019(n))` -/
def P13926478530216858814.Spec : Prop :=
  ∀ n, P13926478530216858814.a n = A016185 n

end A016185

/-! ## A016185.P9909170747629315504

`abs(A024089(n)-A024102(n))`
-/

namespace A016185.P9909170747629315504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024089 n - A024102 n|

end

end A016185.P9909170747629315504

namespace A016185

/-- `abs(A024089(n)-A024102(n))` -/
def P9909170747629315504.Spec : Prop :=
  ∀ n, P9909170747629315504.a n = A016185 n

end A016185

/-! ## A016185.P7146835199299210199

`abs(A034513(n)-A074510(n))`
-/

namespace A016185.P7146835199299210199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034513 n - A074510 n|

end

end A016185.P7146835199299210199

namespace A016185

/-- `abs(A034513(n)-A074510(n))` -/
def P7146835199299210199.Spec : Prop :=
  ∀ n, P7146835199299210199.a n = A016185 n

end A016185

/-! ## A016185.P15562065392249761993

`abs(A062395(n)-A062396(n))`
-/

namespace A016185.P15562065392249761993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062395 n - A062396 n|

end

end A016185.P15562065392249761993

namespace A016185

/-- `abs(A062395(n)-A062396(n))` -/
def P15562065392249761993.Spec : Prop :=
  ∀ n, P15562065392249761993.a n = A016185 n

end A016185

/-! ## A016185.P2569942550610766737

`abs(A074504(n)-A074505(n))`
-/

namespace A016185.P2569942550610766737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074504 n - A074505 n|

end

end A016185.P2569942550610766737

namespace A016185

/-- `abs(A074504(n)-A074505(n))` -/
def P2569942550610766737.Spec : Prop :=
  ∀ n, P2569942550610766737.a n = A016185 n

end A016185

/-! ## A016185.P17234258961176008911

`abs(A074514(n)-A074515(n))`
-/

namespace A016185.P17234258961176008911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074514 n - A074515 n|

end

end A016185.P17234258961176008911

namespace A016185

/-- `abs(A074514(n)-A074515(n))` -/
def P17234258961176008911.Spec : Prop :=
  ∀ n, P17234258961176008911.a n = A016185 n

end A016185

/-! ## A016185.P16986709043066587355

`abs(A074518(n)-A074519(n))`
-/

namespace A016185.P16986709043066587355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074518 n - A074519 n|

end

end A016185.P16986709043066587355

namespace A016185

/-- `abs(A074518(n)-A074519(n))` -/
def P16986709043066587355.Spec : Prop :=
  ∀ n, P16986709043066587355.a n = A016185 n

end A016185

/-! ## A016185.P18261045736403767094

`abs(A074535(n)-A074536(n))`
-/

namespace A016185.P18261045736403767094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074535 n - A074536 n|

end

end A016185.P18261045736403767094

namespace A016185

/-- `abs(A074535(n)-A074536(n))` -/
def P18261045736403767094.Spec : Prop :=
  ∀ n, P18261045736403767094.a n = A016185 n

end A016185

/-! ## A016185.P1472027600709958570

`abs(A074539(n)-A074540(n))`
-/

namespace A016185.P1472027600709958570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074539 n - A074540 n|

end

end A016185.P1472027600709958570

namespace A016185

/-- `abs(A074539(n)-A074540(n))` -/
def P1472027600709958570.Spec : Prop :=
  ∀ n, P1472027600709958570.a n = A016185 n

end A016185

/-! ## A016185.P3685632451055909857

`abs(A074542(n)-A074543(n))`
-/

namespace A016185.P3685632451055909857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074542 n - A074543 n|

end

end A016185.P3685632451055909857

namespace A016185

/-- `abs(A074542(n)-A074543(n))` -/
def P3685632451055909857.Spec : Prop :=
  ∀ n, P3685632451055909857.a n = A016185 n

end A016185

/-! ## A016185.P16935633485426569864

`abs(A074566(n)-A074567(n))`
-/

namespace A016185.P16935633485426569864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074566 n - A074567 n|

end

end A016185.P16935633485426569864

namespace A016185

/-- `abs(A074566(n)-A074567(n))` -/
def P16935633485426569864.Spec : Prop :=
  ∀ n, P16935633485426569864.a n = A016185 n

end A016185

/-! ## A016185.P5563317470553703193

`abs(A155635(n)-A155636(n))`
-/

namespace A016185.P5563317470553703193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155635 n - A155636 n|

end

end A016185.P5563317470553703193

namespace A016185

/-- `abs(A155635(n)-A155636(n))` -/
def P5563317470553703193.Spec : Prop :=
  ∀ n, P5563317470553703193.a n = A016185 n

end A016185

/-! ## A016185.P8817571247217109486

`abs(A155641(n)-A155642(n))`
-/

namespace A016185.P8817571247217109486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155641 n - A155642 n|

end

end A016185.P8817571247217109486

namespace A016185

/-- `abs(A155641(n)-A155642(n))` -/
def P8817571247217109486.Spec : Prop :=
  ∀ n, P8817571247217109486.a n = A016185 n

end A016185

/-! ## A016185.P16340044183256165493

`abs(A155646(n)-A155647(n))`
-/

namespace A016185.P16340044183256165493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155646 n - A155647 n|

end

end A016185.P16340044183256165493

namespace A016185

/-- `abs(A155646(n)-A155647(n))` -/
def P16340044183256165493.Spec : Prop :=
  ∀ n, P16340044183256165493.a n = A016185 n

end A016185

/-! ## A016185.P3325510379095654842

`abs(A155651(n)-A155652(n))`
-/

namespace A016185.P3325510379095654842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155651 n - A155652 n|

end

end A016185.P3325510379095654842

namespace A016185

/-- `abs(A155651(n)-A155652(n))` -/
def P3325510379095654842.Spec : Prop :=
  ∀ n, P3325510379095654842.a n = A016185 n

end A016185

/-! ## A016185.P16791938190247410296

`abs(A155655(n)-A155656(n))`
-/

namespace A016185.P16791938190247410296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155655 n - A155656 n|

end

end A016185.P16791938190247410296

namespace A016185

/-- `abs(A155655(n)-A155656(n))` -/
def P16791938190247410296.Spec : Prop :=
  ∀ n, P16791938190247410296.a n = A016185 n

end A016185

/-! ## A016185.P9258815827480279397

`abs(A155659(n)-A155660(n))`
-/

namespace A016185.P9258815827480279397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155659 n - A155660 n|

end

end A016185.P9258815827480279397

namespace A016185

/-- `abs(A155659(n)-A155660(n))` -/
def P9258815827480279397.Spec : Prop :=
  ∀ n, P9258815827480279397.a n = A016185 n

end A016185

/-! ## A016185.P13157763086322547137

`∑[A055275(n)-A055274(n)]`
-/

namespace A016185.P13157763086322547137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n - A055274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016185.P13157763086322547137

namespace A016185

/-- `∑[A055275(n)-A055274(n)]` -/
def P13157763086322547137.Spec : Prop :=
  ∀ n, P13157763086322547137.a n = A016185 n

end A016185

/-!
# A016186: Expansion of 1/((1-8*x)*(1-10*x)).

The programs for A016186, the canonical program `A016186.P11069675427174903073` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016186 has offset 0).

The definition of A016186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016186.P11069675427174903073

`5*10^n-4*8^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016186

/-- `5*10^n-4*8^n` -/
def P11069675427174903073.Spec : Prop :=
  ∀ n, P11069675427174903073.a n = A016186 n

theorem P11069675427174903073.correct : P11069675427174903073.Spec := by
  intro n
  simp only [A016186]

end A016186

/-! ## A016186.P18233138972793519908

`A081203(n+1)`
-/

namespace A016186.P18233138972793519908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 (n + 1)

end

end A016186.P18233138972793519908

namespace A016186

/-- `A081203(n+1)` -/
def P18233138972793519908.Spec : Prop :=
  ∀ n, P18233138972793519908.a n = A016186 n

end A016186

/-! ## A016186.P12127775281953594672

`∑[abs(Δ[A081203(n)])]`
-/

namespace A016186.P12127775281953594672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016186.P12127775281953594672

namespace A016186

/-- `∑[abs(Δ[A081203(n)])]` -/
def P12127775281953594672.Spec : Prop :=
  ∀ n, P12127775281953594672.a n = A016186 n

end A016186

/-! ## A016186.P1331306797083929951

`A248343(n+1)/2`
-/

namespace A016186.P1331306797083929951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248343 (n + 1) : ℚ) / 2

end

end A016186.P1331306797083929951

namespace A016186

/-- `A248343(n+1)/2` -/
def P1331306797083929951.Spec : Prop :=
  ∀ n, P1331306797083929951.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P3390981173085751988

`record[A081203(abs(1-n))]`
-/

namespace A016186.P3390981173085751988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081203 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016186.P3390981173085751988

namespace A016186

/-- `record[A081203(abs(1-n))]` -/
def P3390981173085751988.Spec : Prop :=
  ∀ n, P3390981173085751988.a n = A016186 n

end A016186

/-! ## A016186.P15728986646357919862

`floor(A155667(n+1)/2)`
-/

namespace A016186.P15728986646357919862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155667 (n + 1) : ℚ) / 2⌋

end

end A016186.P15728986646357919862

namespace A016186

/-- `floor(A155667(n+1)/2)` -/
def P15728986646357919862.Spec : Prop :=
  ∀ n, P15728986646357919862.a n = A016186 n

end A016186

/-! ## A016186.P5461082662820978587

`∑[A257285(n)]*2^n`
-/

namespace A016186.P5461082662820978587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (2 ^ n : ℤ)

end

end A016186.P5461082662820978587

namespace A016186

/-- `∑[A257285(n)]*2^n` -/
def P5461082662820978587.Spec : Prop :=
  ∀ n, P5461082662820978587.a n = A016186 n

end A016186

/-! ## A016186.P4403253511702128857

`abs(A011557(n)+8*a(n-1))` with `a(0)=1`
-/

namespace A016186.P4403253511702128857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A011557 n + 8 * a (n - 1)|

end

end A016186.P4403253511702128857

namespace A016186

/-- `abs(A011557(n)+8*a(n-1))` -/
def P4403253511702128857.Spec : Prop :=
  ∀ n, P4403253511702128857.a n = A016186 n

end A016186

/-! ## A016186.P17737223895467684901

`A000079(n)*A005060(n+1)`
-/

namespace A016186.P17737223895467684901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005060 (n + 1)

end

end A016186.P17737223895467684901

namespace A016186

/-- `A000079(n)*A005060(n+1)` -/
def P17737223895467684901.Spec : Prop :=
  ∀ n, P17737223895467684901.a n = A016186 n

end A016186

/-! ## A016186.P1801573740308464646

`A005060(n+1)*A011782(n+1)`
-/

namespace A016186.P1801573740308464646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 (n + 1) * A011782 (n + 1)

end

end A016186.P1801573740308464646

namespace A016186

/-- `A005060(n+1)*A011782(n+1)` -/
def P1801573740308464646.Spec : Prop :=
  ∀ n, P1801573740308464646.a n = A016186 n

end A016186

/-! ## A016186.P7297408045377918787

`(A054401(n+1)+1)*A000079(n)`
-/

namespace A016186.P7297408045377918787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054401 (n + 1) + 1) * A000079 n

end

end A016186.P7297408045377918787

namespace A016186

/-- `(A054401(n+1)+1)*A000079(n)` -/
def P7297408045377918787.Spec : Prop :=
  ∀ n, P7297408045377918787.a n = A016186 n

end A016186

/-! ## A016186.P7782761289520283028

`A005060(n+1)*A131577(n+1)`
-/

namespace A016186.P7782761289520283028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 (n + 1) * A131577 (n + 1)

end

end A016186.P7782761289520283028

namespace A016186

/-- `A005060(n+1)*A131577(n+1)` -/
def P7782761289520283028.Spec : Prop :=
  ∀ n, P7782761289520283028.a n = A016186 n

end A016186

/-! ## A016186.P16386682648297065142

`(A054401(n+1)+1)*Δ[A000225(n)]`
-/

namespace A016186.P16386682648297065142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054401 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A016186.P16386682648297065142

namespace A016186

/-- `(A054401(n+1)+1)*Δ[A000225(n)]` -/
def P16386682648297065142.Spec : Prop :=
  ∀ n, P16386682648297065142.a n = A016186 n

end A016186

/-! ## A016186.P7606479907932745332

`(A011557(n+1)-A001018(n+1))/2`
-/

namespace A016186.P7606479907932745332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) - A001018 (n + 1) : ℚ) / 2

end

end A016186.P7606479907932745332

namespace A016186

/-- `(A011557(n+1)-A001018(n+1))/2` -/
def P7606479907932745332.Spec : Prop :=
  ∀ n, P7606479907932745332.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P4090554522625741191

`(A024115(n+1)-A024089(n+1))/2`
-/

namespace A016186.P4090554522625741191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024115 (n + 1) - A024089 (n + 1) : ℚ) / 2

end

end A016186.P4090554522625741191

namespace A016186

/-- `(A024115(n+1)-A024089(n+1))/2` -/
def P4090554522625741191.Spec : Prop :=
  ∀ n, P4090554522625741191.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P16621204466793504907

`(A062397(n+1)-A062395(n+1))/2`
-/

namespace A016186.P16621204466793504907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062397 (n + 1) - A062395 (n + 1) : ℚ) / 2

end

end A016186.P16621204466793504907

namespace A016186

/-- `(A062397(n+1)-A062395(n+1))/2` -/
def P16621204466793504907.Spec : Prop :=
  ∀ n, P16621204466793504907.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P4115885126309998037

`(A155594(n+1)-A155592(n+1))/2`
-/

namespace A016186.P4115885126309998037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155594 (n + 1) - A155592 (n + 1) : ℚ) / 2

end

end A016186.P4115885126309998037

namespace A016186

/-- `(A155594(n+1)-A155592(n+1))/2` -/
def P4115885126309998037.Spec : Prop :=
  ∀ n, P4115885126309998037.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P5145854818634991548

`(A155601(n+1)-A155599(n+1))/2`
-/

namespace A016186.P5145854818634991548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155601 (n + 1) - A155599 (n + 1) : ℚ) / 2

end

end A016186.P5145854818634991548

namespace A016186

/-- `(A155601(n+1)-A155599(n+1))/2` -/
def P5145854818634991548.Spec : Prop :=
  ∀ n, P5145854818634991548.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P15278211976423315785

`(A155608(n+1)-A155606(n+1))/2`
-/

namespace A016186.P15278211976423315785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155608 (n + 1) - A155606 (n + 1) : ℚ) / 2

end

end A016186.P15278211976423315785

namespace A016186

/-- `(A155608(n+1)-A155606(n+1))/2` -/
def P15278211976423315785.Spec : Prop :=
  ∀ n, P15278211976423315785.a n = (A016186 n : ℚ)

end A016186

/-! ## A016186.P5166468622638531086

`(A155615(n+1)-A155613(n+1))/2`
-/

namespace A016186.P5166468622638531086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155615 (n + 1) - A155613 (n + 1) : ℚ) / 2

end

end A016186.P5166468622638531086

namespace A016186

/-- `(A155615(n+1)-A155613(n+1))/2` -/
def P5166468622638531086.Spec : Prop :=
  ∀ n, P5166468622638531086.a n = (A016186 n : ℚ)

end A016186

/-!
# A016187: Expansion of 1/((1-8*x)*(1-11*x)).

The programs for A016187, the canonical program `A016187.P11001811723133386944` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016187 has offset 0).

The definition of A016187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016187.P11001811723133386944

`11*a(n-1)+8^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016187

/-- `11*a(n-1)+8^n` -/
def P11001811723133386944.Spec : Prop :=
  ∀ n, (P11001811723133386944.a n : ℤ) = A016187 n

theorem P11001811723133386944.correct : P11001811723133386944.Spec := by
  intro n
  simp only [A016187]

end A016187

/-! ## A016187.P11871065456752845932

`(11^(n+1)-8^(n+1))/3`
-/

namespace A016187.P11871065456752845932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (8 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016187.P11871065456752845932

namespace A016187

/-- `(11^(n+1)-8^(n+1))/3` -/
def P11871065456752845932.Spec : Prop :=
  ∀ n, P11871065456752845932.a n = (A016187 n : ℚ)

theorem P11871065456752845932.correct : P11871065456752845932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016187, Nat.add_sub_cancel, A016187.P11871065456752845932.a, A016187.P11001811723133386944.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016187, Nat.add_sub_cancel, A016187.P11871065456752845932.a, A016187.P11001811723133386944.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016187

/-! ## A016187.P7703712537434477585

`lcm(11, a(n-1))+8^n` with `a(0)=1`
-/

namespace A016187.P7703712537434477585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 11 (a (n - 1)) + 8 ^ n

end

end A016187.P7703712537434477585

namespace A016187

/-- `lcm(11, a(n-1))+8^n` -/
def P7703712537434477585.Spec : Prop :=
  ∀ n, (P7703712537434477585.a n : ℤ) = A016187 n

end A016187

/-! ## A016187.P14592736915626484056

`floor(A139746(n+1)/3)`
-/

namespace A016187.P14592736915626484056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139746 (n + 1) : ℚ) / 3⌋

end

end A016187.P14592736915626484056

namespace A016187

/-- `floor(A139746(n+1)/3)` -/
def P14592736915626484056.Spec : Prop :=
  ∀ n, P14592736915626484056.a n = A016187 n

end A016187

/-! ## A016187.P15798450014208777329

`A008683(63*(n+1))+A139746(n+1)/3`
-/

namespace A016187.P15798450014208777329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (63 * (n + 1)) : ℚ) + (A139746 (n + 1) : ℚ) / 3

end

end A016187.P15798450014208777329

namespace A016187

/-- `A008683(63*(n+1))+A139746(n+1)/3` -/
def P15798450014208777329.Spec : Prop :=
  ∀ n, P15798450014208777329.a n = (A016187 n : ℚ)

end A016187

/-!
# A016188: Expansion of 1/((1-8*x)*(1-12*x)).

The programs for A016188, the canonical program `A016188.P11987215803781121672` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016188 has offset 0).

The definition of A016188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016188.P11987215803781121672

`3*12^n-2*8^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016188

/-- `3*12^n-2*8^n` -/
def P11987215803781121672.Spec : Prop :=
  ∀ n, P11987215803781121672.a n = A016188 n

theorem P11987215803781121672.correct : P11987215803781121672.Spec := by
  intro n
  simp only [A016188]

end A016188

/-! ## A016188.P11858060939264676086

`2^n*A016149(n)`
-/

namespace A016188.P11858060939264676086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016149 n

end

end A016188.P11858060939264676086

namespace A016188

/-- `2^n*A016149(n)` -/
def P11858060939264676086.Spec : Prop :=
  ∀ n, P11858060939264676086.a n = A016188 n

end A016188

/-! ## A016188.P11266027244994728189

`2^n*A081199(n+1)`
-/

namespace A016188.P11266027244994728189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081199 (n + 1)

end

end A016188.P11266027244994728189

namespace A016188

/-- `2^n*A081199(n+1)` -/
def P11266027244994728189.Spec : Prop :=
  ∀ n, P11266027244994728189.a n = A016188 n

end A016188

/-! ## A016188.P14003756420682527451

`4^n*A001047(n+1)`
-/

namespace A016188.P14003756420682527451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001047 (n + 1)

end

end A016188.P14003756420682527451

namespace A016188

/-- `4^n*A001047(n+1)` -/
def P14003756420682527451.Spec : Prop :=
  ∀ n, P14003756420682527451.a n = A016188 n

end A016188

/-! ## A016188.P12255839803507049057

`Δ[A134063(n+1)]*4^n`
-/

namespace A016188.P12255839803507049057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (4 ^ n : ℤ)

end

end A016188.P12255839803507049057

namespace A016188

/-- `Δ[A134063(n+1)]*4^n` -/
def P12255839803507049057.Spec : Prop :=
  ∀ n, P12255839803507049057.a n = A016188 n

end A016188

/-! ## A016188.P1557291772073231098

`lcm(A122803(n)², A016149(n))`
-/

namespace A016188.P1557291772073231098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122803 n ^ 2) (A016149 n)

end

end A016188.P1557291772073231098

namespace A016188

/-- `lcm(A122803(n)², A016149(n))` -/
def P1557291772073231098.Spec : Prop :=
  ∀ n, (P1557291772073231098.a n : ℤ) = A016188 n

end A016188

/-! ## A016188.P7550466519315560359

`∑[A027649(n)]*A000302(n)`
-/

namespace A016188.P7550466519315560359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000302 n

end

end A016188.P7550466519315560359

namespace A016188

/-- `∑[A027649(n)]*A000302(n)` -/
def P7550466519315560359.Spec : Prop :=
  ∀ n, P7550466519315560359.a n = A016188 n

end A016188

/-! ## A016188.P9750342565790422983

`A016149(n)*A131577(n+1)`
-/

namespace A016188.P9750342565790422983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n * A131577 (n + 1)

end

end A016188.P9750342565790422983

namespace A016188

/-- `A016149(n)*A131577(n+1)` -/
def P9750342565790422983.Spec : Prop :=
  ∀ n, P9750342565790422983.a n = A016188 n

end A016188

/-! ## A016188.P14821783445901785295

`A000079(n)²*∑[A027649(n)]`
-/

namespace A016188.P14821783445901785295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016188.P14821783445901785295

namespace A016188

/-- `A000079(n)²*∑[A027649(n)]` -/
def P14821783445901785295.Spec : Prop :=
  ∀ n, P14821783445901785295.a n = A016188 n

end A016188

/-! ## A016188.P13646074641362254284

`A122803(n)²*∑[A027649(n)]`
-/

namespace A016188.P13646074641362254284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016188.P13646074641362254284

namespace A016188

/-- `A122803(n)²*∑[A027649(n)]` -/
def P13646074641362254284.Spec : Prop :=
  ∀ n, P13646074641362254284.a n = A016188 n

end A016188

/-!
# A016189: a(n) = 10^n - 9^n.

The programs for A016189, the canonical program `A016189.P6022811113108631722` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016189 has offset 0).

The definition of A016189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-9^n` (program `A016189.P6022811113108631722`, by `A016189.P6022811113108631722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016189.P6022811113108631722

`10^n-9^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016189

/-- `10^n-9^n` -/
def P6022811113108631722.Spec : Prop :=
  ∀ n, P6022811113108631722.a n = A016189 n

theorem P6022811113108631722.correct : P6022811113108631722.Spec := by
  intro n
  simp only [A016189]

end A016189

/-! ## A016189.P4507045669119175159

`abs(1-A155671(n))`
-/

namespace A016189.P4507045669119175159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155671 n|

end

end A016189.P4507045669119175159

namespace A016189

/-- `abs(1-A155671(n))` -/
def P4507045669119175159.Spec : Prop :=
  ∀ n, P4507045669119175159.a n = A016189 n

end A016189

/-! ## A016189.P5772743765135625986

`abs(A001019(n)-A011557(n))`
-/

namespace A016189.P5772743765135625986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A011557 n|

end

end A016189.P5772743765135625986

namespace A016189

/-- `abs(A001019(n)-A011557(n))` -/
def P5772743765135625986.Spec : Prop :=
  ∀ n, P5772743765135625986.a n = A016189 n

end A016189

/-! ## A016189.P10540995758169832570

`abs(A024102(n)-A024115(n))`
-/

namespace A016189.P10540995758169832570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024102 n - A024115 n|

end

end A016189.P10540995758169832570

namespace A016189

/-- `abs(A024102(n)-A024115(n))` -/
def P10540995758169832570.Spec : Prop :=
  ∀ n, P10540995758169832570.a n = A016189 n

end A016189

/-! ## A016189.P1168268078140143943

`abs(A024105(n)-A024118(n))`
-/

namespace A016189.P1168268078140143943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024105 n - A024118 n|

end

end A016189.P1168268078140143943

namespace A016189

/-- `abs(A024105(n)-A024118(n))` -/
def P1168268078140143943.Spec : Prop :=
  ∀ n, P1168268078140143943.a n = A016189 n

end A016189

/-! ## A016189.P66299371218284804

`abs(A062396(n)-A062397(n))`
-/

namespace A016189.P66299371218284804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062396 n - A062397 n|

end

end A016189.P66299371218284804

namespace A016189

/-- `abs(A062396(n)-A062397(n))` -/
def P66299371218284804.Spec : Prop :=
  ∀ n, P66299371218284804.a n = A016189 n

end A016189

/-! ## A016189.P7390479888009979447

`abs(A155593(n)-A155594(n))`
-/

namespace A016189.P7390479888009979447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155593 n - A155594 n|

end

end A016189.P7390479888009979447

namespace A016189

/-- `abs(A155593(n)-A155594(n))` -/
def P7390479888009979447.Spec : Prop :=
  ∀ n, P7390479888009979447.a n = A016189 n

end A016189

/-! ## A016189.P5784721770348863948

`abs(A155607(n)-A155608(n))`
-/

namespace A016189.P5784721770348863948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155607 n - A155608 n|

end

end A016189.P5784721770348863948

namespace A016189

/-- `abs(A155607(n)-A155608(n))` -/
def P5784721770348863948.Spec : Prop :=
  ∀ n, P5784721770348863948.a n = A016189 n

end A016189

/-! ## A016189.P10864428790646018242

`abs(A155614(n)-A155615(n))`
-/

namespace A016189.P10864428790646018242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155614 n - A155615 n|

end

end A016189.P10864428790646018242

namespace A016189

/-- `abs(A155614(n)-A155615(n))` -/
def P10864428790646018242.Spec : Prop :=
  ∀ n, P10864428790646018242.a n = A016189 n

end A016189

/-! ## A016189.P4469247577961115746

`abs(A155621(n)-A155620(n))`
-/

namespace A016189.P4469247577961115746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155621 n - A155620 n|

end

end A016189.P4469247577961115746

namespace A016189

/-- `abs(A155621(n)-A155620(n))` -/
def P4469247577961115746.Spec : Prop :=
  ∀ n, P4469247577961115746.a n = A016189 n

end A016189

/-! ## A016189.P5980621406790412872

`abs(A155636(n)-A155637(n))`
-/

namespace A016189.P5980621406790412872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155636 n - A155637 n|

end

end A016189.P5980621406790412872

namespace A016189

/-- `abs(A155636(n)-A155637(n))` -/
def P5980621406790412872.Spec : Prop :=
  ∀ n, P5980621406790412872.a n = A016189 n

end A016189

/-! ## A016189.P1261541059873119577

`abs(A155642(n)-A155643(n))`
-/

namespace A016189.P1261541059873119577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155642 n - A155643 n|

end

end A016189.P1261541059873119577

namespace A016189

/-- `abs(A155642(n)-A155643(n))` -/
def P1261541059873119577.Spec : Prop :=
  ∀ n, P1261541059873119577.a n = A016189 n

end A016189

/-! ## A016189.P5190094752261096596

`abs(A155647(n)-A155648(n))`
-/

namespace A016189.P5190094752261096596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155647 n - A155648 n|

end

end A016189.P5190094752261096596

namespace A016189

/-- `abs(A155647(n)-A155648(n))` -/
def P5190094752261096596.Spec : Prop :=
  ∀ n, P5190094752261096596.a n = A016189 n

end A016189

/-! ## A016189.P9551554557092998035

`abs(A155652(n)-A155653(n))`
-/

namespace A016189.P9551554557092998035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155652 n - A155653 n|

end

end A016189.P9551554557092998035

namespace A016189

/-- `abs(A155652(n)-A155653(n))` -/
def P9551554557092998035.Spec : Prop :=
  ∀ n, P9551554557092998035.a n = A016189 n

end A016189

/-! ## A016189.P6514082344827938170

`record[A286507(n)-A000244(n)]`
-/

namespace A016189.P6514082344827938170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016189.P6514082344827938170

namespace A016189

/-- `record[A286507(n)-A000244(n)]` -/
def P6514082344827938170.Spec : Prop :=
  ∀ n, P6514082344827938170.a n = A016189 n

end A016189

/-! ## A016189.P12631674475953259856

`Δ[A217094(n)/9]`
-/

namespace A016189.P12631674475953259856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217094 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016189.P12631674475953259856

namespace A016189

/-- `Δ[A217094(n)/9]` -/
def P12631674475953259856.Spec : Prop :=
  ∀ n, P12631674475953259856.a n = (A016189 n : ℚ)

end A016189

/-! ## A016189.P555797101078285639

`A050720(2*(n+1))/9`
-/

namespace A016189.P555797101078285639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050720 (2 * (n + 1)) : ℚ) / 9

end

end A016189.P555797101078285639

namespace A016189

/-- `A050720(2*(n+1))/9` -/
def P555797101078285639.Spec : Prop :=
  ∀ n, P555797101078285639.a n = (A016189 n : ℚ)

end A016189

/-! ## A016189.P12548569113714534562

`abs(A155656(n)-A155657(n))`
-/

namespace A016189.P12548569113714534562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155656 n - A155657 n|

end

end A016189.P12548569113714534562

namespace A016189

/-- `abs(A155656(n)-A155657(n))` -/
def P12548569113714534562.Spec : Prop :=
  ∀ n, P12548569113714534562.a n = A016189 n

end A016189

/-!
# A016190: Expansion of 1/((1-9*x)*(1-11*x)).

The programs for A016190, the canonical program `A016190.P18065768570277983494` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016190 has offset 0).

The definition of A016190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016190.P18065768570277983494

`11*a(n-1)+9^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016190

/-- `11*a(n-1)+9^n` -/
def P18065768570277983494.Spec : Prop :=
  ∀ n, (P18065768570277983494.a n : ℤ) = A016190 n

theorem P18065768570277983494.correct : P18065768570277983494.Spec := by
  intro n
  simp only [A016190]

end A016190

/-! ## A016190.P3923873619362987097

`(11^(n+1)-9^(n+1))/2`
-/

namespace A016190.P3923873619362987097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 1) : ℤ) - (9 ^ (n + 1) : ℤ) : ℚ) / 2

end

end A016190.P3923873619362987097

namespace A016190

/-- `(11^(n+1)-9^(n+1))/2` -/
def P3923873619362987097.Spec : Prop :=
  ∀ n, P3923873619362987097.a n = (A016190 n : ℚ)

theorem P3923873619362987097.correct : P3923873619362987097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016190, Nat.add_sub_cancel, A016190.P3923873619362987097.a, A016190.P18065768570277983494.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016190, Nat.add_sub_cancel, A016190.P3923873619362987097.a, A016190.P18065768570277983494.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016190

/-! ## A016190.P12301083246887312199

`Δ[abs(20*a(n-1)-99*a(n-2)+1)]` with `a(0)=0, a(1)=1, a(2)=21`
-/

namespace A016190.P12301083246887312199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 21] fun n f1 =>
  |20 * f1 (n - 1) - 99 * f1 (n - 2) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016190.P12301083246887312199

namespace A016190

/-- `Δ[abs(20*a(n-1)-99*a(n-2)+1)]` -/
def P12301083246887312199.Spec : Prop :=
  ∀ n, P12301083246887312199.a n = A016190 n

end A016190

/-! ## A016190.P6693793115409470387

`A161999(2*n+3)`
-/

namespace A016190.P6693793115409470387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (2 * n + 3)

end

end A016190.P6693793115409470387

namespace A016190

/-- `A161999(2*n+3)` -/
def P6693793115409470387.Spec : Prop :=
  ∀ n, P6693793115409470387.a n = A016190 n

end A016190

/-! ## A016190.P17856241353054761189

`floor(A139747(n+1)/2)`
-/

namespace A016190.P17856241353054761189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139747 (n + 1) : ℚ) / 2⌋

end

end A016190.P17856241353054761189

namespace A016190

/-- `floor(A139747(n+1)/2)` -/
def P17856241353054761189.Spec : Prop :=
  ∀ n, P17856241353054761189.a n = A016190 n

end A016190

/-! ## A016190.P13021502741639236822

`record[A161999(and(n, n+1)+3)]`
-/

namespace A016190.P13021502741639236822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (Nat.land n (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016190.P13021502741639236822

namespace A016190

/-- `record[A161999(and(n, n+1)+3)]` -/
def P13021502741639236822.Spec : Prop :=
  ∀ n, P13021502741639236822.a n = A016190 n

end A016190

/-! ## A016190.P946940014398699922

`record[A161999(A004442(n+3))]`
-/

namespace A016190.P946940014398699922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161999 (A004442 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A016190.P946940014398699922

namespace A016190

/-- `record[A161999(A004442(n+3))]` -/
def P946940014398699922.Spec : Prop :=
  ∀ n, P946940014398699922.a n = A016190 n

end A016190

/-! ## A016190.P15109046840499213757

`A001020(n+1)-A081192(n+1)`
-/

namespace A016190.P15109046840499213757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (n + 1) - A081192 (n + 1)

end

end A016190.P15109046840499213757

namespace A016190

/-- `A001020(n+1)-A081192(n+1)` -/
def P15109046840499213757.Spec : Prop :=
  ∀ n, P15109046840499213757.a n = A016190 n

end A016190

/-! ## A016190.P917967989079076009

`A081192(n+1)-A001019(n+1)`
-/

namespace A016190.P917967989079076009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081192 (n + 1) - A001019 (n + 1)

end

end A016190.P917967989079076009

namespace A016190

/-- `A081192(n+1)-A001019(n+1)` -/
def P917967989079076009.Spec : Prop :=
  ∀ n, P917967989079076009.a n = A016190 n

end A016190

/-!
# A016191: Expansion of g.f. 1/((1-9*x)*(1-12*x)).

The programs for A016191, the canonical program `A016191.P11087920460936311115` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016191 has offset 0).

The definition of A016191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016191.P11087920460936311115

`12*a(n-1)+9^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016191

/-- `12*a(n-1)+9^n` -/
def P11087920460936311115.Spec : Prop :=
  ∀ n, (P11087920460936311115.a n : ℤ) = A016191 n

theorem P11087920460936311115.correct : P11087920460936311115.Spec := by
  intro n
  simp only [A016191]

end A016191

/-! ## A016191.P9864055057855158330

`(12^(n+1)-9^(n+1))/3`
-/

namespace A016191.P9864055057855158330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 1) : ℤ) - (9 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A016191.P9864055057855158330

namespace A016191

/-- `(12^(n+1)-9^(n+1))/3` -/
def P9864055057855158330.Spec : Prop :=
  ∀ n, P9864055057855158330.a n = (A016191 n : ℚ)

theorem P9864055057855158330.correct : P9864055057855158330.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016191, Nat.add_sub_cancel, A016191.P9864055057855158330.a, A016191.P11087920460936311115.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016191, Nat.add_sub_cancel, A016191.P9864055057855158330.a, A016191.P11087920460936311115.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016191

/-! ## A016191.P1783052194727039464

`3^n*A005061(n+1)`
-/

namespace A016191.P1783052194727039464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A005061 (n + 1)

end

end A016191.P1783052194727039464

namespace A016191

/-- `3^n*A005061(n+1)` -/
def P1783052194727039464.Spec : Prop :=
  ∀ n, P1783052194727039464.a n = A016191 n

end A016191

/-! ## A016191.P9168112331094999770

`A024101(n)+xor(1, 12*a(n-1))` with `a(0)=1`
-/

namespace A016191.P9168112331094999770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024101 n + Int.xor 1 (12 * a (n - 1))

end

end A016191.P9168112331094999770

namespace A016191

/-- `A024101(n)+xor(1, 12*a(n-1))` -/
def P9168112331094999770.Spec : Prop :=
  ∀ n, P9168112331094999770.a n = A016191 n

end A016191

/-! ## A016191.P9520846325200525901

`lcm(∑[A255463(n)], A000244(n))`
-/

namespace A016191.P9520846325200525901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000244 n)

end

end A016191.P9520846325200525901

namespace A016191

/-- `lcm(∑[A255463(n)], A000244(n))` -/
def P9520846325200525901.Spec : Prop :=
  ∀ n, (P9520846325200525901.a n : ℤ) = A016191 n

end A016191

/-! ## A016191.P10861394699908833506

`A005061(n+1)*A083658(2*n)`
-/

namespace A016191.P10861394699908833506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A083658 (2 * n)

end

end A016191.P10861394699908833506

namespace A016191

/-- `A005061(n+1)*A083658(2*n)` -/
def P10861394699908833506.Spec : Prop :=
  ∀ n, P10861394699908833506.a n = A016191 n

end A016191

/-! ## A016191.P5154138719787494437

`A005061(n+1)*A108411(2*n)`
-/

namespace A016191.P5154138719787494437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A108411 (2 * n)

end

end A016191.P5154138719787494437

namespace A016191

/-- `A005061(n+1)*A108411(2*n)` -/
def P5154138719787494437.Spec : Prop :=
  ∀ n, P5154138719787494437.a n = A016191 n

end A016191

/-! ## A016191.P5601684638375296842

`A005061(n+1)*A254006(2*n)`
-/

namespace A016191.P5601684638375296842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A254006 (2 * n)

end

end A016191.P5601684638375296842

namespace A016191

/-- `A005061(n+1)*A254006(2*n)` -/
def P5601684638375296842.Spec : Prop :=
  ∀ n, P5601684638375296842.a n = A016191 n

end A016191

/-! ## A016191.P2053598851426894739

`lcm(Δ[A003462(n)], A167762(2*(n+1)))`
-/

namespace A016191.P2053598851426894739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A167762 (2 * (n + 1)))

end

end A016191.P2053598851426894739

namespace A016191

/-- `lcm(Δ[A003462(n)], A167762(2*(n+1)))` -/
def P2053598851426894739.Spec : Prop :=
  ∀ n, (P2053598851426894739.a n : ℤ) = A016191 n

end A016191

/-! ## A016191.P3391450954692387978

`(A099621(n+1)+A099621(n))*A000244(n)`
-/

namespace A016191.P3391450954692387978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099621 (n + 1) + A099621 n) * A000244 n

end

end A016191.P3391450954692387978

namespace A016191

/-- `(A099621(n+1)+A099621(n))*A000244(n)` -/
def P3391450954692387978.Spec : Prop :=
  ∀ n, P3391450954692387978.a n = A016191 n

end A016191

/-!
# A016192: Inverse of 2183rd cyclotomic polynomial.

The programs for A016192, there is no canonical definition to state claims against.
-/

/-! ## A016192.P14491514547160399998

`1-floor(∑[A086016(A354803(n+1))]/3)`
-/

namespace A016192.P14491514547160399998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A354803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A016192.P14491514547160399998

/-! ## A016192.P6229029183321769281

`A015970(A140200(n+3)+5)`
-/

namespace A016192.P6229029183321769281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A140200 (n + 3) + 5).toNat

end

end A016192.P6229029183321769281

/-! ## A016192.P10351556630208602505

`round(ceil(sqrt(2*n+3)+n)/A367917(n+4))`
-/

namespace A016192.P10351556630208602505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈Real.sqrt (2 * n + 3 : ℝ) + (n : ℝ)⌉ : ℚ) / (A367917 (n + 4) : ℚ))

end

end A016192.P10351556630208602505

/-! ## A016192.P11828486032906529552

`3-A055642(A375408(n+1))`
-/

namespace A016192.P11828486032906529552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A055642 (A375408 (n + 1)).toNat

end

end A016192.P11828486032906529552

/-! ## A016192.P1502905750200985345

`A286400(A022296(n+7)+1)`
-/

namespace A016192.P1502905750200985345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A022296 (n + 7) + 1).toNat

end

end A016192.P1502905750200985345

/-! ## A016192.P15611428159424409922

`A010054(A153675(n+4)^5)`
-/

namespace A016192.P15611428159424409922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A153675 (n + 4) ^ 5).toNat

end

end A016192.P15611428159424409922

/-! ## A016192.P12769283498429020850

`∑[A240328(A356842(n+1))]+1`
-/

namespace A016192.P12769283498429020850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A356842 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A016192.P12769283498429020850

/-! ## A016192.P14493165303526983355

`A209229(∑[A094497(3*n+2)])`
-/

namespace A016192.P14493165303526983355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A016192.P14493165303526983355

/-! ## A016192.P5570957886992420011

`A014256(A113730(n+1))^A113736(n+4)`
-/

namespace A016192.P5570957886992420011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014256 (A113730 (n + 1)).toNat : ℚ) ^ (A113736 (n + 4) : ℤ)

end

end A016192.P5570957886992420011

/-!
# A016193: Inverse of 2184th cyclotomic polynomial.

The programs for A016193, there is no canonical definition to state claims against.
-/

/-! ## A016193.P17954225173258096806

`A015101(A004525(n))`
-/

namespace A016193.P17954225173258096806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A004525 n).toNat

end

end A016193.P17954225173258096806

/-! ## A016193.P9657837564614342306

`A015101(A057979(n+1))`
-/

namespace A016193.P9657837564614342306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A057979 (n + 1)).toNat

end

end A016193.P9657837564614342306

/-! ## A016193.P1351520974734337660

`A015101(A116921(n+1))`
-/

namespace A016193.P1351520974734337660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A116921 (n + 1)).toNat

end

end A016193.P1351520974734337660

/-! ## A016193.P15203191741871622569

`A015101(gcd(n, ∑[n]))`
-/

namespace A016193.P15203191741871622569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016193.P15203191741871622569

/-! ## A016193.P15132438505066398895

`A015101(A026741(n))`
-/

namespace A016193.P15132438505066398895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A026741 n).toNat

end

end A016193.P15132438505066398895

/-! ## A016193.P16341653222666649467

`A015101(A174239(n+1))`
-/

namespace A016193.P16341653222666649467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A174239 (n + 1)).toNat

end

end A016193.P16341653222666649467

/-! ## A016193.P15374441050912430564

`A015647(A160079(n))`
-/

namespace A016193.P15374441050912430564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A160079 n).toNat

end

end A016193.P15374441050912430564

/-! ## A016193.P11608279584999460147

`A015647(A342131(n))`
-/

namespace A016193.P11608279584999460147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A342131 n).toNat

end

end A016193.P11608279584999460147

/-! ## A016193.P11094063304618991275

`A015101(A186813(n))`
-/

namespace A016193.P11094063304618991275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015101 (A186813 n).toNat

end

end A016193.P11094063304618991275

/-!
# A016194: Inverse of 2185th cyclotomic polynomial.

The programs for A016194, there is no canonical definition to state claims against.
-/

/-! ## A016194.P16733410512145247950

`A011647(A222228(n))^A004729(n)`
-/

namespace A016194.P16733410512145247950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011647 (A222228 n).toNat : ℚ) ^ (A004729 n : ℤ)

end

end A016194.P16733410512145247950

/-! ## A016194.P16667112884422329491

`A011647(A256577(n))`
-/

namespace A016194.P16667112884422329491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A256577 n).toNat

end

end A016194.P16667112884422329491

/-! ## A016194.P3276555074882692579

`A011647(A066566(n+1))`
-/

namespace A016194.P3276555074882692579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A066566 (n + 1)).toNat

end

end A016194.P3276555074882692579

/-!
# A016195: a(n) = 11^n - 10^n.

The programs for A016195, the canonical program `A016195.P8271494490478180578` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016195 has offset 0).

The definition of A016195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-10^n` (program `A016195.P8271494490478180578`, by `A016195.P8271494490478180578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016195.P8271494490478180578

`11^n-10^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016195

/-- `11^n-10^n` -/
def P8271494490478180578.Spec : Prop :=
  ∀ n, P8271494490478180578.a n = A016195 n

theorem P8271494490478180578.correct : P8271494490478180578.Spec := by
  intro n
  simp only [A016195]

end A016195

/-! ## A016195.P14767817440790956146

`abs(1-A155674(n))`
-/

namespace A016195.P14767817440790956146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155674 n|

end

end A016195.P14767817440790956146

namespace A016195

/-- `abs(1-A155674(n))` -/
def P14767817440790956146.Spec : Prop :=
  ∀ n, P14767817440790956146.a n = A016195 n

end A016195

/-! ## A016195.P2162854551258153545

`abs(A001020(n)-A011557(n))`
-/

namespace A016195.P2162854551258153545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A011557 n|

end

end A016195.P2162854551258153545

namespace A016195

/-- `abs(A001020(n)-A011557(n))` -/
def P2162854551258153545.Spec : Prop :=
  ∀ n, P2162854551258153545.a n = A016195 n

end A016195

/-! ## A016195.P13861567718654759563

`abs(A024115(n)-A024128(n))`
-/

namespace A016195.P13861567718654759563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024115 n - A024128 n|

end

end A016195.P13861567718654759563

namespace A016195

/-- `abs(A024115(n)-A024128(n))` -/
def P13861567718654759563.Spec : Prop :=
  ∀ n, P13861567718654759563.a n = A016195 n

end A016195

/-! ## A016195.P11813939932607017372

`abs(A024118(n)-A024131(n))`
-/

namespace A016195.P11813939932607017372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024118 n - A024131 n|

end

end A016195.P11813939932607017372

namespace A016195

/-- `abs(A024118(n)-A024131(n))` -/
def P11813939932607017372.Spec : Prop :=
  ∀ n, P11813939932607017372.a n = A016195 n

end A016195

/-! ## A016195.P10251577379716292240

`abs(A024119(n)-A024132(n))`
-/

namespace A016195.P10251577379716292240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024119 n - A024132 n|

end

end A016195.P10251577379716292240

namespace A016195

/-- `abs(A024119(n)-A024132(n))` -/
def P10251577379716292240.Spec : Prop :=
  ∀ n, P10251577379716292240.a n = A016195 n

end A016195

/-! ## A016195.P3450939646464594923

`abs(A155594(n)-A155595(n))`
-/

namespace A016195.P3450939646464594923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155594 n - A155595 n|

end

end A016195.P3450939646464594923

namespace A016195

/-- `abs(A155594(n)-A155595(n))` -/
def P3450939646464594923.Spec : Prop :=
  ∀ n, P3450939646464594923.a n = A016195 n

end A016195

/-! ## A016195.P6566649757593430788

`abs(A155601(n)-A155622(n))`
-/

namespace A016195.P6566649757593430788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155601 n - A155622 n|

end

end A016195.P6566649757593430788

namespace A016195

/-- `abs(A155601(n)-A155622(n))` -/
def P6566649757593430788.Spec : Prop :=
  ∀ n, P6566649757593430788.a n = A016195 n

end A016195

/-! ## A016195.P14983094533268517947

`abs(A155608(n)-A155623(n))`
-/

namespace A016195.P14983094533268517947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155608 n - A155623 n|

end

end A016195.P14983094533268517947

namespace A016195

/-- `abs(A155608(n)-A155623(n))` -/
def P14983094533268517947.Spec : Prop :=
  ∀ n, P14983094533268517947.a n = A016195 n

end A016195

/-!
# A016196: Expansion of 1/((1-10*x)*(1-12*x)).

The programs for A016196, the canonical program `A016196.P9158668606139153897` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016196 has offset 0).

The definition of A016196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016196.P9158668606139153897

`6*12^n-5*10^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016196

/-- `6*12^n-5*10^n` -/
def P9158668606139153897.Spec : Prop :=
  ∀ n, P9158668606139153897.a n = A016196 n

theorem P9158668606139153897.correct : P9158668606139153897.Spec := by
  intro n
  simp only [A016196]

end A016196

/-! ## A016196.P7133001511420318648

`2^n*∑[A257286(n)]`
-/

namespace A016196.P7133001511420318648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016196.P7133001511420318648

namespace A016196

/-- `2^n*∑[A257286(n)]` -/
def P7133001511420318648.Spec : Prop :=
  ∀ n, P7133001511420318648.a n = A016196 n

end A016196

/-! ## A016196.P14378713598940485434

`2^n*A005062(n+1)`
-/

namespace A016196.P14378713598940485434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005062 (n + 1)

end

end A016196.P14378713598940485434

namespace A016196

/-- `2^n*A005062(n+1)` -/
def P14378713598940485434.Spec : Prop :=
  ∀ n, P14378713598940485434.a n = A016196 n

end A016196

/-! ## A016196.P11981304032497784521

`∑[A257286(n)]*A000079(n)`
-/

namespace A016196.P11981304032497784521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A016196.P11981304032497784521

namespace A016196

/-- `∑[A257286(n)]*A000079(n)` -/
def P11981304032497784521.Spec : Prop :=
  ∀ n, P11981304032497784521.a n = A016196 n

end A016196

/-! ## A016196.P9790319796663260022

`∑[A257286(n)]*Δ[A000225(n)]`
-/

namespace A016196.P9790319796663260022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A016196.P9790319796663260022

namespace A016196

/-- `∑[A257286(n)]*Δ[A000225(n)]` -/
def P9790319796663260022.Spec : Prop :=
  ∀ n, P9790319796663260022.a n = A016196 n

end A016196

/-! ## A016196.P10141313866872334836

`floor(10*a(n-1)+A000079(n)*A000400(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A016196.P10141313866872334836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + A000079 n * A000400 n

end

end A016196.P10141313866872334836

namespace A016196

/-- `floor(10*a(n-1)+A000079(n)*A000400(n))` -/
def P10141313866872334836.Spec : Prop :=
  ∀ n, P10141313866872334836.a n = A016196 n

end A016196

/-! ## A016196.P7973037883126981609

`(A000400(n+1)-A000351(n+1))*A000079(n)`
-/

namespace A016196.P7973037883126981609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 (n + 1) - A000351 (n + 1)) * A000079 n

end

end A016196.P7973037883126981609

namespace A016196

/-- `(A000400(n+1)-A000351(n+1))*A000079(n)` -/
def P7973037883126981609.Spec : Prop :=
  ∀ n, P7973037883126981609.a n = A016196 n

end A016196

/-! ## A016196.P14262976400756288129

`(A155597(n+1)-A155596(n+1))*A000079(n)`
-/

namespace A016196.P14262976400756288129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155597 (n + 1) - A155596 (n + 1)) * A000079 n

end

end A016196.P14262976400756288129

namespace A016196

/-- `(A155597(n+1)-A155596(n+1))*A000079(n)` -/
def P14262976400756288129.Spec : Prop :=
  ∀ n, P14262976400756288129.a n = A016196 n

end A016196

/-!
# A016197: a(n) = 12^n - 11^n.

The programs for A016197, the canonical program `A016197.P3762851250638389126` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016197 has offset 0).

The definition of A016197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n-11^n` (program `A016197.P3762851250638389126`, by `A016197.P3762851250638389126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016197.P3762851250638389126

`12^n-11^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016197

/-- `12^n-11^n` -/
def P3762851250638389126.Spec : Prop :=
  ∀ n, P3762851250638389126.a n = A016197 n

theorem P3762851250638389126.correct : P3762851250638389126.Spec := by
  intro n
  simp only [A016197]

end A016197

/-! ## A016197.P15283056824910848072

`abs(A001020(n)-A001021(n))`
-/

namespace A016197.P15283056824910848072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A001021 n|

end

end A016197.P15283056824910848072

namespace A016197

/-- `abs(A001020(n)-A001021(n))` -/
def P15283056824910848072.Spec : Prop :=
  ∀ n, P15283056824910848072.a n = A016197 n

end A016197

/-! ## A016197.P2810426818336255010

`abs(A024127(n)-A024140(n))`
-/

namespace A016197.P2810426818336255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024127 n - A024140 n|

end

end A016197.P2810426818336255010

namespace A016197

/-- `abs(A024127(n)-A024140(n))` -/
def P2810426818336255010.Spec : Prop :=
  ∀ n, P2810426818336255010.a n = A016197 n

end A016197

/-! ## A016197.P12123607013289892225

`abs(A024128(n)-A024141(n))`
-/

namespace A016197.P12123607013289892225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024128 n - A024141 n|

end

end A016197.P12123607013289892225

namespace A016197

/-- `abs(A024128(n)-A024141(n))` -/
def P12123607013289892225.Spec : Prop :=
  ∀ n, P12123607013289892225.a n = A016197 n

end A016197

/-! ## A016197.P15751567631214372025

`abs(A024129(n)-A024142(n))`
-/

namespace A016197.P15751567631214372025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024129 n - A024142 n|

end

end A016197.P15751567631214372025

namespace A016197

/-- `abs(A024129(n)-A024142(n))` -/
def P15751567631214372025.Spec : Prop :=
  ∀ n, P15751567631214372025.a n = A016197 n

end A016197

/-! ## A016197.P17092572065580480941

`abs(A024130(n)-A024143(n))`
-/

namespace A016197.P17092572065580480941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024130 n - A024143 n|

end

end A016197.P17092572065580480941

namespace A016197

/-- `abs(A024130(n)-A024143(n))` -/
def P17092572065580480941.Spec : Prop :=
  ∀ n, P17092572065580480941.a n = A016197 n

end A016197

/-! ## A016197.P17012330533156357730

`abs(A024131(n)-A024144(n))`
-/

namespace A016197.P17012330533156357730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024131 n - A024144 n|

end

end A016197.P17012330533156357730

namespace A016197

/-- `abs(A024131(n)-A024144(n))` -/
def P17012330533156357730.Spec : Prop :=
  ∀ n, P17012330533156357730.a n = A016197 n

end A016197

/-! ## A016197.P14487959948723940754

`abs(A024132(n)-A024145(n))`
-/

namespace A016197.P14487959948723940754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024132 n - A024145 n|

end

end A016197.P14487959948723940754

namespace A016197

/-- `abs(A024132(n)-A024145(n))` -/
def P14487959948723940754.Spec : Prop :=
  ∀ n, P14487959948723940754.a n = A016197 n

end A016197

/-! ## A016197.P12760032197320988967

`abs(A024133(n)-A024146(n))`
-/

namespace A016197.P12760032197320988967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024133 n - A024146 n|

end

end A016197.P12760032197320988967

namespace A016197

/-- `abs(A024133(n)-A024146(n))` -/
def P12760032197320988967.Spec : Prop :=
  ∀ n, P12760032197320988967.a n = A016197 n

end A016197

/-! ## A016197.P16244158306971610853

`abs(A024139(n)-A024152(n))`
-/

namespace A016197.P16244158306971610853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024139 n - A024152 n|

end

end A016197.P16244158306971610853

namespace A016197

/-- `abs(A024139(n)-A024152(n))` -/
def P16244158306971610853.Spec : Prop :=
  ∀ n, P16244158306971610853.a n = A016197 n

end A016197

/-!
# A016198: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-5*x)).

The programs for A016198, the canonical program `A016198.P16055918176478223726` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016198 has offset 0).

The definition of A016198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016198.P16055918176478223726

`5*a(n-1)+2^(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016198

/-- `5*a(n-1)+2^(n+1)-1` -/
def P16055918176478223726.Spec : Prop :=
  ∀ n, P16055918176478223726.a n = A016198 n

theorem P16055918176478223726.correct : P16055918176478223726.Spec := by
  intro n
  simp only [A016198]

end A016198

/-! ## A016198.P17616084581205101378

`(25*5^n-16*2^n+3)/12`
-/

namespace A016198.P17616084581205101378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * 5 ^ n : ℤ) - (16 * 2 ^ n : ℤ) + 3 : ℚ) / 12

end

end A016198.P17616084581205101378

namespace A016198

/-- `(25*5^n-16*2^n+3)/12` -/
def P17616084581205101378.Spec : Prop :=
  ∀ n, P17616084581205101378.a n = (A016198 n : ℚ)

theorem P17616084581205101378.correct : P17616084581205101378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A016198, Nat.add_sub_cancel, A016198.P17616084581205101378.a, A016198.P16055918176478223726.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A016198, Nat.add_sub_cancel, A016198.P17616084581205101378.a, A016198.P16055918176478223726.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016198

/-! ## A016198.P17450449576922140060

`A016127(n+1)-A003463(n+2)`
-/

namespace A016198.P17450449576922140060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 (n + 1) - A003463 (n + 2)

end

end A016198.P17450449576922140060

namespace A016198

/-- `A016127(n+1)-A003463(n+2)` -/
def P17450449576922140060.Spec : Prop :=
  ∀ n, P17450449576922140060.a n = A016198 n

end A016198

/-! ## A016198.P13734144345048630785

`∑[2^n+5*a(n-1)]` with `a(0)=1`
-/

namespace A016198.P13734144345048630785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 ^ n + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016198.P13734144345048630785

namespace A016198

/-- `∑[2^n+5*a(n-1)]` -/
def P13734144345048630785.Spec : Prop :=
  ∀ n, (P13734144345048630785.a n : ℤ) = A016198 n

end A016198

/-! ## A016198.P12932876532732794663

`∑[2*a(n-1)]+5*a(n-1)` with `a(0)=1`
-/

namespace A016198.P12932876532732794663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A016198.P12932876532732794663

namespace A016198

/-- `∑[2*a(n-1)]+5*a(n-1)` -/
def P12932876532732794663.Spec : Prop :=
  ∀ n, (P12932876532732794663.a n : ℤ) = A016198 n

end A016198

/-! ## A016198.P16632594196179816800

`a(n-1)+∑[5^n]+a(n-1)` with `a(0)=1`
-/

namespace A016198.P16632594196179816800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A016198.P16632594196179816800

namespace A016198

/-- `a(n-1)+∑[5^n]+a(n-1)` -/
def P16632594196179816800.Spec : Prop :=
  ∀ n, (P16632594196179816800.a n : ℤ) = A016198 n

end A016198

/-! ## A016198.P14890583636003760767

`∑[A016127(n)]`
-/

namespace A016198.P14890583636003760767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016198.P14890583636003760767

namespace A016198

/-- `∑[A016127(n)]` -/
def P14890583636003760767.Spec : Prop :=
  ∀ n, P14890583636003760767.a n = A016198 n

end A016198

/-! ## A016198.P13487682833223020819

`A083421(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A016198.P13487682833223020819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A083421 n + a (n - 2)

end

end A016198.P13487682833223020819

namespace A016198

/-- `A083421(n)+a(n-2)` -/
def P13487682833223020819.Spec : Prop :=
  ∀ n, P13487682833223020819.a n = A016198 n

end A016198

/-! ## A016198.P8335168317165281501

`2*a(n-1)+A104891(n)+1` with `a(0)=1`
-/

namespace A016198.P8335168317165281501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A104891 n + 1)

end

end A016198.P8335168317165281501

namespace A016198

/-- `2*a(n-1)+A104891(n)+1` -/
def P8335168317165281501.Spec : Prop :=
  ∀ n, P8335168317165281501.a n = A016198 n

end A016198

/-! ## A016198.P11101259720751191358

`A052955(2*n)+5*a(n-1)` with `a(0)=1`
-/

namespace A016198.P11101259720751191358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052955 (2 * n) + 5 * a (n - 1)

end

end A016198.P11101259720751191358

namespace A016198

/-- `A052955(2*n)+5*a(n-1)` -/
def P11101259720751191358.Spec : Prop :=
  ∀ n, P11101259720751191358.a n = A016198 n

end A016198

/-! ## A016198.P3726247063824884809

`A093953(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A016198.P3726247063824884809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093953 n - (a (n - 1) + a (n - 1))

end

end A016198.P3726247063824884809

namespace A016198

/-- `A093953(n)-(a(n-1)+a(n-1))` -/
def P3726247063824884809.Spec : Prop :=
  ∀ n, P3726247063824884809.a n = A016198 n

end A016198

/-! ## A016198.P5292056702765917487

`A039302(n+1)-A005578(n+2)`
-/

namespace A016198.P5292056702765917487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039302 (n + 1) - A005578 (n + 2)

end

end A016198.P5292056702765917487

namespace A016198

/-- `A039302(n+1)-A005578(n+2)` -/
def P5292056702765917487.Spec : Prop :=
  ∀ n, P5292056702765917487.a n = A016198 n

end A016198

/-! ## A016198.P5337137362460493451

`A033115(n+1)+A033115(n+1)-A000975(n+1)`
-/

namespace A016198.P5337137362460493451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033115 (n + 1) + (A033115 (n + 1) - A000975 (n + 1))

end

end A016198.P5337137362460493451

namespace A016198

/-- `A033115(n+1)+A033115(n+1)-A000975(n+1)` -/
def P5337137362460493451.Spec : Prop :=
  ∀ n, P5337137362460493451.a n = A016198 n

end A016198

/-!
# A016199: Inverse of 2190th cyclotomic polynomial.

The programs for A016199, there is no canonical definition to state claims against.
-/

/-! ## A016199.P16210508674588020092

`A015104(n)*A015111(A005811(n))`
-/

namespace A016199.P16210508674588020092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015104 n * A015111 (A005811 n).toNat

end

end A016199.P16210508674588020092

