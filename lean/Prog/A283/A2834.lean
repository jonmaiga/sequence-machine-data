import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283400: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A283400, there is no canonical definition to state claims against.
-/

/-! ## A283400.P9491515021981528906

`A007088(A283402(n))`
-/

namespace A283400.P9491515021981528906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283402 n).toNat

end

end A283400.P9491515021981528906

/-! ## A283400.P16734486043464193500

`A007088(A281738(n)+A283403(n)-A281737(n))`
-/

namespace A283400.P16734486043464193500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281738 n + (A283403 n - A281737 n)).toNat

end

end A283400.P16734486043464193500

/-! ## A283400.P9084926235600948904

`A007088(A281738(n)-(A281737(n)-A283403(n)))`
-/

namespace A283400.P9084926235600948904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281738 n - (A281737 n - A283403 n)).toNat

end

end A283400.P9084926235600948904

/-! ## A283400.P4841870530088549834

`A185544(2*A283402(n))`
-/

namespace A283400.P4841870530088549834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283402 n).toNat

end

end A283400.P4841870530088549834

/-! ## A283400.P17864305501315104894

`A185544(2*(A281738(n)+A283403(n)-A281737(n)))`
-/

namespace A283400.P17864305501315104894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A281738 n + (A283403 n - A281737 n))).toNat

end

end A283400.P17864305501315104894

/-!
# A283401: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A283401, there is no canonical definition to state claims against.
-/

/-! ## A283401.P11878119766250803822

`A007088(A283403(n))`
-/

namespace A283401.P11878119766250803822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283403 n).toNat

end

end A283401.P11878119766250803822

/-! ## A283401.P17410862658267725771

`A007088(A198633(n)-(A281738(n)+1))`
-/

namespace A283401.P17410862658267725771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - (A281738 n + 1)).toNat

end

end A283401.P17410862658267725771

/-! ## A283401.P7327790097843857330

`A007088(A198633(n)-1-A281738(n))`
-/

namespace A283401.P7327790097843857330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - 1 - A281738 n).toNat

end

end A283401.P7327790097843857330

/-! ## A283401.P4219942120834816498

`A007088(A281737(n)+A283402(n)-A281738(n))`
-/

namespace A283401.P4219942120834816498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281737 n + (A283402 n - A281738 n)).toNat

end

end A283401.P4219942120834816498

/-! ## A283401.P6351664122547703450

`A007088(A281737(n)-(A281738(n)-A283402(n)))`
-/

namespace A283401.P6351664122547703450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281737 n - (A281738 n - A283402 n)).toNat

end

end A283401.P6351664122547703450

/-!
# A283402: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A283402, there is no canonical definition to state claims against.
-/

/-! ## A283402.P16033977858945765378

`A126646(n)%A281737(A028310(n))`
-/

namespace A283402.P16033977858945765378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A281737 (A028310 n).toNat)

end

end A283402.P16033977858945765378

/-! ## A283402.P14072135183183386285

`A000225(n+1)%A281737(A028310(n))`
-/

namespace A283402.P14072135183183386285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A281737 (A028310 n).toNat)

end

end A283402.P14072135183183386285

/-! ## A283402.P2663864706476847868

`A281738(n)+A283403(n)-A281737(n)`
-/

namespace A283402.P2663864706476847868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281738 n + (A283403 n - A281737 n)

end

end A283402.P2663864706476847868

/-! ## A283402.P4885986093358307529

`or(A000225(n), A052531(n))-A281737(n)`
-/

namespace A283402.P4885986093358307529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A281737 n

end

end A283402.P4885986093358307529

/-! ## A283402.P10543817760165557305

`∑[∑[A011782(n)]]%A281737(A028310(n))`
-/

namespace A283402.P10543817760165557305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A281737 (A028310 n).toNat)

end

end A283402.P10543817760165557305

/-!
# A283403: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A283403, there is no canonical definition to state claims against.
-/

/-! ## A283403.P10071974664559053044

`A198633(n)-(A281738(n)+1)`
-/

namespace A283403.P10071974664559053044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A281738 n + 1)

end

end A283403.P10071974664559053044

/-! ## A283403.P5277596333361493144

`xor(record[A077896(n+1)], A281738(n))`
-/

namespace A283403.P5277596333361493144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A281738 n)

end

end A283403.P5277596333361493144

/-! ## A283403.P4734411527506662585

`xor(A077896(A004277(n)), A281738(n))`
-/

namespace A283403.P4734411527506662585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A281738 n)

end

end A283403.P4734411527506662585

/-! ## A283403.P13613901998613073233

`A281737(n)+A283402(n)-A281738(n)`
-/

namespace A283403.P13613901998613073233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281737 n + (A283402 n - A281738 n)

end

end A283403.P13613901998613073233

/-! ## A283403.P5865528837237904675

`or(A000225(n), A052531(n))-A281738(n)`
-/

namespace A283403.P5865528837237904675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A281738 n

end

end A283403.P5865528837237904675

/-!
# A283404: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A283404, there is no canonical definition to state claims against.
-/

/-! ## A283404.P1515282577075570617

`A007088(A283406(n))`
-/

namespace A283404.P1515282577075570617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283406 n).toNat

end

end A283404.P1515282577075570617

/-! ## A283404.P13787972739209601480

`A185544(2*A283406(n))`
-/

namespace A283404.P13787972739209601480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283406 n).toNat

end

end A283404.P13787972739209601480

/-! ## A283404.P4760598654204834756

`A185544(A283406(n)+A283406(n))`
-/

namespace A283404.P4760598654204834756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283406 n + A283406 n).toNat

end

end A283404.P4760598654204834756

/-!
# A283405: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A283405, there is no canonical definition to state claims against.
-/

/-! ## A283405.P16817018136230886982

`A007088(A283407(n))`
-/

namespace A283405.P16817018136230886982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283407 n).toNat

end

end A283405.P16817018136230886982

/-! ## A283405.P11876095267597398776

`A305989(A283406(n))`
-/

namespace A283405.P11876095267597398776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283406 n).toNat

end

end A283405.P11876095267597398776

/-! ## A283405.P13578291885849222986

`A185544(2*A283407(n))`
-/

namespace A283405.P13578291885849222986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283407 n).toNat

end

end A283405.P13578291885849222986

/-! ## A283405.P11897429192062392592

`A185544(lcm(2, A283407(n)))`
-/

namespace A283405.P11897429192062392592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283407 n))

end

end A283405.P11897429192062392592

/-! ## A283405.P3709394895648805767

`A185544(A283407(n)+A283407(n))`
-/

namespace A283405.P3709394895648805767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283407 n + A283407 n).toNat

end

end A283405.P3709394895648805767

/-!
# A283406: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A283406, there is no canonical definition to state claims against.
-/

/-! ## A283406.P17597950434500618895

`A283357(n)-A014083(A007474(n))`
-/

namespace A283406.P17597950434500618895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n - A014083 (A007474 n).toNat

end

end A283406.P17597950434500618895

/-! ## A283406.P10619601775743943603

`A283357(n)-A014083(A013170(n))`
-/

namespace A283406.P10619601775743943603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n - A014083 (A013170 n).toNat

end

end A283406.P10619601775743943603

/-! ## A283406.P805262812165243384

`A283357(n)-A353419(A270869(n))`
-/

namespace A283406.P805262812165243384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n - A353419 (A270869 n).toNat

end

end A283406.P805262812165243384

/-! ## A283406.P3089294535714647475

`A283357(n)-A025466(A304049(n+1))`
-/

namespace A283406.P3089294535714647475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n - A025466 (A304049 (n + 1)).toNat

end

end A283406.P3089294535714647475

/-! ## A283406.P218991185983029713

`A283357(n)-A261488(A234801(n+1))`
-/

namespace A283406.P218991185983029713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283357 n - A261488 (A234801 (n + 1)).toNat

end

end A283406.P218991185983029713

/-!
# A283407: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A283407, there is no canonical definition to state claims against.
-/

/-! ## A283407.P13782513776181174426

`A325401(lcm(2, A283406(n)))`
-/

namespace A283407.P13782513776181174426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283406 n))

end

end A283407.P13782513776181174426

/-! ## A283407.P5372875892293118833

`A030101(A283406(n))`
-/

namespace A283407.P5372875892293118833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283406 n).toNat

end

end A283407.P5372875892293118833

/-! ## A283407.P6204956450016536658

`A325401(2*A283406(n))`
-/

namespace A283407.P6204956450016536658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283406 n).toNat

end

end A283407.P6204956450016536658

/-! ## A283407.P16915555993219219504

`A325401(A283406(n)+A283406(n))`
-/

namespace A283407.P16915555993219219504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283406 n + A283406 n).toNat

end

end A283407.P16915555993219219504

/-! ## A283407.P12292448097137724915

`and(A074494(A068824(n+1)), A283358(n))`
-/

namespace A283407.P12292448097137724915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074494 (A068824 (n + 1)).toNat) (A283358 n)

end

end A283407.P12292448097137724915

/-!
# A283408: Number of n X n 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283408, there is no canonical definition to state claims against.
-/

/-! ## A283408.P11341534308839068569

`A283415(∑[4*n]+1)`
-/

namespace A283408.P11341534308839068569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283408.P11341534308839068569

/-! ## A283408.P14363720134174379915

`lcm(2, A283415(A001844(n)))`
-/

namespace A283408.P14363720134174379915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283415 (A001844 n).toNat)

end

end A283408.P14363720134174379915

/-! ## A283408.P8917067151533558441

`record[gcd(A114327(n), A283415(n+1))]`
-/

namespace A283408.P8917067151533558441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A283415 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283408.P8917067151533558441

/-! ## A283408.P14489923896319961091

`A189006(n)*A283415(A001844(n))`
-/

namespace A283408.P14489923896319961091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 n * A283415 (A001844 n).toNat

end

end A283408.P14489923896319961091

/-! ## A283408.P15652956736690245018

`A346607(n+1)+A283415(A001844(n))`
-/

namespace A283408.P15652956736690245018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1) + A283415 (A001844 n).toNat

end

end A283408.P15652956736690245018

/-!
# A283409: Number of n X 2 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283409, the canonical program `A283409.P16764351919321276072` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283409 has offset 1).

The definition of A283409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283409.P16764351919321276072

`3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=4, a(1)=16, a(2)=61, a(3)=236, a(4)=912`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283409

/-- `3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P16764351919321276072.Spec : Prop :=
  ∀ n, (P16764351919321276072.a n : ℤ) = A283409 (n + 1)

theorem P16764351919321276072.correct : P16764351919321276072.Spec := by
  intro n
  simp only [A283409, Nat.add_sub_cancel]

end A283409

/-! ## A283409.P870813821432545704

`A001591(2*n+7)`
-/

namespace A283409.P870813821432545704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (2 * n + 7)

end

end A283409.P870813821432545704

namespace A283409

/-- `A001591(2*n+7)` -/
def P870813821432545704.Spec : Prop :=
  ∀ n, P870813821432545704.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P10053351831723303439

`Δ[A141072(2*n+3)]`
-/

namespace A283409.P10053351831723303439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141072 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283409.P10053351831723303439

namespace A283409

/-- `Δ[A141072(2*n+3)]` -/
def P10053351831723303439.Spec : Prop :=
  ∀ n, P10053351831723303439.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P10271792971197673879

`record[A001591(A093178(n)+6)]`
-/

namespace A283409.P10271792971197673879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A093178 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283409.P10271792971197673879

namespace A283409

/-- `record[A001591(A093178(n)+6)]` -/
def P10271792971197673879.Spec : Prop :=
  ∀ n, P10271792971197673879.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P11276891706234499284

`A135493(2*n+3)/2`
-/

namespace A283409.P11276891706234499284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135493 (2 * n + 3) : ℚ) / 2

end

end A283409.P11276891706234499284

namespace A283409

/-- `A135493(2*n+3)/2` -/
def P11276891706234499284.Spec : Prop :=
  ∀ n, P11276891706234499284.a n = (A283409 (n + 1) : ℚ)

end A283409

/-! ## A283409.P1115865037070408450

`Δ[∑[A135493(n+1+n)]/2]`
-/

namespace A283409.P1115865037070408450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1 + n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283409.P1115865037070408450

namespace A283409

/-- `Δ[∑[A135493(n+1+n)]/2]` -/
def P1115865037070408450.Spec : Prop :=
  ∀ n, P1115865037070408450.a n = (A283409 (n + 1) : ℚ)

end A283409

/-! ## A283409.P9081968360574996011

`A011782(n+2)²-A050233(2*(n+1))`
-/

namespace A283409.P9081968360574996011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) ^ 2 - A050233 (2 * (n + 1))

end

end A283409.P9081968360574996011

namespace A283409

/-- `A011782(n+2)²-A050233(2*(n+1))` -/
def P9081968360574996011.Spec : Prop :=
  ∀ n, P9081968360574996011.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P1515230162548761675

`A011782(2*n+3)-A050233(2*(n+1))`
-/

namespace A283409.P1515230162548761675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 3) - A050233 (2 * (n + 1))

end

end A283409.P1515230162548761675

namespace A283409

/-- `A011782(2*n+3)-A050233(2*(n+1))` -/
def P1515230162548761675.Spec : Prop :=
  ∀ n, P1515230162548761675.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P6480754305599358576

`A048887(A153037(n)+1-n)`
-/

namespace A283409.P6480754305599358576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (A153037 n + (1 - (n : ℤ))).toNat

end

end A283409.P6480754305599358576

namespace A283409

/-- `A048887(A153037(n)+1-n)` -/
def P6480754305599358576.Spec : Prop :=
  ∀ n, P6480754305599358576.a n = A283409 (n + 1)

end A283409

/-! ## A283409.P11415088194623585603

`A048887(1-(n-A153037(n)))`
-/

namespace A283409.P11415088194623585603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (1 - ((n : ℤ) - A153037 n)).toNat

end

end A283409.P11415088194623585603

namespace A283409

/-- `A048887(1-(n-A153037(n)))` -/
def P11415088194623585603.Spec : Prop :=
  ∀ n, P11415088194623585603.a n = A283409 (n + 1)

end A283409

/-!
# A283410: Number of n X 3 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283410, there is no canonical definition to state claims against.
-/

/-! ## A283410.P5604194697570331448

`A283415(∑[n+2]+4)`
-/

namespace A283410.P5604194697570331448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283410.P5604194697570331448

/-! ## A283410.P713368501537768208

`or(char[1], A283415(A167614(n+1)))`
-/

namespace A283410.P713368501537768208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A283415 (A167614 (n + 1)).toNat)

end

end A283410.P713368501537768208

/-! ## A283410.P7468068094272178012

`A283415(A167614(n+1))+A180472(n)`
-/

namespace A283410.P7468068094272178012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A167614 (n + 1)).toNat + A180472 n

end

end A283410.P7468068094272178012

/-! ## A283410.P3827213223200172798

`A283415(A167614(n+1))+A185255(n)`
-/

namespace A283410.P3827213223200172798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A167614 (n + 1)).toNat + A185255 n

end

end A283410.P3827213223200172798

/-! ## A283410.P5613652694083537302

`lcm(A033999(n), A283415(A167614(n+1)))`
-/

namespace A283410.P5613652694083537302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283415 (A167614 (n + 1)).toNat)

end

end A283410.P5613652694083537302

/-!
# A283411: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283411, there is no canonical definition to state claims against.
-/

/-! ## A283411.P6101416028832730302

`A283415(A052905(n)+9)`
-/

namespace A283411.P6101416028832730302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A052905 n + 9).toNat

end

end A283411.P6101416028832730302

/-! ## A283411.P16452690849487403958

`A283415(A055999(n)+10)`
-/

namespace A283411.P16452690849487403958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A055999 n + 10).toNat

end

end A283411.P16452690849487403958

/-! ## A283411.P6061146478437102144

`A283415(A167614(n+2)+1)`
-/

namespace A283411.P6061146478437102144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A167614 (n + 2) + 1).toNat

end

end A283411.P6061146478437102144

/-! ## A283411.P12028876472528131302

`A283415(A112355(n+1)+4)`
-/

namespace A283411.P12028876472528131302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A112355 (n + 1) + 4).toNat

end

end A283411.P12028876472528131302

/-! ## A283411.P12579850801980423059

`A283415(eq[5, A131818(n+1)])`
-/

namespace A283411.P12579850801980423059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283411.P12579850801980423059

/-!
# A283412: Number of n X 5 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283412, there is no canonical definition to state claims against.
-/

/-! ## A283412.P11119223230114058226

`A283415(A155212(n)+13)`
-/

namespace A283412.P11119223230114058226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A155212 n + 13).toNat

end

end A283412.P11119223230114058226

/-! ## A283412.P8740222333297983502

`A283415(A056000(n)+15)`
-/

namespace A283412.P8740222333297983502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A056000 n + 15).toNat

end

end A283412.P8740222333297983502

/-! ## A283412.P17299049902598438987

`A283415(eq[6, A131818(n+1)])`
-/

namespace A283412.P17299049902598438987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283412.P17299049902598438987

/-! ## A283412.P6569379715953055765

`A283415(A374005(n+1))`
-/

namespace A283412.P6569379715953055765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A374005 (n + 1)).toNat

end

end A283412.P6569379715953055765

/-! ## A283412.P3508395264322291875

`A283415(A046691(n+3))`
-/

namespace A283412.P3508395264322291875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A046691 (n + 3)).toNat

end

end A283412.P3508395264322291875

/-!
# A283413: Number of n X 6 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283413, there is no canonical definition to state claims against.
-/

/-! ## A283413.P14008456539615586642

`A283415(eq[7, A131818(n+1)])`
-/

namespace A283413.P14008456539615586642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283413.P14008456539615586642

/-! ## A283413.P11460182683613908759

`A283415(A374007(n+1))`
-/

namespace A283413.P11460182683613908759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A374007 (n + 1)).toNat

end

end A283413.P11460182683613908759

/-! ## A283413.P3313080862885875851

`A283415(A052905(n+3))`
-/

namespace A283413.P3313080862885875851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A052905 (n + 3)).toNat

end

end A283413.P3313080862885875851

/-! ## A283413.P4190317881582607479

`A283415(eq[3, A219347(n)])`
-/

namespace A283413.P4190317881582607479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283413.P4190317881582607479

/-! ## A283413.P8465477657507236873

`A283415(eq[5, A193592(n)])`
-/

namespace A283413.P8465477657507236873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283413.P8465477657507236873

/-!
# A283414: Number of n X 7 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283414, there is no canonical definition to state claims against.
-/

/-! ## A283414.P690144220925371192

`A283415(eq[8, A131818(n+1)])`
-/

namespace A283414.P690144220925371192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283414.P690144220925371192

/-! ## A283414.P2926087272120440680

`A283415(A374008(n+1))`
-/

namespace A283414.P2926087272120440680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A374008 (n + 1)).toNat

end

end A283414.P2926087272120440680

/-! ## A283414.P3183968425698941733

`A283415(A055999(n+4))`
-/

namespace A283414.P3183968425698941733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (A055999 (n + 4)).toNat

end

end A283414.P3183968425698941733

/-! ## A283414.P6761486794251452618

`A283415(eq[4, A219347(n)])`
-/

namespace A283414.P6761486794251452618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283414.P6761486794251452618

/-! ## A283414.P9410585409276127

`A283415(eq[6, A193592(n)])`
-/

namespace A283414.P9410585409276127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283414.P9410585409276127

/-!
# A283415: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors.

The programs for A283415, there is no canonical definition to state claims against.
-/

/-! ## A283415.P12537802731827276859

`A326105(n+1)+A115060(A317517(n+1))`
-/

namespace A283415.P12537802731827276859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (n + 1) + A115060 (A317517 (n + 1)).toNat

end

end A283415.P12537802731827276859

/-! ## A283415.P5120537658526783628

`A227442(n+1)-A319080(A118185(n))`
-/

namespace A283415.P5120537658526783628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (n + 1) - A319080 (A118185 n).toNat

end

end A283415.P5120537658526783628

/-! ## A283415.P3647270091013935478

`A115060(A300472(n+1)+A299661(n+1))`
-/

namespace A283415.P3647270091013935478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A300472 (n + 1) + A299661 (n + 1)).toNat

end

end A283415.P3647270091013935478

/-! ## A283415.P2850920060532115322

`A115060(A300811(n+1)+A299661(n+1))`
-/

namespace A283415.P2850920060532115322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A300811 (n + 1) + A299661 (n + 1)).toNat

end

end A283415.P2850920060532115322

/-! ## A283415.P7287836348157107242

`A115060(A301443(n+1)+A300472(n+1))`
-/

namespace A283415.P7287836348157107242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A301443 (n + 1) + A300472 (n + 1)).toNat

end

end A283415.P7287836348157107242

/-!
# A283416: Number of possible connected steric graphs with n nodes of degree less than 5.

The programs for A283416, there is no canonical definition to state claims against.
-/

/-! ## A283416.P17083047347060170585

`floor(atan(2)^A128127(n))`
-/

namespace A283416.P17083047347060170585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (2 : ℝ) ^ (A128127 n : ℤ)⌋

end

end A283416.P17083047347060170585

/-!
# A283417: Number T(n,k) of triangle-free graphs on n unlabeled nodes with exactly k connected components; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A283417, there is no canonical definition to state claims against.
-/

/-! ## A283417.P12445240778661759863

`A117707(A096801(n))`
-/

namespace A283417.P12445240778661759863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A096801 n).toNat

end

end A283417.P12445240778661759863

/-! ## A283417.P4442198109096134255

`A227185(A281446(n))`
-/

namespace A283417.P4442198109096134255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A281446 n).toNat

end

end A283417.P4442198109096134255

/-! ## A283417.P49655292729425008

`A077429(A113092(n)+3)`
-/

namespace A283417.P49655292729425008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A113092 n + 3).toNat

end

end A283417.P49655292729425008

/-! ## A283417.P18233119826720237760

`A048766(A023396(n+4)*A113081(n))`
-/

namespace A283417.P18233119826720237760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A023396 (n + 4) * A113081 n).toNat

end

end A283417.P18233119826720237760

/-! ## A283417.P9974143681298548518

`A004396(A106234(n+1)%A334331(n+1))`
-/

namespace A283417.P9974143681298548518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (A106234 (n + 1)) (A334331 (n + 1))).toNat

end

end A283417.P9974143681298548518

/-!
# A283419: a(n) is the multiplicative inverse of 3 modulo the n-th prime (or 0 if none exists).

The programs for A283419, the canonical program `A283419.P3546850962263025948` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283419 has offset 1).

The definition of A283419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283419.P3546850962263025948

`A092092(p?[a(n-2)+2])` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283419

/-- `A092092(p?[a(n-2)+2])` -/
def P3546850962263025948.Spec : Prop :=
  ∀ n, P3546850962263025948.a n = A283419 (n + 1)

theorem P3546850962263025948.correct : P3546850962263025948.Spec := by
  intro n
  simp only [A283419, Nat.add_sub_cancel]

end A283419

/-! ## A283419.P1890007701909954370

`A071619(p?[n-(-1)^n])%p?[n-(-1)^n]`
-/

namespace A283419.P1890007701909954370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A283419.P1890007701909954370

namespace A283419

/-- `A071619(p?[n-(-1)^n])%p?[n-(-1)^n]` -/
def P1890007701909954370.Spec : Prop :=
  ∀ n, P1890007701909954370.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P8214739635328077250

`A092092(Δ[A007504(n)])`
-/

namespace A283419.P8214739635328077250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (f1 (n + 1) - f1 n).toNat

end

end A283419.P8214739635328077250

namespace A283419

/-- `A092092(Δ[A007504(n)])` -/
def P8214739635328077250.Spec : Prop :=
  ∀ n, P8214739635328077250.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P6703140126020637210

`A092092(record[A051698(n)])`
-/

namespace A283419.P6703140126020637210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283419.P6703140126020637210

namespace A283419

/-- `A092092(record[A051698(n)])` -/
def P6703140126020637210.Spec : Prop :=
  ∀ n, P6703140126020637210.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P18323564170346575269

`A092092(A000040(n+1))`
-/

namespace A283419.P18323564170346575269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A000040 (n + 1)).toNat

end

end A283419.P18323564170346575269

namespace A283419

/-- `A092092(A000040(n+1))` -/
def P18323564170346575269.Spec : Prop :=
  ∀ n, P18323564170346575269.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P1745651203172597464

`A092092(A006005(n+1))`
-/

namespace A283419.P1745651203172597464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A006005 (n + 1)).toNat

end

end A283419.P1745651203172597464

namespace A283419

/-- `A092092(A006005(n+1))` -/
def P1745651203172597464.Spec : Prop :=
  ∀ n, P1745651203172597464.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P17537660337328697690

`A092092(A008578(n+2))`
-/

namespace A283419.P17537660337328697690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A008578 (n + 2)).toNat

end

end A283419.P17537660337328697690

namespace A283419

/-- `A092092(A008578(n+2))` -/
def P17537660337328697690.Spec : Prop :=
  ∀ n, P17537660337328697690.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P11572902527829123147

`A092092(A075643(n+2))`
-/

namespace A283419.P11572902527829123147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A075643 (n + 2)).toNat

end

end A283419.P11572902527829123147

namespace A283419

/-- `A092092(A075643(n+2))` -/
def P11572902527829123147.Spec : Prop :=
  ∀ n, P11572902527829123147.a n = A283419 (n + 1)

end A283419

/-! ## A283419.P11793791951059826587

`A092092(A182986(n+2))`
-/

namespace A283419.P11793791951059826587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A182986 (n + 2)).toNat

end

end A283419.P11793791951059826587

namespace A283419

/-- `A092092(A182986(n+2))` -/
def P11793791951059826587.Spec : Prop :=
  ∀ n, P11793791951059826587.a n = A283419 (n + 1)

end A283419

/-!
# A283420: Number of simple (not necessarily connected) untraceable graphs on n nodes.

The programs for A283420, there is no canonical definition to state claims against.
-/

/-! ## A283420.P17178448591769767124

`A000088(n+1)-A057864(n+1)`
-/

namespace A283420.P17178448591769767124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A057864 (n + 1)

end

end A283420.P17178448591769767124

/-! ## A283420.P16379399106593205763

`Δ[A006897(n)]-A057864(n+1)`
-/

namespace A283420.P16379399106593205763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057864 (n + 1)

end

end A283420.P16379399106593205763

/-! ## A283420.P4213921361375346933

`A283421(n+1)+A000719(n+1)`
-/

namespace A283420.P4213921361375346933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283421 (n + 1) + A000719 (n + 1)

end

end A283420.P4213921361375346933

/-! ## A283420.P15705626481754046148

`Δ[A006897(n)]-(A001349(n+1)-A283421(n+1))`
-/

namespace A283420.P15705626481754046148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001349 (n + 1) - A283421 (n + 1))

end

end A283420.P15705626481754046148

/-! ## A283420.P6535351771421866189

`A000088(n+1)+A283421(n+1)-A001349(n+1)`
-/

namespace A283420.P6535351771421866189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) + (A283421 (n + 1) - A001349 (n + 1))

end

end A283420.P6535351771421866189

/-!
# A283421: Number of connected untraceable graphs on n vertices.

The programs for A283421, there is no canonical definition to state claims against.
-/

/-! ## A283421.P17800794839337441599

`A001349(n+1)-A057864(n+1)`
-/

namespace A283421.P17800794839337441599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A057864 (n + 1)

end

end A283421.P17800794839337441599

/-! ## A283421.P441377496916368488

`A283420(n+1)-A000719(n+1)`
-/

namespace A283421.P441377496916368488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283420 (n + 1) - A000719 (n + 1)

end

end A283421.P441377496916368488

/-! ## A283421.P8807952696632258371

`A201922(A000124(n))-A057864(n+1)`
-/

namespace A283421.P8807952696632258371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A057864 (n + 1)

end

end A283421.P8807952696632258371

/-! ## A283421.P6418353213103023626

`A001349(A031285(n))%A057864(n+1)`
-/

namespace A283421.P6418353213103023626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 (A031285 n).toNat) (A057864 (n + 1))

end

end A283421.P6418353213103023626

/-! ## A283421.P5703906420985390991

`A001349(A000027(n+1))%A057864(n+1)`
-/

namespace A283421.P5703906420985390991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 (A000027 (n + 1)).toNat) (A057864 (n + 1))

end

end A283421.P5703906420985390991

/-!
# A283422: a(1) = a(2) = a(4) = 1; a(3) = 0; a(n) = a(n-a(n-1)-1) + a(n-a(n-2)-4) for n > 4.

The programs for A283422, the canonical program `A283422.P4743799888303665389` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283422 has offset 1).

The definition of A283422 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1)-1)+a(n-a(n-2)-4)` (program `A283422.P4743799888303665389`, by `A283422.P4743799888303665389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283422.P4743799888303665389

`a(n-a(n-1)-1)+a(n-a(n-2)-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283422

/-- `a(n-a(n-1)-1)+a(n-a(n-2)-4)` -/
def P4743799888303665389.Spec : Prop :=
  ∀ n, (P4743799888303665389.a n : ℤ) = A283422 (n + 1)

theorem P4743799888303665389.correct : P4743799888303665389.Spec := by
  intro n
  simp only [A283422, Nat.add_sub_cancel]

end A283422

/-!
# A283423: Prime power pseudoperfect numbers: numbers m > 1 such that 1/m + Sum 1/p^k = 1, where the sum is over the prime powers p^k | m.

The programs for A283423, there is no canonical definition to state claims against.
-/

/-! ## A283423.P11275495303948078900

`eq[n+1, A095112(n+2)]+2`
-/

namespace A283423.P11275495303948078900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A283423.P11275495303948078900

/-! ## A283423.P2988297744971905168

`A127699(A073935(n+2))`
-/

namespace A283423.P2988297744971905168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (A073935 (n + 2)).toNat

end

end A283423.P2988297744971905168

/-! ## A283423.P388885206656651065

`A005843(A073935(n+2)/2)`
-/

namespace A283423.P388885206656651065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A073935 (n + 2) : ℚ) / 2)).toNat

end

end A283423.P388885206656651065

/-! ## A283423.P2146569668451595854

`filter[A073935(n+1), A381735(#)]`
-/

namespace A283423.P2146569668451595854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A283423.P2146569668451595854

/-! ## A283423.P5098198480364802161

`∑[A254667(Δ[A073935(n+1)])]`
-/

namespace A283423.P5098198480364802161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283423.P5098198480364802161

/-!
# A283424: Number T(n,k) of blocks of size >= k in all set partitions of [n], assuming that every set partition contains one block of size zero; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A283424, there is no canonical definition to state claims against.
-/

/-! ## A283424.P12875448393096447791

`A108087(A080036(n))-A025465(A000073(n))`
-/

namespace A283424.P12875448393096447791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A080036 n).toNat - A025465 (A000073 n).toNat

end

end A283424.P12875448393096447791

/-! ## A283424.P9304142033231788280

`A108087(A014132(n+1))-A347579(A245049(n+1))`
-/

namespace A283424.P9304142033231788280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A014132 (n + 1)).toNat - A347579 (A245049 (n + 1)).toNat

end

end A283424.P9304142033231788280

/-! ## A283424.P14418367045864149437

`A108087(lt[A120706(3*n), A241171(n+1)])`
-/

namespace A283424.P14418367045864149437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120706 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283424.P14418367045864149437

/-! ## A283424.P5432521930198982964

`A108087(lt[A059841(n), A333144(3*n+2)])`
-/

namespace A283424.P5432521930198982964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333144 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A283424.P5432521930198982964

/-! ## A283424.P5191116281772516934

`A168134(A054446(n))`
-/

namespace A283424.P5191116281772516934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A054446 n).toNat

end

end A283424.P5191116281772516934

/-!
# A283426: a(1) = a(2) = a(3) = a(4) = 1; a(n) = a(n-a(n-2)-1) + a(n-a(n-4)-2) for n > 4.

The programs for A283426, the canonical program `A283426.P17254988941181998206` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283426 has offset 1).

The definition of A283426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2)-1)+a(n-a(n-4)-2)` (program `A283426.P17254988941181998206`, by `A283426.P17254988941181998206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283426.P17254988941181998206

`a(n-a(n-2)-1)+a(n-a(n-4)-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283426

/-- `a(n-a(n-2)-1)+a(n-a(n-4)-2)` -/
def P17254988941181998206.Spec : Prop :=
  ∀ n, (P17254988941181998206.a n : ℤ) = A283426 (n + 1)

theorem P17254988941181998206.correct : P17254988941181998206.Spec := by
  intro n
  simp only [A283426, Nat.add_sub_cancel]

end A283426

/-!
# A283427: a(n) is the number of consecutive smallest prime totatives of primorial A002110(n).

The programs for A283427, the canonical program `A283427.P12910337542420709598` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283427 has offset 1).

The definition of A283427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283427.P12910337542420709598

`record[A054272(n+1)%(A033046(n)+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A283427

/-- `record[A054272(n+1)%(A033046(n)+1)]` -/
def P12910337542420709598.Spec : Prop :=
  ∀ n, P12910337542420709598.a n = A283427 (n + 1)

theorem P12910337542420709598.correct : P12910337542420709598.Spec := by
  intro n
  simp only [A283427, Nat.add_sub_cancel]

end A283427

/-! ## A283427.P13512652357550971033

`record[A054272(n+1)%A320972(n)]`
-/

namespace A283427.P13512652357550971033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (n + 1)) (A320972 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283427.P13512652357550971033

namespace A283427

/-- `record[A054272(n+1)%A320972(n)]` -/
def P13512652357550971033.Spec : Prop :=
  ∀ n, P13512652357550971033.a n = A283427 (n + 1)

end A283427

/-! ## A283427.P13785755699662857928

`A054272(A131209(n+1))%(n^3+1)`
-/

namespace A283427.P13785755699662857928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (A131209 (n + 1)).toNat) (n ^ 3 + 1 : ℤ)

end

end A283427.P13785755699662857928

namespace A283427

/-- `A054272(A131209(n+1))%(n^3+1)` -/
def P13785755699662857928.Spec : Prop :=
  ∀ n, P13785755699662857928.a n = A283427 (n + 1)

end A283427

/-! ## A283427.P11426215361984444538

`(A054272(A131209(n+1))+char[1])%A001845(n)`
-/

namespace A283427.P11426215361984444538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054272 (A131209 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A001845 n)

end

end A283427.P11426215361984444538

namespace A283427

/-- `(A054272(A131209(n+1))+char[1])%A001845(n)` -/
def P11426215361984444538.Spec : Prop :=
  ∀ n, P11426215361984444538.a n = A283427 (n + 1)

end A283427

/-! ## A283427.P8301370824209307381

`A081042(n)%(A054272(A131209(n+1))-A081042(n))`
-/

namespace A283427.P8301370824209307381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081042 n) (A054272 (A131209 (n + 1)).toNat - A081042 n)

end

end A283427.P8301370824209307381

namespace A283427

/-- `A081042(n)%(A054272(A131209(n+1))-A081042(n))` -/
def P8301370824209307381.Spec : Prop :=
  ∀ n, P8301370824209307381.a n = A283427 (n + 1)

end A283427

/-!
# A283428: Starting with a(1)=3, a(2)=4, a(n)=sum of digits of a(n-1) + sum of digits of a(n-2).

The programs for A283428, the canonical program `A283428.P3858596818026493286` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283428 has offset 1).

The definition of A283428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283428.P3858596818026493286

`dr(a(n-1))+dr(a(n-2))` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283428

/-- `dr(a(n-1))+dr(a(n-2))` -/
def P3858596818026493286.Spec : Prop :=
  ∀ n, (P3858596818026493286.a n : ℤ) = A283428 (n + 1)

theorem P3858596818026493286.correct : P3858596818026493286.Spec := by
  intro n
  simp only [A283428, Nat.add_sub_cancel]

end A283428

/-!
# A283429: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 229", based on the 5-celled von Neumann neighborhood.

The programs for A283429, there is no canonical definition to state claims against.
-/

/-! ## A283429.P8126063469883184839

`A007088(A286965(n))`
-/

namespace A283429.P8126063469883184839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286965 n).toNat

end

end A283429.P8126063469883184839

/-! ## A283429.P11474216905082808718

`A185544(2*A286965(n))`
-/

namespace A283429.P11474216905082808718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286965 n).toNat

end

end A283429.P11474216905082808718

/-! ## A283429.P11813767141225344283

`A286167(gcd(C(2*n, 2), ∏{digits}[n, #]))`
-/

namespace A283429.P11813767141225344283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286167 (Nat.gcd (Nat.choose (2 * n) 2) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A283429.P11813767141225344283

/-! ## A283429.P6777020079610675688

`A286167(A002998(n))`
-/

namespace A283429.P6777020079610675688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286167 (A002998 n).toNat

end

end A283429.P6777020079610675688

/-! ## A283429.P4741482852614117053

`A286167(A039723(n))`
-/

namespace A283429.P4741482852614117053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286167 (A039723 n).toNat

end

end A283429.P4741482852614117053

/-!
# A283431: a(n) is the number of zeros of the Hermite H(n, x) polynomial in the open interval (-1, +1).

The programs for A283431, there is no canonical definition to state claims against.
-/

/-! ## A283431.P1344233872828756275

`A257564((n+2)%A175249(n+1)+2)`
-/

namespace A283431.P1344233872828756275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (Int.tmod (n + 2 : ℤ) (A175249 (n + 1)) + 2).toNat

end

end A283431.P1344233872828756275

/-! ## A283431.P14801721485250319183

`A257564(n+4)-C(2, A216500(n+1))`
-/

namespace A283431.P14801721485250319183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (n + 4) - (Nat.choose 2 (A216500 (n + 1)).toNat : ℤ)

end

end A283431.P14801721485250319183

/-! ## A283431.P7610298419490812226

`A257564(A020705(n)*A323022(n+1))`
-/

namespace A283431.P7610298419490812226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A020705 n * A323022 (n + 1)).toNat

end

end A283431.P7610298419490812226

/-! ## A283431.P3871917198023790353

`A257564(n+4)-A000038(A303304(n))`
-/

namespace A283431.P3871917198023790353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (n + 4) - A000038 (A303304 n).toNat

end

end A283431.P3871917198023790353

/-! ## A283431.P15688601167859398193

`A257564(lcm(A020705(n), A323022(n+1)))`
-/

namespace A283431.P15688601167859398193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (Int.lcm (A020705 n) (A323022 (n + 1)))

end

end A283431.P15688601167859398193

/-! ## A283431.P16202461270928714431

`A257531(A257529(n+1))*A257564(n+4)`
-/

namespace A283431.P16202461270928714431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A257529 (n + 1)).toNat * A257564 (n + 4)

end

end A283431.P16202461270928714431

/-!
# A283434: Triangle read by rows: T(n,m) is the number of pattern classes in the (n,m)-rectangular grid with 5 colors and n>=m, two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A283434, there is no canonical definition to state claims against.
-/

/-! ## A283434.P18442469395168462918

`A134233(A056711(n+1))`
-/

namespace A283434.P18442469395168462918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134233 (A056711 (n + 1)).toNat

end

end A283434.P18442469395168462918

/-! ## A283434.P8161323457178892173

`A280498(A280002(n+1))`
-/

namespace A283434.P8161323457178892173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A280002 (n + 1)).toNat

end

end A283434.P8161323457178892173

/-!
# A283435: Triangle read by rows: T(n,m) is the number of binary pattern classes in the (n,m)-rectangular grid with half 1's and half 0's: two patterns are in same class if one can be obtained by a reflection or 180-degree rotation of the other (ordered occurrences rounded up/down if m*n is odd).

The programs for A283435, there is no canonical definition to state claims against.
-/

/-! ## A283435.P14211377814466874760

`A246028(A326530(∑[n]))`
-/

namespace A283435.P14211377814466874760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (A326530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A283435.P14211377814466874760

/-! ## A283435.P4515995527531273026

`A056059(A000208(n)-A002264(n))`
-/

namespace A283435.P4515995527531273026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056059 (A000208 n - A002264 n).toNat

end

end A283435.P4515995527531273026

/-! ## A283435.P10062351497272307170

`A169975(A281980(n+1)^A365702(n))`
-/

namespace A283435.P10062351497272307170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 (SequenceMachineLib.roundAway ((A281980 (n + 1) : ℚ) ^ (A365702 n : ℤ))).toNat

end

end A283435.P10062351497272307170

/-!
# A283437: Periodic {1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1}.

The programs for A283437, the canonical program `A283437.P12931138005752512930` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283437 has offset 0).

The definition of A283437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283437.P12931138005752512930

`or(2, n-3)²%3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283437

/-- `or(2, n-3)²%3` -/
def P12931138005752512930.Spec : Prop :=
  ∀ n, P12931138005752512930.a n = A283437 n

theorem P12931138005752512930.correct : P12931138005752512930.Spec := by
  intro n
  simp only [A283437]

end A283437

/-!
# A283439: Hankel transform of A033434.

The programs for A283439, the canonical program `A283439.P6626348979952952832` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283439 has offset 0).

The definition of A283439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283439.P6626348979952952832

`(A008611(n)-(n+2))*Δ[A099470(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283439

/-- `(A008611(n)-(n+2))*Δ[A099470(n+1)]` -/
def P6626348979952952832.Spec : Prop :=
  ∀ n, P6626348979952952832.a n = A283439 n

theorem P6626348979952952832.correct : P6626348979952952832.Spec := by
  intro n
  simp only [A283439]

end A283439

/-! ## A283439.P14104768735686343223

`A188444(A004772(n+2))`
-/

namespace A283439.P14104768735686343223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A004772 (n + 2)).toNat

end

end A283439.P14104768735686343223

namespace A283439

/-- `A188444(A004772(n+2))` -/
def P14104768735686343223.Spec : Prop :=
  ∀ n, P14104768735686343223.a n = A283439 n

end A283439

/-! ## A283439.P6718631503466547617

`A188444(A004773(n)+2)`
-/

namespace A283439.P6718631503466547617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A004773 n + 2).toNat

end

end A283439.P6718631503466547617

namespace A283439

/-- `A188444(A004773(n)+2)` -/
def P6718631503466547617.Spec : Prop :=
  ∀ n, P6718631503466547617.a n = A283439 n

end A283439

/-! ## A283439.P8857902537749100917

`A188444(A042968(n+2))`
-/

namespace A283439.P8857902537749100917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A042968 (n + 2)).toNat

end

end A283439.P8857902537749100917

namespace A283439

/-- `A188444(A042968(n+2))` -/
def P8857902537749100917.Spec : Prop :=
  ∀ n, P8857902537749100917.a n = A283439 n

end A283439

/-! ## A283439.P16907987522993453546

`A188444(A047519(n+2))`
-/

namespace A283439.P16907987522993453546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A047519 (n + 2)).toNat

end

end A283439.P16907987522993453546

namespace A283439

/-- `A188444(A047519(n+2))` -/
def P16907987522993453546.Spec : Prop :=
  ∀ n, P16907987522993453546.a n = A283439 n

end A283439

/-! ## A283439.P4336077747870782554

`A188444(A047587(n+2))`
-/

namespace A283439.P4336077747870782554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A047587 (n + 2)).toNat

end

end A283439.P4336077747870782554

namespace A283439

/-- `A188444(A047587(n+2))` -/
def P4336077747870782554.Spec : Prop :=
  ∀ n, P4336077747870782554.a n = A283439 n

end A283439

/-! ## A283439.P2911510338990440318

`A188444(A319371(n+2))`
-/

namespace A283439.P2911510338990440318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A319371 (n + 2)).toNat

end

end A283439.P2911510338990440318

namespace A283439

/-- `A188444(A319371(n+2))` -/
def P2911510338990440318.Spec : Prop :=
  ∀ n, P2911510338990440318.a n = A283439 n

end A283439

/-! ## A283439.P4827287438028498902

`A188444(A008620(n)+1+n)`
-/

namespace A283439.P4827287438028498902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A008620 n + 1 + (n : ℤ)).toNat

end

end A283439.P4827287438028498902

namespace A283439

/-- `A188444(A008620(n)+1+n)` -/
def P4827287438028498902.Spec : Prop :=
  ∀ n, P4827287438028498902.a n = A283439 n

end A283439

/-! ## A283439.P8640619290102869424

`A188444(A352873(n+1))`
-/

namespace A283439.P8640619290102869424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A352873 (n + 1)).toNat

end

end A283439.P8640619290102869424

namespace A283439

/-- `A188444(A352873(n+1))` -/
def P8640619290102869424.Spec : Prop :=
  ∀ n, P8640619290102869424.a n = A283439 n

end A283439

/-! ## A283439.P275876840109151618

`A188444(A329974(n+2))`
-/

namespace A283439.P275876840109151618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188444 (A329974 (n + 2)).toNat

end

end A283439.P275876840109151618

namespace A283439

/-- `A188444(A329974(n+2))` -/
def P275876840109151618.Spec : Prop :=
  ∀ n, P275876840109151618.a n = A283439 n

end A283439

/-!
# A283442: a(n) = lcm(n,5) / gcd(n,5).

The programs for A283442, the canonical program `A283442.P12980461920346723807` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283442 has offset 0).

The definition of A283442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283442.P16748523457761472280

`lcm(n, 5)/gcd(n, 5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283442.P16748523457761472280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n 5 : ℚ) / (Nat.gcd n 5 : ℚ)

end

end A283442.P16748523457761472280

namespace A283442

/-- `lcm(n, 5)/gcd(n, 5)` -/
def P16748523457761472280.Spec : Prop :=
  ∀ n, P16748523457761472280.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P12980461920346723807

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=5, a(2)=10, a(3)=15, a(4)=20, a(5)=1, a(6)=30, a(7)=35, a(8)=40, a(9)=45`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283442

/-- `2*a(n-5)-a(n-10)` -/
def P12980461920346723807.Spec : Prop :=
  ∀ n, P12980461920346723807.a n = A283442 n

theorem P12980461920346723807.correct : P12980461920346723807.Spec := by
  intro n
  simp only [A283442]

end A283442

/-! ## A283442.P1968823129830909493

`A109046(n)/A109009(n)`
-/

namespace A283442.P1968823129830909493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 n : ℚ) / (A109009 n : ℚ)

end

end A283442.P1968823129830909493

namespace A283442

/-- `A109046(n)/A109009(n)` -/
def P1968823129830909493.Spec : Prop :=
  ∀ n, P1968823129830909493.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P10023337534037917878

`5*n/gcd(25, n²)`
-/

namespace A283442.P10023337534037917878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) / (Nat.gcd 25 (n ^ 2) : ℚ))

end

end A283442.P10023337534037917878

namespace A283442

/-- `5*n/gcd(25, n²)` -/
def P10023337534037917878.Spec : Prop :=
  ∀ n, P10023337534037917878.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P9378446030461502703

`A008587(n)/A109009(n)²`
-/

namespace A283442.P9378446030461502703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008587 n : ℚ) / (A109009 n ^ 2 : ℚ)

end

end A283442.P9378446030461502703

namespace A283442

/-- `A008587(n)/A109009(n)²` -/
def P9378446030461502703.Spec : Prop :=
  ∀ n, P9378446030461502703.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P11631291866647556831

`A008587(n/A109009(n))/A109009(n)`
-/

namespace A283442.P11631291866647556831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008587 (SequenceMachineLib.roundAway ((n : ℚ) / (A109009 n : ℚ))).toNat : ℚ) / (A109009 n : ℚ)

end

end A283442.P11631291866647556831

namespace A283442

/-- `A008587(n/A109009(n))/A109009(n)` -/
def P11631291866647556831.Spec : Prop :=
  ∀ n, P11631291866647556831.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P9700111557774135781

`A109046(2*n)/A109013(2*n)`
-/

namespace A283442.P9700111557774135781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 (2 * n) : ℚ) / (A109013 (2 * n) : ℚ)

end

end A283442.P9700111557774135781

namespace A283442

/-- `A109046(2*n)/A109013(2*n)` -/
def P9700111557774135781.Spec : Prop :=
  ∀ n, P9700111557774135781.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P2779777051535334414

`A109051(2*n)/A109013(2*n)`
-/

namespace A283442.P2779777051535334414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109051 (2 * n) : ℚ) / (A109013 (2 * n) : ℚ)

end

end A283442.P2779777051535334414

namespace A283442

/-- `A109051(2*n)/A109013(2*n)` -/
def P2779777051535334414.Spec : Prop :=
  ∀ n, P2779777051535334414.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P14678143393751097227

`A008592(2*n)/A109013(2*n)²`
-/

namespace A283442.P14678143393751097227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (2 * n) : ℚ) / (A109013 (2 * n) ^ 2 : ℚ)

end

end A283442.P14678143393751097227

namespace A283442

/-- `A008592(2*n)/A109013(2*n)²` -/
def P14678143393751097227.Spec : Prop :=
  ∀ n, P14678143393751097227.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P568176019350364417

`(5*n)%lcm(4, A072154(n))`
-/

namespace A283442.P568176019350364417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n % Int.lcm 4 (A072154 n)

end

end A283442.P568176019350364417

namespace A283442

/-- `(5*n)%lcm(4, A072154(n))` -/
def P568176019350364417.Spec : Prop :=
  ∀ n, (P568176019350364417.a n : ℤ) = A283442 n

end A283442

/-! ## A283442.P12546673847525300315

`6*A106621(4*n)-n`
-/

namespace A283442.P12546673847525300315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A106621 (4 * n) - (n : ℤ)

end

end A283442.P12546673847525300315

namespace A283442

/-- `6*A106621(4*n)-n` -/
def P12546673847525300315.Spec : Prop :=
  ∀ n, P12546673847525300315.a n = A283442 n

end A283442

/-! ## A283442.P10901897176350109206

`A109051(n)/A089086(n)`
-/

namespace A283442.P10901897176350109206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109051 n : ℚ) / (A089086 n : ℚ)

end

end A283442.P10901897176350109206

namespace A283442

/-- `A109051(n)/A089086(n)` -/
def P10901897176350109206.Spec : Prop :=
  ∀ n, P10901897176350109206.a n = (A283442 n : ℚ)

end A283442

/-! ## A283442.P6084566638395510134

`A106616(3*6*n)-n`
-/

namespace A283442.P6084566638395510134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (3 * (6 * n)) - (n : ℤ)

end

end A283442.P6084566638395510134

namespace A283442

/-- `A106616(3*6*n)-n` -/
def P6084566638395510134.Spec : Prop :=
  ∀ n, P6084566638395510134.a n = A283442 n

end A283442

/-!
# A283443: a(n) = lcm(n,6) / gcd(n,6).

The programs for A283443, the canonical program `A283443.P16196385434680599749` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283443 has offset 0).

The definition of A283443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283443.P16196385434680599749

`lcm(n, 6)/gcd(n, 6)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283443

/-- `lcm(n, 6)/gcd(n, 6)` -/
def P16196385434680599749.Spec : Prop :=
  ∀ n, P16196385434680599749.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P15553542540307941437

`A109047(n)/A089128(n)`
-/

namespace A283443.P15553542540307941437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 n : ℚ) / (A089128 n : ℚ)

end

end A283443.P15553542540307941437

namespace A283443

/-- `A109047(n)/A089128(n)` -/
def P15553542540307941437.Spec : Prop :=
  ∀ n, P15553542540307941437.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P12969565312574712307

`6*n/gcd(36, n²)`
-/

namespace A283443.P12969565312574712307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℚ) / (Nat.gcd 36 (n ^ 2) : ℚ))

end

end A283443.P12969565312574712307

namespace A283443

/-- `6*n/gcd(36, n²)` -/
def P12969565312574712307.Spec : Prop :=
  ∀ n, P12969565312574712307.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P9692299654567636058

`gcd(A008588(n), A108495(n))`
-/

namespace A283443.P9692299654567636058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008588 n) (A108495 n)

end

end A283443.P9692299654567636058

namespace A283443

/-- `gcd(A008588(n), A108495(n))` -/
def P9692299654567636058.Spec : Prop :=
  ∀ n, (P9692299654567636058.a n : ℤ) = A283443 n

end A283443

/-! ## A283443.P14448006621648095695

`A008588(n)/A089128(n)²`
-/

namespace A283443.P14448006621648095695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n : ℚ) / (A089128 n ^ 2 : ℚ)

end

end A283443.P14448006621648095695

namespace A283443

/-- `A008588(n)/A089128(n)²` -/
def P14448006621648095695.Spec : Prop :=
  ∀ n, P14448006621648095695.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P13465106938509185385

`A008588(n)/gcd(36, A000290(n))`
-/

namespace A283443.P13465106938509185385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n : ℚ) / (Int.gcd 36 (A000290 n) : ℚ)

end

end A283443.P13465106938509185385

namespace A283443

/-- `A008588(n)/gcd(36, A000290(n))` -/
def P13465106938509185385.Spec : Prop :=
  ∀ n, P13465106938509185385.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P17343008196246617554

`2*A008585(n)/A089128(n)²`
-/

namespace A283443.P17343008196246617554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A008585 n : ℚ) / (A089128 n ^ 2 : ℚ))

end

end A283443.P17343008196246617554

namespace A283443

/-- `2*A008585(n)/A089128(n)²` -/
def P17343008196246617554.Spec : Prop :=
  ∀ n, P17343008196246617554.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P4637932168126886786

`A008588(n/A089128(n))/A089128(n)`
-/

namespace A283443.P4637932168126886786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat : ℚ) / (A089128 n : ℚ)

end

end A283443.P4637932168126886786

namespace A283443

/-- `A008588(n/A089128(n))/A089128(n)` -/
def P4637932168126886786.Spec : Prop :=
  ∀ n, P4637932168126886786.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P15752866618374804089

`A283442(n+1)/A070291(n+1)*A130724(n)`
-/

namespace A283443.P15752866618374804089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283442 (n + 1) : ℚ) / (A070291 (n + 1) : ℚ) * (A130724 n : ℚ)

end

end A283443.P15752866618374804089

namespace A283443

/-- `A283442(n+1)/A070291(n+1)*A130724(n)` -/
def P15752866618374804089.Spec : Prop :=
  ∀ n, P15752866618374804089.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P15861413117714423473

`A109047(n)/A089145(n+3)`
-/

namespace A283443.P15861413117714423473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 n : ℚ) / (A089145 (n + 3) : ℚ)

end

end A283443.P15861413117714423473

namespace A283443

/-- `A109047(n)/A089145(n+3)` -/
def P15861413117714423473.Spec : Prop :=
  ∀ n, P15861413117714423473.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P8015190375402858254

`A008585(A005843(n/A089128(n)))/A089128(n)`
-/

namespace A283443.P8015190375402858254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A005843 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat).toNat : ℚ) / (A089128 n : ℚ)

end

end A283443.P8015190375402858254

namespace A283443

/-- `A008585(A005843(n/A089128(n)))/A089128(n)` -/
def P8015190375402858254.Spec : Prop :=
  ∀ n, P8015190375402858254.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P10775417580443008409

`A130724(A064680(n))`
-/

namespace A283443.P10775417580443008409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A064680 n).toNat

end

end A283443.P10775417580443008409

namespace A283443

/-- `A130724(A064680(n))` -/
def P10775417580443008409.Spec : Prop :=
  ∀ n, P10775417580443008409.a n = A283443 n

end A283443

/-! ## A283443.P16422627987329256515

`A130724(A188134(2*n))`
-/

namespace A283443.P16422627987329256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A188134 (2 * n)).toNat

end

end A283443.P16422627987329256515

namespace A283443

/-- `A130724(A188134(2*n))` -/
def P16422627987329256515.Spec : Prop :=
  ∀ n, P16422627987329256515.a n = A283443 n

end A283443

/-! ## A283443.P13921994964360383954

`A109053(2*n)/A109015(2*n)`
-/

namespace A283443.P13921994964360383954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109053 (2 * n) : ℚ) / (A109015 (2 * n) : ℚ)

end

end A283443.P13921994964360383954

namespace A283443

/-- `A109053(2*n)/A109015(2*n)` -/
def P13921994964360383954.Spec : Prop :=
  ∀ n, P13921994964360383954.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P4867279436152068281

`A008594(2*n)/A109015(2*n)²`
-/

namespace A283443.P4867279436152068281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (2 * n) : ℚ) / (A109015 (2 * n) ^ 2 : ℚ)

end

end A283443.P4867279436152068281

namespace A283443

/-- `A008594(2*n)/A109015(2*n)²` -/
def P4867279436152068281.Spec : Prop :=
  ∀ n, P4867279436152068281.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P12408658823611647062

`gcd(A000217(2*n+1)*A000332(2*n+1), 6*n²)`
-/

namespace A283443.P12408658823611647062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (2 * n + 1) * A000332 (2 * n + 1)) (6 * n ^ 2 : ℤ)

end

end A283443.P12408658823611647062

namespace A283443

/-- `gcd(A000217(2*n+1)*A000332(2*n+1), 6*n²)` -/
def P12408658823611647062.Spec : Prop :=
  ∀ n, (P12408658823611647062.a n : ℤ) = A283443 n

end A283443

/-! ## A283443.P15514473550329691765

`A008585(A005843(n))/A089128(n)²`
-/

namespace A283443.P15514473550329691765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (A005843 n).toNat : ℚ) / (A089128 n ^ 2 : ℚ)

end

end A283443.P15514473550329691765

namespace A283443

/-- `A008585(A005843(n))/A089128(n)²` -/
def P15514473550329691765.Spec : Prop :=
  ∀ n, P15514473550329691765.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P18423120938862597485

`A130724(2*n/A177499(2*(n+1)))`
-/

namespace A283443.P18423120938862597485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (A177499 (2 * (n + 1)) : ℚ))).toNat

end

end A283443.P18423120938862597485

namespace A283443

/-- `A130724(2*n/A177499(2*(n+1)))` -/
def P18423120938862597485.Spec : Prop :=
  ∀ n, P18423120938862597485.a n = A283443 n

end A283443

/-! ## A283443.P3253103035898294617

`A064680(3*n)/A109007(n)²`
-/

namespace A283443.P3253103035898294617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 (3 * n) : ℚ) / (A109007 n ^ 2 : ℚ)

end

end A283443.P3253103035898294617

namespace A283443

/-- `A064680(3*n)/A109007(n)²` -/
def P3253103035898294617.Spec : Prop :=
  ∀ n, P3253103035898294617.a n = (A283443 n : ℚ)

end A283443

/-! ## A283443.P10682669096077614651

`A187601(A109044(n))/A109007(n)`
-/

namespace A283443.P10682669096077614651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187601 (A109044 n).toNat : ℚ) / (A109007 n : ℚ)

end

end A283443.P10682669096077614651

namespace A283443

/-- `A187601(A109044(n))/A109007(n)` -/
def P10682669096077614651.Spec : Prop :=
  ∀ n, P10682669096077614651.a n = (A283443 n : ℚ)

end A283443

/-!
# A283444: a(n) = lcm(n,7) / gcd(n,7).

The programs for A283444, the canonical program `A283444.P4178322343271575943` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283444 has offset 0).

The definition of A283444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283444.P4178322343271575943

`lcm(n, 7)/gcd(n, 7)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283444

/-- `lcm(n, 7)/gcd(n, 7)` -/
def P4178322343271575943.Spec : Prop :=
  ∀ n, P4178322343271575943.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P6491959594970782150

`7*n/gcd(49, n²)`
-/

namespace A283444.P6491959594970782150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℚ) / (Nat.gcd 49 (n ^ 2) : ℚ))

end

end A283444.P6491959594970782150

namespace A283444

/-- `7*n/gcd(49, n²)` -/
def P6491959594970782150.Spec : Prop :=
  ∀ n, P6491959594970782150.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P18357586648580500979

`7*n/A109010(n)²`
-/

namespace A283444.P18357586648580500979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n : ℚ) / (A109010 n ^ 2 : ℚ)

end

end A283444.P18357586648580500979

namespace A283444

/-- `7*n/A109010(n)²` -/
def P18357586648580500979.Spec : Prop :=
  ∀ n, P18357586648580500979.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P14175489118182481442

`A008590(A106608(n))-n`
-/

namespace A283444.P14175489118182481442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A106608 n).toNat - (n : ℤ)

end

end A283444.P14175489118182481442

namespace A283444

/-- `A008590(A106608(n))-n` -/
def P14175489118182481442.Spec : Prop :=
  ∀ n, P14175489118182481442.a n = A283444 n

end A283444

/-! ## A283444.P1302469706996033432

`A109048(n)/A109010(n)`
-/

namespace A283444.P1302469706996033432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109048 n : ℚ) / (A109010 n : ℚ)

end

end A283444.P1302469706996033432

namespace A283444

/-- `A109048(n)/A109010(n)` -/
def P1302469706996033432.Spec : Prop :=
  ∀ n, P1302469706996033432.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P13467312030214347660

`A106608(n)+A109048(n)-n`
-/

namespace A283444.P13467312030214347660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n + (A109048 n - (n : ℤ))

end

end A283444.P13467312030214347660

namespace A283444

/-- `A106608(n)+A109048(n)-n` -/
def P13467312030214347660.Spec : Prop :=
  ∀ n, P13467312030214347660.a n = A283444 n

end A283444

/-! ## A283444.P6311030586432009647

`A008589(n/A109010(n))/A109010(n)`
-/

namespace A283444.P6311030586432009647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008589 (SequenceMachineLib.roundAway ((n : ℚ) / (A109010 n : ℚ))).toNat : ℚ) / (A109010 n : ℚ)

end

end A283444.P6311030586432009647

namespace A283444

/-- `A008589(n/A109010(n))/A109010(n)` -/
def P6311030586432009647.Spec : Prop :=
  ∀ n, P6311030586432009647.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P4404346654175802683

`A008589(n)/gcd(A269044(n)², A008589(n))`
-/

namespace A283444.P4404346654175802683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008589 n : ℚ) / (Int.gcd (A269044 n ^ 2) (A008589 n) : ℚ)

end

end A283444.P4404346654175802683

namespace A283444

/-- `A008589(n)/gcd(A269044(n)², A008589(n))` -/
def P4404346654175802683.Spec : Prop :=
  ∀ n, P4404346654175802683.a n = (A283444 n : ℚ)

end A283444

/-! ## A283444.P9403717402547996145

`A106608(8*n)-n`
-/

namespace A283444.P9403717402547996145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (8 * n) - (n : ℤ)

end

end A283444.P9403717402547996145

namespace A283444

/-- `A106608(8*n)-n` -/
def P9403717402547996145.Spec : Prop :=
  ∀ n, P9403717402547996145.a n = A283444 n

end A283444

/-! ## A283444.P14155765070714244417

`A106615(4*4*n)-n`
-/

namespace A283444.P14155765070714244417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (4 * (4 * n)) - (n : ℤ)

end

end A283444.P14155765070714244417

namespace A283444

/-- `A106615(4*4*n)-n` -/
def P14155765070714244417.Spec : Prop :=
  ∀ n, P14155765070714244417.a n = A283444 n

end A283444

/-!
# A283446: Integer areas of triangles with side lengths A001223(m), A001223(m+1) and A001223(m+2) for some m.

The programs for A283446, there is no canonical definition to state claims against.
-/

/-! ## A283446.P2189540223341837417

`12*eq[A224166(3*n+2), A224183(n+1)]`
-/

namespace A283446.P2189540223341837417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283446.P2189540223341837417

/-! ## A283446.P12332203651952188839

`12*lt[A224166(3*n+2), A224166(n+1)]`
-/

namespace A283446.P12332203651952188839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283446.P12332203651952188839

/-! ## A283446.P13838827009496990634

`A000118(A000079(n)²)*A002328(n+1)`
-/

namespace A283446.P13838827009496990634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000079 n ^ 2).toNat * A002328 (n + 1)

end

end A283446.P13838827009496990634

/-! ## A283446.P7220542905832503099

`A000118(A000079(2*n))*A002328(n+1)`
-/

namespace A283446.P7220542905832503099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000079 (2 * n)).toNat * A002328 (n + 1)

end

end A283446.P7220542905832503099

/-!
# A283447: Numbers k such that (4*10^k + 197)/3 is prime.

The programs for A283447, there is no canonical definition to state claims against.
-/

/-! ## A283447.P5048849692818406383

`eq[∑{e}[∑{d}[n+1, #], #], A001222(30*n²+1)]`
-/

namespace A283447.P5048849692818406383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n

end

end A283447.P5048849692818406383

/-! ## A283447.P17105526267065916190

`eq[A219649(n)!, A129168(n)]`
-/

namespace A283447.P17105526267065916190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A219649 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283447.P17105526267065916190

/-! ## A283447.P2422672832946685504

`eq[A109193(n), A393611(n+1)]`
-/

namespace A283447.P2422672832946685504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283447.P2422672832946685504

/-! ## A283447.P10863925001371773221

`eq[A114692(n), A393611(n+1)]`
-/

namespace A283447.P10863925001371773221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283447.P10863925001371773221

/-! ## A283447.P8094474179376939475

`eq[A118588(n), A393611(n+1)]`
-/

namespace A283447.P8094474179376939475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283447.P8094474179376939475

/-!
# A283451: a(n) = Sum_{k=1..n} (-1)^k * A005185(k).

The programs for A283451, the canonical program `A283451.P3335321419397655915` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283451 has offset 1).

The definition of A283451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283451.P3335321419397655915

`∑[-(A005185(n+1)*A033999(n))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283451

/-- `∑[-(A005185(n+1)*A033999(n))]` -/
def P3335321419397655915.Spec : Prop :=
  ∀ n, P3335321419397655915.a n = A283451 (n + 1)

theorem P3335321419397655915.correct : P3335321419397655915.Spec := by
  intro n
  simp only [A283451, Nat.add_sub_cancel]

end A283451

/-! ## A283451.P11557528886855275324

`∑[A005185(n+1)*A033999(n+1)]`
-/

namespace A283451.P11557528886855275324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P11557528886855275324

namespace A283451

/-- `∑[A005185(n+1)*A033999(n+1)]` -/
def P11557528886855275324.Spec : Prop :=
  ∀ n, P11557528886855275324.a n = A283451 (n + 1)

theorem P11557528886855275324.correct : P11557528886855275324.Spec := by
  intro n
  simp only [A283451, Nat.add_sub_cancel, A283451.P11557528886855275324.f1, A283451.P11557528886855275324.a, A283451.P3335321419397655915.f1, A283451.P3335321419397655915.a, A005185, A005185.P15523785795587217945.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283451

/-! ## A283451.P16615228884128860772

`∑[(n-A004442(n))*A005185(n+1)]`
-/

namespace A283451.P16615228884128860772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P16615228884128860772

namespace A283451

/-- `∑[(n-A004442(n))*A005185(n+1)]` -/
def P16615228884128860772.Spec : Prop :=
  ∀ n, P16615228884128860772.a n = A283451 (n + 1)

theorem P16615228884128860772.correct : P16615228884128860772.Spec := by
  intro n
  simp only [A283451, Nat.add_sub_cancel, A283451.P16615228884128860772.f1, A283451.P16615228884128860772.a, A283451.P3335321419397655915.f1, A283451.P3335321419397655915.a, A004442, A004442.P2439415777187857398.a, A005185, A005185.P15523785795587217945.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283451

/-! ## A283451.P12394459431644478463

`∑[A005185(n+1)/A033999(A008611(n))]`
-/

namespace A283451.P12394459431644478463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005185 (n + 1) : ℚ) / (A033999 (A008611 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P12394459431644478463

namespace A283451

/-- `∑[A005185(n+1)/A033999(A008611(n))]` -/
def P12394459431644478463.Spec : Prop :=
  ∀ n, P12394459431644478463.a n = (A283451 (n + 1) : ℚ)

end A283451

/-! ## A283451.P15163584303233749993

`∑[A005185(n+1)*A056594(2*(n+1))]`
-/

namespace A283451.P15163584303233749993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) * A056594 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P15163584303233749993

namespace A283451

/-- `∑[A005185(n+1)*A056594(2*(n+1))]` -/
def P15163584303233749993.Spec : Prop :=
  ∀ n, P15163584303233749993.a n = A283451 (n + 1)

end A283451

/-! ## A283451.P16185843731209182085

`∑[A005185(n+1)*A209615(2*n+3)]`
-/

namespace A283451.P16185843731209182085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) * A209615 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P16185843731209182085

namespace A283451

/-- `∑[A005185(n+1)*A209615(2*n+3)]` -/
def P16185843731209182085.Spec : Prop :=
  ∀ n, P16185843731209182085.a n = A283451 (n + 1)

end A283451

/-!
# A283452: The smallest square referenced in A248214 (Least integer b > 0 such that b^n + 1 is not squarefree).

The programs for A283452, there is no canonical definition to state claims against.
-/

/-! ## A283452.P13475305460613969684

`A248576(n+1)²`
-/

namespace A283452.P13475305460613969684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248576 (n + 1) ^ 2

end

end A283452.P13475305460613969684

/-! ## A283452.P15044095845174769938

`A248576(n-log2(1/2))^2`
-/

namespace A283452.P15044095845174769938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248576 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A283452.P15044095845174769938

/-! ## A283452.P12938874057565889682

`A000463(2*A248576(n+1))`
-/

namespace A283452.P12938874057565889682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A248576 (n + 1)).toNat

end

end A283452.P12938874057565889682

/-! ## A283452.P11008008819841859850

`A006530(A248576(n-log2(2/4)))²`
-/

namespace A283452.P11008008819841859850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248576 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((2 : ℚ) / 4 : ℝ))).toNat).toNat ^ 2

end

end A283452.P11008008819841859850

/-!
# A283453: The smallest square referenced in A249025 (Numbers k such that 3^k - 1 is not squarefree).

The programs for A283453, there is no canonical definition to state claims against.
-/

/-! ## A283453.P11659004510657615824

`A283454(n+1)²`
-/

namespace A283453.P11659004510657615824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283454 (n + 1) ^ 2

end

end A283453.P11659004510657615824

/-! ## A283453.P1612670293651107099

`A283454(gcd(n, n+1)+n)^2`
-/

namespace A283453.P1612670293651107099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283454 (Nat.gcd n (n + 1) + n) ^ 2

end

end A283453.P1612670293651107099

/-! ## A283453.P6624305217968643803

`A000194(A283454(n+1)^2)^2`
-/

namespace A283453.P6624305217968643803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A283454 (n + 1) ^ 2).toNat ^ 2

end

end A283453.P6624305217968643803

/-! ## A283453.P13211992184049965161

`A283454(1-char[1]+n)*A283454(n+1)`
-/

namespace A283453.P13211992184049965161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283454 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat * A283454 (n + 1)

end

end A283453.P13211992184049965161

/-! ## A283453.P13547534474706148675

`A034684(A283454(n+1)*A283454(n+1))`
-/

namespace A283453.P13547534474706148675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A283454 (n + 1) * A283454 (n + 1)).toNat

end

end A283453.P13547534474706148675

/-! ## A283453.P8784191344687488159

`A034699(A283454(n+1)*A283454(n+1))`
-/

namespace A283453.P8784191344687488159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A283454 (n + 1) * A283454 (n + 1)).toNat

end

end A283453.P8784191344687488159

/-! ## A283453.P16960807663302273598

`A083730(A283454(n+1)*A283454(n+1))`
-/

namespace A283453.P16960807663302273598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083730 (A283454 (n + 1) * A283454 (n + 1)).toNat

end

end A283453.P16960807663302273598

/-! ## A283453.P15624148722830905758

`A000290(A283454(n+1)+char[A316969(n+1)])`
-/

namespace A283453.P15624148722830905758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316969 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A283454 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A283453.P15624148722830905758

/-!
# A283454: The square root of the smallest square referenced in A249025 (Numbers k such that 3^k - 1 is not squarefree).

The programs for A283454, there is no canonical definition to state claims against.
-/

/-! ## A283454.P17096741746933848223

`sqrt(A283453(n+1))`
-/

namespace A283454.P17096741746933848223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283453 (n + 1) : ℝ)

end

end A283454.P17096741746933848223

/-! ## A283454.P12790741596125971381

`∏{p}[A283453(2*n+1-n), #]`
-/

namespace A283454.P12790741596125971381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283453 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A283454.P12790741596125971381

/-! ## A283454.P11376863366974873424

`A249739(2*A283453(n+1))`
-/

namespace A283454.P11376863366974873424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (2 * A283453 (n + 1)).toNat

end

end A283454.P11376863366974873424

/-! ## A283454.P7297199504313160403

`A243903(∑{p}[A283453(n+1), #])`
-/

namespace A283454.P7297199504313160403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283454.P7297199504313160403

/-! ## A283454.P5447729483292390045

`A014963(A283453(2*(n+1)-(n+1)))`
-/

namespace A283454.P5447729483292390045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A283453 (2 * (n + 1) - (n + 1))).toNat

end

end A283454.P5447729483292390045

/-! ## A283454.P10733573954481335496

`∑{p}[A283453(n+1), #%A243900(n+1)]`
-/

namespace A283454.P10733573954481335496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (p : ℤ) (A243900 (n + 1))

end

end A283454.P10733573954481335496

/-! ## A283454.P11730982501731784838

`A249739(A249739(A283453(n+1))²)`
-/

namespace A283454.P11730982501731784838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (A283453 (n + 1)).toNat ^ 2).toNat

end

end A283454.P11730982501731784838

/-! ## A283454.P13954837371902376546

`A249739(A283453(n+1)+A283453(n+1))`
-/

namespace A283454.P13954837371902376546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A283453 (n + 1) + A283453 (n + 1)).toNat

end

end A283454.P13954837371902376546

/-! ## A283454.P13305900321650013948

`A014963(A283453(n+1)%A283453(n+1)²)`
-/

namespace A283454.P13305900321650013948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A283453 (n + 1)) (A283453 (n + 1) ^ 2)).toNat

end

end A283454.P13305900321650013948

/-! ## A283454.P9320430824410625870

`A283453(n+1)-A000010(lcm(2, A283453(n+1)))`
-/

namespace A283454.P9320430824410625870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283453 (n + 1) - A000010 (Int.lcm 2 (A283453 (n + 1)))

end

end A283454.P9320430824410625870

/-! ## A283454.P989801833758642156

`A014963(A014963(A283453(n+1))%A283453(n+1))`
-/

namespace A283454.P989801833758642156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A014963 (A283453 (n + 1)).toNat) (A283453 (n + 1))).toNat

end

end A283454.P989801833758642156

/-!
# A283455: Numbers m such that 2^m - 1 has at most 2 distinct prime factors.

The programs for A283455, there is no canonical definition to state claims against.
-/

/-! ## A283455.P8070305842995036355

`lt[A046800(n+1), 3]+1`
-/

namespace A283455.P8070305842995036355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283455.P8070305842995036355

/-! ## A283455.P13487184259063308323

`lt[abs(1-n)*A046800(n), 2*n]`
-/

namespace A283455.P13487184259063308323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A046800 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283455.P13487184259063308323

/-! ## A283455.P16068123004393401822

`eq[C(2, n+2), A172474(A046800(n))]`
-/

namespace A283455.P16068123004393401822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283455.P16068123004393401822

/-! ## A283455.P8297591959384082684

`eq[A000007(n), A002264(A046800(n))]`
-/

namespace A283455.P8297591959384082684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P8297591959384082684

/-! ## A283455.P14071978441908515276

`eq[A000038(n), A002264(A046800(n))]`
-/

namespace A283455.P14071978441908515276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P14071978441908515276

/-! ## A283455.P7855192871493758331

`eq[A015241(n), A047872(A046800(n))]`
-/

namespace A283455.P7855192871493758331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047872 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P7855192871493758331

/-! ## A283455.P4436404791014521116

`eq[A050186(A046800(n)), A057427(n)]`
-/

namespace A283455.P4436404791014521116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A046800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P4436404791014521116

/-! ## A283455.P5628184876109985698

`eq[A015689(n), A137932(A046800(n))]`
-/

namespace A283455.P5628184876109985698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P5628184876109985698

/-! ## A283455.P14240969636535277562

`eq[A000009(A046800(n)), A168181(n)]`
-/

namespace A283455.P14240969636535277562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A046800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P14240969636535277562

/-! ## A283455.P2089951375291587342

`eq[A065033(A046800(n)), A267084(n+1)]`
-/

namespace A283455.P2089951375291587342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A046800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283455.P2089951375291587342

/-!
# A283456: Row n=4 of A144048.

The programs for A283456, the canonical program `A283456.P2122001577833149989` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283456 has offset 0).

The definition of A283456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283456.P11693555881185856272

`(2+3*2^n+2*3^n+3*4^n)/2`
-/

namespace A283456.P11693555881185856272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 3 * 2 ^ n + 2 * 3 ^ n + 3 * 4 ^ n : ℚ) / 2

end

end A283456.P11693555881185856272

namespace A283456

/-- `(2+3*2^n+2*3^n+3*4^n)/2` -/
def P11693555881185856272.Spec : Prop :=
  ∀ n, P11693555881185856272.a n = (A283456 n : ℚ)

theorem P11693555881185856272.correct : P11693555881185856272.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A283456, Nat.add_sub_cancel, A283456.P11693555881185856272.a, A283456.P2122001577833149989.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A283456, Nat.add_sub_cancel, A283456.P11693555881185856272.a, A283456.P2122001577833149989.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A283456

/-! ## A283456.P2122001577833149989

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=5, a(1)=13, a(2)=40, a(3)=136`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283456

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P2122001577833149989.Spec : Prop :=
  ∀ n, P2122001577833149989.a n = A283456 n

theorem P2122001577833149989.correct : P2122001577833149989.Spec := by
  intro n
  simp only [A283456]

end A283456

/-! ## A283456.P17622927744424642602

`A007582(n)+A001551(n)`
-/

namespace A283456.P17622927744424642602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A001551 n

end

end A283456.P17622927744424642602

namespace A283456

/-- `A007582(n)+A001551(n)` -/
def P17622927744424642602.Spec : Prop :=
  ∀ n, P17622927744424642602.a n = A283456 n

end A283456

/-! ## A283456.P11940831579152095549

`A094375(n)+A028400(n)`
-/

namespace A283456.P11940831579152095549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n + A028400 n

end

end A283456.P11940831579152095549

namespace A283456

/-- `A094375(n)+A028400(n)` -/
def P11940831579152095549.Spec : Prop :=
  ∀ n, P11940831579152095549.a n = A283456 n

end A283456

/-! ## A283456.P8097887188234592976

`A257273(n)+A074506(n)`
-/

namespace A283456.P8097887188234592976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + A074506 n

end

end A283456.P8097887188234592976

namespace A283456

/-- `A257273(n)+A074506(n)` -/
def P8097887188234592976.Spec : Prop :=
  ∀ n, P8097887188234592976.a n = A283456 n

end A283456

/-! ## A283456.P3056226571928094881

`A281481(n)+A074526(n)`
-/

namespace A283456.P3056226571928094881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A074526 n

end

end A283456.P3056226571928094881

namespace A283456

/-- `A281481(n)+A074526(n)` -/
def P3056226571928094881.Spec : Prop :=
  ∀ n, P3056226571928094881.a n = A283456 n

end A283456

/-! ## A283456.P4876599460057922408

`A034472(n)+A032125(n+1)`
-/

namespace A283456.P4876599460057922408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + A032125 (n + 1)

end

end A283456.P4876599460057922408

namespace A283456

/-- `A034472(n)+A032125(n+1)` -/
def P4876599460057922408.Spec : Prop :=
  ∀ n, P4876599460057922408.a n = A283456 n

end A283456

/-! ## A283456.P16389689852895530522

`A049775(n+2)+A001550(n)`
-/

namespace A283456.P16389689852895530522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) + A001550 n

end

end A283456.P16389689852895530522

namespace A283456

/-- `A049775(n+2)+A001550(n)` -/
def P16389689852895530522.Spec : Prop :=
  ∀ n, P16389689852895530522.a n = A283456 n

end A283456

/-! ## A283456.P8744712474297927988

`A074605(n)+A028401(n+2)`
-/

namespace A283456.P8744712474297927988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 n + A028401 (n + 2)

end

end A283456.P8744712474297927988

namespace A283456

/-- `A074605(n)+A028401(n+2)` -/
def P8744712474297927988.Spec : Prop :=
  ∀ n, P8744712474297927988.a n = A283456 n

end A283456

/-! ## A283456.P5967825106414784219

`A074526(n)+(A000051(n)²-A000225(n))/2`
-/

namespace A283456.P5967825106414784219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074526 n : ℚ) + (A000051 n ^ 2 - A000225 n : ℚ) / 2

end

end A283456.P5967825106414784219

namespace A283456

/-- `A074526(n)+(A000051(n)²-A000225(n))/2` -/
def P5967825106414784219.Spec : Prop :=
  ∀ n, P5967825106414784219.a n = (A283456 n : ℚ)

theorem P5967825106414784219.correct : P5967825106414784219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A283456, Nat.add_sub_cancel, A283456.P5967825106414784219.a, A283456.P2122001577833149989.a, A000051, A000051.P14067217022188782580.a, A000225, A000225.P6535533121115206393.a, A074526, A074526.P4630388288089685513.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A283456, Nat.add_sub_cancel, A283456.P5967825106414784219.a, A283456.P2122001577833149989.a, A000051, A000051.P14067217022188782580.a, A000225, A000225.P6535533121115206393.a, A074526, A074526.P4630388288089685513.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A283456

/-! ## A283456.P16159221756149347184

`A034472(n+1)+A084869(n+1)-A084869(n)`
-/

namespace A283456.P16159221756149347184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) + (A084869 (n + 1) - A084869 n)

end

end A283456.P16159221756149347184

namespace A283456

/-- `A034472(n+1)+A084869(n+1)-A084869(n)` -/
def P16159221756149347184.Spec : Prop :=
  ∀ n, P16159221756149347184.a n = A283456 n

end A283456

/-! ## A283456.P10802231980375974395

`A034472(n+1)+A133789(n+1)-A133789(n)`
-/

namespace A283456.P10802231980375974395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (n + 1) + (A133789 (n + 1) - A133789 n)

end

end A283456.P10802231980375974395

namespace A283456

/-- `A034472(n+1)+A133789(n+1)-A133789(n)` -/
def P10802231980375974395.Spec : Prop :=
  ∀ n, P10802231980375974395.a n = A283456 n

end A283456

/-! ## A283456.P17788088436195336488

`A094375(n)+A094373(n+1)*A094373(n+1)`
-/

namespace A283456.P17788088436195336488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n + A094373 (n + 1) * A094373 (n + 1)

end

end A283456.P17788088436195336488

namespace A283456

/-- `A094375(n)+A094373(n+1)*A094373(n+1)` -/
def P17788088436195336488.Spec : Prop :=
  ∀ n, P17788088436195336488.a n = A283456 n

end A283456

/-! ## A283456.P6362259665797664747

`A007582(n)+2*(A007581(n+1)-A056510(2*n+1))`
-/

namespace A283456.P6362259665797664747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + 2 * (A007581 (n + 1) - A056510 (2 * n + 1))

end

end A283456.P6362259665797664747

namespace A283456

/-- `A007582(n)+2*(A007581(n+1)-A056510(2*n+1))` -/
def P6362259665797664747.Spec : Prop :=
  ∀ n, P6362259665797664747.a n = A283456 n

end A283456

/-!
# A283457: Row n=5 of A144048.

The programs for A283457, the canonical program `A283457.P9910968760479486675` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283457 has offset 0).

The definition of A283457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283457.P9910968760479486675

`1+3*2^(n-1)+3*2^(2*n-1)+3^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283457

/-- `1+3*2^(n-1)+3*2^(2*n-1)+3^n+5^n+6^n` -/
def P9910968760479486675.Spec : Prop :=
  ∀ n, P9910968760479486675.a n = (A283457 n : ℚ)

end A283457

/-! ## A283457.P11050764037011646585

`A144048(A000096(n+4)+6)`
-/

namespace A283457.P11050764037011646585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000096 (n + 4) + 6).toNat

end

end A283457.P11050764037011646585

namespace A283457

/-- `A144048(A000096(n+4)+6)` -/
def P11050764037011646585.Spec : Prop :=
  ∀ n, P11050764037011646585.a n = A283457 n

end A283457

/-! ## A283457.P2874225158801306965

`A144048(A046691(n+3)+9)`
-/

namespace A283457.P2874225158801306965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A046691 (n + 3) + 9).toNat

end

end A283457.P2874225158801306965

namespace A283457

/-- `A144048(A046691(n+3)+9)` -/
def P2874225158801306965.Spec : Prop :=
  ∀ n, P2874225158801306965.a n = A283457 n

end A283457

/-! ## A283457.P5930112792338688392

`A144048(eq[6, A002260(n+1)])`
-/

namespace A283457.P5930112792338688392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283457.P5930112792338688392

namespace A283457

/-- `A144048(eq[6, A002260(n+1)])` -/
def P5930112792338688392.Spec : Prop :=
  ∀ n, P5930112792338688392.a n = A283457 n

end A283457

/-! ## A283457.P12855047925482399993

`A144048(A000217(n+6)-(n+1))`
-/

namespace A283457.P12855047925482399993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A283457.P12855047925482399993

namespace A283457

/-- `A144048(A000217(n+6)-(n+1))` -/
def P12855047925482399993.Spec : Prop :=
  ∀ n, P12855047925482399993.a n = A283457 n

end A283457

/-!
# A283458: Primes for which A049076(p) = 14.

The programs for A283458, there is no canonical definition to state claims against.
-/

/-! ## A283458.P12060201219859990515

`A057847(A049079(n+1))`
-/

namespace A283458.P12060201219859990515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A049079 (n + 1)).toNat

end

end A283458.P12060201219859990515

/-! ## A283458.P8868884826498429694

`A057847(A006450(A007821(n+1)))`
-/

namespace A283458.P8868884826498429694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A006450 (A007821 (n + 1)).toNat).toNat

end

end A283458.P8868884826498429694

/-! ## A283458.P16262400263244495522

`A057847(∑{p}[A049078(n+1), A000040(#)])`
-/

namespace A283458.P16262400263244495522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A283458.P16262400263244495522

/-! ## A283458.P3456437526860894590

`∑{p}[A008578(A049078(n+1)+1), A057847(#)]`
-/

namespace A283458.P3456437526860894590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A049078 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057847 p

end

end A283458.P3456437526860894590

/-! ## A283458.P2812915351161286594

`A057847(p?[A038580(n+1)*A049076(n+1)])`
-/

namespace A283458.P2812915351161286594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) * A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283458.P2812915351161286594

/-!
# A283459: 

The programs for A283459, there is no canonical definition to state claims against.
-/

/-! ## A283459.P2767995440243227254

`A057847(A049080(n+1))`
-/

namespace A283459.P2767995440243227254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A049080 (n + 1)).toNat

end

end A283459.P2767995440243227254

/-!
# A283460: Sum of the primes to the n-th primeth recurrence: A007097(n).

The programs for A283460, there is no canonical definition to state claims against.
-/

/-! ## A283460.P13191072135786596289

`A007504(∑{d}[A008578(n+1), A246682(#)])`
-/

namespace A283460.P13191072135786596289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ d ∈ Nat.divisors (f1 n).natAbs, A246682 d).toNat

end

end A283460.P13191072135786596289

/-! ## A283460.P11645542002370731804

`A007504(∪[A229151(3*n), A007097(n)])`
-/

namespace A283460.P11645542002370731804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229151 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A283460.P11645542002370731804

/-! ## A283460.P15731604659553243803

`A034387(A007097(n))`
-/

namespace A283460.P15731604659553243803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A007097 n).toNat

end

end A283460.P15731604659553243803

/-! ## A283460.P159447318352062834

`A034387(A114537(∑[n]+1))`
-/

namespace A283460.P159447318352062834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A114537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A283460.P159447318352062834

/-! ## A283460.P7677650627165093057

`record[A034387(A269848(n+1))]`
-/

namespace A283460.P7677650627165093057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A269848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283460.P7677650627165093057

/-!
# A283461: Second-largest prime factor of 2^n - 1, if composite, or 1 otherwise.

The programs for A283461, the canonical program `A283461.P9028537449834706039` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283461 has offset 2).

The definition of A283461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283461.P9028537449834706039

`A006530(A000225(n+2)/A005420(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A283461

/-- `A006530(A000225(n+2)/A005420(n+2))` -/
def P9028537449834706039.Spec : Prop :=
  ∀ n, P9028537449834706039.a n = A283461 (n + 2)

theorem P9028537449834706039.correct : P9028537449834706039.Spec := by
  intro n
  simp only [A283461, Nat.add_sub_cancel]

end A283461

/-! ## A283461.P8385161162426992193

`A006530(floor(A020707(n)/A005420(n+2)))`
-/

namespace A283461.P8385161162426992193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A020707 n : ℚ) / (A005420 (n + 2) : ℚ)⌋.toNat

end

end A283461.P8385161162426992193

namespace A283461

/-- `A006530(floor(A020707(n)/A005420(n+2)))` -/
def P8385161162426992193.Spec : Prop :=
  ∀ n, P8385161162426992193.a n = A283461 (n + 2)

end A283461

/-! ## A283461.P9115905271249577703

`A006530(floor(A020737(n)/A005420(n+2)))`
-/

namespace A283461.P9115905271249577703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A020737 n : ℚ) / (A005420 (n + 2) : ℚ)⌋.toNat

end

end A283461.P9115905271249577703

namespace A283461

/-- `A006530(floor(A020737(n)/A005420(n+2)))` -/
def P9115905271249577703.Spec : Prop :=
  ∀ n, P9115905271249577703.a n = A283461 (n + 2)

end A283461

/-! ## A283461.P3773400230757709124

`A006530(ceil(A134067(n)/A005420(n+2)))`
-/

namespace A283461.P3773400230757709124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈(A134067 n : ℚ) / (A005420 (n + 2) : ℚ)⌉.toNat

end

end A283461.P3773400230757709124

namespace A283461

/-- `A006530(ceil(A134067(n)/A005420(n+2)))` -/
def P3773400230757709124.Spec : Prop :=
  ∀ n, P3773400230757709124.a n = A283461 (n + 2)

end A283461

/-! ## A283461.P8292360989231806553

`A006530((A020707(n)-1)/A005420(n+2))`
-/

namespace A283461.P8292360989231806553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A020707 n - 1 : ℚ) / (A005420 (n + 2) : ℚ))).toNat

end

end A283461.P8292360989231806553

namespace A283461

/-- `A006530((A020707(n)-1)/A005420(n+2))` -/
def P8292360989231806553.Spec : Prop :=
  ∀ n, P8292360989231806553.a n = A283461 (n + 2)

theorem P8292360989231806553.correct : P8292360989231806553.Spec := by
  intro n
  simp only [A283461, Nat.add_sub_cancel, A283461.P8292360989231806553.a, A283461.P9028537449834706039.a, A000225, A000225.P6535533121115206393.a, A005420, A005420.P17976102140661701259.a, A006530, A006530.P13372528560459906635.a, A020707, A020707.P16024998955381595964.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283461

/-!
# A283462: Prime summand recurrence: a(n+1) = the sum of the primes <= a(n) with a(0) = 3.

The programs for A283462, there is no canonical definition to state claims against.
-/

/-! ## A283462.P8806055196166794121

`A007504(A000720(a(n-1)))` with `a(0)=3`
-/

namespace A283462.P8806055196166794121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007504 (A000720 (a (n - 1)).toNat).toNat

end

end A283462.P8806055196166794121

/-! ## A283462.P17136977818978532991

`A034387(a(n-1))` with `a(0)=3`
-/

namespace A283462.P17136977818978532991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A034387 (a (n - 1)).toNat

end

end A283462.P17136977818978532991

/-! ## A283462.P10515045288245237585

`A158662(a(n-1))-1` with `a(0)=3`
-/

namespace A283462.P10515045288245237585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A158662 (a (n - 1)).toNat - 1

end

end A283462.P10515045288245237585

/-!
# A283463: a(n) = A032742(A266645(n)).

The programs for A283463, there is no canonical definition to state claims against.
-/

/-! ## A283463.P7495646877362901228

`A266645(n+1)/A020639(n+1)`
-/

namespace A283463.P7495646877362901228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283463.P7495646877362901228

/-! ## A283463.P11792253448953272857

`A032742(A266645(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283463.P11792253448953272857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A266645 (n + 1)).toNat

end

end A283463.P11792253448953272857

/-! ## A283463.P13785882579737967585

`∏{p}[A028233(n+1), A266645(n+1)/#]`
-/

namespace A283463.P13785882579737967585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A266645 (n + 1) : ℚ) / (p : ℚ)

end

end A283463.P13785882579737967585

/-! ## A283463.P1066806423704598552

`A266645(n+1)/A006530(A028233(n+1))`
-/

namespace A283463.P1066806423704598552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A006530 (A028233 (n + 1)).toNat : ℚ)

end

end A283463.P1066806423704598552

/-! ## A283463.P17981119165661394018

`A266645(n+1)/(A074320(n+1)-A006530(n+1))`
-/

namespace A283463.P17981119165661394018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A074320 (n + 1) - A006530 (n + 1) : ℚ)

end

end A283463.P17981119165661394018

/-! ## A283463.P13928411344438516819

`A266645(n+1)/A249817(n+1)*A280497(n+1)`
-/

namespace A283463.P13928411344438516819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A249817 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A283463.P13928411344438516819

/-! ## A283463.P11832899657188549186

`A266645(n+1)/A249817(A249817(n+1)/A280497(n+1))`
-/

namespace A283463.P11832899657188549186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ))).toNat : ℚ)

end

end A283463.P11832899657188549186

/-! ## A283463.P15618356723057895631

`A064989(A032742(A250469(n+1)))`
-/

namespace A283463.P15618356723057895631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A032742 (A250469 (n + 1)).toNat).toNat

end

end A283463.P15618356723057895631

/-! ## A283463.P7873283978529163572

`A064989(A250469(n+1))/A020639(n+1)`
-/

namespace A283463.P7873283978529163572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A250469 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283463.P7873283978529163572

/-! ## A283463.P14253345983423556327

`A064989(A253886(n)+1)/A020639(n+1)`
-/

namespace A283463.P14253345983423556327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A253886 n + 1).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283463.P14253345983423556327

/-! ## A283463.P1635952760642503971

`A266645(n+1)/A266646(n+1)*A283464(n+1)`
-/

namespace A283463.P1635952760642503971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A266646 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ)

end

end A283463.P1635952760642503971

/-! ## A283463.P5514043897307618087

`A266645(n+1)/A249817(A266646(n+1)/A283464(n+1))`
-/

namespace A283463.P5514043897307618087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) / (A283464 (n + 1) : ℚ))).toNat : ℚ)

end

end A283463.P5514043897307618087

/-! ## A283463.P2228916005217341327

`A266645(n+1)/A266645(A266646(n+1)/A283464(n+1))`
-/

namespace A283463.P2228916005217341327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A266645 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) / (A283464 (n + 1) : ℚ))).toNat : ℚ)

end

end A283463.P2228916005217341327

/-! ## A283463.P12176220400281596775

`A280498(A249817(A266645(A266645(A266646(n+1)))))`
-/

namespace A283463.P12176220400281596775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A249817 (A266645 (A266645 (A266646 (n + 1)).toNat).toNat).toNat).toNat

end

end A283463.P12176220400281596775

/-! ## A283463.P9057055363990789984

`A266645(n+1)/A250470(A003961(n+1))*A283464(n+1)`
-/

namespace A283463.P9057055363990789984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (n + 1) : ℚ) / (A250470 (A003961 (n + 1)).toNat : ℚ) * (A283464 (n + 1) : ℚ)

end

end A283463.P9057055363990789984

/-! ## A283463.P9737686636313498412

`A283464(A266645(A266645(A249817(A249818(n+1)))))`
-/

namespace A283463.P9737686636313498412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A266645 (A266645 (A249817 (A249818 (n + 1)).toNat).toNat).toNat).toNat

end

end A283463.P9737686636313498412

/-!
# A283464: a(n) = A032742(A266646(n)).

The programs for A283464, there is no canonical definition to state claims against.
-/

/-! ## A283464.P3285276506145611422

`A032742(A266646(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283464.P3285276506145611422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A266646 (n + 1)).toNat

end

end A283464.P3285276506145611422

/-! ## A283464.P9154228364131819951

`A266646(n+1)/A020639(n+1)`
-/

namespace A283464.P9154228364131819951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283464.P9154228364131819951

/-! ## A283464.P14971685184182513321

`∏{p}[A028233(n+1), A266646(n+1)/#]`
-/

namespace A283464.P14971685184182513321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A266646 (n + 1) : ℚ) / (p : ℚ)

end

end A283464.P14971685184182513321

/-! ## A283464.P17585581866225324729

`A268674(A003961(n+1))/A020639(n+1)`
-/

namespace A283464.P17585581866225324729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268674 (A003961 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283464.P17585581866225324729

/-! ## A283464.P17625125842329218371

`A266646(n+1)/A006530(A028233(n+1))`
-/

namespace A283464.P17625125842329218371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A006530 (A028233 (n + 1)).toNat : ℚ)

end

end A283464.P17625125842329218371

/-! ## A283464.P15792046998032013170

`A266646(n+1)/A249817(n+1)*A280497(n+1)`
-/

namespace A283464.P15792046998032013170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A249817 (n + 1) : ℚ) * (A280497 (n + 1) : ℚ)

end

end A283464.P15792046998032013170

/-! ## A283464.P12535051625114424960

`A266646(n+1)/A266645(n+1)*A283463(n+1)`
-/

namespace A283464.P12535051625114424960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A266645 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ)

end

end A283464.P12535051625114424960

/-! ## A283464.P11253996800990667203

`A266646(n+1)/A249817(A249817(n+1)/A280497(n+1))`
-/

namespace A283464.P11253996800990667203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266646 (n + 1) : ℚ) / (A249817 (SequenceMachineLib.roundAway ((A249817 (n + 1) : ℚ) / (A280497 (n + 1) : ℚ))).toNat : ℚ)

end

end A283464.P11253996800990667203

/-! ## A283464.P6836470893790542400

`A266403(A266415(n+1))/A020639(n+1)`
-/

namespace A283464.P6836470893790542400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266403 (A266415 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A283464.P6836470893790542400

/-! ## A283464.P8138974630490656339

`A280498(A249817(A266646(A266646(A266645(n+1)))))`
-/

namespace A283464.P8138974630490656339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A249817 (A266646 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A283464.P8138974630490656339

/-! ## A283464.P12484008126050454026

`A032742(A250470(A003961(n+1)))`
-/

namespace A283464.P12484008126050454026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A250470 (A003961 (n + 1)).toNat).toNat

end

end A283464.P12484008126050454026

/-! ## A283464.P15005248702765421186

`A283463(A266646(A266646(A266403(A266403(n+1)))))`
-/

namespace A283464.P15005248702765421186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (A266646 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A283464.P15005248702765421186

/-!
# A283465: a(n) = A046523(A250469(n)).

The programs for A283465, there is no canonical definition to state claims against.
-/

/-! ## A283465.P11173919727376353860

`A046523(A266645(n+1))`
-/

namespace A283465.P11173919727376353860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A266645 (n + 1)).toNat

end

end A283465.P11173919727376353860

/-! ## A283465.P4015500164090998978

`A046523(A250469(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283465.P4015500164090998978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250469 (n + 1)).toNat

end

end A283465.P4015500164090998978

/-! ## A283465.P15637555995750620946

`A046523(A020639(n+1)*A283463(n+1))`
-/

namespace A283465.P15637555995750620946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A020639 (n + 1) * A283463 (n + 1)).toNat

end

end A283465.P15637555995750620946

/-! ## A283465.P602179682478797662

`A278223(A250471(n+1))`
-/

namespace A283465.P602179682478797662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A250471 (n + 1)).toNat

end

end A283465.P602179682478797662

/-! ## A283465.P16588348202376242627

`A046523(A253886(n)+1)`
-/

namespace A283465.P16588348202376242627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A253886 n + 1).toNat

end

end A283465.P16588348202376242627

/-! ## A283465.P2388556414961205847

`A283466(A266645(A266645(A266403(A266403(n+1)))))`
-/

namespace A283465.P2388556414961205847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A266645 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A283465.P2388556414961205847

/-! ## A283465.P2745769532193922529

`A283466(A266645(A266645(A266645(A266646(n+1)))))`
-/

namespace A283465.P2745769532193922529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A266645 (A266645 (A266645 (A266646 (n + 1)).toNat).toNat).toNat).toNat

end

end A283465.P2745769532193922529

/-!
# A283466: a(n) = A046523(A266646(n)).

The programs for A283466, there is no canonical definition to state claims against.
-/

/-! ## A283466.P6611529627505206651

`A046523(A266646(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283466.P6611529627505206651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A266646 (n + 1)).toNat

end

end A283466.P6611529627505206651

/-! ## A283466.P15783976808359004897

`A046523(A020639(n+1)*A283464(n+1))`
-/

namespace A283466.P15783976808359004897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A020639 (n + 1) * A283464 (n + 1)).toNat

end

end A283466.P15783976808359004897

/-! ## A283466.P10591896409159371166

`A046523(A266645(n+1)/A283463(n+1)*A283464(n+1))`
-/

namespace A283466.P10591896409159371166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A266645 (n + 1) : ℚ) / (A283463 (n + 1) : ℚ) * (A283464 (n + 1) : ℚ))).toNat

end

end A283466.P10591896409159371166

/-! ## A283466.P6148253652526153772

`A046523(A250470(A003961(n+1)))`
-/

namespace A283466.P6148253652526153772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250470 (A003961 (n + 1)).toNat).toNat

end

end A283466.P6148253652526153772

/-! ## A283466.P4998032076939292870

`A283465(A266646(A266646(A266646(A266645(n+1)))))`
-/

namespace A283466.P4998032076939292870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A266646 (A266646 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A283466.P4998032076939292870

/-!
# A283467: a(n) = A005185(n+1-A005185(n)).

The programs for A283467, the canonical program `A283467.P7621977705717145571` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283467 has offset 1).

The definition of A283467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(n+2-A005185(n+1))` (program `A283467.P7621977705717145571`, by `A283467.P7621977705717145571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283467.P7621977705717145571

`A005185(n+2-A005185(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283467

/-- `A005185(n+2-A005185(n+1))` -/
def P7621977705717145571.Spec : Prop :=
  ∀ n, P7621977705717145571.a n = A283467 (n + 1)

theorem P7621977705717145571.correct : P7621977705717145571.Spec := by
  intro n
  simp only [A283467, Nat.add_sub_cancel]

end A283467

/-! ## A283467.P2536379052986353025

`A005185(n+1-A005185(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283467.P2536379052986353025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((n + 1 : ℤ) - A005185 (n + 1) + 1).toNat

end

end A283467.P2536379052986353025

namespace A283467

/-- `A005185(n+1-A005185(n+1)+1)` -/
def P2536379052986353025.Spec : Prop :=
  ∀ n, P2536379052986353025.a n = A283467 (n + 1)

theorem P2536379052986353025.correct : P2536379052986353025.Spec := by
  intro n
  simp only [A283467, Nat.add_sub_cancel, A283467.P2536379052986353025.a, A283467.P7621977705717145571.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A283467

/-! ## A283467.P8492852021599687265

`A005185(A239913(n+1)+1)`
-/

namespace A283467.P8492852021599687265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A239913 (n + 1) + 1).toNat

end

end A283467.P8492852021599687265

namespace A283467

/-- `A005185(A239913(n+1)+1)` -/
def P8492852021599687265.Spec : Prop :=
  ∀ n, P8492852021599687265.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P9912195853790141433

`A028310(Δ[A280706(A028310(n))])`
-/

namespace A283467.P9912195853790141433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280706 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A283467.P9912195853790141433

namespace A283467

/-- `A028310(Δ[A280706(A028310(n))])` -/
def P9912195853790141433.Spec : Prop :=
  ∀ n, P9912195853790141433.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P14319828887698406447

`A005185(A284019(n+1)+A080677(n+1))`
-/

namespace A283467.P14319828887698406447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A284019 (n + 1) + A080677 (n + 1)).toNat

end

end A283467.P14319828887698406447

namespace A283467

/-- `A005185(A284019(n+1)+A080677(n+1))` -/
def P14319828887698406447.Spec : Prop :=
  ∀ n, P14319828887698406447.a n = A283467 (n + 1)

theorem P14319828887698406447.correct : P14319828887698406447.Spec := by
  intro n
  simp only [A283467, Nat.add_sub_cancel, A283467.P14319828887698406447.a, A283467.P7621977705717145571.a, A005185, A005185.P15523785795587217945.a, A080677, A080677.P3667813120543566006.a, A284019, A284019.P8425388726725023330.a, A004001, A004001.P15027099775036681873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283467

/-! ## A283467.P14010179806386554986

`A239913(n+1)+1-A239913(A239913(n+1)+1)`
-/

namespace A283467.P14010179806386554986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239913 (n + 1) + (1 - A239913 (A239913 (n + 1) + 1).toNat)

end

end A283467.P14010179806386554986

namespace A283467

/-- `A239913(n+1)+1-A239913(A239913(n+1)+1)` -/
def P14010179806386554986.Spec : Prop :=
  ∀ n, P14010179806386554986.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P2433431310320123664

`A005185(A080677(n+1)+A062157(n)*A284606(n+1))`
-/

namespace A283467.P2433431310320123664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A080677 (n + 1) + A062157 n * A284606 (n + 1)).toNat

end

end A283467.P2433431310320123664

namespace A283467

/-- `A005185(A080677(n+1)+A062157(n)*A284606(n+1))` -/
def P2433431310320123664.Spec : Prop :=
  ∀ n, P2433431310320123664.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P633447794384895766

`A005185(A080677(n+1)+A165326(n)*A284606(n+1))`
-/

namespace A283467.P633447794384895766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A080677 (n + 1) + A165326 n * A284606 (n + 1)).toNat

end

end A283467.P633447794384895766

namespace A283467

/-- `A005185(A080677(n+1)+A165326(n)*A284606(n+1))` -/
def P633447794384895766.Spec : Prop :=
  ∀ n, P633447794384895766.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P10238773013562025883

`A005185(A080677(n+1)+A284606(n+1)/A165326(n))`
-/

namespace A283467.P10238773013562025883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.roundAway ((A080677 (n + 1) : ℚ) + (A284606 (n + 1) : ℚ) / (A165326 n : ℚ))).toNat

end

end A283467.P10238773013562025883

namespace A283467

/-- `A005185(A080677(n+1)+A284606(n+1)/A165326(n))` -/
def P10238773013562025883.Spec : Prop :=
  ∀ n, P10238773013562025883.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P5481447181560813399

`A002260(A286559(A233583(n+1)+2))`
-/

namespace A283467.P5481447181560813399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286559 (A233583 (n + 1) + 2).toNat).toNat

end

end A283467.P5481447181560813399

namespace A283467

/-- `A002260(A286559(A233583(n+1)+2))` -/
def P5481447181560813399.Spec : Prop :=
  ∀ n, P5481447181560813399.a n = A283467 (n + 1)

end A283467

/-! ## A283467.P679504305256523659

`A144328(A286559(n+2)+1)`
-/

namespace A283467.P679504305256523659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A286559 (n + 2) + 1).toNat

end

end A283467.P679504305256523659

namespace A283467

/-- `A144328(A286559(n+2)+1)` -/
def P679504305256523659.Spec : Prop :=
  ∀ n, P679504305256523659.a n = A283467 (n + 1)

end A283467

/-!
# A283468: a(n) = A004001(A004001(n-1)) - A004001(n-A004001(n-1)), a(1) = a(2) = 1.

The programs for A283468, there is no canonical definition to state claims against.
-/

/-! ## A283468.P13277111356209415071

`∑[A056594(A276441(n+1))]+1`
-/

namespace A283468.P13277111356209415071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A276441 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283468.P13277111356209415071

/-! ## A283468.P4259914868352420428

`A056594(A276441(C(n+1, n)))+a(n-1)` with `a(0)=1`
-/

namespace A283468.P4259914868352420428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056594 (A276441 (Nat.choose (n + 1) n)).toNat + a (n - 1)

end

end A283468.P4259914868352420428

/-! ## A283468.P16309887148109920515

`A056594(A276441(-xor(n, -1)))+a(n-1)` with `a(0)=1`
-/

namespace A283468.P16309887148109920515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056594 (A276441 (-Int.xor (n : ℤ) (-1)).toNat).toNat + a (n - 1)

end

end A283468.P16309887148109920515

/-! ## A283468.P8794763553528287784

`A056594(A276441((n+1)%(n+9)))+a(n-1)` with `a(0)=1`
-/

namespace A283468.P8794763553528287784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056594 (A276441 ((n + 1) % (n + 9))).toNat + a (n - 1)

end

end A283468.P8794763553528287784

/-! ## A283468.P5105661919030569121

`A190610(n+1)^A322402(A319998(3*n+5))`
-/

namespace A283468.P5105661919030569121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190610 (n + 1) : ℚ) ^ (A322402 (A319998 (3 * n + 5)).toNat : ℤ)

end

end A283468.P5105661919030569121

/-!
# A283469: a(n) = A004001(A004001(n-1)) OR A004001(n-A004001(n-1)), a(1) = a(2) = 1.

The programs for A283469, there is no canonical definition to state claims against.
-/

/-! ## A283469.P12473448447582874980

`A283470(n+1)+A283472(n+1)`
-/

namespace A283469.P12473448447582874980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (n + 1) + A283472 (n + 1)

end

end A283469.P12473448447582874980

/-! ## A283469.P2575128765971999085

`A004001(n+1)-A283472(n+1)`
-/

namespace A283469.P2575128765971999085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A283472 (n + 1)

end

end A283469.P2575128765971999085

/-! ## A283469.P7278224437474063728

`(A283470(n+1)+A004001(n+1))/2`
-/

namespace A283469.P7278224437474063728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283470 (n + 1) + A004001 (n + 1) : ℚ) / 2

end

end A283469.P7278224437474063728

/-! ## A283469.P17427344841985271488

`∑[char[A188163(n+1)-1]]-A283472(n+1)`
-/

namespace A283469.P17427344841985271488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A283472 (n + 1)

end

end A283469.P17427344841985271488

/-! ## A283469.P12818348273563053197

`A004525(A283470(n+1)+A004001(n+1))`
-/

namespace A283469.P12818348273563053197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A283470 (n + 1) + A004001 (n + 1)).toNat

end

end A283469.P12818348273563053197

/-! ## A283469.P15639729932377550689

`A004526(A283470(n+1)+A004001(n+1))`
-/

namespace A283469.P15639729932377550689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A283470 (n + 1) + A004001 (n + 1)).toNat

end

end A283469.P15639729932377550689

/-! ## A283469.P125684595300666460

`A110654(A283470(n+1)+A004001(n+1))`
-/

namespace A283469.P125684595300666460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A283470 (n + 1) + A004001 (n + 1)).toNat

end

end A283469.P125684595300666460

/-! ## A283469.P3046125916496579437

`A004001(n+1)+-A283472(n+1)%A082040(n)`
-/

namespace A283469.P3046125916496579437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + Int.tmod (-A283472 (n + 1)) (A082040 n)

end

end A283469.P3046125916496579437

/-!
# A283470: a(n) = A004001(A004001(n-1)) XOR A004001(n-A004001(n-1)), a(1) = a(2) = 1.

The programs for A283470, there is no canonical definition to state claims against.
-/

/-! ## A283470.P6319865698452374128

`A283469(n+1)-A283472(n+1)`
-/

namespace A283470.P6319865698452374128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1) - A283472 (n + 1)

end

end A283470.P6319865698452374128

/-! ## A283470.P15549034032849239561

`2*A283469(n+1)-A004001(n+1)`
-/

namespace A283470.P15549034032849239561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283469 (n + 1) - A004001 (n + 1)

end

end A283470.P15549034032849239561

/-! ## A283470.P7898900756901151339

`A004001(n+1)-2*A283472(n+1)`
-/

namespace A283470.P7898900756901151339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - 2 * A283472 (n + 1)

end

end A283470.P7898900756901151339

/-! ## A283470.P11130155853503182632

`A004001(n+1)-A005843(A283472(n+1))`
-/

namespace A283470.P11130155853503182632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A005843 (A283472 (n + 1)).toNat

end

end A283470.P11130155853503182632

/-! ## A283470.P11411183761894633158

`A005843(A283469(n+1))-A004001(n+1)`
-/

namespace A283470.P11411183761894633158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A283469 (n + 1)).toNat - A004001 (n + 1)

end

end A283470.P11411183761894633158

/-! ## A283470.P11823285934066098966

`xor(A283469(A000027(n+1)), A283472(n+1))`
-/

namespace A283470.P11823285934066098966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283469 (A000027 (n + 1)).toNat) (A283472 (n + 1))

end

end A283470.P11823285934066098966

/-! ## A283470.P873806595172173724

`xor(A283472(n+1)%A008619(n), A283469(n+1))`
-/

namespace A283470.P873806595172173724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A283472 (n + 1)) (A008619 n)) (A283469 (n + 1))

end

end A283470.P873806595172173724

/-! ## A283470.P9843192837415935898

`xor(A283469(A008619(2*n)), A283472(n+1))`
-/

namespace A283470.P9843192837415935898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283469 (A008619 (2 * n)).toNat) (A283472 (n + 1))

end

end A283470.P9843192837415935898

/-! ## A283470.P16756427563866057528

`xor(A000196(A283472(n+1)²), A283469(n+1))`
-/

namespace A283470.P16756427563866057528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000196 (A283472 (n + 1) ^ 2).toNat) (A283469 (n + 1))

end

end A283470.P16756427563866057528

/-!
# A283471: Numbers n > 2 such that A004001(A004001(n-1)) = A004001(n-A004001(n-1)).

The programs for A283471, there is no canonical definition to state claims against.
-/

/-! ## A283471.P17161564878741743526

`eq[0, A283470(n+1)]+1`
-/

namespace A283471.P17161564878741743526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283471.P17161564878741743526

/-! ## A283471.P7975471067959803994

`record[gcd(n+3, A283470(n+3))]`
-/

namespace A283471.P7975471067959803994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A283470 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283471.P7975471067959803994

/-! ## A283471.P739374561057580281

`eq[0, A283468(n+1)]+1`
-/

namespace A283471.P739374561057580281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283471.P739374561057580281

/-! ## A283471.P7106530923394784747

`eq[A283469(n+1), A283472(n+1)]+1`
-/

namespace A283471.P7106530923394784747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283471.P7106530923394784747

/-! ## A283471.P4907754301841374834

`eq[0, A283468(A028310(n))]`
-/

namespace A283471.P4907754301841374834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283471.P4907754301841374834

/-! ## A283471.P11455820319979451522

`eq[0, A283470(A233583(n+1))]`
-/

namespace A283471.P11455820319979451522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283470 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283471.P11455820319979451522

/-!
# A283472: a(n) = A004001(A004001(n-1)) AND A004001(n-A004001(n-1)), a(1) = a(2) = 0.

The programs for A283472, there is no canonical definition to state claims against.
-/

/-! ## A283472.P11907835940617497183

`A283469(n+1)-A283470(n+1)`
-/

namespace A283472.P11907835940617497183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1) - A283470 (n + 1)

end

end A283472.P11907835940617497183

/-! ## A283472.P14315900865284757365

`A004001(n+1)-A283469(n+1)`
-/

namespace A283472.P14315900865284757365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A283469 (n + 1)

end

end A283472.P14315900865284757365

/-! ## A283472.P9155677599070410646

`(A004001(n+1)-A283470(n+1))/2`
-/

namespace A283472.P9155677599070410646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004001 (n + 1) - A283470 (n + 1) : ℚ) / 2

end

end A283472.P9155677599070410646

/-! ## A283472.P12490564259322856676

`2-A080677(n+1)+n-A283469(n+1)`
-/

namespace A283472.P12490564259322856676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080677 (n + 1) + (n : ℤ) - A283469 (n + 1)

end

end A283472.P12490564259322856676

/-! ## A283472.P14710338842615185313

`∑[char[A188163(n+1)-1]]-A283469(n+1)`
-/

namespace A283472.P14710338842615185313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A283469 (n + 1)

end

end A283472.P14710338842615185313

/-! ## A283472.P1751095883889406993

`ceil((A004074(n+1)+n)/2)-A283469(n+1)`
-/

namespace A283472.P1751095883889406993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004074 (n + 1) + (n : ℤ) : ℚ) / 2⌉ - A283469 (n + 1)

end

end A283472.P1751095883889406993

/-! ## A283472.P17048356264456840079

`A004525(A004001(n+1)-A283470(n+1))`
-/

namespace A283472.P17048356264456840079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004001 (n + 1) - A283470 (n + 1)).toNat

end

end A283472.P17048356264456840079

/-! ## A283472.P527747894922528888

`A004526(A004001(n+1)-A283470(n+1))`
-/

namespace A283472.P527747894922528888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004001 (n + 1) - A283470 (n + 1)).toNat

end

end A283472.P527747894922528888

/-! ## A283472.P14496921213215171010

`A110654(A004001(n+1)-A283470(n+1))`
-/

namespace A283472.P14496921213215171010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004001 (n + 1) - A283470 (n + 1)).toNat

end

end A283472.P14496921213215171010

/-! ## A283472.P17984292300132685606

`xor(A283469(A000027(n+1)), A283470(n+1))`
-/

namespace A283472.P17984292300132685606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283469 (A000027 (n + 1)).toNat) (A283470 (n + 1))

end

end A283472.P17984292300132685606

/-!
# A283473: Numbers n for which A004001(n) = A283470(n).

The programs for A283473, there is no canonical definition to state claims against.
-/

/-! ## A283473.P1764845726689305358

`eq[1, A054519(A283472(n+1))]+1`
-/

namespace A283473.P1764845726689305358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A283472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283473.P1764845726689305358

/-! ## A283473.P13539979166203835187

`eq[A283472(n+1), A304455(A283472(n+1)+1)]+1`
-/

namespace A283473.P13539979166203835187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A283472 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283473.P13539979166203835187

/-! ## A283473.P6016101387704132754

`record[n+1-A065650(n)*A283472(n+1)]`
-/

namespace A283473.P6016101387704132754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A065650 n * A283472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283473.P6016101387704132754

/-! ## A283473.P11393861129930291906

`record[n+1-A138633(n+1)*A283472(n+1)]`
-/

namespace A283473.P11393861129930291906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A138633 (n + 1) * A283472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283473.P11393861129930291906

/-! ## A283473.P16040034191120454680

`record[n+1-A165863(n+1)*A283472(n+1)]`
-/

namespace A283473.P16040034191120454680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A165863 (n + 1) * A283472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283473.P16040034191120454680

/-! ## A283473.P8958925819865962305

`record[n+1-A283472(n+1)*A287896(n+1)]`
-/

namespace A283473.P8958925819865962305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A283472 (n + 1) * A287896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283473.P8958925819865962305

/-!
# A283474: a(0) = 0, a(1) = 1, for n > 1, a(n) = a(n-1) + a(n-A002487(n)).

The programs for A283474, the canonical program `A283474.P6694215091919527259` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283474 has offset 0).

The definition of A283474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283474.P16369825019833126465

`a(n-1)+a(A284013(n))` with `a(0)=0, a(1)=1`
-/

namespace A283474.P16369825019833126465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (A284013 n).toNat

end

end A283474.P16369825019833126465

namespace A283474

/-- `a(n-1)+a(A284013(n))` -/
def P16369825019833126465.Spec : Prop :=
  ∀ n, (P16369825019833126465.a n : ℤ) = A283474 n

end A283474

/-! ## A283474.P6694215091919527259

`a(n-1)+a(n-A002487(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A283474

/-- `a(n-1)+a(n-A002487(n))` -/
def P6694215091919527259.Spec : Prop :=
  ∀ n, (P6694215091919527259.a n : ℤ) = A283474 n

theorem P6694215091919527259.correct : P6694215091919527259.Spec := by
  intro n
  simp only [A283474]

end A283474

/-! ## A283474.P16752785411859947001

`∑[A283479(n+1)]-A283479(n+1)`
-/

namespace A283474.P16752785411859947001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283479 (n + 1)

end

end A283474.P16752785411859947001

namespace A283474

/-- `∑[A283479(n+1)]-A283479(n+1)` -/
def P16752785411859947001.Spec : Prop :=
  ∀ n, P16752785411859947001.a n = A283474 n

end A283474

/-! ## A283474.P2734798004207859762

`A380378(A034182(n+1))-1`
-/

namespace A283474.P2734798004207859762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380378 (A034182 (n + 1)).toNat - 1

end

end A283474.P2734798004207859762

namespace A283474

/-- `A380378(A034182(n+1))-1` -/
def P2734798004207859762.Spec : Prop :=
  ∀ n, P2734798004207859762.a n = A283474 n

end A283474

/-! ## A283474.P8232725560272856484

`eq[A228351(n+1), A261126(n+2)]`
-/

namespace A283474.P8232725560272856484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261126 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283474.P8232725560272856484

namespace A283474

/-- `eq[A228351(n+1), A261126(n+2)]` -/
def P8232725560272856484.Spec : Prop :=
  ∀ n, (P8232725560272856484.a n : ℤ) = A283474 n

end A283474

/-!
# A283475: a(n) = A019565(A005187(n)).

The programs for A283475, there is no canonical definition to state claims against.
-/

/-! ## A283475.P16986911413419649877

`A019565(A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283475.P16986911413419649877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A005187 n).toNat

end

end A283475.P16986911413419649877

/-! ## A283475.P8899439063975045971

`A283478(A019565(n))`
-/

namespace A283475.P8899439063975045971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283478 (A019565 n).toNat

end

end A283475.P8899439063975045971

/-! ## A283475.P9807281230185416260

`A097248(A283477(n))`
-/

namespace A283475.P9807281230185416260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A283477 n).toNat

end

end A283475.P9807281230185416260

/-! ## A283475.P1376285111327088433

`A019565(∑[val(n+1, 2)]-val(n+1, 2)+n)`
-/

namespace A283475.P1376285111327088433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (n : ℤ)).toNat

end

end A283475.P1376285111327088433

/-! ## A283475.P11942429206386663164

`A019565(lt[0, A079559(n)])`
-/

namespace A283475.P11942429206386663164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A283475.P11942429206386663164

/-! ## A283475.P15326913824433504418

`A019565(A011371(n)+n)`
-/

namespace A283475.P15326913824433504418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A011371 n + (n : ℤ)).toNat

end

end A283475.P15326913824433504418

/-! ## A283475.P13639773641174117379

`A019565(∑[val(A004277(n), 2)])`
-/

namespace A283475.P13639773641174117379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283475.P13639773641174117379

/-! ## A283475.P8226930442878251158

`A019565(lt[A082850(n+1), 2])`
-/

namespace A283475.P8226930442878251158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283475.P8226930442878251158

/-! ## A283475.P14874534538947781355

`A019565(2*n-A000120(n))`
-/

namespace A283475.P14874534538947781355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((2 * n : ℤ) - A000120 n).toNat

end

end A283475.P14874534538947781355

/-! ## A283475.P12683322223481134412

`A019565(A120738(n)-2*n)`
-/

namespace A283475.P12683322223481134412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A120738 n - (2 * n : ℤ)).toNat

end

end A283475.P12683322223481134412

/-! ## A283475.P16358160524540088278

`A019565(n-A000120(n)+n)`
-/

namespace A283475.P16358160524540088278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) - A000120 n + (n : ℤ)).toNat

end

end A283475.P16358160524540088278

/-! ## A283475.P15333255141019549748

`A019565(n-(A000120(n)-n))`
-/

namespace A283475.P15333255141019549748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) - (A000120 n - (n : ℤ))).toNat

end

end A283475.P15333255141019549748

/-! ## A283475.P9099422099488916715

`A019565(A120738(n)-n-n)`
-/

namespace A283475.P9099422099488916715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A120738 n - (n : ℤ) - (n : ℤ)).toNat

end

end A283475.P9099422099488916715

/-! ## A283475.P15238026848753538058

`A019565(A233905(n)+A233931(n)+n)`
-/

namespace A283475.P15238026848753538058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A233905 n + (A233931 n + (n : ℤ))).toNat

end

end A283475.P15238026848753538058

/-! ## A283475.P9257970884738272788

`A019565(∑[A001511(n+1)]-A001511(n+1))`
-/

namespace A283475.P9257970884738272788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ j ∈ Finset.range (n + 1), f1 j - A001511 (n + 1)).toNat

end

end A283475.P9257970884738272788

/-! ## A283475.P13348342381731942448

`A019565(∑[A007814(n+1)]-A007814(n+1)+n)`
-/

namespace A283475.P13348342381731942448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1) + (n : ℤ)).toNat

end

end A283475.P13348342381731942448

/-! ## A283475.P1601286561270338742

`A019565(A011371(2*n))`
-/

namespace A283475.P1601286561270338742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A011371 (2 * n)).toNat

end

end A283475.P1601286561270338742

/-! ## A283475.P14766621482781964604

`A019565(∑[A285099(2*n+1)])`
-/

namespace A283475.P14766621482781964604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283475.P14766621482781964604

/-! ## A283475.P9274359399069300067

`A019565(2*n-A048881(2*n))`
-/

namespace A283475.P9274359399069300067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((2 * n : ℤ) - A048881 (2 * n)).toNat

end

end A283475.P9274359399069300067

/-! ## A283475.P4010977287975887770

`A284003(A003188(A005187(A003188(A006068(n)))))`
-/

namespace A283475.P4010977287975887770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 (A005187 (A003188 (A006068 n).toNat).toNat).toNat).toNat

end

end A283475.P4010977287975887770

/-!
# A283476: Squarefree numbers n for which A079559(A048675(n)) = 1.

The programs for A283476, the canonical program `A283476.P12626958136040058516` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283476 has offset 1).

The definition of A283476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283476.P12626958136040058516

`1+eq[1, A323511(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A283476

/-- `1+eq[1, A323511(n+1)]` -/
def P12626958136040058516.Spec : Prop :=
  ∀ n, (P12626958136040058516.a n : ℤ) = A283476 (n + 1)

theorem P12626958136040058516.correct : P12626958136040058516.Spec := by
  intro n
  simp only [A283476, Nat.add_sub_cancel]

end A283476

/-! ## A283476.P15048431658882667432

`filter[A005117(n+1), A323511(#)]`
-/

namespace A283476.P15048431658882667432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P15048431658882667432

namespace A283476

/-- `filter[A005117(n+1), A323511(#)]` -/
def P15048431658882667432.Spec : Prop :=
  ∀ n, P15048431658882667432.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P5659314642177202373

`filter[A348499(n+1), A323511(#)]`
-/

namespace A283476.P5659314642177202373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P5659314642177202373

namespace A283476

/-- `filter[A348499(n+1), A323511(#)]` -/
def P5659314642177202373.Spec : Prop :=
  ∀ n, P5659314642177202373.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P4390872947821251074

`filter[A348506(n+1), A323511(#)]`
-/

namespace A283476.P4390872947821251074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P4390872947821251074

namespace A283476

/-- `filter[A348506(n+1), A323511(#)]` -/
def P4390872947821251074.Spec : Prop :=
  ∀ n, P4390872947821251074.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P14287749598469675775

`record[A007913(n+1)*A323511(n+1)]`
-/

namespace A283476.P14287749598469675775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A323511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283476.P14287749598469675775

namespace A283476

/-- `record[A007913(n+1)*A323511(n+1)]` -/
def P14287749598469675775.Spec : Prop :=
  ∀ n, P14287749598469675775.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P15633420410454786971

`filter[A367801(n+1), A323511(#)]`
-/

namespace A283476.P15633420410454786971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P15633420410454786971

namespace A283476

/-- `filter[A367801(n+1), A323511(#)]` -/
def P15633420410454786971.Spec : Prop :=
  ∀ n, P15633420410454786971.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P5815256015651704623

`record[A055231(n+1)*A323511(n+1)]`
-/

namespace A283476.P5815256015651704623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A323511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283476.P5815256015651704623

namespace A283476

/-- `record[A055231(n+1)*A323511(n+1)]` -/
def P5815256015651704623.Spec : Prop :=
  ∀ n, P5815256015651704623.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P17593075664391325980

`filter[A064594(n+1), A323511(#)]`
-/

namespace A283476.P17593075664391325980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P17593075664391325980

namespace A283476

/-- `filter[A064594(n+1), A323511(#)]` -/
def P17593075664391325980.Spec : Prop :=
  ∀ n, P17593075664391325980.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P1049907884244775282

`filter[A167207(n+1), A323511(#)]`
-/

namespace A283476.P1049907884244775282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P1049907884244775282

namespace A283476

/-- `filter[A167207(n+1), A323511(#)]` -/
def P1049907884244775282.Spec : Prop :=
  ∀ n, P1049907884244775282.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P11709539186445345373

`filter[A303554(n+1), A323511(#)]`
-/

namespace A283476.P11709539186445345373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P11709539186445345373

namespace A283476

/-- `filter[A303554(n+1), A323511(#)]` -/
def P11709539186445345373.Spec : Prop :=
  ∀ n, P11709539186445345373.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P12890207675870546798

`filter[A072774(n+1), A323511(#)]`
-/

namespace A283476.P12890207675870546798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P12890207675870546798

namespace A283476

/-- `filter[A072774(n+1), A323511(#)]` -/
def P12890207675870546798.Spec : Prop :=
  ∀ n, P12890207675870546798.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P3911353354566606337

`filter[A210490(n+1), A323511(#)]`
-/

namespace A283476.P3911353354566606337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P3911353354566606337

namespace A283476

/-- `filter[A210490(n+1), A323511(#)]` -/
def P3911353354566606337.Spec : Prop :=
  ∀ n, P3911353354566606337.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P5747643700613105414

`filter[A304449(n+1), A323511(#)]`
-/

namespace A283476.P5747643700613105414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P5747643700613105414

namespace A283476

/-- `filter[A304449(n+1), A323511(#)]` -/
def P5747643700613105414.Spec : Prop :=
  ∀ n, P5747643700613105414.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P584616536958154683

`filter[A348961(n+1), A323511(#)]`
-/

namespace A283476.P584616536958154683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P584616536958154683

namespace A283476

/-- `filter[A348961(n+1), A323511(#)]` -/
def P584616536958154683.Spec : Prop :=
  ∀ n, P584616536958154683.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P15599705040949580823

`filter[A317101(n+1), A323511(#)]`
-/

namespace A283476.P15599705040949580823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P15599705040949580823

namespace A283476

/-- `filter[A317101(n+1), A323511(#)]` -/
def P15599705040949580823.Spec : Prop :=
  ∀ n, P15599705040949580823.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P17146537067428303968

`filter[A065200(n+1), A323511(#)]`
-/

namespace A283476.P17146537067428303968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P17146537067428303968

namespace A283476

/-- `filter[A065200(n+1), A323511(#)]` -/
def P17146537067428303968.Spec : Prop :=
  ∀ n, P17146537067428303968.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P16900207663312919167

`filter[A390440(n+1), A323511(#)]`
-/

namespace A283476.P16900207663312919167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P16900207663312919167

namespace A283476

/-- `filter[A390440(n+1), A323511(#)]` -/
def P16900207663312919167.Spec : Prop :=
  ∀ n, P16900207663312919167.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P4368133857159743426

`filter[A304678(n+1), A323511(#)]`
-/

namespace A283476.P4368133857159743426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P4368133857159743426

namespace A283476

/-- `filter[A304678(n+1), A323511(#)]` -/
def P4368133857159743426.Spec : Prop :=
  ∀ n, P4368133857159743426.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P15204842452066578865

`filter[A193304(n+1), A323511(#)]`
-/

namespace A283476.P15204842452066578865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P15204842452066578865

namespace A283476

/-- `filter[A193304(n+1), A323511(#)]` -/
def P15204842452066578865.Spec : Prop :=
  ∀ n, P15204842452066578865.a n = A283476 (n + 1)

end A283476

/-! ## A283476.P15760357432147641028

`filter[A336223(n+1), A323511(#)]`
-/

namespace A283476.P15760357432147641028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A283476.P15760357432147641028

namespace A283476

/-- `filter[A336223(n+1), A323511(#)]` -/
def P15760357432147641028.Spec : Prop :=
  ∀ n, P15760357432147641028.a n = A283476 (n + 1)

end A283476

/-!
# A283477: If 2n = 2^e1 + 2^e2 + ... + 2^ek [e1 .. ek distinct], then a(n) = A002110(e1) * A002110(e2) * ... * A002110(ek).

The programs for A283477, there is no canonical definition to state claims against.
-/

/-! ## A283477.P17725201026276000407

`A108951(A019565(n))`
-/

namespace A283477.P17725201026276000407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A019565 n).toNat

end

end A283477.P17725201026276000407

/-! ## A283477.P7962466373968228758

`a(A004526(n))*A019565(n)` with `a(0)=1`
-/

namespace A283477.P7962466373968228758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A019565 n

end

end A283477.P7962466373968228758

/-! ## A283477.P5215382132215859161

`a(A123108(n))*A019565(n)` with `a(0)=1`
-/

namespace A283477.P5215382132215859161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * A019565 n

end

end A283477.P5215382132215859161

/-! ## A283477.P17394978938334996773

`∏{p}[A019565(n), A034386(#)]`
-/

namespace A283477.P17394978938334996773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034386 p

end

end A283477.P17394978938334996773

/-! ## A283477.P9769143707207505720

`∏{p}[A019565(n), A226532(#)]`
-/

namespace A283477.P9769143707207505720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A226532 p

end

end A283477.P9769143707207505720

/-! ## A283477.P16167584111679965450

`∏{p}[A019565(n), A181821(A181821(#))]`
-/

namespace A283477.P16167584111679965450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181821 (A181821 p).toNat

end

end A283477.P16167584111679965450

/-! ## A283477.P4274968694137718321

`A329886(A048678(n))`
-/

namespace A283477.P4274968694137718321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (A048678 n).toNat

end

end A283477.P4274968694137718321

/-!
# A283478: a(n) = A097248(A108951(n)).

The programs for A283478, there is no canonical definition to state claims against.
-/

/-! ## A283478.P1548588727313975542

`A097248(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283478.P1548588727313975542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A108951 (n + 1)).toNat

end

end A283478.P1548588727313975542

/-! ## A283478.P12854559322066933535

`A019565(A293447(n+1))`
-/

namespace A283478.P12854559322066933535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A293447 (n + 1)).toNat

end

end A283478.P12854559322066933535

/-! ## A283478.P8021008626827030426

`A339809(A293447(n+1))+A007318(∑[n])`
-/

namespace A283478.P8021008626827030426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A293447 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283478.P8021008626827030426

/-! ## A283478.P12574945540420843070

`A019565(2*A048675(n+1)-A001222(n+1))`
-/

namespace A283478.P12574945540420843070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * A048675 (n + 1) - A001222 (n + 1)).toNat

end

end A283478.P12574945540420843070

/-! ## A283478.P4430554213176902897

`A339809(A293447(n+1))+A014963(8*n+10)`
-/

namespace A283478.P4430554213176902897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A293447 (n + 1)).toNat + A014963 (8 * n + 10)

end

end A283478.P4430554213176902897

/-!
# A283479: First differences of A283474.

The programs for A283479, the canonical program `A283479.P8552650789036169488` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283479 has offset 1).

The definition of A283479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283479.P8552650789036169488

`A283474(n+1)-A283474(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283479

/-- `A283474(n+1)-A283474(n)` -/
def P8552650789036169488.Spec : Prop :=
  ∀ n, P8552650789036169488.a n = A283479 (n + 1)

theorem P8552650789036169488.correct : P8552650789036169488.Spec := by
  intro n
  simp only [A283479, Nat.add_sub_cancel]

end A283479

/-! ## A283479.P9458400494979520689

`A283474(A284013(n+1)+floor(acot(n)))`
-/

namespace A283479.P9458400494979520689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 (A284013 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A283479.P9458400494979520689

namespace A283479

/-- `A283474(A284013(n+1)+floor(acot(n)))` -/
def P9458400494979520689.Spec : Prop :=
  ∀ n, P9458400494979520689.a n = A283479 (n + 1)

end A283479

/-! ## A283479.P9096948552161844638

`Δ[A283474(n)]`
-/

namespace A283479.P9096948552161844638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283479.P9096948552161844638

namespace A283479

/-- `Δ[A283474(n)]` -/
def P9096948552161844638.Spec : Prop :=
  ∀ n, P9096948552161844638.a n = A283479 (n + 1)

theorem P9096948552161844638.correct : P9096948552161844638.Spec := by
  intro n
  simp only [A283479, Nat.add_sub_cancel, A283479.P9096948552161844638.f1, A283479.P9096948552161844638.a, A283479.P8552650789036169488.a, SequenceMachineLib.memo_apply]

end A283479

/-! ## A283479.P3743767946449994431

`record[A283474(abs(1-n))]-A283474(n)`
-/

namespace A283479.P3743767946449994431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A283474 n

end

end A283479.P3743767946449994431

namespace A283479

/-- `record[A283474(abs(1-n))]-A283474(n)` -/
def P3743767946449994431.Spec : Prop :=
  ∀ n, P3743767946449994431.a n = A283479 (n + 1)

end A283479

/-! ## A283479.P13113733694898688575

`A283474(n+1)+A283474(n)/A057428(n+1)`
-/

namespace A283479.P13113733694898688575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283474 (n + 1) : ℚ) + (A283474 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A283479.P13113733694898688575

namespace A283479

/-- `A283474(n+1)+A283474(n)/A057428(n+1)` -/
def P13113733694898688575.Spec : Prop :=
  ∀ n, P13113733694898688575.a n = (A283479 (n + 1) : ℚ)

theorem P13113733694898688575.correct : P13113733694898688575.Spec := by
  intro n
  simp only [A283479, Nat.add_sub_cancel, A283479.P13113733694898688575.a, A283479.P8552650789036169488.a, A057428, A057428.P2999489532230392221.a, A283474, A283474.P6694215091919527259.a, A002487, A002487.P6236436194084017932.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283479

/-!
# A283480: Partial sums of A095901.

The programs for A283480, the canonical program `A283480.P8882450698688990884` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283480 has offset 1).

The definition of A283480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283480.P8882450698688990884

`A095901(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A283480

/-- `A095901(n+1)+a(n-1)` -/
def P8882450698688990884.Spec : Prop :=
  ∀ n, P8882450698688990884.a n = A283480 (n + 1)

theorem P8882450698688990884.correct : P8882450698688990884.Spec := by
  intro n
  simp only [A283480, Nat.add_sub_cancel]

end A283480

/-! ## A283480.P446411479583086570

`∑[A095901(n+1)]`
-/

namespace A283480.P446411479583086570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P446411479583086570

namespace A283480

/-- `∑[A095901(n+1)]` -/
def P446411479583086570.Spec : Prop :=
  ∀ n, P446411479583086570.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P5791505008014798676

`∑[A004001(n+1)%2]`
-/

namespace A283480.P5791505008014798676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004001 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P5791505008014798676

namespace A283480

/-- `∑[A004001(n+1)%2]` -/
def P5791505008014798676.Spec : Prop :=
  ∀ n, P5791505008014798676.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P16872146500042157490

`∑[A283470(n+1)%2]`
-/

namespace A283480.P16872146500042157490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283470 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P16872146500042157490

namespace A283480

/-- `∑[A283470(n+1)%2]` -/
def P16872146500042157490.Spec : Prop :=
  ∀ n, P16872146500042157490.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P14342700294526731155

`∑[and(1, A283468(n+1))]`
-/

namespace A283480.P14342700294526731155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A283468 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P14342700294526731155

namespace A283480

/-- `∑[and(1, A283468(n+1))]` -/
def P14342700294526731155.Spec : Prop :=
  ∀ n, P14342700294526731155.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P17935274190854449220

`∑[A000035(A004001(n+1))]`
-/

namespace A283480.P17935274190854449220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P17935274190854449220

namespace A283480

/-- `∑[A000035(A004001(n+1))]` -/
def P17935274190854449220.Spec : Prop :=
  ∀ n, P17935274190854449220.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P2148483225597672183

`∑[(A284019(n+1)+A005185(n+1))%2]`
-/

namespace A283480.P2148483225597672183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284019 (n + 1) + A005185 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P2148483225597672183

namespace A283480

/-- `∑[(A284019(n+1)+A005185(n+1))%2]` -/
def P2148483225597672183.Spec : Prop :=
  ∀ n, P2148483225597672183.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P15439328397627434617

`∑[∑[A267111(n+1)]%2]`
-/

namespace A283480.P15439328397627434617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P15439328397627434617

namespace A283480

/-- `∑[∑[A267111(n+1)]%2]` -/
def P15439328397627434617.Spec : Prop :=
  ∀ n, P15439328397627434617.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P11194651450590226594

`∑[and(A004001(n+1), A080267(n+1))]`
-/

namespace A283480.P11194651450590226594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A080267 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P11194651450590226594

namespace A283480

/-- `∑[and(A004001(n+1), A080267(n+1))]` -/
def P11194651450590226594.Spec : Prop :=
  ∀ n, P11194651450590226594.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P7219567901705948541

`∑[and(A004001(n+1), A048477(n))]`
-/

namespace A283480.P7219567901705948541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A048477 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P7219567901705948541

namespace A283480

/-- `∑[and(A004001(n+1), A048477(n))]` -/
def P7219567901705948541.Spec : Prop :=
  ∀ n, P7219567901705948541.a n = A283480 (n + 1)

end A283480

/-! ## A283480.P5190865388813219626

`∑[A000035(∑[A267111(n+1)])]`
-/

namespace A283480.P5190865388813219626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283480.P5190865388813219626

namespace A283480

/-- `∑[A000035(∑[A267111(n+1)])]` -/
def P5190865388813219626.Spec : Prop :=
  ∀ n, P5190865388813219626.a n = A283480 (n + 1)

end A283480

/-!
# A283481: Positions of odd terms in A004001.

The programs for A283481, there is no canonical definition to state claims against.
-/

/-! ## A283481.P3653135562069336921

`eq[1, A283470(n+1)%2]+1`
-/

namespace A283481.P3653135562069336921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283470 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283481.P3653135562069336921

/-! ## A283481.P11513255429718848925

`eq[0, A095767(n+1)]+1`
-/

namespace A283481.P11513255429718848925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283481.P11513255429718848925

/-! ## A283481.P9436589573004519258

`lt[0, A095901(n+1)]+1`
-/

namespace A283481.P9436589573004519258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283481.P9436589573004519258

/-! ## A283481.P8357584255258930503

`lt[gcd(2, A004001(n+1)), 2]+1`
-/

namespace A283481.P8357584255258930503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A004001 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A283481.P8357584255258930503

/-! ## A283481.P409551091840167650

`eq[1, A000035(A004001(n+1))]+1`
-/

namespace A283481.P409551091840167650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004001 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283481.P409551091840167650

/-! ## A283481.P18271171212696291333

`record[n+1-A237420(A004001(n+1)+2)]`
-/

namespace A283481.P18271171212696291333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A237420 (A004001 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283481.P18271171212696291333

/-! ## A283481.P14058595154149932309

`lt[1, A110164(A004001(n+1)+1)]+1`
-/

namespace A283481.P14058595154149932309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 (A004001 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283481.P14058595154149932309

/-!
# A283482: Positions of even terms in A004001.

The programs for A283482, the canonical program `A283482.P13946192901551077010` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283482 has offset 1).

The definition of A283482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5068 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283482.P2718589406104905695

`eq[1, A006519(A283470(n+1)+1)]+1`
-/

namespace A283482.P2718589406104905695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A283470 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283482.P2718589406104905695

namespace A283482

/-- `eq[1, A006519(A283470(n+1)+1)]+1` -/
def P2718589406104905695.Spec : Prop :=
  ∀ n, (P2718589406104905695.a n : ℤ) = A283482 (n + 1)

end A283482

/-! ## A283482.P13946192901551077010

`eq[0, A095901(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A283482

/-- `eq[0, A095901(n+1)]+1` -/
def P13946192901551077010.Spec : Prop :=
  ∀ n, (P13946192901551077010.a n : ℤ) = A283482 (n + 1)

theorem P13946192901551077010.correct : P13946192901551077010.Spec := by
  intro n
  simp only [A283482, Nat.add_sub_cancel]

end A283482

/-! ## A283482.P11418072750742281287

`lt[A004001(n+1)%2, 1]+1`
-/

namespace A283482.P11418072750742281287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004001 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283482.P11418072750742281287

namespace A283482

/-- `lt[A004001(n+1)%2, 1]+1` -/
def P11418072750742281287.Spec : Prop :=
  ∀ n, (P11418072750742281287.a n : ℤ) = A283482 (n + 1)

end A283482

/-! ## A283482.P17222699040594633898

`eq[1, A102419(A004001(n+1))]+1`
-/

namespace A283482.P17222699040594633898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A004001 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283482.P17222699040594633898

namespace A283482

/-- `eq[1, A102419(A004001(n+1))]+1` -/
def P17222699040594633898.Spec : Prop :=
  ∀ n, (P17222699040594633898.a n : ℤ) = A283482 (n + 1)

end A283482

/-! ## A283482.P13005723310770478650

`lt[2, A020639(A004001(n+1)+1)]+1`
-/

namespace A283482.P13005723310770478650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004001 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283482.P13005723310770478650

namespace A283482

/-- `lt[2, A020639(A004001(n+1)+1)]+1` -/
def P13005723310770478650.Spec : Prop :=
  ∀ n, (P13005723310770478650.a n : ℤ) = A283482 (n + 1)

end A283482

/-! ## A283482.P6379747850328006537

`eq[1, A282723(Δ[A283480(n+1)]+1)]+2`
-/

namespace A283482.P6379747850328006537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282723 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A283482.P6379747850328006537

namespace A283482

/-- `eq[1, A282723(Δ[A283480(n+1)]+1)]+2` -/
def P6379747850328006537.Spec : Prop :=
  ∀ n, (P6379747850328006537.a n : ℤ) = A283482 (n + 1)

end A283482

/-! ## A283482.P3292648327905226597

`eq[1, A283480(Δ[A283480(n+1)]+1)]+2`
-/

namespace A283482.P3292648327905226597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283480 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A283482.P3292648327905226597

namespace A283482

/-- `eq[1, A283480(Δ[A283480(n+1)]+1)]+2` -/
def P3292648327905226597.Spec : Prop :=
  ∀ n, (P3292648327905226597.a n : ℤ) = A283482 (n + 1)

end A283482

/-!
# A283483: Sums of distinct nonzero terms of A003462: a(n) = Sum_{k>=0} A030308(n,k)*A003462(1+k).

The programs for A283483, there is no canonical definition to state claims against.
-/

/-! ## A283483.P3928601532049825512

`val(n, 2)+2*a(n-1)+1-a(and(n, n-1))` with `a(0)=0`
-/

namespace A283483.P3928601532049825512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 2 : ℤ) + (2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A283483.P3928601532049825512

/-! ## A283483.P4536074976802885847

`A005836(n+1)+a(floor(n/2))` with `a(0)=0`
-/

namespace A283483.P4536074976802885847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005836 (n + 1) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A283483.P4536074976802885847

/-! ## A283483.P7611832344688798071

`A000120(n)+3*a(floor(n/2))` with `a(0)=0`
-/

namespace A283483.P7611832344688798071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 n + 3 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A283483.P7611832344688798071

/-! ## A283483.P3957124581190211268

`A189660(∑[3*a(∑[n]%n)-3])` with `a(0)=2`
-/

namespace A283483.P3957124581190211268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283483.P3957124581190211268

/-! ## A283483.P11045193243050057986

`a(floor(n/2))+A005823(n+1)/2` with `a(0)=0`
-/

namespace A283483.P11045193243050057986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (A005823 (n + 1) : ℚ) / 2

end

end A283483.P11045193243050057986

/-! ## A283483.P7905013050058922723

`A004128((∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A283483.P7905013050058922723
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)).toNat

end

end A283483.P7905013050058922723

/-! ## A283483.P5546571775556238306

`A090618(3*(∑[and(n, -n)^log2(3)]+n))`
-/

namespace A283483.P5546571775556238306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090618 (SequenceMachineLib.roundAway (3 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)))).toNat

end

end A283483.P5546571775556238306

/-! ## A283483.P4121753109774240173

`a(floor(n/2))+A003278(n+1)-1` with `a(0)=0, a(1)=1`
-/

namespace A283483.P4121753109774240173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (A003278 (n + 1) - 1)

end

end A283483.P4121753109774240173

/-! ## A283483.P17704160856640580919

`A054861(3*(∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A283483.P17704160856640580919
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (SequenceMachineLib.roundAway (3 * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2))).toNat

end

end A283483.P17704160856640580919

/-! ## A283483.P16642879884134566658

`A054898(A062548(n))`
-/

namespace A283483.P16642879884134566658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (A062548 n).toNat

end

end A283483.P16642879884134566658

/-!
# A283484: Odd bisection of A283983; square root of the largest square dividing A277324.

The programs for A283484, there is no canonical definition to state claims against.
-/

/-! ## A283484.P8462918369021772173

`A283983(2*n+1)`
-/

namespace A283484.P8462918369021772173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (2 * n + 1)

end

end A283484.P8462918369021772173

/-! ## A283484.P9545449088643795971

`A283983(n+1+n)/A283983(A048896(n))`
-/

namespace A283484.P9545449088643795971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283983 (n + 1 + n) : ℚ) / (A283983 (A048896 n).toNat : ℚ)

end

end A283484.P9545449088643795971

/-! ## A283484.P6143089663156426142

`sqrt(A283989(2*n+1))`
-/

namespace A283484.P6143089663156426142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283989 (2 * n + 1) : ℝ)

end

end A283484.P6143089663156426142

/-! ## A283484.P9270805676218831327

`sqrt(A260443(2*n+1)/A277330(2*n+1))`
-/

namespace A283484.P9270805676218831327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A260443 (2 * n + 1) : ℚ) / (A277330 (2 * n + 1) : ℚ) : ℝ)

end

end A283484.P9270805676218831327

/-! ## A283484.P17702418571819707060

`A283976(A283989(Δ[n²]))`
-/

namespace A283484.P17702418571819707060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A283989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A283484.P17702418571819707060

/-!
# A283486: Number of k such that sigma(k) = 2n where sigma(m) = A000203(m) is the sum of the divisors of m.

The programs for A283486, there is no canonical definition to state claims against.
-/

/-! ## A283486.P12591662647291795410

`A054973(2*(n+1))`
-/

namespace A283486.P12591662647291795410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (2 * (n + 1))

end

end A283486.P12591662647291795410

/-! ## A283486.P6828896628957382238

`A054973(Δ[A002378(n)])%89`
-/

namespace A283486.P6828896628957382238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054973 (f1 (n + 1) - f1 n).toNat) 89

end

end A283486.P6828896628957382238

/-! ## A283486.P4708361817809825753

`A000194(A054973(n+2+n)²)`
-/

namespace A283486.P4708361817809825753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A054973 (n + 2 + n) ^ 2).toNat

end

end A283486.P4708361817809825753

/-! ## A283486.P15029754578019535359

`A000196(A054973(n+2+n)²)`
-/

namespace A283486.P15029754578019535359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A054973 (n + 2 + n) ^ 2).toNat

end

end A283486.P15029754578019535359

/-! ## A283486.P9685933379372609825

`A054973(n+2+n)%A005564(n+3)`
-/

namespace A283486.P9685933379372609825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054973 (n + 2 + n)) (A005564 (n + 3))

end

end A283486.P9685933379372609825

/-! ## A283486.P3675188465479943316

`A216200(2*n+1)+1-A216200(2*(n+1))`
-/

namespace A283486.P3675188465479943316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216200 (2 * n + 1) + (1 - A216200 (2 * (n + 1)))

end

end A283486.P3675188465479943316

/-! ## A283486.P15140844682373176973

`A202275(2*(n+1))+A202276(2*(n+1))-A074753(2*(n+1))`
-/

namespace A283486.P15140844682373176973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202275 (2 * (n + 1)) + (A202276 (2 * (n + 1)) - A074753 (2 * (n + 1)))

end

end A283486.P15140844682373176973

/-! ## A283486.P778029552347992269

`A074753(2*n+3)-A074753(2*(n+1))`
-/

namespace A283486.P778029552347992269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (2 * n + 3) - A074753 (2 * (n + 1))

end

end A283486.P778029552347992269

/-!
# A283488: Number of n X 2 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283488, there is no canonical definition to state claims against.
-/

/-! ## A283488.P9104910231499354037

`A283494(∑[n+1]+2)`
-/

namespace A283488.P9104910231499354037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283488.P9104910231499354037

/-! ## A283488.P10414298403170928929

`lcm(2, A283494(A000096(n+1)))`
-/

namespace A283488.P10414298403170928929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283494 (A000096 (n + 1)).toNat)

end

end A283488.P10414298403170928929

/-! ## A283488.P9906798516705458847

`A211666(n+1)*A283494(A000096(n+1))`
-/

namespace A283488.P9906798516705458847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) * A283494 (A000096 (n + 1)).toNat

end

end A283488.P9906798516705458847

/-! ## A283488.P14024089026859516687

`A283494(A000096(n+1))/A211666(n+2)`
-/

namespace A283488.P14024089026859516687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283494 (A000096 (n + 1)).toNat : ℚ) / (A211666 (n + 2) : ℚ)

end

end A283488.P14024089026859516687

/-! ## A283488.P9893047617785253798

`and(A127581(2*n), A283494(A000096(n+1)))`
-/

namespace A283488.P9893047617785253798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127581 (2 * n)) (A283494 (A000096 (n + 1)).toNat)

end

end A283488.P9893047617785253798

/-!
# A283489: Number of nX3 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283489, there is no canonical definition to state claims against.
-/

/-! ## A283489.P3210772847444669800

`A283494(∑[n+2]+4)`
-/

namespace A283489.P3210772847444669800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283489.P3210772847444669800

/-! ## A283489.P6006321626267447587

`record[A283494(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A283489.P6006321626267447587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283489.P6006321626267447587

/-! ## A283489.P4044994410147988118

`A057427(n)*A283494(A167614(n+1))`
-/

namespace A283489.P4044994410147988118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283494 (A167614 (n + 1)).toNat

end

end A283489.P4044994410147988118

/-! ## A283489.P10365836212120855818

`A283494(A167614(n+1))%A001020(n)`
-/

namespace A283489.P10365836212120855818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283494 (A167614 (n + 1)).toNat) (A001020 n)

end

end A283489.P10365836212120855818

/-! ## A283489.P14996948775315572886

`lcm(A000034(n), A283494(A167614(n+1)))`
-/

namespace A283489.P14996948775315572886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A283494 (A167614 (n + 1)).toNat)

end

end A283489.P14996948775315572886

/-!
# A283490: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283490, there is no canonical definition to state claims against.
-/

/-! ## A283490.P6122497677455852008

`A283494(A374004(n+1))`
-/

namespace A283490.P6122497677455852008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A374004 (n + 1)).toNat

end

end A283490.P6122497677455852008

/-! ## A283490.P3212435437443246397

`A283494(A141214(n)+7)`
-/

namespace A283490.P3212435437443246397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A141214 n + 7).toNat

end

end A283490.P3212435437443246397

/-! ## A283490.P16983042803650200086

`A283494(A052905(n)+9)`
-/

namespace A283490.P16983042803650200086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A052905 n + 9).toNat

end

end A283490.P16983042803650200086

/-! ## A283490.P15969882445193735226

`A283494(A055999(n)+10)`
-/

namespace A283490.P15969882445193735226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A055999 n + 10).toNat

end

end A283490.P15969882445193735226

/-! ## A283490.P9156871897195885771

`A283494(A167614(n+2)+1)`
-/

namespace A283490.P9156871897195885771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A167614 (n + 2) + 1).toNat

end

end A283490.P9156871897195885771

/-!
# A283491: Number of nX5 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283491, there is no canonical definition to state claims against.
-/

/-! ## A283491.P12381564370285627735

`A283494(A374005(n+1))`
-/

namespace A283491.P12381564370285627735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A374005 (n + 1)).toNat

end

end A283491.P12381564370285627735

/-! ## A283491.P9395165568050629195

`A283494(A056000(n)+15)`
-/

namespace A283491.P9395165568050629195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A056000 n + 15).toNat

end

end A283491.P9395165568050629195

/-! ## A283491.P10650807498944570960

`A283494(eq[6, A131818(n+1)])`
-/

namespace A283491.P10650807498944570960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283491.P10650807498944570960

/-! ## A283491.P17307407991929894354

`A283494(eq[4, A054123(n)])`
-/

namespace A283491.P17307407991929894354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283491.P17307407991929894354

/-! ## A283491.P10969087367138207720

`A283494(eq[4, A193592(n)])`
-/

namespace A283491.P10969087367138207720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283491.P10969087367138207720

/-!
# A283492: Number of nX6 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283492, there is no canonical definition to state claims against.
-/

/-! ## A283492.P12588269054291260576

`A283494(A374007(n+1))`
-/

namespace A283492.P12588269054291260576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A374007 (n + 1)).toNat

end

end A283492.P12588269054291260576

/-! ## A283492.P660378562791313672

`A283494(eq[7, A131818(n+1)])`
-/

namespace A283492.P660378562791313672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283492.P660378562791313672

/-! ## A283492.P1758239446790838393

`A283494(A052905(n+3))`
-/

namespace A283492.P1758239446790838393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A052905 (n + 3)).toNat

end

end A283492.P1758239446790838393

/-! ## A283492.P14407959589502005019

`A283494(eq[3, A219347(n)])`
-/

namespace A283492.P14407959589502005019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283492.P14407959589502005019

/-! ## A283492.P4935447562149159356

`A283494(eq[5, A193592(n)])`
-/

namespace A283492.P4935447562149159356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283492.P4935447562149159356

/-!
# A283493: Number of nX7 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283493, there is no canonical definition to state claims against.
-/

/-! ## A283493.P15715713680531371641

`A283494(A374008(n+1))`
-/

namespace A283493.P15715713680531371641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (A374008 (n + 1)).toNat

end

end A283493.P15715713680531371641

/-! ## A283493.P2241151112140238869

`A283494(eq[8, A131818(n+1)])`
-/

namespace A283493.P2241151112140238869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283493.P2241151112140238869

/-! ## A283493.P3794789441005665280

`A283494(eq[4, A219347(n)])`
-/

namespace A283493.P3794789441005665280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283493.P3794789441005665280

/-! ## A283493.P11505778896281663850

`A283494(eq[5, A332954(n)])`
-/

namespace A283493.P11505778896281663850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283493.P11505778896281663850

/-! ## A283493.P11937909555272599807

`A283494(eq[6, A193592(n)])`
-/

namespace A283493.P11937909555272599807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283493.P11937909555272599807

/-!
# A283494: T(n,k) = Number of n X k 0..1 arrays with no 1 equal to more than three of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283494, there is no canonical definition to state claims against.
-/

/-! ## A283494.P17817841314118840711

`A241411(A001263(n+1))%A017029(n)`
-/

namespace A283494.P17817841314118840711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241411 (A001263 (n + 1)).toNat) (A017029 n)

end

end A283494.P17817841314118840711

/-! ## A283494.P1554387346545260415

`A048277(A273096(n)+1)`
-/

namespace A283494.P1554387346545260415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048277 (A273096 n + 1).toNat

end

end A283494.P1554387346545260415

/-! ## A283494.P11834040843088482180

`A241410(lcm(A241184(n), A241341(n)))`
-/

namespace A283494.P11834040843088482180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241410 (Int.lcm (A241184 n) (A241341 n))

end

end A283494.P11834040843088482180

/-! ## A283494.P14711640865435347503

`A053188(A080498(n+1))*A325820(n)`
-/

namespace A283494.P14711640865435347503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A080498 (n + 1)).toNat * A325820 n

end

end A283494.P14711640865435347503

/-! ## A283494.P3576718773315719325

`∑[A008590(A256629(n+1))]%A298854(n)`
-/

namespace A283494.P3576718773315719325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A256629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A298854 n)

end

end A283494.P3576718773315719325

/-!
# A283495: Smallest k such that there is a number whose divisors sum to k*n.

The programs for A283495, there is no canonical definition to state claims against.
-/

/-! ## A283495.P16628381801798595130

`A085961(n+1)/(n+1)`
-/

namespace A283495.P16628381801798595130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085961 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A283495.P16628381801798595130

/-! ## A283495.P7857254073494736305

`∑{d}[A070982(n+1), #/(n+1)]`
-/

namespace A283495.P7857254073494736305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (n + 1 : ℚ)

end

end A283495.P7857254073494736305

/-! ## A283495.P583573732744576033

`A000203(A070982(n+1))/(n+1)`
-/

namespace A283495.P583573732744576033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A070982 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A283495.P583573732744576033

/-! ## A283495.P15451157699063433337

`(7*A085961(n+1))%A017053(n)`
-/

namespace A283495.P15451157699063433337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A085961 (n + 1)) (A017053 n)

end

end A283495.P15451157699063433337

/-! ## A283495.P16733467678109198361

`A118235(A085961(n+1)+A000217(n))`
-/

namespace A283495.P16733467678109198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (A085961 (n + 1) + A000217 n).toNat

end

end A283495.P16733467678109198361

/-! ## A283495.P13854867939239635232

`A008486(A085961(n+1))%A016789(n)`
-/

namespace A283495.P13854867939239635232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A085961 (n + 1)).toNat) (A016789 n)

end

end A283495.P13854867939239635232

/-! ## A283495.P2678504968197502220

`A272027(A070982(n+1))%A016789(n)`
-/

namespace A283495.P2678504968197502220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272027 (A070982 (n + 1)).toNat) (A016789 n)

end

end A283495.P2678504968197502220

/-! ## A283495.P7273882793506847981

`A274535(A070982(n+1))%A016897(n)`
-/

namespace A283495.P7273882793506847981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274535 (A070982 (n + 1)).toNat) (A016897 n)

end

end A283495.P7273882793506847981

/-!
# A283497: Remainder when n is divided by A004074(n), or -1 if A004074(n) = 0.

The programs for A283497, there is no canonical definition to state claims against.
-/

/-! ## A283497.P5782621597308771576

`A280737(n+1)-A000007(A244173(n))`
-/

namespace A283497.P5782621597308771576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1) - A000007 (A244173 (n + 10)).toNat

end

end A283497.P5782621597308771576

/-! ## A283497.P6149352121680512266

`A087116(n)-A008966(A115205(n+1))`
-/

namespace A283497.P6149352121680512266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n - A008966 (A115205 (n + 1)).toNat

end

end A283497.P6149352121680512266

/-! ## A283497.P11282238635147490163

`A020951(n)-A249351(A011539(n+1))`
-/

namespace A283497.P11282238635147490163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n - A249351 (A011539 (n + 1)).toNat

end

end A283497.P11282238635147490163

/-! ## A283497.P2707908350706137898

`A020951(n)-A307430(A003179(n))`
-/

namespace A283497.P2707908350706137898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n - A307430 (A003179 n).toNat

end

end A283497.P2707908350706137898

/-! ## A283497.P17253185216039364113

`A168491(n)%A020639(A165745(n))`
-/

namespace A283497.P17253185216039364113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168491 n) (A020639 (A165745 n).toNat)

end

end A283497.P17253185216039364113

/-!
# A283498: a(n) = Sum_{d|n} d^(d+1).

The programs for A283498, there is no canonical definition to state claims against.
-/

/-! ## A283498.P11298674006317067837

`∑{d}[n+1, #^(#+1)]`
-/

namespace A283498.P11298674006317067837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (d + 1)

end

end A283498.P11298674006317067837

/-! ## A283498.P3688374458066044573

`record[∑{d}[n-1, #*#^#]]`
-/

namespace A283498.P3688374458066044573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d * d ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283498.P3688374458066044573

/-! ## A283498.P8559878421072622458

`A308704(∑[n+2])`
-/

namespace A283498.P8559878421072622458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283498.P8559878421072622458

/-! ## A283498.P6606763308106023016

`record[A308704(eq[1, A327618(n)])]`
-/

namespace A283498.P6606763308106023016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283498.P6606763308106023016

/-! ## A283498.P11049722972019354532

`record[gcd(A008290(n), A308704(n+1))]`
-/

namespace A283498.P11049722972019354532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A308704 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283498.P11049722972019354532

/-!
# A283499: Expansion of exp( Sum_{n>=1} -A283498(n)/n*x^n ) in powers of x.

The programs for A283499, there is no canonical definition to state claims against.
-/

/-! ## A283499.P7799440902157422927

`A283675(∑[n+2]-1)`
-/

namespace A283499.P7799440902157422927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A283499.P7799440902157422927

/-! ## A283499.P13388806353304679570

`A283675(A034856(n+1))+A025469(n)`
-/

namespace A283499.P13388806353304679570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (A034856 (n + 1)).toNat + A025469 n

end

end A283499.P13388806353304679570

/-! ## A283499.P6834264766106542643

`A283675(A034856(n+1))+A185284(n)`
-/

namespace A283499.P6834264766106542643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (A034856 (n + 1)).toNat + A185284 n

end

end A283499.P6834264766106542643

/-! ## A283499.P7732972824466978355

`or(A000007(n), A283675(A034856(n+1)))`
-/

namespace A283499.P7732972824466978355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A283675 (A034856 (n + 1)).toNat)

end

end A283499.P7732972824466978355

/-! ## A283499.P11352102272906396315

`or(A134975(n), A283675(A034856(n+1)))`
-/

namespace A283499.P11352102272906396315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134975 n) (A283675 (A034856 (n + 1)).toNat)

end

end A283499.P11352102272906396315

