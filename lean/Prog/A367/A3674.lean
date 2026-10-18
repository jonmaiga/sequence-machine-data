import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
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

/-!
# A367400: Number of subsets of {1..n} whose cardinality is not the sum of two distinct elements.

The programs for A367400, the canonical program `A367400.P7738418284028157805` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367400 has offset 0).

The definition of A367400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367400.P7738418284028157805

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367400

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P7738418284028157805.Spec : Prop :=
  ∀ n, P7738418284028157805.a n = A367400 n

theorem P7738418284028157805.correct : P7738418284028157805.Spec := by
  intro n
  simp only [A367400]

end A367400

/-! ## A367400.P9581972024406781418

`ogf((1+x^2-x^3)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A367400.P9581972024406781418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1] [1, -2, 1, -2, 1] n

end

end A367400.P9581972024406781418

namespace A367400

/-- `ogf((1+x^2-x^3)/(1-2x+x^2-2x^3+x^4))` -/
def P9581972024406781418.Spec : Prop :=
  ∀ n, P9581972024406781418.a n = A367400 n

end A367400

/-! ## A367400.P4356902524868828577

`∑[A112575(n)]+1`
-/

namespace A367400.P4356902524868828577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A367400.P4356902524868828577

namespace A367400

/-- `∑[A112575(n)]+1` -/
def P4356902524868828577.Spec : Prop :=
  ∀ n, P4356902524868828577.a n = A367400 n

end A367400

/-! ## A367400.P933064613138932097

`A183324(n+1)-A112575(n)`
-/

namespace A367400.P933064613138932097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) - A112575 n

end

end A367400.P933064613138932097

namespace A367400

/-- `A183324(n+1)-A112575(n)` -/
def P933064613138932097.Spec : Prop :=
  ∀ n, P933064613138932097.a n = A367400 n

end A367400

/-! ## A367400.P12214828872989481967

`Δ[A118870(n)]`
-/

namespace A367400.P12214828872989481967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367400.P12214828872989481967

namespace A367400

/-- `Δ[A118870(n)]` -/
def P12214828872989481967.Spec : Prop :=
  ∀ n, P12214828872989481967.a n = A367400 n

end A367400

/-! ## A367400.P16115439120848122274

`A118870(n+1)-A118870(n)`
-/

namespace A367400.P16115439120848122274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 (n + 1) - A118870 n

end

end A367400.P16115439120848122274

namespace A367400

/-- `A118870(n+1)-A118870(n)` -/
def P16115439120848122274.Spec : Prop :=
  ∀ n, P16115439120848122274.a n = A367400 n

end A367400

/-! ## A367400.P15568583193111832658

`Δ[A163314(n+1)/3]`
-/

namespace A367400.P15568583193111832658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163314 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367400.P15568583193111832658

namespace A367400

/-- `Δ[A163314(n+1)/3]` -/
def P15568583193111832658.Spec : Prop :=
  ∀ n, P15568583193111832658.a n = (A367400 n : ℚ)

end A367400

/-! ## A367400.P7441989513647214100

`Δ[A099854(n+1)]-A099846(n+1)`
-/

namespace A367400.P7441989513647214100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099846 (n + 1)

end

end A367400.P7441989513647214100

namespace A367400

/-- `Δ[A099854(n+1)]-A099846(n+1)` -/
def P7441989513647214100.Spec : Prop :=
  ∀ n, P7441989513647214100.a n = A367400 n

end A367400

/-! ## A367400.P2174536220729075910

`2^n-A367396(n)`
-/

namespace A367400.P2174536220729075910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367396 n

end

end A367400.P2174536220729075910

namespace A367400

/-- `2^n-A367396(n)` -/
def P2174536220729075910.Spec : Prop :=
  ∀ n, P2174536220729075910.a n = A367400 n

end A367400

/-! ## A367400.P3477480218833657657

`A000079(n)+A397833(n)-A397833(n+1)`
-/

namespace A367400.P3477480218833657657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A397833 n - A397833 (n + 1))

end

end A367400.P3477480218833657657

namespace A367400

/-- `A000079(n)+A397833(n)-A397833(n+1)` -/
def P3477480218833657657.Spec : Prop :=
  ∀ n, P3477480218833657657.a n = A367400 n

end A367400

/-!
# A367401: Numbers m such that bigomega(m) is not the sum of prime indices of any semiprime divisor of m.

The programs for A367401, there is no canonical definition to state claims against.
-/

/-! ## A367401.P12601294395303251474

`comp[A367397(n+1)-1]+1`
-/

namespace A367401.P12601294395303251474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367401.P12601294395303251474

/-! ## A367401.P47732536959289818

`lt[A122389(n+3), A115800(A317837(n+1))]`
-/

namespace A367401.P47732536959289818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122389 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115800 (A317837 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367401.P47732536959289818

/-! ## A367401.P10842525449365428847

`lt[A046951(A001157(n+3)), A275870(n+1)]`
-/

namespace A367401.P10842525449365428847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A001157 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367401.P10842525449365428847

/-! ## A367401.P614983684899502670

`lt[A188784(A304442(n)), A016754(n)]`
-/

namespace A367401.P614983684899502670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (A304442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367401.P614983684899502670

/-! ## A367401.P7804271099820009118

`lt[A062402(n+1), A093511(A007093(n+1))]`
-/

namespace A367401.P7804271099820009118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093511 (A007093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367401.P7804271099820009118

/-!
# A367402: Number of integer partitions of n whose semi-sums cover an interval of positive integers.

The programs for A367402, there is no canonical definition to state claims against.
-/

/-! ## A367402.P15980857326223836781

`A000041(n)-A367403(n)`
-/

namespace A367402.P15980857326223836781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367403 n

end

end A367402.P15980857326223836781

/-! ## A367402.P1452869073013347727

`A213598(n)-A367403(n)`
-/

namespace A367402.P1452869073013347727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367403 n

end

end A367402.P1452869073013347727

/-! ## A367402.P10630548806105855968

`A119620(2*n)-A367403(n)`
-/

namespace A367402.P10630548806105855968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A367403 n

end

end A367402.P10630548806105855968

/-! ## A367402.P189869867116669936

`A163295(n+1)-(A367403(n)+A029837(n+1))`
-/

namespace A367402.P189869867116669936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (n + 1) - (A367403 n + A029837 (n + 1))

end

end A367402.P189869867116669936

/-! ## A367402.P14253729003289076210

`A365543(A000217(n))-A367403(n)`
-/

namespace A367402.P14253729003289076210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A000217 n).toNat - A367403 n

end

end A367402.P14253729003289076210

/-!
# A367403: Number of integer partitions of n whose semi-sums do not cover an interval of positive integers.

The programs for A367403, there is no canonical definition to state claims against.
-/

/-! ## A367403.P10086320754579470304

`A000041(n)-A367402(n)`
-/

namespace A367403.P10086320754579470304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A367402 n

end

end A367403.P10086320754579470304

/-! ## A367403.P14544330093688328182

`A213598(n)-A367402(n)`
-/

namespace A367403.P14544330093688328182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A367402 n

end

end A367403.P14544330093688328182

/-! ## A367403.P10809074148654087061

`∑[A002865(n)]-A367402(n)`
-/

namespace A367403.P10809074148654087061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367402 n

end

end A367403.P10809074148654087061

/-! ## A367403.P8369023875257941687

`A239830(∑[n])-A367402(n)`
-/

namespace A367403.P8369023875257941687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j) - A367402 n

end

end A367403.P8369023875257941687

/-! ## A367403.P17039289114363082938

`A365543(A000217(n))-A367402(n)`
-/

namespace A367403.P17039289114363082938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A000217 n).toNat - A367402 n

end

end A367403.P17039289114363082938

/-!
# A367404: Triangle read by rows where T(n,k) is the number of integer partitions of n with a semi-sum k.

The programs for A367404, there is no canonical definition to state claims against.
-/

/-! ## A367404.P2108364649225576293

`A375272(A375316(n)+A027866(n+1))`
-/

namespace A367404.P2108364649225576293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375272 (A375316 n + A027866 (n + 1)).toNat

end

end A367404.P2108364649225576293

/-! ## A367404.P10067293804467583595

`A327103(A000069(3*n+5))*A390877(n+1)`
-/

namespace A367404.P10067293804467583595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A000069 (3 * n + 5)).toNat * A390877 (n + 1)

end

end A367404.P10067293804467583595

/-! ## A367404.P10593262053384933118

`A239706(A369734(n+1)+1)+A000045(A004736(n+1))`
-/

namespace A367404.P10593262053384933118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239706 (A369734 (n + 1) + 1).toNat + A000045 (A004736 (n + 1)).toNat

end

end A367404.P10593262053384933118

/-!
# A367405: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with two distinct parts summing to k.

The programs for A367405, there is no canonical definition to state claims against.
-/

/-! ## A367405.P654423269051683103

`A116861(n+1)-A342025(A236433(2*n+5))`
-/

namespace A367405.P654423269051683103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (n + 1) - A342025 (A236433 (2 * n + 5)).toNat

end

end A367405.P654423269051683103

/-! ## A367405.P8255693277768518651

`A126305(A050376(2*n+5))-2`
-/

namespace A367405.P8255693277768518651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A050376 (2 * n + 5)).toNat - 2

end

end A367405.P8255693277768518651

/-! ## A367405.P3711087156211304173

`A281007(A092885(n))-A092921(n)`
-/

namespace A367405.P3711087156211304173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A092885 n).toNat - A092921 n

end

end A367405.P3711087156211304173

/-! ## A367405.P18420878654570177964

`A357637(n)^A334947(A000041(n))`
-/

namespace A367405.P18420878654570177964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357637 n : ℚ) ^ (A334947 (A000041 n).toNat : ℤ)

end

end A367405.P18420878654570177964

/-! ## A367405.P3516826495184156449

`A266608(n+1)+A266608(A000537(n))`
-/

namespace A367405.P3516826495184156449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266608 (n + 1) + A266608 (A000537 n).toNat

end

end A367405.P3516826495184156449

/-!
# A367406: The exponentially odd numbers (A268335) multiplied by their squarefree kernels (A007947).

The programs for A367406, the canonical program `A367406.P6026648702494217252` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367406 has offset 1).

The definition of A367406 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367406.P11525395909622482728

`A367407(n+1)²`
-/

namespace A367406.P11525395909622482728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1) ^ 2

end

end A367406.P11525395909622482728

namespace A367406

/-- `A367407(n+1)²` -/
def P11525395909622482728.Spec : Prop :=
  ∀ n, P11525395909622482728.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P6026648702494217252

`A268335(n+1)*A367417(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A367406

/-- `A268335(n+1)*A367417(n+1)` -/
def P6026648702494217252.Spec : Prop :=
  ∀ n, P6026648702494217252.a n = A367406 (n + 1)

theorem P6026648702494217252.correct : P6026648702494217252.Spec := by
  intro n
  simp only [A367406, Nat.add_sub_cancel]

end A367406

/-! ## A367406.P13204940435775438497

`A268335(n+1)²/A367418(n+1)`
-/

namespace A367406.P13204940435775438497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) ^ 2 : ℚ) / (A367418 (n + 1) : ℚ)

end

end A367406.P13204940435775438497

namespace A367406

/-- `A268335(n+1)²/A367418(n+1)` -/
def P13204940435775438497.Spec : Prop :=
  ∀ n, P13204940435775438497.a n = (A367406 (n + 1) : ℚ)

end A367406

/-! ## A367406.P7530847497323285018

`A053143(A268335(n+1))`
-/

namespace A367406.P7530847497323285018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A268335 (n + 1)).toNat

end

end A367406.P7530847497323285018

namespace A367406

/-- `A053143(A268335(n+1))` -/
def P7530847497323285018.Spec : Prop :=
  ∀ n, P7530847497323285018.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P15012945137937077644

`A374458(n+1)/A367418(n+1)`
-/

namespace A367406.P15012945137937077644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374458 (n + 1) : ℚ) / (A367418 (n + 1) : ℚ)

end

end A367406.P15012945137937077644

namespace A367406

/-- `A374458(n+1)/A367418(n+1)` -/
def P15012945137937077644.Spec : Prop :=
  ∀ n, P15012945137937077644.a n = (A367406 (n + 1) : ℚ)

end A367406

/-! ## A367406.P10062216325226828880

`(A367417(n+1)*A367419(n+1))²`
-/

namespace A367406.P10062216325226828880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A367417 (n + 1) * A367419 (n + 1)) ^ 2

end

end A367406.P10062216325226828880

namespace A367406

/-- `(A367417(n+1)*A367419(n+1))²` -/
def P10062216325226828880.Spec : Prop :=
  ∀ n, P10062216325226828880.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P17427428084144330181

`A367417(n+1)²*A367418(n+1)`
-/

namespace A367406.P17427428084144330181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 1) ^ 2 * A367418 (n + 1)

end

end A367406.P17427428084144330181

namespace A367406

/-- `A367417(n+1)²*A367418(n+1)` -/
def P17427428084144330181.Spec : Prop :=
  ∀ n, P17427428084144330181.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P17109533419588812994

`(A268335(n+1)/A367419(n+1))²`
-/

namespace A367406.P17109533419588812994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A268335 (n + 1) : ℚ) / (A367419 (n + 1) : ℚ)) ^ 2

end

end A367406.P17109533419588812994

namespace A367406

/-- `(A268335(n+1)/A367419(n+1))²` -/
def P17109533419588812994.Spec : Prop :=
  ∀ n, P17109533419588812994.a n = (A367406 (n + 1) : ℚ)

end A367406

/-! ## A367406.P10391985607631016685

`A007947(A367407(n+1))*A268335(n+1)`
-/

namespace A367406.P10391985607631016685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A367407 (n + 1)).toNat * A268335 (n + 1)

end

end A367406.P10391985607631016685

namespace A367406

/-- `A007947(A367407(n+1))*A268335(n+1)` -/
def P10391985607631016685.Spec : Prop :=
  ∀ n, P10391985607631016685.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P16853358026410760187

`A367407(n+1)*A367417(n+1)*A367419(n+1)`
-/

namespace A367406.P16853358026410760187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1) * A367417 (n + 1) * A367419 (n + 1)

end

end A367406.P16853358026410760187

namespace A367406

/-- `A367407(n+1)*A367417(n+1)*A367419(n+1)` -/
def P16853358026410760187.Spec : Prop :=
  ∀ n, P16853358026410760187.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P7307107181250820931

`A268335(n+1)*A367407(n+1)/A367419(n+1)`
-/

namespace A367406.P7307107181250820931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) * A367407 (n + 1) : ℚ) / (A367419 (n + 1) : ℚ)

end

end A367406.P7307107181250820931

namespace A367406

/-- `A268335(n+1)*A367407(n+1)/A367419(n+1)` -/
def P7307107181250820931.Spec : Prop :=
  ∀ n, P7307107181250820931.a n = (A367406 (n + 1) : ℚ)

end A367406

/-! ## A367406.P4489528307386691037

`A064549(A268335(2*n+1-n))`
-/

namespace A367406.P4489528307386691037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A268335 (2 * n + 1 - n)).toNat

end

end A367406.P4489528307386691037

namespace A367406

/-- `A064549(A268335(2*n+1-n))` -/
def P4489528307386691037.Spec : Prop :=
  ∀ n, P4489528307386691037.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P5389444776643237295

`A000290(A367417(n+1)*A367419(n+1))`
-/

namespace A367406.P5389444776643237295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A367417 (n + 1) * A367419 (n + 1)).toNat

end

end A367406.P5389444776643237295

namespace A367406

/-- `A000290(A367417(n+1)*A367419(n+1))` -/
def P5389444776643237295.Spec : Prop :=
  ∀ n, P5389444776643237295.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P17125848840289819786

`A053143(A367417(n+1)*A367418(n+1))`
-/

namespace A367406.P17125848840289819786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A367417 (n + 1) * A367418 (n + 1)).toNat

end

end A367406.P17125848840289819786

namespace A367406

/-- `A053143(A367417(n+1)*A367418(n+1))` -/
def P17125848840289819786.Spec : Prop :=
  ∀ n, P17125848840289819786.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P3048993979504313993

`A064549(A367407(n+1)*A367419(n+1))`
-/

namespace A367406.P3048993979504313993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A367407 (n + 1) * A367419 (n + 1)).toNat

end

end A367406.P3048993979504313993

namespace A367406

/-- `A064549(A367407(n+1)*A367419(n+1))` -/
def P3048993979504313993.Spec : Prop :=
  ∀ n, P3048993979504313993.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P5942539491743694033

`A064549(A367417(n+1)*A367418(n+1))`
-/

namespace A367406.P5942539491743694033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A367417 (n + 1) * A367418 (n + 1)).toNat

end

end A367406.P5942539491743694033

namespace A367406

/-- `A064549(A367417(n+1)*A367418(n+1))` -/
def P5942539491743694033.Spec : Prop :=
  ∀ n, P5942539491743694033.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P6797054338434527053

`A007947(A268335(n+1)²)*A268335(n+1)`
-/

namespace A367406.P6797054338434527053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A268335 (n + 1) ^ 2).toNat * A268335 (n + 1)

end

end A367406.P6797054338434527053

namespace A367406

/-- `A007947(A268335(n+1)²)*A268335(n+1)` -/
def P6797054338434527053.Spec : Prop :=
  ∀ n, P6797054338434527053.a n = A367406 (n + 1)

end A367406

/-! ## A367406.P15526993229623436358

`A268335(n+1)*A336643(A268335(n+1)²)`
-/

namespace A367406.P15526993229623436358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1) * A336643 (A268335 (n + 1) ^ 2).toNat

end

end A367406.P15526993229623436358

namespace A367406

/-- `A268335(n+1)*A336643(A268335(n+1)²)` -/
def P15526993229623436358.Spec : Prop :=
  ∀ n, P15526993229623436358.a n = A367406 (n + 1)

end A367406

/-!
# A367407: a(n) = sqrt(A367406(n)).

The programs for A367407, the canonical program `A367407.P18083013825818049361` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367407 has offset 1).

The definition of A367407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367406, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367407.P18083013825818049361

`sqrt(A367406(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367407

/-- `sqrt(A367406(n+1))` -/
def P18083013825818049361.Spec : Prop :=
  ∀ n, P18083013825818049361.a n = (A367407 (n + 1) : ℝ)

end A367407

/-! ## A367407.P2469157468704615574

`A268335(n+1)/A367419(n+1)`
-/

namespace A367407.P2469157468704615574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367419 (n + 1) : ℚ)

end

end A367407.P2469157468704615574

namespace A367407

/-- `A268335(n+1)/A367419(n+1)` -/
def P2469157468704615574.Spec : Prop :=
  ∀ n, P2469157468704615574.a n = (A367407 (n + 1) : ℚ)

end A367407

/-! ## A367407.P1257422437566470382

`sqrt(A268335(n+1)*A367417(n+1))`
-/

namespace A367407.P1257422437566470382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268335 (n + 1) * A367417 (n + 1) : ℝ)

end

end A367407.P1257422437566470382

namespace A367407

/-- `sqrt(A268335(n+1)*A367417(n+1))` -/
def P1257422437566470382.Spec : Prop :=
  ∀ n, P1257422437566470382.a n = (A367407 (n + 1) : ℝ)

end A367407

/-! ## A367407.P11082451610280273239

`sqrt(A064549(A268335(n+1)))`
-/

namespace A367407.P11082451610280273239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A064549 (A268335 (n + 1)).toNat : ℝ)

end

end A367407.P11082451610280273239

namespace A367407

/-- `sqrt(A064549(A268335(n+1)))` -/
def P11082451610280273239.Spec : Prop :=
  ∀ n, P11082451610280273239.a n = (A367407 (n + 1) : ℝ)

end A367407

/-! ## A367407.P7462269147325776400

`A367417(n+1)*A367419(n+1)`
-/

namespace A367407.P7462269147325776400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 1) * A367419 (n + 1)

end

end A367407.P7462269147325776400

namespace A367407

/-- `A367417(n+1)*A367419(n+1)` -/
def P7462269147325776400.Spec : Prop :=
  ∀ n, P7462269147325776400.a n = A367407 (n + 1)

end A367407

/-! ## A367407.P15269251009436415063

`A019554(A268335(n+1))`
-/

namespace A367407.P15269251009436415063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A268335 (n + 1)).toNat

end

end A367407.P15269251009436415063

namespace A367407

/-- `A019554(A268335(n+1))` -/
def P15269251009436415063.Spec : Prop :=
  ∀ n, P15269251009436415063.a n = A367407 (n + 1)

end A367407

/-! ## A367407.P2683658023270533391

`A019554(comp[A072587(n+1)-1]+1)`
-/

namespace A367407.P2683658023270533391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A367407.P2683658023270533391

namespace A367407

/-- `A019554(comp[A072587(n+1)-1]+1)` -/
def P2683658023270533391.Spec : Prop :=
  ∀ n, P2683658023270533391.a n = A367407 (n + 1)

end A367407

/-! ## A367407.P4490779308579843254

`A007947(A367406(n+1))*A367419(n+1)`
-/

namespace A367407.P4490779308579843254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A367406 (n + 1)).toNat * A367419 (n + 1)

end

end A367407.P4490779308579843254

namespace A367407

/-- `A007947(A367406(n+1))*A367419(n+1)` -/
def P4490779308579843254.Spec : Prop :=
  ∀ n, P4490779308579843254.a n = A367407 (n + 1)

end A367407

/-! ## A367407.P13039255573330718781

`A053166(A374458(n+1))`
-/

namespace A367407.P13039255573330718781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A374458 (n + 1)).toNat

end

end A367407.P13039255573330718781

namespace A367407

/-- `A053166(A374458(n+1))` -/
def P13039255573330718781.Spec : Prop :=
  ∀ n, P13039255573330718781.a n = A367407 (n + 1)

end A367407

/-! ## A367407.P14561404421751488218

`A003557(A367406(n+1)/A367419(n+1))`
-/

namespace A367407.P14561404421751488218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((A367406 (n + 1) : ℚ) / (A367419 (n + 1) : ℚ))).toNat

end

end A367407.P14561404421751488218

namespace A367407

/-- `A003557(A367406(n+1)/A367419(n+1))` -/
def P14561404421751488218.Spec : Prop :=
  ∀ n, P14561404421751488218.a n = A367407 (n + 1)

end A367407

/-!
# A367410: Number of strict integer partitions of n whose semi-sums cover an interval of positive integers.

The programs for A367410, there is no canonical definition to state claims against.
-/

/-! ## A367410.P16138304966169176526

`A000009(n)-A367411(n)`
-/

namespace A367410.P16138304966169176526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367411 n

end

end A367410.P16138304966169176526

/-!
# A367411: Number of strict integer partitions of n whose semi-sums do not cover an interval of positive integers.

The programs for A367411, there is no canonical definition to state claims against.
-/

/-! ## A367411.P4353476079954063349

`A000009(n)-A367410(n)`
-/

namespace A367411.P4353476079954063349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A367410 n

end

end A367411.P4353476079954063349

/-!
# A367412: Triangle read by rows with all zeros removed where T(n,k) is the number of integer partitions of n with k different semi-sums.

The programs for A367412, there is no canonical definition to state claims against.
-/

/-! ## A367412.P8253680309721329429

`or(A093879(A341135(n+6)), A357982(n+1))`
-/

namespace A367412.P8253680309721329429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093879 (A341135 (n + 6)).toNat) (A357982 (n + 1))

end

end A367412.P8253680309721329429

/-! ## A367412.P8302268848195751800

`A178503(A066328(3*(n+1)))%A170951(3*n+2)`
-/

namespace A367412.P8302268848195751800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178503 (A066328 (3 * (n + 1))).toNat) (A170951 (3 * n + 2))

end

end A367412.P8302268848195751800

/-! ## A367412.P16829756664653804163

`or(A188076(A011782(n)), A381454(n+1))`
-/

namespace A367412.P16829756664653804163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188076 (A011782 n).toNat) (A381454 (n + 1))

end

end A367412.P16829756664653804163

/-! ## A367412.P5015455418981516372

`or(A141727(A079464(n+1)), A381454(n+1))`
-/

namespace A367412.P5015455418981516372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141727 (A079464 (n + 1)).toNat) (A381454 (n + 1))

end

end A367412.P5015455418981516372

/-! ## A367412.P12517974034091686392

`or(A030190(A000041(2*n+3)), A357982(n+1))`
-/

namespace A367412.P12517974034091686392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030190 (A000041 (2 * n + 3)).toNat) (A357982 (n + 1))

end

end A367412.P12517974034091686392

/-!
# A367413: Expansion of (1/x) * Series_Reversion( x * (1-x-x^3/(1-x)^2) ).

The programs for A367413, there is no canonical definition to state claims against.
-/

/-! ## A367413.P2263859894533006201

`A066508(A102318(n))`
-/

namespace A367413.P2263859894533006201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A102318 n).toNat

end

end A367413.P2263859894533006201

/-! ## A367413.P16429045725110304057

`A214701(A165535(n))`
-/

namespace A367413.P16429045725110304057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A165535 n).toNat

end

end A367413.P16429045725110304057

/-! ## A367413.P12887110188367729072

`A008617(A150194(n+1))`
-/

namespace A367413.P12887110188367729072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A150194 (n + 1)).toNat

end

end A367413.P12887110188367729072

/-!
# A367415: Expansion of (1/x) * Series_Reversion( x * (1-x-x^4/(1-x)^3) ).

The programs for A367415, there is no canonical definition to state claims against.
-/

/-! ## A367415.P6269337184269438066

`A195120(A007317(n+1)+n)`
-/

namespace A367415.P6269337184269438066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A007317 (n + 1) + (n : ℤ)).toNat

end

end A367415.P6269337184269438066

/-! ## A367415.P5722003322062560209

`A195120((A342570(2*n+1)+1)/2+n)`
-/

namespace A367415.P5722003322062560209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (SequenceMachineLib.roundAway ((A342570 (2 * n + 1) + 1 : ℚ) / 2 + (n : ℚ))).toNat

end

end A367415.P5722003322062560209

/-! ## A367415.P1611984041583076992

`A195120(∑[A045868(n)]-A039919(n+1)+n)`
-/

namespace A367415.P1611984041583076992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (∑ j ∈ Finset.range (n + 1), f1 j - A039919 (n + 1) + (n : ℤ)).toNat

end

end A367415.P1611984041583076992

/-!
# A367417: The squarefree kernels of the exponentially odd numbers: a(n) = A007947(A268335(n)).

The programs for A367417, the canonical program `A367417.P18277504886847390025` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367417 has offset 1).

The definition of A367417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367417.P18277504886847390025

`A007947(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367417

/-- `A007947(A268335(n+1))` -/
def P18277504886847390025.Spec : Prop :=
  ∀ n, P18277504886847390025.a n = A367417 (n + 1)

theorem P18277504886847390025.correct : P18277504886847390025.Spec := by
  intro n
  simp only [A367417, Nat.add_sub_cancel]

end A367417

/-! ## A367417.P5836980340301555308

`A367406(n+1)/A268335(n+1)`
-/

namespace A367417.P5836980340301555308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367406 (n + 1) : ℚ) / (A268335 (n + 1) : ℚ)

end

end A367417.P5836980340301555308

namespace A367417

/-- `A367406(n+1)/A268335(n+1)` -/
def P5836980340301555308.Spec : Prop :=
  ∀ n, P5836980340301555308.a n = (A367417 (n + 1) : ℚ)

end A367417

/-! ## A367417.P13162163391228637599

`∏{p}[A367407(n+1), #]`
-/

namespace A367417.P13162163391228637599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A367417.P13162163391228637599

namespace A367417

/-- `∏{p}[A367407(n+1), #]` -/
def P13162163391228637599.Spec : Prop :=
  ∀ n, (P13162163391228637599.a n : ℤ) = A367417 (n + 1)

end A367417

/-! ## A367417.P12355122313040385217

`∏{p}[record[A331737(n+1)], #]`
-/

namespace A367417.P12355122313040385217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A367417.P12355122313040385217

namespace A367417

/-- `∏{p}[record[A331737(n+1)], #]` -/
def P12355122313040385217.Spec : Prop :=
  ∀ n, (P12355122313040385217.a n : ℤ) = A367417 (n + 1)

end A367417

/-! ## A367417.P11780900423913120746

`A007947(A367407(n+1))`
-/

namespace A367417.P11780900423913120746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A367407 (n + 1)).toNat

end

end A367417.P11780900423913120746

namespace A367417

/-- `A007947(A367407(n+1))` -/
def P11780900423913120746.Spec : Prop :=
  ∀ n, P11780900423913120746.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P5105240481019643063

`A268335(n+1)/A367418(n+1)`
-/

namespace A367417.P5105240481019643063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367418 (n + 1) : ℚ)

end

end A367417.P5105240481019643063

namespace A367417

/-- `A268335(n+1)/A367418(n+1)` -/
def P5105240481019643063.Spec : Prop :=
  ∀ n, P5105240481019643063.a n = (A367417 (n + 1) : ℚ)

end A367417

/-! ## A367417.P6138630864898897814

`A367407(n+1)/A367419(n+1)`
-/

namespace A367417.P6138630864898897814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) : ℚ) / (A367419 (n + 1) : ℚ)

end

end A367417.P6138630864898897814

namespace A367417

/-- `A367407(n+1)/A367419(n+1)` -/
def P6138630864898897814.Spec : Prop :=
  ∀ n, P6138630864898897814.a n = (A367417 (n + 1) : ℚ)

end A367417

/-! ## A367417.P9599923687207096258

`A367407(n+1)²/A268335(n+1)`
-/

namespace A367417.P9599923687207096258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) ^ 2 : ℚ) / (A268335 (n + 1) : ℚ)

end

end A367417.P9599923687207096258

namespace A367417

/-- `A367407(n+1)²/A268335(n+1)` -/
def P9599923687207096258.Spec : Prop :=
  ∀ n, P9599923687207096258.a n = (A367417 (n + 1) : ℚ)

end A367417

/-! ## A367417.P14956396576648119903

`A268335(n+1)/A367419(n+1)²`
-/

namespace A367417.P14956396576648119903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367419 (n + 1) ^ 2 : ℚ)

end

end A367417.P14956396576648119903

namespace A367417

/-- `A268335(n+1)/A367419(n+1)²` -/
def P14956396576648119903.Spec : Prop :=
  ∀ n, P14956396576648119903.a n = (A367417 (n + 1) : ℚ)

end A367417

/-! ## A367417.P15100654556601559310

`filter[A066990(n+1), A008966(#)]`
-/

namespace A367417.P15100654556601559310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A367417.P15100654556601559310

namespace A367417

/-- `filter[A066990(n+1), A008966(#)]` -/
def P15100654556601559310.Spec : Prop :=
  ∀ n, P15100654556601559310.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P9886280809461501563

`filter[A066990(n+1), A295316(#)]`
-/

namespace A367417.P9886280809461501563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A367417.P9886280809461501563

namespace A367417

/-- `filter[A066990(n+1), A295316(#)]` -/
def P9886280809461501563.Spec : Prop :=
  ∀ n, P9886280809461501563.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P2903449548359061636

`filter[A365296(n+1), A008966(#)]`
-/

namespace A367417.P2903449548359061636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A367417.P2903449548359061636

namespace A367417

/-- `filter[A365296(n+1), A008966(#)]` -/
def P2903449548359061636.Spec : Prop :=
  ∀ n, P2903449548359061636.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P14969344609179019148

`filter[A066990(n+1), A307421(#)]`
-/

namespace A367417.P14969344609179019148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A367417.P14969344609179019148

namespace A367417

/-- `filter[A066990(n+1), A307421(#)]` -/
def P14969344609179019148.Spec : Prop :=
  ∀ n, P14969344609179019148.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P3649891356614737111

`filter[A066990(n+1), A323154(#)]`
-/

namespace A367417.P3649891356614737111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A367417.P3649891356614737111

namespace A367417

/-- `filter[A066990(n+1), A323154(#)]` -/
def P3649891356614737111.Spec : Prop :=
  ∀ n, P3649891356614737111.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P12469731887794487068

`filter[A066990(n+1), A353519(#)]`
-/

namespace A367417.P12469731887794487068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A367417.P12469731887794487068

namespace A367417

/-- `filter[A066990(n+1), A353519(#)]` -/
def P12469731887794487068.Spec : Prop :=
  ∀ n, P12469731887794487068.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P231227204117809234

`filter[A066990(n+1), A359473(#)]`
-/

namespace A367417.P231227204117809234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A367417.P231227204117809234

namespace A367417

/-- `filter[A066990(n+1), A359473(#)]` -/
def P231227204117809234.Spec : Prop :=
  ∀ n, P231227204117809234.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P15643105480864178484

`filter[A365296(n+1), A295316(#)]`
-/

namespace A367417.P15643105480864178484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A367417.P15643105480864178484

namespace A367417

/-- `filter[A365296(n+1), A295316(#)]` -/
def P15643105480864178484.Spec : Prop :=
  ∀ n, P15643105480864178484.a n = A367417 (n + 1)

end A367417

/-! ## A367417.P2330610486226543486

`filter[A365296(n+1), A359473(#)]`
-/

namespace A367417.P2330610486226543486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A367417.P2330610486226543486

namespace A367417

/-- `filter[A365296(n+1), A359473(#)]` -/
def P2330610486226543486.Spec : Prop :=
  ∀ n, P2330610486226543486.a n = A367417 (n + 1)

end A367417

/-!
# A367418: The exponentially odd numbers (A268335) divided by their squarefree kernels (A007947).

The programs for A367418, the canonical program `A367418.P8234545043169317715` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367418 has offset 1).

The definition of A367418 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, A367417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367418.P8778984266117683888

`A367419(n+1)²`
-/

namespace A367418.P8778984266117683888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367419 (n + 1) ^ 2

end

end A367418.P8778984266117683888

namespace A367418

/-- `A367419(n+1)²` -/
def P8778984266117683888.Spec : Prop :=
  ∀ n, P8778984266117683888.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P8234545043169317715

`A268335(n+1)/A367417(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A367418

/-- `A268335(n+1)/A367417(n+1)` -/
def P8234545043169317715.Spec : Prop :=
  ∀ n, P8234545043169317715.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P956679519152981210

`A268335(n+1)²/A367406(n+1)`
-/

namespace A367418.P956679519152981210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) ^ 2 : ℚ) / (A367406 (n + 1) : ℚ)

end

end A367418.P956679519152981210

namespace A367418

/-- `A268335(n+1)²/A367406(n+1)` -/
def P956679519152981210.Spec : Prop :=
  ∀ n, P956679519152981210.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P4214437863368023243

`A003557(A268335(n+1))`
-/

namespace A367418.P4214437863368023243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A268335 (n + 1)).toNat

end

end A367418.P4214437863368023243

namespace A367418

/-- `A003557(A268335(n+1))` -/
def P4214437863368023243.Spec : Prop :=
  ∀ n, P4214437863368023243.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P10881288261774133326

`A374458(n+1)/A367406(n+1)`
-/

namespace A367418.P10881288261774133326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374458 (n + 1) : ℚ) / (A367406 (n + 1) : ℚ)

end

end A367418.P10881288261774133326

namespace A367418

/-- `A374458(n+1)/A367406(n+1)` -/
def P10881288261774133326.Spec : Prop :=
  ∀ n, P10881288261774133326.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P16863583620158093429

`A374457(n+1)/A380326(n+1)`
-/

namespace A367418.P16863583620158093429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374457 (n + 1) : ℚ) / (A380326 (n + 1) : ℚ)

end

end A367418.P16863583620158093429

namespace A367418

/-- `A374457(n+1)/A380326(n+1)` -/
def P16863583620158093429.Spec : Prop :=
  ∀ n, P16863583620158093429.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P24819358446733186

`(A268335(n+1)/A367407(n+1))²`
-/

namespace A367418.P24819358446733186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A268335 (n + 1) : ℚ) / (A367407 (n + 1) : ℚ)) ^ 2

end

end A367418.P24819358446733186

namespace A367418

/-- `(A268335(n+1)/A367407(n+1))²` -/
def P24819358446733186.Spec : Prop :=
  ∀ n, P24819358446733186.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P1484030479331904341

`A367406(n+1)/A367417(n+1)²`
-/

namespace A367418.P1484030479331904341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367406 (n + 1) : ℚ) / (A367417 (n + 1) ^ 2 : ℚ)

end

end A367418.P1484030479331904341

namespace A367418

/-- `A367406(n+1)/A367417(n+1)²` -/
def P1484030479331904341.Spec : Prop :=
  ∀ n, P1484030479331904341.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P5696549888241409267

`(A367407(n+1)/A367417(n+1))²`
-/

namespace A367418.P5696549888241409267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A367407 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ)) ^ 2

end

end A367418.P5696549888241409267

namespace A367418

/-- `(A367407(n+1)/A367417(n+1))²` -/
def P5696549888241409267.Spec : Prop :=
  ∀ n, P5696549888241409267.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P18233956804128591776

`A008833(A367419(n+1)*A367419(n+1))`
-/

namespace A367418.P18233956804128591776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A367419 (n + 1) * A367419 (n + 1)).toNat

end

end A367418.P18233956804128591776

namespace A367418

/-- `A008833(A367419(n+1)*A367419(n+1))` -/
def P18233956804128591776.Spec : Prop :=
  ∀ n, P18233956804128591776.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P11234463173891051193

`A350388(A367419(n+1)*A367419(n+1))`
-/

namespace A367418.P11234463173891051193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A367419 (n + 1) * A367419 (n + 1)).toNat

end

end A367418.P11234463173891051193

namespace A367418

/-- `A350388(A367419(n+1)*A367419(n+1))` -/
def P11234463173891051193.Spec : Prop :=
  ∀ n, P11234463173891051193.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P15003068974887902884

`A008833(A367406(n+1)/A367417(n+1))`
-/

namespace A367418.P15003068974887902884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((A367406 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ))).toNat

end

end A367418.P15003068974887902884

namespace A367418

/-- `A008833(A367406(n+1)/A367417(n+1))` -/
def P15003068974887902884.Spec : Prop :=
  ∀ n, P15003068974887902884.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P16369120642251973557

`A367406(n+1)/A007947(A367407(n+1))²`
-/

namespace A367418.P16369120642251973557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367406 (n + 1) : ℚ) / (A007947 (A367407 (n + 1)).toNat ^ 2 : ℚ)

end

end A367418.P16369120642251973557

namespace A367418

/-- `A367406(n+1)/A007947(A367407(n+1))²` -/
def P16369120642251973557.Spec : Prop :=
  ∀ n, P16369120642251973557.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P13153041248080577560

`A268335(n+1)/A367407(n+1)*A367419(n+1)`
-/

namespace A367418.P13153041248080577560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367407 (n + 1) : ℚ) * (A367419 (n + 1) : ℚ)

end

end A367418.P13153041248080577560

namespace A367418

/-- `A268335(n+1)/A367407(n+1)*A367419(n+1)` -/
def P13153041248080577560.Spec : Prop :=
  ∀ n, P13153041248080577560.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P11402977795674691875

`A367407(n+1)/A367417(n+1)*A367419(n+1)`
-/

namespace A367418.P11402977795674691875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ) * (A367419 (n + 1) : ℚ)

end

end A367418.P11402977795674691875

namespace A367418

/-- `A367407(n+1)/A367417(n+1)*A367419(n+1)` -/
def P11402977795674691875.Spec : Prop :=
  ∀ n, P11402977795674691875.a n = (A367418 (n + 1) : ℚ)

end A367418

/-! ## A367418.P79035713736745505

`A003557(A367407(n+1))²`
-/

namespace A367418.P79035713736745505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A367407 (n + 1)).toNat ^ 2

end

end A367418.P79035713736745505

namespace A367418

/-- `A003557(A367407(n+1))²` -/
def P79035713736745505.Spec : Prop :=
  ∀ n, P79035713736745505.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P2547775484127067101

`filter[A003557(n+1), A010052(#)]`
-/

namespace A367418.P2547775484127067101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A367418.P2547775484127067101

namespace A367418

/-- `filter[A003557(n+1), A010052(#)]` -/
def P2547775484127067101.Spec : Prop :=
  ∀ n, P2547775484127067101.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P15745213879579313144

`A000188(record[A350390(n+1)])²`
-/

namespace A367418.P15745213879579313144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A367418.P15745213879579313144

namespace A367418

/-- `A000188(record[A350390(n+1)])²` -/
def P15745213879579313144.Spec : Prop :=
  ∀ n, P15745213879579313144.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P3636861619388795528

`A336642(record[A350389(n+1)])+1`
-/

namespace A367418.P3636861619388795528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A367418.P3636861619388795528

namespace A367418

/-- `A336642(record[A350389(n+1)])+1` -/
def P3636861619388795528.Spec : Prop :=
  ∀ n, P3636861619388795528.a n = A367418 (n + 1)

end A367418

/-! ## A367418.P16039475825669417892

`A003557(A367407(n+1)*A367419(n+1))`
-/

namespace A367418.P16039475825669417892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A367407 (n + 1) * A367419 (n + 1)).toNat

end

end A367418.P16039475825669417892

namespace A367418

/-- `A003557(A367407(n+1)*A367419(n+1))` -/
def P16039475825669417892.Spec : Prop :=
  ∀ n, P16039475825669417892.a n = A367418 (n + 1)

end A367418

/-!
# A367419: a(n) = sqrt(A367418(n)).

The programs for A367419, the canonical program `A367419.P12918767703216555889` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367419 has offset 1).

The definition of A367419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367418, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367419.P12918767703216555889

`sqrt(A367418(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367419

/-- `sqrt(A367418(n+1))` -/
def P12918767703216555889.Spec : Prop :=
  ∀ n, P12918767703216555889.a n = (A367419 (n + 1) : ℝ)

end A367419

/-! ## A367419.P18408199396113774997

`A268335(n+1)/A367407(n+1)`
-/

namespace A367419.P18408199396113774997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268335 (n + 1) : ℚ) / (A367407 (n + 1) : ℚ)

end

end A367419.P18408199396113774997

namespace A367419

/-- `A268335(n+1)/A367407(n+1)` -/
def P18408199396113774997.Spec : Prop :=
  ∀ n, P18408199396113774997.a n = (A367419 (n + 1) : ℚ)

end A367419

/-! ## A367419.P15387553462983263498

`sqrt(A268335(n+1)/A367417(n+1))`
-/

namespace A367419.P15387553462983263498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A268335 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ) : ℝ)

end

end A367419.P15387553462983263498

namespace A367419

/-- `sqrt(A268335(n+1)/A367417(n+1))` -/
def P15387553462983263498.Spec : Prop :=
  ∀ n, P15387553462983263498.a n = (A367419 (n + 1) : ℝ)

end A367419

/-! ## A367419.P16138519971291720218

`sqrt(A003557(A268335(n+1)))`
-/

namespace A367419.P16138519971291720218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003557 (A268335 (n + 1)).toNat : ℝ)

end

end A367419.P16138519971291720218

namespace A367419

/-- `sqrt(A003557(A268335(n+1)))` -/
def P16138519971291720218.Spec : Prop :=
  ∀ n, P16138519971291720218.a n = (A367419 (n + 1) : ℝ)

end A367419

/-! ## A367419.P9935991475359201672

`A367407(n+1)/A367417(n+1)`
-/

namespace A367419.P9935991475359201672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) : ℚ) / (A367417 (n + 1) : ℚ)

end

end A367419.P9935991475359201672

namespace A367419

/-- `A367407(n+1)/A367417(n+1)` -/
def P9935991475359201672.Spec : Prop :=
  ∀ n, P9935991475359201672.a n = (A367419 (n + 1) : ℚ)

end A367419

/-! ## A367419.P14611627071367638660

`A000188(A268335(n+1))`
-/

namespace A367419.P14611627071367638660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A268335 (n + 1)).toNat

end

end A367419.P14611627071367638660

namespace A367419

/-- `A000188(A268335(n+1))` -/
def P14611627071367638660.Spec : Prop :=
  ∀ n, P14611627071367638660.a n = A367419 (n + 1)

end A367419

/-! ## A367419.P17848362010718260915

`A003557(A367407(n+1))`
-/

namespace A367419.P17848362010718260915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A367407 (n + 1)).toNat

end

end A367419.P17848362010718260915

namespace A367419

/-- `A003557(A367407(n+1))` -/
def P17848362010718260915.Spec : Prop :=
  ∀ n, P17848362010718260915.a n = A367419 (n + 1)

end A367419

/-! ## A367419.P10440785099420601746

`A000188(record[A350390(n+1)])`
-/

namespace A367419.P10440785099420601746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A367419.P10440785099420601746

namespace A367419

/-- `A000188(record[A350390(n+1)])` -/
def P10440785099420601746.Spec : Prop :=
  ∀ n, P10440785099420601746.a n = A367419 (n + 1)

end A367419

/-! ## A367419.P224852445481992682

`A367407(n+1)/A007947(A367406(n+1))`
-/

namespace A367419.P224852445481992682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) : ℚ) / (A007947 (A367406 (n + 1)).toNat : ℚ)

end

end A367419.P224852445481992682

namespace A367419

/-- `A367407(n+1)/A007947(A367406(n+1))` -/
def P224852445481992682.Spec : Prop :=
  ∀ n, P224852445481992682.a n = (A367419 (n + 1) : ℚ)

end A367419

/-! ## A367419.P6392998593592420611

`A367407(n+1)/A007947(A367407(n+1)²)`
-/

namespace A367419.P6392998593592420611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367407 (n + 1) : ℚ) / (A007947 (A367407 (n + 1) ^ 2).toNat : ℚ)

end

end A367419.P6392998593592420611

namespace A367419

/-- `A367407(n+1)/A007947(A367407(n+1)²)` -/
def P6392998593592420611.Spec : Prop :=
  ∀ n, P6392998593592420611.a n = (A367419 (n + 1) : ℚ)

end A367419

/-!
# A367420: Numbers k with the property that if a Fibonacci number f is divisible by k then f is also divisible by 2*k.

The programs for A367420, there is no canonical definition to state claims against.
-/

/-! ## A367420.P13634781091581517287

`eq[A001177(2*(n+1)), A001177(n+1)]+1`
-/

namespace A367420.P13634781091581517287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367420.P13634781091581517287

/-! ## A367420.P7929350096955809016

`A065475(eq[A001177(2*(n+1)), A001177(n+1)])`
-/

namespace A367420.P7929350096955809016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A367420.P7929350096955809016

/-! ## A367420.P7958509255473328745

`lt[A037943(2*(n+1)), A037943(n+1)]+1`
-/

namespace A367420.P7958509255473328745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037943 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367420.P7958509255473328745

/-! ## A367420.P11757484864547510518

`eq[A047930(2*(n+1)), A047930(n+1)]+1`
-/

namespace A367420.P11757484864547510518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367420.P11757484864547510518

/-! ## A367420.P7104501814986794066

`eq[A213648(2*(n+2)), A213648(n+2)]+2`
-/

namespace A367420.P7104501814986794066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213648 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213648 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A367420.P7104501814986794066

/-!
# A367422: Number of inequivalent strict interval closure operators on a set of n elements.

The programs for A367422, there is no canonical definition to state claims against.
-/

/-! ## A367422.P13183032885704600524

`A307998(ceil(exp(n)))`
-/

namespace A367422.P13183032885704600524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307998 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A367422.P13183032885704600524

/-!
# A367423: Expansion of e.g.f. 1 / sqrt(1 + log(1 - 2*x)).

The programs for A367423, there is no canonical definition to state claims against.
-/

/-! ## A367423.P8514976187553472878

`A210715(A000669(n+1))+A210661(n)`
-/

namespace A367423.P8514976187553472878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210715 (A000669 (n + 1)).toNat + A210661 n

end

end A367423.P8514976187553472878

/-! ## A367423.P3997532385499726736

`A135745(n+1)-A193879(A000108(n))`
-/

namespace A367423.P3997532385499726736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135745 (n + 1) - A193879 (A000108 n).toNat

end

end A367423.P3997532385499726736

/-!
# A367424: Expansion of e.g.f. 1 / (1 + log(1 - 3*x))^(1/3).

The programs for A367424, there is no canonical definition to state claims against.
-/

/-! ## A367424.P1357420455353944207

`A171405(∑[A217900(n)])`
-/

namespace A367424.P1357420455353944207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367424.P1357420455353944207

/-!
# A367425: Expansion of e.g.f. 1 / (1 + log(1 - 3*x))^(2/3).

The programs for A367425, there is no canonical definition to state claims against.
-/

/-! ## A367425.P12047857964839071917

`A310638(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A367425.P12047857964839071917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310638 ((n : ℤ) * a (n - 1)).toNat

end

end A367425.P12047857964839071917

/-!
# A367426: Expansion of e.g.f. 1 / (1 + log(1 - 4*x))^(1/4).

The programs for A367426, there is no canonical definition to state claims against.
-/

/-! ## A367426.P5867108516221968861

`or(1, A317557(A348901(n)))`
-/

namespace A367426.P5867108516221968861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317557 (A348901 n).toNat)

end

end A367426.P5867108516221968861

/-!
# A367428: Expansion of e.g.f. 1 / (1 - log(1 + 3*x))^(2/3).

The programs for A367428, there is no canonical definition to state claims against.
-/

/-! ## A367428.P13454186391726445682

`A348268(A040976(n+1)^A241652(n))`
-/

namespace A367428.P13454186391726445682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 (SequenceMachineLib.roundAway ((A040976 (n + 1) : ℚ) ^ (A241652 n : ℤ))).toNat

end

end A367428.P13454186391726445682

/-!
# A367429: Expansion of e.g.f. 1 / (1 - log(1 + 4*x))^(3/4).

The programs for A367429, there is no canonical definition to state claims against.
-/

/-! ## A367429.P6045508876482204260

`∑[A333936(A259763(n))]`
-/

namespace A367429.P6045508876482204260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333936 (A259763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367429.P6045508876482204260

/-!
# A367430: a(1)=a(2)=a(3)=1; for n > 3, a(n) = a(n-1)*a(n-2)*a(n-3) + a(n-1) + a(n-2) + a(n-3).

The programs for A367430, the canonical program `A367430.P10425713696069377159` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367430 has offset 1).

The definition of A367430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)+a(n-1)+a(n-2)+a(n-3)` (program `A367430.P10425713696069377159`, by `A367430.P10425713696069377159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367430.P10425713696069377159

`a(n-1)*a(n-2)*a(n-3)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367430

/-- `a(n-1)*a(n-2)*a(n-3)+a(n-1)+a(n-2)+a(n-3)` -/
def P10425713696069377159.Spec : Prop :=
  ∀ n, (P10425713696069377159.a n : ℤ) = A367430 (n + 1)

theorem P10425713696069377159.correct : P10425713696069377159.Spec := by
  intro n
  simp only [A367430, Nat.add_sub_cancel]

end A367430

/-!
# A367432: Number of commutative discrete aggregation functions defined on the finite chain L_n={0,1,...,n-1,n} that are smooth.

The programs for A367432, there is no canonical definition to state claims against.
-/

/-! ## A367432.P2567770071866991682

`A154439(∏[a(n-1)+3])` with `a(0)=1, a(1)=2`
-/

namespace A367432.P2567770071866991682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A367432.P2567770071866991682

/-!
# A367435: Let PG(n) be the graph with one node for each free n-celled polyomino and edges between nodes corresponding to polyominoes that can be obtained from each other by moving one cell, where the intermediate (the set of cells remaining when the cell to be moved is detached) is required to be a (connected) polyomino. a(n) is the number of edges in PG(n).

The programs for A367435, there is no canonical definition to state claims against.
-/

/-! ## A367435.P6538797179191348516

`A251607(A081207(n))`
-/

namespace A367435.P6538797179191348516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251607 (A081207 n).toNat

end

end A367435.P6538797179191348516

/-! ## A367435.P5432673813709739348

`A059995(A026131(n+1))`
-/

namespace A367435.P5432673813709739348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A026131 (n + 1)).toNat

end

end A367435.P5432673813709739348

/-!
# A367436: Number of Hamiltonian cycles in the polyomino graph PG(n) defined in A367435.

The programs for A367436, there is no canonical definition to state claims against.
-/

/-! ## A367436.P12811780194215000358

`A059966(8*a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A367436.P12811780194215000358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n a =>
  A059966 (8 * a (n - 1)).toNat

end

end A367436.P12811780194215000358

/-!
# A367437: Maximum degree of the polyomino graph PG(n) defined in A367435.

The programs for A367437, there is no canonical definition to state claims against.
-/

/-! ## A367437.P8037537753928907568

`A367124(n+1)-A037909(A004086(3*n+1))`
-/

namespace A367437.P8037537753928907568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367124 (n + 1) - A037909 (A004086 (3 * n + 1)).toNat

end

end A367437.P8037537753928907568

/-! ## A367437.P17579330038245427098

`A367124(n+1)-A268310(A000108(n))`
-/

namespace A367437.P17579330038245427098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367124 (n + 1) - A268310 (A000108 n).toNat

end

end A367437.P17579330038245427098

/-!
# A367442: Number of discrete uninorms defined on the finite chain L_n={0,1,...,n-1,n}.

The programs for A367442, there is no canonical definition to state claims against.
-/

/-! ## A367442.P5545703441000371354

`A074664(n+3)-A038760(A058381(n))`
-/

namespace A367442.P5545703441000371354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074664 (n + 3) - A038760 (A058381 n).toNat

end

end A367442.P5545703441000371354

/-! ## A367442.P2015149827693690459

`A004151(record[A152431(n+4)])`
-/

namespace A367442.P2015149827693690459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152431 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A367442.P2015149827693690459

/-!
# A367448: Number of chordal graphs on n vertices with a fixed perfect elimination ordering (e.g., 1,2,3,...,n).

The programs for A367448, there is no canonical definition to state claims against.
-/

/-! ## A367448.P7799659145533702628

`A240225((n+3)^n)`
-/

namespace A367448.P7799659145533702628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240225 ((n + 3) ^ n)

end

end A367448.P7799659145533702628

/-!
# A367449: Numbers k for which there are exactly k pairs (i, j), 1 <= i < j < k, such that i + j is a divisor of k.

The programs for A367449, there is no canonical definition to state claims against.
-/

/-! ## A367449.P3338601945969833285

`eq[A028310(n), A367588(n)]`
-/

namespace A367449.P3338601945969833285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P3338601945969833285

/-! ## A367449.P17117363769228589969

`eq[A274922(n), A367588(n)]`
-/

namespace A367449.P17117363769228589969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P17117363769228589969

/-! ## A367449.P4738796569011998252

`eq[A055456(n+1), A367588(n)]`
-/

namespace A367449.P4738796569011998252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P4738796569011998252

/-! ## A367449.P8552229826752019757

`eq[A060000(n+1), A367588(n)]`
-/

namespace A367449.P8552229826752019757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P8552229826752019757

/-! ## A367449.P4008863114051410424

`eq[A065190(n+1), A367588(n)]`
-/

namespace A367449.P4008863114051410424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P4008863114051410424

/-! ## A367449.P91266513330438312

`eq[A085229(n+1), A367588(n)]`
-/

namespace A367449.P91266513330438312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P91266513330438312

/-! ## A367449.P2503608759643643390

`eq[A123882(n+1), A367588(n)]`
-/

namespace A367449.P2503608759643643390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P2503608759643643390

/-! ## A367449.P2472947750295896787

`eq[A131055(n+1), A367588(n)]`
-/

namespace A367449.P2472947750295896787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P2472947750295896787

/-! ## A367449.P6048915665578904413

`eq[A138153(n+1), A367588(n)]`
-/

namespace A367449.P6048915665578904413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P6048915665578904413

/-! ## A367449.P3120938729478184131

`eq[A334998(n+1), A367588(n)]`
-/

namespace A367449.P3120938729478184131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367449.P3120938729478184131

/-!
# A367451: Squares in A353729.

The programs for A367451, there is no canonical definition to state claims against.
-/

/-! ## A367451.P8137713238837289469

`∩[A353729(n+1), n²]`
-/

namespace A367451.P8137713238837289469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353729 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A367451.P8137713238837289469

/-!
# A367452: Number of semiprime divisors of the n-th squarefree number (A005117).

The programs for A367452, the canonical program `A367452.P7767134623481376132` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367452 has offset 1).

The definition of A367452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367452.P7767134623481376132

`A086971(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A367452

/-- `A086971(A005117(n+1))` -/
def P7767134623481376132.Spec : Prop :=
  ∀ n, P7767134623481376132.a n = A367452 (n + 1)

theorem P7767134623481376132.correct : P7767134623481376132.Spec := by
  intro n
  simp only [A367452, Nat.add_sub_cancel]

end A367452

/-! ## A367452.P2521008428584460520

`3%A327521(n+1)`
-/

namespace A367452.P2521008428584460520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A327521 (n + 1))

end

end A367452.P2521008428584460520

namespace A367452

/-- `3%A327521(n+1)` -/
def P2521008428584460520.Spec : Prop :=
  ∀ n, P2521008428584460520.a n = A367452 (n + 1)

end A367452

/-! ## A367452.P4327779516132782190

`C(A072047(n+1), 2)`
-/

namespace A367452.P4327779516132782190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072047 (n + 1)).toNat 2

end

end A367452.P4327779516132782190

namespace A367452

/-- `C(A072047(n+1), 2)` -/
def P4327779516132782190.Spec : Prop :=
  ∀ n, (P4327779516132782190.a n : ℤ) = A367452 (n + 1)

end A367452

/-! ## A367452.P14767844400791077814

`C(log2(A072048(n+1)), 2)`
-/

namespace A367452.P14767844400791077814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A072048 (n + 1) : ℝ))).toNat 2

end

end A367452.P14767844400791077814

namespace A367452

/-- `C(log2(A072048(n+1)), 2)` -/
def P14767844400791077814.Spec : Prop :=
  ∀ n, (P14767844400791077814.a n : ℤ) = A367452 (n + 1)

end A367452

/-! ## A367452.P625479128143605732

`C(∑{e}[record[A007947(n+1)], #], 2)`
-/

namespace A367452.P625479128143605732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) 2

end

end A367452.P625479128143605732

namespace A367452

/-- `C(∑{e}[record[A007947(n+1)], #], 2)` -/
def P625479128143605732.Spec : Prop :=
  ∀ n, (P625479128143605732.a n : ℤ) = A367452 (n + 1)

end A367452

/-! ## A367452.P5420619154415810872

`A086971(comp[A105570(n)])`
-/

namespace A367452.P5420619154415810872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A367452.P5420619154415810872

namespace A367452

/-- `A086971(comp[A105570(n)])` -/
def P5420619154415810872.Spec : Prop :=
  ∀ n, P5420619154415810872.a n = A367452 (n + 1)

end A367452

/-! ## A367452.P4641031927705294187

`A007963(A072048(n+1))`
-/

namespace A367452.P4641031927705294187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 (A072048 (n + 1)).toNat

end

end A367452.P4641031927705294187

namespace A367452

/-- `A007963(A072048(n+1))` -/
def P4641031927705294187.Spec : Prop :=
  ∀ n, P4641031927705294187.a n = A367452 (n + 1)

end A367452

/-! ## A367452.P11048602815430887714

`A000642(A327521(n+1))`
-/

namespace A367452.P11048602815430887714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000642 (A327521 (n + 1)).toNat

end

end A367452.P11048602815430887714

namespace A367452

/-- `A000642(A327521(n+1))` -/
def P11048602815430887714.Spec : Prop :=
  ∀ n, P11048602815430887714.a n = A367452 (n + 1)

end A367452

/-! ## A367452.P18076472393160398961

`A079275(A076144(n+2))`
-/

namespace A367452.P18076472393160398961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (A076144 (n + 2)).toNat

end

end A367452.P18076472393160398961

namespace A367452

/-- `A079275(A076144(n+2))` -/
def P18076472393160398961.Spec : Prop :=
  ∀ n, P18076472393160398961.a n = A367452 (n + 1)

end A367452

/-!
# A367455: Numbers not divisible by 6 that are neither squarefree nor prime powers.

The programs for A367455, the canonical program `A367455.P9702420708223161966` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367455 has offset 1).

The definition of A367455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367455.P10179275495321730227

`filter[A368089(n+1), A097325(#)]`
-/

namespace A367455.P10179275495321730227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367455.P10179275495321730227

namespace A367455

/-- `filter[A368089(n+1), A097325(#)]` -/
def P10179275495321730227.Spec : Prop :=
  ∀ n, P10179275495321730227.a n = A367455 (n + 1)

end A367455

/-! ## A367455.P16157364326683742644

`filter[A367268(n+1), A097325(#)]`
-/

namespace A367455.P16157364326683742644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367455.P16157364326683742644

namespace A367455

/-- `filter[A367268(n+1), A097325(#)]` -/
def P16157364326683742644.Spec : Prop :=
  ∀ n, P16157364326683742644.a n = A367455 (n + 1)

end A367455

/-! ## A367455.P9702420708223161966

`filter[A126706(n+1), A097325(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367455

/-- `filter[A126706(n+1), A097325(#)]` -/
def P9702420708223161966.Spec : Prop :=
  ∀ n, P9702420708223161966.a n = A367455 (n + 1)

theorem P9702420708223161966.correct : P9702420708223161966.Spec := by
  intro n
  simp only [A367455, Nat.add_sub_cancel]

end A367455

/-! ## A367455.P18125497777316549418

`∩[A047253(n+1), A126706(n+1)]`
-/

namespace A367455.P18125497777316549418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367455.P18125497777316549418

namespace A367455

/-- `∩[A047253(n+1), A126706(n+1)]` -/
def P18125497777316549418.Spec : Prop :=
  ∀ n, (P18125497777316549418.a n : ℤ) = A367455 (n + 1)

end A367455

/-! ## A367455.P3001587678070759605

`∩[A047253(n+1), A367268(n+1)]`
-/

namespace A367455.P3001587678070759605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367455.P3001587678070759605

namespace A367455

/-- `∩[A047253(n+1), A367268(n+1)]` -/
def P3001587678070759605.Spec : Prop :=
  ∀ n, (P3001587678070759605.a n : ℤ) = A367455 (n + 1)

end A367455

/-! ## A367455.P18410822474833567288

`∩[A047253(n+1), A368089(n+1)]`
-/

namespace A367455.P18410822474833567288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367455.P18410822474833567288

namespace A367455

/-- `∩[A047253(n+1), A368089(n+1)]` -/
def P18410822474833567288.Spec : Prop :=
  ∀ n, (P18410822474833567288.a n : ℤ) = A367455 (n + 1)

end A367455

/-! ## A367455.P3104223599720131963

`∩[A173276(3*(n+1)), A126706(n+1)]`
-/

namespace A367455.P3104223599720131963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367455.P3104223599720131963

namespace A367455

/-- `∩[A173276(3*(n+1)), A126706(n+1)]` -/
def P3104223599720131963.Spec : Prop :=
  ∀ n, (P3104223599720131963.a n : ℤ) = A367455 (n + 1)

end A367455

/-! ## A367455.P6085110796016447690

`∩[A002266(A004280(3*n+4)), A126706(n+1)]`
-/

namespace A367455.P6085110796016447690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004280 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367455.P6085110796016447690

namespace A367455

/-- `∩[A002266(A004280(3*n+4)), A126706(n+1)]` -/
def P6085110796016447690.Spec : Prop :=
  ∀ n, (P6085110796016447690.a n : ℤ) = A367455 (n + 1)

end A367455

/-!
# A367456: Expansion of (1 - x)/(1 - x - 7*x^2).

The programs for A367456, the canonical program `A367456.P3682776033798509308` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367456 has offset 0).

The definition of A367456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-7x^2))` (program `A367456.P3682776033798509308`, by `A367456.P3682776033798509308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367456.P3682776033798509308

`ogf((1-x)/(1-x-7x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367456

/-- `ogf((1-x)/(1-x-7x^2))` -/
def P3682776033798509308.Spec : Prop :=
  ∀ n, P3682776033798509308.a n = A367456 n

theorem P3682776033798509308.correct : P3682776033798509308.Spec := by
  intro n
  simp only [A367456]

end A367456

/-! ## A367456.P4084836714002621005

`a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A367456.P4084836714002621005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 7 * a (n - 2)

end

end A367456.P4084836714002621005

namespace A367456

/-- `a(n-1)+7*a(n-2)` -/
def P4084836714002621005.Spec : Prop :=
  ∀ n, (P4084836714002621005.a n : ℤ) = A367456 n

end A367456

/-! ## A367456.P4585474056464647966

`8*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A367456.P4585474056464647966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  8 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A367456.P4585474056464647966

namespace A367456

/-- `8*a(n-2)-(a(n-2)-a(n-1))` -/
def P4585474056464647966.Spec : Prop :=
  ∀ n, P4585474056464647966.a n = A367456 n

end A367456

/-! ## A367456.P8148717155094678729

`Δ[A015442(n)]`
-/

namespace A367456.P8148717155094678729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367456.P8148717155094678729

namespace A367456

/-- `Δ[A015442(n)]` -/
def P8148717155094678729.Spec : Prop :=
  ∀ n, P8148717155094678729.a n = A367456 n

end A367456

/-! ## A367456.P11264553790836282754

`A015442(n+1)-A015442(n)`
-/

namespace A367456.P11264553790836282754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015442 (n + 1) - A015442 n

end

end A367456.P11264553790836282754

namespace A367456

/-- `A015442(n+1)-A015442(n)` -/
def P11264553790836282754.Spec : Prop :=
  ∀ n, P11264553790836282754.a n = A367456 n

end A367456

/-!
# A367457: Number of maximal independent vertex sets in the n X n camel graph.

The programs for A367457, there is no canonical definition to state claims against.
-/

/-! ## A367457.P9157742917990817431

`C(25, dr(A241461(2*n+1)))`
-/

namespace A367457.P9157742917990817431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 25 (SequenceMachineLib.digitalRoot (A241461 (2 * n + 1)))

end

end A367457.P9157742917990817431

/-!
# A367462: Expansion of (1/x) * Series_Reversion( x / (1+x+x^3/(1+x)) ).

The programs for A367462, there is no canonical definition to state claims against.
-/

/-! ## A367462.P10860417313514918704

`A157133(n)+A102683(A213092(n))`
-/

namespace A367462.P10860417313514918704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157133 n + A102683 (A213092 n).toNat

end

end A367462.P10860417313514918704

/-! ## A367462.P1727357944324162699

`A177849(A048469(n)+8)+A102683(A213092(n))`
-/

namespace A367462.P1727357944324162699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048469 n + 8).toNat + A102683 (A213092 n).toNat

end

end A367462.P1727357944324162699

/-! ## A367462.P5249279390645880164

`A177849(A048469(n)+8)-A112053(A357932(n))`
-/

namespace A367462.P5249279390645880164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048469 n + 8).toNat - A112053 (A357932 n).toNat

end

end A367462.P5249279390645880164

/-! ## A367462.P16344845789891829809

`A177849(A048469(n)+8)+A112053(A058113(n+1))`
-/

namespace A367462.P16344845789891829809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048469 n + 8).toNat + A112053 (A058113 (n + 1)).toNat

end

end A367462.P16344845789891829809

/-! ## A367462.P5901287553260554411

`A177849(A048469(n)+8)+A112053(A334433(n+1))`
-/

namespace A367462.P5901287553260554411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048469 n + 8).toNat + A112053 (A334433 (n + 1)).toNat

end

end A367462.P5901287553260554411

/-!
# A367463: The orders, without repetition, of the subquotients of finite groups with irreducible representations in GL_4(Z).

The programs for A367463, there is no canonical definition to state claims against.
-/

/-! ## A367463.P11674200190222452696

`∩[A036965(n+1), A367501(n+1)]`
-/

namespace A367463.P11674200190222452696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367463.P11674200190222452696

/-! ## A367463.P10033853445302401254

`A107602(A367501(n+1))`
-/

namespace A367463.P10033853445302401254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107602 (A367501 (n + 1)).toNat

end

end A367463.P10033853445302401254

/-! ## A367463.P13419556550937416413

`A367501(A132263(n+1))`
-/

namespace A367463.P13419556550937416413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367501 (A132263 (n + 1)).toNat

end

end A367463.P13419556550937416413

/-! ## A367463.P646625572508791238

`∩[A065108(n+1), A367501(n+1)]`
-/

namespace A367463.P646625572508791238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367463.P646625572508791238

/-! ## A367463.P5356078348521051300

`∩[A295235(n+1), A367501(n+1)]`
-/

namespace A367463.P5356078348521051300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367463.P5356078348521051300

/-!
# A367464: Numbers k such that k^5*2^k - 1 is a prime.

The programs for A367464, there is no canonical definition to state claims against.
-/

/-! ## A367464.P18435499815345039206

`A146974(A148014(n+1))`
-/

namespace A367464.P18435499815345039206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146974 (A148014 (n + 1)).toNat

end

end A367464.P18435499815345039206

/-! ## A367464.P3166587855103716811

`A367909(A099598(n))/2`
-/

namespace A367464.P3166587855103716811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367909 (A099598 n).toNat : ℚ) / 2

end

end A367464.P3166587855103716811

/-!
# A367466: Sum of the final digits of the divisors of n.

The programs for A367466, the canonical program `A367466.P6704983059256722325` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367466 has offset 1).

The definition of A367466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367466.P6704983059256722325

`∑{d}[n+1, #%10]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367466

/-- `∑{d}[n+1, #%10]` -/
def P6704983059256722325.Spec : Prop :=
  ∀ n, (P6704983059256722325.a n : ℤ) = A367466 (n + 1)

theorem P6704983059256722325.correct : P6704983059256722325.Spec := by
  intro n
  simp only [A367466, Nat.add_sub_cancel]

end A367466

/-! ## A367466.P7758061789450967566

`∑{d}[n+1, A010879(#)]`
-/

namespace A367466.P7758061789450967566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010879 d

end

end A367466.P7758061789450967566

namespace A367466

/-- `∑{d}[n+1, A010879(#)]` -/
def P7758061789450967566.Spec : Prop :=
  ∀ n, P7758061789450967566.a n = A367466 (n + 1)

end A367466

/-!
# A367467: Lexicographically earliest infinite sequence of positive integers such that a(n + a(n)) is distinct for all n.

The programs for A367467, there is no canonical definition to state claims against.
-/

/-! ## A367467.P16978060984790316103

`A325784(n+1)-A124010(A000837(3*n))`
-/

namespace A367467.P16978060984790316103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (n + 1) - A124010 (A000837 (3 * n)).toNat

end

end A367467.P16978060984790316103

/-!
# A367469: a(n) is the total number of movable letters in all members of the partitions of [n].

The programs for A367469, there is no canonical definition to state claims against.
-/

/-! ## A367469.P971583643051638988

`A070071(n+1)-A087648(n)`
-/

namespace A367469.P971583643051638988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070071 (n + 1) - A087648 n

end

end A367469.P971583643051638988

/-! ## A367469.P16923745287917635644

`∑[A002266(∑[A366452(n+1)])]`
-/

namespace A367469.P16923745287917635644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366452 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367469.P16923745287917635644

/-!
# A367470: Expansion of e.g.f. 1 / (3 - 2 * exp(x))^2.

The programs for A367470, there is no canonical definition to state claims against.
-/

/-! ## A367470.P1773086486769849649

`4*A211220(a(n-1))` with `a(0)=1`
-/

namespace A367470.P1773086486769849649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A211220 (a (n - 1)).toNat

end

end A367470.P1773086486769849649

/-!
# A367472: Expansion of e.g.f. 1 / (4 - 3 * exp(x))^2.

The programs for A367472, there is no canonical definition to state claims against.
-/

/-! ## A367472.P3551399645273637240

`A008458(A330764(n+1)-A005804(n+1))`
-/

namespace A367472.P3551399645273637240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A330764 (n + 1) - A005804 (n + 1)).toNat

end

end A367472.P3551399645273637240

/-!
# A367474: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^2.

The programs for A367474, there is no canonical definition to state claims against.
-/

/-! ## A367474.P13040416512266544174

`A285109(A375173(n)+A015565(n))`
-/

namespace A367474.P13040416512266544174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (A375173 n + A015565 n).toNat

end

end A367474.P13040416512266544174

/-!
# A367475: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^3.

The programs for A367475, there is no canonical definition to state claims against.
-/

/-! ## A367475.P9819819064285919877

`A315718(A020554(n+1)-A286761(n))`
-/

namespace A367475.P9819819064285919877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315718 (A020554 (n + 1) - A286761 n).toNat

end

end A367475.P9819819064285919877

/-!
# A367476: Sum of the final digits of the distinct prime divisors of n.

The programs for A367476, the canonical program `A367476.P8650596764351560168` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367476 has offset 1).

The definition of A367476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367476.P8650596764351560168

`∑{p}[n+1, #%10]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367476

/-- `∑{p}[n+1, #%10]` -/
def P8650596764351560168.Spec : Prop :=
  ∀ n, (P8650596764351560168.a n : ℤ) = A367476 (n + 1)

theorem P8650596764351560168.correct : P8650596764351560168.Spec := by
  intro n
  simp only [A367476, Nat.add_sub_cancel]

end A367476

/-! ## A367476.P14237674905548221555

`∑{p}[n+1, A010879(#)]`
-/

namespace A367476.P14237674905548221555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010879 p

end

end A367476.P14237674905548221555

namespace A367476

/-- `∑{p}[n+1, A010879(#)]` -/
def P14237674905548221555.Spec : Prop :=
  ∀ n, P14237674905548221555.a n = A367476 (n + 1)

end A367476

/-! ## A367476.P5721221980527308707

`∑{p}[n+1, A065881(#)]`
-/

namespace A367476.P5721221980527308707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065881 p

end

end A367476.P5721221980527308707

namespace A367476

/-- `∑{p}[n+1, A065881(#)]` -/
def P5721221980527308707.Spec : Prop :=
  ∀ n, P5721221980527308707.a n = A367476 (n + 1)

end A367476

/-! ## A367476.P7722127448560069615

`∑{p}[n+1, A274206(#)]`
-/

namespace A367476.P7722127448560069615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A274206 p

end

end A367476.P7722127448560069615

namespace A367476

/-- `∑{p}[n+1, A274206(#)]` -/
def P7722127448560069615.Spec : Prop :=
  ∀ n, P7722127448560069615.a n = A367476 (n + 1)

end A367476

/-! ## A367476.P17697838428002253823

`∑{p}[A238628(2*n+3), A054055(#)]`
-/

namespace A367476.P17697838428002253823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054055 p

end

end A367476.P17697838428002253823

namespace A367476

/-- `∑{p}[A238628(2*n+3), A054055(#)]` -/
def P17697838428002253823.Spec : Prop :=
  ∀ n, P17697838428002253823.a n = A367476 (n + 1)

end A367476

/-!
# A367481: Primitive practical numbers of the form 2 * 3^i * prime(k).

The programs for A367481, there is no canonical definition to state claims against.
-/

/-! ## A367481.P9549785465756094838

`A001747(n+4)*A064235(A233583(n+1))`
-/

namespace A367481.P9549785465756094838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 4) * A064235 (A233583 (n + 1)).toNat

end

end A367481.P9549785465756094838

/-! ## A367481.P1719088027854231430

`A000040(n+3)*A173462(A117855(n+1))`
-/

namespace A367481.P1719088027854231430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A173462 (A117855 (n + 1)).toNat

end

end A367481.P1719088027854231430

/-!
# A367482: Number of nontrivial divisors of n whose arithmetic derivative is coprime to n.

The programs for A367482, there is no canonical definition to state claims against.
-/

/-! ## A367482.P11086175433436163616

`A079275(n+1)+A001221(A166140(n+1)%A167486(n+1))`
-/

namespace A367482.P11086175433436163616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 1) + A001221 (Int.tmod (A166140 (n + 1)) (A167486 (n + 1))).toNat

end

end A367482.P11086175433436163616

/-! ## A367482.P8860072603113811334

`A006046(∑{e}[∏{p}[n+1, A073682(#)], #])`
-/

namespace A367482.P8860072603113811334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A073682 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A367482.P8860072603113811334

/-! ## A367482.P18022437109377509258

`A046746(∑{e}[∏{p}[n+1, A073682(#)], #])`
-/

namespace A367482.P18022437109377509258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A073682 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A367482.P18022437109377509258

/-! ## A367482.P3868458895047130341

`A279784(∑{p}[n+1, gcd(n, #)])%A246325(n)`
-/

namespace A367482.P3868458895047130341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279784 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)) (A246325 n)

end

end A367482.P3868458895047130341

/-! ## A367482.P3130648379360493055

`A073210((∏{p}[n+1, 2%#²]-1)%A374249(n+4))`
-/

namespace A367482.P3130648379360493055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073210 (Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℤ) - 1) (A374249 (n + 4))).toNat

end

end A367482.P3130648379360493055

/-! ## A367482.P9449970043323299045

`A004273((∑{p}[n+1, n²%#]%(n+1))%A213342(n+2))`
-/

namespace A367482.P9449970043323299045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (((∑ p ∈ Nat.primeFactors (f1 n), n ^ 2 % p) % (n + 1) : ℕ) : ℤ) (A213342 (n + 2))).toNat

end

end A367482.P9449970043323299045

/-! ## A367482.P12554469457876921421

`A195827(A243836(n)+A034444(n+1))`
-/

namespace A367482.P12554469457876921421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (A243836 n + A034444 (n + 1)).toNat

end

end A367482.P12554469457876921421

/-! ## A367482.P7154355322678160071

`A252736(A066048(n+1)^A001221(n+1))`
-/

namespace A367482.P7154355322678160071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (SequenceMachineLib.roundAway ((A066048 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A367482.P7154355322678160071

/-! ## A367482.P9291777893918871185

`A050292(A034444(n+1))%A326537(n+1)`
-/

namespace A367482.P9291777893918871185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050292 (A034444 (n + 1)).toNat) (A326537 (n + 1))

end

end A367482.P9291777893918871185

/-! ## A367482.P5046254128970726673

`A367095(A046523(n+1))%A000926(n+1)`
-/

namespace A367482.P5046254128970726673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367095 (A046523 (n + 1)).toNat) (A000926 (n + 1))

end

end A367482.P5046254128970726673

/-!
# A367483: Sum of the arithmetic derivatives of the nontrivial divisors of n whose arithmetic derivative is coprime to n.

The programs for A367483, there is no canonical definition to state claims against.
-/

/-! ## A367483.P11227253661607065379

`A348281(A061537(n+1))`
-/

namespace A367483.P11227253661607065379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348281 (A061537 (n + 1)).toNat

end

end A367483.P11227253661607065379

/-! ## A367483.P11030443790980584281

`A348281(A062509(n+1))`
-/

namespace A367483.P11030443790980584281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348281 (A062509 (n + 1)).toNat

end

end A367483.P11030443790980584281

/-! ## A367483.P13574384005302679641

`A348281(A066729(n+1))`
-/

namespace A367483.P13574384005302679641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348281 (A066729 (n + 1)).toNat

end

end A367483.P13574384005302679641

/-! ## A367483.P9617099394419563541

`A348281(A072500(n+1))`
-/

namespace A367483.P9617099394419563541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348281 (A072500 (n + 1)).toNat

end

end A367483.P9617099394419563541

/-! ## A367483.P7550570633706699456

`A348281(A078599(n+1))`
-/

namespace A367483.P7550570633706699456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348281 (A078599 (n + 1)).toNat

end

end A367483.P7550570633706699456

/-!
# A367484: Number of integers of the form (x^4 + y^4) mod 3^n; a(n) = A289559(3^n).

The programs for A367484, the canonical program `A367484.P5063350859963674840` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367484 has offset 0).

The definition of A367484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367484.P10931023134823147375

`2*3^(n-1)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=19`
-/

namespace A367484.P10931023134823147375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 7, 19] fun n a =>
  2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 4)

end

end A367484.P10931023134823147375

namespace A367484

/-- `2*3^(n-1)+a(n-4)` -/
def P10931023134823147375.Spec : Prop :=
  ∀ n, P10931023134823147375.a n = (A367484 n : ℚ)

end A367484

/-! ## A367484.P5063350859963674840

`3*a(n-1)+a(n-4)-3*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=19, a(4)=55`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367484

/-- `3*a(n-1)+a(n-4)-3*a(n-5)` -/
def P5063350859963674840.Spec : Prop :=
  ∀ n, P5063350859963674840.a n = A367484 n

theorem P5063350859963674840.correct : P5063350859963674840.Spec := by
  intro n
  simp only [A367484]

end A367484

/-! ## A367484.P5226425509673652139

`2*ceil(3^(n+3)/80)-1`
-/

namespace A367484.P5226425509673652139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(3 ^ (n + 3) : ℚ) / 80⌉ - 1

end

end A367484.P5226425509673652139

namespace A367484

/-- `2*ceil(3^(n+3)/80)-1` -/
def P5226425509673652139.Spec : Prop :=
  ∀ n, P5226425509673652139.a n = A367484 n

end A367484

/-! ## A367484.P16669234586922539584

`A289559(3^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367484.P16669234586922539584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289559 (3 ^ n)

end

end A367484.P16669234586922539584

namespace A367484

/-- `A289559(3^n)` -/
def P16669234586922539584.Spec : Prop :=
  ∀ n, P16669234586922539584.a n = A367484 n

end A367484

/-! ## A367484.P7819115127952357801

`ceil(A122983(n+3)/10)`
-/

namespace A367484.P7819115127952357801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122983 (n + 3) : ℚ) / 10⌉

end

end A367484.P7819115127952357801

namespace A367484

/-- `ceil(A122983(n+3)/10)` -/
def P7819115127952357801.Spec : Prop :=
  ∀ n, P7819115127952357801.a n = A367484 n

end A367484

/-! ## A367484.P3347321084777970420

`ceil(A007051(n+3)/20)`
-/

namespace A367484.P3347321084777970420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007051 (n + 3) : ℚ) / 20⌉

end

end A367484.P3347321084777970420

namespace A367484

/-- `ceil(A007051(n+3)/20)` -/
def P3347321084777970420.Spec : Prop :=
  ∀ n, P3347321084777970420.a n = A367484 n

end A367484

/-!
# A367485: Expansion of e.g.f. 1/(3 - 2*exp(x))^(x/2).

The programs for A367485, there is no canonical definition to state claims against.
-/

/-! ## A367485.P7229413797390223267

`A111709(A052667(n)-A086456(n))`
-/

namespace A367485.P7229413797390223267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111709 (A052667 n - A086456 n).toNat

end

end A367485.P7229413797390223267

/-! ## A367485.P8839477472448079033

`A370889(n)-A000007(A006129(n))`
-/

namespace A367485.P8839477472448079033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370889 n - A000007 (A006129 n).toNat

end

end A367485.P8839477472448079033

/-!
# A367486: Expansion of e.g.f. 1/(3 - 2*exp(x))^x.

The programs for A367486, there is no canonical definition to state claims against.
-/

/-! ## A367486.P15588872862336263707

`A089949(n)+A063942(A002295(n))`
-/

namespace A367486.P15588872862336263707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 n + A063942 (A002295 n).toNat

end

end A367486.P15588872862336263707

/-! ## A367486.P9536283993363421392

`A140201(A000793(n)*A353994(n))`
-/

namespace A367486.P9536283993363421392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A000793 n * A353994 n).toNat

end

end A367486.P9536283993363421392

/-!
# A367487: Expansion of e.g.f. 1/(4 - 3*exp(x))^(x/2).

The programs for A367487, there is no canonical definition to state claims against.
-/

/-! ## A367487.P2288557880603716083

`A126206((n+1)^(n+1))`
-/

namespace A367487.P2288557880603716083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126206 ((n + 1) ^ (n + 1))

end

end A367487.P2288557880603716083

/-!
# A367488: Expansion of e.g.f. 1/(4 - 3*exp(x))^x.

The programs for A367488, there is no canonical definition to state claims against.
-/

/-! ## A367488.P4670941153262352824

`A107629(A002426(n))-n`
-/

namespace A367488.P4670941153262352824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107629 (A002426 n).toNat - (n : ℤ)

end

end A367488.P4670941153262352824

/-!
# A367489: Expansion of e.g.f. -x * log(3 - 2*exp(x)).

The programs for A367489, there is no canonical definition to state claims against.
-/

/-! ## A367489.P4298341602948764553

`2*A351007(A323093(3*n))`
-/

namespace A367489.P4298341602948764553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351007 (A323093 (3 * n)).toNat

end

end A367489.P4298341602948764553

/-! ## A367489.P9115441934872000056

`A271884(A270831(n+1))*A368097(n)`
-/

namespace A367489.P9115441934872000056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271884 (A270831 (n + 1)).toNat * A368097 n

end

end A367489.P9115441934872000056

/-!
# A367490: Expansion of e.g.f. -x * log(4 - 3*exp(x)).

The programs for A367490, there is no canonical definition to state claims against.
-/

/-! ## A367490.P10203291425781359211

`6*A227762(n!)`
-/

namespace A367490.P10203291425781359211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A227762 (Nat.factorial n)

end

end A367490.P10203291425781359211

/-!
# A367491: Lexicographically least increasing sequence, starting with 2, such that no two terms (possibly identical) sum to a Fibonacci number.

The programs for A367491, there is no canonical definition to state claims against.
-/

/-! ## A367491.P17301155362913828679

`lt[Δ[A163901(n+1)], A001223(n+2)]`
-/

namespace A367491.P17301155362913828679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A367491.P17301155362913828679

/-! ## A367491.P8009934121651109780

`A318991(2*(n+1))+A005614(A034729(n+1))`
-/

namespace A367491.P8009934121651109780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (2 * (n + 1)) + A005614 (A034729 (n + 1)).toNat

end

end A367491.P8009934121651109780

/-! ## A367491.P10152593322415085320

`A047215(n+1)-A297036(A174641(n+1))`
-/

namespace A367491.P10152593322415085320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 (n + 1) - A297036 (A174641 (n + 1)).toNat

end

end A367491.P10152593322415085320

/-!
# A367492: a(n) = Product_{k=0..n} (k+1)!^k.

The programs for A367492, there is no canonical definition to state claims against.
-/

/-! ## A367492.P9412462626288850013

`∏[(n+1)!^n]`
-/

namespace A367492.P9412462626288850013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A367492.P9412462626288850013

/-! ## A367492.P17669033019333457383

`∏[(∏[sqrt(n+1)]^n)²]`
-/

namespace A367492.P17669033019333457383
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j) ^ n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A367492.P17669033019333457383

/-!
# A367493: a(n) = Sum_{d|n} (n-d)^n.

The programs for A367493, there is no canonical definition to state claims against.
-/

/-! ## A367493.P508494504771537519

`∑{d}[n+1, (n+1-#)^(n+1)]`
-/

namespace A367493.P508494504771537519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ)) ^ (n + 1)

end

end A367493.P508494504771537519

/-!
# A367494: Number of (2+2)-free naturally labeled posets on [n].

The programs for A367494, there is no canonical definition to state claims against.
-/

/-! ## A367494.P10669241856128584128

`A037918(∏[A000041(n)])`
-/

namespace A367494.P10669241856128584128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367494.P10669241856128584128

/-! ## A367494.P13538037974482812554

`A037918(∏[A184641(n)])`
-/

namespace A367494.P13538037974482812554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367494.P13538037974482812554

/-!
# A367495: Number of up-down permutations p of [n] such that for all ii+1 differs from the number of elements p(k) between p(i+1) and p(i+2) for k>i+2.

The programs for A367495, there is no canonical definition to state claims against.
-/

/-! ## A367495.P4925781027263588636

`A325404(A239553(n))`
-/

namespace A367495.P4925781027263588636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A239553 n).toNat

end

end A367495.P4925781027263588636

/-! ## A367495.P8847167461109804287

`A325404(A000032(n)+1-n)`
-/

namespace A367495.P8847167461109804287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A000032 n + (1 - (n : ℤ))).toNat

end

end A367495.P8847167461109804287

/-! ## A367495.P11097373857313491874

`A325404(A062724(n)-A340500(3*n+2))`
-/

namespace A367495.P11097373857313491874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A062724 n - A340500 (3 * n + 2)).toNat

end

end A367495.P11097373857313491874

/-!
# A367496: Semiprimes k such that 2*k - 1 and 2*k + 1 are also semiprimes.

The programs for A367496, the canonical program `A367496.P16192145685333246276` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367496 has offset 1).

The definition of A367496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367496.P6228105305912432339

`∩[A111153(n+1), A111168(n+1)]`
-/

namespace A367496.P6228105305912432339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P6228105305912432339

namespace A367496

/-- `∩[A111153(n+1), A111168(n+1)]` -/
def P6228105305912432339.Spec : Prop :=
  ∀ n, (P6228105305912432339.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P2215960485700623741

`∩[A082130(n+1), A111153(n+1)]`
-/

namespace A367496.P2215960485700623741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P2215960485700623741

namespace A367496

/-- `∩[A082130(n+1), A111153(n+1)]` -/
def P2215960485700623741.Spec : Prop :=
  ∀ n, (P2215960485700623741.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P16192145685333246276

`∩[A082130(n+1), A111168(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A367496

/-- `∩[A082130(n+1), A111168(n+1)]` -/
def P16192145685333246276.Spec : Prop :=
  ∀ n, (P16192145685333246276.a n : ℤ) = A367496 (n + 1)

theorem P16192145685333246276.correct : P16192145685333246276.Spec := by
  intro n
  simp only [A367496, Nat.add_sub_cancel]

end A367496

/-! ## A367496.P17535186558280267725

`filter[A082130(n+1), A064911(#)]`
-/

namespace A367496.P17535186558280267725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367496.P17535186558280267725

namespace A367496

/-- `filter[A082130(n+1), A064911(#)]` -/
def P17535186558280267725.Spec : Prop :=
  ∀ n, P17535186558280267725.a n = A367496 (n + 1)

end A367496

/-! ## A367496.P3991718644753131251

`∩[A082130(n+1), A114455(n+1)]`
-/

namespace A367496.P3991718644753131251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P3991718644753131251

namespace A367496

/-- `∩[A082130(n+1), A114455(n+1)]` -/
def P3991718644753131251.Spec : Prop :=
  ∀ n, (P3991718644753131251.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P2236543906058676368

`∩[A111153(n+1), A114455(n+1)]`
-/

namespace A367496.P2236543906058676368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P2236543906058676368

namespace A367496

/-- `∩[A111153(n+1), A114455(n+1)]` -/
def P2236543906058676368.Spec : Prop :=
  ∀ n, (P2236543906058676368.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P16499532748704103561

`∩[A082130(n+1), A117360(n+1)]`
-/

namespace A367496.P16499532748704103561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P16499532748704103561

namespace A367496

/-- `∩[A082130(n+1), A117360(n+1)]` -/
def P16499532748704103561.Spec : Prop :=
  ∀ n, (P16499532748704103561.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P179036134518422204

`∩[A111168(n+1), A117360(n+1)]`
-/

namespace A367496.P179036134518422204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P179036134518422204

namespace A367496

/-- `∩[A111168(n+1), A117360(n+1)]` -/
def P179036134518422204.Spec : Prop :=
  ∀ n, (P179036134518422204.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P10956037859507292952

`∩[A001358(n+1), A082130(n+1)]`
-/

namespace A367496.P10956037859507292952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P10956037859507292952

namespace A367496

/-- `∩[A001358(n+1), A082130(n+1)]` -/
def P10956037859507292952.Spec : Prop :=
  ∀ n, (P10956037859507292952.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P9180781512461225583

`∩[A082130(n+1), A176540(n+1)]`
-/

namespace A367496.P9180781512461225583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P9180781512461225583

namespace A367496

/-- `∩[A082130(n+1), A176540(n+1)]` -/
def P9180781512461225583.Spec : Prop :=
  ∀ n, (P9180781512461225583.a n : ℤ) = A367496 (n + 1)

end A367496

/-! ## A367496.P1764447903890526770

`∩[A111168(n+1), A234093(n+1)]`
-/

namespace A367496.P1764447903890526770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367496.P1764447903890526770

namespace A367496

/-- `∩[A111168(n+1), A234093(n+1)]` -/
def P1764447903890526770.Spec : Prop :=
  ∀ n, (P1764447903890526770.a n : ℤ) = A367496 (n + 1)

end A367496

/-!
# A367497: Number of 4-regular loopless multigraphs on n vertices.

The programs for A367497, there is no canonical definition to state claims against.
-/

/-! ## A367497.P4267564430754295904

`A333351(eq[5, A004736(n+1)])`
-/

namespace A367497.P4267564430754295904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A367497.P4267564430754295904

/-! ## A367497.P11834222328705919869

`A333351(A000217(n+4)+n)`
-/

namespace A367497.P11834222328705919869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A367497.P11834222328705919869

/-! ## A367497.P11454621340061853206

`A333351(Δ[A023545(n+1)]-1)`
-/

namespace A367497.P11454621340061853206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (f1 (n + 1) - f1 n - 1).toNat

end

end A367497.P11454621340061853206

/-! ## A367497.P14148982669965852395

`A333351(A000096(n+3)+n+1)`
-/

namespace A367497.P14148982669965852395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A367497.P14148982669965852395

/-! ## A367497.P5688635853282056792

`A333351(lt[A163937(n+5), A000929(n)])`
-/

namespace A367497.P5688635853282056792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163937 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367497.P5688635853282056792

/-!
# A367498: Lexicographically least increasing sequence of positive integers with the property that no sum of two distinct terms equals a Tribonacci number.

The programs for A367498, there is no canonical definition to state claims against.
-/

/-! ## A367498.P16609766357729692390

`A371626(A371638(3*n+1)-A062068(n+1))`
-/

namespace A367498.P16609766357729692390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371626 (A371638 (3 * n + 1) - A062068 (n + 1)).toNat

end

end A367498.P16609766357729692390

/-! ## A367498.P11121041785130409367

`∑[A001221(A093717(3*(n+1)))]`
-/

namespace A367498.P11121041785130409367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A093717 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367498.P11121041785130409367

/-! ## A367498.P6397720389289920013

`A063524(A365912(n))+A043096(2*n+1)`
-/

namespace A367498.P6397720389289920013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A365912 n).toNat + A043096 (2 * n + 1)

end

end A367498.P6397720389289920013

/-!
# A367499: Lexicographically least increasing sequence of positive integers, beginning with 3, with the property that no sum of two distinct terms is a Tribonacci number.

The programs for A367499, there is no canonical definition to state claims against.
-/

/-! ## A367499.P14254616186611660548

`comp[A367498(n+1)-1]+1`
-/

namespace A367499.P14254616186611660548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367498 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367499.P14254616186611660548

/-! ## A367499.P15554428846502037947

`A124760(A049885(n+5))+A047220(n+3)`
-/

namespace A367499.P15554428846502037947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A049885 (n + 5)).toNat + A047220 (n + 3)

end

end A367499.P15554428846502037947

/-! ## A367499.P7122780669201994983

`A239140(A261246(n+1)²)+∑[A174664(3*(n+1))]`
-/

namespace A367499.P7122780669201994983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174664 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (A261246 (n + 1) ^ 2).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367499.P7122780669201994983

/-! ## A367499.P12733204573338509843

`A309077(A376208(n+1))`
-/

namespace A367499.P12733204573338509843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (A376208 (n + 1)).toNat

end

end A367499.P12733204573338509843

/-! ## A367499.P11892616369793817931

`A284472(n+1)%A119294(n+1)+1`
-/

namespace A367499.P11892616369793817931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284472 (n + 1)) (A119294 (n + 1)) + 1

end

end A367499.P11892616369793817931

