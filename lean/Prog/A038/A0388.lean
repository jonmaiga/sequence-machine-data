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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A038800: Number of primes between 10n and 10n+9.

The programs for A038800, the canonical program `A038800.P14492955848077110763` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038800 has offset 0).

The definition of A038800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038800.P3550277675729013498

`A298008(n+1)%5`
-/

namespace A038800.P3550277675729013498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298008 (n + 1)) 5

end

end A038800.P3550277675729013498

namespace A038800

/-- `A298008(n+1)%5` -/
def P3550277675729013498.Spec : Prop :=
  ∀ n, P3550277675729013498.a n = A038800 n

end A038800

/-! ## A038800.P10932867496151808142

`A298008(n+1)-A008592(n)`
-/

namespace A038800.P10932867496151808142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - A008592 n

end

end A038800.P10932867496151808142

namespace A038800

/-- `A298008(n+1)-A008592(n)` -/
def P10932867496151808142.Spec : Prop :=
  ∀ n, P10932867496151808142.a n = A038800 n

end A038800

/-! ## A038800.P9436815381179052776

`A298008(n+1)-2*A008587(n)`
-/

namespace A038800.P9436815381179052776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2 * A008587 n

end

end A038800.P9436815381179052776

namespace A038800

/-- `A298008(n+1)-2*A008587(n)` -/
def P9436815381179052776.Spec : Prop :=
  ∀ n, P9436815381179052776.a n = A038800 n

end A038800

/-! ## A038800.P16980754190721207830

`Δ[A000720(A218255(n))]`
-/

namespace A038800.P16980754190721207830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P16980754190721207830

namespace A038800

/-- `Δ[A000720(A218255(n))]` -/
def P16980754190721207830.Spec : Prop :=
  ∀ n, P16980754190721207830.a n = A038800 n

end A038800

/-! ## A038800.P7806920921372626618

`A000720(A218255(n+1))-A000720(A218255(n))`
-/

namespace A038800.P7806920921372626618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (n + 1)).toNat - A000720 (A218255 n).toNat

end

end A038800.P7806920921372626618

namespace A038800

/-- `A000720(A218255(n+1))-A000720(A218255(n))` -/
def P7806920921372626618.Spec : Prop :=
  ∀ n, P7806920921372626618.a n = A038800 n

end A038800

/-! ## A038800.P12786955772995507069

`A192977(A065039(n))`
-/

namespace A038800.P12786955772995507069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat

end

end A038800.P12786955772995507069

namespace A038800

/-- `A192977(A065039(n))` -/
def P12786955772995507069.Spec : Prop :=
  ∀ n, P12786955772995507069.a n = A038800 n

end A038800

/-! ## A038800.P12146405058691266354

`Δ[A000720(A008706(2*n))]`
-/

namespace A038800.P12146405058691266354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P12146405058691266354

namespace A038800

/-- `Δ[A000720(A008706(2*n))]` -/
def P12146405058691266354.Spec : Prop :=
  ∀ n, P12146405058691266354.a n = A038800 n

end A038800

/-! ## A038800.P3074201075685606024

`Δ[A000720(A075326(2*n)+1)]`
-/

namespace A038800.P3074201075685606024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075326 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P3074201075685606024

namespace A038800

/-- `Δ[A000720(A075326(2*n)+1)]` -/
def P3074201075685606024.Spec : Prop :=
  ∀ n, P3074201075685606024.a n = A038800 n

end A038800

/-! ## A038800.P14492955848077110763

`Δ[A099801(A004273(2*n)+n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038800

/-- `Δ[A099801(A004273(2*n)+n)]` -/
def P14492955848077110763.Spec : Prop :=
  ∀ n, P14492955848077110763.a n = A038800 n

theorem P14492955848077110763.correct : P14492955848077110763.Spec := by
  intro n
  simp only [A038800]

end A038800

/-! ## A038800.P12318694378105987968

`Δ[A000720(A301291(2*n)+n)]`
-/

namespace A038800.P12318694378105987968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A301291 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P12318694378105987968

namespace A038800

/-- `Δ[A000720(A301291(2*n)+n)]` -/
def P12318694378105987968.Spec : Prop :=
  ∀ n, P12318694378105987968.a n = A038800 n

end A038800

/-! ## A038800.P15807764910313677516

`Δ[A000720(A135042(2*n+1)-1)]`
-/

namespace A038800.P15807764910313677516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135042 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P15807764910313677516

namespace A038800

/-- `Δ[A000720(A135042(2*n+1)-1)]` -/
def P15807764910313677516.Spec : Prop :=
  ∀ n, P15807764910313677516.a n = A038800 n

end A038800

/-! ## A038800.P630280474595950465

`A209252(10*n)`
-/

namespace A038800.P630280474595950465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n)

end

end A038800.P630280474595950465

namespace A038800

/-- `A209252(10*n)` -/
def P630280474595950465.Spec : Prop :=
  ∀ n, P630280474595950465.a n = A038800 n

end A038800

/-! ## A038800.P9707534186576504044

`A048853(10*n+4)`
-/

namespace A038800.P9707534186576504044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (10 * n + 4)

end

end A038800.P9707534186576504044

namespace A038800

/-- `A048853(10*n+4)` -/
def P9707534186576504044.Spec : Prop :=
  ∀ n, P9707534186576504044.a n = A038800 n

end A038800

/-! ## A038800.P13962794726070289628

`A010874(A298008(n+1))`
-/

namespace A038800.P13962794726070289628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A298008 (n + 1)).toNat

end

end A038800.P13962794726070289628

namespace A038800

/-- `A010874(A298008(n+1))` -/
def P13962794726070289628.Spec : Prop :=
  ∀ n, P13962794726070289628.a n = A038800 n

end A038800

/-! ## A038800.P14047482797908937207

`Δ[A061395(A007918(10*n))]`
-/

namespace A038800.P14047482797908937207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007918 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P14047482797908937207

namespace A038800

/-- `Δ[A061395(A007918(10*n))]` -/
def P14047482797908937207.Spec : Prop :=
  ∀ n, P14047482797908937207.a n = A038800 n

end A038800

/-! ## A038800.P3398179245018381949

`Δ[A036234(A301291(2*n)+n)]`
-/

namespace A038800.P3398179245018381949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A301291 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P3398179245018381949

namespace A038800

/-- `Δ[A036234(A301291(2*n)+n)]` -/
def P3398179245018381949.Spec : Prop :=
  ∀ n, P3398179245018381949.a n = A038800 n

end A038800

/-! ## A038800.P8808678054259396746

`Δ[A230980(10*n)]`
-/

namespace A038800.P8808678054259396746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P8808678054259396746

namespace A038800

/-- `Δ[A230980(10*n)]` -/
def P8808678054259396746.Spec : Prop :=
  ∀ n, P8808678054259396746.a n = A038800 n

end A038800

/-! ## A038800.P10616116468787236467

`Δ[A056239(A060264(5*n))]`
-/

namespace A038800.P10616116468787236467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A060264 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P10616116468787236467

namespace A038800

/-- `Δ[A056239(A060264(5*n))]` -/
def P10616116468787236467.Spec : Prop :=
  ∀ n, P10616116468787236467.a n = A038800 n

end A038800

/-! ## A038800.P10155111399428483357

`Δ[A056172(2*A008706(2*n))]`
-/

namespace A038800.P10155111399428483357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A008706 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P10155111399428483357

namespace A038800

/-- `Δ[A056172(2*A008706(2*n))]` -/
def P10155111399428483357.Spec : Prop :=
  ∀ n, P10155111399428483357.a n = A038800 n

end A038800

/-!
# A038801: Number of primes less than 10n.

The programs for A038801, the canonical program `A038801.P398560500367969719` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038801 has offset 1).

The definition of A038801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038801.P398560500367969719

`A000720(10*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038801

/-- `A000720(10*(n+1))` -/
def P398560500367969719.Spec : Prop :=
  ∀ n, P398560500367969719.a n = A038801 (n + 1)

theorem P398560500367969719.correct : P398560500367969719.Spec := by
  intro n
  simp only [A038801, Nat.add_sub_cancel]

end A038801

/-! ## A038801.P17611679185578659144

`∑[A038800(n)]`
-/

namespace A038801.P17611679185578659144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038801.P17611679185578659144

namespace A038801

/-- `∑[A038800(n)]` -/
def P17611679185578659144.Spec : Prop :=
  ∀ n, P17611679185578659144.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P2729700346565965031

`A099801(5*n+4)`
-/

namespace A038801.P2729700346565965031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (5 * n + 4)

end

end A038801.P2729700346565965031

namespace A038801

/-- `A099801(5*n+4)` -/
def P2729700346565965031.Spec : Prop :=
  ∀ n, P2729700346565965031.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P7203365031218984669

`∑[A298008(n+1)%5]`
-/

namespace A038801.P7203365031218984669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298008 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038801.P7203365031218984669

namespace A038801

/-- `∑[A298008(n+1)%5]` -/
def P7203365031218984669.Spec : Prop :=
  ∀ n, P7203365031218984669.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P15419272060633553192

`A061395(A122072(n+1))`
-/

namespace A038801.P15419272060633553192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A122072 (n + 1)).toNat

end

end A038801.P15419272060633553192

namespace A038801

/-- `A061395(A122072(n+1))` -/
def P15419272060633553192.Spec : Prop :=
  ∀ n, P15419272060633553192.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P2605340466020176678

`A000720(A218255(n+1))-1`
-/

namespace A038801.P2605340466020176678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (n + 1)).toNat - 1

end

end A038801.P2605340466020176678

namespace A038801

/-- `A000720(A218255(n+1))-1` -/
def P2605340466020176678.Spec : Prop :=
  ∀ n, P2605340466020176678.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P765868035555030391

`∑[A192977(A065039(n))]`
-/

namespace A038801.P765868035555030391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038801.P765868035555030391

namespace A038801

/-- `∑[A192977(A065039(n))]` -/
def P765868035555030391.Spec : Prop :=
  ∀ n, P765868035555030391.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P17424344524526413371

`A099802(5*(n+1))`
-/

namespace A038801.P17424344524526413371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (5 * (n + 1))

end

end A038801.P17424344524526413371

namespace A038801

/-- `A099802(5*(n+1))` -/
def P17424344524526413371.Spec : Prop :=
  ∀ n, P17424344524526413371.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P255800395094340378

`∑[A209252(10*n)]`
-/

namespace A038801.P255800395094340378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038801.P255800395094340378

namespace A038801

/-- `∑[A209252(10*n)]` -/
def P255800395094340378.Spec : Prop :=
  ∀ n, P255800395094340378.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P1200845816293619033

`A063084(10*(n+1))`
-/

namespace A038801.P1200845816293619033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (10 * (n + 1))

end

end A038801.P1200845816293619033

namespace A038801

/-- `A063084(10*(n+1))` -/
def P1200845816293619033.Spec : Prop :=
  ∀ n, P1200845816293619033.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P11517759905097451635

`A033270(10*(n+1))+1`
-/

namespace A038801.P11517759905097451635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (10 * (n + 1)) + 1

end

end A038801.P11517759905097451635

namespace A038801

/-- `A033270(10*(n+1))+1` -/
def P11517759905097451635.Spec : Prop :=
  ∀ n, P11517759905097451635.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P2545007657261106363

`∑[A048853(A017317(n))]`
-/

namespace A038801.P2545007657261106363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038801.P2545007657261106363

namespace A038801

/-- `∑[A048853(A017317(n))]` -/
def P2545007657261106363.Spec : Prop :=
  ∀ n, P2545007657261106363.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P1576728481042385410

`A230980(A008592(n+1)-1)`
-/

namespace A038801.P1576728481042385410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008592 (n + 1) - 1).toNat

end

end A038801.P1576728481042385410

namespace A038801

/-- `A230980(A008592(n+1)-1)` -/
def P1576728481042385410.Spec : Prop :=
  ∀ n, P1576728481042385410.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P10720305455717035995

`A230980(A008591(n+1)+n)`
-/

namespace A038801.P10720305455717035995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008591 (n + 1) + (n : ℤ)).toNat

end

end A038801.P10720305455717035995

namespace A038801

/-- `A230980(A008591(n+1)+n)` -/
def P10720305455717035995.Spec : Prop :=
  ∀ n, P10720305455717035995.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P3186100263061622399

`A230980(A016885(2*n+1)+1)`
-/

namespace A038801.P3186100263061622399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A016885 (2 * n + 1) + 1).toNat

end

end A038801.P3186100263061622399

namespace A038801

/-- `A230980(A016885(2*n+1)+1)` -/
def P3186100263061622399.Spec : Prop :=
  ∀ n, P3186100263061622399.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P9933545267088011709

`A230980(10*(n+1))`
-/

namespace A038801.P9933545267088011709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (10 * (n + 1))

end

end A038801.P9933545267088011709

namespace A038801

/-- `A230980(10*(n+1))` -/
def P9933545267088011709.Spec : Prop :=
  ∀ n, P9933545267088011709.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P18282367047593008729

`A033270(A218255(n+1))`
-/

namespace A038801.P18282367047593008729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A218255 (n + 1)).toNat

end

end A038801.P18282367047593008729

namespace A038801

/-- `A033270(A218255(n+1))` -/
def P18282367047593008729.Spec : Prop :=
  ∀ n, P18282367047593008729.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P8577977706199638664

`A055679(A008602(n+1))`
-/

namespace A038801.P8577977706199638664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A008602 (n + 1)).toNat

end

end A038801.P8577977706199638664

namespace A038801

/-- `A055679(A008602(n+1))` -/
def P8577977706199638664.Spec : Prop :=
  ∀ n, P8577977706199638664.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P4583955533687241447

`A055679(A215145(n+1)-1)`
-/

namespace A038801.P4583955533687241447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A215145 (n + 1) - 1).toNat

end

end A038801.P4583955533687241447

namespace A038801

/-- `A055679(A215145(n+1)-1)` -/
def P4583955533687241447.Spec : Prop :=
  ∀ n, P4583955533687241447.a n = A038801 (n + 1)

end A038801

/-! ## A038801.P15872088958206488734

`A055679(A215145(n+1))`
-/

namespace A038801.P15872088958206488734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A215145 (n + 1)).toNat

end

end A038801.P15872088958206488734

namespace A038801

/-- `A055679(A215145(n+1))` -/
def P15872088958206488734.Spec : Prop :=
  ∀ n, P15872088958206488734.a n = A038801 (n + 1)

end A038801

/-!
# A038802: Factor 2n+1 = (2^m1)*(3^m2)*(5^m3)*...; a(n) = number of initial zero exponents.

The programs for A038802, there is no canonical definition to state claims against.
-/

/-! ## A038802.P13729491084103539349

`A000720(A020639(2*(n+1)+1))-1`
-/

namespace A038802.P13729491084103539349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (2 * (n + 1) + 1)).toNat - 1

end

end A038802.P13729491084103539349

/-! ## A038802.P13261954442412429662

`1-A275464(n+1)+n`
-/

namespace A038802.P13261954442412429662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275464 (n + 1) + (n : ℤ)

end

end A038802.P13261954442412429662

/-! ## A038802.P11368280117354545358

`A099802(A195508(1+n))`
-/

namespace A038802.P11368280117354545358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A195508 (1 + n)).toNat

end

end A038802.P11368280117354545358

/-! ## A038802.P7636833184951452270

`A000720(A117368(n+2))`
-/

namespace A038802.P7636833184951452270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117368 (n + 2)).toNat

end

end A038802.P7636833184951452270

/-! ## A038802.P7684648518123583254

`A000720(2*A195508(n+1))`
-/

namespace A038802.P7684648518123583254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A195508 (n + 1)).toNat

end

end A038802.P7684648518123583254

/-! ## A038802.P7605539805404758104

`A000720(A057237(2*n+3))`
-/

namespace A038802.P7605539805404758104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057237 (2 * n + 3)).toNat

end

end A038802.P7605539805404758104

/-! ## A038802.P65655027535353628

`A079067(A020639(2*n+3))`
-/

namespace A038802.P65655027535353628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A020639 (2 * n + 3)).toNat

end

end A038802.P65655027535353628

/-! ## A038802.P15940258233919594721

`A326844(2*A020639(2*n+3))`
-/

namespace A038802.P15940258233919594721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * A020639 (2 * n + 3)).toNat

end

end A038802.P15940258233919594721

/-! ## A038802.P1715040308092753370

`A000720(A090368(n+2)-1)`
-/

namespace A038802.P1715040308092753370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090368 (n + 2) - 1).toNat

end

end A038802.P1715040308092753370

/-! ## A038802.P6923272439179590271

`A055396(A064216(n+2))`
-/

namespace A038802.P6923272439179590271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A064216 (n + 2)).toNat

end

end A038802.P6923272439179590271

/-! ## A038802.P15583821448542561920

`A055396(A268674(2*n+3))`
-/

namespace A038802.P15583821448542561920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A268674 (2 * n + 3)).toNat

end

end A038802.P15583821448542561920

/-! ## A038802.P146382360476677312

`A055396(A290099(2*n+3))`
-/

namespace A038802.P146382360476677312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A290099 (2 * n + 3)).toNat

end

end A038802.P146382360476677312

/-! ## A038802.P18088609105464380755

`A033270(A090368(n+2))`
-/

namespace A038802.P18088609105464380755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A090368 (n + 2)).toNat

end

end A038802.P18088609105464380755

/-! ## A038802.P5035558502975211909

`A033270(Δ[A020639(2*n+1)]+A020639(2*n+1))`
-/

namespace A038802.P5035558502975211909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (n + 1) - f1 n + A020639 (2 * n + 1)).toNat

end

end A038802.P5035558502975211909

/-! ## A038802.P6117561345817611335

`A033270(A092067(2*(n+1)))`
-/

namespace A038802.P6117561345817611335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A092067 (2 * (n + 1))).toNat

end

end A038802.P6117561345817611335

/-! ## A038802.P831634329244854893

`A000720(A087349(2*(n+1))-A087349(2*n+1))`
-/

namespace A038802.P831634329244854893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087349 (2 * (n + 1)) - A087349 (2 * n + 1)).toNat

end

end A038802.P831634329244854893

/-! ## A038802.P13947393166126642736

`A342655(A092067(2*n+1))+A342655(A092067(2*(n+1)))`
-/

namespace A038802.P13947393166126642736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A092067 (2 * n + 1)).toNat + A342655 (A092067 (2 * (n + 1))).toNat

end

end A038802.P13947393166126642736

/-! ## A038802.P2978584891544955599

`A055396(2*n+3)-1`
-/

namespace A038802.P2978584891544955599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * n + 3) - 1

end

end A038802.P2978584891544955599

/-! ## A038802.P8549137409234563969

`A338101(2*n+3)-1`
-/

namespace A038802.P8549137409234563969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338101 (2 * n + 3) - 1

end

end A038802.P8549137409234563969

/-! ## A038802.P12176070620811698097

`col(A252460(2*n+3)-2)`
-/

namespace A038802.P12176070620811698097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A252460 (2 * n + 3) - 2).toNat

end

end A038802.P12176070620811698097

/-!
# A038803: Largest number with n prime factors of lengths 1, ..., n.

The programs for A038803, there is no canonical definition to state claims against.
-/

/-! ## A038803.P70628374546996060

`∏[A003618(n+1)]`
-/

namespace A038803.P70628374546996060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038803.P70628374546996060

/-! ## A038803.P10462758487008819312

`∏[A132153(2*n+2)]`
-/

namespace A038803.P10462758487008819312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038803.P10462758487008819312

/-! ## A038803.P18106678121304440486

`∏[A101592(Δ[A014206(n)])]`
-/

namespace A038803.P18106678121304440486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038803.P18106678121304440486

/-! ## A038803.P4044518927069992006

`∏[record[A158579(n+1)]]`
-/

namespace A038803.P4044518927069992006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A038803.P4044518927069992006

/-!
# A038804: Difference between largest n-digit prime and smallest (n+1)-digit prime.

The programs for A038804, there is no canonical definition to state claims against.
-/

/-! ## A038804.P8433731228708688090

`A033873(n+1)+A033874(n+1)`
-/

namespace A038804.P8433731228708688090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 (n + 1) + A033874 (n + 1)

end

end A038804.P8433731228708688090

/-! ## A038804.P16182688139704690674

`A109937(n+1)+1`
-/

namespace A038804.P16182688139704690674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109937 (n + 1) + 1

end

end A038804.P16182688139704690674

/-! ## A038804.P2640946250939541695

`A014681(A109937(n+1))`
-/

namespace A038804.P2640946250939541695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A109937 (n + 1)).toNat

end

end A038804.P2640946250939541695

/-! ## A038804.P1076608739815198100

`A033874(n+1)+A272006(n+2)+1`
-/

namespace A038804.P1076608739815198100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1) + (A272006 (n + 2) + 1)

end

end A038804.P1076608739815198100

/-! ## A038804.P1974779107183370929

`A033874(n+1)+A004442(A272006(n+2))`
-/

namespace A038804.P1974779107183370929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033874 (n + 1) + A004442 (A272006 (n + 2)).toNat

end

end A038804.P1974779107183370929

/-! ## A038804.P13529225921977479412

`A014681(A272006(n+2)+A033874(n+1))`
-/

namespace A038804.P13529225921977479412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A272006 (n + 2) + A033874 (n + 1)).toNat

end

end A038804.P13529225921977479412

/-! ## A038804.P3676055495758711236

`A003617(n+2)-A003618(n+1)`
-/

namespace A038804.P3676055495758711236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 2) - A003618 (n + 1)

end

end A038804.P3676055495758711236

/-! ## A038804.P12744227781657643335

`A069588(n+2)-A003618(n+1)`
-/

namespace A038804.P12744227781657643335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069588 (n + 2) - A003618 (n + 1)

end

end A038804.P12744227781657643335

/-! ## A038804.P16261024915221504748

`A003617(n+2)-A101592(2*(n+1))`
-/

namespace A038804.P16261024915221504748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 2) - A101592 (2 * (n + 1))

end

end A038804.P16261024915221504748

/-! ## A038804.P16140853702406927933

`A003617(n+2)-A132153(2*(n+1))`
-/

namespace A038804.P16140853702406927933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 2) - A132153 (2 * (n + 1))

end

end A038804.P16140853702406927933

/-!
# A038806: Convolution of A008549 with A000302 (powers of 4).

The programs for A038806, the canonical program `A038806.P2472383599228790580` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038806 has offset 0).

The definition of A038806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038806.P2472383599228790580

`(n+3)*4^n-(n+2)*C(2*n+3, n+1)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038806

/-- `(n+3)*4^n-(n+2)*C(2*n+3, n+1)/2` -/
def P2472383599228790580.Spec : Prop :=
  ∀ n, P2472383599228790580.a n = (A038806 n : ℚ)

end A038806

/-! ## A038806.P13105581096731485041

`A210064(1+n)+A018218(n)`
-/

namespace A038806.P13105581096731485041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210064 (1 + n) + A018218 n

end

end A038806.P13105581096731485041

namespace A038806

/-- `A210064(1+n)+A018218(n)` -/
def P13105581096731485041.Spec : Prop :=
  ∀ n, P13105581096731485041.a n = A038806 n

end A038806

/-! ## A038806.P17719215233180207275

`∑[A210064(n+1)+A002697(n)]`
-/

namespace A038806.P17719215233180207275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210064 (n + 1) + A002697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038806.P17719215233180207275

namespace A038806

/-- `∑[A210064(n+1)+A002697(n)]` -/
def P17719215233180207275.Spec : Prop :=
  ∀ n, P17719215233180207275.a n = A038806 n

end A038806

/-! ## A038806.P49319047568479767

`A002697(n+1)-A000531(n+1)`
-/

namespace A038806.P49319047568479767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A000531 (n + 1)

end

end A038806.P49319047568479767

namespace A038806

/-- `A002697(n+1)-A000531(n+1)` -/
def P49319047568479767.Spec : Prop :=
  ∀ n, P49319047568479767.a n = A038806 n

end A038806

/-! ## A038806.P497048955991163015

`A001792(2*n)-A000531(n+1)`
-/

namespace A038806.P497048955991163015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - A000531 (n + 1)

end

end A038806.P497048955991163015

namespace A038806

/-- `A001792(2*n)-A000531(n+1)` -/
def P497048955991163015.Spec : Prop :=
  ∀ n, P497048955991163015.a n = A038806 n

end A038806

/-! ## A038806.P16573603076876131435

`(n+1)*A000302(n)-A000531(n+1)`
-/

namespace A038806.P16573603076876131435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000302 n - A000531 (n + 1)

end

end A038806.P16573603076876131435

namespace A038806

/-- `(n+1)*A000302(n)-A000531(n+1)` -/
def P16573603076876131435.Spec : Prop :=
  ∀ n, P16573603076876131435.a n = A038806 n

end A038806

/-! ## A038806.P10818265245742018864

`(n+1)*A008549(n)-A139262(n+1)`
-/

namespace A038806.P10818265245742018864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008549 n - A139262 (n + 1)

end

end A038806.P10818265245742018864

namespace A038806

/-- `(n+1)*A008549(n)-A139262(n+1)` -/
def P10818265245742018864.Spec : Prop :=
  ∀ n, P10818265245742018864.a n = A038806 n

end A038806

/-! ## A038806.P13073709583467387804

`∑[A008549(n)/A000302(n)]*A000302(n)`
-/

namespace A038806.P13073709583467387804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 n : ℚ) / (A000302 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000302 n : ℚ)

end

end A038806.P13073709583467387804

namespace A038806

/-- `∑[A008549(n)/A000302(n)]*A000302(n)` -/
def P13073709583467387804.Spec : Prop :=
  ∀ n, P13073709583467387804.a n = (A038806 n : ℚ)

end A038806

/-! ## A038806.P3431535953920121225

`A000079(n)*A001787(n+1)-A000531(n+1)`
-/

namespace A038806.P3431535953920121225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001787 (n + 1) - A000531 (n + 1)

end

end A038806.P3431535953920121225

namespace A038806

/-- `A000079(n)*A001787(n+1)-A000531(n+1)` -/
def P3431535953920121225.Spec : Prop :=
  ∀ n, P3431535953920121225.a n = A038806 n

end A038806

/-! ## A038806.P16300453754043222552

`A018218(n+1)-A002697(n+1)`
-/

namespace A038806.P16300453754043222552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 (n + 1) - A002697 (n + 1)

end

end A038806.P16300453754043222552

namespace A038806

/-- `A018218(n+1)-A002697(n+1)` -/
def P16300453754043222552.Spec : Prop :=
  ∀ n, P16300453754043222552.a n = A038806 n

end A038806

/-! ## A038806.P16067643410048142376

`A303602(n+1)-A212698(n+1)`
-/

namespace A038806.P16067643410048142376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 (n + 1) - A212698 (n + 1)

end

end A038806.P16067643410048142376

namespace A038806

/-- `A303602(n+1)-A212698(n+1)` -/
def P16067643410048142376.Spec : Prop :=
  ∀ n, P16067643410048142376.a n = A038806 n

end A038806

/-! ## A038806.P2231100517738095558

`A018218(n+1)-A002699(n+1)/2`
-/

namespace A038806.P2231100517738095558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018218 (n + 1) : ℚ) - (A002699 (n + 1) : ℚ) / 2

end

end A038806.P2231100517738095558

namespace A038806

/-- `A018218(n+1)-A002699(n+1)/2` -/
def P2231100517738095558.Spec : Prop :=
  ∀ n, P2231100517738095558.a n = (A038806 n : ℚ)

end A038806

/-! ## A038806.P4217074529576863312

`A303602(n+1)-(A002699(n+1)+A002697(n+1))`
-/

namespace A038806.P4217074529576863312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 (n + 1) - (A002699 (n + 1) + A002697 (n + 1))

end

end A038806.P4217074529576863312

namespace A038806

/-- `A303602(n+1)-(A002699(n+1)+A002697(n+1))` -/
def P4217074529576863312.Spec : Prop :=
  ∀ n, P4217074529576863312.a n = A038806 n

end A038806

/-! ## A038806.P12127653493176843110

`A395675(n+1)-(A002697(n+1)+A002457(n+1))`
-/

namespace A038806.P12127653493176843110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395675 (n + 1) - (A002697 (n + 1) + A002457 (n + 1))

end

end A038806.P12127653493176843110

namespace A038806

/-- `A395675(n+1)-(A002697(n+1)+A002457(n+1))` -/
def P12127653493176843110.Spec : Prop :=
  ∀ n, P12127653493176843110.a n = A038806 n

end A038806

/-!
# A038807: Future of the smallest-perizeroin komet in Kimberling's expulsion array (A035486).

The programs for A038807, there is no canonical definition to state claims against.
-/

/-! ## A038807.P13094138851014494786

`A007063(a(n-1))` with `a(0)=2`
-/

namespace A038807.P13094138851014494786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007063 (a (n - 1)).toNat

end

end A038807.P13094138851014494786

/-! ## A038807.P3987658457129699755

`A007063(floor(a(xor(-1, -n))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A038807.P3987658457129699755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007063 (a (Int.xor (-1) (-(n : ℤ))).toNat).toNat

end

end A038807.P3987658457129699755

/-! ## A038807.P12546959768107726229

`A007063(A000027(a(xor(-1, -n))))` with `a(0)=2`
-/

namespace A038807.P12546959768107726229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007063 (A000027 (a (Int.xor (-1) (-(n : ℤ))).toNat).toNat).toNat

end

end A038807.P12546959768107726229

/-!
# A038809: a(n) is the number of ways to write n in bases 2-10 such that the digit k-1 appears in the representation in base k.

The programs for A038809, there is no canonical definition to state claims against.
-/

/-! ## A038809.P18067144845453304542

`A337496(n)-A051904(A306753(n))`
-/

namespace A038809.P18067144845453304542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n - A051904 (A306753 n).toNat

end

end A038809.P18067144845453304542

/-! ## A038809.P5614198329171244628

`A337496(n)-A317624(A323522(n))`
-/

namespace A038809.P5614198329171244628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n - A317624 (A323522 n).toNat

end

end A038809.P5614198329171244628

/-! ## A038809.P14853684270082456523

`A001221(xor(A011915(n), A061233(n)))`
-/

namespace A038809.P14853684270082456523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A011915 n) (A061233 n)).toNat

end

end A038809.P14853684270082456523

/-! ## A038809.P2278652686635043968

`A337496(n)-A358006(A003114(2*n))`
-/

namespace A038809.P2278652686635043968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n - A358006 ((A003114 (2 * n)).toNat + 32)

end

end A038809.P2278652686635043968

/-!
# A038810: a(n) is the number of ways to write the number n as dk...di...d2d1d0 where digit di represents di * (di+1)^i, restricting di to 0..9.

The programs for A038810, there is no canonical definition to state claims against.
-/

/-! ## A038810.P10395161758576648107

`∑{p}[A000108(A008619(n)+1), A067752(#)]`
-/

namespace A038810.P10395161758576648107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A008619 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A067752 p

end

end A038810.P10395161758576648107

/-!
# A038812: Number of primes less than 1000n.

The programs for A038812, the canonical program `A038812.P17631679600982750051` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038812 has offset 1).

The definition of A038812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038812.P17631679600982750051

`A028505(10*(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038812

/-- `A028505(10*(n+1))` -/
def P17631679600982750051.Spec : Prop :=
  ∀ n, P17631679600982750051.a n = A038812 (n + 1)

theorem P17631679600982750051.correct : P17631679600982750051.Spec := by
  intro n
  simp only [A038812, Nat.add_sub_cancel]

end A038812

/-! ## A038812.P4742624178663077705

`A000720((n+1)*1000)`
-/

namespace A038812.P4742624178663077705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) * 1000)

end

end A038812.P4742624178663077705

namespace A038812

/-- `A000720((n+1)*1000)` -/
def P4742624178663077705.Spec : Prop :=
  ∀ n, P4742624178663077705.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P7922596193569637602

`∑[A038823(n)]`
-/

namespace A038812.P7922596193569637602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038812.P7922596193569637602

namespace A038812

/-- `∑[A038823(n)]` -/
def P7922596193569637602.Spec : Prop :=
  ∀ n, P7922596193569637602.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P6601902377601442403

`A028505(A008592(n+1))+A000007(n+1)`
-/

namespace A038812.P6601902377601442403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028505 (A008592 (n + 1)).toNat + A000007 (n + 1)

end

end A038812.P6601902377601442403

namespace A038812

/-- `A028505(A008592(n+1))+A000007(n+1)` -/
def P6601902377601442403.Spec : Prop :=
  ∀ n, P6601902377601442403.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P14542336705272186798

`A028505(A008592(n+1))%A181098(n+1)`
-/

namespace A038812.P14542336705272186798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (A008592 (n + 1)).toNat) (A181098 (n + 1))

end

end A038812.P14542336705272186798

namespace A038812

/-- `A028505(A008592(n+1))%A181098(n+1)` -/
def P14542336705272186798.Spec : Prop :=
  ∀ n, P14542336705272186798.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P17200143360899929921

`A028505(A008592(n+1))/A040001(A016813(n))`
-/

namespace A038812.P17200143360899929921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028505 (A008592 (n + 1)).toNat : ℚ) / (A040001 (A016813 n).toNat : ℚ)

end

end A038812.P17200143360899929921

namespace A038812

/-- `A028505(A008592(n+1))/A040001(A016813(n))` -/
def P17200143360899929921.Spec : Prop :=
  ∀ n, P17200143360899929921.a n = (A038812 (n + 1) : ℚ)

end A038812

/-! ## A038812.P4433048928275528252

`A028505(A008592(n+1))/A074206(A023569(n+3))`
-/

namespace A038812.P4433048928275528252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028505 (A008592 (n + 1)).toNat : ℚ) / (A074206 (A023569 (n + 3)).toNat : ℚ)

end

end A038812.P4433048928275528252

namespace A038812

/-- `A028505(A008592(n+1))/A074206(A023569(n+3))` -/
def P4433048928275528252.Spec : Prop :=
  ∀ n, P4433048928275528252.a n = (A038812 (n + 1) : ℚ)

end A038812

/-! ## A038812.P12320201361298449340

`A028505(A008592(n+1))/A074206(A020639(n+5))`
-/

namespace A038812.P12320201361298449340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028505 (A008592 (n + 1)).toNat : ℚ) / (A074206 (A020639 (n + 5)).toNat : ℚ)

end

end A038812.P12320201361298449340

namespace A038812

/-- `A028505(A008592(n+1))/A074206(A020639(n+5))` -/
def P12320201361298449340.Spec : Prop :=
  ∀ n, P12320201361298449340.a n = (A038812 (n + 1) : ℚ)

end A038812

/-! ## A038812.P354822719052405217

`A028505(A008592(n+1))%A002817(A139609(n))`
-/

namespace A038812.P354822719052405217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (A008592 (n + 1)).toNat) (A002817 (A139609 n).toNat)

end

end A038812.P354822719052405217

namespace A038812

/-- `A028505(A008592(n+1))%A002817(A139609(n))` -/
def P354822719052405217.Spec : Prop :=
  ∀ n, P354822719052405217.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P17639008386721368943

`A038801(A044332(n+1))`
-/

namespace A038812.P17639008386721368943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A044332 (n + 1)).toNat

end

end A038812.P17639008386721368943

namespace A038812

/-- `A038801(A044332(n+1))` -/
def P17639008386721368943.Spec : Prop :=
  ∀ n, P17639008386721368943.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P2860452841882970029

`A038801(A158128(n+1)-1)`
-/

namespace A038812.P2860452841882970029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A158128 (n + 1) - 1).toNat

end

end A038812.P2860452841882970029

namespace A038812

/-- `A038801(A158128(n+1)-1)` -/
def P2860452841882970029.Spec : Prop :=
  ∀ n, P2860452841882970029.a n = A038812 (n + 1)

end A038812

/-! ## A038812.P3491065792389030740

`A038801(xor(1, A158128(n+1)))`
-/

namespace A038812.P3491065792389030740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (Int.xor 1 (A158128 (n + 1))).toNat

end

end A038812.P3491065792389030740

namespace A038812

/-- `A038801(xor(1, A158128(n+1)))` -/
def P3491065792389030740.Spec : Prop :=
  ∀ n, P3491065792389030740.a n = A038812 (n + 1)

end A038812

/-!
# A038813: Number of primes less than 10000n.

The programs for A038813, the canonical program `A038813.P1626043926961271755` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038813 has offset 1).

The definition of A038813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038813.P1626043926961271755

`A038812(10*(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038813

/-- `A038812(10*(n+1))` -/
def P1626043926961271755.Spec : Prop :=
  ∀ n, P1626043926961271755.a n = A038813 (n + 1)

theorem P1626043926961271755.correct : P1626043926961271755.Spec := by
  intro n
  simp only [A038813, Nat.add_sub_cancel]

end A038813

/-! ## A038813.P15697253040035419486

`∑[A038824(n)]`
-/

namespace A038813.P15697253040035419486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038813.P15697253040035419486

namespace A038813

/-- `∑[A038824(n)]` -/
def P15697253040035419486.Spec : Prop :=
  ∀ n, P15697253040035419486.a n = A038813 (n + 1)

end A038813

/-! ## A038813.P747602290397126312

`record[A038812(10*A134478(n))]`
-/

namespace A038813.P747602290397126312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (10 * A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038813.P747602290397126312

namespace A038813

/-- `record[A038812(10*A134478(n))]` -/
def P747602290397126312.Spec : Prop :=
  ∀ n, P747602290397126312.a n = A038813 (n + 1)

end A038813

/-! ## A038813.P782007840575202626

`A028505(10*10*(n+1))`
-/

namespace A038813.P782007840575202626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028505 (10 * (10 * (n + 1)))

end

end A038813.P782007840575202626

namespace A038813

/-- `A028505(10*10*(n+1))` -/
def P782007840575202626.Spec : Prop :=
  ∀ n, P782007840575202626.a n = A038813 (n + 1)

end A038813

/-! ## A038813.P14901105383620458328

`or(C(2, n+2), A028505(A044332(n+1)))`
-/

namespace A038813.P14901105383620458328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A028505 (A044332 (n + 1)).toNat)

end

end A038813.P14901105383620458328

namespace A038813

/-- `or(C(2, n+2), A028505(A044332(n+1)))` -/
def P14901105383620458328.Spec : Prop :=
  ∀ n, P14901105383620458328.a n = A038813 (n + 1)

end A038813

/-! ## A038813.P9554956451831785102

`A028505(A044332(n+1))%A038827(n)`
-/

namespace A038813.P9554956451831785102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (A044332 (n + 1)).toNat) (A038827 n)

end

end A038813.P9554956451831785102

namespace A038813

/-- `A028505(A044332(n+1))%A038827(n)` -/
def P9554956451831785102.Spec : Prop :=
  ∀ n, P9554956451831785102.a n = A038813 (n + 1)

end A038813

/-! ## A038813.P4871384178933386911

`lcm(A028505(A044332(n+1)), A087960(n))`
-/

namespace A038813.P4871384178933386911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028505 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038813.P4871384178933386911

namespace A038813

/-- `lcm(A028505(A044332(n+1)), A087960(n))` -/
def P4871384178933386911.Spec : Prop :=
  ∀ n, (P4871384178933386911.a n : ℤ) = A038813 (n + 1)

end A038813

/-! ## A038813.P14544861907884403635

`or(A000007(n), A028505(A044332(n+1)))`
-/

namespace A038813.P14544861907884403635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A028505 (A044332 (n + 1)).toNat)

end

end A038813.P14544861907884403635

namespace A038813

/-- `or(A000007(n), A028505(A044332(n+1)))` -/
def P14544861907884403635.Spec : Prop :=
  ∀ n, P14544861907884403635.a n = A038813 (n + 1)

end A038813

/-!
# A038814: Number of primes less than 100000n.

The programs for A038814, the canonical program `A038814.P15162502239294799101` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038814 has offset 1).

The definition of A038814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038814.P15162502239294799101

`A038813(10*(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038814

/-- `A038813(10*(n+1))` -/
def P15162502239294799101.Spec : Prop :=
  ∀ n, P15162502239294799101.a n = A038814 (n + 1)

theorem P15162502239294799101.correct : P15162502239294799101.Spec := by
  intro n
  simp only [A038814, Nat.add_sub_cancel]

end A038814

/-! ## A038814.P3231716686248527580

`∑[A038825(n)]`
-/

namespace A038814.P3231716686248527580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038814.P3231716686248527580

namespace A038814

/-- `∑[A038825(n)]` -/
def P3231716686248527580.Spec : Prop :=
  ∀ n, P3231716686248527580.a n = A038814 (n + 1)

end A038814

/-! ## A038814.P17544601083815249023

`A038813(A008592(n+1))+A000007(n+1)`
-/

namespace A038814.P17544601083815249023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (A008592 (n + 1)).toNat + A000007 (n + 1)

end

end A038814.P17544601083815249023

namespace A038814

/-- `A038813(A008592(n+1))+A000007(n+1)` -/
def P17544601083815249023.Spec : Prop :=
  ∀ n, P17544601083815249023.a n = A038814 (n + 1)

end A038814

/-! ## A038814.P13763067170442581922

`A038813(A008592(n+1))%∑[A025299(n+1)]`
-/

namespace A038814.P13763067170442581922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038813 (A008592 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038814.P13763067170442581922

namespace A038814

/-- `A038813(A008592(n+1))%∑[A025299(n+1)]` -/
def P13763067170442581922.Spec : Prop :=
  ∀ n, P13763067170442581922.a n = A038814 (n + 1)

end A038814

/-! ## A038814.P13886736229816378708

`A038813(A008592(n+1))/A001221(A002144(n+1))`
-/

namespace A038814.P13886736229816378708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A008592 (n + 1)).toNat : ℚ) / (A001221 (A002144 (n + 1)).toNat : ℚ)

end

end A038814.P13886736229816378708

namespace A038814

/-- `A038813(A008592(n+1))/A001221(A002144(n+1))` -/
def P13886736229816378708.Spec : Prop :=
  ∀ n, P13886736229816378708.a n = (A038814 (n + 1) : ℚ)

end A038814

/-! ## A038814.P6581548820650958797

`A038812(50*2*(n+1))`
-/

namespace A038814.P6581548820650958797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (50 * (2 * (n + 1)))

end

end A038814.P6581548820650958797

namespace A038814

/-- `A038812(50*2*(n+1))` -/
def P6581548820650958797.Spec : Prop :=
  ∀ n, P6581548820650958797.a n = A038814 (n + 1)

end A038814

/-!
# A038815: Number of primes less than n*10^6.

The programs for A038815, the canonical program `A038815.P659222631407016470` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038815 has offset 1).

The definition of A038815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038815.P659222631407016470

`A038814(10*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038815

/-- `A038814(10*(n+1))` -/
def P659222631407016470.Spec : Prop :=
  ∀ n, P659222631407016470.a n = A038815 (n + 1)

theorem P659222631407016470.correct : P659222631407016470.Spec := by
  intro n
  simp only [A038815, Nat.add_sub_cancel]

end A038815

/-! ## A038815.P10040236537087611521

`∑[A038826(n)]`
-/

namespace A038815.P10040236537087611521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038815.P10040236537087611521

namespace A038815

/-- `∑[A038826(n)]` -/
def P10040236537087611521.Spec : Prop :=
  ∀ n, P10040236537087611521.a n = A038815 (n + 1)

end A038815

/-! ## A038815.P3878416369050636449

`A038813(10*10*(n+1))`
-/

namespace A038815.P3878416369050636449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (10 * (10 * (n + 1)))

end

end A038815.P3878416369050636449

namespace A038815

/-- `A038813(10*10*(n+1))` -/
def P3878416369050636449.Spec : Prop :=
  ∀ n, P3878416369050636449.a n = A038815 (n + 1)

end A038815

/-! ## A038815.P17711980360563020731

`or(char[1], A038813(A044332(n+1)))`
-/

namespace A038815.P17711980360563020731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038813 (A044332 (n + 1)).toNat)

end

end A038815.P17711980360563020731

namespace A038815

/-- `or(char[1], A038813(A044332(n+1)))` -/
def P17711980360563020731.Spec : Prop :=
  ∀ n, P17711980360563020731.a n = A038815 (n + 1)

end A038815

/-! ## A038815.P15684531101674785697

`A038813(A044332(n+1))%A080132(n)`
-/

namespace A038815.P15684531101674785697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038813 (A044332 (n + 1)).toNat) (A080132 n)

end

end A038815.P15684531101674785697

namespace A038815

/-- `A038813(A044332(n+1))%A080132(n)` -/
def P15684531101674785697.Spec : Prop :=
  ∀ n, P15684531101674785697.a n = A038815 (n + 1)

end A038815

/-! ## A038815.P12316914177295332430

`lcm(A038813(A044332(n+1)), A087960(n))`
-/

namespace A038815.P12316914177295332430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038813 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038815.P12316914177295332430

namespace A038815

/-- `lcm(A038813(A044332(n+1)), A087960(n))` -/
def P12316914177295332430.Spec : Prop :=
  ∀ n, (P12316914177295332430.a n : ℤ) = A038815 (n + 1)

end A038815

/-! ## A038815.P6559558207221424377

`A038813(A044332(n+1))/A007318(C(3, n))`
-/

namespace A038815.P6559558207221424377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A038815.P6559558207221424377

namespace A038815

/-- `A038813(A044332(n+1))/A007318(C(3, n))` -/
def P6559558207221424377.Spec : Prop :=
  ∀ n, P6559558207221424377.a n = (A038815 (n + 1) : ℚ)

end A038815

/-! ## A038815.P2170755383121514528

`A038813(A044332(n+1))^A007318(C(2, n))`
-/

namespace A038815.P2170755383121514528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A044332 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A038815.P2170755383121514528

namespace A038815

/-- `A038813(A044332(n+1))^A007318(C(2, n))` -/
def P2170755383121514528.Spec : Prop :=
  ∀ n, P2170755383121514528.a n = (A038815 (n + 1) : ℚ)

end A038815

/-! ## A038815.P3957056324875510714

`A038813(A044332(n+1))/A000041(C(2, n+2))`
-/

namespace A038815.P3957056324875510714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A044332 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A038815.P3957056324875510714

namespace A038815

/-- `A038813(A044332(n+1))/A000041(C(2, n+2))` -/
def P3957056324875510714.Spec : Prop :=
  ∀ n, P3957056324875510714.a n = (A038815 (n + 1) : ℚ)

end A038815

/-! ## A038815.P2564806370126648089

`A038813(A044332(n+1))/A000045(gcd(n, n+1))`
-/

namespace A038815.P2564806370126648089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A044332 (n + 1)).toNat : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A038815.P2564806370126648089

namespace A038815

/-- `A038813(A044332(n+1))/A000045(gcd(n, n+1))` -/
def P2564806370126648089.Spec : Prop :=
  ∀ n, P2564806370126648089.a n = (A038815 (n + 1) : ℚ)

end A038815

/-! ## A038815.P11125411659158090068

`A038813(A044332(n+1))^A014963(A008458(n))`
-/

namespace A038815.P11125411659158090068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038813 (A044332 (n + 1)).toNat : ℚ) ^ (A014963 (A008458 n).toNat : ℤ)

end

end A038815.P11125411659158090068

namespace A038815

/-- `A038813(A044332(n+1))^A014963(A008458(n))` -/
def P11125411659158090068.Spec : Prop :=
  ∀ n, P11125411659158090068.a n = (A038815 (n + 1) : ℚ)

end A038815

/-! ## A038815.P6951996130810243190

`A038813(A044332(n+1))+A010054(A001316(n+1))`
-/

namespace A038815.P6951996130810243190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (A044332 (n + 1)).toNat + A010054 (A001316 (n + 1)).toNat

end

end A038815.P6951996130810243190

namespace A038815

/-- `A038813(A044332(n+1))+A010054(A001316(n+1))` -/
def P6951996130810243190.Spec : Prop :=
  ∀ n, P6951996130810243190.a n = A038815 (n + 1)

end A038815

/-!
# A038816: Number of primes less than n*10^7.

The programs for A038816, the canonical program `A038816.P17540231470630764763` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038816 has offset 1).

The definition of A038816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038816.P17540231470630764763

`A038815(10*(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038816

/-- `A038815(10*(n+1))` -/
def P17540231470630764763.Spec : Prop :=
  ∀ n, P17540231470630764763.a n = A038816 (n + 1)

theorem P17540231470630764763.correct : P17540231470630764763.Spec := by
  intro n
  simp only [A038816, Nat.add_sub_cancel]

end A038816

/-! ## A038816.P13503260176835443916

`∑[A038827(n)]`
-/

namespace A038816.P13503260176835443916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038816.P13503260176835443916

namespace A038816

/-- `∑[A038827(n)]` -/
def P13503260176835443916.Spec : Prop :=
  ∀ n, P13503260176835443916.a n = A038816 (n + 1)

end A038816

/-! ## A038816.P4922978009363348270

`A038814(50*2*(n+1))`
-/

namespace A038816.P4922978009363348270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038814 (50 * (2 * (n + 1)))

end

end A038816.P4922978009363348270

namespace A038816

/-- `A038814(50*2*(n+1))` -/
def P4922978009363348270.Spec : Prop :=
  ∀ n, P4922978009363348270.a n = A038816 (n + 1)

end A038816

/-! ## A038816.P11759780841288530258

`A038814(A044332(n+1))+and(2, n²)`
-/

namespace A038816.P11759780841288530258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038814 (A044332 (n + 1)).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A038816.P11759780841288530258

namespace A038816

/-- `A038814(A044332(n+1))+and(2, n²)` -/
def P11759780841288530258.Spec : Prop :=
  ∀ n, P11759780841288530258.a n = A038816 (n + 1)

end A038816

/-! ## A038816.P7905661315780936754

`A038814(A044332(n+1))%A080132(n)`
-/

namespace A038816.P7905661315780936754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038814 (A044332 (n + 1)).toNat) (A080132 n)

end

end A038816.P7905661315780936754

namespace A038816

/-- `A038814(A044332(n+1))%A080132(n)` -/
def P7905661315780936754.Spec : Prop :=
  ∀ n, P7905661315780936754.a n = A038816 (n + 1)

end A038816

/-! ## A038816.P12014023310475315550

`lcm(A038814(A044332(n+1)), A087960(n))`
-/

namespace A038816.P12014023310475315550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038814 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038816.P12014023310475315550

namespace A038816

/-- `lcm(A038814(A044332(n+1)), A087960(n))` -/
def P12014023310475315550.Spec : Prop :=
  ∀ n, (P12014023310475315550.a n : ℤ) = A038816 (n + 1)

end A038816

/-! ## A038816.P12464152090479991290

`or(A000007(n), A038814(A044332(n+1)))`
-/

namespace A038816.P12464152090479991290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038814 (A044332 (n + 1)).toNat)

end

end A038816.P12464152090479991290

namespace A038816

/-- `or(A000007(n), A038814(A044332(n+1)))` -/
def P12464152090479991290.Spec : Prop :=
  ∀ n, P12464152090479991290.a n = A038816 (n + 1)

end A038816

/-! ## A038816.P7172300482875865403

`A038814(A044332(n+1))/A007318(C(2, n))`
-/

namespace A038816.P7172300482875865403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038814 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A038816.P7172300482875865403

namespace A038816

/-- `A038814(A044332(n+1))/A007318(C(2, n))` -/
def P7172300482875865403.Spec : Prop :=
  ∀ n, P7172300482875865403.a n = (A038816 (n + 1) : ℚ)

end A038816

/-!
# A038817: Number of primes less than n*10^8.

The programs for A038817, there is no canonical definition to state claims against.
-/

/-! ## A038817.P5985363136837860439

`∑[A038828(n)]`
-/

namespace A038817.P5985363136837860439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038817.P5985363136837860439

/-! ## A038817.P17565419214662280844

`A038816(10*(n+1))`
-/

namespace A038817.P17565419214662280844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (10 * (n + 1))

end

end A038817.P17565419214662280844

/-! ## A038817.P16538773017739960098

`record[A038816(A195817(n+2))]`
-/

namespace A038817.P16538773017739960098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (A195817 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038817.P16538773017739960098

/-! ## A038817.P16483920903086373625

`A038815(50*2*(n+1))`
-/

namespace A038817.P16483920903086373625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038815 (50 * (2 * (n + 1)))

end

end A038817.P16483920903086373625

/-! ## A038817.P17962382711638647233

`or(char[19], A038815(A044332(n+1)))`
-/

namespace A038817.P17962382711638647233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038815 (A044332 (n + 1)).toNat)

end

end A038817.P17962382711638647233

/-! ## A038817.P17994382423598489512

`A038815(A044332(n+1))%A080132(n)`
-/

namespace A038817.P17994382423598489512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038815 (A044332 (n + 1)).toNat) (A080132 n)

end

end A038817.P17994382423598489512

/-! ## A038817.P9033298202049278313

`lcm(A038815(A044332(n+1)), A087960(n))`
-/

namespace A038817.P9033298202049278313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038815 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038817.P9033298202049278313

/-! ## A038817.P5129905043223100843

`A038815(A044332(n+1))/A007318(C(2, n))`
-/

namespace A038817.P5129905043223100843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038815 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A038817.P5129905043223100843

/-!
# A038818: Number of primes less than n*10^9.

The programs for A038818, there is no canonical definition to state claims against.
-/

/-! ## A038818.P2681550961285475209

`∑[A038829(n)]`
-/

namespace A038818.P2681550961285475209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038818.P2681550961285475209

/-! ## A038818.P4031727661315290308

`A038817(10*(n+1))`
-/

namespace A038818.P4031727661315290308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038817 (10 * (n + 1))

end

end A038818.P4031727661315290308

/-! ## A038818.P16016187976431290336

`A038816(50*2*(n+1))`
-/

namespace A038818.P16016187976431290336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (50 * (2 * (n + 1)))

end

end A038818.P16016187976431290336

/-! ## A038818.P15066128378071570052

`or(char[1], A038816(A044332(n+1)))`
-/

namespace A038818.P15066128378071570052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038816 (A044332 (n + 1)).toNat)

end

end A038818.P15066128378071570052

/-! ## A038818.P5674991995888786837

`Δ[A038816(A044332(n))+a(n-1)]` with `a(0)=1`
-/

namespace A038818.P5674991995888786837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A038816 (A044332 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038818.P5674991995888786837

/-! ## A038818.P1683233461097585291

`A038816(A044332(n+1))%A080132(n)`
-/

namespace A038818.P1683233461097585291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038816 (A044332 (n + 1)).toNat) (A080132 n)

end

end A038818.P1683233461097585291

/-! ## A038818.P2105324252135131417

`lcm(A038816(A044332(n+1)), A087960(n))`
-/

namespace A038818.P2105324252135131417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038816 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038818.P2105324252135131417

/-! ## A038818.P13433371018383244584

`A038816(A044332(n+1))/A033999(n)²`
-/

namespace A038818.P13433371018383244584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038816 (A044332 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A038818.P13433371018383244584

/-! ## A038818.P1366593775309507870

`A038816(A044332(n+1))+A002262(∑[n])`
-/

namespace A038818.P1366593775309507870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (A044332 (n + 1)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038818.P1366593775309507870

/-! ## A038818.P8635094880703970795

`A038816(A044332(n+1))/A007318(C(2, n))`
-/

namespace A038818.P8635094880703970795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038816 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A038818.P8635094880703970795

/-! ## A038818.P8912451869870437569

`A038816(A044332(n+1))/A000041(C(2, n+2))`
-/

namespace A038818.P8912451869870437569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038816 (A044332 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A038818.P8912451869870437569

/-! ## A038818.P2811820306723710392

`A038816(A044332(n+1))^A007318(C(2, n+2))`
-/

namespace A038818.P2811820306723710392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038816 (A044332 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A038818.P2811820306723710392

/-!
# A038819: Number of primes less than n*10^10.

The programs for A038819, there is no canonical definition to state claims against.
-/

/-! ## A038819.P5690376396014437765

`∑[A038830(n)]`
-/

namespace A038819.P5690376396014437765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038819.P5690376396014437765

/-! ## A038819.P10827263297623042759

`A038818(10*(n+1))`
-/

namespace A038819.P10827263297623042759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038818 (10 * (n + 1))

end

end A038819.P10827263297623042759

/-! ## A038819.P9358738760729159483

`A038817((n+1)*100)`
-/

namespace A038819.P9358738760729159483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038817 ((n + 1) * 100)

end

end A038819.P9358738760729159483

/-! ## A038819.P16607285013775362856

`xor(1, xor(1, A038817(A044332(n+1))))`
-/

namespace A038819.P16607285013775362856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A038817 (A044332 (n + 1)).toNat))

end

end A038819.P16607285013775362856

/-! ## A038819.P11428861967517207899

`A038817(A044332(n+1))%A080132(n)`
-/

namespace A038819.P11428861967517207899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038817 (A044332 (n + 1)).toNat) (A080132 n)

end

end A038819.P11428861967517207899

/-! ## A038819.P11292044972837830477

`lcm(A020985(n), A038817(A044332(n+1)))`
-/

namespace A038819.P11292044972837830477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A038817 (A044332 (n + 1)).toNat)

end

end A038819.P11292044972837830477

/-! ## A038819.P8677848258203534504

`or(A000007(n), A038817(A044332(n+1)))`
-/

namespace A038819.P8677848258203534504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038817 (A044332 (n + 1)).toNat)

end

end A038819.P8677848258203534504

/-! ## A038819.P7150837510918701030

`A038817(A044332(n+1))^A008683(A005117(n+1))²`
-/

namespace A038819.P7150837510918701030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038817 (A044332 (n + 1)).toNat : ℚ) ^ (A008683 (A005117 (n + 1)).toNat ^ 2 : ℤ)

end

end A038819.P7150837510918701030

/-!
# A038820: Number of primes less than n*10^11.

The programs for A038820, there is no canonical definition to state claims against.
-/

/-! ## A038820.P16711006529074098986

`∑[A038831(n)]`
-/

namespace A038820.P16711006529074098986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038820.P16711006529074098986

/-! ## A038820.P13457607916142927497

`A038819(10*(n+1))`
-/

namespace A038820.P13457607916142927497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (10 * (n + 1))

end

end A038820.P13457607916142927497

/-! ## A038820.P7398299374084687885

`A038818(50*2*(n+1))`
-/

namespace A038820.P7398299374084687885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038818 (50 * (2 * (n + 1)))

end

end A038820.P7398299374084687885

/-! ## A038820.P10951785956719560677

`or(char[1], A038818(A044332(n+1)))`
-/

namespace A038820.P10951785956719560677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038818 (A044332 (n + 1)).toNat)

end

end A038820.P10951785956719560677

/-! ## A038820.P11565204526079136043

`lcm(A038818(A044332(n+1)), A087960(n))`
-/

namespace A038820.P11565204526079136043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038818 (A044332 (n + 1)).toNat) (A087960 n)

end

end A038820.P11565204526079136043

/-! ## A038820.P12553978183667111337

`A038818(A044332(n+1))/A033999(n)²`
-/

namespace A038820.P12553978183667111337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038818 (A044332 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A038820.P12553978183667111337

/-! ## A038820.P970269241108094313

`A038818(A044332(n+1))%A038821(n+1)`
-/

namespace A038820.P970269241108094313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038818 (A044332 (n + 1)).toNat) (A038821 (n + 1))

end

end A038820.P970269241108094313

/-! ## A038820.P9961054291103210504

`A007318(C(2, n))+A038818(A044332(n+1))-1`
-/

namespace A038820.P9961054291103210504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A038818 (A044332 (n + 1)).toNat - 1)

end

end A038820.P9961054291103210504

/-! ## A038820.P2782492107470351457

`A038818(A044332(n+1))+and(4, A001221(n+1))`
-/

namespace A038820.P2782492107470351457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038818 (A044332 (n + 1)).toNat + Int.land 4 (A001221 (n + 1))

end

end A038820.P2782492107470351457

/-! ## A038820.P5148626258908035624

`A038818(A044332(n+1))+A317439(n+1)-A005408(n)`
-/

namespace A038820.P5148626258908035624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038818 (A044332 (n + 1)).toNat + (A317439 (n + 1) - A005408 n)

end

end A038820.P5148626258908035624

/-!
# A038821: Number of primes less than n*10^12.

The programs for A038821, there is no canonical definition to state claims against.
-/

/-! ## A038821.P17481193976494056166

`∑[A038832(n)]`
-/

namespace A038821.P17481193976494056166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038821.P17481193976494056166

/-! ## A038821.P5410044458669297219

`A038820(10*(n+1))`
-/

namespace A038821.P5410044458669297219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038820 (10 * (n + 1))

end

end A038821.P5410044458669297219

/-! ## A038821.P4124064661526808937

`A038819(50*2*(n+1))`
-/

namespace A038821.P4124064661526808937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (50 * (2 * (n + 1)))

end

end A038821.P4124064661526808937

/-! ## A038821.P1028394379091288971

`xor(1, xor(1, A038819(A044332(n+1))))`
-/

namespace A038821.P1028394379091288971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A038819 (A044332 (n + 1)).toNat))

end

end A038821.P1028394379091288971

/-! ## A038821.P14375701686588206921

`lcm(A033999(n), A038819(A044332(n+1)))`
-/

namespace A038821.P14375701686588206921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A038819 (A044332 (n + 1)).toNat)

end

end A038821.P14375701686588206921

/-! ## A038821.P13170710102585600549

`A038819(A044332(n+1))/A304042(∑[n])`
-/

namespace A038821.P13170710102585600549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) / (A304042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A038821.P13170710102585600549

/-! ## A038821.P2305668563839307352

`A038819(A044332(n+1))+char[A017012(n)]`
-/

namespace A038821.P2305668563839307352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017012 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A044332 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A038821.P2305668563839307352

/-! ## A038821.P16921856375414396429

`A038819(A044332(n+1))+A000007(n+1)`
-/

namespace A038821.P16921856375414396429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A044332 (n + 1)).toNat + A000007 (n + 1)

end

end A038821.P16921856375414396429

/-! ## A038821.P4839438792075725674

`A038819(A044332(n+1))+A000038(n+1)`
-/

namespace A038821.P4839438792075725674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A044332 (n + 1)).toNat + A000038 (n + 1)

end

end A038821.P4839438792075725674

/-! ## A038821.P1218511236192062466

`A038819(A044332(n+1))%A080122(n+1)`
-/

namespace A038821.P1218511236192062466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038819 (A044332 (n + 1)).toNat) (A080122 (n + 1))

end

end A038821.P1218511236192062466

/-! ## A038821.P9982444141585280263

`A038819(A044332(n+1))/A007318(C(2, n))`
-/

namespace A038821.P9982444141585280263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A038821.P9982444141585280263

/-! ## A038821.P16399188088007535454

`A038819(A044332(n+1))+char[A339498(n+1)]`
-/

namespace A038821.P16399188088007535454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339498 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A044332 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A038821.P16399188088007535454

/-! ## A038821.P10512939270401393477

`A038819(A044332(n+1))+A008683(or(3, n)+1)`
-/

namespace A038821.P10512939270401393477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A044332 (n + 1)).toNat + A008683 (Nat.lor 3 n + 1)

end

end A038821.P10512939270401393477

/-! ## A038821.P11301500718177018190

`A038819(A044332(n+1))^A007318(C(2, n+1))`
-/

namespace A038821.P11301500718177018190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 1)) : ℤ)

end

end A038821.P11301500718177018190

/-! ## A038821.P18335411804579531044

`A038819(A044332(n+1))^A000010(((-1)^n)²)`
-/

namespace A038821.P18335411804579531044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) ^ (A000010 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A038821.P18335411804579531044

/-! ## A038821.P15435036228857847601

`A038819(A044332(n+1))/A006530((n+1)²+58)%2`
-/

namespace A038821.P15435036228857847601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) / (Int.tmod (A006530 ((n + 1) ^ 2 + 58)) 2 : ℚ)

end

end A038821.P15435036228857847601

/-! ## A038821.P16216193711152688892

`A038819(A044332(n+1))^A007318(A178334(n))`
-/

namespace A038821.P16216193711152688892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038819 (A044332 (n + 1)).toNat : ℚ) ^ (A007318 (A178334 n).toNat : ℤ)

end

end A038821.P16216193711152688892

/-!
# A038822: Number of primes between 100n and 100n+99.

The programs for A038822, the canonical program `A038822.P13838086464784480300` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038822 has offset 0).

The definition of A038822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038822.P18195225885582585766

`A298009(n+1)%50`
-/

namespace A038822.P18195225885582585766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

end

end A038822.P18195225885582585766

namespace A038822

/-- `A298009(n+1)%50` -/
def P18195225885582585766.Spec : Prop :=
  ∀ n, P18195225885582585766.a n = A038822 n

end A038822

/-! ## A038822.P14515646399251387430

`A298009(n+1)+4-A102439(n)`
-/

namespace A038822.P14515646399251387430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) + 4 - A102439 n

end

end A038822.P14515646399251387430

namespace A038822

/-- `A298009(n+1)+4-A102439(n)` -/
def P14515646399251387430.Spec : Prop :=
  ∀ n, P14515646399251387430.a n = A038822 n

theorem P14515646399251387430.correct : P14515646399251387430.Spec := by
  intro n
  simp only [A038822, Nat.add_sub_cancel, A038822.P14515646399251387430.a, A038822.P13838086464784480300.a, A000038, A000038.P13734959004655594922.a, A028505, A028505.P17073343684297780336.a, A102439, A102439.P10344858111576924215.a, A298009, A298009.P5562014499968808434.a, A000007, A000007.P6599383543502402472.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038822

/-! ## A038822.P13838086464784480300

`A028505(n+1)%A028505(A000038(n)+n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038822

/-- `A028505(n+1)%A028505(A000038(n)+n)` -/
def P13838086464784480300.Spec : Prop :=
  ∀ n, P13838086464784480300.a n = A038822 n

theorem P13838086464784480300.correct : P13838086464784480300.Spec := by
  intro n
  simp only [A038822]

end A038822

/-! ## A038822.P10757697657536059137

`A298009(n+1)-A008607(A008586(n))`
-/

namespace A038822.P10757697657536059137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

end

end A038822.P10757697657536059137

namespace A038822

/-- `A298009(n+1)-A008607(A008586(n))` -/
def P10757697657536059137.Spec : Prop :=
  ∀ n, P10757697657536059137.a n = A038822 n

end A038822

/-! ## A038822.P13075181979693255182

`Δ[A000720(A317325(A022144(n)))]`
-/

namespace A038822.P13075181979693255182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317325 (A022144 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038822.P13075181979693255182

namespace A038822

/-- `Δ[A000720(A317325(A022144(n)))]` -/
def P13075181979693255182.Spec : Prop :=
  ∀ n, P13075181979693255182.a n = A038822 n

end A038822

/-! ## A038822.P5013832564710953423

`A298009(n+1)-A008592(A008592(n))`
-/

namespace A038822.P5013832564710953423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008592 (A008592 n).toNat

end

end A038822.P5013832564710953423

namespace A038822

/-- `A298009(n+1)-A008592(A008592(n))` -/
def P5013832564710953423.Spec : Prop :=
  ∀ n, P5013832564710953423.a n = A038822 n

end A038822

/-! ## A038822.P10940122809565514063

`Δ[A000720(A151800(10*10*n))]`
-/

namespace A038822.P10940122809565514063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (10 * (10 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038822.P10940122809565514063

namespace A038822

/-- `Δ[A000720(A151800(10*10*n))]` -/
def P10940122809565514063.Spec : Prop :=
  ∀ n, P10940122809565514063.a n = A038822 n

end A038822

/-! ## A038822.P10443524982691263786

`Δ[A000720(A218255(A008592(n)))]`
-/

namespace A038822.P10443524982691263786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (A008592 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038822.P10443524982691263786

namespace A038822

/-- `Δ[A000720(A218255(A008592(n)))]` -/
def P10443524982691263786.Spec : Prop :=
  ∀ n, P10443524982691263786.a n = A038822 n

end A038822

/-! ## A038822.P5814713067172396997

`Δ[A061395(A151800(A008607(4*n)))]`
-/

namespace A038822.P5814713067172396997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A151800 (A008607 (4 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038822.P5814713067172396997

namespace A038822

/-- `Δ[A061395(A151800(A008607(4*n)))]` -/
def P5814713067172396997.Spec : Prop :=
  ∀ n, P5814713067172396997.a n = A038822 n

end A038822

/-! ## A038822.P10531660627414724723

`Δ[A000720(A008706(20*n))]`
-/

namespace A038822.P10531660627414724723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (20 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038822.P10531660627414724723

namespace A038822

/-- `Δ[A000720(A008706(20*n))]` -/
def P10531660627414724723.Spec : Prop :=
  ∀ n, P10531660627414724723.a n = A038822 n

end A038822

/-!
# A038823: Number of primes between n*1000 and (n+1)*1000.

The programs for A038823, the canonical program `A038823.P17116008269528267976` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038823 has offset 0).

The definition of A038823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038823.P17116008269528267976

`Δ[A038812(A028310(n))%A017286(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038823

/-- `Δ[A038812(A028310(n))%A017286(n)]` -/
def P17116008269528267976.Spec : Prop :=
  ∀ n, P17116008269528267976.a n = A038823 n

theorem P17116008269528267976.correct : P17116008269528267976.Spec := by
  intro n
  simp only [A038823]

end A038823

/-! ## A038823.P13738841402034249716

`Δ[A019431(2*n)*A038812(A028310(n))]`
-/

namespace A038823.P13738841402034249716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n) * A038812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038823.P13738841402034249716

namespace A038823

/-- `Δ[A019431(2*n)*A038812(A028310(n))]` -/
def P13738841402034249716.Spec : Prop :=
  ∀ n, P13738841402034249716.a n = A038823 n

end A038823

/-! ## A038823.P11768134313703054170

`A038812(n+1)%A038812(A000038(n)+n)`
-/

namespace A038823.P11768134313703054170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038812 (n + 1)) (A038812 (A000038 n + (n : ℤ)).toNat)

end

end A038823.P11768134313703054170

namespace A038823

/-- `A038812(n+1)%A038812(A000038(n)+n)` -/
def P11768134313703054170.Spec : Prop :=
  ∀ n, P11768134313703054170.a n = A038823 n

end A038823

/-! ## A038823.P5568123640298375078

`A038812(n+1)-A038812(A028310(n))*A057427(n)`
-/

namespace A038823.P5568123640298375078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (n + 1) - A038812 (A028310 n).toNat * A057427 n

end

end A038823.P5568123640298375078

namespace A038823

/-- `A038812(n+1)-A038812(A028310(n))*A057427(n)` -/
def P5568123640298375078.Spec : Prop :=
  ∀ n, P5568123640298375078.a n = A038823 n

end A038823

/-! ## A038823.P4063516643357752726

`Δ[A038812(A028310(n))*A057427(n)]`
-/

namespace A038823.P4063516643357752726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038823.P4063516643357752726

namespace A038823

/-- `Δ[A038812(A028310(n))*A057427(n)]` -/
def P4063516643357752726.Spec : Prop :=
  ∀ n, P4063516643357752726.a n = A038823 n

end A038823

/-! ## A038823.P938835086678547486

`Δ[A038812(A000038(n)+n)*A057427(n)]`
-/

namespace A038823.P938835086678547486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038812 (A000038 n + (n : ℤ)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038823.P938835086678547486

namespace A038823

/-- `Δ[A038812(A000038(n)+n)*A057427(n)]` -/
def P938835086678547486.Spec : Prop :=
  ∀ n, P938835086678547486.a n = A038823 n

end A038823

/-!
# A038824: Number of primes between n*10000 and (n+1)*10000.

The programs for A038824, the canonical program `A038824.P6591651217992895558` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038824 has offset 0).

The definition of A038824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038824.P6591651217992895558

`A038813(n+1)%A038813(A000038(n)+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038824

/-- `A038813(n+1)%A038813(A000038(n)+n)` -/
def P6591651217992895558.Spec : Prop :=
  ∀ n, P6591651217992895558.a n = A038824 n

theorem P6591651217992895558.correct : P6591651217992895558.Spec := by
  intro n
  simp only [A038824]

end A038824

/-! ## A038824.P2451214653516142844

`A038813(n+1)-A038813(A028310(n))*A057427(n)`
-/

namespace A038824.P2451214653516142844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (n + 1) - A038813 (A028310 n).toNat * A057427 n

end

end A038824.P2451214653516142844

namespace A038824

/-- `A038813(n+1)-A038813(A028310(n))*A057427(n)` -/
def P2451214653516142844.Spec : Prop :=
  ∀ n, P2451214653516142844.a n = A038824 n

end A038824

/-! ## A038824.P15950842136615668887

`Δ[A038813(A028310(n))*A057427(n)]`
-/

namespace A038824.P15950842136615668887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038824.P15950842136615668887

namespace A038824

/-- `Δ[A038813(A028310(n))*A057427(n)]` -/
def P15950842136615668887.Spec : Prop :=
  ∀ n, P15950842136615668887.a n = A038824 n

end A038824

/-! ## A038824.P15317075807940084282

`Δ[A038813(A028310(n))%A038813(n+1)]`
-/

namespace A038824.P15317075807940084282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038813 (A028310 n).toNat) (A038813 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038824.P15317075807940084282

namespace A038824

/-- `Δ[A038813(A028310(n))%A038813(n+1)]` -/
def P15317075807940084282.Spec : Prop :=
  ∀ n, P15317075807940084282.a n = A038824 n

end A038824

/-! ## A038824.P10072896318476774343

`Δ[A038813(A000038(n)+n)%A335338(n)]`
-/

namespace A038824.P10072896318476774343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038813 (A000038 n + (n : ℤ)).toNat) (A335338 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038824.P10072896318476774343

namespace A038824

/-- `Δ[A038813(A000038(n)+n)%A335338(n)]` -/
def P10072896318476774343.Spec : Prop :=
  ∀ n, P10072896318476774343.a n = A038824 n

end A038824

/-! ## A038824.P1824131768403750536

`Δ[A057428(n)²*A038813(A000038(n)+n)]`
-/

namespace A038824.P1824131768403750536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A038813 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038824.P1824131768403750536

namespace A038824

/-- `Δ[A057428(n)²*A038813(A000038(n)+n)]` -/
def P1824131768403750536.Spec : Prop :=
  ∀ n, P1824131768403750536.a n = A038824 n

end A038824

/-!
# A038825: Number of primes between n*100000 and (n+1)*100000.

The programs for A038825, the canonical program `A038825.P9275625098868966113` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038825 has offset 0).

The definition of A038825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038825.P9275625098868966113

`A038814(n+1)%A038814(A000038(n)+n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038825

/-- `A038814(n+1)%A038814(A000038(n)+n)` -/
def P9275625098868966113.Spec : Prop :=
  ∀ n, P9275625098868966113.a n = A038825 n

theorem P9275625098868966113.correct : P9275625098868966113.Spec := by
  intro n
  simp only [A038825]

end A038825

/-! ## A038825.P3726182188384248586

`Δ[A038813(A028310(10*n))*A057427(n)]`
-/

namespace A038825.P3726182188384248586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (A028310 (10 * n)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038825.P3726182188384248586

namespace A038825

/-- `Δ[A038813(A028310(10*n))*A057427(n)]` -/
def P3726182188384248586.Spec : Prop :=
  ∀ n, P3726182188384248586.a n = A038825 n

end A038825

/-!
# A038826: Number of primes between n*10^6 and (n+1)*10^6.

The programs for A038826, there is no canonical definition to state claims against.
-/

/-! ## A038826.P14483678495488790245

`Δ[A038815(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A038826.P14483678495488790245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038815 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038826.P14483678495488790245

/-!
# A038827: Number of primes between n*10^7 and (n+1)*10^7.

The programs for A038827, the canonical program `A038827.P13548366978547041850` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038827 has offset 0).

The definition of A038827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038827.P13548366978547041850

`Δ[A062157(n)²*A038816(A028310(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A038827

/-- `Δ[A062157(n)²*A038816(A028310(n))]` -/
def P13548366978547041850.Spec : Prop :=
  ∀ n, P13548366978547041850.a n = A038827 n

theorem P13548366978547041850.correct : P13548366978547041850.Spec := by
  intro n
  simp only [A038827]

end A038827

/-! ## A038827.P17024223446406291708

`A038816(n+1)%A038816(A000038(n)+n)`
-/

namespace A038827.P17024223446406291708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038816 (n + 1)) (A038816 (A000038 n + (n : ℤ)).toNat)

end

end A038827.P17024223446406291708

namespace A038827

/-- `A038816(n+1)%A038816(A000038(n)+n)` -/
def P17024223446406291708.Spec : Prop :=
  ∀ n, P17024223446406291708.a n = A038827 n

end A038827

/-! ## A038827.P3132278752479603967

`A038816(n+1)-A038816(A028310(n))*A057427(n)`
-/

namespace A038827.P3132278752479603967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (n + 1) - A038816 (A028310 n).toNat * A057427 n

end

end A038827.P3132278752479603967

namespace A038827

/-- `A038816(n+1)-A038816(A028310(n))*A057427(n)` -/
def P3132278752479603967.Spec : Prop :=
  ∀ n, P3132278752479603967.a n = A038827 n

end A038827

/-! ## A038827.P3893052648538954891

`Δ[A038816(A028310(n))*A057427(n)]`
-/

namespace A038827.P3893052648538954891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038827.P3893052648538954891

namespace A038827

/-- `Δ[A038816(A028310(n))*A057427(n)]` -/
def P3893052648538954891.Spec : Prop :=
  ∀ n, P3893052648538954891.a n = A038827 n

end A038827

/-! ## A038827.P3687310816681872158

`Δ[A038816(A028310(n))%A038816(n+1)]`
-/

namespace A038827.P3687310816681872158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038816 (A028310 n).toNat) (A038816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038827.P3687310816681872158

namespace A038827

/-- `Δ[A038816(A028310(n))%A038816(n+1)]` -/
def P3687310816681872158.Spec : Prop :=
  ∀ n, P3687310816681872158.a n = A038827 n

end A038827

/-! ## A038827.P2613081397390270425

`Δ[A038816(A028310(n))*A267869(n+6)]`
-/

namespace A038827.P2613081397390270425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038816 (A028310 n).toNat * A267869 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038827.P2613081397390270425

namespace A038827

/-- `Δ[A038816(A028310(n))*A267869(n+6)]` -/
def P2613081397390270425.Spec : Prop :=
  ∀ n, P2613081397390270425.a n = A038827 n

end A038827

/-!
# A038828: Number of primes between n*10^8 and (n+1)*10^8.

The programs for A038828, there is no canonical definition to state claims against.
-/

/-! ## A038828.P10107915503778908496

`Δ[A038817(A028310(n))%A038817(n+1)]`
-/

namespace A038828.P10107915503778908496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038817 (A028310 n).toNat) (A038817 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038828.P10107915503778908496

/-! ## A038828.P16854732074883847190

`Δ[A038817(A289207(n+1)+1)%A038817(n+1)]`
-/

namespace A038828.P16854732074883847190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038817 (A289207 (n + 1) + 1).toNat) (A038817 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038828.P16854732074883847190

/-! ## A038828.P4221533489923029409

`Δ[A038817(A254667(n+1)-1)%A038817(n+1)]`
-/

namespace A038828.P4221533489923029409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038817 (A254667 (n + 1) - 1).toNat) (A038817 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038828.P4221533489923029409

/-! ## A038828.P3961460055660792216

`Δ[A038817(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A038828.P3961460055660792216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038817 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038828.P3961460055660792216

/-!
# A038829: Number of primes between n*10^9 and (n+1)*10^9.

The programs for A038829, there is no canonical definition to state claims against.
-/

/-! ## A038829.P15026911552539992336

`Δ[A038818(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A038829.P15026911552539992336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038818 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038829.P15026911552539992336

/-!
# A038830: Number of primes between n*10^10 and (n+1)*10^10.

The programs for A038830, there is no canonical definition to state claims against.
-/

/-! ## A038830.P10732346793243111638

`Δ[A038819(A028310(n))*A057427(n)]`
-/

namespace A038830.P10732346793243111638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038830.P10732346793243111638

/-! ## A038830.P12280067454021082668

`Δ[A038819(A028310(n))%A038819(n+1)]`
-/

namespace A038830.P12280067454021082668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038819 (A028310 n).toNat) (A038819 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038830.P12280067454021082668

/-! ## A038830.P2809645302288610745

`Δ[A038819(A000038(n)+n)*A057427(n)]`
-/

namespace A038830.P2809645302288610745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038819 (A000038 n + (n : ℤ)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038830.P2809645302288610745

/-!
# A038831: Number of primes between n*10^11 and (n+1)*10^11.

The programs for A038831, there is no canonical definition to state claims against.
-/

/-! ## A038831.P16414492768890752188

`Δ[A038820(a(floor(n/10))+n)]` with `a(0)=0`
-/

namespace A038831.P16414492768890752188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038820 (f1 ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038831.P16414492768890752188

/-!
# A038832: Number of primes between n*10^12 and (n+1)*10^12.

The programs for A038832, there is no canonical definition to state claims against.
-/

/-! ## A038832.P1814273763780702494

`A038821(n+1)%A038821(A000038(n)+n)`
-/

namespace A038832.P1814273763780702494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038821 (n + 1)) (A038821 (A000038 n + (n : ℤ)).toNat)

end

end A038832.P1814273763780702494

/-! ## A038832.P5439197740904218423

`Δ[A038821(A028310(n))*A057427(n)]`
-/

namespace A038832.P5439197740904218423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038821 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038832.P5439197740904218423

/-! ## A038832.P3182589060662425425

`Δ[A038821(A028310(n))%A038821(n+1)]`
-/

namespace A038832.P3182589060662425425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038821 (A028310 n).toNat) (A038821 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038832.P3182589060662425425

/-!
# A038833: 3^n-th prime.

The programs for A038833, the canonical program `A038833.P10981305375396561285` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038833 has offset 0).

The definition of A038833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038833.P10981305375396561285

`A000040(3^n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038833

/-- `A000040(3^n)` -/
def P10981305375396561285.Spec : Prop :=
  ∀ n, P10981305375396561285.a n = A038833 n

theorem P10981305375396561285.correct : P10981305375396561285.Spec := by
  intro n
  simp only [A038833]

end A038833

/-! ## A038833.P11145392594970830326

`A135371(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A038833.P11145392594970830326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A135371 (n - 1) + a (n - 1)

end

end A038833.P11145392594970830326

namespace A038833

/-- `A135371(n-1)+a(n-1)` -/
def P11145392594970830326.Spec : Prop :=
  ∀ n, P11145392594970830326.a n = A038833 n

end A038833

/-! ## A038833.P7706164080043311863

`A347000(∑[n+2]-1)`
-/

namespace A038833.P7706164080043311863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A038833.P7706164080043311863

namespace A038833

/-- `A347000(∑[n+2]-1)` -/
def P7706164080043311863.Spec : Prop :=
  ∀ n, P7706164080043311863.a n = A038833 n

end A038833

/-! ## A038833.P3533043151268339685

`or(A000035(n), A347000(A034856(n+1)))`
-/

namespace A038833.P3533043151268339685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A347000 (A034856 (n + 1)).toNat)

end

end A038833.P3533043151268339685

namespace A038833

/-- `or(A000035(n), A347000(A034856(n+1)))` -/
def P3533043151268339685.Spec : Prop :=
  ∀ n, P3533043151268339685.a n = A038833 n

end A038833

/-! ## A038833.P12324331392071533943

`A347000(A034856(n+1))%A028990(n+1)`
-/

namespace A038833.P12324331392071533943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347000 (A034856 (n + 1)).toNat) (A028990 (n + 1))

end

end A038833.P12324331392071533943

namespace A038833

/-- `A347000(A034856(n+1))%A028990(n+1)` -/
def P12324331392071533943.Spec : Prop :=
  ∀ n, P12324331392071533943.a n = A038833 n

end A038833

/-!
# A038834: Past of komet 'k2' (A038807).

The programs for A038834, there is no canonical definition to state claims against.
-/

/-! ## A038834.P2690701972742819289

`A006852(a(n-1))` with `a(0)=2`
-/

namespace A038834.P2690701972742819289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006852 (a (n - 1)).toNat

end

end A038834.P2690701972742819289

/-! ## A038834.P17061820585854731042

`A006852(floor(a(A023443(n))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A038834.P17061820585854731042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006852 (a (A023443 n).toNat).toNat

end

end A038834.P17061820585854731042

/-! ## A038834.P2922379981800171213

`A006852(ceil(a(A023443(n))))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A038834.P2922379981800171213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006852 (a (A023443 n).toNat).toNat

end

end A038834.P2922379981800171213

/-!
# A038835: Partial sums of A008443.

The programs for A038835, there is no canonical definition to state claims against.
-/

/-! ## A038835.P11478190877322172541

`∑[A008443(n)]`
-/

namespace A038835.P11478190877322172541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P11478190877322172541

/-! ## A038835.P14192987917667935207

`A121055(n)/2`
-/

namespace A038835.P14192987917667935207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121055 n : ℚ) / 2

end

end A038835.P14192987917667935207

/-! ## A038835.P5921585917621788124

`A121054(n)/4`
-/

namespace A038835.P5921585917621788124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121054 n : ℚ) / 4

end

end A038835.P5921585917621788124

/-! ## A038835.P7996982308250801843

`∑[A005869(n)/2]`
-/

namespace A038835.P7996982308250801843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P7996982308250801843

/-! ## A038835.P6767053278306076763

`∑[A005886(n)/4]`
-/

namespace A038835.P6767053278306076763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P6767053278306076763

/-! ## A038835.P13737260812369007959

`∑[A238872(Δ[n²])]`
-/

namespace A038835.P13737260812369007959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P13737260812369007959

/-! ## A038835.P12653427008491094297

`∑[A005878(n)/8]`
-/

namespace A038835.P12653427008491094297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P12653427008491094297

/-! ## A038835.P8154873520028198982

`∑[A292511(2*n)]`
-/

namespace A038835.P8154873520028198982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292511 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P8154873520028198982

/-! ## A038835.P551688989504147162

`A292511(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A038835.P551688989504147162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292511 (n + n) + a (n - 1)

end

end A038835.P551688989504147162

/-! ## A038835.P3931932433302097376

`∑[A005925(8*n+3)/4]`
-/

namespace A038835.P3931932433302097376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005925 (8 * n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038835.P3931932433302097376

/-! ## A038835.P10642718543781660903

`A014682(A121055(n))`
-/

namespace A038835.P10642718543781660903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A121055 n).toNat

end

end A038835.P10642718543781660903

/-! ## A038835.P8748916642798165798

`A372512(A004771(n))`
-/

namespace A038835.P8748916642798165798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A004771 n).toNat

end

end A038835.P8748916642798165798

/-! ## A038835.P4552592592601861660

`A372512(A017101(n))`
-/

namespace A038835.P4552592592601861660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A017101 n).toNat

end

end A038835.P4552592592601861660

/-! ## A038835.P10732847432376623631

`A372512(A017113(n))`
-/

namespace A038835.P10732847432376623631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A017113 n).toNat

end

end A038835.P10732847432376623631

/-! ## A038835.P14125120557168036660

`A372512(A017137(n))`
-/

namespace A038835.P14125120557168036660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A017137 n).toNat

end

end A038835.P14125120557168036660

/-! ## A038835.P11576237977055056860

`A372512(A173512(n))`
-/

namespace A038835.P11576237977055056860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A173512 n).toNat

end

end A038835.P11576237977055056860

/-! ## A038835.P18317514697364685116

`A372512(A273312(n))`
-/

namespace A038835.P18317514697364685116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A273312 n).toNat

end

end A038835.P18317514697364685116

/-! ## A038835.P13663829002365655348

`A372512(A273407(n))`
-/

namespace A038835.P13663829002365655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A273407 n).toNat

end

end A038835.P13663829002365655348

/-! ## A038835.P13262060594731294724

`A372512(A281813(n))`
-/

namespace A038835.P13262060594731294724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A281813 n).toNat

end

end A038835.P13262060594731294724

/-! ## A038835.P8160578165478259874

`A372512(A004770(n+1))`
-/

namespace A038835.P8160578165478259874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (A004770 (n + 1)).toNat

end

end A038835.P8160578165478259874

/-!
# A038836: Convolution of Catalan numbers {1,2,5,14,...} with A002802 (5-fold convoluted central binomial coefficients).

The programs for A038836, the canonical program `A038836.P12222675618728716801` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038836 has offset 0).

The definition of A038836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038836.P12222675618728716801

`C(n+5, 2)*C(2*(n+3), n+2)/6-(n+3)*2^(2*n+3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038836

/-- `C(n+5, 2)*C(2*(n+3), n+2)/6-(n+3)*2^(2*n+3)` -/
def P12222675618728716801.Spec : Prop :=
  ∀ n, P12222675618728716801.a n = (A038836 n : ℚ)

end A038836

/-! ## A038836.P5130596574240700713

`(n/3+1)*A045720(n)`
-/

namespace A038836.P5130596574240700713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 1) * (A045720 n : ℚ)

end

end A038836.P5130596574240700713

namespace A038836

/-- `(n/3+1)*A045720(n)` -/
def P5130596574240700713.Spec : Prop :=
  ∀ n, P5130596574240700713.a n = (A038836 n : ℚ)

end A038836

/-! ## A038836.P9381982746898673660

`A029760(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A038836.P9381982746898673660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029760 n + 4 * a (n - 1)

end

end A038836.P9381982746898673660

namespace A038836

/-- `A029760(n)+4*a(n-1)` -/
def P9381982746898673660.Spec : Prop :=
  ∀ n, P9381982746898673660.a n = A038836 n

end A038836

/-! ## A038836.P11897632276043634983

`A029887(n+1)-A002802(n+1)`
-/

namespace A038836.P11897632276043634983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029887 (n + 1) - A002802 (n + 1)

end

end A038836.P11897632276043634983

namespace A038836

/-- `A029887(n+1)-A002802(n+1)` -/
def P11897632276043634983.Spec : Prop :=
  ∀ n, P11897632276043634983.a n = A038836 n

end A038836

/-! ## A038836.P5609649432798847171

`A002802(n+1)-A018218(n+2)`
-/

namespace A038836.P5609649432798847171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 (n + 1) - A018218 (n + 2)

end

end A038836.P5609649432798847171

namespace A038836

/-- `A002802(n+1)-A018218(n+2)` -/
def P5609649432798847171.Spec : Prop :=
  ∀ n, P5609649432798847171.a n = A038836 n

end A038836

/-! ## A038836.P3526020323338568118

`A000184(n+2)-A038806(n+1)`
-/

namespace A038836.P3526020323338568118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000184 (n + 2) - A038806 (n + 1)

end

end A038836.P3526020323338568118

namespace A038836

/-- `A000184(n+2)-A038806(n+1)` -/
def P3526020323338568118.Spec : Prop :=
  ∀ n, P3526020323338568118.a n = A038836 n

end A038836

/-! ## A038836.P2885165921556632170

`A113955(A167614(n+2))`
-/

namespace A038836.P2885165921556632170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113955 (A167614 (n + 2)).toNat

end

end A038836.P2885165921556632170

namespace A038836

/-- `A113955(A167614(n+2))` -/
def P2885165921556632170.Spec : Prop :=
  ∀ n, P2885165921556632170.a n = A038836 n

end A038836

/-!
# A038837: Solutions to HAKMEM Problem 45.

The programs for A038837, there is no canonical definition to state claims against.
-/

/-! ## A038837.P16084248420581980712

`record[A038838(n+1)%A038838(A247533(3*n+1))]`
-/

namespace A038837.P16084248420581980712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038838 (n + 1)) (A038838 (A247533 (3 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038837.P16084248420581980712

/-! ## A038837.P8941122741874109447

`A038838(A052382(n+1)%A097371(n+1))`
-/

namespace A038837.P8941122741874109447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (Int.tmod (A052382 (n + 1)) (A097371 (n + 1))).toNat

end

end A038837.P8941122741874109447

/-! ## A038837.P11152188965884209003

`A038838(A067251(n+1)%A353363(2*(n+2)))`
-/

namespace A038837.P11152188965884209003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (Int.tmod (A067251 (n + 1)) (A353363 (2 * (n + 2)))).toNat

end

end A038837.P11152188965884209003

/-! ## A038837.P17451643576871141113

`A038838(A229301(n+1)%A172487(3*n+2))`
-/

namespace A038837.P17451643576871141113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (Int.tmod (A229301 (n + 1)) (A172487 (3 * n + 2))).toNat

end

end A038837.P17451643576871141113

/-! ## A038837.P14370801006564802291

`A038838(A052382(n+1))%A013658(3*n+4)`
-/

namespace A038837.P14370801006564802291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038838 (A052382 (n + 1)).toNat) (A013658 (3 * n + 4))

end

end A038837.P14370801006564802291

/-!
# A038838: Numbers that are divisible by the square of an odd prime.

The programs for A038838, the canonical program `A038838.P4013668275804421176` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038838 has offset 1).

The definition of A038838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038838.P7816598175781038407

`filter[A344180(n), A353626(#)]`
-/

namespace A038838.P7816598175781038407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A038838.P7816598175781038407

namespace A038838

/-- `filter[A344180(n), A353626(#)]` -/
def P7816598175781038407.Spec : Prop :=
  ∀ n, P7816598175781038407.a n = A038838 (n + 1)

end A038838

/-! ## A038838.P499322706173825780

`filter[A013929(n+1), A353626(#)]`
-/

namespace A038838.P499322706173825780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A038838.P499322706173825780

namespace A038838

/-- `filter[A013929(n+1), A353626(#)]` -/
def P499322706173825780.Spec : Prop :=
  ∀ n, P499322706173825780.a n = A038838 (n + 1)

end A038838

/-! ## A038838.P3614807843270026576

`∪[A036785(n+1), A307579(n+1)]`
-/

namespace A038838.P3614807843270026576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P3614807843270026576

namespace A038838

/-- `∪[A036785(n+1), A307579(n+1)]` -/
def P3614807843270026576.Spec : Prop :=
  ∀ n, (P3614807843270026576.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P12680301138135792809

`∪[A036785(n+1), A319927(n+1)]`
-/

namespace A038838.P12680301138135792809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P12680301138135792809

namespace A038838

/-- `∪[A036785(n+1), A319927(n+1)]` -/
def P12680301138135792809.Spec : Prop :=
  ∀ n, (P12680301138135792809.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P10653518449327571733

`∪[A053850(n+1), A375397(n+1)]`
-/

namespace A038838.P10653518449327571733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P10653518449327571733

namespace A038838

/-- `∪[A053850(n+1), A375397(n+1)]` -/
def P10653518449327571733.Spec : Prop :=
  ∀ n, (P10653518449327571733.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P18179184125128050354

`∪[A307579(n+1), A347960(n+1)]`
-/

namespace A038838.P18179184125128050354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P18179184125128050354

namespace A038838

/-- `∪[A307579(n+1), A347960(n+1)]` -/
def P18179184125128050354.Spec : Prop :=
  ∀ n, (P18179184125128050354.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P6954550566795254431

`∪[A319927(n+1), A347960(n+1)]`
-/

namespace A038838.P6954550566795254431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P6954550566795254431

namespace A038838

/-- `∪[A319927(n+1), A347960(n+1)]` -/
def P6954550566795254431.Spec : Prop :=
  ∀ n, (P6954550566795254431.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P6672861939350644801

`∪[A307579(n+1), A375397(n+1)]`
-/

namespace A038838.P6672861939350644801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P6672861939350644801

namespace A038838

/-- `∪[A307579(n+1), A375397(n+1)]` -/
def P6672861939350644801.Spec : Prop :=
  ∀ n, (P6672861939350644801.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P10562284606636497891

`∪[A319927(n+1), A375397(n+1)]`
-/

namespace A038838.P10562284606636497891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P10562284606636497891

namespace A038838

/-- `∪[A319927(n+1), A375397(n+1)]` -/
def P10562284606636497891.Spec : Prop :=
  ∀ n, (P10562284606636497891.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P4402478860018232951

`∪[A376216(n+1), A381313(n+1)]`
-/

namespace A038838.P4402478860018232951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P4402478860018232951

namespace A038838

/-- `∪[A376216(n+1), A381313(n+1)]` -/
def P4402478860018232951.Spec : Prop :=
  ∀ n, (P4402478860018232951.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P15506330570647142398

`∪[A375397(n+1), A400161(n+1)]`
-/

namespace A038838.P15506330570647142398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038838.P15506330570647142398

namespace A038838

/-- `∪[A375397(n+1), A400161(n+1)]` -/
def P15506330570647142398.Spec : Prop :=
  ∀ n, (P15506330570647142398.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P12566317121948613074

`eq[1, A353626(n+1)]+1`
-/

namespace A038838.P12566317121948613074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038838.P12566317121948613074

namespace A038838

/-- `eq[1, A353626(n+1)]+1` -/
def P12566317121948613074.Spec : Prop :=
  ∀ n, (P12566317121948613074.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P16203426910289432391

`lt[1, A298735(n+1)]+1`
-/

namespace A038838.P16203426910289432391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038838.P16203426910289432391

namespace A038838

/-- `lt[1, A298735(n+1)]+1` -/
def P16203426910289432391.Spec : Prop :=
  ∀ n, (P16203426910289432391.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P17458586923313868758

`lt[1, A336649(n+1)]+1`
-/

namespace A038838.P17458586923313868758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038838.P17458586923313868758

namespace A038838

/-- `lt[1, A336649(n+1)]+1` -/
def P17458586923313868758.Spec : Prop :=
  ∀ n, (P17458586923313868758.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P17937526779767428575

`lt[A353627(n+1), 1]+1`
-/

namespace A038838.P17937526779767428575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A038838.P17937526779767428575

namespace A038838

/-- `lt[A353627(n+1), 1]+1` -/
def P17937526779767428575.Spec : Prop :=
  ∀ n, (P17937526779767428575.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P4013668275804421176

`eq[1, A067856(n+1)+1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038838

/-- `eq[1, A067856(n+1)+1]+1` -/
def P4013668275804421176.Spec : Prop :=
  ∀ n, (P4013668275804421176.a n : ℤ) = A038838 (n + 1)

theorem P4013668275804421176.correct : P4013668275804421176.Spec := by
  intro n
  simp only [A038838, Nat.add_sub_cancel]

end A038838

/-! ## A038838.P3106169593357007624

`eq[1, A078461(n+1)+1]+1`
-/

namespace A038838.P3106169593357007624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038838.P3106169593357007624

namespace A038838

/-- `eq[1, A078461(n+1)+1]+1` -/
def P3106169593357007624.Spec : Prop :=
  ∀ n, (P3106169593357007624.a n : ℤ) = A038838 (n + 1)

end A038838

/-! ## A038838.P16796376955406609010

`filter[A319701(n+1), A353626(#)]`
-/

namespace A038838.P16796376955406609010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A038838.P16796376955406609010

namespace A038838

/-- `filter[A319701(n+1), A353626(#)]` -/
def P16796376955406609010.Spec : Prop :=
  ∀ n, P16796376955406609010.a n = A038838 (n + 1)

end A038838

/-! ## A038838.P8577382644023950552

`filter[A319702(n+1), A353626(#)]`
-/

namespace A038838.P8577382644023950552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A038838.P8577382644023950552

namespace A038838

/-- `filter[A319702(n+1), A353626(#)]` -/
def P8577382644023950552.Spec : Prop :=
  ∀ n, P8577382644023950552.a n = A038838 (n + 1)

end A038838

/-! ## A038838.P2947082956618334744

`lt[2, A006530(A008833(n+1))]+1`
-/

namespace A038838.P2947082956618334744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038838.P2947082956618334744

namespace A038838

/-- `lt[2, A006530(A008833(n+1))]+1` -/
def P2947082956618334744.Spec : Prop :=
  ∀ n, (P2947082956618334744.a n : ℤ) = A038838 (n + 1)

end A038838

/-!
# A038839: In A038837 but not A038838.

The programs for A038839, there is no canonical definition to state claims against.
-/

/-! ## A038839.P11772194690445905050

`∩[A230851(A028806(n+1)), A052223(n+1)]`
-/

namespace A038839.P11772194690445905050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230851 (A028806 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038839.P11772194690445905050

/-!
# A038840: Cubes that are concatenations of primes.

The programs for A038840, there is no canonical definition to state claims against.
-/

/-! ## A038840.P7137049873320270739

`A165631(n+1)^3`
-/

namespace A038840.P7137049873320270739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165631 (n + 1) ^ 3

end

end A038840.P7137049873320270739

/-! ## A038840.P7878482018321083305

`A000578(A165631(n+1))`
-/

namespace A038840.P7878482018321083305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A165631 (n + 1)).toNat

end

end A038840.P7878482018321083305

/-! ## A038840.P16179581701973912849

`A184628(A165631(-xor(n, -1)))`
-/

namespace A038840.P16179581701973912849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A165631 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A038840.P16179581701973912849

/-! ## A038840.P10281880984517137691

`A184628(A165631(2*n-n+1))`
-/

namespace A038840.P10281880984517137691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A165631 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A038840.P10281880984517137691

/-! ## A038840.P5589877467695041874

`A007318(C(2, n))*A184628(A165631(n+1))`
-/

namespace A038840.P5589877467695041874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184628 (A165631 (n + 1)).toNat

end

end A038840.P5589877467695041874

/-! ## A038840.P2442839158829741824

`A000041(C(2, n+2))*A184628(A165631(n+1))`
-/

namespace A038840.P2442839158829741824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A184628 (A165631 (n + 1)).toNat

end

end A038840.P2442839158829741824

/-! ## A038840.P16583573822352642963

`log2(A020639(2*(n+1)))*A184628(A165631(n+1))`
-/

namespace A038840.P16583573822352642963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A184628 (A165631 (n + 1)).toNat : ℝ)

end

end A038840.P16583573822352642963

/-! ## A038840.P7207240172868422431

`A007318(floor(2/(n+1)))-A024001(A165631(n+1))`
-/

namespace A038840.P7207240172868422431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊2 / (n + 1 : ℚ)⌋.toNat - A024001 (A165631 (n + 1)).toNat

end

end A038840.P7207240172868422431

/-!
# A038844: Numbers k for which 6*k+1 divides 2^k-1.

The programs for A038844, there is no canonical definition to state claims against.
-/

/-! ## A038844.P17334609346418563238

`lt[lcm(n, A002326(3*n)), n*sqrt(2)]`
-/

namespace A038844.P17334609346418563238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A002326 (3 * n))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A038844.P17334609346418563238

/-! ## A038844.P9757777099956319196

`eq[2, (n+2)%A007733(6*n+1)]`
-/

namespace A038844.P9757777099956319196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A007733 (6 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038844.P9757777099956319196

/-!
# A038845: 3-fold convolution of A000302 (powers of 4).

The programs for A038845, the canonical program `A038845.P10136250894992964610` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038845 has offset 0).

The definition of A038845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038845.P10136250894992964610

`4^n*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038845

/-- `4^n*C(n+2, 2)` -/
def P10136250894992964610.Spec : Prop :=
  ∀ n, (P10136250894992964610.a n : ℤ) = A038845 n

theorem P10136250894992964610.correct : P10136250894992964610.Spec := by
  intro n
  simp only [A038845]

end A038845

/-! ## A038845.P6389789706965847100

`(n+2)*(n+1)*2^(2*n-1)`
-/

namespace A038845.P6389789706965847100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A038845.P6389789706965847100

namespace A038845

/-- `(n+2)*(n+1)*2^(2*n-1)` -/
def P6389789706965847100.Spec : Prop :=
  ∀ n, P6389789706965847100.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P15303208247506405371

`ogf(1/(1-12x+48x^2-64x^3))`
-/

namespace A038845.P15303208247506405371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 48, -64] n

end

end A038845.P15303208247506405371

namespace A038845

/-- `ogf(1/(1-12x+48x^2-64x^3))` -/
def P15303208247506405371.Spec : Prop :=
  ∀ n, P15303208247506405371.a n = A038845 n

end A038845

/-! ## A038845.P10243549789234279341

`C(2+n, 2)*4^n`
-/

namespace A038845.P10243549789234279341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + n) 2 * 4 ^ n

end

end A038845.P10243549789234279341

namespace A038845

/-- `C(2+n, 2)*4^n` -/
def P10243549789234279341.Spec : Prop :=
  ∀ n, (P10243549789234279341.a n : ℤ) = A038845 n

theorem P10243549789234279341.correct : P10243549789234279341.Spec := by
  intro n
  simp only [A038845, Nat.add_sub_cancel, A038845.P10243549789234279341.a, A038845.P10136250894992964610.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A038845

/-! ## A038845.P17592220172194757597

`∑{#}[n, (#+1)*4^n]`
-/

namespace A038845.P17592220172194757597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1) * 4 ^ n

end

end A038845.P17592220172194757597

namespace A038845

/-- `∑{#}[n, (#+1)*4^n]` -/
def P17592220172194757597.Spec : Prop :=
  ∀ n, (P17592220172194757597.a n : ℤ) = A038845 n

end A038845

/-! ## A038845.P8119086613011859609

`C(n+2, 2)/4^-n`
-/

namespace A038845.P8119086613011859609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A038845.P8119086613011859609

namespace A038845

/-- `C(n+2, 2)/4^-n` -/
def P8119086613011859609.Spec : Prop :=
  ∀ n, P8119086613011859609.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P14196640718671740947

`lcm(n+1, 4^n*∑[n+1])`
-/

namespace A038845.P14196640718671740947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A038845.P14196640718671740947

namespace A038845

/-- `lcm(n+1, 4^n*∑[n+1])` -/
def P14196640718671740947.Spec : Prop :=
  ∀ n, (P14196640718671740947.a n : ℤ) = A038845 n

end A038845

/-! ## A038845.P4110643146290948071

`4*(n+2)*a(n-1)/n` with `a(0)=1`
-/

namespace A038845.P4110643146290948071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((n + 2 : ℚ) * (a (n - 1) / (n : ℚ)))

end

end A038845.P4110643146290948071

namespace A038845

/-- `4*(n+2)*a(n-1)/n` -/
def P4110643146290948071.Spec : Prop :=
  ∀ n, P4110643146290948071.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P476146875163978373

`∑[4*a(n-1)]*∑[n+1]` with `a(0)=1, a(1)=3`
-/

namespace A038845.P476146875163978373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A038845.P476146875163978373

namespace A038845

/-- `∑[4*a(n-1)]*∑[n+1]` -/
def P476146875163978373.Spec : Prop :=
  ∀ n, (P476146875163978373.a n : ℤ) = A038845 n

end A038845

/-! ## A038845.P10455501731601151499

`A084901(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A038845.P10455501731601151499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084901 (n + 1) - a (n - 1)

end

end A038845.P10455501731601151499

namespace A038845

/-- `A084901(n+1)-a(n-1)` -/
def P10455501731601151499.Spec : Prop :=
  ∀ n, P10455501731601151499.a n = A038845 n

end A038845

/-! ## A038845.P12119380254495556326

`abs(A000079(n)²*∑[n+1]-1)+1`
-/

namespace A038845.P12119380254495556326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| + 1

end

end A038845.P12119380254495556326

namespace A038845

/-- `abs(A000079(n)²*∑[n+1]-1)+1` -/
def P12119380254495556326.Spec : Prop :=
  ∀ n, P12119380254495556326.a n = A038845 n

end A038845

/-! ## A038845.P14004141298261244369

`and(∑[n+1]*A000079(2*n), -(n+1))`
-/

namespace A038845.P14004141298261244369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (2 * n)) (-(n + 1 : ℤ))

end

end A038845.P14004141298261244369

namespace A038845

/-- `and(∑[n+1]*A000079(2*n), -(n+1))` -/
def P14004141298261244369.Spec : Prop :=
  ∀ n, P14004141298261244369.a n = A038845 n

end A038845

/-! ## A038845.P4506572749152315403

`A001792(n)*A005183(n+1)-A001792(n)`
-/

namespace A038845.P4506572749152315403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A005183 (n + 1) - A001792 n

end

end A038845.P4506572749152315403

namespace A038845

/-- `A001792(n)*A005183(n+1)-A001792(n)` -/
def P4506572749152315403.Spec : Prop :=
  ∀ n, P4506572749152315403.a n = A038845 n

end A038845

/-! ## A038845.P5884029108456100566

`A052780(n+2)/2`
-/

namespace A038845.P5884029108456100566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052780 (n + 2) : ℚ) / 2

end

end A038845.P5884029108456100566

namespace A038845

/-- `A052780(n+2)/2` -/
def P5884029108456100566.Spec : Prop :=
  ∀ n, P5884029108456100566.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P6211887470884557892

`∑[n+1]*A004171(n)/2`
-/

namespace A038845.P6211887470884557892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004171 n : ℚ) / 2

end

end A038845.P6211887470884557892

namespace A038845

/-- `∑[n+1]*A004171(n)/2` -/
def P6211887470884557892.Spec : Prop :=
  ∀ n, P6211887470884557892.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P7081634627716671670

`(n+2)*A002697(n+1)/2`
-/

namespace A038845.P7081634627716671670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A002697 (n + 1) : ℚ) / 2

end

end A038845.P7081634627716671670

namespace A038845

/-- `(n+2)*A002697(n+1)/2` -/
def P7081634627716671670.Spec : Prop :=
  ∀ n, P7081634627716671670.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P3996261973225724981

`∑[n+1]*Δ[Δ[A002450(n)]]/3`
-/

namespace A038845.P3996261973225724981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n) : ℚ) / 3

end

end A038845.P3996261973225724981

namespace A038845

/-- `∑[n+1]*Δ[Δ[A002450(n)]]/3` -/
def P3996261973225724981.Spec : Prop :=
  ∀ n, P3996261973225724981.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P14814700702918429750

`∑[2*(n+1)]*A000079(n)²/2`
-/

namespace A038845.P14814700702918429750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n ^ 2 : ℚ) / 2

end

end A038845.P14814700702918429750

namespace A038845

/-- `∑[2*(n+1)]*A000079(n)²/2` -/
def P14814700702918429750.Spec : Prop :=
  ∀ n, P14814700702918429750.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P4088475378008124443

`∑[n+1]*A155559(2*n+1)/2`
-/

namespace A038845.P4088475378008124443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A155559 (2 * n + 1) : ℚ) / 2

end

end A038845.P4088475378008124443

namespace A038845

/-- `∑[n+1]*A155559(2*n+1)/2` -/
def P4088475378008124443.Spec : Prop :=
  ∀ n, P4088475378008124443.a n = (A038845 n : ℚ)

end A038845

/-! ## A038845.P6288997875641831387

`∑[2*(n+1)]*A000079(2*n)/2`
-/

namespace A038845.P6288997875641831387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 (2 * n) : ℚ) / 2

end

end A038845.P6288997875641831387

namespace A038845

/-- `∑[2*(n+1)]*A000079(2*n)/2` -/
def P6288997875641831387.Spec : Prop :=
  ∀ n, P6288997875641831387.a n = (A038845 n : ℚ)

end A038845

/-!
# A038846: 4-fold convolution of A000302 (powers of 4); expansion of g.f. 1/(1-4*x)^4.

The programs for A038846, the canonical program `A038846.P5565282016912556467` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038846 has offset 0).

The definition of A038846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038846.P5565282016912556467

`4^n*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038846

/-- `4^n*C(n+3, 3)` -/
def P5565282016912556467.Spec : Prop :=
  ∀ n, (P5565282016912556467.a n : ℤ) = A038846 n

theorem P5565282016912556467.correct : P5565282016912556467.Spec := by
  intro n
  simp only [A038846]

end A038846

/-! ## A038846.P10251654455520925657

`4^n*∑[∑[n+1]]`
-/

namespace A038846.P10251654455520925657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038846.P10251654455520925657

namespace A038846

/-- `4^n*∑[∑[n+1]]` -/
def P10251654455520925657.Spec : Prop :=
  ∀ n, (P10251654455520925657.a n : ℤ) = A038846 n

end A038846

/-! ## A038846.P14041792045374947841

`C(n+3, 3)/4^-n`
-/

namespace A038846.P14041792045374947841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A038846.P14041792045374947841

namespace A038846

/-- `C(n+3, 3)/4^-n` -/
def P14041792045374947841.Spec : Prop :=
  ∀ n, P14041792045374947841.a n = (A038846 n : ℚ)

theorem P14041792045374947841.correct : P14041792045374947841.Spec := by
  intro n
  simp only [A038846, Nat.add_sub_cancel, A038846.P14041792045374947841.a, A038846.P5565282016912556467.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A038846

/-! ## A038846.P12564599563260238131

`floor(4*(a(n-1)+3*a(n-1)/n))` with `a(0)=1`
-/

namespace A038846.P12564599563260238131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 * ((a (n - 1) : ℚ) + (3 * a (n - 1) : ℚ) / (n : ℚ))⌋

end

end A038846.P12564599563260238131

namespace A038846

/-- `floor(4*(a(n-1)+3*a(n-1)/n))` -/
def P12564599563260238131.Spec : Prop :=
  ∀ n, P12564599563260238131.a n = A038846 n

end A038846

/-! ## A038846.P14285869561963676949

`record[A058187(n)*A123344(n)]`
-/

namespace A038846.P14285869561963676949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n * A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038846.P14285869561963676949

namespace A038846

/-- `record[A058187(n)*A123344(n)]` -/
def P14285869561963676949.Spec : Prop :=
  ∀ n, P14285869561963676949.a n = A038846 n

end A038846

/-! ## A038846.P17907472354246660324

`∑[∑[A084851(n)]*A001792(n)]`
-/

namespace A038846.P17907472354246660324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038846.P17907472354246660324

namespace A038846

/-- `∑[∑[A084851(n)]*A001792(n)]` -/
def P17907472354246660324.Spec : Prop :=
  ∀ n, P17907472354246660324.a n = A038846 n

end A038846

/-! ## A038846.P5628899937639441264

`∑[Δ[A001788(n)]*A001792(n)]`
-/

namespace A038846.P5628899937639441264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038846.P5628899937639441264

namespace A038846

/-- `∑[Δ[A001788(n)]*A001792(n)]` -/
def P5628899937639441264.Spec : Prop :=
  ∀ n, P5628899937639441264.a n = A038846 n

end A038846

/-! ## A038846.P7865688561304131413

`∑[Δ[A048506(n)]*A001792(n)]`
-/

namespace A038846.P7865688561304131413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038846.P7865688561304131413

namespace A038846

/-- `∑[Δ[A048506(n)]*A001792(n)]` -/
def P7865688561304131413.Spec : Prop :=
  ∀ n, P7865688561304131413.a n = A038846 n

end A038846

/-! ## A038846.P4809341213707684802

`∑[A001792(n)*A001793(n+1)]`
-/

namespace A038846.P4809341213707684802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A001793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038846.P4809341213707684802

namespace A038846

/-- `∑[A001792(n)*A001793(n+1)]` -/
def P4809341213707684802.Spec : Prop :=
  ∀ n, P4809341213707684802.a n = A038846 n

end A038846

/-! ## A038846.P4712069112848048598

`A036070(n+1)-A001792(n+1)²`
-/

namespace A038846.P4712069112848048598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036070 (n + 1) - A001792 (n + 1) ^ 2

end

end A038846.P4712069112848048598

namespace A038846

/-- `A036070(n+1)-A001792(n+1)²` -/
def P4712069112848048598.Spec : Prop :=
  ∀ n, P4712069112848048598.a n = A038846 n

end A038846

/-! ## A038846.P8879961976428104517

`A006044(n+4)/6`
-/

namespace A038846.P8879961976428104517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006044 (n + 4) : ℚ) / 6

end

end A038846.P8879961976428104517

namespace A038846

/-- `A006044(n+4)/6` -/
def P8879961976428104517.Spec : Prop :=
  ∀ n, P8879961976428104517.a n = (A038846 n : ℚ)

theorem P8879961976428104517.correct : P8879961976428104517.Spec := by
  intro n
  simp only [A038846, Nat.add_sub_cancel, A038846.P8879961976428104517.a, A038846.P5565282016912556467.a, A006044, A006044.P7487657658477397367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038846

/-! ## A038846.P6884728794094750910

`A000079(2*n+1)*A000292(n+1)/2`
-/

namespace A038846.P6884728794094750910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) * A000292 (n + 1) : ℚ) / 2

end

end A038846.P6884728794094750910

namespace A038846

/-- `A000079(2*n+1)*A000292(n+1)/2` -/
def P6884728794094750910.Spec : Prop :=
  ∀ n, P6884728794094750910.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P16043235859239602697

`∑[∑[n+1]]*A011782(A004277(n+1))/2`
-/

namespace A038846.P16043235859239602697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 (A004277 (n + 1)).toNat : ℚ) / 2

end

end A038846.P16043235859239602697

namespace A038846

/-- `∑[∑[n+1]]*A011782(A004277(n+1))/2` -/
def P16043235859239602697.Spec : Prop :=
  ∀ n, P16043235859239602697.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P10745937109490119175

`4*(n+3)*a(n-1)/n` with `a(0)=1`
-/

namespace A038846.P10745937109490119175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (n + 3) : ℚ) * a (n - 1) / (n : ℚ)

end

end A038846.P10745937109490119175

namespace A038846

/-- `4*(n+3)*a(n-1)/n` -/
def P10745937109490119175.Spec : Prop :=
  ∀ n, P10745937109490119175.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P326813501570948708

`A001788(n+1)*A001789(n+3)/A000217(n+1)`
-/

namespace A038846.P326813501570948708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (n + 1) * A001789 (n + 3) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A038846.P326813501570948708

namespace A038846

/-- `A001788(n+1)*A001789(n+3)/A000217(n+1)` -/
def P326813501570948708.Spec : Prop :=
  ∀ n, P326813501570948708.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P2861894742301246790

`A000217(n+1)*A001794(2*n)/A000217(2*n+1)`
-/

namespace A038846.P2861894742301246790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) * A001794 (2 * n) : ℚ) / (A000217 (2 * n + 1) : ℚ)

end

end A038846.P2861894742301246790

namespace A038846

/-- `A000217(n+1)*A001794(2*n)/A000217(2*n+1)` -/
def P2861894742301246790.Spec : Prop :=
  ∀ n, P2861894742301246790.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P4482192507644876136

`A000292(n+1)*A001788(2*n+1)/A000217(2*n+1)`
-/

namespace A038846.P4482192507644876136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A001788 (2 * n + 1) : ℚ) / (A000217 (2 * n + 1) : ℚ)

end

end A038846.P4482192507644876136

namespace A038846

/-- `A000292(n+1)*A001788(2*n+1)/A000217(2*n+1)` -/
def P4482192507644876136.Spec : Prop :=
  ∀ n, P4482192507644876136.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P7238274498119361373

`A001789(n+3)²/A000292(n+1)`
-/

namespace A038846.P7238274498119361373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) ^ 2 : ℚ) / (A000292 (n + 1) : ℚ)

end

end A038846.P7238274498119361373

namespace A038846

/-- `A001789(n+3)²/A000292(n+1)` -/
def P7238274498119361373.Spec : Prop :=
  ∀ n, P7238274498119361373.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P14006296372230235217

`A000302(n)*A001249(n)/A000292(n+1)`
-/

namespace A038846.P14006296372230235217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A001249 n : ℚ) / (A000292 (n + 1) : ℚ)

end

end A038846.P14006296372230235217

namespace A038846

/-- `A000302(n)*A001249(n)/A000292(n+1)` -/
def P14006296372230235217.Spec : Prop :=
  ∀ n, P14006296372230235217.a n = (A038846 n : ℚ)

end A038846

/-! ## A038846.P344728608574978375

`A000292(n+1)*A001789(2*n+3)/A000292(2*n+1)`
-/

namespace A038846.P344728608574978375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) * A001789 (2 * n + 3) : ℚ) / (A000292 (2 * n + 1) : ℚ)

end

end A038846.P344728608574978375

namespace A038846

/-- `A000292(n+1)*A001789(2*n+3)/A000292(2*n+1)` -/
def P344728608574978375.Spec : Prop :=
  ∀ n, P344728608574978375.a n = (A038846 n : ℚ)

end A038846

/-!
# A038847: Odd numbers that are differences between two positive cubes.

The programs for A038847, there is no canonical definition to state claims against.
-/

/-! ## A038847.P16680754502749135608

`A038593(eq[1, and(1, A038593(n+1))]+1)`
-/

namespace A038847.P16680754502749135608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038847.P16680754502749135608

/-! ## A038847.P16561871367952988495

`A038593(record[n*A038593(n+1)%2]+1)`
-/

namespace A038847.P16561871367952988495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A038593 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A038847.P16561871367952988495

/-! ## A038847.P13662666439538226178

`A181123(eq[1, gcd(2, A181123(n+1))]+1)`
-/

namespace A038847.P13662666439538226178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A181123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038847.P13662666439538226178

/-! ## A038847.P13536137887250576871

`A181123(eq[1, and(1, A181123(n+1))]+1)`
-/

namespace A038847.P13536137887250576871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A181123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038847.P13536137887250576871

/-! ## A038847.P11307444970878593531

`A181123(record[(n+1)*A181123(n+2)%2]+1)`
-/

namespace A038847.P11307444970878593531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A181123 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A038847.P11307444970878593531

/-! ## A038847.P1688646651954629584

`∩[2*n+1, A038593(n+1)]`
-/

namespace A038847.P1688646651954629584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P1688646651954629584

/-! ## A038847.P7070446697057856681

`∩[2*n+1, A181123(n+1)]`
-/

namespace A038847.P7070446697057856681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P7070446697057856681

/-! ## A038847.P8480611164771660685

`record[A093178(A038593(n+1))]`
-/

namespace A038847.P8480611164771660685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A038593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038847.P8480611164771660685

/-! ## A038847.P5530679945312781680

`∩[A038593(n+1), A004273(n)]`
-/

namespace A038847.P5530679945312781680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P5530679945312781680

/-! ## A038847.P17954955154948571652

`∩[A038593(n+1), A004274(n)]`
-/

namespace A038847.P17954955154948571652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P17954955154948571652

/-! ## A038847.P4272950795043950010

`∩[A038593(n+1), A004276(n)]`
-/

namespace A038847.P4272950795043950010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P4272950795043950010

/-! ## A038847.P6500794443026106432

`∩[A038593(n+1), A004281(n)]`
-/

namespace A038847.P6500794443026106432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P6500794443026106432

/-! ## A038847.P1159563235426653588

`∩[A038593(n+1), A020742(n)]`
-/

namespace A038847.P1159563235426653588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P1159563235426653588

/-! ## A038847.P18402912703991364386

`∩[A038593(n+1), A060747(n)]`
-/

namespace A038847.P18402912703991364386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P18402912703991364386

/-! ## A038847.P2464878183780931072

`∩[A038593(n+1), A062545(n)]`
-/

namespace A038847.P2464878183780931072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P2464878183780931072

/-! ## A038847.P1241529907755586883

`∩[A038593(n+1), A130773(n)]`
-/

namespace A038847.P1241529907755586883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P1241529907755586883

/-! ## A038847.P5310538728893505978

`∩[A181123(n+1), A004281(n)]`
-/

namespace A038847.P5310538728893505978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P5310538728893505978

/-! ## A038847.P15583768505486689619

`∩[A181123(n+1), A020742(n)]`
-/

namespace A038847.P15583768505486689619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P15583768505486689619

/-! ## A038847.P1738267197785533311

`∩[A038593(n+1), A163985(n)]`
-/

namespace A038847.P1738267197785533311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P1738267197785533311

/-! ## A038847.P1536902673816312066

`∩[A038593(n+1), A004271(n)+1]`
-/

namespace A038847.P1536902673816312066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038847.P1536902673816312066

/-!
# A038848: Even numbers that are differences between two cubes in at least one way.

The programs for A038848, there is no canonical definition to state claims against.
-/

/-! ## A038848.P13020103949882177987

`A038593(eq[1, 3^val(A038593(n+1)+1, 2)]+1)`
-/

namespace A038848.P13020103949882177987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A038593 (n + 1) + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038848.P13020103949882177987

/-! ## A038848.P15987088163057643172

`∩[2*n, A038593(n+1)]`
-/

namespace A038848.P15987088163057643172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P15987088163057643172

/-! ## A038848.P5962126538899461488

`∩[2*n, A181123(n+2)]`
-/

namespace A038848.P5962126538899461488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P5962126538899461488

/-! ## A038848.P9501250998581893951

`∩[A038593(n+1), A177712(n+1)]`
-/

namespace A038848.P9501250998581893951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P9501250998581893951

/-! ## A038848.P13233622540605029770

`∩[A038593(n+1), A004271(n)]`
-/

namespace A038848.P13233622540605029770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P13233622540605029770

/-! ## A038848.P6393437677028294684

`∩[A038593(n+1), A004272(n)]`
-/

namespace A038848.P6393437677028294684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P6393437677028294684

/-! ## A038848.P14694037703190672073

`∩[A038593(n+1), A004275(n)]`
-/

namespace A038848.P14694037703190672073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P14694037703190672073

/-! ## A038848.P927555771434998921

`∩[A038593(n+1), A004277(n)]`
-/

namespace A038848.P927555771434998921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P927555771434998921

/-! ## A038848.P13487132450801509370

`∩[A038593(n+1), A004279(n)]`
-/

namespace A038848.P13487132450801509370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P13487132450801509370

/-! ## A038848.P2442757511399649631

`∩[A038593(n+1), A005843(n)]`
-/

namespace A038848.P2442757511399649631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P2442757511399649631

/-! ## A038848.P8077958339085115485

`∩[A038593(n+1), A020739(n)]`
-/

namespace A038848.P8077958339085115485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P8077958339085115485

/-! ## A038848.P7668255636451745030

`∩[A038593(n+1), A020744(n)]`
-/

namespace A038848.P7668255636451745030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P7668255636451745030

/-! ## A038848.P8350317732271745104

`∩[A038593(n+1), A103517(n)]`
-/

namespace A038848.P8350317732271745104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P8350317732271745104

/-! ## A038848.P783077688710984074

`∩[A181123(n+1), A004277(n)]`
-/

namespace A038848.P783077688710984074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P783077688710984074

/-! ## A038848.P10022156566565900612

`∩[A181123(n+1), A004279(n)]`
-/

namespace A038848.P10022156566565900612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P10022156566565900612

/-! ## A038848.P16849982020630389968

`∩[A181123(n+1), A020739(n)]`
-/

namespace A038848.P16849982020630389968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P16849982020630389968

/-! ## A038848.P14162443681014402767

`∩[A181123(n+1), A020744(n)]`
-/

namespace A038848.P14162443681014402767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038848.P14162443681014402767

/-! ## A038848.P14878860197933299796

`filter[A038593(n+1), A059841(#)]`
-/

namespace A038848.P14878860197933299796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A038848.P14878860197933299796

/-! ## A038848.P15715455485806780100

`filter[A038593(n+1), A135528(#)]`
-/

namespace A038848.P15715455485806780100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A038848.P15715455485806780100

/-! ## A038848.P9721736644831564442

`filter[A038593(n+1), A266591(#)]`
-/

namespace A038848.P9721736644831564442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A038848.P9721736644831564442

/-!
# A038849: Multiples of 4 that are the difference of two positive cubes.

The programs for A038849, there is no canonical definition to state claims against.
-/

/-! ## A038849.P12825665982288983723

`∩[A181123(n+1), 4*(n+5)]`
-/

namespace A038849.P12825665982288983723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038849.P12825665982288983723

/-! ## A038849.P14443395665532479448

`filter[A038848(n+1), A358680(#)]`
-/

namespace A038849.P14443395665532479448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A038849.P14443395665532479448

/-! ## A038849.P13313368635702823551

`filter[A038848(n+1), A374036(#)]`
-/

namespace A038849.P13313368635702823551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A038849.P13313368635702823551

/-! ## A038849.P10069898383325984479

`filter[A038848(n+1), A374045(#)]`
-/

namespace A038849.P10069898383325984479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A038849.P10069898383325984479

/-! ## A038849.P13524094974472936575

`filter[A038848(n+1), A073089(#)]`
-/

namespace A038849.P13524094974472936575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A038849.P13524094974472936575

/-! ## A038849.P4965244717694244654

`filter[A038593(n+1), A121262(#)]`
-/

namespace A038849.P4965244717694244654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A038849.P4965244717694244654

/-! ## A038849.P17792891574389675003

`filter[A038848(n+1), A121262(#)]`
-/

namespace A038849.P17792891574389675003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A038849.P17792891574389675003

/-! ## A038849.P5380917034709339517

`filter[A038848(n+1), A152822(#)]`
-/

namespace A038849.P5380917034709339517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A038849.P5380917034709339517

/-! ## A038849.P11753207489609536790

`filter[A038848(n+1), A319710(#)]`
-/

namespace A038849.P11753207489609536790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A038849.P11753207489609536790

/-! ## A038849.P1502520305127046774

`filter[A038848(n+1), A353494(#)]`
-/

namespace A038849.P1502520305127046774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A038849.P1502520305127046774

/-! ## A038849.P11561344537721856568

`filter[A181123(n+2), A121262(#)]`
-/

namespace A038849.P11561344537721856568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A038849.P11561344537721856568

/-! ## A038849.P12630867576772262855

`∩[A038593(n+1), A008574(n)]`
-/

namespace A038849.P12630867576772262855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P12630867576772262855

/-! ## A038849.P8086863206499972838

`∩[A038593(n+1), A008586(n)]`
-/

namespace A038849.P8086863206499972838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P8086863206499972838

/-! ## A038849.P16184864643911627122

`∩[A008574(n), A038848(n+1)]`
-/

namespace A038849.P16184864643911627122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P16184864643911627122

/-! ## A038849.P12518072019559780182

`∩[A008586(n), A038848(n+1)]`
-/

namespace A038849.P12518072019559780182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P12518072019559780182

/-! ## A038849.P7344034697623200279

`∩[A008574(n), A181123(n+1)]`
-/

namespace A038849.P7344034697623200279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P7344034697623200279

/-! ## A038849.P17357127060608949397

`∩[A038593(n+1), A173035(n)]`
-/

namespace A038849.P17357127060608949397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P17357127060608949397

/-! ## A038849.P816655161443618636

`∩[A038848(n+1), A173035(n)]`
-/

namespace A038849.P816655161443618636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P816655161443618636

/-! ## A038849.P16372854298052808095

`∩[A038593(n+1), A265046(n)]`
-/

namespace A038849.P16372854298052808095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P16372854298052808095

/-! ## A038849.P12027986719627135787

`∩[A038848(n+1), A265045(n)]`
-/

namespace A038849.P12027986719627135787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038849.P12027986719627135787

/-!
# A038850: Multiples of 8 that are the difference of two positive cubes.

The programs for A038850, there is no canonical definition to state claims against.
-/

/-! ## A038850.P4925629600121328081

`∩[A038593(n+1), A005943(n)]`
-/

namespace A038850.P4925629600121328081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P4925629600121328081

/-! ## A038850.P7819433587860084578

`∩[A038848(n+1), A005943(n)]`
-/

namespace A038850.P7819433587860084578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P7819433587860084578

/-! ## A038850.P16400154672113303854

`∩[A038849(n+1), A005943(n)]`
-/

namespace A038850.P16400154672113303854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P16400154672113303854

/-! ## A038850.P1287771292911764201

`∩[A038593(n+1), A008590(n)]`
-/

namespace A038850.P1287771292911764201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P1287771292911764201

/-! ## A038850.P6358684821089578530

`∩[A038848(n+1), A008590(n)]`
-/

namespace A038850.P6358684821089578530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P6358684821089578530

/-! ## A038850.P46082756637389389

`∩[A038849(n+1), A008590(n)]`
-/

namespace A038850.P46082756637389389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P46082756637389389

/-! ## A038850.P17373811796338203414

`∩[A038593(n+1), A022144(n)]`
-/

namespace A038850.P17373811796338203414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P17373811796338203414

/-! ## A038850.P15757881625824304264

`∩[A038848(n+1), A022144(n)]`
-/

namespace A038850.P15757881625824304264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P15757881625824304264

/-! ## A038850.P7927532273570834273

`∩[A038849(n+1), A022144(n)]`
-/

namespace A038850.P7927532273570834273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P7927532273570834273

/-! ## A038850.P3970195498060742489

`∩[A181123(n+1), A005943(n)]`
-/

namespace A038850.P3970195498060742489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P3970195498060742489

/-! ## A038850.P12782726764380535307

`∩[A181123(n+1), A022144(n)]`
-/

namespace A038850.P12782726764380535307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P12782726764380535307

/-! ## A038850.P6388356676693897277

`∩[A038593(n+1), A234275(n)]`
-/

namespace A038850.P6388356676693897277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P6388356676693897277

/-! ## A038850.P5934830587200830365

`∩[A038848(n+1), A234275(n)]`
-/

namespace A038850.P5934830587200830365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P5934830587200830365

/-! ## A038850.P14963218797440369307

`∩[A038849(n+1), A234275(n)]`
-/

namespace A038850.P14963218797440369307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P14963218797440369307

/-! ## A038850.P18154143977760856055

`∩[A038593(n+1), A273315(n)]`
-/

namespace A038850.P18154143977760856055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P18154143977760856055

/-! ## A038850.P17579631824968635836

`∩[A038593(n+1), A273481(n)]`
-/

namespace A038850.P17579631824968635836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P17579631824968635836

/-! ## A038850.P8040845117725497355

`∩[A038848(n+1), A273315(n)]`
-/

namespace A038850.P8040845117725497355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P8040845117725497355

/-! ## A038850.P2535031341670012475

`∩[A038849(n+1), A273315(n)]`
-/

namespace A038850.P2535031341670012475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P2535031341670012475

/-! ## A038850.P12352909898259823089

`∩[A273481(n), A038849(n+1)]`
-/

namespace A038850.P12352909898259823089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P12352909898259823089

/-! ## A038850.P921614949897228785

`∩[A181123(n+1), A234275(n)]`
-/

namespace A038850.P921614949897228785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038850.P921614949897228785

/-!
# A038851: Divisible by 3 (and 9) and are differences between two cubes in at least one way.

The programs for A038851, there is no canonical definition to state claims against.
-/

/-! ## A038851.P6962967659248834147

`A038593(eq[9, dr(A181123(n+1))])`
-/

namespace A038851.P6962967659248834147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A181123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038851.P6962967659248834147

/-! ## A038851.P10637492739693984463

`filter[A038593(n+1), A366289(#)]`
-/

namespace A038851.P10637492739693984463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A038851.P10637492739693984463

/-! ## A038851.P12675940927834716800

`filter[A181123(n+2), A366289(#)]`
-/

namespace A038851.P12675940927834716800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A038851.P12675940927834716800

/-! ## A038851.P1708913380660262703

`∩[A038593(n+1), A008591(n)]`
-/

namespace A038851.P1708913380660262703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P1708913380660262703

/-! ## A038851.P18042275443182240333

`∩[A038593(n+1), A168103(n)]`
-/

namespace A038851.P18042275443182240333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P18042275443182240333

/-! ## A038851.P15925966440409593632

`∩[A181123(n+1), A168103(n)]`
-/

namespace A038851.P15925966440409593632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P15925966440409593632

/-! ## A038851.P173102309651745893

`∩[A181123(n+1), A022144(n)+n]`
-/

namespace A038851.P173102309651745893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P173102309651745893

/-! ## A038851.P18139204005530137905

`∩[A181123(n+1), A234275(n)+n]`
-/

namespace A038851.P18139204005530137905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P18139204005530137905

/-! ## A038851.P5187502487560423785

`∩[A181123(n+1), A017377(n)-n]`
-/

namespace A038851.P5187502487560423785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P5187502487560423785

/-! ## A038851.P8159656870364771062

`∩[A017365(n+1)-n, A038593(n+2)]`
-/

namespace A038851.P8159656870364771062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P8159656870364771062

/-! ## A038851.P8002477315860373100

`∩[A038593(n+1), A362008(n+1)]`
-/

namespace A038851.P8002477315860373100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P8002477315860373100

/-! ## A038851.P4867794647748435885

`∩[A181123(n+1), A362008(n+1)]`
-/

namespace A038851.P4867794647748435885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P4867794647748435885

/-! ## A038851.P5948253791989788393

`∩[A038593(n+1), A245094(n)]`
-/

namespace A038851.P5948253791989788393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P5948253791989788393

/-! ## A038851.P592530369756083832

`∩[A038593(n+1), A261953(n)]`
-/

namespace A038851.P592530369756083832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P592530369756083832

/-! ## A038851.P7902086509819552965

`∩[A038593(n+1), A301291(n)]`
-/

namespace A038851.P7902086509819552965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P7902086509819552965

/-! ## A038851.P10150681494211268477

`∩[A038593(n+1), A301293(n)]`
-/

namespace A038851.P10150681494211268477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P10150681494211268477

/-! ## A038851.P15090480861541240824

`∩[A038593(n+1), A312933(n)]`
-/

namespace A038851.P15090480861541240824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P15090480861541240824

/-! ## A038851.P708667714554121397

`∩[A038593(n+1), A312941(n)]`
-/

namespace A038851.P708667714554121397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P708667714554121397

/-! ## A038851.P9815471173838724269

`∩[A038593(n+1), A312943(n)]`
-/

namespace A038851.P9815471173838724269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P9815471173838724269

/-! ## A038851.P3193597207424194713

`∩[A181123(n+1), A245094(n)]`
-/

namespace A038851.P3193597207424194713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038851.P3193597207424194713

/-!
# A038852: Numbers that are divisible by 6 (and 18) and are differences between two cubes in at least one way.

The programs for A038852, there is no canonical definition to state claims against.
-/

/-! ## A038852.P3055712282094112959

`∩[A038848(n+1), A038851(n)]`
-/

namespace A038852.P3055712282094112959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P3055712282094112959

/-! ## A038852.P5765654931112645999

`∩[A008600(n), A038851(n)]`
-/

namespace A038852.P5765654931112645999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P5765654931112645999

/-! ## A038852.P7381607569541729291

`∩[A038593(n+1), A008600(n)]`
-/

namespace A038852.P7381607569541729291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P7381607569541729291

/-! ## A038852.P13452114726281739876

`∩[A008600(n), A038848(n+1)]`
-/

namespace A038852.P13452114726281739876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P13452114726281739876

/-! ## A038852.P11312460192121723805

`∩[2*A362008(n+1), A181123(n+1)]`
-/

namespace A038852.P11312460192121723805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P11312460192121723805

/-! ## A038852.P6048988224573347457

`filter[A038851(n), A374197(#)]`
-/

namespace A038852.P6048988224573347457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A038852.P6048988224573347457

/-! ## A038852.P16144422443065814629

`filter[A038848(n+1), A366289(#)]`
-/

namespace A038852.P16144422443065814629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A038852.P16144422443065814629

/-! ## A038852.P5882269982919851744

`∩[A038851(n), A298031(n)]`
-/

namespace A038852.P5882269982919851744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P5882269982919851744

/-! ## A038852.P635261208651867969

`∩[A008591(n), A038848(n+1)]`
-/

namespace A038852.P635261208651867969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P635261208651867969

/-! ## A038852.P12963036652769332813

`∩[A038851(n), A118510(n+1)]`
-/

namespace A038852.P12963036652769332813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P12963036652769332813

/-! ## A038852.P6565479492443388232

`∩[A038848(n+1), A168103(n)]`
-/

namespace A038852.P6565479492443388232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P6565479492443388232

/-! ## A038852.P1749151120783751240

`∩[A038593(n+1), A298031(n)]`
-/

namespace A038852.P1749151120783751240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P1749151120783751240

/-! ## A038852.P15878087102930001432

`∩[A038848(n+1), A298031(n)]`
-/

namespace A038852.P15878087102930001432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P15878087102930001432

/-! ## A038852.P2038558731130900731

`∩[A181123(n+1), A298031(n)]`
-/

namespace A038852.P2038558731130900731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P2038558731130900731

/-! ## A038852.P937492557668476615

`∩[A038848(n+1), A118510(n+1)]`
-/

namespace A038852.P937492557668476615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P937492557668476615

/-! ## A038852.P17596169308838134815

`∩[A038848(n+1), A182758(n+1)]`
-/

namespace A038852.P17596169308838134815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P17596169308838134815

/-! ## A038852.P7864820953920309099

`∩[A168103(2*n), A181123(n+1)]`
-/

namespace A038852.P7864820953920309099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168103 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P7864820953920309099

/-! ## A038852.P16885346424920836703

`∩[2*A261953(n), A181123(n+1)]`
-/

namespace A038852.P16885346424920836703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P16885346424920836703

/-! ## A038852.P13570564242890614142

`∩[2*A301291(2*n), A181123(n+2)]`
-/

namespace A038852.P13570564242890614142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301291 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P13570564242890614142

/-! ## A038852.P12495488497038822920

`∩[2*A301293(2*n), A181123(n+2)]`
-/

namespace A038852.P12495488497038822920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301293 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038852.P12495488497038822920

/-!
# A038853: Numbers that are divisible by 5 and are the difference between two (different positive) cubes in at least one way.

The programs for A038853, there is no canonical definition to state claims against.
-/

/-! ## A038853.P6407956339939233113

`∪[A038854(n+1), A038860(n+1)]`
-/

namespace A038853.P6407956339939233113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P6407956339939233113

/-! ## A038853.P1188107436281094693

`∩[5*n, A038593(n+1)]`
-/

namespace A038853.P1188107436281094693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P1188107436281094693

/-! ## A038853.P3592465171694035865

`∩[A038593(n+1), A008574(n)+n]`
-/

namespace A038853.P3592465171694035865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P3592465171694035865

/-! ## A038853.P11289275967622130960

`∩[A181123(n+1), A008574(n)+n]`
-/

namespace A038853.P11289275967622130960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P11289275967622130960

/-! ## A038853.P3501985067982266294

`∩[A038593(n+1), A008589(n)-n-n]`
-/

namespace A038853.P3501985067982266294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - (n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P3501985067982266294

/-! ## A038853.P17141157165032656582

`∩[A038593(n+1), ceil(A022144(n)/2)+n]`
-/

namespace A038853.P17141157165032656582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022144 n : ℚ) / 2⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038853.P17141157165032656582

/-! ## A038853.P306855602577000925

`filter[A014439(n+1), A079998(#)]`
-/

namespace A038853.P306855602577000925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A038853.P306855602577000925

/-! ## A038853.P4743178054257544886

`filter[A038593(n+1), A079998(#)]`
-/

namespace A038853.P4743178054257544886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A038853.P4743178054257544886

/-! ## A038853.P3529414785139068058

`filter[A181123(n+2), A079998(#)]`
-/

namespace A038853.P3529414785139068058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A038853.P3529414785139068058

/-!
# A038854: Numbers that are divisible by 10 and are differences between two cubes in at least one way.

The programs for A038854, there is no canonical definition to state claims against.
-/

/-! ## A038854.P5181371960897456515

`∩[A038848(n+1), A038853(n+1)]`
-/

namespace A038854.P5181371960897456515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P5181371960897456515

/-! ## A038854.P855836420603462374

`∩[10*n, A038593(n+1)]`
-/

namespace A038854.P855836420603462374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P855836420603462374

/-! ## A038854.P487931501486052206

`∩[10*(n+1), A181123(n+1)]`
-/

namespace A038854.P487931501486052206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P487931501486052206

/-! ## A038854.P17451274986362243321

`∩[A038593(n+1), A017377(n)+1]`
-/

namespace A038854.P17451274986362243321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P17451274986362243321

/-! ## A038854.P13564689414851082168

`∩[A181123(n+1), A017377(n)+1]`
-/

namespace A038854.P13564689414851082168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P13564689414851082168

/-! ## A038854.P17600450222999235645

`∩[A181123(n+1), A017353(n)+3]`
-/

namespace A038854.P17600450222999235645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P17600450222999235645

/-! ## A038854.P17966603221656145763

`∩[A038593(n+1), A017353(n)-7]`
-/

namespace A038854.P17966603221656145763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038854.P17966603221656145763

/-! ## A038854.P13093146664419812729

`filter[A038853(n+1), A353529(#)]`
-/

namespace A038854.P13093146664419812729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353529 (f1 j).toNat = 1) n)

end

end A038854.P13093146664419812729

/-! ## A038854.P7664847701538486432

`filter[A038853(n+1), A354034(#)]`
-/

namespace A038854.P7664847701538486432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A038854.P7664847701538486432

/-!
# A038855: Numbers that are divisible by 7 and are differences between two cubes in at least one way.

The programs for A038855, there is no canonical definition to state claims against.
-/

/-! ## A038855.P7699680243334980523

`∩[A038593(n+1), 7*n]`
-/

namespace A038855.P7699680243334980523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A038855.P7699680243334980523

/-! ## A038855.P2077084375727201696

`∩[A008589(n), A038593(n+1)]`
-/

namespace A038855.P2077084375727201696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P2077084375727201696

/-! ## A038855.P1184756402169776354

`∩[A181123(n+1), A022144(n)-n]`
-/

namespace A038855.P1184756402169776354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P1184756402169776354

/-! ## A038855.P423902660992183479

`∩[A030123(n), A038593(n+1)]`
-/

namespace A038855.P423902660992183479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P423902660992183479

/-! ## A038855.P5686197392243403876

`∩[A181123(n+1), A301291(n)-n]`
-/

namespace A038855.P5686197392243403876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P5686197392243403876

/-! ## A038855.P2403480037151906970

`∩[A181123(n+1), A301293(n)-n]`
-/

namespace A038855.P2403480037151906970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P2403480037151906970

/-! ## A038855.P4979883289965717721

`∩[A181123(n+1), A312933(n)-n]`
-/

namespace A038855.P4979883289965717721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P4979883289965717721

/-! ## A038855.P8342168983397188805

`∩[A181123(n+1), A312941(n)-n]`
-/

namespace A038855.P8342168983397188805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P8342168983397188805

/-! ## A038855.P12964987443131960839

`∩[A181123(n+1), A312943(n)-n]`
-/

namespace A038855.P12964987443131960839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P12964987443131960839

/-! ## A038855.P236850466192947680

`∩[A008486(2*n)+n, A181123(n+2)]`
-/

namespace A038855.P236850466192947680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P236850466192947680

/-! ## A038855.P3859856155400904990

`∩[A008574(2*n)-n, A181123(n+2)]`
-/

namespace A038855.P3859856155400904990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P3859856155400904990

/-! ## A038855.P13331498251963557430

`∩[A082206(n+1), A181123(n+1)]`
-/

namespace A038855.P13331498251963557430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P13331498251963557430

/-! ## A038855.P8791119902436553859

`∩[A336627(2*n+1)-n, A181123(n+2)]`
-/

namespace A038855.P8791119902436553859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038855.P8791119902436553859

/-! ## A038855.P7835907474977785922

`filter[A038593(n+1), A082784(#)]`
-/

namespace A038855.P7835907474977785922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A038855.P7835907474977785922

/-! ## A038855.P7577083173491091344

`filter[A181123(n+2), A082784(#)]`
-/

namespace A038855.P7577083173491091344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A038855.P7577083173491091344

/-!
# A038856: Numbers ending with '1' that are the difference of two positive cubes.

The programs for A038856, there is no canonical definition to state claims against.
-/

/-! ## A038856.P11790935652143266716

`∩[A038593(n+1), A017281(n)]`
-/

namespace A038856.P11790935652143266716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P11790935652143266716

/-! ## A038856.P16670009961152564987

`∩[A038847(n+1), A017281(n)]`
-/

namespace A038856.P16670009961152564987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P16670009961152564987

/-! ## A038856.P3794466609745863975

`∩[A181123(n+1), A017281(n)]`
-/

namespace A038856.P3794466609745863975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P3794466609745863975

/-! ## A038856.P7775150750178673220

`∩[A038593(n+1), A017293(n)-1]`
-/

namespace A038856.P7775150750178673220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P7775150750178673220

/-! ## A038856.P5878383246191271462

`∩[A038593(n+1), A017377(n)+2]`
-/

namespace A038856.P5878383246191271462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P5878383246191271462

/-! ## A038856.P11910566545165358673

`∩[A038847(n+1), A017377(n)+2]`
-/

namespace A038856.P11910566545165358673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P11910566545165358673

/-! ## A038856.P1783546340097279042

`∩[A181123(n+1), A017293(n)-1]`
-/

namespace A038856.P1783546340097279042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P1783546340097279042

/-! ## A038856.P4727766897691110356

`∩[A181123(n+1), A017377(n)+2]`
-/

namespace A038856.P4727766897691110356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P4727766897691110356

/-! ## A038856.P2219685312584231953

`∩[A038593(n+1), A017305(n)-2]`
-/

namespace A038856.P2219685312584231953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P2219685312584231953

/-! ## A038856.P1275384972541830564

`∩[A038847(n+1), A017305(n)-2]`
-/

namespace A038856.P1275384972541830564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P1275384972541830564

/-! ## A038856.P3391947529262860806

`∩[A181123(n+1), A017305(n)-2]`
-/

namespace A038856.P3391947529262860806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P3391947529262860806

/-! ## A038856.P8747190550923792351

`∩[A038593(n+1), A116727(n+1)-1]`
-/

namespace A038856.P8747190550923792351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P8747190550923792351

/-! ## A038856.P9017447129499248724

`∩[A116727(n+2)-1, A181123(n+2)]`
-/

namespace A038856.P9017447129499248724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P9017447129499248724

/-! ## A038856.P6700578403950776549

`∩[A038847(n+1), A277588(n+1)]`
-/

namespace A038856.P6700578403950776549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P6700578403950776549

/-! ## A038856.P10473686218077794947

`∩[A038847(n+1), A277596(n+1)+2]`
-/

namespace A038856.P10473686218077794947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P10473686218077794947

/-! ## A038856.P9813118097411665777

`∩[A038847(n+1), A277590(n+1)-2]`
-/

namespace A038856.P9813118097411665777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P9813118097411665777

/-! ## A038856.P17769564032338948134

`∩[A038847(n+1), A016861(n)]`
-/

namespace A038856.P17769564032338948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P17769564032338948134

/-! ## A038856.P2404386673906890683

`∩[A038847(n+1), A197652(n+1)]`
-/

namespace A038856.P2404386673906890683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P2404386673906890683

/-! ## A038856.P9513761156595302457

`∩[A038847(n+1), A271508(n+1)]`
-/

namespace A038856.P9513761156595302457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P9513761156595302457

/-! ## A038856.P4397524875072518454

`∩[A038847(n+1), A306277(n+1)]`
-/

namespace A038856.P4397524875072518454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038856.P4397524875072518454

/-!
# A038857: Numbers ending with '2' that are the difference of two positive cubes.

The programs for A038857, there is no canonical definition to state claims against.
-/

/-! ## A038857.P14235865707952257259

`∩[A038593(n+1), A017293(n)]`
-/

namespace A038857.P14235865707952257259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P14235865707952257259

/-! ## A038857.P13365837832250043082

`∩[A017293(n), A038848(n+1)]`
-/

namespace A038857.P13365837832250043082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P13365837832250043082

/-! ## A038857.P1361067685188796024

`∩[A181123(n+1), A017293(n)]`
-/

namespace A038857.P1361067685188796024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P1361067685188796024

/-! ## A038857.P6221351744019895406

`∩[A038593(n+1), A017281(n)+1]`
-/

namespace A038857.P6221351744019895406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P6221351744019895406

/-! ## A038857.P13528907713434969707

`∩[A038593(n+1), A116727(n+1)]`
-/

namespace A038857.P13528907713434969707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P13528907713434969707

/-! ## A038857.P6780706936862554860

`∩[A038848(n+1), A116727(n+1)]`
-/

namespace A038857.P6780706936862554860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P6780706936862554860

/-! ## A038857.P172230711094172080

`∩[A181123(n+1), A017281(n)+1]`
-/

namespace A038857.P172230711094172080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P172230711094172080

/-! ## A038857.P600038361338484675

`∩[A116727(n+1), A181123(n+1)]`
-/

namespace A038857.P600038361338484675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P600038361338484675

/-! ## A038857.P10518829213439509157

`∩[A038593(n+1), A017305(n)-1]`
-/

namespace A038857.P10518829213439509157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P10518829213439509157

/-! ## A038857.P4350133886316639201

`∩[A181123(n+1), A017305(n)-1]`
-/

namespace A038857.P4350133886316639201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P4350133886316639201

/-! ## A038857.P10180025238540820336

`∩[A038593(n+1), A017317(n)-2]`
-/

namespace A038857.P10180025238540820336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P10180025238540820336

/-! ## A038857.P15071841807479700123

`∩[A181123(n+1), A017317(n)-2]`
-/

namespace A038857.P15071841807479700123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038857.P15071841807479700123

/-!
# A038858: Numbers ending with '3' that are the difference of two positive cubes.

The programs for A038858, there is no canonical definition to state claims against.
-/

/-! ## A038858.P8093629192051120581

`∩[A038593(n+1), A053179(n+1)]`
-/

namespace A038858.P8093629192051120581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P8093629192051120581

/-! ## A038858.P3153437474581553221

`∩[A038847(n+1), A053179(n+1)]`
-/

namespace A038858.P3153437474581553221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P3153437474581553221

/-! ## A038858.P18146907453273580509

`∩[A053179(n+1), A181123(n+1)]`
-/

namespace A038858.P18146907453273580509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P18146907453273580509

/-! ## A038858.P6788040232908025879

`∩[A038593(n+1), A017305(n)]`
-/

namespace A038858.P6788040232908025879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P6788040232908025879

/-! ## A038858.P70658879050965165

`∩[A038847(n+1), A017305(n)]`
-/

namespace A038858.P70658879050965165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P70658879050965165

/-! ## A038858.P11188425928721191597

`∩[A181123(n+1), A017305(n)]`
-/

namespace A038858.P11188425928721191597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P11188425928721191597

/-! ## A038858.P17110817144139281504

`∩[A038593(n+1), A017293(n)+1]`
-/

namespace A038858.P17110817144139281504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P17110817144139281504

/-! ## A038858.P2639102839163693905

`∩[A181123(n+1), A017293(n)+1]`
-/

namespace A038858.P2639102839163693905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P2639102839163693905

/-! ## A038858.P1153970963186057431

`∩[A038593(n+1), A017281(n)+2]`
-/

namespace A038858.P1153970963186057431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P1153970963186057431

/-! ## A038858.P6372999381110620053

`∩[A038593(n+1), A017317(n)-1]`
-/

namespace A038858.P6372999381110620053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P6372999381110620053

/-! ## A038858.P14665618561865787177

`∩[A038847(n+1), A017281(n)+2]`
-/

namespace A038858.P14665618561865787177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P14665618561865787177

/-! ## A038858.P10638563998788937890

`∩[A181123(n+1), A017281(n)+2]`
-/

namespace A038858.P10638563998788937890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P10638563998788937890

/-! ## A038858.P2153487203339830727

`∩[A181123(n+1), A017317(n)-1]`
-/

namespace A038858.P2153487203339830727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P2153487203339830727

/-! ## A038858.P12851131443310325828

`∩[A038593(n+1), A017329(n)-2]`
-/

namespace A038858.P12851131443310325828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P12851131443310325828

/-! ## A038858.P9155832461138141349

`∩[A038847(n+1), A017329(n)-2]`
-/

namespace A038858.P9155832461138141349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P9155832461138141349

/-! ## A038858.P4685878764850919893

`∩[A181123(n+1), A017329(n)-2]`
-/

namespace A038858.P4685878764850919893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P4685878764850919893

/-! ## A038858.P7307992610126084813

`∩[A038593(n+1), A116727(n+1)+1]`
-/

namespace A038858.P7307992610126084813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P7307992610126084813

/-! ## A038858.P16988225615056562759

`∩[A116727(n+1)+1, A181123(n+1)]`
-/

namespace A038858.P16988225615056562759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P16988225615056562759

/-! ## A038858.P10344485040588869925

`∩[A038847(n+1), A277590(n+1)]`
-/

namespace A038858.P10344485040588869925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P10344485040588869925

/-! ## A038858.P13796895731306761388

`∩[A038847(n+1), A277588(n+1)+2]`
-/

namespace A038858.P13796895731306761388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038858.P13796895731306761388

/-!
# A038859: Numbers ending with '4' that are the difference of two positive cubes.

The programs for A038859, there is no canonical definition to state claims against.
-/

/-! ## A038859.P4451349708943044811

`∩[A038593(n+1), A017317(n)]`
-/

namespace A038859.P4451349708943044811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P4451349708943044811

/-! ## A038859.P14238716150199396652

`∩[A017317(n), A038848(n+1)]`
-/

namespace A038859.P14238716150199396652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P14238716150199396652

/-! ## A038859.P10289614587585184399

`∩[A181123(n+1), A017317(n)]`
-/

namespace A038859.P10289614587585184399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P10289614587585184399

/-! ## A038859.P10053897527932418692

`∩[A038593(n+1), A017305(n)+1]`
-/

namespace A038859.P10053897527932418692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P10053897527932418692

/-! ## A038859.P9527661715759144129

`∩[A181123(n+1), A017305(n)+1]`
-/

namespace A038859.P9527661715759144129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P9527661715759144129

/-! ## A038859.P10868979411848600593

`∩[A038593(n+1), A017293(n)+2]`
-/

namespace A038859.P10868979411848600593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P10868979411848600593

/-! ## A038859.P13901896706607563091

`∩[A038593(n+1), A017329(n)-1]`
-/

namespace A038859.P13901896706607563091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P13901896706607563091

/-! ## A038859.P8792962269848095960

`∩[A181123(n+1), A017293(n)+2]`
-/

namespace A038859.P8792962269848095960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P8792962269848095960

/-! ## A038859.P10174499555588042713

`∩[A181123(n+1), A017329(n)-1]`
-/

namespace A038859.P10174499555588042713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P10174499555588042713

/-! ## A038859.P2146668636983073429

`∩[A038593(n+1), A017341(n)-2]`
-/

namespace A038859.P2146668636983073429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P2146668636983073429

/-! ## A038859.P15479052054244497124

`∩[A181123(n+1), A017341(n)-2]`
-/

namespace A038859.P15479052054244497124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P15479052054244497124

/-! ## A038859.P14781353277646814689

`∩[A038593(n+1), A017377(n)+5]`
-/

namespace A038859.P14781353277646814689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P14781353277646814689

/-! ## A038859.P15142188643261656610

`∩[A181123(n+1), A017377(n)+5]`
-/

namespace A038859.P15142188643261656610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P15142188643261656610

/-! ## A038859.P5180374607744146512

`∩[A038593(n+2), A116727(n+2)+2]`
-/

namespace A038859.P5180374607744146512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038859.P5180374607744146512

/-!
# A038860: Numbers ending with '5' that are the difference of two positive cubes.

The programs for A038860, there is no canonical definition to state claims against.
-/

/-! ## A038860.P14681560442020202725

`record[lcm(2, A038853(n+1))/2]`
-/

namespace A038860.P14681560442020202725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A038853 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038860.P14681560442020202725

/-! ## A038860.P14771437072588021198

`∩[A038847(n+1), A038853(n+1)]`
-/

namespace A038860.P14771437072588021198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P14771437072588021198

/-! ## A038860.P14692986906141617327

`record[A000265(A038853(n+1))]`
-/

namespace A038860.P14692986906141617327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038860.P14692986906141617327

/-! ## A038860.P2021819412751042801

`filter[A038853(n+1), A374474(#)]`
-/

namespace A038860.P2021819412751042801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A038860.P2021819412751042801

/-! ## A038860.P6732622373136981404

`filter[A038853(n+1), A379952(#)]`
-/

namespace A038860.P6732622373136981404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A038860.P6732622373136981404

/-! ## A038860.P9923130349603076244

`∩[A038593(n+1), A017329(n)]`
-/

namespace A038860.P9923130349603076244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P9923130349603076244

/-! ## A038860.P2101300351041037680

`∩[A038847(n+1), A017329(n)]`
-/

namespace A038860.P2101300351041037680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P2101300351041037680

/-! ## A038860.P13817090114982499645

`∩[A017329(n), A038853(n+1)]`
-/

namespace A038860.P13817090114982499645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P13817090114982499645

/-! ## A038860.P9609204749548266503

`∩[A181123(n+1), A017329(n)]`
-/

namespace A038860.P9609204749548266503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P9609204749548266503

/-! ## A038860.P10899229625075786888

`∩[A038593(n+1), A017317(n)+1]`
-/

namespace A038860.P10899229625075786888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P10899229625075786888

/-! ## A038860.P4461204742136857814

`∩[A038853(n+1), A088648(n+1)]`
-/

namespace A038860.P4461204742136857814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P4461204742136857814

/-! ## A038860.P1591701077998031397

`∩[A181123(n+1), A017317(n)+1]`
-/

namespace A038860.P1591701077998031397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P1591701077998031397

/-! ## A038860.P4285887383999718769

`∩[A038593(n+1), A017305(n)+2]`
-/

namespace A038860.P4285887383999718769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P4285887383999718769

/-! ## A038860.P4258435140150565411

`∩[A038593(n+1), A017341(n)-1]`
-/

namespace A038860.P4258435140150565411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P4258435140150565411

/-! ## A038860.P17229526878899977245

`∩[A038847(n+1), A017305(n)+2]`
-/

namespace A038860.P17229526878899977245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P17229526878899977245

/-! ## A038860.P4546325029245108994

`∩[A181123(n+1), A017305(n)+2]`
-/

namespace A038860.P4546325029245108994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P4546325029245108994

/-! ## A038860.P15379646593878364714

`∩[A181123(n+1), A017341(n)-1]`
-/

namespace A038860.P15379646593878364714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P15379646593878364714

/-! ## A038860.P8937402174522500764

`∩[A038593(n+1), A017353(n)-2]`
-/

namespace A038860.P8937402174522500764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P8937402174522500764

/-! ## A038860.P3602703275900567571

`∩[A038847(n+1), A017353(n)-2]`
-/

namespace A038860.P3602703275900567571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P3602703275900567571

/-! ## A038860.P17361418653513828244

`∩[A181123(n+1), A017353(n)-2]`
-/

namespace A038860.P17361418653513828244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038860.P17361418653513828244

/-!
# A038861: Numbers ending with '6' that are the difference of two positive cubes.

The programs for A038861, there is no canonical definition to state claims against.
-/

/-! ## A038861.P3455905177295226316

`∩[10*n+6, A181123(n+1)]`
-/

namespace A038861.P3455905177295226316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P3455905177295226316

/-! ## A038861.P3518869383154206520

`∩[A038593(n+1), A017341(n)]`
-/

namespace A038861.P3518869383154206520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P3518869383154206520

/-! ## A038861.P11825571663780238994

`∩[A017341(n), A038848(n+1)]`
-/

namespace A038861.P11825571663780238994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P11825571663780238994

/-! ## A038861.P16128488079229691973

`∩[A181123(n+1), A017341(n)]`
-/

namespace A038861.P16128488079229691973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P16128488079229691973

/-! ## A038861.P6646336281034869277

`∩[A038593(n+1), A017329(n)+1]`
-/

namespace A038861.P6646336281034869277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P6646336281034869277

/-! ## A038861.P13132733020850643434

`∩[A181123(n+1), A017329(n)+1]`
-/

namespace A038861.P13132733020850643434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P13132733020850643434

/-! ## A038861.P12310658125931145242

`∩[A038593(n+1), A017317(n)+2]`
-/

namespace A038861.P12310658125931145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P12310658125931145242

/-! ## A038861.P13499317482469500034

`∩[A038593(n+1), A017353(n)-1]`
-/

namespace A038861.P13499317482469500034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P13499317482469500034

/-! ## A038861.P8227231768805413066

`∩[A181123(n+1), A017317(n)+2]`
-/

namespace A038861.P8227231768805413066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P8227231768805413066

/-! ## A038861.P6395055124870155031

`∩[A181123(n+1), A017353(n)-1]`
-/

namespace A038861.P6395055124870155031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P6395055124870155031

/-! ## A038861.P10913780598868456852

`∩[A038593(n+1), A017365(n)-2]`
-/

namespace A038861.P10913780598868456852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P10913780598868456852

/-! ## A038861.P14206245651883083070

`∩[A181123(n+1), A017365(n)-2]`
-/

namespace A038861.P14206245651883083070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P14206245651883083070

/-! ## A038861.P8416050657371442196

`∩[A038593(n+1), A160912(n+1)-1]`
-/

namespace A038861.P8416050657371442196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P8416050657371442196

/-! ## A038861.P7826343527702666273

`∩[A016861(n), A038848(n+1)]`
-/

namespace A038861.P7826343527702666273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038861.P7826343527702666273

/-!
# A038862: Numbers ending with '7' that are the difference of two positive cubes.

The programs for A038862, there is no canonical definition to state claims against.
-/

/-! ## A038862.P5529821853224182771

`∩[A038593(n+1), A017353(n)]`
-/

namespace A038862.P5529821853224182771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P5529821853224182771

/-! ## A038862.P6513237687876773756

`∩[A038847(n+1), A017353(n)]`
-/

namespace A038862.P6513237687876773756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P6513237687876773756

/-! ## A038862.P11005070510629583121

`∩[A181123(n+1), A017353(n)]`
-/

namespace A038862.P11005070510629583121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P11005070510629583121

/-! ## A038862.P7830051661856723465

`∩[A038593(n+1), A017341(n)+1]`
-/

namespace A038862.P7830051661856723465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P7830051661856723465

/-! ## A038862.P14809402264032402614

`∩[A181123(n+1), A017341(n)+1]`
-/

namespace A038862.P14809402264032402614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P14809402264032402614

/-! ## A038862.P13377384643398123800

`∩[A038593(n+1), A160912(n+1)]`
-/

namespace A038862.P13377384643398123800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P13377384643398123800

/-! ## A038862.P5973226853818627329

`∩[A038847(n+1), A160912(n+1)]`
-/

namespace A038862.P5973226853818627329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P5973226853818627329

/-! ## A038862.P1979202574396191582

`∩[A160912(n+1), A181123(n+1)]`
-/

namespace A038862.P1979202574396191582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P1979202574396191582

/-! ## A038862.P8575849023438145634

`∩[A038593(n+1), A017329(n)+2]`
-/

namespace A038862.P8575849023438145634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P8575849023438145634

/-! ## A038862.P16617617426656834540

`∩[A038593(n+1), A017365(n)-1]`
-/

namespace A038862.P16617617426656834540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P16617617426656834540

/-! ## A038862.P5877484431512411047

`∩[A038847(n+1), A017329(n)+2]`
-/

namespace A038862.P5877484431512411047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P5877484431512411047

/-! ## A038862.P7371366796417394992

`∩[A181123(n+1), A017329(n)+2]`
-/

namespace A038862.P7371366796417394992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P7371366796417394992

/-! ## A038862.P12556459210045569069

`∩[A181123(n+1), A017365(n)-1]`
-/

namespace A038862.P12556459210045569069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P12556459210045569069

/-! ## A038862.P1441636580420537769

`∩[A038593(n+1), A017377(n)-2]`
-/

namespace A038862.P1441636580420537769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P1441636580420537769

/-! ## A038862.P15714824767017608297

`∩[A038847(n+1), A017377(n)-2]`
-/

namespace A038862.P15714824767017608297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P15714824767017608297

/-! ## A038862.P2692888009311418168

`∩[A181123(n+1), A017377(n)-2]`
-/

namespace A038862.P2692888009311418168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P2692888009311418168

/-! ## A038862.P8939803294840610225

`∩[A038847(n+1), A277594(n+1)]`
-/

namespace A038862.P8939803294840610225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P8939803294840610225

/-! ## A038862.P9688521209330598947

`∩[A038847(n+1), A277592(n+1)+2]`
-/

namespace A038862.P9688521209330598947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P9688521209330598947

/-! ## A038862.P11320469715456870741

`∩[A038847(n+1), A277596(n+1)-2]`
-/

namespace A038862.P11320469715456870741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P11320469715456870741

/-! ## A038862.P17112569879434817430

`∩[A038847(n+1), A121025(n+1)+2]`
-/

namespace A038862.P17112569879434817430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038862.P17112569879434817430

/-!
# A038863: Numbers ending with '8' that are the difference of two positive cubes.

The programs for A038863, there is no canonical definition to state claims against.
-/

/-! ## A038863.P17807217038161558388

`∩[A038593(n+1), A017365(n)]`
-/

namespace A038863.P17807217038161558388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P17807217038161558388

/-! ## A038863.P3343696337922027011

`∩[A017365(n), A038848(n+1)]`
-/

namespace A038863.P3343696337922027011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P3343696337922027011

/-! ## A038863.P17033519963500063161

`∩[A181123(n+1), A017365(n)]`
-/

namespace A038863.P17033519963500063161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P17033519963500063161

/-! ## A038863.P12000163690572734986

`∩[A038593(n+1), A017353(n)+1]`
-/

namespace A038863.P12000163690572734986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P12000163690572734986

/-! ## A038863.P4424271156067997713

`∩[A181123(n+1), A017353(n)+1]`
-/

namespace A038863.P4424271156067997713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P4424271156067997713

/-! ## A038863.P14060765747835314335

`∩[A038593(n+1), A017341(n)+2]`
-/

namespace A038863.P14060765747835314335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P14060765747835314335

/-! ## A038863.P11523147249262803229

`∩[A038593(n+1), A017377(n)-1]`
-/

namespace A038863.P11523147249262803229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P11523147249262803229

/-! ## A038863.P8662520698860995961

`∩[A181123(n+1), A017341(n)+2]`
-/

namespace A038863.P8662520698860995961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P8662520698860995961

/-! ## A038863.P17870102336526866604

`∩[A181123(n+1), A017377(n)-1]`
-/

namespace A038863.P17870102336526866604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P17870102336526866604

/-! ## A038863.P17066869250444176437

`∩[A038593(n+1), A160912(n+1)+1]`
-/

namespace A038863.P17066869250444176437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P17066869250444176437

/-! ## A038863.P36764967968101847

`∩[A160912(n+1)+1, A181123(n+1)]`
-/

namespace A038863.P36764967968101847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P36764967968101847

/-! ## A038863.P3558895789135952044

`∩[A016885(n), A038848(n+1)]`
-/

namespace A038863.P3558895789135952044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P3558895789135952044

/-! ## A038863.P11907108608042116701

`∩[A038848(n+1), A306277(n+1)]`
-/

namespace A038863.P11907108608042116701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038863.P11907108608042116701

/-!
# A038864: Numbers ending with '9' that are the difference of two positive cubes.

The programs for A038864, there is no canonical definition to state claims against.
-/

/-! ## A038864.P14736852207282650529

`∩[A038593(n+1), A017377(n)]`
-/

namespace A038864.P14736852207282650529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P14736852207282650529

/-! ## A038864.P11848703824786513979

`∩[A038847(n+1), A017377(n)]`
-/

namespace A038864.P11848703824786513979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P11848703824786513979

/-! ## A038864.P14352985604004189087

`∩[A181123(n+1), A017377(n)]`
-/

namespace A038864.P14352985604004189087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P14352985604004189087

/-! ## A038864.P9975039678123083768

`∩[A038593(n+1), A017365(n)+1]`
-/

namespace A038864.P9975039678123083768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P9975039678123083768

/-! ## A038864.P4464768704948889327

`∩[A181123(n+1), A017365(n)+1]`
-/

namespace A038864.P4464768704948889327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P4464768704948889327

/-! ## A038864.P9401233791669939886

`∩[A038593(n+1), A017353(n)+2]`
-/

namespace A038864.P9401233791669939886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P9401233791669939886

/-! ## A038864.P9327650309755660065

`∩[A038847(n+1), A017353(n)+2]`
-/

namespace A038864.P9327650309755660065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P9327650309755660065

/-! ## A038864.P8233655795719738022

`∩[A181123(n+1), A017353(n)+2]`
-/

namespace A038864.P8233655795719738022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P8233655795719738022

/-! ## A038864.P6817176468933732095

`∩[A038593(n+1), A017281(n)-2]`
-/

namespace A038864.P6817176468933732095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P6817176468933732095

/-! ## A038864.P14119978579231308389

`∩[A038847(n+1), A017281(n)-2]`
-/

namespace A038864.P14119978579231308389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P14119978579231308389

/-! ## A038864.P9080907135310168866

`∩[A181123(n+1), A017281(n)-2]`
-/

namespace A038864.P9080907135310168866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P9080907135310168866

/-! ## A038864.P4605441862929398185

`∩[A038593(n+1), A160912(n+1)+2]`
-/

namespace A038864.P4605441862929398185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P4605441862929398185

/-! ## A038864.P17580423101383658955

`∩[A038847(n+1), A160912(n+1)+2]`
-/

namespace A038864.P17580423101383658955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P17580423101383658955

/-! ## A038864.P16718729028811300653

`∩[A160912(n+1)+2, A181123(n+1)]`
-/

namespace A038864.P16718729028811300653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P16718729028811300653

/-! ## A038864.P17623610230767941317

`∩[A038847(n+1), A277596(n+1)]`
-/

namespace A038864.P17623610230767941317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P17623610230767941317

/-! ## A038864.P11685863989547844395

`∩[A038847(n+1), A277594(n+1)+2]`
-/

namespace A038864.P11685863989547844395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P11685863989547844395

/-! ## A038864.P1239988550419109315

`∩[A038847(n+1), A277588(n+1)-2]`
-/

namespace A038864.P1239988550419109315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P1239988550419109315

/-! ## A038864.P6896545745192671311

`∩[A038847(n+1), A016897(n)]`
-/

namespace A038864.P6896545745192671311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P6896545745192671311

/-! ## A038864.P12074494622761879954

`∩[A038847(n+1), A273669(n+1)]`
-/

namespace A038864.P12074494622761879954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P12074494622761879954

/-! ## A038864.P3264582843280540369

`∩[A038847(n+1), A016873(n)+2]`
-/

namespace A038864.P3264582843280540369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038864.P3264582843280540369

/-!
# A038865: a(n) = (n+3)^3 - n^3.

The programs for A038865, the canonical program `A038865.P7752552124364458632` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038865 has offset 1).

The definition of A038865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)^3-(n+1)^3` (program `A038865.P7752552124364458632`, by `A038865.P7752552124364458632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038865.P17693249281769320244

`ogf((63-72x+27x^2)/(1-3x+3x^2-x^3))`
-/

namespace A038865.P17693249281769320244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [63, -72, 27] [1, -3, 3, -1] n

end

end A038865.P17693249281769320244

namespace A038865

/-- `ogf((63-72x+27x^2)/(1-3x+3x^2-x^3))` -/
def P17693249281769320244.Spec : Prop :=
  ∀ n, P17693249281769320244.a n = A038865 (n + 1)

end A038865

/-! ## A038865.P7752552124364458632

`(n+4)^3-(n+1)^3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038865

/-- `(n+4)^3-(n+1)^3` -/
def P7752552124364458632.Spec : Prop :=
  ∀ n, P7752552124364458632.a n = A038865 (n + 1)

theorem P7752552124364458632.correct : P7752552124364458632.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel]

end A038865

/-! ## A038865.P3246196697812642486

`floor(9/Δ[atan(n+2)])`
-/

namespace A038865.P3246196697812642486
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 / (f1 (n + 1) - f1 n)⌋

end

end A038865.P3246196697812642486

namespace A038865

/-- `floor(9/Δ[atan(n+2)])` -/
def P3246196697812642486.Spec : Prop :=
  ∀ n, P3246196697812642486.a n = A038865 (n + 1)

end A038865

/-! ## A038865.P539093071536963187

`round(9/Δ[atan(n+2)])`
-/

namespace A038865.P539093071536963187
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 / (f1 (n + 1) - f1 n))

end

end A038865.P539093071536963187

namespace A038865

/-- `round(9/Δ[atan(n+2)])` -/
def P539093071536963187.Spec : Prop :=
  ∀ n, P539093071536963187.a n = A038865 (n + 1)

end A038865

/-! ## A038865.P4310425759353452407

`9*∑[a(n-1)+2]` with `a(0)=7, a(1)=6`
-/

namespace A038865.P4310425759353452407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038865.P4310425759353452407

namespace A038865

/-- `9*∑[a(n-1)+2]` -/
def P4310425759353452407.Spec : Prop :=
  ∀ n, (P4310425759353452407.a n : ℤ) = A038865 (n + 1)

end A038865

/-! ## A038865.P12052440824585803408

`record[9*((2-n)²-(n-3))]`
-/

namespace A038865.P12052440824585803408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((2 - (n : ℤ)) ^ 2 - ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038865.P12052440824585803408

namespace A038865

/-- `record[9*((2-n)²-(n-3))]` -/
def P12052440824585803408.Spec : Prop :=
  ∀ n, P12052440824585803408.a n = A038865 (n + 1)

end A038865

/-! ## A038865.P7502713233105511358

`3*(A217775(n)-5)`
-/

namespace A038865.P7502713233105511358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A217775 n - 5)

end

end A038865.P7502713233105511358

namespace A038865

/-- `3*(A217775(n)-5)` -/
def P7502713233105511358.Spec : Prop :=
  ∀ n, P7502713233105511358.a n = A038865 (n + 1)

theorem P7502713233105511358.correct : P7502713233105511358.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P7502713233105511358.a, A038865.P7752552124364458632.a, A217775, A217775.P11419149230376848677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P7566225495752757873

`Δ[A027603(n)-A000578(n)]`
-/

namespace A038865.P7566225495752757873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027603 n - A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038865.P7566225495752757873

namespace A038865

/-- `Δ[A027603(n)-A000578(n)]` -/
def P7566225495752757873.Spec : Prop :=
  ∀ n, P7566225495752757873.a n = A038865 (n + 1)

theorem P7566225495752757873.correct : P7566225495752757873.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P7566225495752757873.f1, A038865.P7566225495752757873.a, A038865.P7752552124364458632.a, A000578, A000578.P12162961755414704816.a, A027603, A027603.P5188916353772243150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P13779028889436471961

`Δ[A027602(n+1)]`
-/

namespace A038865.P13779028889436471961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038865.P13779028889436471961

namespace A038865

/-- `Δ[A027602(n+1)]` -/
def P13779028889436471961.Spec : Prop :=
  ∀ n, P13779028889436471961.a n = A038865 (n + 1)

theorem P13779028889436471961.correct : P13779028889436471961.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P13779028889436471961.f1, A038865.P13779028889436471961.a, A038865.P7752552124364458632.a, A027602, A027602.P2679377937091624113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P9256313475989602579

`9*A002061(n+3)`
-/

namespace A038865.P9256313475989602579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002061 (n + 3)

end

end A038865.P9256313475989602579

namespace A038865

/-- `9*A002061(n+3)` -/
def P9256313475989602579.Spec : Prop :=
  ∀ n, P9256313475989602579.a n = A038865 (n + 1)

theorem P9256313475989602579.correct : P9256313475989602579.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P9256313475989602579.a, A038865.P7752552124364458632.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P17218755098470981305

`Δ[3*A094792(n+1)]`
-/

namespace A038865.P17218755098470981305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038865.P17218755098470981305

namespace A038865

/-- `Δ[3*A094792(n+1)]` -/
def P17218755098470981305.Spec : Prop :=
  ∀ n, P17218755098470981305.a n = A038865 (n + 1)

theorem P17218755098470981305.correct : P17218755098470981305.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P17218755098470981305.f1, A038865.P17218755098470981305.a, A038865.P7752552124364458632.a, A094792, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P3242673824308255987

`Δ[3*A054602(n+2)]`
-/

namespace A038865.P3242673824308255987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038865.P3242673824308255987

namespace A038865

/-- `Δ[3*A054602(n+2)]` -/
def P3242673824308255987.Spec : Prop :=
  ∀ n, P3242673824308255987.a n = A038865 (n + 1)

theorem P3242673824308255987.correct : P3242673824308255987.Spec := by
  intro n
  simp only [A038865, Nat.add_sub_cancel, A038865.P3242673824308255987.f1, A038865.P3242673824308255987.a, A038865.P7752552124364458632.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038865

/-! ## A038865.P11394142298311187594

`A027692(A112414(n))`
-/

namespace A038865.P11394142298311187594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 (A112414 n).toNat

end

end A038865.P11394142298311187594

namespace A038865

/-- `A027692(A112414(n))` -/
def P11394142298311187594.Spec : Prop :=
  ∀ n, P11394142298311187594.a n = A038865 (n + 1)

end A038865

/-! ## A038865.P687823849927699005

`∩[A027692(n), A038851(n)]`
-/

namespace A038865.P687823849927699005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038851 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038865.P687823849927699005

namespace A038865

/-- `∩[A027692(n), A038851(n)]` -/
def P687823849927699005.Spec : Prop :=
  ∀ n, (P687823849927699005.a n : ℤ) = A038865 (n + 1)

end A038865

/-!
# A038866: a(n) = (n+4)^3 - n^3.

The programs for A038866, the canonical program `A038866.P18212840530330024133` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038866 has offset 1).

The definition of A038866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)^3-(n+1)^3` (program `A038866.P18212840530330024133`, by `A038866.P18212840530330024133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038866.P18212840530330024133

`(n+5)^3-(n+1)^3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038866

/-- `(n+5)^3-(n+1)^3` -/
def P18212840530330024133.Spec : Prop :=
  ∀ n, P18212840530330024133.a n = A038866 (n + 1)

theorem P18212840530330024133.correct : P18212840530330024133.Spec := by
  intro n
  simp only [A038866, Nat.add_sub_cancel]

end A038866

/-! ## A038866.P1358501540098483119

`4*(A067707(n+1)+16)`
-/

namespace A038866.P1358501540098483119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A067707 (n + 1) + 16)

end

end A038866.P1358501540098483119

namespace A038866

/-- `4*(A067707(n+1)+16)` -/
def P1358501540098483119.Spec : Prop :=
  ∀ n, P1358501540098483119.a n = A038866 (n + 1)

theorem P1358501540098483119.correct : P1358501540098483119.Spec := by
  intro n
  simp only [A038866, Nat.add_sub_cancel, A038866.P1358501540098483119.a, A038866.P18212840530330024133.a, A067707, A067707.P5911507643238364005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038866

/-! ## A038866.P11241770481563896780

`Δ[A027604(n)-A000578(n)]`
-/

namespace A038866.P11241770481563896780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027604 n - A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038866.P11241770481563896780

namespace A038866

/-- `Δ[A027604(n)-A000578(n)]` -/
def P11241770481563896780.Spec : Prop :=
  ∀ n, P11241770481563896780.a n = A038866 (n + 1)

theorem P11241770481563896780.correct : P11241770481563896780.Spec := by
  intro n
  simp only [A038866, Nat.add_sub_cancel, A038866.P11241770481563896780.f1, A038866.P11241770481563896780.a, A038866.P18212840530330024133.a, A000578, A000578.P12162961755414704816.a, A027604, A027604.P17635356302932696174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038866

/-! ## A038866.P9213661838701406487

`Δ[A027603(n+1)]`
-/

namespace A038866.P9213661838701406487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038866.P9213661838701406487

namespace A038866

/-- `Δ[A027603(n+1)]` -/
def P9213661838701406487.Spec : Prop :=
  ∀ n, P9213661838701406487.a n = A038866 (n + 1)

theorem P9213661838701406487.correct : P9213661838701406487.Spec := by
  intro n
  simp only [A038866, Nat.add_sub_cancel, A038866.P9213661838701406487.f1, A038866.P9213661838701406487.a, A038866.P18212840530330024133.a, A027603, A027603.P5188916353772243150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038866

/-! ## A038866.P6760141085551107241

`2*(A005897(n+3)+6)`
-/

namespace A038866.P6760141085551107241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005897 (n + 3) + 6)

end

end A038866.P6760141085551107241

namespace A038866

/-- `2*(A005897(n+3)+6)` -/
def P6760141085551107241.Spec : Prop :=
  ∀ n, P6760141085551107241.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P10236318869306317397

`Δ[4*A173965(n+3)]`
-/

namespace A038866.P10236318869306317397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173965 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038866.P10236318869306317397

namespace A038866

/-- `Δ[4*A173965(n+3)]` -/
def P10236318869306317397.Spec : Prop :=
  ∀ n, P10236318869306317397.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P15899451011873025486

`abs(A245996(n+1)-A245996(n+5))`
-/

namespace A038866.P15899451011873025486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245996 (n + 1) - A245996 (n + 5)|

end

end A038866.P15899451011873025486

namespace A038866

/-- `abs(A245996(n+1)-A245996(n+5))` -/
def P15899451011873025486.Spec : Prop :=
  ∀ n, P15899451011873025486.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P494505587932478605

`Δ[A000537(n+4)-A000537(n)]`
-/

namespace A038866.P494505587932478605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 4) - A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038866.P494505587932478605

namespace A038866

/-- `Δ[A000537(n+4)-A000537(n)]` -/
def P494505587932478605.Spec : Prop :=
  ∀ n, P494505587932478605.a n = A038866 (n + 1)

theorem P494505587932478605.correct : P494505587932478605.Spec := by
  intro n
  simp only [A038866, Nat.add_sub_cancel, A038866.P494505587932478605.f1, A038866.P494505587932478605.a, A038866.P18212840530330024133.a, A000537, A000537.P7887993002585723883.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038866

/-! ## A038866.P12088764722616365420

`Δ[(2*n+1)*A016825(A167614(n+2))]`
-/

namespace A038866.P12088764722616365420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A016825 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038866.P12088764722616365420

namespace A038866

/-- `Δ[(2*n+1)*A016825(A167614(n+2))]` -/
def P12088764722616365420.Spec : Prop :=
  ∀ n, P12088764722616365420.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P13226076153716076373

`4*A215631(A046691(n+3))`
-/

namespace A038866.P13226076153716076373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A215631 (A046691 (n + 3)).toNat

end

end A038866.P13226076153716076373

namespace A038866

/-- `4*A215631(A046691(n+3))` -/
def P13226076153716076373.Spec : Prop :=
  ∀ n, P13226076153716076373.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P6333664706845821830

`A257238(A000124(n+6)-6)`
-/

namespace A038866.P6333664706845821830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 (A000124 (n + 6) - 6).toNat

end

end A038866.P6333664706845821830

namespace A038866

/-- `A257238(A000124(n+6)-6)` -/
def P6333664706845821830.Spec : Prop :=
  ∀ n, P6333664706845821830.a n = A038866 (n + 1)

end A038866

/-! ## A038866.P4589286857348235921

`A257238(A000217(n+5)+n+1)`
-/

namespace A038866.P4589286857348235921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A038866.P4589286857348235921

namespace A038866

/-- `A257238(A000217(n+5)+n+1)` -/
def P4589286857348235921.Spec : Prop :=
  ∀ n, P4589286857348235921.a n = A038866 (n + 1)

end A038866

/-!
# A038867: a(n) = (n+5)^3 - n^3.

The programs for A038867, the canonical program `A038867.P774279057618454838` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038867 has offset 0).

The definition of A038867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)^3-n^3` (program `A038867.P774279057618454838`, by `A038867.P774279057618454838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038867.P774279057618454838

`(n+5)^3-n^3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038867

/-- `(n+5)^3-n^3` -/
def P774279057618454838.Spec : Prop :=
  ∀ n, P774279057618454838.a n = A038867 n

theorem P774279057618454838.correct : P774279057618454838.Spec := by
  intro n
  simp only [A038867]

end A038867

/-! ## A038867.P16700880008937016304

`5*A378569(n+2)`
-/

namespace A038867.P16700880008937016304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A378569 (n + 2)

end

end A038867.P16700880008937016304

namespace A038867

/-- `5*A378569(n+2)` -/
def P16700880008937016304.Spec : Prop :=
  ∀ n, P16700880008937016304.a n = A038867 n

theorem P16700880008937016304.correct : P16700880008937016304.Spec := by
  intro n
  simp only [A038867, Nat.add_sub_cancel, A038867.P16700880008937016304.a, A038867.P774279057618454838.a, A378569, A378569.P3280406852489029443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038867

/-! ## A038867.P7492948420158824408

`5*(∑[a(n-1)+6]-1)` with `a(0)=26, a(1)=18`
-/

namespace A038867.P7492948420158824408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [26, 18] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A038867.P7492948420158824408

namespace A038867

/-- `5*(∑[a(n-1)+6]-1)` -/
def P7492948420158824408.Spec : Prop :=
  ∀ n, P7492948420158824408.a n = A038867 n

end A038867

/-! ## A038867.P15813949442445816877

`5*(A217775(n)-1)`
-/

namespace A038867.P15813949442445816877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A217775 n - 1)

end

end A038867.P15813949442445816877

namespace A038867

/-- `5*(A217775(n)-1)` -/
def P15813949442445816877.Spec : Prop :=
  ∀ n, P15813949442445816877.a n = A038867 n

theorem P15813949442445816877.correct : P15813949442445816877.Spec := by
  intro n
  simp only [A038867, Nat.add_sub_cancel, A038867.P15813949442445816877.a, A038867.P774279057618454838.a, A217775, A217775.P11419149230376848677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038867

/-! ## A038867.P2634292271795731127

`5*(6*(A000217(n+2)+1)+1)`
-/

namespace A038867.P2634292271795731127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * (A000217 (n + 2) + 1) + 1)

end

end A038867.P2634292271795731127

namespace A038867

/-- `5*(6*(A000217(n+2)+1)+1)` -/
def P2634292271795731127.Spec : Prop :=
  ∀ n, P2634292271795731127.a n = A038867 n

theorem P2634292271795731127.correct : P2634292271795731127.Spec := by
  intro n
  simp only [A038867, Nat.add_sub_cancel, A038867.P2634292271795731127.a, A038867.P774279057618454838.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038867

/-! ## A038867.P12878902395976642586

`Δ[A027604(n)]`
-/

namespace A038867.P12878902395976642586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038867.P12878902395976642586

namespace A038867

/-- `Δ[A027604(n)]` -/
def P12878902395976642586.Spec : Prop :=
  ∀ n, P12878902395976642586.a n = A038867 n

theorem P12878902395976642586.correct : P12878902395976642586.Spec := by
  intro n
  simp only [A038867, Nat.add_sub_cancel, A038867.P12878902395976642586.f1, A038867.P12878902395976642586.a, A038867.P774279057618454838.a, A027604, A027604.P17635356302932696174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038867

/-! ## A038867.P3356448267789642981

`Δ[A027603(n+1)+n^3]`
-/

namespace A038867.P3356448267789642981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027603 (n + 1) + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038867.P3356448267789642981

namespace A038867

/-- `Δ[A027603(n+1)+n^3]` -/
def P3356448267789642981.Spec : Prop :=
  ∀ n, P3356448267789642981.a n = A038867 n

theorem P3356448267789642981.correct : P3356448267789642981.Spec := by
  intro n
  simp only [A038867, Nat.add_sub_cancel, A038867.P3356448267789642981.f1, A038867.P3356448267789642981.a, A038867.P774279057618454838.a, A027603, A027603.P5188916353772243150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038867

/-! ## A038867.P13507039691086089036

`abs(A000578(n+5)-A000578(n))`
-/

namespace A038867.P13507039691086089036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 (n + 5) - A000578 n|

end

end A038867.P13507039691086089036

namespace A038867

/-- `abs(A000578(n+5)-A000578(n))` -/
def P13507039691086089036.Spec : Prop :=
  ∀ n, P13507039691086089036.a n = A038867 n

end A038867

/-! ## A038867.P6064079459651677926

`Δ[Δ[A027578(A000124(n+1))]]`
-/

namespace A038867.P6064079459651677926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027578 (A000124 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038867.P6064079459651677926

namespace A038867

/-- `Δ[Δ[A027578(A000124(n+1))]]` -/
def P6064079459651677926.Spec : Prop :=
  ∀ n, P6064079459651677926.a n = A038867 n

end A038867

/-! ## A038867.P5649954946670455038

`A084967((n+3)²-n)`
-/

namespace A038867.P5649954946670455038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 ((n + 3) ^ 2 - n)

end

end A038867.P5649954946670455038

namespace A038867

/-- `A084967((n+3)²-n)` -/
def P5649954946670455038.Spec : Prop :=
  ∀ n, P5649954946670455038.a n = A038867 n

end A038867

/-!
# A038869: Primes p such that both p-2 and 2p-1 are prime.

The programs for A038869, there is no canonical definition to state claims against.
-/

/-! ## A038869.P6780005407436497129

`ceil(A118071(n+1)/2)`
-/

namespace A038869.P6780005407436497129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118071 (n + 1) : ℚ) / 2⌉

end

end A038869.P6780005407436497129

/-! ## A038869.P13781755923479531365

`∩[A005382(n+1), A006512(n+1)]`
-/

namespace A038869.P13781755923479531365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P13781755923479531365

/-! ## A038869.P3345646478704840069

`∩[A005382(n+1), A172057(n+1)]`
-/

namespace A038869.P3345646478704840069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P3345646478704840069

/-! ## A038869.P8108296414346314020

`∩[A006512(n+1), A174568(n+1)]`
-/

namespace A038869.P8108296414346314020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P8108296414346314020

/-! ## A038869.P16745547222811155694

`∩[A006512(n+1), A265394(n+1)]`
-/

namespace A038869.P16745547222811155694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P16745547222811155694

/-! ## A038869.P16522260522968797880

`∩[A172057(n+1), A174568(n+1)]`
-/

namespace A038869.P16522260522968797880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P16522260522968797880

/-! ## A038869.P8073810559386154289

`∩[A172057(n+1), A265394(n+1)]`
-/

namespace A038869.P8073810559386154289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P8073810559386154289

/-! ## A038869.P3986922737527086712

`∩[A005382(n+1), A339692(n+1)]`
-/

namespace A038869.P3986922737527086712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P3986922737527086712

/-! ## A038869.P520041403230245463

`∩[A174568(n+1), A339692(n+1)]`
-/

namespace A038869.P520041403230245463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P520041403230245463

/-! ## A038869.P13689581184453405428

`∩[A265394(n+1), A339692(n+1)]`
-/

namespace A038869.P13689581184453405428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P13689581184453405428

/-! ## A038869.P441620030853511530

`p?[A034937(n+1)+2]`
-/

namespace A038869.P441620030853511530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034937 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038869.P441620030853511530

/-! ## A038869.P15619929361152926925

`∩[A005382(n+1), A320391(n+1)]`
-/

namespace A038869.P15619929361152926925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P15619929361152926925

/-! ## A038869.P18065317155990259817

`∩[A174568(n+1), A320391(n+1)]`
-/

namespace A038869.P18065317155990259817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P18065317155990259817

/-! ## A038869.P1120469956213197229

`∩[A265394(n+1), A320391(n+1)]`
-/

namespace A038869.P1120469956213197229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P1120469956213197229

/-! ## A038869.P14844348539080360415

`∩[A005382(n+1), A391049(n+1)]`
-/

namespace A038869.P14844348539080360415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P14844348539080360415

/-! ## A038869.P4281348374850179876

`∩[A174568(n+1), A391049(n+1)]`
-/

namespace A038869.P4281348374850179876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P4281348374850179876

/-! ## A038869.P7982075241642858909

`∩[A265394(n+1), A391049(n+1)]`
-/

namespace A038869.P7982075241642858909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038869.P7982075241642858909

/-! ## A038869.P4975389466187037427

`p?[A023204(n+1)+2]`
-/

namespace A038869.P4975389466187037427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038869.P4975389466187037427

/-! ## A038869.P5937476337154929475

`p?[round(A089531(n+1)/2)]`
-/

namespace A038869.P5937476337154929475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089531 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038869.P5937476337154929475

/-!
# A038870: Irregular triangle read by rows: T(n,k) = number of orbits of order exactly k under doubling map which remain in a semicircle, with k dividing n.

The programs for A038870, there is no canonical definition to state claims against.
-/

/-! ## A038870.P3317086485396745479

`A038871(∑[A132068(n+1)])`
-/

namespace A038870.P3317086485396745479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038871 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038870.P3317086485396745479

/-! ## A038870.P2334721792609120689

`A342122(A367745(n+2))`
-/

namespace A038870.P2334721792609120689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (A367745 (n + 2)).toNat

end

end A038870.P2334721792609120689

/-!
# A038871: Triangle read by rows: T(n,k) = number of orbits of order k under doubling map which remain in a semicircle, with k dividing n.

The programs for A038871, there is no canonical definition to state claims against.
-/

/-! ## A038871.P2209251132840454379

`A056539(A090698(n+2))%(2^ceil(log2(n+1)))`
-/

namespace A038871.P2209251132840454379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056539 (A090698 (n + 2)).toNat) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A038871.P2209251132840454379

/-! ## A038871.P16141576595592482260

`A030101(lt[A340906(n+7), A080765(n+1)])`
-/

namespace A038871.P16141576595592482260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340906 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038871.P16141576595592482260

/-! ## A038871.P15119247037895423263

`A030101(lt[A340906(n+7), A285968(n+1)])`
-/

namespace A038871.P15119247037895423263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340906 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038871.P15119247037895423263

/-! ## A038871.P248714326376712644

`A030101(lt[A340906(n+7), A286337(n+5)])`
-/

namespace A038871.P248714326376712644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340906 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038871.P248714326376712644

/-!
# A038872: Primes congruent to {0, 1, 4} mod 5.

The programs for A038872, the canonical program `A038872.P17305392752220352491` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038872 has offset 1).

The definition of A038872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038872.P17305392752220352491

`p?[a(n-2)+5]` with `a(0)=5, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038872

/-- `p?[a(n-2)+5]` -/
def P17305392752220352491.Spec : Prop :=
  ∀ n, (P17305392752220352491.a n : ℤ) = A038872 (n + 1)

theorem P17305392752220352491.correct : P17305392752220352491.Spec := by
  intro n
  simp only [A038872, Nat.add_sub_cancel]

end A038872

/-! ## A038872.P6566909172541826196

`p?[5*n-a(n-1)]` with `a(0)=5, a(1)=1`
-/

namespace A038872.P6566909172541826196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038872.P6566909172541826196

namespace A038872

/-- `p?[5*n-a(n-1)]` -/
def P6566909172541826196.Spec : Prop :=
  ∀ n, P6566909172541826196.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P3790228461589107206

`p?[A341783(n+1)]`
-/

namespace A038872.P3790228461589107206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038872.P3790228461589107206

namespace A038872

/-- `p?[A341783(n+1)]` -/
def P3790228461589107206.Spec : Prop :=
  ∀ n, P3790228461589107206.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P3817424063229375475

`p?[(2*n)%5+2*n+1]`
-/

namespace A038872.P3817424063229375475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 5 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038872.P3817424063229375475

namespace A038872

/-- `p?[(2*n)%5+2*n+1]` -/
def P3817424063229375475.Spec : Prop :=
  ∀ n, (P3817424063229375475.a n : ℤ) = A038872 (n + 1)

end A038872

/-! ## A038872.P14377971831318067972

`p?[2*round((n+5)/3)+n]`
-/

namespace A038872.P14377971831318067972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n + 5 : ℚ) / 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038872.P14377971831318067972

namespace A038872

/-- `p?[2*round((n+5)/3)+n]` -/
def P14377971831318067972.Spec : Prop :=
  ∀ n, P14377971831318067972.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P5699004202216965962

`∩[A000040(n+1), A341783(n+1)]`
-/

namespace A038872.P5699004202216965962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038872.P5699004202216965962

namespace A038872

/-- `∩[A000040(n+1), A341783(n+1)]` -/
def P5699004202216965962.Spec : Prop :=
  ∀ n, (P5699004202216965962.a n : ℤ) = A038872 (n + 1)

end A038872

/-! ## A038872.P2507479420860744181

`record[A006530(A341783(n+2))]`
-/

namespace A038872.P2507479420860744181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341783 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038872.P2507479420860744181

namespace A038872

/-- `record[A006530(A341783(n+2))]` -/
def P2507479420860744181.Spec : Prop :=
  ∀ n, P2507479420860744181.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P14828790923842374162

`filter[A341783(n+1), A008966(#)]`
-/

namespace A038872.P14828790923842374162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038872.P14828790923842374162

namespace A038872

/-- `filter[A341783(n+1), A008966(#)]` -/
def P14828790923842374162.Spec : Prop :=
  ∀ n, P14828790923842374162.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P14892906218157879986

`filter[A341783(n+1), A010051(#)]`
-/

namespace A038872.P14892906218157879986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038872.P14892906218157879986

namespace A038872

/-- `filter[A341783(n+1), A010051(#)]` -/
def P14892906218157879986.Spec : Prop :=
  ∀ n, P14892906218157879986.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P17342972568269767318

`filter[A341783(n+1), A066829(#)]`
-/

namespace A038872.P17342972568269767318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A038872.P17342972568269767318

namespace A038872

/-- `filter[A341783(n+1), A066829(#)]` -/
def P17342972568269767318.Spec : Prop :=
  ∀ n, P17342972568269767318.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P14091546801191754861

`filter[A341783(n+1), A257531(#)]`
-/

namespace A038872.P14091546801191754861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A038872.P14091546801191754861

namespace A038872

/-- `filter[A341783(n+1), A257531(#)]` -/
def P14091546801191754861.Spec : Prop :=
  ∀ n, P14091546801191754861.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P3990634490338963937

`filter[A341783(n+1), A049240(#)]`
-/

namespace A038872.P3990634490338963937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A038872.P3990634490338963937

namespace A038872

/-- `filter[A341783(n+1), A049240(#)]` -/
def P3990634490338963937.Spec : Prop :=
  ∀ n, P3990634490338963937.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P16786501868813995805

`filter[A341783(n+1), A099104(#)]`
-/

namespace A038872.P16786501868813995805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A038872.P16786501868813995805

namespace A038872

/-- `filter[A341783(n+1), A099104(#)]` -/
def P16786501868813995805.Spec : Prop :=
  ∀ n, P16786501868813995805.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P9982192246429542561

`filter[A341783(n+1), A174897(#)]`
-/

namespace A038872.P9982192246429542561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A038872.P9982192246429542561

namespace A038872

/-- `filter[A341783(n+1), A174897(#)]` -/
def P9982192246429542561.Spec : Prop :=
  ∀ n, P9982192246429542561.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P7719349977383192301

`filter[A341783(n+1), A181183(#)]`
-/

namespace A038872.P7719349977383192301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A038872.P7719349977383192301

namespace A038872

/-- `filter[A341783(n+1), A181183(#)]` -/
def P7719349977383192301.Spec : Prop :=
  ∀ n, P7719349977383192301.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P282822613162227025

`filter[A341783(n+1), A252233(#)]`
-/

namespace A038872.P282822613162227025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A038872.P282822613162227025

namespace A038872

/-- `filter[A341783(n+1), A252233(#)]` -/
def P282822613162227025.Spec : Prop :=
  ∀ n, P282822613162227025.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P1614064365567761927

`filter[A341783(n+1), A262684(#)]`
-/

namespace A038872.P1614064365567761927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A038872.P1614064365567761927

namespace A038872

/-- `filter[A341783(n+1), A262684(#)]` -/
def P1614064365567761927.Spec : Prop :=
  ∀ n, P1614064365567761927.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P14278444115054422176

`filter[A341783(n+1), A295316(#)]`
-/

namespace A038872.P14278444115054422176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A038872.P14278444115054422176

namespace A038872

/-- `filter[A341783(n+1), A295316(#)]` -/
def P14278444115054422176.Spec : Prop :=
  ∀ n, P14278444115054422176.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P7512754245166717939

`or(1, p?[A031363(n+1)])`
-/

namespace A038872.P7512754245166717939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A038872.P7512754245166717939

namespace A038872

/-- `or(1, p?[A031363(n+1)])` -/
def P7512754245166717939.Spec : Prop :=
  ∀ n, P7512754245166717939.a n = A038872 (n + 1)

end A038872

/-! ## A038872.P7193786070240122559

`record[A006530(A031363(n+3))]`
-/

namespace A038872.P7193786070240122559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A031363 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038872.P7193786070240122559

namespace A038872

/-- `record[A006530(A031363(n+3))]` -/
def P7193786070240122559.Spec : Prop :=
  ∀ n, P7193786070240122559.a n = A038872 (n + 1)

end A038872

/-!
# A038873: Primes p such that 2 is a square mod p; or, primes congruent to {1, 2, 7} mod 8.

The programs for A038873, the canonical program `A038873.P6807961448888722097` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038873 has offset 1).

The definition of A038873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038873.P6807961448888722097

`p?[a(n-3)+8]` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038873

/-- `p?[a(n-3)+8]` -/
def P6807961448888722097.Spec : Prop :=
  ∀ n, (P6807961448888722097.a n : ℤ) = A038873 (n + 1)

theorem P6807961448888722097.correct : P6807961448888722097.Spec := by
  intro n
  simp only [A038873, Nat.add_sub_cancel]

end A038873

/-! ## A038873.P4234233674871536498

`p?[ogf((1+x+5x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A038873.P4234233674871536498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P4234233674871536498

namespace A038873

/-- `p?[ogf((1+x+5x^2+x^3)/(1-x-x^3+x^4))]` -/
def P4234233674871536498.Spec : Prop :=
  ∀ n, P4234233674871536498.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P6167509094307066451

`A001132(n%a(n-1))` with `a(0)=2`
-/

namespace A038873.P6167509094307066451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001132 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A038873.P6167509094307066451

namespace A038873

/-- `A001132(n%a(n-1))` -/
def P6167509094307066451.Spec : Prop :=
  ∀ n, P6167509094307066451.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P2329360619723125930

`A097958(n+1)-A000007(n)`
-/

namespace A038873.P2329360619723125930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1) - A000007 n

end

end A038873.P2329360619723125930

namespace A038873

/-- `A097958(n+1)-A000007(n)` -/
def P2329360619723125930.Spec : Prop :=
  ∀ n, P2329360619723125930.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P4294789319410818701

`xor(A010051(2*(n+1)), A097958(n+1))`
-/

namespace A038873.P4294789319410818701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (2 * (n + 1))) (A097958 (n + 1))

end

end A038873.P4294789319410818701

namespace A038873

/-- `xor(A010051(2*(n+1)), A097958(n+1))` -/
def P4294789319410818701.Spec : Prop :=
  ∀ n, P4294789319410818701.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P6056271220538357983

`A001132(A028310(n))%A106972(n+1)`
-/

namespace A038873.P6056271220538357983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001132 (A028310 n).toNat) (A106972 (n + 1))

end

end A038873.P6056271220538357983

namespace A038873

/-- `A001132(A028310(n))%A106972(n+1)` -/
def P6056271220538357983.Spec : Prop :=
  ∀ n, P6056271220538357983.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P5005752274609988863

`p?[A055673(n+1)]`
-/

namespace A038873.P5005752274609988863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P5005752274609988863

namespace A038873

/-- `p?[A055673(n+1)]` -/
def P5005752274609988863.Spec : Prop :=
  ∀ n, P5005752274609988863.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P5636882691405226659

`∩[A015919(n+1), A055673(n+1)]`
-/

namespace A038873.P5636882691405226659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038873.P5636882691405226659

namespace A038873

/-- `∩[A015919(n+1), A055673(n+1)]` -/
def P5636882691405226659.Spec : Prop :=
  ∀ n, (P5636882691405226659.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P9129060567575805806

`p?[floor(or(4, 6*n)/3)]`
-/

namespace A038873.P9129060567575805806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 4 (6 * n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P9129060567575805806

namespace A038873

/-- `p?[floor(or(4, 6*n)/3)]` -/
def P9129060567575805806.Spec : Prop :=
  ∀ n, P9129060567575805806.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P16608195656845252344

`p?[or(3, n+1)-3+n]`
-/

namespace A038873.P16608195656845252344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℤ) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P16608195656845252344

namespace A038873

/-- `p?[or(3, n+1)-3+n]` -/
def P16608195656845252344.Spec : Prop :=
  ∀ n, P16608195656845252344.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P10261282821782833429

`p?[or(2*n, (n+1)%4)]`
-/

namespace A038873.P10261282821782833429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) ((n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P10261282821782833429

namespace A038873

/-- `p?[or(2*n, (n+1)%4)]` -/
def P10261282821782833429.Spec : Prop :=
  ∀ n, (P10261282821782833429.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P15173179173683877287

`p?[xor(2*n+1, n%4)]`
-/

namespace A038873.P15173179173683877287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P15173179173683877287

namespace A038873

/-- `p?[xor(2*n+1, n%4)]` -/
def P15173179173683877287.Spec : Prop :=
  ∀ n, (P15173179173683877287.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P5388425978961550750

`p?[or(2*n, and(3, n+1))]`
-/

namespace A038873.P5388425978961550750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.land 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P5388425978961550750

namespace A038873

/-- `p?[or(2*n, and(3, n+1))]` -/
def P5388425978961550750.Spec : Prop :=
  ∀ n, (P5388425978961550750.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P8082411766858181334

`p?[xor(2*n+1, and(3, n))]`
-/

namespace A038873.P8082411766858181334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P8082411766858181334

namespace A038873

/-- `p?[xor(2*n+1, and(3, n))]` -/
def P8082411766858181334.Spec : Prop :=
  ∀ n, (P8082411766858181334.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P18437841625305741231

`p?[4*n-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A038873.P18437841625305741231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P18437841625305741231

namespace A038873

/-- `p?[4*n-a(n-2)]` -/
def P18437841625305741231.Spec : Prop :=
  ∀ n, P18437841625305741231.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P9837863360668505737

`p?[gcd(4, 1-n)+2*n+1]`
-/

namespace A038873.P9837863360668505737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (1 - (n : ℤ)) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P9837863360668505737

namespace A038873

/-- `p?[gcd(4, 1-n)+2*n+1]` -/
def P9837863360668505737.Spec : Prop :=
  ∀ n, (P9837863360668505737.a n : ℤ) = A038873 (n + 1)

end A038873

/-! ## A038873.P7453945494834483414

`p?[2*n+1-and(3, n+1)]`
-/

namespace A038873.P7453945494834483414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.land 3 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P7453945494834483414

namespace A038873

/-- `p?[2*n+1-and(3, n+1)]` -/
def P7453945494834483414.Spec : Prop :=
  ∀ n, P7453945494834483414.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P3172572024506219302

`p?[n+1-and(3, n+1)+n]`
-/

namespace A038873.P3172572024506219302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 3 (n + 1) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P3172572024506219302

namespace A038873

/-- `p?[n+1-and(3, n+1)+n]` -/
def P3172572024506219302.Spec : Prop :=
  ∀ n, P3172572024506219302.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P3610557401028792205

`p?[floor((8*n+6)/5)]`
-/

namespace A038873.P3610557401028792205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n + 6 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038873.P3610557401028792205

namespace A038873

/-- `p?[floor((8*n+6)/5)]` -/
def P3610557401028792205.Spec : Prop :=
  ∀ n, P3610557401028792205.a n = A038873 (n + 1)

end A038873

/-! ## A038873.P5014288596751559759

`∩[A045323(n+1), A045352(n+1)]`
-/

namespace A038873.P5014288596751559759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038873.P5014288596751559759

namespace A038873

/-- `∩[A045323(n+1), A045352(n+1)]` -/
def P5014288596751559759.Spec : Prop :=
  ∀ n, (P5014288596751559759.a n : ℤ) = A038873 (n + 1)

end A038873

/-!
# A038874: Primes p such that 3 is a square mod p.

The programs for A038874, the canonical program `A038874.P9185498900229541672` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038874 has offset 1).

The definition of A038874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038874.P9688518749727110730

`∪[A040124(n+1), A068228(n+1)]`
-/

namespace A038874.P9688518749727110730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038874.P9688518749727110730

namespace A038874

/-- `∪[A040124(n+1), A068228(n+1)]` -/
def P9688518749727110730.Spec : Prop :=
  ∀ n, (P9688518749727110730.a n : ℤ) = A038874 (n + 1)

end A038874

/-! ## A038874.P14805559541076626402

`p?[A391369(n+1)]`
-/

namespace A038874.P14805559541076626402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038874.P14805559541076626402

namespace A038874

/-- `p?[A391369(n+1)]` -/
def P14805559541076626402.Spec : Prop :=
  ∀ n, P14805559541076626402.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P9185498900229541672

`p?[2*n-(n+1)%6]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038874

/-- `p?[2*n-(n+1)%6]` -/
def P9185498900229541672.Spec : Prop :=
  ∀ n, P9185498900229541672.a n = A038874 (n + 1)

theorem P9185498900229541672.correct : P9185498900229541672.Spec := by
  intro n
  simp only [A038874, Nat.add_sub_cancel]

end A038874

/-! ## A038874.P11925057426698209522

`∩[A053813(n+1), A391369(n+1)]`
-/

namespace A038874.P11925057426698209522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038874.P11925057426698209522

namespace A038874

/-- `∩[A053813(n+1), A391369(n+1)]` -/
def P11925057426698209522.Spec : Prop :=
  ∀ n, (P11925057426698209522.a n : ℤ) = A038874 (n + 1)

end A038874

/-! ## A038874.P364165978825814974

`∩[A391369(n+1), A260442(n)]`
-/

namespace A038874.P364165978825814974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038874.P364165978825814974

namespace A038874

/-- `∩[A391369(n+1), A260442(n)]` -/
def P364165978825814974.Spec : Prop :=
  ∀ n, (P364165978825814974.a n : ℤ) = A038874 (n + 1)

end A038874

/-! ## A038874.P22678840819054551

`record[A006530(xor(3, 3*n)+1)]`
-/

namespace A038874.P22678840819054551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 3 (3 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038874.P22678840819054551

namespace A038874

/-- `record[A006530(xor(3, 3*n)+1)]` -/
def P22678840819054551.Spec : Prop :=
  ∀ n, P22678840819054551.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P16661569440099158033

`record[A006530(ceil(5*n/7)+n+2)]`
-/

namespace A038874.P16661569440099158033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌈5 * ((n : ℚ) / 7)⌉ + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038874.P16661569440099158033

namespace A038874

/-- `record[A006530(ceil(5*n/7)+n+2)]` -/
def P16661569440099158033.Spec : Prop :=
  ∀ n, P16661569440099158033.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P6185617089487547781

`filter[A391369(n+1), A001222(#)]`
-/

namespace A038874.P6185617089487547781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A038874.P6185617089487547781

namespace A038874

/-- `filter[A391369(n+1), A001222(#)]` -/
def P6185617089487547781.Spec : Prop :=
  ∀ n, P6185617089487547781.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P9667080237912113972

`filter[A391369(n+1), A008966(#)]`
-/

namespace A038874.P9667080237912113972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038874.P9667080237912113972

namespace A038874

/-- `filter[A391369(n+1), A008966(#)]` -/
def P9667080237912113972.Spec : Prop :=
  ∀ n, P9667080237912113972.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P3555455461583203678

`filter[A391369(n+1), A010051(#)]`
-/

namespace A038874.P3555455461583203678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038874.P3555455461583203678

namespace A038874

/-- `filter[A391369(n+1), A010051(#)]` -/
def P3555455461583203678.Spec : Prop :=
  ∀ n, P3555455461583203678.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P8834732163805249758

`filter[A391369(n+1), A066829(#)]`
-/

namespace A038874.P8834732163805249758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A038874.P8834732163805249758

namespace A038874

/-- `filter[A391369(n+1), A066829(#)]` -/
def P8834732163805249758.Spec : Prop :=
  ∀ n, P8834732163805249758.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P1738657025859073124

`∩[A005117(n+1), A391369(n+1)]`
-/

namespace A038874.P1738657025859073124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038874.P1738657025859073124

namespace A038874

/-- `∩[A005117(n+1), A391369(n+1)]` -/
def P1738657025859073124.Spec : Prop :=
  ∀ n, (P1738657025859073124.a n : ℤ) = A038874 (n + 1)

end A038874

/-! ## A038874.P11910226706404391893

`filter[A391369(n+1), A049240(#)]`
-/

namespace A038874.P11910226706404391893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A038874.P11910226706404391893

namespace A038874

/-- `filter[A391369(n+1), A049240(#)]` -/
def P11910226706404391893.Spec : Prop :=
  ∀ n, P11910226706404391893.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P1741118918117140735

`filter[A391369(n+1), A099104(#)]`
-/

namespace A038874.P1741118918117140735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A038874.P1741118918117140735

namespace A038874

/-- `filter[A391369(n+1), A099104(#)]` -/
def P1741118918117140735.Spec : Prop :=
  ∀ n, P1741118918117140735.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P17329506078584000574

`filter[A391369(n+1), A174897(#)]`
-/

namespace A038874.P17329506078584000574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A038874.P17329506078584000574

namespace A038874

/-- `filter[A391369(n+1), A174897(#)]` -/
def P17329506078584000574.Spec : Prop :=
  ∀ n, P17329506078584000574.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P11151943192224489498

`filter[A391369(n+1), A181183(#)]`
-/

namespace A038874.P11151943192224489498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A038874.P11151943192224489498

namespace A038874

/-- `filter[A391369(n+1), A181183(#)]` -/
def P11151943192224489498.Spec : Prop :=
  ∀ n, P11151943192224489498.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P12563212120971026029

`filter[A391369(n+1), A252233(#)]`
-/

namespace A038874.P12563212120971026029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A038874.P12563212120971026029

namespace A038874

/-- `filter[A391369(n+1), A252233(#)]` -/
def P12563212120971026029.Spec : Prop :=
  ∀ n, P12563212120971026029.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P13497951227885718733

`filter[A391369(n+1), A295316(#)]`
-/

namespace A038874.P13497951227885718733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A038874.P13497951227885718733

namespace A038874

/-- `filter[A391369(n+1), A295316(#)]` -/
def P13497951227885718733.Spec : Prop :=
  ∀ n, P13497951227885718733.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P4316102126448330869

`filter[A391369(n+1), A296211(#)]`
-/

namespace A038874.P4316102126448330869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A038874.P4316102126448330869

namespace A038874

/-- `filter[A391369(n+1), A296211(#)]` -/
def P4316102126448330869.Spec : Prop :=
  ∀ n, P4316102126448330869.a n = A038874 (n + 1)

end A038874

/-! ## A038874.P7092064084218054045

`filter[A391369(n+1), A323152(#)]`
-/

namespace A038874.P7092064084218054045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A038874.P7092064084218054045

namespace A038874

/-- `filter[A391369(n+1), A323152(#)]` -/
def P7092064084218054045.Spec : Prop :=
  ∀ n, P7092064084218054045.a n = A038874 (n + 1)

end A038874

/-!
# A038875: Primes p with legendre(3,p) = -1.

The programs for A038875, the canonical program `A038875.P6482023720043383188` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038875 has offset 1).

The definition of A038875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038875.P6482023720043383188

`p?[xor(2, n)+2*n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038875

/-- `p?[xor(2, n)+2*n]` -/
def P6482023720043383188.Spec : Prop :=
  ∀ n, (P6482023720043383188.a n : ℤ) = A038875 (n + 1)

theorem P6482023720043383188.correct : P6482023720043383188.Spec := by
  intro n
  simp only [A038875, Nat.add_sub_cancel]

end A038875

/-! ## A038875.P17466606880751659801

`p?[xor(2, n)+n+n]`
-/

namespace A038875.P17466606880751659801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038875.P17466606880751659801

namespace A038875

/-- `p?[xor(2, n)+n+n]` -/
def P17466606880751659801.Spec : Prop :=
  ∀ n, (P17466606880751659801.a n : ℤ) = A038875 (n + 1)

theorem P17466606880751659801.correct : P17466606880751659801.Spec := by
  intro n
  simp only [A038875, Nat.add_sub_cancel, A038875.P17466606880751659801.f1, A038875.P17466606880751659801.a, A038875.P6482023720043383188.f1, A038875.P6482023720043383188.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A038875

/-! ## A038875.P12578146603449488144

`p?[round((n+1)*sinh(log(5)))]`
-/

namespace A038875.P12578146603449488144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sinh (Real.log (5 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P12578146603449488144

namespace A038875

/-- `p?[round((n+1)*sinh(log(5)))]` -/
def P12578146603449488144.Spec : Prop :=
  ∀ n, P12578146603449488144.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P1556972131340812651

`p?[2*or(2, n)+n-2]`
-/

namespace A038875.P1556972131340812651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 2 n : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P1556972131340812651

namespace A038875

/-- `p?[2*or(2, n)+n-2]` -/
def P1556972131340812651.Spec : Prop :=
  ∀ n, P1556972131340812651.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P9228200032456667833

`p?[ogf((2x+x^2+x^3+2x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A038875.P9228200032456667833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1, 2] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P9228200032456667833

namespace A038875

/-- `p?[ogf((2x+x^2+x^3+2x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P9228200032456667833.Spec : Prop :=
  ∀ n, P9228200032456667833.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P16754902823698559962

`∪[A003630(n+1), A061351(n)]`
-/

namespace A038875.P16754902823698559962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038875.P16754902823698559962

namespace A038875

/-- `∪[A003630(n+1), A061351(n)]` -/
def P16754902823698559962.Spec : Prop :=
  ∀ n, (P16754902823698559962.a n : ℤ) = A038875 (n + 1)

end A038875

/-! ## A038875.P8504860227862861583

`p?[2*n-round(a(n-1)/6)]` with `a(0)=0`
-/

namespace A038875.P8504860227862861583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P8504860227862861583

namespace A038875

/-- `p?[2*n-round(a(n-1)/6)]` -/
def P8504860227862861583.Spec : Prop :=
  ∀ n, P8504860227862861583.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P14216382417459425570

`record[A006530(xor(2, n)+2*n)]`
-/

namespace A038875.P14216382417459425570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 2 n + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038875.P14216382417459425570

namespace A038875

/-- `record[A006530(xor(2, n)+2*n)]` -/
def P14216382417459425570.Spec : Prop :=
  ∀ n, P14216382417459425570.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P4550113829291260635

`record[A006530(round((n+1)*sinh(log(5))))]`
-/

namespace A038875.P4550113829291260635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sinh (Real.log (5 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038875.P4550113829291260635

namespace A038875

/-- `record[A006530(round((n+1)*sinh(log(5))))]` -/
def P4550113829291260635.Spec : Prop :=
  ∀ n, P4550113829291260635.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P1431868240646693355

`record[A020639(round((n+1)*sinh(log(5))))]`
-/

namespace A038875.P1431868240646693355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sinh (Real.log (5 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038875.P1431868240646693355

namespace A038875

/-- `record[A020639(round((n+1)*sinh(log(5))))]` -/
def P1431868240646693355.Spec : Prop :=
  ∀ n, P1431868240646693355.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P6038161645341708904

`record[A000010(xor(2, n)+n+n)]+1`
-/

namespace A038875.P6038161645341708904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor 2 n + n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A038875.P6038161645341708904

namespace A038875

/-- `record[A000010(xor(2, n)+n+n)]+1` -/
def P6038161645341708904.Spec : Prop :=
  ∀ n, P6038161645341708904.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P689566415821800807

`record[A020639(2*n+1-a(n-3))]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A038875.P689566415821800807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  A020639 ((2 * n + 1 : ℤ) - f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038875.P689566415821800807

namespace A038875

/-- `record[A020639(2*n+1-a(n-3))]` -/
def P689566415821800807.Spec : Prop :=
  ∀ n, P689566415821800807.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P863737963792884742

`p?[A004443(n)+2*n]`
-/

namespace A038875.P863737963792884742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P863737963792884742

namespace A038875

/-- `p?[A004443(n)+2*n]` -/
def P863737963792884742.Spec : Prop :=
  ∀ n, P863737963792884742.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P16688801244258224677

`p?[A265035(n)-(n+2)]`
-/

namespace A038875.P16688801244258224677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265035 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P16688801244258224677

namespace A038875

/-- `p?[A265035(n)-(n+2)]` -/
def P16688801244258224677.Spec : Prop :=
  ∀ n, P16688801244258224677.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P8143541468774527935

`p?[∑[A134267(n+2)]]`
-/

namespace A038875.P8143541468774527935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134267 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P8143541468774527935

namespace A038875

/-- `p?[∑[A134267(n+2)]]` -/
def P8143541468774527935.Spec : Prop :=
  ∀ n, P8143541468774527935.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P9842395974095029681

`p?[A003662(n+1)+1]`
-/

namespace A038875.P9842395974095029681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P9842395974095029681

namespace A038875

/-- `p?[A003662(n+1)+1]` -/
def P9842395974095029681.Spec : Prop :=
  ∀ n, P9842395974095029681.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P3740222699454328667

`p?[A047433(n+1)+n]`
-/

namespace A038875.P3740222699454328667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047433 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P3740222699454328667

namespace A038875

/-- `p?[A047433(n+1)+n]` -/
def P3740222699454328667.Spec : Prop :=
  ∀ n, P3740222699454328667.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P18138026146217519774

`p?[A047460(n+1)+n]`
-/

namespace A038875.P18138026146217519774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P18138026146217519774

namespace A038875

/-- `p?[A047460(n+1)+n]` -/
def P18138026146217519774.Spec : Prop :=
  ∀ n, P18138026146217519774.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P17517226690005262034

`p?[A081032(n+1)]`
-/

namespace A038875.P17517226690005262034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038875.P17517226690005262034

namespace A038875

/-- `p?[A081032(n+1)]` -/
def P17517226690005262034.Spec : Prop :=
  ∀ n, P17517226690005262034.a n = A038875 (n + 1)

end A038875

/-! ## A038875.P13950414571254704106

`filter[A081032(n+1), A010051(#)]`
-/

namespace A038875.P13950414571254704106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038875.P13950414571254704106

namespace A038875

/-- `filter[A081032(n+1), A010051(#)]` -/
def P13950414571254704106.Spec : Prop :=
  ∀ n, P13950414571254704106.a n = A038875 (n + 1)

end A038875

/-!
# A038876: Primes p such that 6 is a square mod p.

The programs for A038876, the canonical program `A038876.P6053899537912777126` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038876 has offset 1).

The definition of A038876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038876.P6053899537912777126

`∪[A141170(n+1), A141171(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038876

/-- `∪[A141170(n+1), A141171(n+1)]` -/
def P6053899537912777126.Spec : Prop :=
  ∀ n, (P6053899537912777126.a n : ℤ) = A038876 (n + 1)

theorem P6053899537912777126.correct : P6053899537912777126.Spec := by
  intro n
  simp only [A038876, Nat.add_sub_cancel]

end A038876

/-! ## A038876.P5282936466459565909

`p?[A391371(n+1)]`
-/

namespace A038876.P5282936466459565909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038876.P5282936466459565909

namespace A038876

/-- `p?[A391371(n+1)]` -/
def P5282936466459565909.Spec : Prop :=
  ∀ n, P5282936466459565909.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P4505940593307980509

`∩[A015919(n+1), A391371(n+1)]`
-/

namespace A038876.P4505940593307980509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P4505940593307980509

namespace A038876

/-- `∩[A015919(n+1), A391371(n+1)]` -/
def P4505940593307980509.Spec : Prop :=
  ∀ n, (P4505940593307980509.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P10657878293350635178

`p?[12*round(n/12)+n]`
-/

namespace A038876.P10657878293350635178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.roundAway ((n : ℚ) / 12) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038876.P10657878293350635178

namespace A038876

/-- `p?[12*round(n/12)+n]` -/
def P10657878293350635178.Spec : Prop :=
  ∀ n, P10657878293350635178.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P14334016098991993171

`A000027(p?[A262931(n+1)])`
-/

namespace A038876.P14334016098991993171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A038876.P14334016098991993171

namespace A038876

/-- `A000027(p?[A262931(n+1)])` -/
def P14334016098991993171.Spec : Prop :=
  ∀ n, P14334016098991993171.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P5974886725504507971

`gcd(p?[A262931(n+1)], A000038(n))`
-/

namespace A038876.P5974886725504507971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A038876.P5974886725504507971

namespace A038876

/-- `gcd(p?[A262931(n+1)], A000038(n))` -/
def P5974886725504507971.Spec : Prop :=
  ∀ n, (P5974886725504507971.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P14099074878569144944

`or(p?[A262931(n+1)], A169671(n))`
-/

namespace A038876.P14099074878569144944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A169671 n)

end

end A038876.P14099074878569144944

namespace A038876

/-- `or(p?[A262931(n+1)], A169671(n))` -/
def P14099074878569144944.Spec : Prop :=
  ∀ n, P14099074878569144944.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P10132112690439606832

`p?[A262931(n+1)]%A001748(n+1)`
-/

namespace A038876.P10132112690439606832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001748 (n + 1))

end

end A038876.P10132112690439606832

namespace A038876

/-- `p?[A262931(n+1)]%A001748(n+1)` -/
def P10132112690439606832.Spec : Prop :=
  ∀ n, P10132112690439606832.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P8996877971034297724

`∩[A000040(n+1), A262931(n+1)]`
-/

namespace A038876.P8996877971034297724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P8996877971034297724

namespace A038876

/-- `∩[A000040(n+1), A262931(n+1)]` -/
def P8996877971034297724.Spec : Prop :=
  ∀ n, (P8996877971034297724.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P5558383088808348021

`∩[A000040(n+1), A391371(n+1)]`
-/

namespace A038876.P5558383088808348021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P5558383088808348021

namespace A038876

/-- `∩[A000040(n+1), A391371(n+1)]` -/
def P5558383088808348021.Spec : Prop :=
  ∀ n, (P5558383088808348021.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P14960796481240668506

`∩[A008578(n+1), A391371(n+1)]`
-/

namespace A038876.P14960796481240668506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P14960796481240668506

namespace A038876

/-- `∩[A008578(n+1), A391371(n+1)]` -/
def P14960796481240668506.Spec : Prop :=
  ∀ n, (P14960796481240668506.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P12325748715519642470

`∩[A046022(n+1), A391371(n+1)]`
-/

namespace A038876.P12325748715519642470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P12325748715519642470

namespace A038876

/-- `∩[A046022(n+1), A391371(n+1)]` -/
def P12325748715519642470.Spec : Prop :=
  ∀ n, (P12325748715519642470.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P6004122948912876858

`∩[A053813(n+1), A391371(n+1)]`
-/

namespace A038876.P6004122948912876858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P6004122948912876858

namespace A038876

/-- `∩[A053813(n+1), A391371(n+1)]` -/
def P6004122948912876858.Spec : Prop :=
  ∀ n, (P6004122948912876858.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P15739590875534716785

`∩[A055977(n+1), A391371(n+1)]`
-/

namespace A038876.P15739590875534716785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P15739590875534716785

namespace A038876

/-- `∩[A055977(n+1), A391371(n+1)]` -/
def P15739590875534716785.Spec : Prop :=
  ∀ n, (P15739590875534716785.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P8584885566526716829

`∩[A391371(n+1), A260442(n)]`
-/

namespace A038876.P8584885566526716829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P8584885566526716829

namespace A038876

/-- `∩[A391371(n+1), A260442(n)]` -/
def P8584885566526716829.Spec : Prop :=
  ∀ n, (P8584885566526716829.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P6608910945150851505

`∩[A066191(n+1), A262931(n+1)]`
-/

namespace A038876.P6608910945150851505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P6608910945150851505

namespace A038876

/-- `∩[A066191(n+1), A262931(n+1)]` -/
def P6608910945150851505.Spec : Prop :=
  ∀ n, (P6608910945150851505.a n : ℤ) = A038876 (n + 1)

end A038876

/-! ## A038876.P13926223892316034162

`record[A006530(A262931(n+2))]`
-/

namespace A038876.P13926223892316034162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A262931 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038876.P13926223892316034162

namespace A038876

/-- `record[A006530(A262931(n+2))]` -/
def P13926223892316034162.Spec : Prop :=
  ∀ n, P13926223892316034162.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P15119344518675214653

`filter[A262931(n+1), A001222(#)]`
-/

namespace A038876.P15119344518675214653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A038876.P15119344518675214653

namespace A038876

/-- `filter[A262931(n+1), A001222(#)]` -/
def P15119344518675214653.Spec : Prop :=
  ∀ n, P15119344518675214653.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P16209191918250291944

`filter[A262931(n+1), A010051(#)]`
-/

namespace A038876.P16209191918250291944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038876.P16209191918250291944

namespace A038876

/-- `filter[A262931(n+1), A010051(#)]` -/
def P16209191918250291944.Spec : Prop :=
  ∀ n, P16209191918250291944.a n = A038876 (n + 1)

end A038876

/-! ## A038876.P1391075699123818611

`filter[A391371(n+1), A008966(#)]`
-/

namespace A038876.P1391075699123818611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038876.P1391075699123818611

namespace A038876

/-- `filter[A391371(n+1), A008966(#)]` -/
def P1391075699123818611.Spec : Prop :=
  ∀ n, P1391075699123818611.a n = A038876 (n + 1)

end A038876

/-!
# A038877: Primes p such that 6 is not a square mod p.

The programs for A038877, the canonical program `A038877.P3686517323935896556` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038877 has offset 1).

The definition of A038877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038877.P3686517323935896556

`p?[2*(n+1)-xor(2, n)%3]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A038877

/-- `p?[2*(n+1)-xor(2, n)%3]` -/
def P3686517323935896556.Spec : Prop :=
  ∀ n, P3686517323935896556.a n = A038877 (n + 1)

theorem P3686517323935896556.correct : P3686517323935896556.Spec := by
  intro n
  simp only [A038877, Nat.add_sub_cancel]

end A038877

/-! ## A038877.P6600123481617705276

`p?[xor(2, A250120(n+1))]`
-/

namespace A038877.P6600123481617705276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A250120 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P6600123481617705276

namespace A038877

/-- `p?[xor(2, A250120(n+1))]` -/
def P6600123481617705276.Spec : Prop :=
  ∀ n, P6600123481617705276.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P10081444611194277150

`record[A020639(xor(2, A250120(n+1)))]`
-/

namespace A038877.P10081444611194277150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor 2 (A250120 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038877.P10081444611194277150

namespace A038877

/-- `record[A020639(xor(2, A250120(n+1)))]` -/
def P10081444611194277150.Spec : Prop :=
  ∀ n, P10081444611194277150.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P159503291397130997

`p?[∑[A131028(n+1)]]`
-/

namespace A038877.P159503291397130997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P159503291397130997

namespace A038877

/-- `p?[∑[A131028(n+1)]]` -/
def P159503291397130997.Spec : Prop :=
  ∀ n, P159503291397130997.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P4496163329271402260

`p?[∑[A084104(n+3)]]`
-/

namespace A038877.P4496163329271402260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084104 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P4496163329271402260

namespace A038877

/-- `p?[∑[A084104(n+3)]]` -/
def P4496163329271402260.Spec : Prop :=
  ∀ n, P4496163329271402260.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P11844723248685401610

`p?[xor(3, A083089(n+2)+A083089(n+2))]`
-/

namespace A038877.P11844723248685401610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A083089 (n + 2) + A083089 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P11844723248685401610

namespace A038877

/-- `p?[xor(3, A083089(n+2)+A083089(n+2))]` -/
def P11844723248685401610.Spec : Prop :=
  ∀ n, P11844723248685401610.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P11115364299794746313

`p?[A007310(or(3, n)+n)]`
-/

namespace A038877.P11115364299794746313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (Nat.lor 3 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P11115364299794746313

namespace A038877

/-- `p?[A007310(or(3, n)+n)]` -/
def P11115364299794746313.Spec : Prop :=
  ∀ n, P11115364299794746313.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P9980497217195960625

`p?[A000982(xor(4, n))-A000982(n+1)]`
-/

namespace A038877.P9980497217195960625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (Nat.xor 4 n) - A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P9980497217195960625

namespace A038877

/-- `p?[A000982(xor(4, n))-A000982(n+1)]` -/
def P9980497217195960625.Spec : Prop :=
  ∀ n, P9980497217195960625.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P3631428337160188801

`p?[A047535(n+1)+2-A047547(n+1)]`
-/

namespace A038877.P3631428337160188801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (n + 1) + (2 - A047547 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P3631428337160188801

namespace A038877

/-- `p?[A047535(n+1)+2-A047547(n+1)]` -/
def P3631428337160188801.Spec : Prop :=
  ∀ n, P3631428337160188801.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P14989634744750578183

`p?[∑[A234902(2*(n+1))-A234902(2*n+1)]]`
-/

namespace A038877.P14989634744750578183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234902 (2 * (n + 1)) - A234902 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P14989634744750578183

namespace A038877

/-- `p?[∑[A234902(2*(n+1))-A234902(2*n+1)]]` -/
def P14989634744750578183.Spec : Prop :=
  ∀ n, P14989634744750578183.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P4062988698888699749

`p?[A191276(2*n+1)]`
-/

namespace A038877.P4062988698888699749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P4062988698888699749

namespace A038877

/-- `p?[A191276(2*n+1)]` -/
def P4062988698888699749.Spec : Prop :=
  ∀ n, P4062988698888699749.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P5575482138715176857

`p?[xor(2, A083033(2*(n+1)))]`
-/

namespace A038877.P5575482138715176857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A083033 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P5575482138715176857

namespace A038877

/-- `p?[xor(2, A083033(2*(n+1)))]` -/
def P5575482138715176857.Spec : Prop :=
  ∀ n, P5575482138715176857.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P1575595885128520141

`p?[A190719(2*n+1)+char[1]]`
-/

namespace A038877.P1575595885128520141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (2 * n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P1575595885128520141

namespace A038877

/-- `p?[A190719(2*n+1)+char[1]]` -/
def P1575595885128520141.Spec : Prop :=
  ∀ n, P1575595885128520141.a n = A038877 (n + 1)

end A038877

/-! ## A038877.P5145002843246182264

`∩[A349707(2*(n+1))+1, A000040(n+2)]`
-/

namespace A038877.P5145002843246182264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P5145002843246182264

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A000040(n+2)]` -/
def P5145002843246182264.Spec : Prop :=
  ∀ n, (P5145002843246182264.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P12376605704852503619

`∩[A349707(2*(n+1))+1, A004139(n+2)]`
-/

namespace A038877.P12376605704852503619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P12376605704852503619

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A004139(n+2)]` -/
def P12376605704852503619.Spec : Prop :=
  ∀ n, (P12376605704852503619.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P12797521983399614780

`∩[A349707(2*(n+1))+1, A045319(n+2)]`
-/

namespace A038877.P12797521983399614780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P12797521983399614780

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A045319(n+2)]` -/
def P12797521983399614780.Spec : Prop :=
  ∀ n, (P12797521983399614780.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P13610165388643784486

`∩[A349707(2*(n+1))+1, A045344(n+2)]`
-/

namespace A038877.P13610165388643784486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P13610165388643784486

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A045344(n+2)]` -/
def P13610165388643784486.Spec : Prop :=
  ∀ n, (P13610165388643784486.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P10893281281444798453

`∩[A349707(2*(n+1))+1, A065091(n+2)]`
-/

namespace A038877.P10893281281444798453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P10893281281444798453

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A065091(n+2)]` -/
def P10893281281444798453.Spec : Prop :=
  ∀ n, (P10893281281444798453.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P11679910938089519022

`∩[A349707(2*(n+1))+1, A215848(n+2)]`
-/

namespace A038877.P11679910938089519022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038877.P11679910938089519022

namespace A038877

/-- `∩[A349707(2*(n+1))+1, A215848(n+2)]` -/
def P11679910938089519022.Spec : Prop :=
  ∀ n, (P11679910938089519022.a n : ℤ) = A038877 (n + 1)

end A038877

/-! ## A038877.P16226753539150221659

`p?[∑[A040937(2*n+1)]]`
-/

namespace A038877.P16226753539150221659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040937 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P16226753539150221659

namespace A038877

/-- `p?[∑[A040937(2*n+1)]]` -/
def P16226753539150221659.Spec : Prop :=
  ∀ n, P16226753539150221659.a n = A038877 (n + 1)

end A038877

/-!
# A038878: Primes p such that 7 is a square mod p.

The programs for A038878, there is no canonical definition to state claims against.
-/

/-! ## A038878.P7091363140036715504

`∪[A040112(n+1), A107134(n+1)]`
-/

namespace A038878.P7091363140036715504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P7091363140036715504

/-! ## A038878.P14990254226541353009

`p?[A262932(n+1)]`
-/

namespace A038878.P14990254226541353009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038878.P14990254226541353009

/-! ## A038878.P15113701146047154362

`∩[A000040(n+1), A262932(n+1)]`
-/

namespace A038878.P15113701146047154362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P15113701146047154362

/-! ## A038878.P7881498923654190091

`∩[A045319(n+1), A262932(n+1)]`
-/

namespace A038878.P7881498923654190091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P7881498923654190091

/-! ## A038878.P13685202553050875665

`∩[A175787(n+1), A262932(n+1)]`
-/

namespace A038878.P13685202553050875665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P13685202553050875665

/-! ## A038878.P6556271154715381786

`∩[A182986(n+1), A262932(n+1)]`
-/

namespace A038878.P6556271154715381786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P6556271154715381786

/-! ## A038878.P238080918302482696

`∩[A182140(n+1), A262932(n+1)]`
-/

namespace A038878.P238080918302482696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P238080918302482696

/-! ## A038878.P4144492333638802732

`∩[A066191(n+1), A262932(n+1)]`
-/

namespace A038878.P4144492333638802732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P4144492333638802732

/-! ## A038878.P6630399837575457639

`record[A006530(A262932(n+2))]`
-/

namespace A038878.P6630399837575457639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A262932 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038878.P6630399837575457639

/-! ## A038878.P16062674589329777936

`filter[A262932(n+1), A010051(#)]`
-/

namespace A038878.P16062674589329777936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038878.P16062674589329777936

/-! ## A038878.P10208667281012333229

`p?[comp[A003632(n+1)]]`
-/

namespace A038878.P10208667281012333229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038878.P10208667281012333229

/-! ## A038878.P7452300830305172885

`filter[A262932(n+2), A080339(#)]`
-/

namespace A038878.P7452300830305172885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038878.P7452300830305172885

/-! ## A038878.P12292074236704179941

`p?[eq[2, A035189(A035189(n+2)+1)]+2]`
-/

namespace A038878.P12292074236704179941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A035189 (n + 2) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038878.P12292074236704179941

/-! ## A038878.P189082875371428800

`p?[(n+1)*(A035189(A035189(n+1)+1)-1)]`
-/

namespace A038878.P189082875371428800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035189 (A035189 (n + 1) + 1).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038878.P189082875371428800

/-! ## A038878.P2836376357812468964

`∩[A230606(n+1), A262932(n+1)]`
-/

namespace A038878.P2836376357812468964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P2836376357812468964

/-! ## A038878.P8115737560150893946

`∩[A240960(n+1), A262932(n+1)]`
-/

namespace A038878.P8115737560150893946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P8115737560150893946

/-! ## A038878.P17357320602717504664

`∩[A262932(n+1), A298865(n+1)]`
-/

namespace A038878.P17357320602717504664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038878.P17357320602717504664

/-! ## A038878.P16950569517957095604

`p?[(n+1)*A210442(A035189(n+1)+1)]`
-/

namespace A038878.P16950569517957095604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210442 (A035189 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038878.P16950569517957095604

/-!
# A038879: 10 is a square mod p.

The programs for A038879, the canonical program `A038879.P8445411459541825881` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038879 has offset 1).

The definition of A038879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038879.P10953611240791905431

`∪[A097955(n+1), A141179(n+1)]`
-/

namespace A038879.P10953611240791905431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P10953611240791905431

namespace A038879

/-- `∪[A097955(n+1), A141179(n+1)]` -/
def P10953611240791905431.Spec : Prop :=
  ∀ n, (P10953611240791905431.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P8445411459541825881

`∪[A141179(n+1), A141180(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038879

/-- `∪[A141179(n+1), A141180(n+1)]` -/
def P8445411459541825881.Spec : Prop :=
  ∀ n, (P8445411459541825881.a n : ℤ) = A038879 (n + 1)

theorem P8445411459541825881.correct : P8445411459541825881.Spec := by
  intro n
  simp only [A038879, Nat.add_sub_cancel]

end A038879

/-! ## A038879.P15912564735288661408

`p?[A391367(n+1)]`
-/

namespace A038879.P15912564735288661408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038879.P15912564735288661408

namespace A038879

/-- `p?[A391367(n+1)]` -/
def P15912564735288661408.Spec : Prop :=
  ∀ n, P15912564735288661408.a n = A038879 (n + 1)

end A038879

/-! ## A038879.P17725286552092570261

`∩[A015919(n+1), A391367(n+1)]`
-/

namespace A038879.P17725286552092570261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P17725286552092570261

namespace A038879

/-- `∩[A015919(n+1), A391367(n+1)]` -/
def P17725286552092570261.Spec : Prop :=
  ∀ n, (P17725286552092570261.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P15111229476685103134

`∩[A000040(n+1), A391367(n+1)]`
-/

namespace A038879.P15111229476685103134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P15111229476685103134

namespace A038879

/-- `∩[A000040(n+1), A391367(n+1)]` -/
def P15111229476685103134.Spec : Prop :=
  ∀ n, (P15111229476685103134.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P10518113869901804154

`∩[A008578(n+1), A391367(n+1)]`
-/

namespace A038879.P10518113869901804154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P10518113869901804154

namespace A038879

/-- `∩[A008578(n+1), A391367(n+1)]` -/
def P10518113869901804154.Spec : Prop :=
  ∀ n, (P10518113869901804154.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P14838048064670511077

`∩[A046022(n+1), A391367(n+1)]`
-/

namespace A038879.P14838048064670511077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P14838048064670511077

namespace A038879

/-- `∩[A046022(n+1), A391367(n+1)]` -/
def P14838048064670511077.Spec : Prop :=
  ∀ n, (P14838048064670511077.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P7948825555998782646

`∩[A051948(n+1), A391367(n+1)]`
-/

namespace A038879.P7948825555998782646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P7948825555998782646

namespace A038879

/-- `∩[A051948(n+1), A391367(n+1)]` -/
def P7948825555998782646.Spec : Prop :=
  ∀ n, (P7948825555998782646.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P11374248462011211052

`∩[A053813(n+1), A391367(n+1)]`
-/

namespace A038879.P11374248462011211052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P11374248462011211052

namespace A038879

/-- `∩[A053813(n+1), A391367(n+1)]` -/
def P11374248462011211052.Spec : Prop :=
  ∀ n, (P11374248462011211052.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P3878474960321739564

`∩[A055977(n+1), A391367(n+1)]`
-/

namespace A038879.P3878474960321739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P3878474960321739564

namespace A038879

/-- `∩[A055977(n+1), A391367(n+1)]` -/
def P3878474960321739564.Spec : Prop :=
  ∀ n, (P3878474960321739564.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P15832209394204606612

`∩[A053577(n+1), A391367(n+1)]`
-/

namespace A038879.P15832209394204606612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P15832209394204606612

namespace A038879

/-- `∩[A053577(n+1), A391367(n+1)]` -/
def P15832209394204606612.Spec : Prop :=
  ∀ n, (P15832209394204606612.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P3598281244585018286

`∩[A391367(n+1), A260442(n)]`
-/

namespace A038879.P3598281244585018286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P3598281244585018286

namespace A038879

/-- `∩[A391367(n+1), A260442(n)]` -/
def P3598281244585018286.Spec : Prop :=
  ∀ n, (P3598281244585018286.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P997710282288337827

`filter[A391367(n+1), A008966(#)]`
-/

namespace A038879.P997710282288337827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038879.P997710282288337827

namespace A038879

/-- `filter[A391367(n+1), A008966(#)]` -/
def P997710282288337827.Spec : Prop :=
  ∀ n, P997710282288337827.a n = A038879 (n + 1)

end A038879

/-! ## A038879.P17672290538357255983

`filter[A391367(n+1), A010051(#)]`
-/

namespace A038879.P17672290538357255983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038879.P17672290538357255983

namespace A038879

/-- `filter[A391367(n+1), A010051(#)]` -/
def P17672290538357255983.Spec : Prop :=
  ∀ n, P17672290538357255983.a n = A038879 (n + 1)

end A038879

/-! ## A038879.P267308149329198455

`filter[A391367(n+1), A066829(#)]`
-/

namespace A038879.P267308149329198455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A038879.P267308149329198455

namespace A038879

/-- `filter[A391367(n+1), A066829(#)]` -/
def P267308149329198455.Spec : Prop :=
  ∀ n, P267308149329198455.a n = A038879 (n + 1)

end A038879

/-! ## A038879.P4410444547576512103

`∩[A045745(n+1), A391367(n+1)]`
-/

namespace A038879.P4410444547576512103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P4410444547576512103

namespace A038879

/-- `∩[A045745(n+1), A391367(n+1)]` -/
def P4410444547576512103.Spec : Prop :=
  ∀ n, (P4410444547576512103.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P15190376038806377340

`∩[A036844(n+1), A391367(n+1)]`
-/

namespace A038879.P15190376038806377340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P15190376038806377340

namespace A038879

/-- `∩[A036844(n+1), A391367(n+1)]` -/
def P15190376038806377340.Spec : Prop :=
  ∀ n, (P15190376038806377340.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P4100348234830448783

`∩[A005117(n+1), A391367(n+1)]`
-/

namespace A038879.P4100348234830448783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038879.P4100348234830448783

namespace A038879

/-- `∩[A005117(n+1), A391367(n+1)]` -/
def P4100348234830448783.Spec : Prop :=
  ∀ n, (P4100348234830448783.a n : ℤ) = A038879 (n + 1)

end A038879

/-! ## A038879.P15556115447760121068

`filter[A391367(n+1), A049240(#)]`
-/

namespace A038879.P15556115447760121068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A038879.P15556115447760121068

namespace A038879

/-- `filter[A391367(n+1), A049240(#)]` -/
def P15556115447760121068.Spec : Prop :=
  ∀ n, P15556115447760121068.a n = A038879 (n + 1)

end A038879

/-! ## A038879.P11652221237161346870

`filter[A391367(n+1), A099104(#)]`
-/

namespace A038879.P11652221237161346870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A038879.P11652221237161346870

namespace A038879

/-- `filter[A391367(n+1), A099104(#)]` -/
def P11652221237161346870.Spec : Prop :=
  ∀ n, P11652221237161346870.a n = A038879 (n + 1)

end A038879

/-!
# A038880: Primes p such that 10 is not a square mod p.

The programs for A038880, the canonical program `A038880.P2574069876143911903` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038880 has offset 1).

The definition of A038880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038880.P2574069876143911903

`p?[A000035(A008616(n))*A020742(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038880

/-- `p?[A000035(A008616(n))*A020742(n)]` -/
def P2574069876143911903.Spec : Prop :=
  ∀ n, P2574069876143911903.a n = A038880 (n + 1)

theorem P2574069876143911903.correct : P2574069876143911903.Spec := by
  intro n
  simp only [A038880, Nat.add_sub_cancel]

end A038880

/-! ## A038880.P5968976536456200087

`p?[(1-A035192(n+1))*(n+1)]`
-/

namespace A038880.P5968976536456200087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035192 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P5968976536456200087

namespace A038880

/-- `p?[(1-A035192(n+1))*(n+1)]` -/
def P5968976536456200087.Spec : Prop :=
  ∀ n, P5968976536456200087.a n = A038880 (n + 1)

end A038880

/-! ## A038880.P17455914115659647782

`eq[A260148(n), A391503(n)]`
-/

namespace A038880.P17455914115659647782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038880.P17455914115659647782

namespace A038880

/-- `eq[A260148(n), A391503(n)]` -/
def P17455914115659647782.Spec : Prop :=
  ∀ n, (P17455914115659647782.a n : ℤ) = A038880 (n + 1)

end A038880

/-! ## A038880.P10327144850245983792

`p?[or(-A035192(n+1), A004442(n))]`
-/

namespace A038880.P10327144850245983792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A035192 (n + 1)) (A004442 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P10327144850245983792

namespace A038880

/-- `p?[or(-A035192(n+1), A004442(n))]` -/
def P10327144850245983792.Spec : Prop :=
  ∀ n, P10327144850245983792.a n = A038880 (n + 1)

end A038880

/-! ## A038880.P12126664903477609278

`p?[or(-A035192(n+1), A131738(n))]`
-/

namespace A038880.P12126664903477609278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A035192 (n + 1)) (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P12126664903477609278

namespace A038880

/-- `p?[or(-A035192(n+1), A131738(n))]` -/
def P12126664903477609278.Spec : Prop :=
  ∀ n, P12126664903477609278.a n = A038880 (n + 1)

end A038880

/-! ## A038880.P8826755856112061351

`p?[gcd(A014973(n+1), A035192(n+1))]`
-/

namespace A038880.P8826755856112061351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014973 (n + 1)) (A035192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038880.P8826755856112061351

namespace A038880

/-- `p?[gcd(A014973(n+1), A035192(n+1))]` -/
def P8826755856112061351.Spec : Prop :=
  ∀ n, (P8826755856112061351.a n : ℤ) = A038880 (n + 1)

end A038880

/-! ## A038880.P14728739454438527515

`p?[(n+1)*and(1, A023141(A023142(n+1)+1))]`
-/

namespace A038880.P14728739454438527515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A023141 (A023142 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P14728739454438527515

namespace A038880

/-- `p?[(n+1)*and(1, A023141(A023142(n+1)+1))]` -/
def P14728739454438527515.Spec : Prop :=
  ∀ n, P14728739454438527515.a n = A038880 (n + 1)

end A038880

/-! ## A038880.P17278421529020560354

`p?[A133310(A016825(n)+A004443(n))]`
-/

namespace A038880.P17278421529020560354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A016825 n + A004443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P17278421529020560354

namespace A038880

/-- `p?[A133310(A016825(n)+A004443(n))]` -/
def P17278421529020560354.Spec : Prop :=
  ∀ n, P17278421529020560354.a n = A038880 (n + 1)

end A038880

/-!
# A038881: Odd primes p such that 11 is a square mod p.

The programs for A038881, there is no canonical definition to state claims against.
-/

/-! ## A038881.P3986200149416533633

`p?[A035255(n+1)]`
-/

namespace A038881.P3986200149416533633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P3986200149416533633

/-! ## A038881.P1972135075038397550

`p?[record[A035255(A349315(n))]]`
-/

namespace A038881.P1972135075038397550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P1972135075038397550

/-! ## A038881.P12066657812387010866

`record[A006530(A035255(n+3))]`
-/

namespace A038881.P12066657812387010866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035255 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038881.P12066657812387010866

/-! ## A038881.P17514457328038843041

`filter[A035255(n+1), A010051(#)]`
-/

namespace A038881.P17514457328038843041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038881.P17514457328038843041

/-! ## A038881.P10228395262602936716

`filter[A035255(n+2), A380467(#)]`
-/

namespace A038881.P10228395262602936716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038881.P10228395262602936716

/-! ## A038881.P9413739333773379529

`∩[A000040(n+1), A035255(n+1)]`
-/

namespace A038881.P9413739333773379529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P9413739333773379529

/-! ## A038881.P4713006814160135935

`∩[A035255(n+1), A045344(n+1)]`
-/

namespace A038881.P4713006814160135935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P4713006814160135935

/-! ## A038881.P18234963231351823290

`∩[A035255(n+1), A065091(n+1)]`
-/

namespace A038881.P18234963231351823290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P18234963231351823290

/-! ## A038881.P12314450016200603074

`∩[A035255(n+1), A085118(n+1)]`
-/

namespace A038881.P12314450016200603074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P12314450016200603074

/-! ## A038881.P7739527025896230153

`∩[A035255(n+1), A116974(n+1)]`
-/

namespace A038881.P7739527025896230153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P7739527025896230153

/-! ## A038881.P9921743345394272435

`∩[A035255(n+1), A182986(n+1)]`
-/

namespace A038881.P9921743345394272435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P9921743345394272435

/-! ## A038881.P7268882925854985141

`∩[A035255(n+1), A215848(n+1)]`
-/

namespace A038881.P7268882925854985141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P7268882925854985141

/-! ## A038881.P13860132417616809526

`∩[A035255(n+1), A327906(n+1)]`
-/

namespace A038881.P13860132417616809526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038881.P13860132417616809526

/-! ## A038881.P7387932062643078115

`filter[A035255(n+1), A171387(#)]`
-/

namespace A038881.P7387932062643078115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A038881.P7387932062643078115

/-! ## A038881.P3155072866981406286

`filter[A035255(n+2), A080339(#)]`
-/

namespace A038881.P3155072866981406286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038881.P3155072866981406286

/-! ## A038881.P2585438942421702534

`filter[A035255(n+2), A080545(#)]`
-/

namespace A038881.P2585438942421702534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A038881.P2585438942421702534

/-! ## A038881.P5685096848170282056

`p?[(n+1)*A003056(A035193(n+1))]`
-/

namespace A038881.P5685096848170282056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003056 (A035193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P5685096848170282056

/-! ## A038881.P1238004206011458263

`p?[(n+1)*A002264(A035193(n+1)+2)]`
-/

namespace A038881.P1238004206011458263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002264 (A035193 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P1238004206011458263

/-! ## A038881.P9225563742904779131

`p?[A106617(A035193(2*n+1))*(2*n+1)]`
-/

namespace A038881.P9225563742904779131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A035193 (2 * n + 1)).toNat * (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P9225563742904779131

/-! ## A038881.P12428550268824361608

`p?[(n+1)%(A035193(A019554(n+1))+n+1)]`
-/

namespace A038881.P12428550268824361608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A035193 (A019554 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038881.P12428550268824361608

/-!
# A038882: Primes that are not in A038881.

The programs for A038882, there is no canonical definition to state claims against.
-/

/-! ## A038882.P4357578574228884743

`∪[A007352(n+1), A296936(n+1)]`
-/

namespace A038882.P4357578574228884743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038882.P4357578574228884743

/-! ## A038882.P10000638173707028216

`∪[A019339(n+1), A296936(n+1)]`
-/

namespace A038882.P10000638173707028216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038882.P10000638173707028216

/-! ## A038882.P10181633587948661127

`∪[A019421(n+1), A296936(n+1)]`
-/

namespace A038882.P10181633587948661127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038882.P10181633587948661127

/-! ## A038882.P12149839865202727322

`∪[A038537(n+1), A296936(n+1)]`
-/

namespace A038882.P12149839865202727322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038882.P12149839865202727322

/-! ## A038882.P8170848447605723834

`p?[comp[A035255(n+1)]]`
-/

namespace A038882.P8170848447605723834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038882.P8170848447605723834

/-! ## A038882.P17809437225874844652

`p?[comp[A038881(n+1)]]`
-/

namespace A038882.P17809437225874844652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038882.P17809437225874844652

/-! ## A038882.P11740779131337683075

`p?[n*a(A035193(n))]` with `a(0)=1, a(1)=4`
-/

namespace A038882.P11740779131337683075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  n * f1 (A035193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038882.P11740779131337683075

/-! ## A038882.P11549339011075052100

`p?[(A035193(n+1)+1)*A004442(n)]`
-/

namespace A038882.P11549339011075052100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035193 (n + 1) + 1) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038882.P11549339011075052100

/-! ## A038882.P648566020501438044

`p?[(n+1)*A035193(A035193(n+1)+1)]`
-/

namespace A038882.P648566020501438044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035193 (A035193 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038882.P648566020501438044

/-! ## A038882.P6756728020564347905

`p?[A106617(A035193(2*n+1))+A005408(n)]`
-/

namespace A038882.P6756728020564347905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A035193 (2 * n + 1)).toNat + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038882.P6756728020564347905

/-! ## A038882.P14414389818254168216

`record[A061397((n+1)*(A035193(n+1)+1))]`
-/

namespace A038882.P14414389818254168216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 ((n + 1 : ℤ) * (A035193 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038882.P14414389818254168216

/-!
# A038883: Odd primes p such that 13 is a square mod p.

The programs for A038883, there is no canonical definition to state claims against.
-/

/-! ## A038883.P9974807711057413619

`∪[A022547(n+1), A296937(n+1)]`
-/

namespace A038883.P9974807711057413619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P9974807711057413619

/-! ## A038883.P7740753760489296694

`∪[A106884(n+1), A296937(n+1)]`
-/

namespace A038883.P7740753760489296694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P7740753760489296694

/-! ## A038883.P13868267005266328760

`∪[A107159(n+1), A296937(n+1)]`
-/

namespace A038883.P13868267005266328760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P13868267005266328760

/-! ## A038883.P12852658183479517791

`∪[A138375(n+1), A296937(n+1)]`
-/

namespace A038883.P12852658183479517791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P12852658183479517791

/-! ## A038883.P11642350502558156666

`∪[A201118(n+1), A296937(n+1)]`
-/

namespace A038883.P11642350502558156666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P11642350502558156666

/-! ## A038883.P4203790242212163404

`p?[A035256(n+1)]`
-/

namespace A038883.P4203790242212163404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038883.P4203790242212163404

/-! ## A038883.P482808564385398625

`p?[record[A035256(A349315(n))]]`
-/

namespace A038883.P482808564385398625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038883.P482808564385398625

/-! ## A038883.P13239617064530869995

`record[A006530(A035256(n+2))]`
-/

namespace A038883.P13239617064530869995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035256 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038883.P13239617064530869995

/-! ## A038883.P1319527507999271846

`filter[A035256(n+1), A010051(#)]`
-/

namespace A038883.P1319527507999271846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038883.P1319527507999271846

/-! ## A038883.P4968725924376006599

`filter[A035256(n+2), A380467(#)]`
-/

namespace A038883.P4968725924376006599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A038883.P4968725924376006599

/-! ## A038883.P6212613765643569773

`∩[A000040(n+1), A035256(n+1)]`
-/

namespace A038883.P6212613765643569773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P6212613765643569773

/-! ## A038883.P395340272073894351

`∩[A004139(n+1), A035256(n+1)]`
-/

namespace A038883.P395340272073894351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P395340272073894351

/-! ## A038883.P9401387205769036705

`∩[A035256(n+1), A045319(n+1)]`
-/

namespace A038883.P9401387205769036705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P9401387205769036705

/-! ## A038883.P7880404128188443287

`∩[A035256(n+1), A065091(n+1)]`
-/

namespace A038883.P7880404128188443287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P7880404128188443287

/-! ## A038883.P10427163959664652495

`∩[A035256(n+1), A085118(n+1)]`
-/

namespace A038883.P10427163959664652495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P10427163959664652495

/-! ## A038883.P9388276715226819203

`∩[A035256(n+1), A116974(n+1)]`
-/

namespace A038883.P9388276715226819203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P9388276715226819203

/-! ## A038883.P3416581099069409610

`∩[A035256(n+1), A182986(n+1)]`
-/

namespace A038883.P3416581099069409610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038883.P3416581099069409610

/-! ## A038883.P11046398290912592640

`p?[A042965(n+1)+A057354(n)+3]`
-/

namespace A038883.P11046398290912592640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A057354 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038883.P11046398290912592640

/-! ## A038883.P9472831098742061889

`p?[A288156(n)+comp[4*(n+1)]]`
-/

namespace A038883.P9472831098742061889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038883.P9472831098742061889

/-! ## A038883.P17812906283042620625

`filter[A035256(n+2), A080339(#)]`
-/

namespace A038883.P17812906283042620625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038883.P17812906283042620625

/-!
# A038884: Primes p such that 13 is not a square mod p.

The programs for A038884, there is no canonical definition to state claims against.
-/

/-! ## A038884.P1506372322852317055

`∩[A120330(n+1), A336370(n+1)]`
-/

namespace A038884.P1506372322852317055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038884.P1506372322852317055

/-! ## A038884.P570390670278421319

`eq[A107499(n), A237053(n)]`
-/

namespace A038884.P570390670278421319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P570390670278421319

/-! ## A038884.P13211739773821388710

`eq[A107501(n), A237053(n)]`
-/

namespace A038884.P13211739773821388710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P13211739773821388710

/-! ## A038884.P17227095177201686909

`eq[A072480(n)², A107501(n)]`
-/

namespace A038884.P17227095177201686909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P17227095177201686909

/-! ## A038884.P17192248129275203003

`∩[A120330(n+1), A229973(n+1)]`
-/

namespace A038884.P17192248129275203003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038884.P17192248129275203003

/-! ## A038884.P15339661204683984551

`∩[A113763(n+1), A120330(n+1)]`
-/

namespace A038884.P15339661204683984551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038884.P15339661204683984551

/-! ## A038884.P17406200257573267107

`p?[comp[A038883(n+1)]]`
-/

namespace A038884.P17406200257573267107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038884.P17406200257573267107

/-! ## A038884.P4790252344230095370

`∩[A120330(n+1), A183856(n+1)]`
-/

namespace A038884.P4790252344230095370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038884.P4790252344230095370

/-! ## A038884.P13729134033103320777

`p?[and(n, A011583(n))]`
-/

namespace A038884.P13729134033103320777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A011583 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038884.P13729134033103320777

/-! ## A038884.P15389188899547645976

`p?[or(n+1, -A035195(n+1))]`
-/

namespace A038884.P15389188899547645976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-A035195 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038884.P15389188899547645976

/-! ## A038884.P5402606110022536452

`eq[A107499(n), A295520(n)]`
-/

namespace A038884.P5402606110022536452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P5402606110022536452

/-! ## A038884.P16729441684729105111

`eq[n*A007920(n), A107499(n)]`
-/

namespace A038884.P16729441684729105111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P16729441684729105111

/-! ## A038884.P6466583520956678234

`eq[(A011583(n)+2)², A210442(n)]`
-/

namespace A038884.P6466583520956678234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011583 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P6466583520956678234

/-! ## A038884.P7464478224901289241

`eq[(A011583(n)+2)², A211110(n)]`
-/

namespace A038884.P7464478224901289241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011583 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P7464478224901289241

/-! ## A038884.P5352363839870073401

`eq[A011583(n)+2, A284289(n)²]`
-/

namespace A038884.P5352363839870073401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P5352363839870073401

/-! ## A038884.P2236839800512484266

`∩[A120330(n+1), A183298(n+1)]`
-/

namespace A038884.P2236839800512484266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038884.P2236839800512484266

/-! ## A038884.P4289413346423479705

`eq[A011583(n)+2, A053989(n+1)²]`
-/

namespace A038884.P4289413346423479705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P4289413346423479705

/-! ## A038884.P8444222289453561819

`eq[A011583(n)+2, A231820(n+1)²]`
-/

namespace A038884.P8444222289453561819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038884.P8444222289453561819

/-! ## A038884.P2748880885358075397

`p?[gcd(A035195(n+1), A080305(n+1))]`
-/

namespace A038884.P2748880885358075397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035195 (n + 1)) (A080305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038884.P2748880885358075397

/-! ## A038884.P10986924616252908562

`p?[(n+1)*A035195(A035195(n+1)+1)]`
-/

namespace A038884.P10986924616252908562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035195 (A035195 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038884.P10986924616252908562

/-!
# A038885: 14 is a square mod p.

The programs for A038885, the canonical program `A038885.P1081896548675431260` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038885 has offset 1).

The definition of A038885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038885.P1081896548675431260

`∪[A141190(n+1), A141191(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038885

/-- `∪[A141190(n+1), A141191(n+1)]` -/
def P1081896548675431260.Spec : Prop :=
  ∀ n, (P1081896548675431260.a n : ℤ) = A038885 (n + 1)

theorem P1081896548675431260.correct : P1081896548675431260.Spec := by
  intro n
  simp only [A038885, Nat.add_sub_cancel]

end A038885

/-! ## A038885.P8544734835118163295

`p?[A035257(n+1)]`
-/

namespace A038885.P8544734835118163295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038885.P8544734835118163295

namespace A038885

/-- `p?[A035257(n+1)]` -/
def P8544734835118163295.Spec : Prop :=
  ∀ n, P8544734835118163295.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P7538872360961039822

`p?[record[A035257(A349315(n))]]`
-/

namespace A038885.P7538872360961039822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038885.P7538872360961039822

namespace A038885

/-- `p?[record[A035257(A349315(n))]]` -/
def P7538872360961039822.Spec : Prop :=
  ∀ n, P7538872360961039822.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P17562644936212816051

`record[A006530(A035257(n+2))]`
-/

namespace A038885.P17562644936212816051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035257 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038885.P17562644936212816051

namespace A038885

/-- `record[A006530(A035257(n+2))]` -/
def P17562644936212816051.Spec : Prop :=
  ∀ n, P17562644936212816051.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P5203266768968711864

`record[A020639(A035257(n+3))]`
-/

namespace A038885.P5203266768968711864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035257 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038885.P5203266768968711864

namespace A038885

/-- `record[A020639(A035257(n+3))]` -/
def P5203266768968711864.Spec : Prop :=
  ∀ n, P5203266768968711864.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P17664362462149615530

`filter[A035257(n+1), A010051(#)]`
-/

namespace A038885.P17664362462149615530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038885.P17664362462149615530

namespace A038885

/-- `filter[A035257(n+1), A010051(#)]` -/
def P17664362462149615530.Spec : Prop :=
  ∀ n, P17664362462149615530.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P17282187693828686664

`∩[A000040(n+1), A035257(n+1)]`
-/

namespace A038885.P17282187693828686664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P17282187693828686664

namespace A038885

/-- `∩[A000040(n+1), A035257(n+1)]` -/
def P17282187693828686664.Spec : Prop :=
  ∀ n, (P17282187693828686664.a n : ℤ) = A038885 (n + 1)

end A038885

/-! ## A038885.P3018103994837513923

`∩[A035257(n+1), A045344(n+1)]`
-/

namespace A038885.P3018103994837513923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P3018103994837513923

namespace A038885

/-- `∩[A035257(n+1), A045344(n+1)]` -/
def P3018103994837513923.Spec : Prop :=
  ∀ n, (P3018103994837513923.a n : ℤ) = A038885 (n + 1)

end A038885

/-! ## A038885.P16998115162560138612

`∩[A035257(n+1), A116974(n+1)]`
-/

namespace A038885.P16998115162560138612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P16998115162560138612

namespace A038885

/-- `∩[A035257(n+1), A116974(n+1)]` -/
def P16998115162560138612.Spec : Prop :=
  ∀ n, (P16998115162560138612.a n : ℤ) = A038885 (n + 1)

end A038885

/-! ## A038885.P3510818841966612081

`∩[A035257(n+1), A182986(n+1)]`
-/

namespace A038885.P3510818841966612081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P3510818841966612081

namespace A038885

/-- `∩[A035257(n+1), A182986(n+1)]` -/
def P3510818841966612081.Spec : Prop :=
  ∀ n, (P3510818841966612081.a n : ℤ) = A038885 (n + 1)

end A038885

/-! ## A038885.P2554912669001034477

`filter[A035257(n+2), A080339(#)]`
-/

namespace A038885.P2554912669001034477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038885.P2554912669001034477

namespace A038885

/-- `filter[A035257(n+2), A080339(#)]` -/
def P2554912669001034477.Spec : Prop :=
  ∀ n, P2554912669001034477.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P8229869046315719403

`p?[(n+2)*A004525(A035196(n+2))]`
-/

namespace A038885.P8229869046315719403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A004525 (A035196 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038885.P8229869046315719403

namespace A038885

/-- `p?[(n+2)*A004525(A035196(n+2))]` -/
def P8229869046315719403.Spec : Prop :=
  ∀ n, P8229869046315719403.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P7103246298327152505

`record[A006530(n+2)*A004525(A035196(n+2))]`
-/

namespace A038885.P7103246298327152505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A004525 (A035196 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038885.P7103246298327152505

namespace A038885

/-- `record[A006530(n+2)*A004525(A035196(n+2))]` -/
def P7103246298327152505.Spec : Prop :=
  ∀ n, P7103246298327152505.a n = A038885 (n + 1)

end A038885

/-! ## A038885.P10087290021676430126

`∩[A035257(n+1), A240960(n+1)]`
-/

namespace A038885.P10087290021676430126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038885.P10087290021676430126

namespace A038885

/-- `∩[A035257(n+1), A240960(n+1)]` -/
def P10087290021676430126.Spec : Prop :=
  ∀ n, (P10087290021676430126.a n : ℤ) = A038885 (n + 1)

end A038885

/-!
# A038886: Primes p such that 14 is not a square mod p.

The programs for A038886, there is no canonical definition to state claims against.
-/

/-! ## A038886.P12887574194438473672

`p?[(1-A035196(n+1))*A004442(n)]`
-/

namespace A038886.P12887574194438473672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035196 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038886.P12887574194438473672

/-! ## A038886.P4472443417790831763

`p?[gcd(A035196(n+1), A089026(n+1))]`
-/

namespace A038886.P4472443417790831763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035196 (n + 1)) (A089026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038886.P4472443417790831763

/-! ## A038886.P5214169073010052713

`eq[A035196(n+1), A048050(n+1)]+1`
-/

namespace A038886.P5214169073010052713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038886.P5214169073010052713

/-! ## A038886.P13948430947749735576

`p?[(n+1)*A035196(2*A035196(n+1)+1)]`
-/

namespace A038886.P13948430947749735576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035196 (2 * A035196 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038886.P13948430947749735576

/-! ## A038886.P15107730027272193831

`p?[A004442(A035196(n+1))*A004442(n)]`
-/

namespace A038886.P15107730027272193831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A035196 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038886.P15107730027272193831

/-! ## A038886.P17967517276109675840

`A061026(eq[A035196(n+1), A048050(n+1)])`
-/

namespace A038886.P17967517276109675840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038886.P17967517276109675840

/-! ## A038886.P11090513068099865966

`eq[A035196(A008706(n)), A072480(n)]`
-/

namespace A038886.P11090513068099865966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035196 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038886.P11090513068099865966

/-!
# A038887: 15 is a square mod p.

The programs for A038887, there is no canonical definition to state claims against.
-/

/-! ## A038887.P7348276210772917301

`∪[A040130(n+1), A097956(n+1)]`
-/

namespace A038887.P7348276210772917301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038887.P7348276210772917301

/-! ## A038887.P7378588401514395629

`∪[A097956(n+1), A208361(n+1)]`
-/

namespace A038887.P7378588401514395629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038887.P7378588401514395629

/-! ## A038887.P17685245365712268461

`p?[n-gcd(2, n*A008651(n))]`
-/

namespace A038887.P17685245365712268461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.gcd 2 ((n : ℤ) * A008651 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038887.P17685245365712268461

/-! ## A038887.P1868517240998489397

`p?[or(n, A100050(n)*A289741(n))]`
-/

namespace A038887.P1868517240998489397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A100050 n * A289741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038887.P1868517240998489397

/-! ## A038887.P11914264139976940658

`p?[(n+1)*A192006(A035197(n+1))]`
-/

namespace A038887.P11914264139976940658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192006 (A035197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038887.P11914264139976940658

/-! ## A038887.P5488009667143792705

`eq[2, A000005(n+1)*A192006(A035197(n+1))]+1`
-/

namespace A038887.P5488009667143792705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A192006 (A035197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038887.P5488009667143792705

/-! ## A038887.P4637939533604947907

`p?[abs(A100050(2*n)*A289741(n)-n)]`
-/

namespace A038887.P4637939533604947907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100050 (2 * n) * A289741 n - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038887.P4637939533604947907

/-!
# A038888: Primes p such that 15 is not a square mod p.

The programs for A038888, the canonical program `A038888.P15907326492884803218` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038888 has offset 1).

The definition of A038888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038888.P15907326492884803218

`p?[and(n+10, A010892(A076314(n)))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038888

/-- `p?[and(n+10, A010892(A076314(n)))]` -/
def P15907326492884803218.Spec : Prop :=
  ∀ n, P15907326492884803218.a n = A038888 (n + 1)

theorem P15907326492884803218.correct : P15907326492884803218.Spec := by
  intro n
  simp only [A038888, Nat.add_sub_cancel]

end A038888

/-! ## A038888.P15855168688578038332

`p?[(n+1)*(1-A035197(n+1))]`
-/

namespace A038888.P15855168688578038332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035197 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P15855168688578038332

namespace A038888

/-- `p?[(n+1)*(1-A035197(n+1))]` -/
def P15855168688578038332.Spec : Prop :=
  ∀ n, P15855168688578038332.a n = A038888 (n + 1)

end A038888

/-! ## A038888.P4391751919961866742

`eq[A309070(n), A323161(n+1)]`
-/

namespace A038888.P4391751919961866742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038888.P4391751919961866742

namespace A038888

/-- `eq[A309070(n), A323161(n+1)]` -/
def P4391751919961866742.Spec : Prop :=
  ∀ n, (P4391751919961866742.a n : ℤ) = A038888 (n + 1)

end A038888

/-! ## A038888.P4361975770943912940

`p?[-(A100050(n)*A289741(n))]`
-/

namespace A038888.P4361975770943912940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A100050 n * A289741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P4361975770943912940

namespace A038888

/-- `p?[-(A100050(n)*A289741(n))]` -/
def P4361975770943912940.Spec : Prop :=
  ∀ n, P4361975770943912940.a n = A038888 (n + 1)

end A038888

/-! ## A038888.P8985747463806816096

`p?[eq[A091338(n+6), A100047(n)]]`
-/

namespace A038888.P8985747463806816096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (n + 6)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038888.P8985747463806816096

namespace A038888

/-- `p?[eq[A091338(n+6), A100047(n)]]` -/
def P8985747463806816096.Spec : Prop :=
  ∀ n, (P8985747463806816096.a n : ℤ) = A038888 (n + 1)

end A038888

/-! ## A038888.P6327759128847572037

`p?[A000007(n)-A100050(n)*A289741(n)]`
-/

namespace A038888.P6327759128847572037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A100050 n * A289741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P6327759128847572037

namespace A038888

/-- `p?[A000007(n)-A100050(n)*A289741(n)]` -/
def P6327759128847572037.Spec : Prop :=
  ∀ n, P6327759128847572037.a n = A038888 (n + 1)

end A038888

/-! ## A038888.P11403070150322428863

`p?[A059841(n)-A100050(n)*A289741(n)]`
-/

namespace A038888.P11403070150322428863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A100050 n * A289741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P11403070150322428863

namespace A038888

/-- `p?[A059841(n)-A100050(n)*A289741(n)]` -/
def P11403070150322428863.Spec : Prop :=
  ∀ n, P11403070150322428863.a n = A038888 (n + 1)

end A038888

/-! ## A038888.P14924122942736923853

`p?[(n-2)^gcd(2, n*A008651(n))]`
-/

namespace A038888.P14924122942736923853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ Int.gcd 2 ((n : ℤ) * A008651 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P14924122942736923853

namespace A038888

/-- `p?[(n-2)^gcd(2, n*A008651(n))]` -/
def P14924122942736923853.Spec : Prop :=
  ∀ n, P14924122942736923853.a n = A038888 (n + 1)

end A038888

/-!
# A038889: Primes p such that 17 is a square mod p.

The programs for A038889, there is no canonical definition to state claims against.
-/

/-! ## A038889.P16052070488132117173

`∪[A033213(n+1), A296938(n+1)]`
-/

namespace A038889.P16052070488132117173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P16052070488132117173

/-! ## A038889.P5904852128646963834

`∪[A139947(n+1), A296938(n+1)]`
-/

namespace A038889.P5904852128646963834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P5904852128646963834

/-! ## A038889.P7306978329288296529

`p?[A035258(n+1)]`
-/

namespace A038889.P7306978329288296529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P7306978329288296529

/-! ## A038889.P11048407590455565342

`filter[A035258(n+1), A010051(#)]`
-/

namespace A038889.P11048407590455565342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038889.P11048407590455565342

/-! ## A038889.P16537546321834406235

`∩[A000040(n+1), A035258(n+1)]`
-/

namespace A038889.P16537546321834406235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P16537546321834406235

/-! ## A038889.P17130925356230314414

`∩[A035258(n+1), A045319(n+1)]`
-/

namespace A038889.P17130925356230314414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P17130925356230314414

/-! ## A038889.P10320987932010644466

`∩[A035258(n+1), A045344(n+1)]`
-/

namespace A038889.P10320987932010644466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P10320987932010644466

/-! ## A038889.P7583404651529894257

`∩[A035258(n+1), A116974(n+1)]`
-/

namespace A038889.P7583404651529894257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P7583404651529894257

/-! ## A038889.P12523527461695637822

`∩[A035258(n+1), A182140(n+1)]`
-/

namespace A038889.P12523527461695637822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P12523527461695637822

/-! ## A038889.P14843793362330149614

`∩[A035258(n+1), A182986(n+1)]`
-/

namespace A038889.P14843793362330149614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P14843793362330149614

/-! ## A038889.P17943682038925386351

`filter[A035258(n+2), A080339(#)]`
-/

namespace A038889.P17943682038925386351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038889.P17943682038925386351

/-! ## A038889.P8197284229946194858

`p?[(n+1)*A004526(A035199(n+1)+1)]`
-/

namespace A038889.P8197284229946194858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A035199 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P8197284229946194858

/-! ## A038889.P14006388096573427231

`p?[(n+1)*A073068(A035199(n+1)+1)]`
-/

namespace A038889.P14006388096573427231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073068 (A035199 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P14006388096573427231

/-! ## A038889.P5188720211101610319

`p?[(n+1)*A002264(A035199(n+1)+2)]`
-/

namespace A038889.P5188720211101610319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002264 (A035199 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P5188720211101610319

/-! ## A038889.P9349652838052212868

`p?[A249811(n+1)*A261216(A035199(n+1))]`
-/

namespace A038889.P9349652838052212868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (n + 1) * A261216 (A035199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P9349652838052212868

/-! ## A038889.P14451395024055922703

`∩[A035258(n+1), A240960(n+1)]`
-/

namespace A038889.P14451395024055922703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038889.P14451395024055922703

/-! ## A038889.P6209954181296989955

`p?[A000026(n+1)*A000045(A035199(n+1))]`
-/

namespace A038889.P6209954181296989955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) * A000045 (A035199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038889.P6209954181296989955

/-!
# A038890: Primes p such that 17 is not a square mod p.

The programs for A038890, the canonical program `A038890.P15470175569637615505` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038890 has offset 1).

The definition of A038890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038890.P9238222858653798200

`p?[comp[A038889(n+1)]]`
-/

namespace A038890.P9238222858653798200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038890.P9238222858653798200

namespace A038890

/-- `p?[comp[A038889(n+1)]]` -/
def P9238222858653798200.Spec : Prop :=
  ∀ n, (P9238222858653798200.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P15470175569637615505

`p?[or(n+1, -A035199(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038890

/-- `p?[or(n+1, -A035199(n+1))]` -/
def P15470175569637615505.Spec : Prop :=
  ∀ n, P15470175569637615505.a n = A038890 (n + 1)

theorem P15470175569637615505.correct : P15470175569637615505.Spec := by
  intro n
  simp only [A038890, Nat.add_sub_cancel]

end A038890

/-! ## A038890.P12483249765507746620

`eq[A011584(n), A260148(n)]`
-/

namespace A038890.P12483249765507746620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P12483249765507746620

namespace A038890

/-- `eq[A011584(n), A260148(n)]` -/
def P12483249765507746620.Spec : Prop :=
  ∀ n, (P12483249765507746620.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P1762674655688855764

`eq[(A011584(n)+2)², A211110(n)]`
-/

namespace A038890.P1762674655688855764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011584 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P1762674655688855764

namespace A038890

/-- `eq[(A011584(n)+2)², A211110(n)]` -/
def P1762674655688855764.Spec : Prop :=
  ∀ n, (P1762674655688855764.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P4816779407687567869

`eq[A011584(n)+2, A284289(n)²]`
-/

namespace A038890.P4816779407687567869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P4816779407687567869

namespace A038890

/-- `eq[A011584(n)+2, A284289(n)²]` -/
def P4816779407687567869.Spec : Prop :=
  ∀ n, (P4816779407687567869.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P5078376952135140422

`eq[A011584(n)+2, A053989(n+1)²]`
-/

namespace A038890.P5078376952135140422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P5078376952135140422

namespace A038890

/-- `eq[A011584(n)+2, A053989(n+1)²]` -/
def P5078376952135140422.Spec : Prop :=
  ∀ n, (P5078376952135140422.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P13428731617737790641

`eq[A011584(n)+2, A231734(n+1)²]`
-/

namespace A038890.P13428731617737790641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P13428731617737790641

namespace A038890

/-- `eq[A011584(n)+2, A231734(n+1)²]` -/
def P13428731617737790641.Spec : Prop :=
  ∀ n, (P13428731617737790641.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P10947992165998165383

`eq[A011584(n)+2, A231820(n+1)²]`
-/

namespace A038890.P10947992165998165383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P10947992165998165383

namespace A038890

/-- `eq[A011584(n)+2, A231820(n+1)²]` -/
def P10947992165998165383.Spec : Prop :=
  ∀ n, (P10947992165998165383.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P10260680378985521624

`p?[(1-A035199(n+1))*A000026(n+1)]`
-/

namespace A038890.P10260680378985521624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035199 (n + 1)) * A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P10260680378985521624

namespace A038890

/-- `p?[(1-A035199(n+1))*A000026(n+1)]` -/
def P10260680378985521624.Spec : Prop :=
  ∀ n, P10260680378985521624.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P12588525114038456620

`p?[(1-A035199(n+1))*A019554(n+1)]`
-/

namespace A038890.P12588525114038456620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035199 (n + 1)) * A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P12588525114038456620

namespace A038890

/-- `p?[(1-A035199(n+1))*A019554(n+1)]` -/
def P12588525114038456620.Spec : Prop :=
  ∀ n, P12588525114038456620.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P11393011179049275248

`p?[A000026(n+1)*A003982(A035199(n+1))]`
-/

namespace A038890.P11393011179049275248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) * A003982 (A035199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P11393011179049275248

namespace A038890

/-- `p?[A000026(n+1)*A003982(A035199(n+1))]` -/
def P11393011179049275248.Spec : Prop :=
  ∀ n, P11393011179049275248.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P200643576234368039

`p?[A019554(n+1)*A110331(A035199(n+1))]`
-/

namespace A038890.P200643576234368039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A110331 (A035199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P200643576234368039

namespace A038890

/-- `p?[A019554(n+1)*A110331(A035199(n+1))]` -/
def P200643576234368039.Spec : Prop :=
  ∀ n, P200643576234368039.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P3531301528344393920

`eq[A000040(A035199(n+2)+1), A046523(n+2)]+2`
-/

namespace A038890.P3531301528344393920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035199 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A038890.P3531301528344393920

namespace A038890

/-- `eq[A000040(A035199(n+2)+1), A046523(n+2)]+2` -/
def P3531301528344393920.Spec : Prop :=
  ∀ n, (P3531301528344393920.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P12145073335834094480

`p?[(1-A035199(n+1))*A249811(n+1)]`
-/

namespace A038890.P12145073335834094480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035199 (n + 1)) * A249811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P12145073335834094480

namespace A038890

/-- `p?[(1-A035199(n+1))*A249811(n+1)]` -/
def P12145073335834094480.Spec : Prop :=
  ∀ n, P12145073335834094480.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P16589466181094741443

`p?[A249811(n+1)*A312531(A035199(n+1))]`
-/

namespace A038890.P16589466181094741443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (n + 1) * A312531 (A035199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038890.P16589466181094741443

namespace A038890

/-- `p?[A249811(n+1)*A312531(A035199(n+1))]` -/
def P16589466181094741443.Spec : Prop :=
  ∀ n, P16589466181094741443.a n = A038890 (n + 1)

end A038890

/-! ## A038890.P16764559921830366558

`eq[A011584(n)+2, A210442(n)²]`
-/

namespace A038890.P16764559921830366558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P16764559921830366558

namespace A038890

/-- `eq[A011584(n)+2, A210442(n)²]` -/
def P16764559921830366558.Spec : Prop :=
  ∀ n, (P16764559921830366558.a n : ℤ) = A038890 (n + 1)

end A038890

/-! ## A038890.P3798086829107372758

`eq[A011584(n)+2, A117545(n+1)²]`
-/

namespace A038890.P3798086829107372758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117545 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038890.P3798086829107372758

namespace A038890

/-- `eq[A011584(n)+2, A117545(n+1)²]` -/
def P3798086829107372758.Spec : Prop :=
  ∀ n, (P3798086829107372758.a n : ℤ) = A038890 (n + 1)

end A038890

/-!
# A038891: Odd primes p such that 19 is a square mod p.

The programs for A038891, there is no canonical definition to state claims against.
-/

/-! ## A038891.P5114691083637493363

`∪[A087515(n+1), A297175(n+1)]`
-/

namespace A038891.P5114691083637493363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038891.P5114691083637493363

/-! ## A038891.P4003845240315188733

`∪[A107165(n+1), A297175(n+1)]`
-/

namespace A038891.P4003845240315188733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038891.P4003845240315188733

/-! ## A038891.P6568686455265717121

`∪[A139981(n+1), A297175(n+1)]`
-/

namespace A038891.P6568686455265717121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038891.P6568686455265717121

/-! ## A038891.P9551667786930860490

`∪[A000040(A022112(3*n+2)), A297175(n+1)]`
-/

namespace A038891.P9551667786930860490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022112 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038891.P9551667786930860490

/-! ## A038891.P6489264137356051618

`∪[A297175(n+1), A334965(A000108(n+3))]`
-/

namespace A038891.P6489264137356051618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (A000108 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038891.P6489264137356051618

/-!
# A038892: Primes p such that 19 is not a square mod p.

The programs for A038892, there is no canonical definition to state claims against.
-/

/-! ## A038892.P7005485340132822043

`A297176(n%a(n-1))` with `a(0)=2`
-/

namespace A038892.P7005485340132822043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A297176 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A038892.P7005485340132822043

/-! ## A038892.P10609846000969370251

`A297176(n-gcd(3, a(n-1))+1)` with `a(0)=2`
-/

namespace A038892.P10609846000969370251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A297176 ((n : ℤ) - (Int.gcd 3 (a (n - 1)) : ℤ) + 1).toNat

end

end A038892.P10609846000969370251

/-! ## A038892.P9189812832856749155

`∪[A007352(n+1), A297176(n+1)]`
-/

namespace A038892.P9189812832856749155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038892.P9189812832856749155

/-! ## A038892.P17927099466857292236

`∪[A019346(n+1), A297176(n+1)]`
-/

namespace A038892.P17927099466857292236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038892.P17927099466857292236

/-! ## A038892.P13056836001472119938

`A001221(a(n-1))*A297176(A028310(n))` with `a(0)=2`
-/

namespace A038892.P13056836001472119938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A297176 (A028310 n).toNat

end

end A038892.P13056836001472119938

/-! ## A038892.P4772451552055435677

`A001222(a(n-1))*A297176(A028310(n))` with `a(0)=2`
-/

namespace A038892.P4772451552055435677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A297176 (A028310 n).toNat

end

end A038892.P4772451552055435677

/-! ## A038892.P1050734258766933624

`record[A297176(A154958(n))%A052905(n+1)]`
-/

namespace A038892.P1050734258766933624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297176 (A154958 n).toNat) (A052905 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038892.P1050734258766933624

/-! ## A038892.P16568140200412814627

`p?[comp[A038891(n+1)]]`
-/

namespace A038892.P16568140200412814627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038892.P16568140200412814627

/-! ## A038892.P14633627913980472482

`p?[A000038(n)-A009001(n)*A011585(n)]`
-/

namespace A038892.P14633627913980472482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A009001 n * A011585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038892.P14633627913980472482

/-! ## A038892.P16344079716734088737

`A297176(n-A038712(a(n-1)+a(n-1)+1)+1)` with `a(0)=2`
-/

namespace A038892.P16344079716734088737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A297176 ((n : ℤ) - A038712 (a (n - 1) + a (n - 1) + 1).toNat + 1).toNat

end

end A038892.P16344079716734088737

/-!
# A038893: Odd primes p such that 21 is a square mod p.

The programs for A038893, the canonical program `A038893.P16828637796502352315` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038893 has offset 1).

The definition of A038893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038893.P16828637796502352315

`∪[A139492(n+1), A141160(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038893

/-- `∪[A139492(n+1), A141160(n+1)]` -/
def P16828637796502352315.Spec : Prop :=
  ∀ n, (P16828637796502352315.a n : ℤ) = A038893 (n + 1)

theorem P16828637796502352315.correct : P16828637796502352315.Spec := by
  intro n
  simp only [A038893, Nat.add_sub_cancel]

end A038893

/-! ## A038893.P4859005611334904130

`p?[A391370(n+1)]`
-/

namespace A038893.P4859005611334904130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038893.P4859005611334904130

namespace A038893

/-- `p?[A391370(n+1)]` -/
def P4859005611334904130.Spec : Prop :=
  ∀ n, P4859005611334904130.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P5606082087270290141

`∩[A000040(n+1), A391370(n+1)]`
-/

namespace A038893.P5606082087270290141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P5606082087270290141

namespace A038893

/-- `∩[A000040(n+1), A391370(n+1)]` -/
def P5606082087270290141.Spec : Prop :=
  ∀ n, (P5606082087270290141.a n : ℤ) = A038893 (n + 1)

end A038893

/-! ## A038893.P1036966902559963775

`∩[A053813(n+1), A391370(n+1)]`
-/

namespace A038893.P1036966902559963775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P1036966902559963775

namespace A038893

/-- `∩[A053813(n+1), A391370(n+1)]` -/
def P1036966902559963775.Spec : Prop :=
  ∀ n, (P1036966902559963775.a n : ℤ) = A038893 (n + 1)

end A038893

/-! ## A038893.P10750353002530023021

`∩[A391370(n+1), A260442(n)]`
-/

namespace A038893.P10750353002530023021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P10750353002530023021

namespace A038893

/-- `∩[A391370(n+1), A260442(n)]` -/
def P10750353002530023021.Spec : Prop :=
  ∀ n, (P10750353002530023021.a n : ℤ) = A038893 (n + 1)

end A038893

/-! ## A038893.P7609410654008937035

`filter[A391370(n+1), A001222(#)]`
-/

namespace A038893.P7609410654008937035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A038893.P7609410654008937035

namespace A038893

/-- `filter[A391370(n+1), A001222(#)]` -/
def P7609410654008937035.Spec : Prop :=
  ∀ n, P7609410654008937035.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P9776657168315238957

`filter[A391370(n+1), A008966(#)]`
-/

namespace A038893.P9776657168315238957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A038893.P9776657168315238957

namespace A038893

/-- `filter[A391370(n+1), A008966(#)]` -/
def P9776657168315238957.Spec : Prop :=
  ∀ n, P9776657168315238957.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P10423075959952430844

`filter[A391370(n+1), A010051(#)]`
-/

namespace A038893.P10423075959952430844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038893.P10423075959952430844

namespace A038893

/-- `filter[A391370(n+1), A010051(#)]` -/
def P10423075959952430844.Spec : Prop :=
  ∀ n, P10423075959952430844.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P580176443137224322

`filter[A391370(n+1), A066829(#)]`
-/

namespace A038893.P580176443137224322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A038893.P580176443137224322

namespace A038893

/-- `filter[A391370(n+1), A066829(#)]` -/
def P580176443137224322.Spec : Prop :=
  ∀ n, P580176443137224322.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P4912114044187868554

`∩[A005117(n+1), A391370(n+1)]`
-/

namespace A038893.P4912114044187868554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P4912114044187868554

namespace A038893

/-- `∩[A005117(n+1), A391370(n+1)]` -/
def P4912114044187868554.Spec : Prop :=
  ∀ n, (P4912114044187868554.a n : ℤ) = A038893 (n + 1)

end A038893

/-! ## A038893.P976572179151177569

`filter[A391370(n+1), A257531(#)]`
-/

namespace A038893.P976572179151177569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A038893.P976572179151177569

namespace A038893

/-- `filter[A391370(n+1), A257531(#)]` -/
def P976572179151177569.Spec : Prop :=
  ∀ n, P976572179151177569.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P11108925590504305198

`filter[A391370(n+1), A049240(#)]`
-/

namespace A038893.P11108925590504305198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A038893.P11108925590504305198

namespace A038893

/-- `filter[A391370(n+1), A049240(#)]` -/
def P11108925590504305198.Spec : Prop :=
  ∀ n, P11108925590504305198.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P17431319448143003671

`filter[A391370(n+1), A099104(#)]`
-/

namespace A038893.P17431319448143003671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A038893.P17431319448143003671

namespace A038893

/-- `filter[A391370(n+1), A099104(#)]` -/
def P17431319448143003671.Spec : Prop :=
  ∀ n, P17431319448143003671.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P3715168249512319480

`filter[A391370(n+1), A174897(#)]`
-/

namespace A038893.P3715168249512319480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A038893.P3715168249512319480

namespace A038893

/-- `filter[A391370(n+1), A174897(#)]` -/
def P3715168249512319480.Spec : Prop :=
  ∀ n, P3715168249512319480.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P4124853944620731396

`filter[A391370(n+1), A181183(#)]`
-/

namespace A038893.P4124853944620731396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A038893.P4124853944620731396

namespace A038893

/-- `filter[A391370(n+1), A181183(#)]` -/
def P4124853944620731396.Spec : Prop :=
  ∀ n, P4124853944620731396.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P16822336753389064894

`filter[A391370(n+1), A252233(#)]`
-/

namespace A038893.P16822336753389064894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A038893.P16822336753389064894

namespace A038893

/-- `filter[A391370(n+1), A252233(#)]` -/
def P16822336753389064894.Spec : Prop :=
  ∀ n, P16822336753389064894.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P3058887239616097925

`filter[A391370(n+1), A262684(#)]`
-/

namespace A038893.P3058887239616097925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A038893.P3058887239616097925

namespace A038893

/-- `filter[A391370(n+1), A262684(#)]` -/
def P3058887239616097925.Spec : Prop :=
  ∀ n, P3058887239616097925.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P4088608486977249278

`filter[A391370(n+1), A295316(#)]`
-/

namespace A038893.P4088608486977249278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A038893.P4088608486977249278

namespace A038893

/-- `filter[A391370(n+1), A295316(#)]` -/
def P4088608486977249278.Spec : Prop :=
  ∀ n, P4088608486977249278.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P18216972466628620143

`filter[A391370(n+1), A296211(#)]`
-/

namespace A038893.P18216972466628620143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A038893.P18216972466628620143

namespace A038893

/-- `filter[A391370(n+1), A296211(#)]` -/
def P18216972466628620143.Spec : Prop :=
  ∀ n, P18216972466628620143.a n = A038893 (n + 1)

end A038893

/-! ## A038893.P3359712463660543824

`∩[A056912(n+1), A391370(n+1)]`
-/

namespace A038893.P3359712463660543824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038893.P3359712463660543824

namespace A038893

/-- `∩[A056912(n+1), A391370(n+1)]` -/
def P3359712463660543824.Spec : Prop :=
  ∀ n, (P3359712463660543824.a n : ℤ) = A038893 (n + 1)

end A038893

/-!
# A038894: Primes p such that 21 is not a square mod p.

The programs for A038894, the canonical program `A038894.P5639412476025145903` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038894 has offset 1).

The definition of A038894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038894.P5639412476025145903

`p?[A008589(n)-A231000(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038894

/-- `p?[A008589(n)-A231000(n)]` -/
def P5639412476025145903.Spec : Prop :=
  ∀ n, P5639412476025145903.a n = A038894 (n + 1)

theorem P5639412476025145903.correct : P5639412476025145903.Spec := by
  intro n
  simp only [A038894, Nat.add_sub_cancel]

end A038894

/-! ## A038894.P553005954384942486

`p?[A008458(n)+n-A231000(n)]`
-/

namespace A038894.P553005954384942486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A231000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038894.P553005954384942486

namespace A038894

/-- `p?[A008458(n)+n-A231000(n)]` -/
def P553005954384942486.Spec : Prop :=
  ∀ n, P553005954384942486.a n = A038894 (n + 1)

end A038894

/-! ## A038894.P5864575112766294663

`∩[A000040(n+1), A008458(n)+n-A231000(n)]`
-/

namespace A038894.P5864575112766294663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A231000 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038894.P5864575112766294663

namespace A038894

/-- `∩[A000040(n+1), A008458(n)+n-A231000(n)]` -/
def P5864575112766294663.Spec : Prop :=
  ∀ n, (P5864575112766294663.a n : ℤ) = A038894 (n + 1)

end A038894

/-! ## A038894.P5598043705024004422

`p?[A090223(n+1)+A064429(2*n+1)]`
-/

namespace A038894.P5598043705024004422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) + A064429 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038894.P5598043705024004422

namespace A038894

/-- `p?[A090223(n+1)+A064429(2*n+1)]` -/
def P5598043705024004422.Spec : Prop :=
  ∀ n, P5598043705024004422.a n = A038894 (n + 1)

end A038894

/-! ## A038894.P12339856063657099793

`p?[A110654(A131793(A301298(n)))]`
-/

namespace A038894.P12339856063657099793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A131793 (A301298 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038894.P12339856063657099793

namespace A038894

/-- `p?[A110654(A131793(A301298(n)))]` -/
def P12339856063657099793.Spec : Prop :=
  ∀ n, P12339856063657099793.a n = A038894 (n + 1)

end A038894

/-! ## A038894.P10330654936086334226

`p?[A004273(n)+and(1, A103372(n+1))]`
-/

namespace A038894.P10330654936086334226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + Int.land 1 (A103372 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038894.P10330654936086334226

namespace A038894

/-- `p?[A004273(n)+and(1, A103372(n+1))]` -/
def P10330654936086334226.Spec : Prop :=
  ∀ n, P10330654936086334226.a n = A038894 (n + 1)

end A038894

/-!
# A038895: 22 is a square mod p.

The programs for A038895, there is no canonical definition to state claims against.
-/

/-! ## A038895.P8120205360652555445

`∪[A141776(n+1), A141777(n+1)]`
-/

namespace A038895.P8120205360652555445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038895.P8120205360652555445

/-! ## A038895.P3700168897102359805

`p?[(n+1)*A001222(A035204(n+1)+1)]`
-/

namespace A038895.P3700168897102359805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A035204 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038895.P3700168897102359805

/-! ## A038895.P17884269903013282632

`p?[∑[A206442(A025077(2*n+1))]]`
-/

namespace A038895.P17884269903013282632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A025077 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038895.P17884269903013282632

/-! ## A038895.P6129677982906400466

`p?[lt[n, A136193(n+2)+1]]`
-/

namespace A038895.P6129677982906400466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136193 (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038895.P6129677982906400466

/-!
# A038896: Primes p such that 22 is not a square mod p.

The programs for A038896, there is no canonical definition to state claims against.
-/

/-! ## A038896.P16247937390862233582

`p?[comp[A038895(n+1)]]`
-/

namespace A038896.P16247937390862233582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038896.P16247937390862233582

/-! ## A038896.P3251796945940185058

`p?[eq[and(2, n), A255647(n)]]`
-/

namespace A038896.P3251796945940185058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038896.P3251796945940185058

/-! ## A038896.P8997101055926986932

`p?[xor(n+1, -A035204(n+1))]`
-/

namespace A038896.P8997101055926986932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-A035204 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038896.P8997101055926986932

/-! ## A038896.P2763417591622314949

`p?[eq[2*A038189(n), A255647(n)]]`
-/

namespace A038896.P2763417591622314949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038189 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038896.P2763417591622314949

/-! ## A038896.P7065045436625994620

`∩[A040153(n+1), A103202(n+1)]`
-/

namespace A038896.P7065045436625994620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038896.P7065045436625994620

/-!
# A038897: 23 is a square mod p.

The programs for A038897, there is no canonical definition to state claims against.
-/

/-! ## A038897.P4500831224286600485

`∪[A040154(n+1), A141336(n+1)]`
-/

namespace A038897.P4500831224286600485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P4500831224286600485

/-! ## A038897.P7721063095844954460

`∪[A141336(n+1), A141337(n+1)]`
-/

namespace A038897.P7721063095844954460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P7721063095844954460

/-! ## A038897.P11201430854224267791

`∪[A040154(n+1), A297177(n+1)]`
-/

namespace A038897.P11201430854224267791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P11201430854224267791

/-! ## A038897.P17056634476108207051

`∪[A114256(n+1), A297177(n+1)]`
-/

namespace A038897.P17056634476108207051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P17056634476108207051

/-! ## A038897.P3958951906304454500

`p?[A035261(n+1)]`
-/

namespace A038897.P3958951906304454500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038897.P3958951906304454500

/-! ## A038897.P13360906210264238498

`p?[record[A035261(A324347(n))]]`
-/

namespace A038897.P13360906210264238498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038897.P13360906210264238498

/-! ## A038897.P3263309850912464061

`record[A006530(A035261(n+2))]`
-/

namespace A038897.P3263309850912464061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035261 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038897.P3263309850912464061

/-! ## A038897.P15684482499304890187

`record[A020639(A035261(n+3))]`
-/

namespace A038897.P15684482499304890187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035261 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038897.P15684482499304890187

/-! ## A038897.P1223196735010414877

`filter[A035261(n+1), A010051(#)]`
-/

namespace A038897.P1223196735010414877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038897.P1223196735010414877

/-! ## A038897.P5940261718904294437

`∩[A000040(n+1), A035261(n+1)]`
-/

namespace A038897.P5940261718904294437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P5940261718904294437

/-! ## A038897.P2240411533025787120

`∩[A035261(n+1), A045319(n+1)]`
-/

namespace A038897.P2240411533025787120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P2240411533025787120

/-! ## A038897.P15163884381351720337

`∩[A035261(n+1), A045344(n+1)]`
-/

namespace A038897.P15163884381351720337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P15163884381351720337

/-! ## A038897.P14910810033157521842

`∩[A035261(n+1), A116974(n+1)]`
-/

namespace A038897.P14910810033157521842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P14910810033157521842

/-! ## A038897.P5675189555678875590

`∩[A035261(n+1), A182986(n+1)]`
-/

namespace A038897.P5675189555678875590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P5675189555678875590

/-! ## A038897.P13305221687355964859

`p?[record[A035261(A133310(n))]]`
-/

namespace A038897.P13305221687355964859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038897.P13305221687355964859

/-! ## A038897.P1574377210439698957

`p?[comp[A038898(n+1)]]`
-/

namespace A038897.P1574377210439698957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038897.P1574377210439698957

/-! ## A038897.P13755703876209927683

`filter[A035261(n+2), A080339(#)]`
-/

namespace A038897.P13755703876209927683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038897.P13755703876209927683

/-! ## A038897.P16010582490154649580

`∩[A035261(n+1), A240960(n+1)]`
-/

namespace A038897.P16010582490154649580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038897.P16010582490154649580

/-!
# A038898: Primes p such that 23 is not a square mod p.

The programs for A038898, the canonical program `A038898.P1343728294535858957` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038898 has offset 1).

The definition of A038898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038898.P13950039441402994213

`p?[comp[A035261(n+1)]]`
-/

namespace A038898.P13950039441402994213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038898.P13950039441402994213

namespace A038898

/-- `p?[comp[A035261(n+1)]]` -/
def P13950039441402994213.Spec : Prop :=
  ∀ n, (P13950039441402994213.a n : ℤ) = A038898 (n + 1)

end A038898

/-! ## A038898.P16866784332095710541

`p?[xor(n, 1-A035205(n+1))]`
-/

namespace A038898.P16866784332095710541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - A035205 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038898.P16866784332095710541

namespace A038898

/-- `p?[xor(n, 1-A035205(n+1))]` -/
def P16866784332095710541.Spec : Prop :=
  ∀ n, P16866784332095710541.a n = A038898 (n + 1)

end A038898

/-! ## A038898.P18282888295276074517

`eq[A035205(n+1), A066246(n+1)]+1`
-/

namespace A038898.P18282888295276074517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038898.P18282888295276074517

namespace A038898

/-- `eq[A035205(n+1), A066246(n+1)]+1` -/
def P18282888295276074517.Spec : Prop :=
  ∀ n, (P18282888295276074517.a n : ℤ) = A038898 (n + 1)

end A038898

/-! ## A038898.P1343728294535858957

`p?[A000007(n)-A009001(n)*A011586(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038898

/-- `p?[A000007(n)-A009001(n)*A011586(n)]` -/
def P1343728294535858957.Spec : Prop :=
  ∀ n, P1343728294535858957.a n = A038898 (n + 1)

theorem P1343728294535858957.correct : P1343728294535858957.Spec := by
  intro n
  simp only [A038898, Nat.add_sub_cancel]

end A038898

/-! ## A038898.P2634662944031554047

`p?[A009001(n)*A011586(n)*A033999(n)]`
-/

namespace A038898.P2634662944031554047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011586 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038898.P2634662944031554047

namespace A038898

/-- `p?[A009001(n)*A011586(n)*A033999(n)]` -/
def P2634662944031554047.Spec : Prop :=
  ∀ n, P2634662944031554047.a n = A038898 (n + 1)

end A038898

/-! ## A038898.P7478426237940555578

`eq[A035205(2*(n+1)), A072480(n+1)]+1`
-/

namespace A038898.P7478426237940555578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035205 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038898.P7478426237940555578

namespace A038898

/-- `eq[A035205(2*(n+1)), A072480(n+1)]+1` -/
def P7478426237940555578.Spec : Prop :=
  ∀ n, (P7478426237940555578.a n : ℤ) = A038898 (n + 1)

end A038898

/-! ## A038898.P8690238428841680775

`eq[A035205(A022144(n)), A072480(n)]`
-/

namespace A038898.P8690238428841680775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035205 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038898.P8690238428841680775

namespace A038898

/-- `eq[A035205(A022144(n)), A072480(n)]` -/
def P8690238428841680775.Spec : Prop :=
  ∀ n, (P8690238428841680775.a n : ℤ) = A038898 (n + 1)

end A038898

/-!
# A038899: 26 is a square mod p.

The programs for A038899, there is no canonical definition to state claims against.
-/

/-! ## A038899.P5656059514184123575

`p?[A035262(n+1)]`
-/

namespace A038899.P5656059514184123575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038899.P5656059514184123575

/-! ## A038899.P12433277130771540692

`record[A006530(A035262(n+2))]`
-/

namespace A038899.P12433277130771540692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035262 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038899.P12433277130771540692

/-! ## A038899.P15103291218344539320

`record[A020639(A035262(2+n))]`
-/

namespace A038899.P15103291218344539320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035262 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038899.P15103291218344539320

/-! ## A038899.P6503729051763628240

`filter[A035262(n+1), A010051(#)]`
-/

namespace A038899.P6503729051763628240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A038899.P6503729051763628240

/-! ## A038899.P3690171922401824812

`∩[A000040(n+1), A035262(n+1)]`
-/

namespace A038899.P3690171922401824812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P3690171922401824812

/-! ## A038899.P9665349691753122200

`∩[A035262(n+1), A045344(n+1)]`
-/

namespace A038899.P9665349691753122200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P9665349691753122200

/-! ## A038899.P16373065117335541759

`∩[A035262(n+1), A116974(n+1)]`
-/

namespace A038899.P16373065117335541759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P16373065117335541759

/-! ## A038899.P10014022782645449239

`∩[A035262(n+1), A182986(n+1)]`
-/

namespace A038899.P10014022782645449239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P10014022782645449239

/-! ## A038899.P10877834027603734228

`∩[A008578(n+1), A035262(n+2)]`
-/

namespace A038899.P10877834027603734228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P10877834027603734228

/-! ## A038899.P838368693619142162

`p?[record[A035262(A133310(n))]]`
-/

namespace A038899.P838368693619142162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038899.P838368693619142162

/-! ## A038899.P17840053752888525396

`p?[record[A035262(A117910(n))]]`
-/

namespace A038899.P17840053752888525396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038899.P17840053752888525396

/-! ## A038899.P2058293354201015836

`filter[A035262(n+2), A080339(#)]`
-/

namespace A038899.P2058293354201015836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A038899.P2058293354201015836

/-! ## A038899.P10222049271377898904

`∩[A035262(n+1), A240960(n+1)]`
-/

namespace A038899.P10222049271377898904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038899.P10222049271377898904

