import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A248702: Smallest prime such that the n preceding prime gaps are monotonically decreasing and the n following prime gaps are monotonically increasing.

The programs for A248702, there is no canonical definition to state claims against.
-/

/-! ## A248702.P9275986976956817194

`p?[xor(8, A258932(n+5))]`
-/

namespace A248702.P9275986976956817194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A258932 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248702.P9275986976956817194

/-!
# A248705: The cubes related to the strictly increasing subsequence of A053668(n), n >= 1.

The programs for A248705, there is no canonical definition to state claims against.
-/

/-! ## A248705.P6475833346675709752

`A036042(A153863(n+1))^3`
-/

namespace A248705.P6475833346675709752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A153863 (n + 1)).toNat ^ 3

end

end A248705.P6475833346675709752

/-! ## A248705.P16506000678963460688

`record[A048762(A048673(3*n+4))]`
-/

namespace A248705.P16506000678963460688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A048673 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248705.P16506000678963460688

/-! ## A248705.P39910911746653107

`record[A008834(A311637(n))]`
-/

namespace A248705.P39910911746653107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A311637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248705.P39910911746653107

/-! ## A248705.P7658474069389343609

`record[A201053(A293514(n+1))]`
-/

namespace A248705.P7658474069389343609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 (A293514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248705.P7658474069389343609

/-!
# A248706: Central terms of triangle A248600.

The programs for A248706, there is no canonical definition to state claims against.
-/

/-! ## A248706.P17190199760529365959

`A000984(n)*A187056(∑[2*n])`
-/

namespace A248706.P17190199760529365959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A187056 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248706.P17190199760529365959

/-! ## A248706.P13406803000683891195

`A056616(n)*A187056(A002378(n))`
-/

namespace A248706.P13406803000683891195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056616 n * A187056 (A002378 n).toNat

end

end A248706.P13406803000683891195

/-! ## A248706.P7164330635329314269

`record[A126869(n)]*A187056(A002378(n))`
-/

namespace A248706.P7164330635329314269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A187056 (A002378 n).toNat

end

end A248706.P7164330635329314269

/-!
# A248707: a(n) = f(3*n)/(f(n-1)*f(n)*f(n+1)), where f(k) = k!.

The programs for A248707, the canonical program `A248707.P5460089160470221318` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248707 has offset 1).

The definition of A248707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248707.P5460089160470221318

`(3*(n+1))!/(n!*(n+1)!*(n+2)!)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248707

/-- `(3*(n+1))!/(n!*(n+1)!*(n+2)!)` -/
def P5460089160470221318.Spec : Prop :=
  ∀ n, P5460089160470221318.a n = (A248707 (n + 1) : ℚ)

end A248707

/-! ## A248707.P5991405409795831602

`C(2*(n+1), n)*C(3*(n+1), n+1)`
-/

namespace A248707.P5991405409795831602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) n * Nat.choose (3 * (n + 1)) (n + 1)

end

end A248707.P5991405409795831602

namespace A248707

/-- `C(2*(n+1), n)*C(3*(n+1), n+1)` -/
def P5991405409795831602.Spec : Prop :=
  ∀ n, (P5991405409795831602.a n : ℤ) = A248707 (n + 1)

end A248707

/-! ## A248707.P3791963349523095166

`(n+1)*Δ[A277637(n)]`
-/

namespace A248707.P3791963349523095166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A248707.P3791963349523095166

namespace A248707

/-- `(n+1)*Δ[A277637(n)]` -/
def P3791963349523095166.Spec : Prop :=
  ∀ n, P3791963349523095166.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P11510364850167057648

`(n+1)*A007004(n+1)`
-/

namespace A248707.P11510364850167057648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007004 (n + 1)

end

end A248707.P11510364850167057648

namespace A248707

/-- `(n+1)*A007004(n+1)` -/
def P11510364850167057648.Spec : Prop :=
  ∀ n, P11510364850167057648.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P15652717735088040161

`(n+1)*A215287(2*(n+1))`
-/

namespace A248707.P15652717735088040161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215287 (2 * (n + 1))

end

end A248707.P15652717735088040161

namespace A248707

/-- `(n+1)*A215287(2*(n+1))` -/
def P15652717735088040161.Spec : Prop :=
  ∀ n, P15652717735088040161.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P8378038128034615007

`(n+1)*A215294(2*(n+1))`
-/

namespace A248707.P8378038128034615007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215294 (2 * (n + 1))

end

end A248707.P8378038128034615007

namespace A248707

/-- `(n+1)*A215294(2*(n+1))` -/
def P8378038128034615007.Spec : Prop :=
  ∀ n, P8378038128034615007.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P9019103551201270801

`A000917(n)*A001764(n+1)`
-/

namespace A248707.P9019103551201270801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n * A001764 (n + 1)

end

end A248707.P9019103551201270801

namespace A248707

/-- `A000917(n)*A001764(n+1)` -/
def P9019103551201270801.Spec : Prop :=
  ∀ n, P9019103551201270801.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P2784374240911255456

`A006480(n+1)-A007004(n+1)`
-/

namespace A248707.P2784374240911255456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (n + 1) - A007004 (n + 1)

end

end A248707.P2784374240911255456

namespace A248707

/-- `A006480(n+1)-A007004(n+1)` -/
def P2784374240911255456.Spec : Prop :=
  ∀ n, P2784374240911255456.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P1270349407210045424

`A001700(n+1)*A004319(n+1)`
-/

namespace A248707.P1270349407210045424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) * A004319 (n + 1)

end

end A248707.P1270349407210045424

namespace A248707

/-- `A001700(n+1)*A004319(n+1)` -/
def P1270349407210045424.Spec : Prop :=
  ∀ n, P1270349407210045424.a n = A248707 (n + 1)

end A248707

/-! ## A248707.P9958854904595132571

`A001791(n+1)*A005809(n+1)`
-/

namespace A248707.P9958854904595132571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A005809 (n + 1)

end

end A248707.P9958854904595132571

namespace A248707

/-- `A001791(n+1)*A005809(n+1)` -/
def P9958854904595132571.Spec : Prop :=
  ∀ n, P9958854904595132571.a n = A248707 (n + 1)

end A248707

/-!
# A248708: a(n) = f(4*n+2)/(f(n-1)*f(n)*f(n+1)*f(n+2)), where f(k) = k!.

The programs for A248708, there is no canonical definition to state claims against.
-/

/-! ## A248708.P15350254947612339093

`A000984(2*n+3)*A337902(n+1)`
-/

namespace A248708.P15350254947612339093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n + 3) * A337902 (n + 1)

end

end A248708.P15350254947612339093

/-! ## A248708.P6018942688107366711

`A002054(n+1)*A088218(n+2)*A000984(2*n+3)`
-/

namespace A248708.P6018942688107366711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A088218 (n + 2) * A000984 (2 * n + 3)

end

end A248708.P6018942688107366711

/-! ## A248708.P15449867007794763130

`A001405(2*n+3)*A002054(n+1)*A000984(2*n+3)`
-/

namespace A248708.P15449867007794763130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) * A002054 (n + 1) * A000984 (2 * n + 3)

end

end A248708.P15449867007794763130

/-! ## A248708.P3646245382210378990

`A037952(2*n+3)*A116385(2*(n+1))*A000984(2*n+3)`
-/

namespace A248708.P3646245382210378990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 3) * A116385 (2 * (n + 1)) * A000984 (2 * n + 3)

end

end A248708.P3646245382210378990

/-! ## A248708.P3476415959394006240

`A001405(2*n+3)*A037955(2*n+3)*A000984(2*n+3)`
-/

namespace A248708.P3476415959394006240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) * A037955 (2 * n + 3) * A000984 (2 * n + 3)

end

end A248708.P3476415959394006240

/-!
# A248711: Concatenations of three numbers A,R,B where R=A+B or R=A-B or R=A*B or R=A/B.

The programs for A248711, there is no canonical definition to state claims against.
-/

/-! ## A248711.P17952192506664223916

`lt[2, A185044(A259094(2*n+5))]`
-/

namespace A248711.P17952192506664223916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A259094 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248711.P17952192506664223916

/-! ## A248711.P11195916084739748037

`filter[A090429(n+1), A386313(#)]`
-/

namespace A248711.P11195916084739748037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A386313 (f1 j).toNat = 1) n)

end

end A248711.P11195916084739748037

/-!
# A248712: Numbers k that are the product of four distinct primes such that x^2+y^2 = k has integer solutions.

The programs for A248712, there is no canonical definition to state claims against.
-/

/-! ## A248712.P16546804861796989787

`∪[2*A264498(n+1), A264499(n+1)]`
-/

namespace A248712.P16546804861796989787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248712.P16546804861796989787

/-! ## A248712.P7285376279217252948

`filter[A281877(n+1), A359156(#)]`
-/

namespace A248712.P7285376279217252948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A248712.P7285376279217252948

/-! ## A248712.P13477531103649199785

`filter[A025295(n+1), A353629(#)]`
-/

namespace A248712.P13477531103649199785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A248712.P13477531103649199785

/-! ## A248712.P431958804432533931

`filter[A281877(n+1), A353629(#)]`
-/

namespace A248712.P431958804432533931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A248712.P431958804432533931

/-! ## A248712.P11409586295936367385

`filter[A281877(n+1), A369255(#)]`
-/

namespace A248712.P11409586295936367385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A248712.P11409586295936367385

/-! ## A248712.P11617993450293651891

`A000005(A118751(n))*A264498(n+1)`
-/

namespace A248712.P11617993450293651891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A118751 n).toNat * A264498 (n + 1)

end

end A248712.P11617993450293651891

/-! ## A248712.P7625430999463605119

`A036453(A177714(n+1))*A264498(n+1)`
-/

namespace A248712.P7625430999463605119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A177714 (n + 1)).toNat * A264498 (n + 1)

end

end A248712.P7625430999463605119

/-!
# A248715: Isolated numbers: Mark the lowest number that doesn't touch a number that has already been mark on grid of number spiraling outward.

The programs for A248715, there is no canonical definition to state claims against.
-/

/-! ## A248715.P6651759738946006266

`A307188(n+1)+1`
-/

namespace A248715.P6651759738946006266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307188 (n + 1) + 1

end

end A248715.P6651759738946006266

/-! ## A248715.P3443527615819070699

`eq[0, A275609(n)]+1`
-/

namespace A248715.P3443527615819070699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248715.P3443527615819070699

/-! ## A248715.P6370406858415908653

`lt[A275609(abs(1-n)), 1]`
-/

namespace A248715.P6370406858415908653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A248715.P6370406858415908653

/-! ## A248715.P16542121240888004544

`1-A001489(lt[A275609(n), 1])`
-/

namespace A248715.P16542121240888004544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A248715.P16542121240888004544

/-! ## A248715.P17256501982478689495

`record[n+1-A105343(n)*A275609(n)]`
-/

namespace A248715.P17256501982478689495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A105343 n * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248715.P17256501982478689495

/-! ## A248715.P10587806795107033915

`record[n+1-A051402(n+1)*A275609(n)]`
-/

namespace A248715.P10587806795107033915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051402 (n + 1) * A275609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248715.P10587806795107033915

/-! ## A248715.P17246499627611007204

`record[n+1-A213708(n*A275609(n))]`
-/

namespace A248715.P17246499627611007204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A213708 ((n : ℤ) * A275609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248715.P17246499627611007204

/-!
# A248716: Numerator of (1/e)*Sum_{k>=0} (1/k!)*(Sum_{j=0..k} j^n).

The programs for A248716, there is no canonical definition to state claims against.
-/

/-! ## A248716.P1942132854451488573

`A296150(A390749(2*(n+2)))`
-/

namespace A248716.P1942132854451488573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A390749 (2 * (n + 2))).toNat

end

end A248716.P1942132854451488573

/-!
# A248720: a(n) = (n*(n+1))^5.

The programs for A248720, the canonical program `A248720.P14698641325103046806` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248720 has offset 0).

The definition of A248720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n*(n+1))^5` (program `A248720.P14698641325103046806`, by `A248720.P14698641325103046806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248720.P14698641325103046806

`(n*(n+1))^5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248720

/-- `(n*(n+1))^5` -/
def P14698641325103046806.Spec : Prop :=
  ∀ n, (P14698641325103046806.a n : ℤ) = A248720 n

theorem P14698641325103046806.correct : P14698641325103046806.Spec := by
  intro n
  simp only [A248720]

end A248720

/-! ## A248720.P9883940709531142549

`lcm(2, (n²+n)^5)`
-/

namespace A248720.P9883940709531142549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n ^ 2 + n) ^ 5)

end

end A248720.P9883940709531142549

namespace A248720

/-- `lcm(2, (n²+n)^5)` -/
def P9883940709531142549.Spec : Prop :=
  ∀ n, (P9883940709531142549.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P16748309766766839068

`abs((-lcm(n, n+1))^5)`
-/

namespace A248720.P16748309766766839068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.lcm n (n + 1) : ℤ)) ^ 5|

end

end A248720.P16748309766766839068

namespace A248720

/-- `abs((-lcm(n, n+1))^5)` -/
def P16748309766766839068.Spec : Prop :=
  ∀ n, P16748309766766839068.a n = A248720 n

end A248720

/-! ## A248720.P5306030676522340860

`and(-2, (n²+n)^5)`
-/

namespace A248720.P5306030676522340860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((n ^ 2 + n) ^ 5 : ℤ)

end

end A248720.P5306030676522340860

namespace A248720

/-- `and(-2, (n²+n)^5)` -/
def P5306030676522340860.Spec : Prop :=
  ∀ n, P5306030676522340860.a n = A248720 n

end A248720

/-! ## A248720.P5254542289239324234

`xor(3, (n²+n)^5+3)`
-/

namespace A248720.P5254542289239324234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((n ^ 2 + n) ^ 5 + 3)

end

end A248720.P5254542289239324234

namespace A248720

/-- `xor(3, (n²+n)^5+3)` -/
def P5254542289239324234.Spec : Prop :=
  ∀ n, (P5254542289239324234.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P3140640581798783068

`-∑[a(n-1)-2]^5` with `a(0)=0`
-/

namespace A248720.P3140640581798783068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j) ^ 5)

end

end A248720.P3140640581798783068

namespace A248720

/-- `-∑[a(n-1)-2]^5` -/
def P3140640581798783068.Spec : Prop :=
  ∀ n, P3140640581798783068.a n = A248720 n

end A248720

/-! ## A248720.P11191347259246858561

`floor(∑[a(n-1)+2]^5)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A248720.P11191347259246858561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A248720.P11191347259246858561

namespace A248720

/-- `floor(∑[a(n-1)+2]^5)` -/
def P11191347259246858561.Spec : Prop :=
  ∀ n, (P11191347259246858561.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P425966475656188418

`abs((or(1, n²+n)-1)^5)`
-/

namespace A248720.P425966475656188418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 (n ^ 2 + n) : ℤ) - 1) ^ 5|

end

end A248720.P425966475656188418

namespace A248720

/-- `abs((or(1, n²+n)-1)^5)` -/
def P425966475656188418.Spec : Prop :=
  ∀ n, P425966475656188418.a n = A248720 n

end A248720

/-! ## A248720.P16914018839638360717

`abs((2*(n²-C(n, 2)))^5)`
-/

namespace A248720.P16914018839638360717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))) ^ 5|

end

end A248720.P16914018839638360717

namespace A248720

/-- `abs((2*(n²-C(n, 2)))^5)` -/
def P16914018839638360717.Spec : Prop :=
  ∀ n, P16914018839638360717.a n = A248720 n

end A248720

/-! ## A248720.P12587684371888734239

`abs((n+1-record[(n-1)²])^5)`
-/

namespace A248720.P12587684371888734239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 5|

end

end A248720.P12587684371888734239

namespace A248720

/-- `abs((n+1-record[(n-1)²])^5)` -/
def P12587684371888734239.Spec : Prop :=
  ∀ n, P12587684371888734239.a n = A248720 n

end A248720

/-! ## A248720.P10841740659649344322

`-(n+1-record[(n-1)²])^5`
-/

namespace A248720.P10841740659649344322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 5)

end

end A248720.P10841740659649344322

namespace A248720

/-- `-(n+1-record[(n-1)²])^5` -/
def P10841740659649344322.Spec : Prop :=
  ∀ n, P10841740659649344322.a n = A248720 n

end A248720

/-! ## A248720.P1335196012736339270

`lcm((n+1)², n²)²*∑[2*n]`
-/

namespace A248720.P1335196012736339270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2) (n ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248720.P1335196012736339270

namespace A248720

/-- `lcm((n+1)², n²)²*∑[2*n]` -/
def P1335196012736339270.Spec : Prop :=
  ∀ n, (P1335196012736339270.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P5126387800386846637

`a(n-1)%4+(n²+n)^5` with `a(0)=0`
-/

namespace A248720.P5126387800386846637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) % 4 + (n ^ 2 + n) ^ 5

end

end A248720.P5126387800386846637

namespace A248720

/-- `a(n-1)%4+(n²+n)^5` -/
def P5126387800386846637.Spec : Prop :=
  ∀ n, (P5126387800386846637.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P9756600933758247406

`lcm(2*n, ∑[2*n]²²)*∑[2*n]`
-/

namespace A248720.P9756600933758247406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A248720.P9756600933758247406

namespace A248720

/-- `lcm(2*n, ∑[2*n]²²)*∑[2*n]` -/
def P9756600933758247406.Spec : Prop :=
  ∀ n, (P9756600933758247406.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P14757885122530664077

`∑[and(2*n+1, 2*n)]²²*∑[2*n]`
-/

namespace A248720.P14757885122530664077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A248720.P14757885122530664077

namespace A248720

/-- `∑[and(2*n+1, 2*n)]²²*∑[2*n]` -/
def P14757885122530664077.Spec : Prop :=
  ∀ n, (P14757885122530664077.a n : ℤ) = A248720 n

end A248720

/-! ## A248720.P15329144674476590744

`sqrt(A035287(n+1)^5)`
-/

namespace A248720.P15329144674476590744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035287 (n + 1) ^ 5 : ℝ)

end

end A248720.P15329144674476590744

namespace A248720

/-- `sqrt(A035287(n+1)^5)` -/
def P15329144674476590744.Spec : Prop :=
  ∀ n, P15329144674476590744.a n = (A248720 n : ℝ)

end A248720

/-! ## A248720.P8535043972993733580

`abs((n-A005563(n))^5)`
-/

namespace A248720.P8535043972993733580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A005563 n) ^ 5|

end

end A248720.P8535043972993733580

namespace A248720

/-- `abs((n-A005563(n))^5)` -/
def P8535043972993733580.Spec : Prop :=
  ∀ n, P8535043972993733580.a n = A248720 n

end A248720

/-! ## A248720.P6158106453383830777

`∑[2*n]*A248619(n)`
-/

namespace A248720.P6158106453383830777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A248619 n

end

end A248720.P6158106453383830777

namespace A248720

/-- `∑[2*n]*A248619(n)` -/
def P6158106453383830777.Spec : Prop :=
  ∀ n, P6158106453383830777.a n = A248720 n

end A248720

/-! ## A248720.P4449952766048357850

`abs((∑[A004277(n)]-1)^5)`
-/

namespace A248720.P4449952766048357850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 5|

end

end A248720.P4449952766048357850

namespace A248720

/-- `abs((∑[A004277(n)]-1)^5)` -/
def P4449952766048357850.Spec : Prop :=
  ∀ n, P4449952766048357850.a n = A248720 n

end A248720

/-! ## A248720.P12092268921340944189

`A035287(n+1)*A060459(n)`
-/

namespace A248720.P12092268921340944189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) * A060459 n

end

end A248720.P12092268921340944189

namespace A248720

/-- `A035287(n+1)*A060459(n)` -/
def P12092268921340944189.Spec : Prop :=
  ∀ n, P12092268921340944189.a n = A248720 n

end A248720

/-!
# A248727: A046802(x,y) --> A046802(x,y+1), transform of e.g.f. for the graded number of positroids of the totally nonnegative Grassmannians G+(k,n); enumerates faces of the stellahedra.

The programs for A248727, there is no canonical definition to state claims against.
-/

/-! ## A248727.P8922829647597184197

`A335467(A059340(n+1)+1)`
-/

namespace A248727.P8922829647597184197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A059340 (n + 1) + 1).toNat

end

end A248727.P8922829647597184197

/-! ## A248727.P8087648363384092487

`A335522(A059340(n+1)+1)`
-/

namespace A248727.P8087648363384092487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335522 (A059340 (n + 1) + 1).toNat

end

end A248727.P8087648363384092487

/-!
# A248728: Number of partitions of 3^n.

The programs for A248728, there is no canonical definition to state claims against.
-/

/-! ## A248728.P7583810619796209391

`A000041(3^n)`
-/

namespace A248728.P7583810619796209391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 ^ n)

end

end A248728.P7583810619796209391

/-! ## A248728.P13167484033471904073

`A305841(3^n)`
-/

namespace A248728.P13167484033471904073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305841 (3 ^ n)

end

end A248728.P13167484033471904073

/-! ## A248728.P16472962129689501458

`A000065(3^n)+1`
-/

namespace A248728.P16472962129689501458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (3 ^ n) + 1

end

end A248728.P16472962129689501458

/-! ## A248728.P14724732653916271686

`A052810(3^n)-1`
-/

namespace A248728.P14724732653916271686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (3 ^ n) - 1

end

end A248728.P14724732653916271686

/-! ## A248728.P15247583082483514487

`∑[A000837(A000244(n))]`
-/

namespace A248728.P15247583082483514487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A000244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248728.P15247583082483514487

/-!
# A248729: Number of digits in the decimal expansion of the number of partitions of 3^n.

The programs for A248729, there is no canonical definition to state claims against.
-/

/-! ## A248729.P10834332865228943004

`A248736(∑[n+2])`
-/

namespace A248729.P10834332865228943004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248729.P10834332865228943004

/-! ## A248729.P6867523449604193244

`A000006(A136753(n+2))`
-/

namespace A248729.P6867523449604193244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A136753 (n + 2)).toNat

end

end A248729.P6867523449604193244

/-! ## A248729.P9328457545393215813

`A026819(∑[A129921(n)+∏{e}[n, #+1]-1])`
-/

namespace A248729.P9328457545393215813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129921 n + (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248729.P9328457545393215813

/-! ## A248729.P12757242192564327082

`A026819(∑[A129921(n)+∑{d}[n, #%n/#]])`
-/

namespace A248729.P12757242192564327082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129921 n : ℚ) + ∑ d ∈ Nat.divisors (f2 n), ((d % n : ℕ) : ℚ) / (d : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A248729.P12757242192564327082

/-! ## A248729.P16451693220642860220

`A001462(A002203(n)-A000219(n))`
-/

namespace A248729.P16451693220642860220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002203 n - A000219 n).toNat

end

end A248729.P16451693220642860220

/-!
# A248730: 

The programs for A248730, there is no canonical definition to state claims against.
-/

/-! ## A248730.P5290400618386592476

`A000041(5^n)`
-/

namespace A248730.P5290400618386592476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (5 ^ n)

end

end A248730.P5290400618386592476

/-!
# A248731: Number of digits in the decimal expansion of the number of partitions of 5^n.

The programs for A248731, there is no canonical definition to state claims against.
-/

/-! ## A248731.P16047053425226017522

`A248736(Δ[n²]+∑[n+2]+4)`
-/

namespace A248731.P16047053425226017522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A248731.P16047053425226017522

/-! ## A248731.P12875188876106595412

`char[A002487(n)]*A248736(A055998(n+2))`
-/

namespace A248731.P12875188876106595412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248736 (A055998 (n + 2)).toNat

end

end A248731.P12875188876106595412

/-! ## A248731.P10445540677846355155

`A342676(n+1)+A248736(A141214(n+1))`
-/

namespace A248731.P10445540677846355155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342676 (n + 1) + A248736 (A141214 (n + 1)).toNat

end

end A248731.P10445540677846355155

/-! ## A248731.P5911782405014480650

`char[A006842(n+1)]*A248736(A055998(n+2))`
-/

namespace A248731.P5911782405014480650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006842 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248736 (A055998 (n + 2)).toNat

end

end A248731.P5911782405014480650

/-! ## A248731.P563210445057441680

`char[A347687(n+1)]*A248736(A055998(n+2))`
-/

namespace A248731.P563210445057441680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347687 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248736 (A055998 (n + 2)).toNat

end

end A248731.P563210445057441680

/-!
# A248732: 

The programs for A248732, there is no canonical definition to state claims against.
-/

/-! ## A248732.P14497006017914937741

`A000041(6^n)`
-/

namespace A248732.P14497006017914937741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (6 ^ n)

end

end A248732.P14497006017914937741

/-!
# A248733: Number of digits in the decimal expansion of the number of partitions of 6^n.

The programs for A248733, there is no canonical definition to state claims against.
-/

/-! ## A248733.P17066844587440877415

`A248736(Δ[A264443(n)])`
-/

namespace A248733.P17066844587440877415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (f1 (n + 1) - f1 n).toNat

end

end A248733.P17066844587440877415

/-! ## A248733.P16536148292805610578

`A248736(A046691(n+3))`
-/

namespace A248733.P16536148292805610578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (A046691 (n + 3)).toNat

end

end A248733.P16536148292805610578

/-! ## A248733.P15556422932130084436

`A248736(A056115(n)+11)`
-/

namespace A248733.P15556422932130084436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (A056115 n + 11).toNat

end

end A248733.P15556422932130084436

/-! ## A248733.P10244826064209866715

`A248736(eq[2, A092921(n)])`
-/

namespace A248733.P10244826064209866715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248733.P10244826064209866715

/-!
# A248734: 

The programs for A248734, there is no canonical definition to state claims against.
-/

/-! ## A248734.P3155875247554673510

`A000041(7^n)`
-/

namespace A248734.P3155875247554673510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (7 ^ n)

end

end A248734.P3155875247554673510

/-!
# A248735: Number of digits in the decimal expansion of the number of partitions of 7^n.

The programs for A248735, there is no canonical definition to state claims against.
-/

/-! ## A248735.P4567853626891756286

`∑[A248227(A017926(n))]-n`
-/

namespace A248735.P4567853626891756286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A017926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A248735.P4567853626891756286

/-! ## A248735.P10985858106786036231

`record[A248736(∑[n+3]-2)]`
-/

namespace A248735.P10985858106786036231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248735.P10985858106786036231

/-! ## A248735.P14859135127066758923

`A248736(A052905(n+3))`
-/

namespace A248735.P14859135127066758923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (A052905 (n + 3)).toNat

end

end A248735.P14859135127066758923

/-!
# A248736: Array, read by antidiagonals, of the numbers of digits in the decimal expansion of the number of partitions of b^n employing a conjectured formula. See both the Comments and the Mathematica coding.

The programs for A248736, there is no canonical definition to state claims against.
-/

/-! ## A248736.P3139368403508060776

`A338718(or(A055396(n+1), A202252(n+1)))`
-/

namespace A248736.P3139368403508060776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338718 (Int.lor (A055396 (n + 1)) (A202252 (n + 1))).toNat

end

end A248736.P3139368403508060776

/-! ## A248736.P1533716083306591482

`A338718(or(A202252(n+1), A338718(n+1)))`
-/

namespace A248736.P1533716083306591482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338718 (Int.lor (A202252 (n + 1)) (A338718 (n + 1))).toNat

end

end A248736.P1533716083306591482

/-! ## A248736.P4160872684774386753

`∑{e}[A056860(A056860(n+1))*A136086(n+1), #]`
-/

namespace A248736.P4160872684774386753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A056860 (n + 1)).toNat * A136086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A248736.P4160872684774386753

/-!
# A248739: 

The programs for A248739, there is no canonical definition to state claims against.
-/

/-! ## A248739.P9968861551772224610

`29*n+ceil(n/29)`
-/

namespace A248739.P9968861551772224610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) + ⌈(n : ℚ) / 29⌉

end

end A248739.P9968861551772224610

/-!
# A248740: a(n) = Fibonacci(n) mod 1000.

The programs for A248740, the canonical program `A248740.P10624449381643573524` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248740 has offset 0).

The definition of A248740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248740.P10624449381643573524

`A000045(n)%1000`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248740

/-- `A000045(n)%1000` -/
def P10624449381643573524.Spec : Prop :=
  ∀ n, P10624449381643573524.a n = A248740 n

theorem P10624449381643573524.correct : P10624449381643573524.Spec := by
  intro n
  simp only [A248740]

end A248740

/-!
# A248741: Nonnegative integers of the form m^k/k where k > 1.

The programs for A248741, there is no canonical definition to state claims against.
-/

/-! ## A248741.P9434723352409242611

`record[and(A005728(n), A123493(n))]`
-/

namespace A248741.P9434723352409242611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005728 n) (A123493 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248741.P9434723352409242611

/-! ## A248741.P2650936905259553383

`record[and(A003586(n+2), A103393(2*n+5))]`
-/

namespace A248741.P2650936905259553383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003586 (n + 2)) (A103393 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248741.P2650936905259553383

/-!
# A248742: Numbers of the form x^2+1 with at most two prime factors.

The programs for A248742, the canonical program `A248742.P24607167252977039` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248742 has offset 1).

The definition of A248742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248742.P13686892646371325909

`A333635(n+1)²+1`
-/

namespace A248742.P13686892646371325909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1) ^ 2 + 1

end

end A248742.P13686892646371325909

namespace A248742

/-- `A333635(n+1)²+1` -/
def P13686892646371325909.Spec : Prop :=
  ∀ n, P13686892646371325909.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P24607167252977039

`∪[A002496(n+1), A144255(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A248742

/-- `∪[A002496(n+1), A144255(n+1)]` -/
def P24607167252977039.Spec : Prop :=
  ∀ n, (P24607167252977039.a n : ℤ) = A248742 (n + 1)

theorem P24607167252977039.correct : P24607167252977039.Spec := by
  intro n
  simp only [A248742, Nat.add_sub_cancel]

end A248742

/-! ## A248742.P15092473663032847601

`∪[A005574(n+1), A085722(n+1)]²+1`
-/

namespace A248742.P15092473663032847601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A248742.P15092473663032847601

namespace A248742

/-- `∪[A005574(n+1), A085722(n+1)]²+1` -/
def P15092473663032847601.Spec : Prop :=
  ∀ n, (P15092473663032847601.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P1072665755551788841

`record[lcm(A014442(n+1), A089120(n+1))]`
-/

namespace A248742.P1072665755551788841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014442 (n + 1)) (A089120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248742.P1072665755551788841

namespace A248742

/-- `record[lcm(A014442(n+1), A089120(n+1))]` -/
def P1072665755551788841.Spec : Prop :=
  ∀ n, (P1072665755551788841.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P6608373128556761226

`record[A014442(n+1)*A014963(A152823(n+1))]`
-/

namespace A248742.P6608373128556761226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) * A014963 (A152823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248742.P6608373128556761226

namespace A248742

/-- `record[A014442(n+1)*A014963(A152823(n+1))]` -/
def P6608373128556761226.Spec : Prop :=
  ∀ n, P6608373128556761226.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P7202261888086883250

`A002522(A333635(n+1))`
-/

namespace A248742.P7202261888086883250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A333635 (n + 1)).toNat

end

end A248742.P7202261888086883250

namespace A248742

/-- `A002522(A333635(n+1))` -/
def P7202261888086883250.Spec : Prop :=
  ∀ n, P7202261888086883250.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P14022713314549887006

`A002522(eq[A193330(n)!, A193330(n)])`
-/

namespace A248742.P14022713314549887006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A193330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248742.P14022713314549887006

namespace A248742

/-- `A002522(eq[A193330(n)!, A193330(n)])` -/
def P14022713314549887006.Spec : Prop :=
  ∀ n, P14022713314549887006.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P3388679743458252089

`record[A002522(n+1)/A000010(A147809(n+1)+1)]`
-/

namespace A248742.P3388679743458252089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A000010 (A147809 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248742.P3388679743458252089

namespace A248742

/-- `record[A002522(n+1)/A000010(A147809(n+1)+1)]` -/
def P3388679743458252089.Spec : Prop :=
  ∀ n, P3388679743458252089.a n = (A248742 (n + 1) : ℚ)

end A248742

/-! ## A248742.P12565777450115745277

`record[A014442(n+1)*A020639(A248516(n+1))]`
-/

namespace A248742.P12565777450115745277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) * A020639 (A248516 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248742.P12565777450115745277

namespace A248742

/-- `record[A014442(n+1)*A020639(A248516(n+1))]` -/
def P12565777450115745277.Spec : Prop :=
  ∀ n, P12565777450115745277.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P6309835963518245303

`filter[n²+1, A374128(#)]`
-/

namespace A248742.P6309835963518245303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j) = 1) n)

end

end A248742.P6309835963518245303

namespace A248742

/-- `filter[n²+1, A374128(#)]` -/
def P6309835963518245303.Spec : Prop :=
  ∀ n, (P6309835963518245303.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P12437276706017328962

`eq[1, A000045(A001222(n²+1))]²+1`
-/

namespace A248742.P12437276706017328962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001222 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A248742.P12437276706017328962

namespace A248742

/-- `eq[1, A000045(A001222(n²+1))]²+1` -/
def P12437276706017328962.Spec : Prop :=
  ∀ n, (P12437276706017328962.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P4992901336217592928

`filter[n²+1, A101040(#)]`
-/

namespace A248742.P4992901336217592928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j) = 1) n)

end

end A248742.P4992901336217592928

namespace A248742

/-- `filter[n²+1, A101040(#)]` -/
def P4992901336217592928.Spec : Prop :=
  ∀ n, (P4992901336217592928.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P8837552589911630827

`eq[1, A101040(n²+1)]²+1`
-/

namespace A248742.P8837552589911630827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A248742.P8837552589911630827

namespace A248742

/-- `eq[1, A101040(n²+1)]²+1` -/
def P8837552589911630827.Spec : Prop :=
  ∀ n, (P8837552589911630827.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P11213241322951432534

`eq[1, A300239(n²+1)]²+1`
-/

namespace A248742.P11213241322951432534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A248742.P11213241322951432534

namespace A248742

/-- `eq[1, A300239(n²+1)]²+1` -/
def P11213241322951432534.Spec : Prop :=
  ∀ n, (P11213241322951432534.a n : ℤ) = A248742 (n + 1)

end A248742

/-! ## A248742.P13549034609664230118

`filter[A002522(n), A353471(#)]`
-/

namespace A248742.P13549034609664230118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A248742.P13549034609664230118

namespace A248742

/-- `filter[A002522(n), A353471(#)]` -/
def P13549034609664230118.Spec : Prop :=
  ∀ n, P13549034609664230118.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P15200498657789951016

`filter[A002522(n), A353788(#)]`
-/

namespace A248742.P15200498657789951016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A248742.P15200498657789951016

namespace A248742

/-- `filter[A002522(n), A353788(#)]` -/
def P15200498657789951016.Spec : Prop :=
  ∀ n, P15200498657789951016.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P11468105706588604455

`filter[A002522(n+1), A123927(#)]`
-/

namespace A248742.P11468105706588604455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A248742.P11468105706588604455

namespace A248742

/-- `filter[A002522(n+1), A123927(#)]` -/
def P11468105706588604455.Spec : Prop :=
  ∀ n, P11468105706588604455.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P3203484375595029701

`filter[A069987(n+1), A123927(#)]`
-/

namespace A248742.P3203484375595029701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A248742.P3203484375595029701

namespace A248742

/-- `filter[A069987(n+1), A123927(#)]` -/
def P3203484375595029701.Spec : Prop :=
  ∀ n, P3203484375595029701.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P11895103116495626932

`filter[A002522(n+1), A353799(#)]`
-/

namespace A248742.P11895103116495626932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A248742.P11895103116495626932

namespace A248742

/-- `filter[A002522(n+1), A353799(#)]` -/
def P11895103116495626932.Spec : Prop :=
  ∀ n, P11895103116495626932.a n = A248742 (n + 1)

end A248742

/-! ## A248742.P17727047728846124618

`filter[A069987(n+1), A353471(#)]`
-/

namespace A248742.P17727047728846124618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A248742.P17727047728846124618

namespace A248742

/-- `filter[A069987(n+1), A353471(#)]` -/
def P17727047728846124618.Spec : Prop :=
  ∀ n, P17727047728846124618.a n = A248742 (n + 1)

end A248742

/-!
# A248744: Number of different ways one can attack all squares on an n X n chessboard with n rooks.

The programs for A248744, the canonical program `A248744.P11223030166305813966` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248744 has offset 0).

The definition of A248744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248744.P11223030166305813966

`2*n^n-n!`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248744

/-- `2*n^n-n!` -/
def P11223030166305813966.Spec : Prop :=
  ∀ n, P11223030166305813966.a n = A248744 n

theorem P11223030166305813966.correct : P11223030166305813966.Spec := by
  intro n
  simp only [A248744]

end A248744

/-! ## A248744.P1062967851806316679

`n^n+n^n-n!`
-/

namespace A248744.P1062967851806316679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) + ((n ^ n : ℤ) - (Nat.factorial n : ℤ))

end

end A248744.P1062967851806316679

namespace A248744

/-- `n^n+n^n-n!` -/
def P1062967851806316679.Spec : Prop :=
  ∀ n, P1062967851806316679.a n = A248744 n

theorem P1062967851806316679.correct : P1062967851806316679.Spec := by
  intro n
  simp only [A248744, Nat.add_sub_cancel, A248744.P1062967851806316679.a, A248744.P11223030166305813966.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A248744

/-! ## A248744.P16456929662000604262

`A036679(n)+A000312(n)`
-/

namespace A248744.P16456929662000604262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036679 n + A000312 n

end

end A248744.P16456929662000604262

namespace A248744

/-- `A036679(n)+A000312(n)` -/
def P16456929662000604262.Spec : Prop :=
  ∀ n, P16456929662000604262.a n = A248744 n

end A248744

/-! ## A248744.P8937618563469358249

`A000142(n)+2*A036679(n)`
-/

namespace A248744.P8937618563469358249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 2 * A036679 n

end

end A248744.P8937618563469358249

namespace A248744

/-- `A000142(n)+2*A036679(n)` -/
def P8937618563469358249.Spec : Prop :=
  ∀ n, P8937618563469358249.a n = A248744 n

end A248744

/-! ## A248744.P11024867848316391114

`2*A000312(n)-A000142(n)`
-/

namespace A248744.P11024867848316391114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000312 n - A000142 n

end

end A248744.P11024867848316391114

namespace A248744

/-- `2*A000312(n)-A000142(n)` -/
def P11024867848316391114.Spec : Prop :=
  ∀ n, P11024867848316391114.a n = A248744 n

end A248744

/-!
# A248745: Primes becoming a composite number if any digit is deleted (zeros allowed).

The programs for A248745, there is no canonical definition to state claims against.
-/

/-! ## A248745.P2517655766732729008

`A034303(n^gcd(7, n)+5)`
-/

namespace A248745.P2517655766732729008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034303 (n ^ Nat.gcd 7 n + 5)

end

end A248745.P2517655766732729008

/-! ## A248745.P6542866845630642280

`A034303(n+5)^A034332(n)!`
-/

namespace A248745.P6542866845630642280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034303 (n + 5) ^ Nat.factorial (A034332 n).toNat

end

end A248745.P6542866845630642280

/-!
# A248746: a(n) is the index k of the greatest prime divisor A002313(k) of n^2 + 1.

The programs for A248746, there is no canonical definition to state claims against.
-/

/-! ## A248746.P13402323418578998241

`A332897(A014442(n+1))`
-/

namespace A248746.P13402323418578998241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A014442 (n + 1)).toNat

end

end A248746.P13402323418578998241

/-! ## A248746.P11806833101136306371

`A332897(A006530((n+1)²+1))`
-/

namespace A248746.P11806833101136306371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A006530 ((n + 1) ^ 2 + 1)).toNat

end

end A248746.P11806833101136306371

/-! ## A248746.P4372957540017510372

`A004525(A332894(A014442(n+1))+1)`
-/

namespace A248746.P4372957540017510372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332894 (A014442 (n + 1)).toNat + 1).toNat

end

end A248746.P4372957540017510372

/-! ## A248746.P8057573643537989114

`(A332894(A014442(n+1))+1)/A036453(n+2)`
-/

namespace A248746.P8057573643537989114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332894 (A014442 (n + 1)).toNat + 1 : ℚ) / (A036453 (n + 2) : ℚ)

end

end A248746.P8057573643537989114

/-! ## A248746.P8089733351455749574

`(A332894(A014442(n+1))+1)/A171977(2*n+1)`
-/

namespace A248746.P8089733351455749574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332894 (A014442 (n + 1)).toNat + 1 : ℚ) / (A171977 (2 * n + 1) : ℚ)

end

end A248746.P8089733351455749574

/-! ## A248746.P5716782611636599599

`(A332894(A014442(n+1))+1)/A277543(A277551(n+1))`
-/

namespace A248746.P5716782611636599599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332894 (A014442 (n + 1)).toNat + 1 : ℚ) / (A277543 (A277551 (n + 1)).toNat : ℚ)

end

end A248746.P5716782611636599599

/-! ## A248746.P8997816418976198655

`(A332894(A014442(n+1))+1)/A020639(3*A100484(n+1))`
-/

namespace A248746.P8997816418976198655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332894 (A014442 (n + 1)).toNat + 1 : ℚ) / (A020639 (3 * A100484 (n + 1)).toNat : ℚ)

end

end A248746.P8997816418976198655

/-! ## A248746.P16130533272513098452

`A332898(2*A014442(n+1))+1`
-/

namespace A248746.P16130533272513098452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (2 * A014442 (n + 1)).toNat + 1

end

end A248746.P16130533272513098452

/-! ## A248746.P16588001789139948457

`A332894(2*A014442(n+1))/2`
-/

namespace A248746.P16588001789139948457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332894 (2 * A014442 (n + 1)).toNat : ℚ) / 2

end

end A248746.P16588001789139948457

/-! ## A248746.P607349507403459160

`A332898(3*A014442(n+1))`
-/

namespace A248746.P607349507403459160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (3 * A014442 (n + 1)).toNat

end

end A248746.P607349507403459160

/-! ## A248746.P8043259733508298105

`A292375(p?[A014442(n+1)])`
-/

namespace A248746.P8043259733508298105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248746.P8043259733508298105

/-! ## A248746.P15630604068683362828

`A292375(A250069(n+1)+1)`
-/

namespace A248746.P15630604068683362828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A250069 (n + 1) + 1).toNat

end

end A248746.P15630604068683362828

/-! ## A248746.P14349607229642840752

`∑{d}[A014442(n+1), A292374(#)]`
-/

namespace A248746.P14349607229642840752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A292374 d

end

end A248746.P14349607229642840752

/-! ## A248746.P13889660825802568622

`A292375(A006530(n*(n+2)+2))`
-/

namespace A248746.P13889660825802568622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A006530 (n * (n + 2) + 2)).toNat

end

end A248746.P13889660825802568622

/-! ## A248746.P18108760460067751752

`(A332899(∑[n]+∑[n+1]+1)+1)/2`
-/

namespace A248746.P18108760460067751752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332899 (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + 1)) + 1 : ℚ) / 2

end

end A248746.P18108760460067751752

/-!
# A248747: The Arecibo message written as binary string: a "0" is represented by an "off" radio pulse, while a "1" is represented by an "on" radio pulse.

The programs for A248747, there is no canonical definition to state claims against.
-/

/-! ## A248747.P13715669696812167151

`and(A003849(A256995(3*(n+2))), A256995(3*(n+2)))`
-/

namespace A248747.P13715669696812167151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003849 (A256995 (3 * (n + 2))).toNat) (A256995 (3 * (n + 2)))

end

end A248747.P13715669696812167151

/-! ## A248747.P6861242310198056726

`A286925(A214025(n+2))`
-/

namespace A248747.P6861242310198056726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (A214025 (n + 2)).toNat

end

end A248747.P6861242310198056726

/-! ## A248747.P11021678235167608440

`A101637(A325877(3*n+1)+A001414(n+3))`
-/

namespace A248747.P11021678235167608440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A325877 (3 * n + 1) + A001414 (n + 3)).toNat

end

end A248747.P11021678235167608440

/-! ## A248747.P12162340584076967594

`(A347457(2*(n+2))*A347457(n+1))%2`
-/

namespace A248747.P12162340584076967594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347457 (2 * (n + 2)) * A347457 (n + 1)) 2

end

end A248747.P12162340584076967594

/-! ## A248747.P7299464398473905565

`and(char[A347457(2*n+4)], A347457(2*n+4))`
-/

namespace A248747.P7299464398473905565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (2 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A347457 (2 * n + 4))

end

end A248747.P7299464398473905565

/-!
# A248748: Number of rooted binary trees with n leaves and each internal vertex colored in one of two colors.

The programs for A248748, there is no canonical definition to state claims against.
-/

/-! ## A248748.P7961516990260053677

`A000992(n+1)*2^n`
-/

namespace A248748.P7961516990260053677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000992 (n + 1) * (2 ^ n : ℤ)

end

end A248748.P7961516990260053677

/-! ## A248748.P14878110714883858183

`A000079(n)*A000992(n+1)`
-/

namespace A248748.P14878110714883858183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000992 (n + 1)

end

end A248748.P14878110714883858183

/-! ## A248748.P7987910381536437350

`Δ[A000051(n)]*A000992(n+1)`
-/

namespace A248748.P7987910381536437350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000992 (n + 1)

end

end A248748.P7987910381536437350

/-! ## A248748.P1952621867763733924

`A000992(n+1)+A000225(n)*A000992(n+1)`
-/

namespace A248748.P1952621867763733924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000992 (n + 1) + A000225 n * A000992 (n + 1)

end

end A248748.P1952621867763733924

/-! ## A248748.P11279657417084110095

`2^n*A301368(∑[n+1])`
-/

namespace A248748.P11279657417084110095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A301368 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248748.P11279657417084110095

/-!
# A248750: Decimal expansion of limit of the imaginary part of f(1+i,n), where f(x,0) = 1 and f(x,n) = x + 1/f(x,n-1).

The programs for A248750, there is no canonical definition to state claims against.
-/

/-! ## A248750.P8844877318016610133

`9-A248752(n)`
-/

namespace A248750.P8844877318016610133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A248752 n

end

end A248750.P8844877318016610133

/-!
# A248751: Decimal expansion of limit of the real part of f(1-i,n)/f(1-i,n+1), where f(x,n) is the n-th Fibonacci polynomial.

The programs for A248751, there is no canonical definition to state claims against.
-/

/-! ## A248751.P9408339770466225500

`A248749(n+1)`
-/

namespace A248751.P9408339770466225500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248749 (n + 1 + 1)

end

end A248751.P9408339770466225500

/-!
# A248752: Decimal expansion of limit of the imaginary part of f(1-i,n)/f(1-i,n+1), where f(x,n) is the n-th Fibonacci polynomial.

The programs for A248752, there is no canonical definition to state claims against.
-/

/-! ## A248752.P17616772500401851454

`9-A248750(n)`
-/

namespace A248752.P17616772500401851454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A248750 n

end

end A248752.P17616772500401851454

/-!
# A248754: Palindromes p=A002113(n) whose index n is also a palindrome and in addition a substring of p (strings in base 10).

The programs for A248754, there is no canonical definition to state claims against.
-/

/-! ## A248754.P14647616454453361245

`A248753(A010785(n)+1)`
-/

namespace A248754.P14647616454453361245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248753 (A010785 n + 1).toNat

end

end A248754.P14647616454453361245

/-! ## A248754.P9415891680899541625

`A248753(eq[0, A341168(n)])`
-/

namespace A248754.P9415891680899541625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341168 (n + 56)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248754.P9415891680899541625

/-! ## A248754.P14583053750731243205

`A248753(lt[A341168(n), 1])`
-/

namespace A248754.P14583053750731243205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341168 (n + 56)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248753 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A248754.P14583053750731243205

/-! ## A248754.P14937235069895786883

`A248753(record[A047813(n)+1])`
-/

namespace A248754.P14937235069895786883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248754.P14937235069895786883

/-! ## A248754.P1288604150461910727

`A248753(A002113(n+1)+1)`
-/

namespace A248754.P1288604150461910727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248753 (A002113 (n + 1) + 1).toNat

end

end A248754.P1288604150461910727

/-!
# A248757: Indices of prime Fibonacci 5-step numbers, A001591.

The programs for A248757, there is no canonical definition to state claims against.
-/

/-! ## A248757.P2222637235836296535

`A105756(n+1)+3`
-/

namespace A248757.P2222637235836296535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105756 (n + 1) + 3

end

end A248757.P2222637235836296535

/-!
# A248758: Ceiling(n*Pi^(1/3)).

The programs for A248758, the canonical program `A248758.P13555058412233995131` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248758 has offset 0).

The definition of A248758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*π^(1/3))` (program `A248758.P13555058412233995131`, by `A248758.P13555058412233995131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248758.P13555058412233995131

`ceil(n*π^(1/3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248758

/-- `ceil(n*π^(1/3))` -/
def P13555058412233995131.Spec : Prop :=
  ∀ n, P13555058412233995131.a n = A248758 n

theorem P13555058412233995131.correct : P13555058412233995131.Spec := by
  intro n
  simp only [A248758]

end A248758

/-! ## A248758.P7299659303114318538

`A240977(n)+A057427(n)`
-/

namespace A248758.P7299659303114318538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + A057427 n

end

end A248758.P7299659303114318538

namespace A248758

/-- `A240977(n)+A057427(n)` -/
def P7299659303114318538.Spec : Prop :=
  ∀ n, P7299659303114318538.a n = A248758 n

end A248758

/-! ## A248758.P13097978819445239390

`A240977(n)-A057428(n)`
-/

namespace A248758.P13097978819445239390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n - A057428 n

end

end A248758.P13097978819445239390

namespace A248758

/-- `A240977(n)-A057428(n)` -/
def P13097978819445239390.Spec : Prop :=
  ∀ n, P13097978819445239390.a n = A248758 n

end A248758

/-! ## A248758.P3629568991057425093

`A240977(n)+1-A000007(n)`
-/

namespace A248758.P3629568991057425093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + (1 - A000007 n)

end

end A248758.P3629568991057425093

namespace A248758

/-- `A240977(n)+1-A000007(n)` -/
def P3629568991057425093.Spec : Prop :=
  ∀ n, P3629568991057425093.a n = A248758 n

end A248758

/-! ## A248758.P6667230747844385512

`A240977(n)+n/A028310(n)`
-/

namespace A248758.P6667230747844385512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240977 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A248758.P6667230747844385512

namespace A248758

/-- `A240977(n)+n/A028310(n)` -/
def P6667230747844385512.Spec : Prop :=
  ∀ n, P6667230747844385512.a n = (A248758 n : ℚ)

end A248758

/-! ## A248758.P5540686051287934624

`floor(A240977(n)+atan(A002378(n)))`
-/

namespace A248758.P5540686051287934624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A240977 n : ℝ) + Real.arctan (A002378 n : ℝ)⌋

end

end A248758.P5540686051287934624

namespace A248758

/-- `floor(A240977(n)+atan(A002378(n)))` -/
def P5540686051287934624.Spec : Prop :=
  ∀ n, P5540686051287934624.a n = A248758 n

end A248758

/-! ## A248758.P1095258607752886782

`A240977(n)+A005171(2*(n+1))`
-/

namespace A248758.P1095258607752886782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + A005171 (2 * (n + 1))

end

end A248758.P1095258607752886782

namespace A248758

/-- `A240977(n)+A005171(2*(n+1))` -/
def P1095258607752886782.Spec : Prop :=
  ∀ n, P1095258607752886782.a n = A248758 n

end A248758

/-! ## A248758.P10023742602331208706

`A240977(n)+A178334(A178334(n))`
-/

namespace A248758.P10023742602331208706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + A178334 (A178334 n).toNat

end

end A248758.P10023742602331208706

namespace A248758

/-- `A240977(n)+A178334(A178334(n))` -/
def P10023742602331208706.Spec : Prop :=
  ∀ n, P10023742602331208706.a n = A248758 n

end A248758

/-! ## A248758.P9769213290413555467

`A240977(n)+A001221(A061142(n+1))`
-/

namespace A248758.P9769213290413555467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + A001221 (A061142 (n + 1)).toNat

end

end A248758.P9769213290413555467

namespace A248758

/-- `A240977(n)+A001221(A061142(n+1))` -/
def P9769213290413555467.Spec : Prop :=
  ∀ n, P9769213290413555467.a n = A248758 n

end A248758

/-! ## A248758.P6889400242207202871

`comp[comp[A240977(n+1)]+1]`
-/

namespace A248758.P6889400242207202871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248758.P6889400242207202871

namespace A248758

/-- `comp[comp[A240977(n+1)]+1]` -/
def P6889400242207202871.Spec : Prop :=
  ∀ n, (P6889400242207202871.a n : ℤ) = A248758 n

end A248758

/-! ## A248758.P12081068474544320641

`A184985(A240977(n)+2)-1`
-/

namespace A248758.P12081068474544320641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A240977 n + 2).toNat - 1

end

end A248758.P12081068474544320641

namespace A248758

/-- `A184985(A240977(n)+2)-1` -/
def P12081068474544320641.Spec : Prop :=
  ∀ n, P12081068474544320641.a n = A248758 n

end A248758

/-! ## A248758.P15957048940239736686

`A240977(n)+A018783(A282795(n+1))`
-/

namespace A248758.P15957048940239736686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240977 n + A018783 (A282795 (n + 1)).toNat

end

end A248758.P15957048940239736686

namespace A248758

/-- `A240977(n)+A018783(A282795(n+1))` -/
def P15957048940239736686.Spec : Prop :=
  ∀ n, P15957048940239736686.a n = A248758 n

end A248758

/-!
# A248762: Greatest cube that divides n!.

The programs for A248762, the canonical program `A248762.P4209964246771516195` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248762 has offset 1).

The definition of A248762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248762.P11084695953098455073

`A248763(n+1)^3`
-/

namespace A248762.P11084695953098455073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248763 (n + 1) ^ 3

end

end A248762.P11084695953098455073

namespace A248762

/-- `A248763(n+1)^3` -/
def P11084695953098455073.Spec : Prop :=
  ∀ n, P11084695953098455073.a n = A248762 (n + 1)

end A248762

/-! ## A248762.P4209964246771516195

`(n+1)!/A145642(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A248762

/-- `(n+1)!/A145642(n+1)` -/
def P4209964246771516195.Spec : Prop :=
  ∀ n, P4209964246771516195.a n = (A248762 (n + 1) : ℚ)

end A248762

/-! ## A248762.P15354299252933433621

`A006882(n+1)/A145642(n+1)*A006882(n)`
-/

namespace A248762.P15354299252933433621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A248762.P15354299252933433621

namespace A248762

/-- `A006882(n+1)/A145642(n+1)*A006882(n)` -/
def P15354299252933433621.Spec : Prop :=
  ∀ n, P15354299252933433621.a n = (A248762 (n + 1) : ℚ)

end A248762

/-! ## A248762.P10237352667742032233

`A248764(n+1)/A145642(n+1)*A248766(n+1)`
-/

namespace A248762.P10237352667742032233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248764 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) * (A248766 (n + 1) : ℚ)

end

end A248762.P10237352667742032233

namespace A248762

/-- `A248764(n+1)/A145642(n+1)*A248766(n+1)` -/
def P10237352667742032233.Spec : Prop :=
  ∀ n, P10237352667742032233.a n = (A248762 (n + 1) : ℚ)

end A248762

/-! ## A248762.P10087497624524926256

`A000142(n+1)/A145642(n+1)`
-/

namespace A248762.P10087497624524926256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ)

end

end A248762.P10087497624524926256

namespace A248762

/-- `A000142(n+1)/A145642(n+1)` -/
def P10087497624524926256.Spec : Prop :=
  ∀ n, P10087497624524926256.a n = (A248762 (n + 1) : ℚ)

end A248762

/-!
# A248763: Greatest k such that k^3 divides n!

The programs for A248763, the canonical program `A248763.P3437654902808578864` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248763 has offset 1).

The definition of A248763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248763.P3437654902808578864

`A248762(n+1)^(1/3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A248763

/-- `A248762(n+1)^(1/3)` -/
def P3437654902808578864.Spec : Prop :=
  ∀ n, P3437654902808578864.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P12777707191015171866

`((n+1)!/A145642(n+1))^(1/3)`
-/

namespace A248763.P12777707191015171866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A248763.P12777707191015171866

namespace A248763

/-- `((n+1)!/A145642(n+1))^(1/3)` -/
def P12777707191015171866.Spec : Prop :=
  ∀ n, P12777707191015171866.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P11173947915844604878

`root(A248762(n+1), 3)`
-/

namespace A248763.P11173947915844604878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248762 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A248763.P11173947915844604878

namespace A248763

/-- `root(A248762(n+1), 3)` -/
def P11173947915844604878.Spec : Prop :=
  ∀ n, P11173947915844604878.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P7184529422377118206

`root(A006882(n+1)/A145642(n+1)*A006882(n), 3)`
-/

namespace A248763.P7184529422377118206
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A006882 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) * (A006882 n : ℚ) : ℝ) ^ (1 / (3 : ℝ))

end

end A248763.P7184529422377118206

namespace A248763

/-- `root(A006882(n+1)/A145642(n+1)*A006882(n), 3)` -/
def P7184529422377118206.Spec : Prop :=
  ∀ n, P7184529422377118206.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P3686497670001752556

`root(A248764(n+1)/A145642(n+1)*A248766(n+1), 3)`
-/

namespace A248763.P3686497670001752556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A248764 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) * (A248766 (n + 1) : ℚ) : ℝ) ^ (1 / (3 : ℝ))

end

end A248763.P3686497670001752556

namespace A248763

/-- `root(A248764(n+1)/A145642(n+1)*A248766(n+1), 3)` -/
def P3686497670001752556.Spec : Prop :=
  ∀ n, P3686497670001752556.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P3736121703865962356

`root((n+1)!/A145642(n+1), 3)`
-/

namespace A248763.P3736121703865962356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) : ℝ) ^ (1 / (3 : ℝ))

end

end A248763.P3736121703865962356

namespace A248763

/-- `root((n+1)!/A145642(n+1), 3)` -/
def P3736121703865962356.Spec : Prop :=
  ∀ n, P3736121703865962356.a n = (A248763 (n + 1) : ℝ)

end A248763

/-! ## A248763.P5181512320178649010

`root(A000142(n+1)/A145642(n+1), 3)`
-/

namespace A248763.P5181512320178649010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000142 (n + 1) : ℚ) / (A145642 (n + 1) : ℚ) : ℝ) ^ (1 / (3 : ℝ))

end

end A248763.P5181512320178649010

namespace A248763

/-- `root(A000142(n+1)/A145642(n+1), 3)` -/
def P5181512320178649010.Spec : Prop :=
  ∀ n, P5181512320178649010.a n = (A248763 (n + 1) : ℝ)

end A248763

/-!
# A248764: Greatest 4th power integer that divides n!

The programs for A248764, the canonical program `A248764.P11887348063717219244` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248764 has offset 1).

The definition of A248764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248766, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248764.P3155408724314953887

`A248765(n+1)^4`
-/

namespace A248764.P3155408724314953887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248765 (n + 1) ^ 4

end

end A248764.P3155408724314953887

namespace A248764

/-- `A248765(n+1)^4` -/
def P3155408724314953887.Spec : Prop :=
  ∀ n, P3155408724314953887.a n = A248764 (n + 1)

end A248764

/-! ## A248764.P11887348063717219244

`(n+1)!/A248766(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A248764

/-- `(n+1)!/A248766(n+1)` -/
def P11887348063717219244.Spec : Prop :=
  ∀ n, P11887348063717219244.a n = (A248764 (n + 1) : ℚ)

end A248764

/-! ## A248764.P9030626703660121759

`A248765(C(2, n)+1+n)²²`
-/

namespace A248764.P9030626703660121759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248765 (Nat.choose 2 n + 1 + n) ^ 2) ^ 2

end

end A248764.P9030626703660121759

namespace A248764

/-- `A248765(C(2, n)+1+n)²²` -/
def P9030626703660121759.Spec : Prop :=
  ∀ n, P9030626703660121759.a n = A248764 (n + 1)

end A248764

/-! ## A248764.P18006538100989686425

`A248765(A028242(2*n))²²`
-/

namespace A248764.P18006538100989686425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248765 (A028242 (2 * n)).toNat ^ 2) ^ 2

end

end A248764.P18006538100989686425

namespace A248764

/-- `A248765(A028242(2*n))²²` -/
def P18006538100989686425.Spec : Prop :=
  ∀ n, P18006538100989686425.a n = A248764 (n + 1)

end A248764

/-! ## A248764.P15367125777604244067

`A248765(A000188((n+1)²))²²`
-/

namespace A248764.P15367125777604244067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248765 (A000188 ((n + 1) ^ 2)).toNat ^ 2) ^ 2

end

end A248764.P15367125777604244067

namespace A248764

/-- `A248765(A000188((n+1)²))²²` -/
def P15367125777604244067.Spec : Prop :=
  ∀ n, P15367125777604244067.a n = A248764 (n + 1)

end A248764

/-! ## A248764.P11069078095421856664

`(A055772(n+1)/A240505(n+1))²`
-/

namespace A248764.P11069078095421856664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055772 (n + 1) : ℚ) / (A240505 (n + 1) : ℚ)) ^ 2

end

end A248764.P11069078095421856664

namespace A248764

/-- `(A055772(n+1)/A240505(n+1))²` -/
def P11069078095421856664.Spec : Prop :=
  ∀ n, P11069078095421856664.a n = (A248764 (n + 1) : ℚ)

end A248764

/-! ## A248764.P14956260744616034451

`A248765(A000217(n+1)-A000217(n))²²`
-/

namespace A248764.P14956260744616034451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248765 (A000217 (n + 1) - A000217 n).toNat ^ 2) ^ 2

end

end A248764.P14956260744616034451

namespace A248764

/-- `A248765(A000217(n+1)-A000217(n))²²` -/
def P14956260744616034451.Spec : Prop :=
  ∀ n, P14956260744616034451.a n = A248764 (n + 1)

end A248764

/-! ## A248764.P15477329584375500607

`A145642(n+1)/A248766(n+1)*A248762(n+1)`
-/

namespace A248764.P15477329584375500607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145642 (n + 1) : ℚ) / (A248766 (n + 1) : ℚ) * (A248762 (n + 1) : ℚ)

end

end A248764.P15477329584375500607

namespace A248764

/-- `A145642(n+1)/A248766(n+1)*A248762(n+1)` -/
def P15477329584375500607.Spec : Prop :=
  ∀ n, P15477329584375500607.a n = (A248764 (n + 1) : ℚ)

end A248764

/-! ## A248764.P1660224755089519222

`A055071(n+1)/A240505(n+1)²`
-/

namespace A248764.P1660224755089519222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055071 (n + 1) : ℚ) / (A240505 (n + 1) ^ 2 : ℚ)

end

end A248764.P1660224755089519222

namespace A248764

/-- `A055071(n+1)/A240505(n+1)²` -/
def P1660224755089519222.Spec : Prop :=
  ∀ n, P1660224755089519222.a n = (A248764 (n + 1) : ℚ)

end A248764

/-! ## A248764.P2386954517694154688

`A000142(n+1)/A248766(n+1)`
-/

namespace A248764.P2386954517694154688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248766 (n + 1) : ℚ)

end

end A248764.P2386954517694154688

namespace A248764

/-- `A000142(n+1)/A248766(n+1)` -/
def P2386954517694154688.Spec : Prop :=
  ∀ n, P2386954517694154688.a n = (A248764 (n + 1) : ℚ)

end A248764

/-!
# A248765: Greatest k such that k^4 divides n!

The programs for A248765, the canonical program `A248765.P4288200602406361013` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248765 has offset 1).

The definition of A248765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248764, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248765.P4288200602406361013

`A248764(n+1)^(1/4)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A248765

/-- `A248764(n+1)^(1/4)` -/
def P4288200602406361013.Spec : Prop :=
  ∀ n, P4288200602406361013.a n = (A248765 (n + 1) : ℝ)

end A248765

/-! ## A248765.P5384515830937240985

`((n+1)!/A248766(n+1))^(1/4)`
-/

namespace A248765.P5384515830937240985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℚ) / (A248766 (n + 1) : ℚ) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A248765.P5384515830937240985

namespace A248765

/-- `((n+1)!/A248766(n+1))^(1/4)` -/
def P5384515830937240985.Spec : Prop :=
  ∀ n, P5384515830937240985.a n = (A248765 (n + 1) : ℝ)

end A248765

/-! ## A248765.P14859761624665451062

`sqrt(A055772(n+1)/A240505(n+1))`
-/

namespace A248765.P14859761624665451062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A055772 (n + 1) : ℚ) / (A240505 (n + 1) : ℚ) : ℝ)

end

end A248765.P14859761624665451062

namespace A248765

/-- `sqrt(A055772(n+1)/A240505(n+1))` -/
def P14859761624665451062.Spec : Prop :=
  ∀ n, P14859761624665451062.a n = (A248765 (n + 1) : ℝ)

end A248765

/-! ## A248765.P1369470098490739789

`root(A248764(n+1), 4)`
-/

namespace A248765.P1369470098490739789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248764 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

end

end A248765.P1369470098490739789

namespace A248765

/-- `root(A248764(n+1), 4)` -/
def P1369470098490739789.Spec : Prop :=
  ∀ n, P1369470098490739789.a n = (A248765 (n + 1) : ℝ)

end A248765

/-! ## A248765.P13948613074836109847

`sqrt(sqrt(A055071(n+1))/A240505(n+1))`
-/

namespace A248765.P13948613074836109847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A055071 (n + 1) : ℝ) / (A240505 (n + 1) : ℝ))

end

end A248765.P13948613074836109847

namespace A248765

/-- `sqrt(sqrt(A055071(n+1))/A240505(n+1))` -/
def P13948613074836109847.Spec : Prop :=
  ∀ n, P13948613074836109847.a n = (A248765 (n + 1) : ℝ)

end A248765

/-!
# A248766: Greatest 4th-power-free divisor of n!

The programs for A248766, the canonical program `A248766.P6803094462203919962` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248766 has offset 1).

The definition of A248766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248766.P14112027322846954559

`(n+1)!/A248764(n+1)`
-/

namespace A248766.P14112027322846954559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248764 (n + 1) : ℚ)

end

end A248766.P14112027322846954559

namespace A248766

/-- `(n+1)!/A248764(n+1)` -/
def P14112027322846954559.Spec : Prop :=
  ∀ n, P14112027322846954559.a n = (A248766 (n + 1) : ℚ)

end A248766

/-! ## A248766.P6803094462203919962

`A053165((n+1)!)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A248766

/-- `A053165((n+1)!)` -/
def P6803094462203919962.Spec : Prop :=
  ∀ n, P6803094462203919962.a n = A248766 (n + 1)

theorem P6803094462203919962.correct : P6803094462203919962.Spec := by
  intro n
  simp only [A248766, Nat.add_sub_cancel]

end A248766

/-! ## A248766.P9289015304051339028

`A240505(n+1)²*A055204(n+1)`
-/

namespace A248766.P9289015304051339028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240505 (n + 1) ^ 2 * A055204 (n + 1)

end

end A248766.P9289015304051339028

namespace A248766

/-- `A240505(n+1)²*A055204(n+1)` -/
def P9289015304051339028.Spec : Prop :=
  ∀ n, P9289015304051339028.a n = A248766 (n + 1)

end A248766

/-! ## A248766.P1701553088793645780

`A248767(n+1)/A248764(n+1)*A248769(n+1)`
-/

namespace A248766.P1701553088793645780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248767 (n + 1) : ℚ) / (A248764 (n + 1) : ℚ) * (A248769 (n + 1) : ℚ)

end

end A248766.P1701553088793645780

namespace A248766

/-- `A248767(n+1)/A248764(n+1)*A248769(n+1)` -/
def P1701553088793645780.Spec : Prop :=
  ∀ n, P1701553088793645780.a n = (A248766 (n + 1) : ℚ)

end A248766

/-! ## A248766.P4844727483378352544

`A145642(n+1)/A248764(n+1)*A248762(n+1)`
-/

namespace A248766.P4844727483378352544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145642 (n + 1) : ℚ) / (A248764 (n + 1) : ℚ) * (A248762 (n + 1) : ℚ)

end

end A248766.P4844727483378352544

namespace A248766

/-- `A145642(n+1)/A248764(n+1)*A248762(n+1)` -/
def P4844727483378352544.Spec : Prop :=
  ∀ n, P4844727483378352544.a n = (A248766 (n + 1) : ℚ)

end A248766

/-! ## A248766.P5404115503725644810

`A000142(n+1)/A248764(n+1)`
-/

namespace A248766.P5404115503725644810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248764 (n + 1) : ℚ)

end

end A248766.P5404115503725644810

namespace A248766

/-- `A000142(n+1)/A248764(n+1)` -/
def P5404115503725644810.Spec : Prop :=
  ∀ n, P5404115503725644810.a n = (A248766 (n + 1) : ℚ)

end A248766

/-! ## A248766.P10966321150010169208

`A248779(∑[n+2]+4)`
-/

namespace A248766.P10966321150010169208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248766.P10966321150010169208

namespace A248766

/-- `A248779(∑[n+2]+4)` -/
def P10966321150010169208.Spec : Prop :=
  ∀ n, P10966321150010169208.a n = A248766 (n + 1)

end A248766

/-!
# A248767: Greatest 5th power integer that divides n!.

The programs for A248767, there is no canonical definition to state claims against.
-/

/-! ## A248767.P4169135246723970599

`(n+1)!/A248769(n+1)`
-/

namespace A248767.P4169135246723970599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248769 (n + 1) : ℚ)

end

end A248767.P4169135246723970599

/-! ## A248767.P994068069814610184

`A248768(n+1)^5`
-/

namespace A248767.P994068069814610184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248768 (n + 1) ^ 5

end

end A248767.P994068069814610184

/-! ## A248767.P15382696337388460759

`A000142(n+1)/A248769(n+1)`
-/

namespace A248767.P15382696337388460759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248769 (n + 1) : ℚ)

end

end A248767.P15382696337388460759

/-! ## A248767.P5772026378880630483

`∏[A000027(n+1)]/A248769(n+1)`
-/

namespace A248767.P5772026378880630483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A248769 (n + 1) : ℚ)

end

end A248767.P5772026378880630483

/-! ## A248767.P1538753502942042116

`A000584(A248768(n+1))`
-/

namespace A248767.P1538753502942042116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A248768 (n + 1)).toNat

end

end A248767.P1538753502942042116

/-!
# A248768: Greatest k such that k^5 divides n!

The programs for A248768, there is no canonical definition to state claims against.
-/

/-! ## A248768.P10471402307492637307

`root(A248767(n+1), 5)`
-/

namespace A248768.P10471402307492637307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248767 (n + 1) : ℝ) ^ (1 / (5 : ℝ))

end

end A248768.P10471402307492637307

/-!
# A248769: Greatest 5th-power-free divisor of n!.

The programs for A248769, there is no canonical definition to state claims against.
-/

/-! ## A248769.P4639497823599475862

`(n+1)!/A248767(n+1)`
-/

namespace A248769.P4639497823599475862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248767 (n + 1) : ℚ)

end

end A248769.P4639497823599475862

/-! ## A248769.P11546854943453787948

`A248764(n+1)/A248767(n+1)*A248766(n+1)`
-/

namespace A248769.P11546854943453787948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248764 (n + 1) : ℚ) / (A248767 (n + 1) : ℚ) * (A248766 (n + 1) : ℚ)

end

end A248769.P11546854943453787948

/-! ## A248769.P8686687397143306603

`A000142(n+1)/A248767(n+1)`
-/

namespace A248769.P8686687397143306603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248767 (n + 1) : ℚ)

end

end A248769.P8686687397143306603

/-! ## A248769.P4017731299537727202

`A112007(A000217(n))/A248767(n+1)`
-/

namespace A248769.P4017731299537727202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112007 (A000217 n).toNat : ℚ) / (A248767 (n + 1) : ℚ)

end

end A248769.P4017731299537727202

/-! ## A248769.P47848923807712473

`A248779(A167614(n+2)+1)`
-/

namespace A248769.P47848923807712473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A167614 (n + 2) + 1).toNat

end

end A248769.P47848923807712473

/-! ## A248769.P11224468123308125068

`A248779(Δ[A023545(n+1)-n²])`
-/

namespace A248769.P11224468123308125068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (f1 (n + 1) - f1 n).toNat

end

end A248769.P11224468123308125068

/-!
# A248770: Greatest 6th power integer that divides n!.

The programs for A248770, there is no canonical definition to state claims against.
-/

/-! ## A248770.P18257519356463259354

`(n+1)!/A248772(n+1)`
-/

namespace A248770.P18257519356463259354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248772 (n + 1) : ℚ)

end

end A248770.P18257519356463259354

/-! ## A248770.P8075226369346856667

`A248771(n+1)^6`
-/

namespace A248770.P8075226369346856667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248771 (n + 1) ^ 6

end

end A248770.P8075226369346856667

/-! ## A248770.P8442045002099778162

`A000142(n+1)/A248772(n+1)`
-/

namespace A248770.P8442045002099778162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248772 (n + 1) : ℚ)

end

end A248770.P8442045002099778162

/-! ## A248770.P14691964827171432225

`A001014(A248771(n+1))`
-/

namespace A248770.P14691964827171432225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A248771 (n + 1)).toNat

end

end A248770.P14691964827171432225

/-! ## A248770.P5092470605014201440

`A000578(A248771(n+1)²)`
-/

namespace A248770.P5092470605014201440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A248771 (n + 1) ^ 2).toNat

end

end A248770.P5092470605014201440

/-!
# A248771: Greatest k such that k^6 divides n!

The programs for A248771, there is no canonical definition to state claims against.
-/

/-! ## A248771.P17342508484479517380

`root(A248770(n+1), 6)`
-/

namespace A248771.P17342508484479517380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248770 (n + 1) : ℝ) ^ (1 / (6 : ℝ))

end

end A248771.P17342508484479517380

/-!
# A248772: Greatest 6th-power-free divisor of n!.

The programs for A248772, there is no canonical definition to state claims against.
-/

/-! ## A248772.P11953081769203209585

`(n+1)!/A248770(n+1)`
-/

namespace A248772.P11953081769203209585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248770 (n + 1) : ℚ)

end

end A248772.P11953081769203209585

/-! ## A248772.P1963377476732012482

`A000142(n+1)/A248770(n+1)`
-/

namespace A248772.P1963377476732012482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248770 (n + 1) : ℚ)

end

end A248772.P1963377476732012482

/-! ## A248772.P15899522700387842738

`A248779(A167499(n+3))`
-/

namespace A248772.P15899522700387842738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A167499 (n + 3)).toNat

end

end A248772.P15899522700387842738

/-! ## A248772.P5933166249169578653

`A248779(A155212(n)+13)`
-/

namespace A248772.P5933166249169578653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A155212 n + 13).toNat

end

end A248772.P5933166249169578653

/-! ## A248772.P885510708518368991

`A248779(A000124(n+4)+4)`
-/

namespace A248772.P885510708518368991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000124 (n + 4) + 4).toNat

end

end A248772.P885510708518368991

/-! ## A248772.P11947630800006904580

`A248779(A000096(n+3)+6)`
-/

namespace A248772.P11947630800006904580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000096 (n + 3) + 6).toNat

end

end A248772.P11947630800006904580

/-! ## A248772.P16689275076623306631

`A248779(A000217(n+4)+5)`
-/

namespace A248772.P16689275076623306631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000217 (n + 4) + 5).toNat

end

end A248772.P16689275076623306631

/-! ## A248772.P5161059346529591794

`A248779(A055999(n+3)-2*n)`
-/

namespace A248772.P5161059346529591794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A248772.P5161059346529591794

/-! ## A248772.P13533066490314147924

`A248779(Δ[A026054(n+3)]-2*n)`
-/

namespace A248772.P13533066490314147924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A248772.P13533066490314147924

/-! ## A248772.P5021046483589220841

`A248779(A038722(Δ[A023545(n+1)]))`
-/

namespace A248772.P5021046483589220841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A248772.P5021046483589220841

/-!
# A248773: Greatest 7th power integer that divides n!.

The programs for A248773, there is no canonical definition to state claims against.
-/

/-! ## A248773.P13591342563141407143

`(n+1)!/A248775(n+1)`
-/

namespace A248773.P13591342563141407143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248775 (n + 1) : ℚ)

end

end A248773.P13591342563141407143

/-! ## A248773.P12617344223607436772

`A248774(n+1)^7`
-/

namespace A248773.P12617344223607436772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248774 (n + 1) ^ 7

end

end A248773.P12617344223607436772

/-! ## A248773.P14274087875708372851

`A000142(n+1)/A248775(n+1)`
-/

namespace A248773.P14274087875708372851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248775 (n + 1) : ℚ)

end

end A248773.P14274087875708372851

/-! ## A248773.P590755836253799495

`record[A094587(n)]/A248779(A000124(n+5)+5)`
-/

namespace A248773.P590755836253799495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A248779 (A000124 (n + 5) + 5).toNat : ℚ)

end

end A248773.P590755836253799495

/-! ## A248773.P6673149175681590816

`record[A098361(n)]/A248779(A000124(n+5)+5)`
-/

namespace A248773.P6673149175681590816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A248779 (A000124 (n + 5) + 5).toNat : ℚ)

end

end A248773.P6673149175681590816

/-!
# A248774: Greatest k such that k^7 divides n!

The programs for A248774, there is no canonical definition to state claims against.
-/

/-! ## A248774.P1621679878674991730

`root(A248773(n+1), 7)`
-/

namespace A248774.P1621679878674991730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248773 (n + 1) : ℝ) ^ (1 / (7 : ℝ))

end

end A248774.P1621679878674991730

/-!
# A248775: Greatest 7th-power-free divisor of n!.

The programs for A248775, there is no canonical definition to state claims against.
-/

/-! ## A248775.P3964997289902309003

`(n+1)!/A248773(n+1)`
-/

namespace A248775.P3964997289902309003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248773 (n + 1) : ℚ)

end

end A248775.P3964997289902309003

/-! ## A248775.P15550570069942978335

`A248776(n+1)/A248773(n+1)*A248778(n+1)`
-/

namespace A248775.P15550570069942978335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248776 (n + 1) : ℚ) / (A248773 (n + 1) : ℚ) * (A248778 (n + 1) : ℚ)

end

end A248775.P15550570069942978335

/-! ## A248775.P13080068139197937603

`A000142(n+1)/A248773(n+1)`
-/

namespace A248775.P13080068139197937603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248773 (n + 1) : ℚ)

end

end A248775.P13080068139197937603

/-! ## A248775.P5673878543503825041

`A248779(A000124(n+5)+5)`
-/

namespace A248775.P5673878543503825041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000124 (n + 5) + 5).toNat

end

end A248775.P5673878543503825041

/-! ## A248775.P13593855553001658382

`A248779(A000217(n+5)+6)`
-/

namespace A248775.P13593855553001658382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000217 (n + 5) + 6).toNat

end

end A248775.P13593855553001658382

/-! ## A248775.P14541507524822454798

`A248779(A133263(n+6)-(n+2))`
-/

namespace A248775.P14541507524822454798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A248775.P14541507524822454798

/-!
# A248776: Greatest 8th power integer that divides n!

The programs for A248776, there is no canonical definition to state claims against.
-/

/-! ## A248776.P15214572322679663881

`(n+1)!/A248778(n+1)`
-/

namespace A248776.P15214572322679663881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248778 (n + 1) : ℚ)

end

end A248776.P15214572322679663881

/-! ## A248776.P1511828691445280558

`A248777(n+1)^8`
-/

namespace A248776.P1511828691445280558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248777 (n + 1) ^ 8

end

end A248776.P1511828691445280558

/-! ## A248776.P6168055129800574061

`A248773(n+1)/A248778(n+1)*A248775(n+1)`
-/

namespace A248776.P6168055129800574061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248773 (n + 1) : ℚ) / (A248778 (n + 1) : ℚ) * (A248775 (n + 1) : ℚ)

end

end A248776.P6168055129800574061

/-! ## A248776.P8136952674626686948

`A000142(n+1)/A248778(n+1)`
-/

namespace A248776.P8136952674626686948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248778 (n + 1) : ℚ)

end

end A248776.P8136952674626686948

/-! ## A248776.P17430206675637026995

`A001016(A248777(n+1))`
-/

namespace A248776.P17430206675637026995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A248777 (n + 1)).toNat

end

end A248776.P17430206675637026995

/-!
# A248777: Greatest k such that k^8 divides n!

The programs for A248777, there is no canonical definition to state claims against.
-/

/-! ## A248777.P5099654868955213006

`root(A248776(n+1), 8)`
-/

namespace A248777.P5099654868955213006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248776 (n + 1) : ℝ) ^ (1 / (8 : ℝ))

end

end A248777.P5099654868955213006

/-! ## A248777.P16707089327412615784

`A272679(sqrt(sqrt(A248776(n+1))))`
-/

namespace A248777.P16707089327412615784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A248776 (n + 1) : ℝ)))).toNat

end

end A248777.P16707089327412615784

/-!
# A248778: Greatest 8th-power-free divisor of n!.

The programs for A248778, there is no canonical definition to state claims against.
-/

/-! ## A248778.P11251714418275738330

`A248773(n+1)/A248776(n+1)*A248775(n+1)`
-/

namespace A248778.P11251714418275738330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248773 (n + 1) : ℚ) / (A248776 (n + 1) : ℚ) * (A248775 (n + 1) : ℚ)

end

end A248778.P11251714418275738330

/-! ## A248778.P11891637031681617161

`(n+1)!/A248776(n+1)`
-/

namespace A248778.P11891637031681617161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248776 (n + 1) : ℚ)

end

end A248778.P11891637031681617161

/-! ## A248778.P18307582798970378600

`record[A094587(n)]/A248776(n+1)`
-/

namespace A248778.P18307582798970378600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A248776 (n + 1) : ℚ)

end

end A248778.P18307582798970378600

/-! ## A248778.P3345652303456748332

`record[A182062(n)]/A248776(n+1)`
-/

namespace A248778.P3345652303456748332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A248776 (n + 1) : ℚ)

end

end A248778.P3345652303456748332

/-! ## A248778.P13644462839932277214

`record[A190782(n)]/A248776(n+1)`
-/

namespace A248778.P13644462839932277214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A248776 (n + 1) : ℚ)

end

end A248778.P13644462839932277214

/-! ## A248778.P4004220243833418264

`A000142(n+1)/A248776(n+1)`
-/

namespace A248778.P4004220243833418264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248776 (n + 1) : ℚ)

end

end A248778.P4004220243833418264

/-! ## A248778.P10863332870264771412

`A248779(A133263(n+6)+5)`
-/

namespace A248778.P10863332870264771412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A133263 (n + 6) + 5).toNat

end

end A248778.P10863332870264771412

/-! ## A248778.P8888940034116925265

`A248779(A000124(n+6)+6)`
-/

namespace A248778.P8888940034116925265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (A000124 (n + 6) + 6).toNat

end

end A248778.P8888940034116925265

/-!
# A248780: Number of cubes that divide n!

The programs for A248780, there is no canonical definition to state claims against.
-/

/-! ## A248780.P7052315695538121744

`∏{e}[A248763(n+1), #+1]`
-/

namespace A248780.P7052315695538121744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A248780.P7052315695538121744

/-! ## A248780.P13677562885870446368

`∑{d}[A248763(n+1), A248763(ceil(3/#))]`
-/

namespace A248780.P13677562885870446368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A248763 ⌈3 / (d : ℚ)⌉.toNat

end

end A248780.P13677562885870446368

/-! ## A248780.P2151049013959980278

`∑{d}[A248763(n+1), gcd(#, A145737(n+1))]`
-/

namespace A248780.P2151049013959980278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A145737 (n + 1))

end

end A248780.P2151049013959980278

/-! ## A248780.P17015614558200604366

`A000005(A248763(n+1))`
-/

namespace A248780.P17015614558200604366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248763 (n + 1)).toNat

end

end A248780.P17015614558200604366

/-! ## A248780.P6143815759872342172

`A000005(root(A248762(n+1), 3))`
-/

namespace A248780.P6143815759872342172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A248762 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A248780.P6143815759872342172

/-!
# A248781: Number of integers k^4 that divide n!

The programs for A248781, there is no canonical definition to state claims against.
-/

/-! ## A248781.P583156638744849980

`∏{e}[A248765(n+1), #+1]`
-/

namespace A248781.P583156638744849980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A248781.P583156638744849980

/-! ## A248781.P9097669685487792614

`∏{e}[sqrt(A055772(n+1)/A240505(n+1)), #+1]`
-/

namespace A248781.P9097669685487792614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A055772 (n + 1) : ℚ) / (A240505 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A248781.P9097669685487792614

/-! ## A248781.P120993358738366512

`A000005(A248765(n+1))`
-/

namespace A248781.P120993358738366512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248765 (n + 1)).toNat

end

end A248781.P120993358738366512

/-! ## A248781.P10396886149414596574

`A000005(root(A248764(n+1), 4))`
-/

namespace A248781.P10396886149414596574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A248764 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A248781.P10396886149414596574

/-! ## A248781.P15329953544124698806

`A000005(sqrt(sqrt(A248764(n+1))))`
-/

namespace A248781.P15329953544124698806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A248764 (n + 1) : ℝ)))).toNat

end

end A248781.P15329953544124698806

/-!
# A248782: Number of integers k^5 that divide n!.

The programs for A248782, there is no canonical definition to state claims against.
-/

/-! ## A248782.P14104672296590883948

`∏{e}[A248768(n+1), #+1]`
-/

namespace A248782.P14104672296590883948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A248782.P14104672296590883948

/-! ## A248782.P15855510592238673914

`A000005(A248768(n+1))`
-/

namespace A248782.P15855510592238673914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248768 (n + 1)).toNat

end

end A248782.P15855510592238673914

/-! ## A248782.P11508581058391967451

`A000005(root(A248767(n+1), 5))`
-/

namespace A248782.P11508581058391967451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A248767 (n + 1) : ℝ) ^ (1 / (5 : ℝ)))).toNat

end

end A248782.P11508581058391967451

/-! ## A248782.P12603028613719619206

`A183063(2*A248768(n+1))`
-/

namespace A248782.P12603028613719619206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A248768 (n + 1)).toNat

end

end A248782.P12603028613719619206

/-!
# A248783: Number of integers k^6 that divide n!.

The programs for A248783, there is no canonical definition to state claims against.
-/

/-! ## A248783.P17430733488961921081

`∏{e}[A248771(n+1), #+1]`
-/

namespace A248783.P17430733488961921081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A248783.P17430733488961921081

/-! ## A248783.P2093553718003690544

`A000005(A248771(n+1))`
-/

namespace A248783.P2093553718003690544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248771 (n + 1)).toNat

end

end A248783.P2093553718003690544

/-! ## A248783.P13259947210933342961

`A183063(2*A248771(n+1))`
-/

namespace A248783.P13259947210933342961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A248771 (n + 1)).toNat

end

end A248783.P13259947210933342961

/-!
# A248784: Number of squares that divide 1!*2!*3!*...*n!.

The programs for A248784, there is no canonical definition to state claims against.
-/

/-! ## A248784.P2871047199986111505

`A000010(or(1, A362708(2*(n+2))))`
-/

namespace A248784.P2871047199986111505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 1 (A362708 (2 * (n + 2)))).toNat

end

end A248784.P2871047199986111505

/-!
# A248792: Numbers k such that sigma(k) - 1 is a prime p.

The programs for A248792, the canonical program `A248792.P3751142704019262655` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248792 has offset 1).

The definition of A248792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248792.P3751142704019262655

`eq[1, A296211(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A248792

/-- `eq[1, A296211(n+1)]+1` -/
def P3751142704019262655.Spec : Prop :=
  ∀ n, (P3751142704019262655.a n : ℤ) = A248792 (n + 1)

theorem P3751142704019262655.correct : P3751142704019262655.Spec := by
  intro n
  simp only [A248792, Nat.add_sub_cancel]

end A248792

/-! ## A248792.P6279335489756450225

`eq[2, A296091(n+1)]+1`
-/

namespace A248792.P6279335489756450225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248792.P6279335489756450225

namespace A248792

/-- `eq[2, A296091(n+1)]+1` -/
def P6279335489756450225.Spec : Prop :=
  ∀ n, (P6279335489756450225.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P14941023664015983356

`record[(n+1)*A296211(n+2)+1]`
-/

namespace A248792.P14941023664015983356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296211 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248792.P14941023664015983356

namespace A248792

/-- `record[(n+1)*A296211(n+2)+1]` -/
def P14941023664015983356.Spec : Prop :=
  ∀ n, P14941023664015983356.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P16065985268113776944

`∪[A000040(n+1), A066073(n+1)]`
-/

namespace A248792.P16065985268113776944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248792.P16065985268113776944

namespace A248792

/-- `∪[A000040(n+1), A066073(n+1)]` -/
def P16065985268113776944.Spec : Prop :=
  ∀ n, (P16065985268113776944.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P12588138016984040960

`∪[A116974(n+1), A066073(n+1)]`
-/

namespace A248792.P12588138016984040960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248792.P12588138016984040960

namespace A248792

/-- `∪[A116974(n+1), A066073(n+1)]` -/
def P12588138016984040960.Spec : Prop :=
  ∀ n, (P12588138016984040960.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P8649302702431968056

`eq[1, A001222(A000203(n+2)-1)]+2`
-/

namespace A248792.P8649302702431968056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A248792.P8649302702431968056

namespace A248792

/-- `eq[1, A001222(A000203(n+2)-1)]+2` -/
def P8649302702431968056.Spec : Prop :=
  ∀ n, (P8649302702431968056.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P14678243094691295784

`eq[2, A000005(A000203(n+2)-1)]+2`
-/

namespace A248792.P14678243094691295784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A248792.P14678243094691295784

namespace A248792

/-- `eq[2, A000005(A000203(n+2)-1)]+2` -/
def P14678243094691295784.Spec : Prop :=
  ∀ n, (P14678243094691295784.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P8096214450976244568

`eq[1, A202111(n+2)]+2`
-/

namespace A248792.P8096214450976244568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202111 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A248792.P8096214450976244568

namespace A248792

/-- `eq[1, A202111(n+2)]+2` -/
def P8096214450976244568.Spec : Prop :=
  ∀ n, (P8096214450976244568.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P2814992068365063963

`filter[A000037(n+1), A296211(#)]`
-/

namespace A248792.P2814992068365063963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P2814992068365063963

namespace A248792

/-- `filter[A000037(n+1), A296211(#)]` -/
def P2814992068365063963.Spec : Prop :=
  ∀ n, P2814992068365063963.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P8732278770529204657

`filter[A164514(n+1), A296211(#)]`
-/

namespace A248792.P8732278770529204657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P8732278770529204657

namespace A248792

/-- `filter[A164514(n+1), A296211(#)]` -/
def P8732278770529204657.Spec : Prop :=
  ∀ n, P8732278770529204657.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P15617323724320311772

`filter[A386267(n+1), A296211(#)]`
-/

namespace A248792.P15617323724320311772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P15617323724320311772

namespace A248792

/-- `filter[A386267(n+1), A296211(#)]` -/
def P15617323724320311772.Spec : Prop :=
  ∀ n, P15617323724320311772.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P17397927121956377668

`filter[A085971(n+1), A296211(#)]`
-/

namespace A248792.P17397927121956377668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P17397927121956377668

namespace A248792

/-- `filter[A085971(n+1), A296211(#)]` -/
def P17397927121956377668.Spec : Prop :=
  ∀ n, P17397927121956377668.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P12949408941373316067

`filter[A213367(n+1), A296211(#)]`
-/

namespace A248792.P12949408941373316067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P12949408941373316067

namespace A248792

/-- `filter[A213367(n+1), A296211(#)]` -/
def P12949408941373316067.Spec : Prop :=
  ∀ n, P12949408941373316067.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P16065607659192932694

`filter[A376573(n+1), A296211(#)]`
-/

namespace A248792.P16065607659192932694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A248792.P16065607659192932694

namespace A248792

/-- `filter[A376573(n+1), A296211(#)]` -/
def P16065607659192932694.Spec : Prop :=
  ∀ n, P16065607659192932694.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P8372091939560980666

`filter[n+2, A296211(#)]`
-/

namespace A248792.P8372091939560980666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j) = 1) n)

end

end A248792.P8372091939560980666

namespace A248792

/-- `filter[n+2, A296211(#)]` -/
def P8372091939560980666.Spec : Prop :=
  ∀ n, (P8372091939560980666.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P5212495281417830731

`lt[A039655(n+2), 2]+2`
-/

namespace A248792.P5212495281417830731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A248792.P5212495281417830731

namespace A248792

/-- `lt[A039655(n+2), 2]+2` -/
def P5212495281417830731.Spec : Prop :=
  ∀ n, (P5212495281417830731.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P15312525701008695569

`A020725(eq[1, A296211(n+1)])`
-/

namespace A248792.P15312525701008695569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248792.P15312525701008695569

namespace A248792

/-- `A020725(eq[1, A296211(n+1)])` -/
def P15312525701008695569.Spec : Prop :=
  ∀ n, P15312525701008695569.a n = A248792 (n + 1)

end A248792

/-! ## A248792.P5444777463608418316

`eq[3, A054024(∏{e}[A001065(n+1)+n, #+1]²)]+1`
-/

namespace A248792.P5444777463608418316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248792.P5444777463608418316

namespace A248792

/-- `eq[3, A054024(∏{e}[A001065(n+1)+n, #+1]²)]+1` -/
def P5444777463608418316.Spec : Prop :=
  ∀ n, (P5444777463608418316.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P16410424518175963921

`eq[1, A001222(A237588(n+1)+A004273(n)+1)]+1`
-/

namespace A248792.P16410424518175963921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A237588 (n + 1) + A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248792.P16410424518175963921

namespace A248792

/-- `eq[1, A001222(A237588(n+1)+A004273(n)+1)]+1` -/
def P16410424518175963921.Spec : Prop :=
  ∀ n, (P16410424518175963921.a n : ℤ) = A248792 (n + 1)

end A248792

/-! ## A248792.P1946401893498248402

`eq[1, A074206(A039653(n))]`
-/

namespace A248792.P1946401893498248402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248792.P1946401893498248402

namespace A248792

/-- `eq[1, A074206(A039653(n))]` -/
def P1946401893498248402.Spec : Prop :=
  ∀ n, (P1946401893498248402.a n : ℤ) = A248792 (n + 1)

end A248792

/-!
# A248793: Sigma(n) - 1 for n such that sigma(n) - 1 is prime.

The programs for A248793, the canonical program `A248793.P15653904006312426899` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248793 has offset 1).

The definition of A248793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248792, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248793.P15653904006312426899

`A000203(A248792(n+1))-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A248793

/-- `A000203(A248792(n+1))-1` -/
def P15653904006312426899.Spec : Prop :=
  ∀ n, P15653904006312426899.a n = A248793 (n + 1)

theorem P15653904006312426899.correct : P15653904006312426899.Spec := by
  intro n
  simp only [A248793, Nat.add_sub_cancel]

end A248793

/-! ## A248793.P8733704059332624800

`p?[A000203(n+1)-1]`
-/

namespace A248793.P8733704059332624800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P8733704059332624800

namespace A248793

/-- `p?[A000203(n+1)-1]` -/
def P8733704059332624800.Spec : Prop :=
  ∀ n, P8733704059332624800.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P11500857334702407675

`A000203(eq[2, A000005(A000203(n+2)-1)]+2)-1`
-/

namespace A248793.P11500857334702407675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A248793.P11500857334702407675

namespace A248793

/-- `A000203(eq[2, A000005(A000203(n+2)-1)]+2)-1` -/
def P11500857334702407675.Spec : Prop :=
  ∀ n, P11500857334702407675.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P46962564291203916

`p?[A155085(n+1)-(n+2)]`
-/

namespace A248793.P46962564291203916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P46962564291203916

namespace A248793

/-- `p?[A155085(n+1)-(n+2)]` -/
def P46962564291203916.Spec : Prop :=
  ∀ n, P46962564291203916.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P17872844627201908468

`p?[floor(A002659(n+1)/2)]`
-/

namespace A248793.P17872844627201908468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002659 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P17872844627201908468

namespace A248793

/-- `p?[floor(A002659(n+1)/2)]` -/
def P17872844627201908468.Spec : Prop :=
  ∀ n, P17872844627201908468.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P2769263157889352567

`p?[∑{d}[n+2, #]-1]`
-/

namespace A248793.P2769263157889352567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P2769263157889352567

namespace A248793

/-- `p?[∑{d}[n+2, #]-1]` -/
def P2769263157889352567.Spec : Prop :=
  ∀ n, P2769263157889352567.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P8749004498927058320

`p?[∑[A053222(n+1)]]`
-/

namespace A248793.P8749004498927058320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P8749004498927058320

namespace A248793

/-- `p?[∑[A053222(n+1)]]` -/
def P8749004498927058320.Spec : Prop :=
  ∀ n, P8749004498927058320.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P3937826502701936683

`A039654(A248792(n+1))`
-/

namespace A248793.P3937826502701936683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (A248792 (n + 1)).toNat

end

end A248793.P3937826502701936683

namespace A248793

/-- `A039654(A248792(n+1))` -/
def P3937826502701936683.Spec : Prop :=
  ∀ n, P3937826502701936683.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P6804253282566245318

`p?[A039653(n)]`
-/

namespace A248793.P6804253282566245318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P6804253282566245318

namespace A248793

/-- `p?[A039653(n)]` -/
def P6804253282566245318.Spec : Prop :=
  ∀ n, P6804253282566245318.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P15186624356382303267

`p?[A325651(n+1)]`
-/

namespace A248793.P15186624356382303267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P15186624356382303267

namespace A248793

/-- `p?[A325651(n+1)]` -/
def P15186624356382303267.Spec : Prop :=
  ∀ n, P15186624356382303267.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P6032005288582219276

`p?[∑[A340793(n+2)]]`
-/

namespace A248793.P6032005288582219276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P6032005288582219276

namespace A248793

/-- `p?[∑[A340793(n+2)]]` -/
def P6032005288582219276.Spec : Prop :=
  ∀ n, P6032005288582219276.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P14635300712590479733

`p?[A088580(n+1)-2]`
-/

namespace A248793.P14635300712590479733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P14635300712590479733

namespace A248793

/-- `p?[A088580(n+1)-2]` -/
def P14635300712590479733.Spec : Prop :=
  ∀ n, P14635300712590479733.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P17646653949608391502

`p?[A001065(n+1)+n]`
-/

namespace A248793.P17646653949608391502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P17646653949608391502

namespace A248793

/-- `p?[A001065(n+1)+n]` -/
def P17646653949608391502.Spec : Prop :=
  ∀ n, P17646653949608391502.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P9267550539010338782

`p?[A173455(n+1)+n]`
-/

namespace A248793.P9267550539010338782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P9267550539010338782

namespace A248793

/-- `p?[A173455(n+1)+n]` -/
def P9267550539010338782.Spec : Prop :=
  ∀ n, P9267550539010338782.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P4623368127942344763

`p?[abs(A143348(n+1))-1]`
-/

namespace A248793.P4623368127942344763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P4623368127942344763

namespace A248793

/-- `p?[abs(A143348(n+1))-1]` -/
def P4623368127942344763.Spec : Prop :=
  ∀ n, P4623368127942344763.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P10707460264123575206

`p?[A245092(2*n+1)-1]`
-/

namespace A248793.P10707460264123575206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P10707460264123575206

namespace A248793

/-- `p?[A245092(2*n+1)-1]` -/
def P10707460264123575206.Spec : Prop :=
  ∀ n, P10707460264123575206.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P2528752821579653487

`p?[A048050(n+1)+1+n]`
-/

namespace A248793.P2528752821579653487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P2528752821579653487

namespace A248793

/-- `p?[A048050(n+1)+1+n]` -/
def P2528752821579653487.Spec : Prop :=
  ∀ n, P2528752821579653487.a n = A248793 (n + 1)

end A248793

/-! ## A248793.P11182299779061298405

`p?[A237588(n+1)+2*n]`
-/

namespace A248793.P11182299779061298405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248793.P11182299779061298405

namespace A248793

/-- `p?[A237588(n+1)+2*n]` -/
def P11182299779061298405.Spec : Prop :=
  ∀ n, P11182299779061298405.a n = A248793 (n + 1)

end A248793

/-!
# A248794: a(n) = the smallest number k for which the sum of digits (A007953(k)) and the product of digits (A007954(k)) are both equal to A002473(n).

The programs for A248794, there is no canonical definition to state claims against.
-/

/-! ## A248794.P7589148112035397788

`A064158(A261279(n+2))`
-/

namespace A248794.P7589148112035397788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (A261279 (n + 2)).toNat

end

end A248794.P7589148112035397788

/-! ## A248794.P2862653583840810681

`A061672(∑[A322298(n)²])`
-/

namespace A248794.P2862653583840810681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322298 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248794.P2862653583840810681

/-! ## A248794.P7602958923474159430

`A064158(∑[A267266(n+1)])`
-/

namespace A248794.P7602958923474159430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248794.P7602958923474159430

/-! ## A248794.P16594408533411428406

`A061672(A322298(n)²+n)`
-/

namespace A248794.P16594408533411428406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061672 (A322298 n ^ 2 + (n : ℤ)).toNat

end

end A248794.P16594408533411428406

/-! ## A248794.P17243837267062910787

`A064158(A267266(n+1)+n)`
-/

namespace A248794.P17243837267062910787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (A267266 (n + 1) + (n : ℤ)).toNat

end

end A248794.P17243837267062910787

/-!
# A248795: Numbers k such that Product_{d|k} phi(d) = Product_{d|(k+1)} phi(d) where phi(x) = Euler totient function (A000010).

The programs for A248795, there is no canonical definition to state claims against.
-/

/-! ## A248795.P12576574052205469057

`A248796(n+1)-2`
-/

namespace A248795.P12576574052205469057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248796 (n + 1) - 2

end

end A248795.P12576574052205469057

/-! ## A248795.P9579268139947448032

`A340094(A214287(n+1))+A248796(n+1)`
-/

namespace A248795.P9579268139947448032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340094 (A214287 (n + 1)).toNat + A248796 (n + 1)

end

end A248795.P9579268139947448032

/-! ## A248795.P304038477838762047

`A248811(A178334(n+3))+A248796(n+1)`
-/

namespace A248795.P304038477838762047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248811 (A178334 (n + 3)).toNat + A248796 (n + 1)

end

end A248795.P304038477838762047

/-! ## A248795.P6111230411883827755

`A327867(A259788(n+4))+A248796(n+1)`
-/

namespace A248795.P6111230411883827755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327867 (A259788 (n + 4)).toNat + A248796 (n + 1)

end

end A248795.P6111230411883827755

/-!
# A248796: Numbers k such that Product_{d|(k-2)} phi(d) = Product_{d|(k-1)} phi(d) where phi(x) = Euler totient function (A000010).

The programs for A248796, there is no canonical definition to state claims against.
-/

/-! ## A248796.P14036372552036251621

`A248795(n+1)+2`
-/

namespace A248796.P14036372552036251621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248795 (n + 1) + 2

end

end A248796.P14036372552036251621

/-! ## A248796.P17418289633047179699

`p?[A247164(n+1)]`
-/

namespace A248796.P17418289633047179699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248796.P17418289633047179699

/-!
# A248798: E.g.f.: Sum_{n>=0} (exp((n+1)*x) - 1)^n.

The programs for A248798, there is no canonical definition to state claims against.
-/

/-! ## A248798.P17634883716080157108

`A383410(2*n²)`
-/

namespace A248798.P17634883716080157108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383410 (2 * n ^ 2)

end

end A248798.P17634883716080157108

/-!
# A248799: Prime numbers p such that p^3 is an interprime = average of two successive primes.

The programs for A248799, there is no canonical definition to state claims against.
-/

/-! ## A248799.P7183595476372616337

`p?[A075191(n+1)]`
-/

namespace A248799.P7183595476372616337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248799.P7183595476372616337

/-! ## A248799.P16258915917043351774

`record[p?[A075191(A286378(n))]]`
-/

namespace A248799.P16258915917043351774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P16258915917043351774

/-! ## A248799.P12160145319361355699

`record[p?[A075191(A291766(n))]]`
-/

namespace A248799.P12160145319361355699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P12160145319361355699

/-! ## A248799.P13084345860531720471

`record[p?[A075191(A133310(n))]]`
-/

namespace A248799.P13084345860531720471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P13084345860531720471

/-! ## A248799.P7064894256304122776

`record[p?[A075191(A246694(n))]]`
-/

namespace A248799.P7064894256304122776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P7064894256304122776

/-! ## A248799.P13655959081499551444

`record[p?[A075191(A126759(n))]]`
-/

namespace A248799.P13655959081499551444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P13655959081499551444

/-! ## A248799.P10311005804096291449

`p?[A010213(n)*A075191(A126759(n))]`
-/

namespace A248799.P10311005804096291449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010213 n * A075191 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248799.P10311005804096291449

/-! ## A248799.P13546186471130587262

`record[p?[A075191(A065648(n))]]`
-/

namespace A248799.P13546186471130587262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248799.P13546186471130587262

