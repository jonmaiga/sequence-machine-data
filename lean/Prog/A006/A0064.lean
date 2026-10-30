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
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A006400: Number of sensed simple planar maps with n edges and without vertices of degree 1.

The programs for A006400, there is no canonical definition to state claims against.
-/

/-! ## A006400.P12832082792096825459

`A324572(A032231(n))`
-/

namespace A006400.P12832082792096825459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A032231 n).toNat

end

end A006400.P12832082792096825459

/-! ## A006400.P13166470116235531705

`A347578(A036656(n+1))`
-/

namespace A006400.P13166470116235531705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A036656 (n + 1)).toNat

end

end A006400.P13166470116235531705

/-! ## A006400.P6339374066505799788

`A347578(A274937(n+1))`
-/

namespace A006400.P6339374066505799788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A274937 (n + 1)).toNat

end

end A006400.P6339374066505799788

/-! ## A006400.P8783490332423639856

`A166300(n)+A067168(A014224(n+1))`
-/

namespace A006400.P8783490332423639856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166300 n + A067168 ((A014224 (n + 1)).toNat + 10)

end

end A006400.P8783490332423639856

/-! ## A006400.P15664094565048573807

`A273190(A335454(n)+A258666(n+1))`
-/

namespace A006400.P15664094565048573807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A335454 n + A258666 (n + 1)).toNat

end

end A006400.P15664094565048573807

/-!
# A006401: Number of unsensed simple planar maps with n edges and without vertices of degree 1.

The programs for A006401, there is no canonical definition to state claims against.
-/

/-! ## A006401.P69682584730297122

`A352131(A249686(n+1)+A010672(n))`
-/

namespace A006401.P69682584730297122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A249686 (n + 1) + A010672 n).toNat

end

end A006401.P69682584730297122

/-!
# A006402: Number of sensed 2-connected (nonseparable) planar maps with n edges.

The programs for A006402, there is no canonical definition to state claims against.
-/

/-! ## A006402.P17666265126382368843

`A006403(n+2)+A006403(n+2)-A006444(n+2)`
-/

namespace A006402.P17666265126382368843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006403 (n + 2) + (A006403 (n + 2) - A006444 (n + 2))

end

end A006402.P17666265126382368843

/-! ## A006402.P2459098167695636815

`∩[A095381(n+1), A007865(n)]`
-/

namespace A006402.P2459098167695636815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006402.P2459098167695636815

/-! ## A006402.P5533829734643450880

`∩[A130714(n+1), A007865(n)]`
-/

namespace A006402.P5533829734643450880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006402.P5533829734643450880

/-!
# A006403: Number of unsensed 2-connected planar maps with n edges.

The programs for A006403, there is no canonical definition to state claims against.
-/

/-! ## A006403.P15056952338886376046

`eq[floor(n/4), A170953(A008284(n+2))]`
-/

namespace A006403.P15056952338886376046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170953 (A008284 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006403.P15056952338886376046

/-! ## A006403.P7112322251756979901

`A237348(A289802(n)+A009115(n))`
-/

namespace A006403.P7112322251756979901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237348 (A289802 n + A009115 n).toNat

end

end A006403.P7112322251756979901

/-! ## A006403.P18187609473711674440

`A134041(n)-A008683(A002293(n))`
-/

namespace A006403.P18187609473711674440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134041 n - A008683 (A002293 n).toNat

end

end A006403.P18187609473711674440

/-! ## A006403.P3331442347488191130

`A266641(eq[A109672(n), A109692(n)])`
-/

namespace A006403.P3331442347488191130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006403.P3331442347488191130

/-!
# A006405: Number of unsensed 2-connected maps with n edges and without faces of degree 2.

The programs for A006405, there is no canonical definition to state claims against.
-/

/-! ## A006405.P15044145564307889016

`ceil(Δ[sqrt(A243785(n+2))])`
-/

namespace A006405.P15044145564307889016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243785 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A006405.P15044145564307889016

/-! ## A006405.P8357519332220611226

`A383533(A000217(n))+A094076(n+1)`
-/

namespace A006405.P8357519332220611226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383533 (A000217 n).toNat + A094076 (n + 1)

end

end A006405.P8357519332220611226

/-! ## A006405.P4802692490713764798

`A035377(A023193(n+4))+A023193(A145268(n))`
-/

namespace A006405.P4802692490713764798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A023193 (n + 4)).toNat + A023193 (A145268 n).toNat

end

end A006405.P4802692490713764798

/-!
# A006406: Number of sensed 2-connected simple planar maps with n edges.

The programs for A006406, there is no canonical definition to state claims against.
-/

/-! ## A006406.P13492847583147460973

`A023990(A376803(n))`
-/

namespace A006406.P13492847583147460973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (A376803 n).toNat

end

end A006406.P13492847583147460973

/-! ## A006406.P7038011480057228846

`A049456(A003242(n)*A085809(n+1))`
-/

namespace A006406.P7038011480057228846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A003242 n * A085809 (n + 1)).toNat

end

end A006406.P7038011480057228846

/-! ## A006406.P7240114774663381714

`A008618(A003239(n)*A343311(n+1))`
-/

namespace A006406.P7240114774663381714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A003239 n * A343311 (n + 1)).toNat

end

end A006406.P7240114774663381714

/-!
# A006407: Number of unsensed 2-connected simple planar maps with n edges.

The programs for A006407, there is no canonical definition to state claims against.
-/

/-! ## A006407.P10769236273064239135

`A112325(A176025(n))`
-/

namespace A006407.P10769236273064239135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A176025 n).toNat

end

end A006407.P10769236273064239135

/-! ## A006407.P6848135960359036581

`A112325(A190270(n))`
-/

namespace A006407.P6848135960359036581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A190270 n).toNat

end

end A006407.P6848135960359036581

/-! ## A006407.P3643837508455220420

`A024417(A148463(n)+1)`
-/

namespace A006407.P3643837508455220420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148463 n + 1).toNat

end

end A006407.P3643837508455220420

/-! ## A006407.P9819005923188354294

`A024417(or(1, A148463(n)))`
-/

namespace A006407.P9819005923188354294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor 1 (A148463 n)).toNat

end

end A006407.P9819005923188354294

/-!
# A006408: Number of nonseparable rooted toroidal maps with n + 3 edges and n + 1 vertices.

The programs for A006408, the canonical program `A006408.P6058693925023134167` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006408 has offset 2).

The definition of A006408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006408.P10251172893792102828

`ogf((4+11x+x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A006408.P10251172893792102828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 11, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A006408.P10251172893792102828

namespace A006408

/-- `ogf((4+11x+x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10251172893792102828.Spec : Prop :=
  ∀ n, P10251172893792102828.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P7831748133123946561

`C(n+4, 4)*(8*(n+2)²+17*(n+2)-6)/15`
-/

namespace A006408.P7831748133123946561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 4) 4 : ℤ) * ((8 * (n + 2) ^ 2 + 17 * (n + 2) : ℤ) - 6) : ℚ) / 15

end

end A006408.P7831748133123946561

namespace A006408

/-- `C(n+4, 4)*(8*(n+2)²+17*(n+2)-6)/15` -/
def P7831748133123946561.Spec : Prop :=
  ∀ n, P7831748133123946561.a n = (A006408 (n + 2) : ℚ)

end A006408

/-! ## A006408.P6058693925023134167

`(n+2)*(12-28*(n+2)-45*(n+2)²+20*(n+2)^3+33*(n+2)^4+8*(n+2)^5)/360`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006408

/-- `(n+2)*(12-28*(n+2)-45*(n+2)²+20*(n+2)^3+33*(n+2)^4+8*(n+2)^5)/360` -/
def P6058693925023134167.Spec : Prop :=
  ∀ n, P6058693925023134167.a n = (A006408 (n + 2) : ℚ)

end A006408

/-! ## A006408.P7240390609802710228

`A006469(n+1)-A027777(n+2)`
-/

namespace A006408.P7240390609802710228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006469 (n + 1) - A027777 (n + 2)

end

end A006408.P7240390609802710228

namespace A006408

/-- `A006469(n+1)-A027777(n+2)` -/
def P7240390609802710228.Spec : Prop :=
  ∀ n, P7240390609802710228.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P16463853195175851377

`∑[∑[A098077(n+1)+A033994(n+1)]]`
-/

namespace A006408.P16463853195175851377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) + A033994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P16463853195175851377

namespace A006408

/-- `∑[∑[A098077(n+1)+A033994(n+1)]]` -/
def P16463853195175851377.Spec : Prop :=
  ∀ n, P16463853195175851377.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P2370572083097576497

`∑[∑[A053126(n+4)-A000292(n+1)]]`
-/

namespace A006408.P2370572083097576497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) - A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P2370572083097576497

namespace A006408

/-- `∑[∑[A053126(n+4)-A000292(n+1)]]` -/
def P2370572083097576497.Spec : Prop :=
  ∀ n, P2370572083097576497.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P4916149612987762131

`∑[∑[∑[A304659(n+1)-(n+1)²]]]`
-/

namespace A006408.P4916149612987762131
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304659 (n + 1) - ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P4916149612987762131

namespace A006408

/-- `∑[∑[∑[A304659(n+1)-(n+1)²]]]` -/
def P4916149612987762131.Spec : Prop :=
  ∀ n, P4916149612987762131.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P10296206658311130642

`∑[∑[A000330(n+1)+(n+1)*A016061(n+1)]]`
-/

namespace A006408.P10296206658311130642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (n + 1 : ℤ) * A016061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P10296206658311130642

namespace A006408

/-- `∑[∑[A000330(n+1)+(n+1)*A016061(n+1)]]` -/
def P10296206658311130642.Spec : Prop :=
  ∀ n, P10296206658311130642.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P10195079410867691976

`∑[A001753(2*n+1)]-A000389(n+5)`
-/

namespace A006408.P10195079410867691976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000389 (n + 5)

end

end A006408.P10195079410867691976

namespace A006408

/-- `∑[A001753(2*n+1)]-A000389(n+5)` -/
def P10195079410867691976.Spec : Prop :=
  ∀ n, P10195079410867691976.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P14268430509518769565

`∑[A001753(2*n+1)-∑[A000292(n+1)]]`
-/

namespace A006408.P14268430509518769565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P14268430509518769565

namespace A006408

/-- `∑[A001753(2*n+1)-∑[A000292(n+1)]]` -/
def P14268430509518769565.Spec : Prop :=
  ∀ n, P14268430509518769565.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P8764650305006872352

`∑[∑[A000332(2*n+5)-A000292(n+1)]]`
-/

namespace A006408.P8764650305006872352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 5) - A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P8764650305006872352

namespace A006408

/-- `∑[∑[A000332(2*n+5)-A000292(n+1)]]` -/
def P8764650305006872352.Spec : Prop :=
  ∀ n, P8764650305006872352.a n = A006408 (n + 2)

end A006408

/-! ## A006408.P16861972924728839525

`∑[∑[A000332(2*n+5)]-A000332(n+4)]`
-/

namespace A006408.P16861972924728839525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006408.P16861972924728839525

namespace A006408

/-- `∑[∑[A000332(2*n+5)]-A000332(n+4)]` -/
def P16861972924728839525.Spec : Prop :=
  ∀ n, P16861972924728839525.a n = A006408 (n + 2)

end A006408

/-!
# A006409: Number of nonseparable rooted toroidal maps with n + 4 edges and n + 1 vertices.

The programs for A006409, the canonical program `A006409.P4950187664757590155` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006409 has offset 2).

The definition of A006409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006409.P8470588859535452051

`C(n+6, 6)*(29*(n+2)^3+108*(n+2)²-11*(n+2)-12)/63`
-/

namespace A006409.P8470588859535452051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 6) 6 : ℤ) * ((29 * (n + 2) ^ 3 + 108 * (n + 2) ^ 2 : ℤ) - (11 * (n + 2) : ℤ) - 12) : ℚ) / 63

end

end A006409.P8470588859535452051

namespace A006409

/-- `C(n+6, 6)*(29*(n+2)^3+108*(n+2)²-11*(n+2)-12)/63` -/
def P8470588859535452051.Spec : Prop :=
  ∀ n, P8470588859535452051.a n = (A006409 (n + 2) : ℚ)

theorem P8470588859535452051.correct : P8470588859535452051.Spec := by
  intro n
  simp only [A006409, Nat.add_sub_cancel, A006409.P8470588859535452051.a, A006409.P4950187664757590155.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006409

/-! ## A006409.P4950187664757590155

`10*C(n+6, 6)+120*C(n+6, 7)+328*C(n+6, 8)+232*C(n+6, 9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006409

/-- `10*C(n+6, 6)+120*C(n+6, 7)+328*C(n+6, 8)+232*C(n+6, 9)` -/
def P4950187664757590155.Spec : Prop :=
  ∀ n, (P4950187664757590155.a n : ℤ) = A006409 (n + 2)

theorem P4950187664757590155.correct : P4950187664757590155.Spec := by
  intro n
  simp only [A006409, Nat.add_sub_cancel]

end A006409

/-! ## A006409.P16587539515473784426

`A342989(∑[n+3]+2)`
-/

namespace A006409.P16587539515473784426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006409.P16587539515473784426

namespace A006409

/-- `A342989(∑[n+3]+2)` -/
def P16587539515473784426.Spec : Prop :=
  ∀ n, P16587539515473784426.a n = A006409 (n + 2)

end A006409

/-! ## A006409.P6383945868084053248

`A342989(A101881(2*n+3))%A343008(3*n+1)`
-/

namespace A006409.P6383945868084053248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342989 (A101881 (2 * n + 3)).toNat) (A343008 (3 * n + 1))

end

end A006409.P6383945868084053248

namespace A006409

/-- `A342989(A101881(2*n+3))%A343008(3*n+1)` -/
def P6383945868084053248.Spec : Prop :=
  ∀ n, P6383945868084053248.a n = A006409 (n + 2)

end A006409

/-!
# A006410: Number of nonseparable rooted toroidal maps with n + 5 edges and n + 1 vertices.

The programs for A006410, the canonical program `A006410.P3162312309428355289` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006410 has offset 2).

The definition of A006410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006410.P3162312309428355289

`C(n+8, 8)*(136*(n+2)^4+790*(n+2)^3+447*(n+2)²-180*(n+2)-24)/495`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006410

/-- `C(n+8, 8)*(136*(n+2)^4+790*(n+2)^3+447*(n+2)²-180*(n+2)-24)/495` -/
def P3162312309428355289.Spec : Prop :=
  ∀ n, P3162312309428355289.a n = (A006410 (n + 2) : ℚ)

end A006410

/-! ## A006410.P7102834523827771535

`A342989(∑[n+3]+8)`
-/

namespace A006410.P7102834523827771535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342989 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A006410.P7102834523827771535

namespace A006410

/-- `A342989(∑[n+3]+8)` -/
def P7102834523827771535.Spec : Prop :=
  ∀ n, P7102834523827771535.a n = A006410 (n + 2)

end A006410

/-!
# A006411: Number of nonseparable tree-rooted planar maps with n + 2 edges and 3 vertices.

The programs for A006411, the canonical program `A006411.P1735342992233558298` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006411 has offset 1).

The definition of A006411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006411.P1437497738495655178

`ogf((3+2x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A006411.P1437497738495655178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A006411.P1437497738495655178

namespace A006411

/-- `ogf((3+2x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P1437497738495655178.Spec : Prop :=
  ∀ n, P1437497738495655178.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P1735342992233558298

`(n+1)*(n+2)*(n+3)²*(n+4)/24`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006411

/-- `(n+1)*(n+2)*(n+3)²*(n+4)/24` -/
def P1735342992233558298.Spec : Prop :=
  ∀ n, P1735342992233558298.a n = (A006411 (n + 1) : ℚ)

end A006411

/-! ## A006411.P8404400063869822396

`(n+3)*C(n+4, 4)`
-/

namespace A006411.P8404400063869822396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose (n + 4) 4

end

end A006411.P8404400063869822396

namespace A006411

/-- `(n+3)*C(n+4, 4)` -/
def P8404400063869822396.Spec : Prop :=
  ∀ n, (P8404400063869822396.a n : ℤ) = A006411 (n + 1)

end A006411

/-! ## A006411.P6860273537554641601

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=3`
-/

namespace A006411.P6860273537554641601
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006411.P6860273537554641601

namespace A006411

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P6860273537554641601.Spec : Prop :=
  ∀ n, (P6860273537554641601.a n : ℤ) = A006411 (n + 1)

end A006411

/-! ## A006411.P7927153687519004091

`A095669(n)-A055796(n)`
-/

namespace A006411.P7927153687519004091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A055796 n

end

end A006411.P7927153687519004091

namespace A006411

/-- `A095669(n)-A055796(n)` -/
def P7927153687519004091.Spec : Prop :=
  ∀ n, P7927153687519004091.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P12240824134816125660

`A034263(n)+A005583(n+1)`
-/

namespace A006411.P12240824134816125660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + A005583 (n + 1)

end

end A006411.P12240824134816125660

namespace A006411

/-- `A034263(n)+A005583(n+1)` -/
def P12240824134816125660.Spec : Prop :=
  ∀ n, P12240824134816125660.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P8920648561662460017

`A027789(n+1)-A027800(n)`
-/

namespace A006411.P8920648561662460017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027789 (n + 1) - A027800 n

end

end A006411.P8920648561662460017

namespace A006411

/-- `A027789(n+1)-A027800(n)` -/
def P8920648561662460017.Spec : Prop :=
  ∀ n, P8920648561662460017.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P17894888935033963415

`2*A006470(n+1)-A027800(n)`
-/

namespace A006411.P17894888935033963415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006470 (n + 1) - A027800 n

end

end A006411.P17894888935033963415

namespace A006411

/-- `2*A006470(n+1)-A027800(n)` -/
def P17894888935033963415.Spec : Prop :=
  ∀ n, P17894888935033963415.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P677224589403569210

`A253945(n+4)-A000574(n+3)`
-/

namespace A006411.P677224589403569210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A000574 (n + 3)

end

end A006411.P677224589403569210

namespace A006411

/-- `A253945(n+4)-A000574(n+3)` -/
def P677224589403569210.Spec : Prop :=
  ∀ n, P677224589403569210.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P16299819324060159538

`A000574(n+3)+2*A277935(n+1)`
-/

namespace A006411.P16299819324060159538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000574 (n + 3) + 2 * A277935 (n + 1)

end

end A006411.P16299819324060159538

namespace A006411

/-- `A000574(n+3)+2*A277935(n+1)` -/
def P16299819324060159538.Spec : Prop :=
  ∀ n, P16299819324060159538.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P10212463349293559034

`∑[∑[A162147(n+1)]]`
-/

namespace A006411.P10212463349293559034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162147 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006411.P10212463349293559034

namespace A006411

/-- `∑[∑[A162147(n+1)]]` -/
def P10212463349293559034.Spec : Prop :=
  ∀ n, P10212463349293559034.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P1338323082499938852

`A001296(n+1)+A256859(n+1)+A001296(n+1)`
-/

namespace A006411.P1338323082499938852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + (A256859 (n + 1) + A001296 (n + 1))

end

end A006411.P1338323082499938852

namespace A006411

/-- `A001296(n+1)+A256859(n+1)+A001296(n+1)` -/
def P1338323082499938852.Spec : Prop :=
  ∀ n, P1338323082499938852.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P11205491222223882529

`A051836(n+1)+A051880(n+1)-A051878(n+1)`
-/

namespace A006411.P11205491222223882529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + (A051880 (n + 1) - A051878 (n + 1))

end

end A006411.P11205491222223882529

namespace A006411

/-- `A051836(n+1)+A051880(n+1)-A051878(n+1)` -/
def P11205491222223882529.Spec : Prop :=
  ∀ n, P11205491222223882529.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P12709408366050179180

`A051836(n+1)+A271567(n+1)-A051880(n+1)`
-/

namespace A006411.P12709408366050179180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + (A271567 (n + 1) - A051880 (n + 1))

end

end A006411.P12709408366050179180

namespace A006411

/-- `A051836(n+1)+A271567(n+1)-A051880(n+1)` -/
def P12709408366050179180.Spec : Prop :=
  ∀ n, P12709408366050179180.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P18383891551299046610

`∑[A212415(n+2)]`
-/

namespace A006411.P18383891551299046610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006411.P18383891551299046610

namespace A006411

/-- `∑[A212415(n+2)]` -/
def P18383891551299046610.Spec : Prop :=
  ∀ n, P18383891551299046610.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P3521944367548005901

`A207361(n+2)-A051836(n+2)`
-/

namespace A006411.P3521944367548005901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 (n + 2) - A051836 (n + 2)

end

end A006411.P3521944367548005901

namespace A006411

/-- `A207361(n+2)-A051836(n+2)` -/
def P3521944367548005901.Spec : Prop :=
  ∀ n, P3521944367548005901.a n = A006411 (n + 1)

end A006411

/-! ## A006411.P12984739450002272923

`A333320(2*n+7)`
-/

namespace A006411.P12984739450002272923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (2 * n + 7)

end

end A006411.P12984739450002272923

namespace A006411

/-- `A333320(2*n+7)` -/
def P12984739450002272923.Spec : Prop :=
  ∀ n, P12984739450002272923.a n = A006411 (n + 1)

end A006411

/-!
# A006412: Number of nonseparable tree-rooted planar maps with n + 3 edges and 4 vertices.

The programs for A006412, the canonical program `A006412.P12370674935269363778` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006412 has offset 1).

The definition of A006412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006412.P12370674935269363778

`C(n+6, 6)*(n+4)*((n+1)*(13*(n+1)+57)+14)/84`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006412

/-- `C(n+6, 6)*(n+4)*((n+1)*(13*(n+1)+57)+14)/84` -/
def P12370674935269363778.Spec : Prop :=
  ∀ n, P12370674935269363778.a n = (A006412 (n + 1) : ℚ)

end A006412

/-! ## A006412.P13577504343735734618

`A342984(A167614(n+3))`
-/

namespace A006412.P13577504343735734618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A167614 (n + 3)).toNat

end

end A006412.P13577504343735734618

namespace A006412

/-- `A342984(A167614(n+3))` -/
def P13577504343735734618.Spec : Prop :=
  ∀ n, P13577504343735734618.a n = A006412 (n + 1)

end A006412

/-! ## A006412.P2353032839437384421

`A342984(Δ[A023545(n+1)])`
-/

namespace A006412.P2353032839437384421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (f1 (n + 1) - f1 n).toNat

end

end A006412.P2353032839437384421

namespace A006412

/-- `A342984(Δ[A023545(n+1)])` -/
def P2353032839437384421.Spec : Prop :=
  ∀ n, P2353032839437384421.a n = A006412 (n + 1)

end A006412

/-! ## A006412.P16314026157803411362

`A342984(A000217(n+5)-(n+2))`
-/

namespace A006412.P16314026157803411362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A000217 (n + 5) - (n + 2 : ℤ)).toNat

end

end A006412.P16314026157803411362

namespace A006412

/-- `A342984(A000217(n+5)-(n+2))` -/
def P16314026157803411362.Spec : Prop :=
  ∀ n, P16314026157803411362.a n = A006412 (n + 1)

end A006412

/-! ## A006412.P15731023872851228813

`A342984(A000124(n+5)-(n+3))`
-/

namespace A006412.P15731023872851228813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A000124 (n + 5) - (n + 3 : ℤ)).toNat

end

end A006412.P15731023872851228813

namespace A006412

/-- `A342984(A000124(n+5)-(n+3))` -/
def P15731023872851228813.Spec : Prop :=
  ∀ n, P15731023872851228813.a n = A006412 (n + 1)

end A006412

/-!
# A006413: Number of nonseparable tree-rooted planar maps with n + 4 edges and 5 vertices.

The programs for A006413, there is no canonical definition to state claims against.
-/

/-! ## A006413.P10048918335577367452

`A342984(A000124(n+5)+3)`
-/

namespace A006413.P10048918335577367452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A000124 (n + 5) + 3).toNat

end

end A006413.P10048918335577367452

/-! ## A006413.P4965020201902241006

`A342984(A016028(n+8)+1)`
-/

namespace A006413.P4965020201902241006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A016028 (n + 8) + 1).toNat

end

end A006413.P4965020201902241006

/-! ## A006413.P3486327200837343479

`A342984(A000096(n+5)-4)`
-/

namespace A006413.P3486327200837343479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (A000096 (n + 5) - 4).toNat

end

end A006413.P3486327200837343479

/-! ## A006413.P7511572969269029337

`A342984(eq[5, A025581(n)]+1)`
-/

namespace A006413.P7511572969269029337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006413.P7511572969269029337

/-! ## A006413.P15690938822614090717

`A342984(Δ[A023545(n+2)]-1)`
-/

namespace A006413.P15690938822614090717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342984 (f1 (n + 1) - f1 n - 1).toNat

end

end A006413.P15690938822614090717

/-!
# A006414: Number of nonseparable toroidal tree-rooted maps with n + 2 edges and n + 1 vertices.

The programs for A006414, the canonical program `A006414.P3634447629182822101` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006414 has offset 0).

The definition of A006414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006414.P4740478667713469974

`(n+2)²*C(n+3, 3)/4`
-/

namespace A006414.P4740478667713469974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 * Nat.choose (n + 3) 3 : ℚ) / 4

end

end A006414.P4740478667713469974

namespace A006414

/-- `(n+2)²*C(n+3, 3)/4` -/
def P4740478667713469974.Spec : Prop :=
  ∀ n, P4740478667713469974.a n = (A006414 n : ℚ)

theorem P4740478667713469974.correct : P4740478667713469974.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P4740478667713469974.a, A006414.P3634447629182822101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P16901632407561167190

`ogf((1+3x+x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A006414.P16901632407561167190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A006414.P16901632407561167190

namespace A006414

/-- `ogf((1+3x+x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P16901632407561167190.Spec : Prop :=
  ∀ n, P16901632407561167190.a n = A006414 n

end A006414

/-! ## A006414.P11015901343685148670

`(n+2)^3*((n+2)²-1)/24`
-/

namespace A006414.P11015901343685148670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 3 : ℤ) * (((n + 2) ^ 2 : ℤ) - 1) : ℚ) / 24

end

end A006414.P11015901343685148670

namespace A006414

/-- `(n+2)^3*((n+2)²-1)/24` -/
def P11015901343685148670.Spec : Prop :=
  ∀ n, P11015901343685148670.a n = (A006414 n : ℚ)

theorem P11015901343685148670.correct : P11015901343685148670.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P11015901343685148670.a, A006414.P3634447629182822101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P7803225790910060243

`(n+2)/2*(C(n+4, 4)+C(n+3, 4))`
-/

namespace A006414.P7803225790910060243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (Nat.choose (n + 4) 4 + Nat.choose (n + 3) 4 : ℚ)

end

end A006414.P7803225790910060243

namespace A006414

/-- `(n+2)/2*(C(n+4, 4)+C(n+3, 4))` -/
def P7803225790910060243.Spec : Prop :=
  ∀ n, P7803225790910060243.a n = (A006414 n : ℚ)

theorem P7803225790910060243.correct : P7803225790910060243.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P7803225790910060243.a, A006414.P3634447629182822101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P3634447629182822101

`C(n+5, 5)+3*C(n+4, 5)+C(n+3, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006414

/-- `C(n+5, 5)+3*C(n+4, 5)+C(n+3, 5)` -/
def P3634447629182822101.Spec : Prop :=
  ∀ n, (P3634447629182822101.a n : ℤ) = A006414 n

theorem P3634447629182822101.correct : P3634447629182822101.Spec := by
  intro n
  simp only [A006414]

end A006414

/-! ## A006414.P15945403451765286140

`((n+2)/2)²*C(n+3, 3)`
-/

namespace A006414.P15945403451765286140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2) ^ 2 * (Nat.choose (n + 3) 3 : ℚ)

end

end A006414.P15945403451765286140

namespace A006414

/-- `((n+2)/2)²*C(n+3, 3)` -/
def P15945403451765286140.Spec : Prop :=
  ∀ n, P15945403451765286140.a n = (A006414 n : ℚ)

theorem P15945403451765286140.correct : P15945403451765286140.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P15945403451765286140.a, A006414.P3634447629182822101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P16101195259157804885

`C(n+3, 3)/(2/(n+2))²`
-/

namespace A006414.P16101195259157804885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (2 / (n + 2 : ℚ)) ^ 2

end

end A006414.P16101195259157804885

namespace A006414

/-- `C(n+3, 3)/(2/(n+2))²` -/
def P16101195259157804885.Spec : Prop :=
  ∀ n, P16101195259157804885.a n = (A006414 n : ℚ)

theorem P16101195259157804885.correct : P16101195259157804885.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P16101195259157804885.a, A006414.P3634447629182822101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P12725258692952779320

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=1, a(1)=5`
-/

namespace A006414.P12725258692952779320
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P12725258692952779320

namespace A006414

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P12725258692952779320.Spec : Prop :=
  ∀ n, (P12725258692952779320.a n : ℤ) = A006414 n

end A006414

/-! ## A006414.P13540321844182166997

`∑[A006322(n+1)]`
-/

namespace A006414.P13540321844182166997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P13540321844182166997

namespace A006414

/-- `∑[A006322(n+1)]` -/
def P13540321844182166997.Spec : Prop :=
  ∀ n, P13540321844182166997.a n = A006414 n

end A006414

/-! ## A006414.P4196090465755381930

`∑[A108676(n)/(n+1)]`
-/

namespace A006414.P4196090465755381930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108676 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P4196090465755381930

namespace A006414

/-- `∑[A108676(n)/(n+1)]` -/
def P4196090465755381930.Spec : Prop :=
  ∀ n, P4196090465755381930.a n = (A006414 n : ℚ)

end A006414

/-! ## A006414.P373150610943138768

`A244864(n)-a(n-1)` with `a(0)=1`
-/

namespace A006414.P373150610943138768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244864 n - a (n - 1)

end

end A006414.P373150610943138768

namespace A006414

/-- `A244864(n)-a(n-1)` -/
def P373150610943138768.Spec : Prop :=
  ∀ n, P373150610943138768.a n = A006414 n

end A006414

/-! ## A006414.P8446408016831969095

`A051947(n)-A259181(n)`
-/

namespace A006414.P8446408016831969095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051947 n - A259181 n

end

end A006414.P8446408016831969095

namespace A006414

/-- `A051947(n)-A259181(n)` -/
def P8446408016831969095.Spec : Prop :=
  ∀ n, P8446408016831969095.a n = A006414 n

end A006414

/-! ## A006414.P17040647166572335727

`A244882(n)+∑[A000292(n)]`
-/

namespace A006414.P17040647166572335727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P17040647166572335727

namespace A006414

/-- `A244882(n)+∑[A000292(n)]` -/
def P17040647166572335727.Spec : Prop :=
  ∀ n, P17040647166572335727.a n = A006414 n

end A006414

/-! ## A006414.P11339838828263685680

`A174002(n)+A000292(n+1)`
-/

namespace A006414.P11339838828263685680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A000292 (n + 1)

end

end A006414.P11339838828263685680

namespace A006414

/-- `A174002(n)+A000292(n+1)` -/
def P11339838828263685680.Spec : Prop :=
  ∀ n, P11339838828263685680.a n = A006414 n

theorem P11339838828263685680.correct : P11339838828263685680.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P11339838828263685680.a, A006414.P3634447629182822101.a, A000292, A000292.P18322089543142633594.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P7933952989529105974

`A051877(n)-A130857(n+1)`
-/

namespace A006414.P7933952989529105974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n - A130857 (n + 1)

end

end A006414.P7933952989529105974

namespace A006414

/-- `A051877(n)-A130857(n+1)` -/
def P7933952989529105974.Spec : Prop :=
  ∀ n, P7933952989529105974.a n = A006414 n

end A006414

/-! ## A006414.P17363546987139791659

`A271662(n)-∑[n*A000292(n)]`
-/

namespace A006414.P17363546987139791659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P17363546987139791659

namespace A006414

/-- `A271662(n)-∑[n*A000292(n)]` -/
def P17363546987139791659.Spec : Prop :=
  ∀ n, P17363546987139791659.a n = A006414 n

end A006414

/-! ## A006414.P5388459060948042708

`A027764(n+3)-A004320(n+1)`
-/

namespace A006414.P5388459060948042708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) - A004320 (n + 1)

end

end A006414.P5388459060948042708

namespace A006414

/-- `A027764(n+3)-A004320(n+1)` -/
def P5388459060948042708.Spec : Prop :=
  ∀ n, P5388459060948042708.a n = A006414 n

end A006414

/-! ## A006414.P13954651019701499391

`A167566(n+3)-A005585(n+1)`
-/

namespace A006414.P13954651019701499391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167566 (n + 3) - A005585 (n + 1)

end

end A006414.P13954651019701499391

namespace A006414

/-- `A167566(n+3)-A005585(n+1)` -/
def P13954651019701499391.Spec : Prop :=
  ∀ n, P13954651019701499391.a n = A006414 n

theorem P13954651019701499391.correct : P13954651019701499391.Spec := by
  intro n
  simp only [A006414, Nat.add_sub_cancel, A006414.P13954651019701499391.a, A006414.P3634447629182822101.a, A005585, A005585.P5066831349655201454.a, A167566, A167566.P3658616145969070422.a, A000389, A000389.P15450220129395289428.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006414

/-! ## A006414.P2459693660969201611

`A000125(n)+n*A051743(n+1)`
-/

namespace A006414.P2459693660969201611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (n : ℤ) * A051743 (n + 1)

end

end A006414.P2459693660969201611

namespace A006414

/-- `A000125(n)+n*A051743(n+1)` -/
def P2459693660969201611.Spec : Prop :=
  ∀ n, P2459693660969201611.a n = A006414 n

end A006414

/-! ## A006414.P16849438456734119372

`A033455(n+1)+∑[∑[A000292(n)]]`
-/

namespace A006414.P16849438456734119372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006414.P16849438456734119372

namespace A006414

/-- `A033455(n+1)+∑[∑[A000292(n)]]` -/
def P16849438456734119372.Spec : Prop :=
  ∀ n, P16849438456734119372.a n = A006414 n

end A006414

/-!
# A006416: Number of loopless rooted planar maps with 3 faces and n vertices and no isthmuses. Also a(n)=T(4,n-3), array T as in A049600.

The programs for A006416, the canonical program `A006416.P3279485994420315076` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006416 has offset 2).

The definition of A006416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006416.P12098404786340113231

`C(n+5, 3)-3*(n+3)`
-/

namespace A006416.P12098404786340113231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 3 : ℤ) - (3 * (n + 3) : ℤ)

end

end A006416.P12098404786340113231

namespace A006416

/-- `C(n+5, 3)-3*(n+3)` -/
def P12098404786340113231.Spec : Prop :=
  ∀ n, P12098404786340113231.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P9594430678333193487

`ogf((1+4x-6x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A006416.P9594430678333193487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -6, 2] [1, -4, 6, -4, 1] n

end

end A006416.P9594430678333193487

namespace A006416

/-- `ogf((1+4x-6x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9594430678333193487.Spec : Prop :=
  ∀ n, P9594430678333193487.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P3279485994420315076

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=20, a(3)=38`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006416

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3279485994420315076.Spec : Prop :=
  ∀ n, P3279485994420315076.a n = A006416 (n + 2)

theorem P3279485994420315076.correct : P3279485994420315076.Spec := by
  intro n
  simp only [A006416, Nat.add_sub_cancel]

end A006416

/-! ## A006416.P3734617447607443986

`∑[∑[3+n]]-2`
-/

namespace A006416.P3734617447607443986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A006416.P3734617447607443986

namespace A006416

/-- `∑[∑[3+n]]-2` -/
def P3734617447607443986.Spec : Prop :=
  ∀ n, P3734617447607443986.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P15438721147173658204

`∑[gcd(C(2, n+2), ∑[n+3])]`
-/

namespace A006416.P15438721147173658204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 2)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P15438721147173658204

namespace A006416

/-- `∑[gcd(C(2, n+2), ∑[n+3])]` -/
def P15438721147173658204.Spec : Prop :=
  ∀ n, (P15438721147173658204.a n : ℤ) = A006416 (n + 2)

end A006416

/-! ## A006416.P6762959454672906076

`∑[∑[n+3]%(2*(n+1)²)]`
-/

namespace A006416.P6762959454672906076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (2 * (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P6762959454672906076

namespace A006416

/-- `∑[∑[n+3]%(2*(n+1)²)]` -/
def P6762959454672906076.Spec : Prop :=
  ∀ n, (P6762959454672906076.a n : ℤ) = A006416 (n + 2)

end A006416

/-! ## A006416.P3341203460116694192

`∑[∑[n+3]^(n²%(n+1))]`
-/

namespace A006416.P3341203460116694192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n ^ 2 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P3341203460116694192

namespace A006416

/-- `∑[∑[n+3]^(n²%(n+1))]` -/
def P3341203460116694192.Spec : Prop :=
  ∀ n, (P3341203460116694192.a n : ℤ) = A006416 (n + 2)

end A006416

/-! ## A006416.P15581202375715220903

`floor(a(n-1)+C(n+3, 2)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006416.P15581202375715220903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 3) 2 + n)

end

end A006416.P15581202375715220903

namespace A006416

/-- `floor(a(n-1)+C(n+3, 2)+n)` -/
def P15581202375715220903.Spec : Prop :=
  ∀ n, (P15581202375715220903.a n : ℤ) = A006416 (n + 2)

end A006416

/-! ## A006416.P16249441095727244693

`∑[∑[n+3]/(C(2, 2*n+1)+1)]`
-/

namespace A006416.P16249441095727244693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Nat.choose 2 (2 * n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P16249441095727244693

namespace A006416

/-- `∑[∑[n+3]/(C(2, 2*n+1)+1)]` -/
def P16249441095727244693.Spec : Prop :=
  ∀ n, P16249441095727244693.a n = (A006416 (n + 2) : ℚ)

end A006416

/-! ## A006416.P9493542093620596268

`(n+3)*(C(n+3, 3)/(n+3)+n)`
-/

namespace A006416.P9493542093620596268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((Nat.choose (n + 3) 3 : ℚ) / (n + 3 : ℚ) + (n : ℚ))

end

end A006416.P9493542093620596268

namespace A006416

/-- `(n+3)*(C(n+3, 3)/(n+3)+n)` -/
def P9493542093620596268.Spec : Prop :=
  ∀ n, P9493542093620596268.a n = (A006416 (n + 2) : ℚ)

end A006416

/-! ## A006416.P13341551178207875351

`(a(n-1)-(n-2))*(n+3)/n` with `a(0)=1`
-/

namespace A006416.P13341551178207875351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((n : ℤ) - 2 : ℚ)) * ((n + 3 : ℚ) / (n : ℚ))

end

end A006416.P13341551178207875351

namespace A006416

/-- `(a(n-1)-(n-2))*(n+3)/n` -/
def P13341551178207875351.Spec : Prop :=
  ∀ n, P13341551178207875351.a n = (A006416 (n + 2) : ℚ)

end A006416

/-! ## A006416.P14512395101039674044

`floor(a(n-1)-∑[n-3-2*n])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006416.P14512395101039674044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P14512395101039674044

namespace A006416

/-- `floor(a(n-1)-∑[n-3-2*n])` -/
def P14512395101039674044.Spec : Prop :=
  ∀ n, P14512395101039674044.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P12358876321761326968

`∑[gcd(∑[n+3], A000038(n))]`
-/

namespace A006416.P12358876321761326968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A000038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P12358876321761326968

namespace A006416

/-- `∑[gcd(∑[n+3], A000038(n))]` -/
def P12358876321761326968.Spec : Prop :=
  ∀ n, (P12358876321761326968.a n : ℤ) = A006416 (n + 2)

end A006416

/-! ## A006416.P15506126857596969222

`∑[A052905(n)+ceil(atan(2*n))]`
-/

namespace A006416.P15506126857596969222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + ⌈Real.arctan (2 * n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P15506126857596969222

namespace A006416

/-- `∑[A052905(n)+ceil(atan(2*n))]` -/
def P15506126857596969222.Spec : Prop :=
  ∀ n, P15506126857596969222.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P17974509477554210706

`(A000217(n+1)/3+n)*(n+3)`
-/

namespace A006416.P17974509477554210706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 1) : ℚ) / 3 + (n : ℚ)) * (n + 3 : ℚ)

end

end A006416.P17974509477554210706

namespace A006416

/-- `(A000217(n+1)/3+n)*(n+3)` -/
def P17974509477554210706.Spec : Prop :=
  ∀ n, P17974509477554210706.a n = (A006416 (n + 2) : ℚ)

end A006416

/-! ## A006416.P3377183299887106239

`∑[∑[n+3]^and(1, A000040(n+1))]`
-/

namespace A006416.P3377183299887106239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P3377183299887106239

namespace A006416

/-- `∑[∑[n+3]^and(1, A000040(n+1))]` -/
def P3377183299887106239.Spec : Prop :=
  ∀ n, P3377183299887106239.a n = (A006416 (n + 2) : ℚ)

end A006416

/-! ## A006416.P9121704362452777344

`Δ[A116699(n+3)-(n+3)²]`
-/

namespace A006416.P9121704362452777344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 3) - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006416.P9121704362452777344

namespace A006416

/-- `Δ[A116699(n+3)-(n+3)²]` -/
def P9121704362452777344.Spec : Prop :=
  ∀ n, P9121704362452777344.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P7608905001048331019

`Δ[A227259(n+2)-Δ[A227259(n+2)]]`
-/

namespace A006416.P7608905001048331019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006416.P7608905001048331019

namespace A006416

/-- `Δ[A227259(n+2)-Δ[A227259(n+2)]]` -/
def P7608905001048331019.Spec : Prop :=
  ∀ n, P7608905001048331019.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P2160481480920404929

`∑[A333616(2*n+1)+n]`
-/

namespace A006416.P2160481480920404929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333616 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006416.P2160481480920404929

namespace A006416

/-- `∑[A333616(2*n+1)+n]` -/
def P2160481480920404929.Spec : Prop :=
  ∀ n, P2160481480920404929.a n = A006416 (n + 2)

end A006416

/-! ## A006416.P14880811866555111585

`record[A114092(n+1)-n]`
-/

namespace A006416.P14880811866555111585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114092 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006416.P14880811866555111585

namespace A006416

/-- `record[A114092(n+1)-n]` -/
def P14880811866555111585.Spec : Prop :=
  ∀ n, P14880811866555111585.a n = A006416 (n + 2)

end A006416

/-!
# A006417: Number of loopless rooted planar maps with 4 faces and n vertices and no isthmuses.

The programs for A006417, the canonical program `A006417.P8355071967707161059` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006417 has offset 2).

The definition of A006417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006417.P8355071967707161059

`ogf((1+13x+12x^2-63x^3+65x^4-29x^5+5x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006417

/-- `ogf((1+13x+12x^2-63x^3+65x^4-29x^5+5x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8355071967707161059.Spec : Prop :=
  ∀ n, P8355071967707161059.a n = A006417 (n + 2)

theorem P8355071967707161059.correct : P8355071967707161059.Spec := by
  intro n
  simp only [A006417, Nat.add_sub_cancel]

end A006417

/-! ## A006417.P6449604506579855335

`A342980(A046691(n+3))`
-/

namespace A006417.P6449604506579855335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A046691 (n + 3)).toNat

end

end A006417.P6449604506579855335

namespace A006417

/-- `A342980(A046691(n+3))` -/
def P6449604506579855335.Spec : Prop :=
  ∀ n, P6449604506579855335.a n = A006417 (n + 2)

end A006417

/-! ## A006417.P2361598091492454220

`A342980(A167614(n+3))`
-/

namespace A006417.P2361598091492454220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A167614 (n + 3)).toNat

end

end A006417.P2361598091492454220

namespace A006417

/-- `A342980(A167614(n+3))` -/
def P2361598091492454220.Spec : Prop :=
  ∀ n, P2361598091492454220.a n = A006417 (n + 2)

end A006417

/-! ## A006417.P1236399976545220699

`A342980(Δ[A023545(n+1)])`
-/

namespace A006417.P1236399976545220699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (f1 (n + 1) - f1 n).toNat

end

end A006417.P1236399976545220699

namespace A006417

/-- `A342980(Δ[A023545(n+1)])` -/
def P1236399976545220699.Spec : Prop :=
  ∀ n, P1236399976545220699.a n = A006417 (n + 2)

end A006417

/-! ## A006417.P13340112344574676810

`record[A342980(A000096(n)+4)]`
-/

namespace A006417.P13340112344574676810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006417.P13340112344574676810

namespace A006417

/-- `record[A342980(A000096(n)+4)]` -/
def P13340112344574676810.Spec : Prop :=
  ∀ n, P13340112344574676810.a n = A006417 (n + 2)

end A006417

/-!
# A006418: Number of loopless rooted planar maps with 5 faces and n vertices and no isthmuses.

The programs for A006418, there is no canonical definition to state claims against.
-/

/-! ## A006418.P5211969896143750255

`A342980(A052905(n+3))`
-/

namespace A006418.P5211969896143750255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A052905 (n + 3)).toNat

end

end A006418.P5211969896143750255

/-! ## A006418.P16674298005046983555

`A342980(A145018(n+6))`
-/

namespace A006418.P16674298005046983555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A145018 (n + 6)).toNat

end

end A006418.P16674298005046983555

/-! ## A006418.P9955995541976871145

`record[A342980(A000124(n)+3)]`
-/

namespace A006418.P9955995541976871145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006418.P9955995541976871145

/-! ## A006418.P2356669757469390232

`record[A342980(A000217(n)+4)]`
-/

namespace A006418.P2356669757469390232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006418.P2356669757469390232

/-! ## A006418.P5152977410093062354

`A342980(A016028(n+8)+1)`
-/

namespace A006418.P5152977410093062354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342980 (A016028 (n + 8) + 1).toNat

end

end A006418.P5152977410093062354

/-!
# A006419: a(n) = 2^(2*n+1) - C(2*n+3,n+1) + C(2*n+1,n).

The programs for A006419, the canonical program `A006419.P271779764866570345` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006419 has offset 0).

The definition of A006419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)-C(2*n+3, n+1)+C(2*n+1, n)` (program `A006419.P271779764866570345`, by `A006419.P271779764866570345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006419.P15091118225694011412

`∑{#}[n, (n-#)*A000108(n-#)*A001700(#)]`
-/

namespace A006419.P15091118225694011412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ)) * A000108 (n - k) * A001700 k

end

end A006419.P15091118225694011412

namespace A006419

/-- `∑{#}[n, (n-#)*A000108(n-#)*A001700(#)]` -/
def P15091118225694011412.Spec : Prop :=
  ∀ n, P15091118225694011412.a n = A006419 n

end A006419

/-! ## A006419.P12005138387184213661

`∑{#}[n-1, 2^(n-#-1)*C(n+#+2, #)]`
-/

namespace A006419.P12005138387184213661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose (n + k + 2) k : ℚ)

end

end A006419.P12005138387184213661

namespace A006419

/-- `∑{#}[n-1, 2^(n-#-1)*C(n+#+2, #)]` -/
def P12005138387184213661.Spec : Prop :=
  ∀ n, P12005138387184213661.a n = (A006419 n : ℚ)

end A006419

/-! ## A006419.P271779764866570345

`2^(2*n+1)-C(2*n+3, n+1)+C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006419

/-- `2^(2*n+1)-C(2*n+3, n+1)+C(2*n+1, n)` -/
def P271779764866570345.Spec : Prop :=
  ∀ n, P271779764866570345.a n = A006419 n

theorem P271779764866570345.correct : P271779764866570345.Spec := by
  intro n
  simp only [A006419]

end A006419

/-! ## A006419.P11533350094315259794

`A138156(n)/2`
-/

namespace A006419.P11533350094315259794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138156 n : ℚ) / 2

end

end A006419.P11533350094315259794

namespace A006419

/-- `A138156(n)/2` -/
def P11533350094315259794.Spec : Prop :=
  ∀ n, P11533350094315259794.a n = (A006419 n : ℚ)

end A006419

/-! ## A006419.P9156004492146871668

`A191389(2*(n+1))`
-/

namespace A006419.P9156004492146871668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (2 * (n + 1))

end

end A006419.P9156004492146871668

namespace A006419

/-- `A191389(2*(n+1))` -/
def P9156004492146871668.Spec : Prop :=
  ∀ n, P9156004492146871668.a n = A006419 n

end A006419

/-! ## A006419.P16515200150307788682

`Δ[A008549(n)]-4^n`
-/

namespace A006419.P16515200150307788682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (4 ^ n : ℤ)

end

end A006419.P16515200150307788682

namespace A006419

/-- `Δ[A008549(n)]-4^n` -/
def P16515200150307788682.Spec : Prop :=
  ∀ n, P16515200150307788682.a n = A006419 n

end A006419

/-! ## A006419.P8628194758722089060

`A191389(n+3+n)/2`
-/

namespace A006419.P8628194758722089060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191389 (n + 3 + n) : ℚ) / 2

end

end A006419.P8628194758722089060

namespace A006419

/-- `A191389(n+3+n)/2` -/
def P8628194758722089060.Spec : Prop :=
  ∀ n, P8628194758722089060.a n = (A006419 n : ℚ)

end A006419

/-! ## A006419.P2095680958622212884

`2*4^n-Δ[A001700(n)]`
-/

namespace A006419.P2095680958622212884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A006419.P2095680958622212884

namespace A006419

/-- `2*4^n-Δ[A001700(n)]` -/
def P2095680958622212884.Spec : Prop :=
  ∀ n, P2095680958622212884.a n = A006419 n

end A006419

/-! ## A006419.P15030532664903522561

`2*4^n-A024482(n+2)`
-/

namespace A006419.P15030532664903522561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A024482 (n + 2)

end

end A006419.P15030532664903522561

namespace A006419

/-- `2*4^n-A024482(n+2)` -/
def P15030532664903522561.Spec : Prop :=
  ∀ n, P15030532664903522561.a n = A006419 n

end A006419

/-! ## A006419.P981591647232134561

`Δ[A000108(n)]+4*a(n-1)` with `a(0)=0`
-/

namespace A006419.P981591647232134561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + 4 * a (n - 1)

end

end A006419.P981591647232134561

namespace A006419

/-- `Δ[A000108(n)]+4*a(n-1)` -/
def P981591647232134561.Spec : Prop :=
  ∀ n, P981591647232134561.a n = A006419 n

end A006419

/-! ## A006419.P4954801443794351637

`record[A191389(A014681(n))]`
-/

namespace A006419.P4954801443794351637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P4954801443794351637

namespace A006419

/-- `record[A191389(A014681(n))]` -/
def P4954801443794351637.Spec : Prop :=
  ∀ n, P4954801443794351637.a n = A006419 n

end A006419

/-! ## A006419.P14525568492021456290

`record[A191389(A004442(n)+1)]`
-/

namespace A006419.P14525568492021456290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P14525568492021456290

namespace A006419

/-- `record[A191389(A004442(n)+1)]` -/
def P14525568492021456290.Spec : Prop :=
  ∀ n, P14525568492021456290.a n = A006419 n

end A006419

/-! ## A006419.P7894972565934583876

`record[A191389(A006257(n)+1)]`
-/

namespace A006419.P7894972565934583876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P7894972565934583876

namespace A006419

/-- `record[A191389(A006257(n)+1)]` -/
def P7894972565934583876.Spec : Prop :=
  ∀ n, P7894972565934583876.a n = A006419 n

end A006419

/-! ## A006419.P710427005727811002

`record[A191389(A026741(n)+1)]`
-/

namespace A006419.P710427005727811002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P710427005727811002

namespace A006419

/-- `record[A191389(A026741(n)+1)]` -/
def P710427005727811002.Spec : Prop :=
  ∀ n, P710427005727811002.a n = A006419 n

end A006419

/-! ## A006419.P11169909203991796886

`A000346(n)-A001791(n+1)`
-/

namespace A006419.P11169909203991796886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n - A001791 (n + 1)

end

end A006419.P11169909203991796886

namespace A006419

/-- `A000346(n)-A001791(n+1)` -/
def P11169909203991796886.Spec : Prop :=
  ∀ n, P11169909203991796886.a n = A006419 n

end A006419

/-! ## A006419.P13061653904265386791

`A008549(n+1)-A000346(n)`
-/

namespace A006419.P13061653904265386791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 1) - A000346 n

end

end A006419.P13061653904265386791

namespace A006419

/-- `A008549(n+1)-A000346(n)` -/
def P13061653904265386791.Spec : Prop :=
  ∀ n, P13061653904265386791.a n = A006419 n

end A006419

/-! ## A006419.P2873416507683814134

`A000346(n)-A026023(2*n)`
-/

namespace A006419.P2873416507683814134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n - A026023 (2 * n)

end

end A006419.P2873416507683814134

namespace A006419

/-- `A000346(n)-A026023(2*n)` -/
def P2873416507683814134.Spec : Prop :=
  ∀ n, P2873416507683814134.a n = A006419 n

end A006419

/-! ## A006419.P10880885485509325604

`record[gcd(A191389(n+1), A191389(n))]`
-/

namespace A006419.P10880885485509325604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191389 (n + 1)) (A191389 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P10880885485509325604

namespace A006419

/-- `record[gcd(A191389(n+1), A191389(n))]` -/
def P10880885485509325604.Spec : Prop :=
  ∀ n, (P10880885485509325604.a n : ℤ) = A006419 n

end A006419

/-! ## A006419.P11443666079102016621

`record[(A004442(n)-n)*A191389(n)]`
-/

namespace A006419.P11443666079102016621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A191389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006419.P11443666079102016621

namespace A006419

/-- `record[(A004442(n)-n)*A191389(n)]` -/
def P11443666079102016621.Spec : Prop :=
  ∀ n, P11443666079102016621.a n = A006419 n

end A006419

/-! ## A006419.P8462825635860950650

`A032443(n+1)-A001700(n+1)`
-/

namespace A006419.P8462825635860950650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (n + 1) - A001700 (n + 1)

end

end A006419.P8462825635860950650

namespace A006419

/-- `A032443(n+1)-A001700(n+1)` -/
def P8462825635860950650.Spec : Prop :=
  ∀ n, P8462825635860950650.a n = A006419 n

end A006419

/-!
# A006420: Number of rooted planar maps with 3 vertices and n faces and no isthmuses.

The programs for A006420, there is no canonical definition to state claims against.
-/

/-! ## A006420.P988535583323376453

`record[A342981(A055998(n))]`
-/

namespace A006420.P988535583323376453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006420.P988535583323376453

/-! ## A006420.P11639499214907113014

`A342981(A027379(n+2))`
-/

namespace A006420.P11639499214907113014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A027379 (n + 2)).toNat

end

end A006420.P11639499214907113014

/-! ## A006420.P17883072111532253806

`A342981(A055998(n+2))`
-/

namespace A006420.P17883072111532253806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A055998 (n + 2)).toNat

end

end A006420.P17883072111532253806

/-! ## A006420.P4995135482484269115

`A342981(A155212(n)+5)`
-/

namespace A006420.P4995135482484269115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A155212 n + 5).toNat

end

end A006420.P4995135482484269115

/-! ## A006420.P15522660497377649658

`record[A342981(∑[A131209(n)])]`
-/

namespace A006420.P15522660497377649658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006420.P15522660497377649658

/-!
# A006421: Number of rooted planar maps with 4 vertices and n faces and no isthmuses.

The programs for A006421, there is no canonical definition to state claims against.
-/

/-! ## A006421.P16752162416039419510

`A342981(∑[n+5]+6)`
-/

namespace A006421.P16752162416039419510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A006421.P16752162416039419510

/-! ## A006421.P16707557568245945914

`record[A342981(A046691(n+1))]`
-/

namespace A006421.P16707557568245945914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006421.P16707557568245945914

/-! ## A006421.P6305610129069988699

`record[A342981(A052905(n)+1)]`
-/

namespace A006421.P6305610129069988699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006421.P6305610129069988699

/-! ## A006421.P16129555442243098068

`record[A342981(A027379(n)-1)]`
-/

namespace A006421.P16129555442243098068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006421.P16129555442243098068

/-! ## A006421.P15320860213578156887

`record[A342981(A055998(n+1)-1)]`
-/

namespace A006421.P15320860213578156887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342981 (A055998 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006421.P15320860213578156887

/-!
# A006422: Number of rooted toroidal maps with 2 faces and n vertices and without separating cycles or isthmuses.

The programs for A006422, the canonical program `A006422.P14083339661790638330` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006422 has offset 1).

The definition of A006422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006422.P18239159320569059675

`ogf((4+19x-5x^2-2x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A006422.P18239159320569059675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 19, -5, -2] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A006422.P18239159320569059675

namespace A006422

/-- `ogf((4+19x-5x^2-2x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P18239159320569059675.Spec : Prop :=
  ∀ n, P18239159320569059675.a n = A006422 (n + 1)

end A006422

/-! ## A006422.P14083339661790638330

`(n+1)*(n+2)*(n+3)*(8*(n+1)^3+87*(n+1)²+148*(n+1)-3)/360`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006422

/-- `(n+1)*(n+2)*(n+3)*(8*(n+1)^3+87*(n+1)²+148*(n+1)-3)/360` -/
def P14083339661790638330.Spec : Prop :=
  ∀ n, P14083339661790638330.a n = (A006422 (n + 1) : ℚ)

end A006422

/-! ## A006422.P11164979282970830526

`∑[∑[A095661(2*n)+A000292(n+1)]]`
-/

namespace A006422.P11164979282970830526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 (2 * n) + A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006422.P11164979282970830526

namespace A006422

/-- `∑[∑[A095661(2*n)+A000292(n+1)]]` -/
def P11164979282970830526.Spec : Prop :=
  ∀ n, P11164979282970830526.a n = A006422 (n + 1)

end A006422

/-! ## A006422.P16589741029022714620

`A343090(C(n+3, 2))`
-/

namespace A006422.P16589741029022714620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343090 (Nat.choose (n + 3) 2)

end

end A006422.P16589741029022714620

namespace A006422

/-- `A343090(C(n+3, 2))` -/
def P16589741029022714620.Spec : Prop :=
  ∀ n, P16589741029022714620.a n = A006422 (n + 1)

end A006422

/-! ## A006422.P13983103246658668079

`A343090(∑[n+2]+1)`
-/

namespace A006422.P13983103246658668079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006422.P13983103246658668079

namespace A006422

/-- `A343090(∑[n+2]+1)` -/
def P13983103246658668079.Spec : Prop :=
  ∀ n, P13983103246658668079.a n = A006422 (n + 1)

end A006422

/-!
# A006423: Number of rooted toroidal maps with 3 faces and n vertices and without separating cycles or isthmuses.

The programs for A006423, there is no canonical definition to state claims against.
-/

/-! ## A006423.P1515052530671847917

`A343090(∑[n+3]+2)`
-/

namespace A006423.P1515052530671847917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343090 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006423.P1515052530671847917

/-! ## A006423.P5713084525661490184

`record[A112295(n)*A343090(n+5)]`
-/

namespace A006423.P5713084525661490184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112295 n * A343090 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006423.P5713084525661490184

/-! ## A006423.P3308863373792021918

`record[A343090(n+5)/A008275(n+1)]`
-/

namespace A006423.P3308863373792021918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343090 (n + 5) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006423.P3308863373792021918

/-! ## A006423.P1329381440216550275

`record[gcd(A343090(n+5), A343138(n))]`
-/

namespace A006423.P1329381440216550275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343090 (n + 5)) (A343138 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006423.P1329381440216550275

/-!
# A006424: Number of rooted toroidal maps with 4 faces and n vertices and without separating cycles or isthmuses.

The programs for A006424, there is no canonical definition to state claims against.
-/

/-! ## A006424.P16784496016872731291

`A343090(∑[n+3]+8)`
-/

namespace A006424.P16784496016872731291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343090 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A006424.P16784496016872731291

/-! ## A006424.P13687928575705346498

`A343090(A034856(n+3))%A223566(n+1)`
-/

namespace A006424.P13687928575705346498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343090 (A034856 (n + 3)).toNat) (A223566 (n + 1))

end

end A006424.P13687928575705346498

/-!
# A006425: Number of rooted toroidal maps with 2 vertices and n faces and no isthmuses.

The programs for A006425, there is no canonical definition to state claims against.
-/

/-! ## A006425.P5151075950557886244

`A343092(C(n+3, 2))`
-/

namespace A006425.P5151075950557886244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343092 (Nat.choose (n + 3) 2)

end

end A006425.P5151075950557886244

/-! ## A006425.P9395117558153829583

`A343092(∑[n+2]+1)`
-/

namespace A006425.P9395117558153829583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343092 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006425.P9395117558153829583

/-!
# A006426: Number of rooted toroidal maps with 3 vertices and n faces and no isthmuses.

The programs for A006426, there is no canonical definition to state claims against.
-/

/-! ## A006426.P14928748212830879153

`A343092(∑[n+3]+2)`
-/

namespace A006426.P14928748212830879153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343092 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006426.P14928748212830879153

/-!
# A006427: Number of rooted toroidal maps with 4 vertices and n faces and no isthmuses.

The programs for A006427, there is no canonical definition to state claims against.
-/

/-! ## A006427.P2719322299227205548

`A343092((n+3)²-∑[n+1])`
-/

namespace A006427.P2719322299227205548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343092 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006427.P2719322299227205548

/-! ## A006427.P13714466009018533830

`lcm((-1)^∑{e}[n+1, #], A343092(A034856(n+3)))`
-/

namespace A006427.P13714466009018533830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A343092 (A034856 (n + 3)).toNat)

end

end A006427.P13714466009018533830

/-!
# A006428: Number of loopless tree-rooted planar maps with 3 vertices and n faces and no isthmuses.

The programs for A006428, the canonical program `A006428.P4340453417184918338` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006428 has offset 1).

The definition of A006428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006428.P4340453417184918338

`ogf((3x+18x^2-36x^3+30x^4-12x^5+2x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006428

/-- `ogf((3x+18x^2-36x^3+30x^4-12x^5+2x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4340453417184918338.Spec : Prop :=
  ∀ n, P4340453417184918338.a n = A006428 (n + 1)

theorem P4340453417184918338.correct : P4340453417184918338.Spec := by
  intro n
  simp only [A006428, Nat.add_sub_cancel]

end A006428

/-! ## A006428.P18355074503939091805

`record[(n+1)*(C(n+3, 4)-2*n)]`
-/

namespace A006428.P18355074503939091805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.choose (n + 3) 4 : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006428.P18355074503939091805

namespace A006428

/-- `record[(n+1)*(C(n+3, 4)-2*n)]` -/
def P18355074503939091805.Spec : Prop :=
  ∀ n, P18355074503939091805.a n = A006428 (n + 1)

end A006428

/-! ## A006428.P3228064232186063962

`A006470(n+1)-(n+2)*A103517(n)`
-/

namespace A006428.P3228064232186063962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006470 (n + 1) - (n + 2 : ℤ) * A103517 n

end

end A006428.P3228064232186063962

namespace A006428

/-- `A006470(n+1)-(n+2)*A103517(n)` -/
def P3228064232186063962.Spec : Prop :=
  ∀ n, P3228064232186063962.a n = A006428 (n + 1)

end A006428

/-! ## A006428.P621394415454879016

`(n+2)*(∑[A000292(n+1)]-A103517(n))`
-/

namespace A006428.P621394415454879016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A103517 n)

end

end A006428.P621394415454879016

namespace A006428

/-- `(n+2)*(∑[A000292(n+1)]-A103517(n))` -/
def P621394415454879016.Spec : Prop :=
  ∀ n, P621394415454879016.a n = A006428 (n + 1)

end A006428

/-! ## A006428.P9691595927374059560

`record[(n+1)*(A145126(n)-(2*n+1))]`
-/

namespace A006428.P9691595927374059560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A145126 n - (2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006428.P9691595927374059560

namespace A006428

/-- `record[(n+1)*(A145126(n)-(2*n+1))]` -/
def P9691595927374059560.Spec : Prop :=
  ∀ n, P9691595927374059560.a n = A006428 (n + 1)

end A006428

/-! ## A006428.P6908882288544426710

`(n+2)*(∑[A008804(2*n)]-A103517(n))`
-/

namespace A006428.P6908882288544426710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A103517 n)

end

end A006428.P6908882288544426710

namespace A006428

/-- `(n+2)*(∑[A008804(2*n)]-A103517(n))` -/
def P6908882288544426710.Spec : Prop :=
  ∀ n, P6908882288544426710.a n = A006428 (n + 1)

end A006428

/-!
# A006429: Number of loopless tree-rooted planar maps with 4 vertices and n faces.

The programs for A006429, there is no canonical definition to state claims against.
-/

/-! ## A006429.P11714602929081970658

`A342985(∑[n+3]+n+3)`
-/

namespace A006429.P11714602929081970658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A006429.P11714602929081970658

/-! ## A006429.P12876572019827603377

`A342985(A167614(n+2))%A162347(n+3)`
-/

namespace A006429.P12876572019827603377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342985 (A167614 (n + 2)).toNat) (A162347 (n + 3))

end

end A006429.P12876572019827603377

/-!
# A006430: Number of loopless tree-rooted planar maps with 5 vertices and n faces and no isthmuses.

The programs for A006430, there is no canonical definition to state claims against.
-/

/-! ## A006430.P12531827256920714663

`A342985(A052905(n+2))`
-/

namespace A006430.P12531827256920714663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (A052905 (n + 2)).toNat

end

end A006430.P12531827256920714663

/-! ## A006430.P15109340942366496136

`A342985(eq[4, A002262(n)])`
-/

namespace A006430.P15109340942366496136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006430.P15109340942366496136

/-! ## A006430.P11733658590363010453

`A342985(A167614(n+3)+1)`
-/

namespace A006430.P11733658590363010453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (A167614 (n + 3) + 1).toNat

end

end A006430.P11733658590363010453

/-! ## A006430.P17517378267351734469

`record[A342985(A052905(A025581(n)))]`
-/

namespace A006430.P17517378267351734469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (A052905 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006430.P17517378267351734469

/-! ## A006430.P4268476681239615673

`record[A342985(A052905(A028242(n)))]`
-/

namespace A006430.P4268476681239615673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342985 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006430.P4268476681239615673

/-!
# A006431: Numbers that have a unique partition into a sum of four nonnegative squares.

The programs for A006431, the canonical program `A006431.P9348080555869710420` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006431 has offset 1).

The definition of A006431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006431.P9348080555869710420

`ogf((x+2x^2+3x^3+x^4-2x^5-5x^6-12x^7-13x^8-14x^9-17x^10-21x^11-32x^12-28x^13-36x^14)/(1-4x^3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006431

/-- `ogf((x+2x^2+3x^3+x^4-2x^5-5x^6-12x^7-13x^8-14x^9-17x^10-21x^11-32x^12-28x^13-36x^14)/(1-4x^3))` -/
def P9348080555869710420.Spec : Prop :=
  ∀ n, P9348080555869710420.a n = A006431 (n + 1)

theorem P9348080555869710420.correct : P9348080555869710420.Spec := by
  intro n
  simp only [A006431, Nat.add_sub_cancel]

end A006431

/-! ## A006431.P11850843393596959817

`Δ[A178419(A028310(n))]`
-/

namespace A006431.P11850843393596959817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006431.P11850843393596959817

namespace A006431

/-- `Δ[A178419(A028310(n))]` -/
def P11850843393596959817.Spec : Prop :=
  ∀ n, P11850843393596959817.a n = A006431 (n + 1)

end A006431

/-! ## A006431.P241875289666984421

`record[Δ[A178419(A005378(n))]]`
-/

namespace A006431.P241875289666984421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006431.P241875289666984421

namespace A006431

/-- `record[Δ[A178419(A005378(n))]]` -/
def P241875289666984421.Spec : Prop :=
  ∀ n, P241875289666984421.a n = A006431 (n + 1)

end A006431

/-! ## A006431.P16323044713309128560

`record[Δ[A178419(1-A000196(n)+n)]]`
-/

namespace A006431.P16323044713309128560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (1 - A000196 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006431.P16323044713309128560

namespace A006431

/-- `record[Δ[A178419(1-A000196(n)+n)]]` -/
def P16323044713309128560.Spec : Prop :=
  ∀ n, P16323044713309128560.a n = A006431 (n + 1)

end A006431

/-! ## A006431.P10532505411971742448

`record[Δ[A178419(1-(A000196(n)-n))]]`
-/

namespace A006431.P10532505411971742448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (1 - (A000196 n - (n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006431.P10532505411971742448

namespace A006431

/-- `record[Δ[A178419(1-(A000196(n)-n))]]` -/
def P10532505411971742448.Spec : Prop :=
  ∀ n, P10532505411971742448.a n = A006431 (n + 1)

end A006431

/-! ## A006431.P6184482826944003076

`A178419(n+1)-A178419(A028310(n))`
-/

namespace A006431.P6184482826944003076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (n + 1) - A178419 (A028310 n).toNat

end

end A006431.P6184482826944003076

namespace A006431

/-- `A178419(n+1)-A178419(A028310(n))` -/
def P6184482826944003076.Spec : Prop :=
  ∀ n, P6184482826944003076.a n = A006431 (n + 1)

end A006431

/-! ## A006431.P13668692902906039208

`Δ[A178419(A007318(A000124(n)))]`
-/

namespace A006431.P13668692902906039208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178419 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006431.P13668692902906039208

namespace A006431

/-- `Δ[A178419(A007318(A000124(n)))]` -/
def P13668692902906039208.Spec : Prop :=
  ∀ n, P13668692902906039208.a n = A006431 (n + 1)

end A006431

/-!
# A006432: Number of tree-rooted planar maps with 3 vertices and n faces and no isthmuses.

The programs for A006432, there is no canonical definition to state claims against.
-/

/-! ## A006432.P1902557872397572741

`A342987(∑[n+3])`
-/

namespace A006432.P1902557872397572741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006432.P1902557872397572741

/-! ## A006432.P13582191453743672400

`ceil(sin(n)²)*A342987(A055999(n)+3)`
-/

namespace A006432.P13582191453743672400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A342987 (A055999 n + 3).toNat

end

end A006432.P13582191453743672400

/-! ## A006432.P17014751015866615295

`record[A342987(A027379(A028242(n)))]`
-/

namespace A006432.P17014751015866615295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006432.P17014751015866615295

/-! ## A006432.P16732397573174734058

`record[A342987(A027379(A057979(n)))]`
-/

namespace A006432.P16732397573174734058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A027379 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006432.P16732397573174734058

/-! ## A006432.P8866575347375876052

`record[A342987(A027379(A142150(n)))]`
-/

namespace A006432.P8866575347375876052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A027379 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006432.P8866575347375876052

/-!
# A006433: Number of tree-rooted planar maps with 4 vertices and n faces and no isthmuses.

The programs for A006433, there is no canonical definition to state claims against.
-/

/-! ## A006433.P9793159201088649709

`A342987(∑[n+3]+n+3)`
-/

namespace A006433.P9793159201088649709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A006433.P9793159201088649709

/-!
# A006442: Expansion of 1/sqrt(1 - 10*x + x^2).

The programs for A006442, the canonical program `A006442.P1680614881061171446` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006442 has offset 0).

The definition of A006442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006442.P1680614881061171446

`∑{#}[n, 2^#*C(n, #)*C(n+#, #)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006442

/-- `∑{#}[n, 2^#*C(n, #)*C(n+#, #)]` -/
def P1680614881061171446.Spec : Prop :=
  ∀ n, (P1680614881061171446.a n : ℤ) = A006442 n

theorem P1680614881061171446.correct : P1680614881061171446.Spec := by
  intro n
  simp only [A006442]

end A006442

/-! ## A006442.P9172229419538539498

`∑{#}[n, C(n, #)²*2^#*3^(n-#)]`
-/

namespace A006442.P9172229419538539498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ 2 * 2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A006442.P9172229419538539498

namespace A006442

/-- `∑{#}[n, C(n, #)²*2^#*3^(n-#)]` -/
def P9172229419538539498.Spec : Prop :=
  ∀ n, P9172229419538539498.a n = (A006442 n : ℚ)

end A006442

/-! ## A006442.P10211944477068771062

`(1/2)^n*A098270(n)`
-/

namespace A006442.P10211944477068771062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2) ^ n * (A098270 n : ℚ)

end

end A006442.P10211944477068771062

namespace A006442

/-- `(1/2)^n*A098270(n)` -/
def P10211944477068771062.Spec : Prop :=
  ∀ n, P10211944477068771062.a n = (A006442 n : ℚ)

end A006442

/-! ## A006442.P5692117122881800828

`A098270(n)/2^n`
-/

namespace A006442.P5692117122881800828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098270 n : ℚ) / (2 ^ n : ℚ)

end

end A006442.P5692117122881800828

namespace A006442

/-- `A098270(n)/2^n` -/
def P5692117122881800828.Spec : Prop :=
  ∀ n, P5692117122881800828.a n = (A006442 n : ℚ)

end A006442

/-! ## A006442.P12800171162891286776

`floor(A098270(n)/A000079(n))`
-/

namespace A006442.P12800171162891286776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098270 n : ℚ) / (A000079 n : ℚ)⌋

end

end A006442.P12800171162891286776

namespace A006442

/-- `floor(A098270(n)/A000079(n))` -/
def P12800171162891286776.Spec : Prop :=
  ∀ n, P12800171162891286776.a n = A006442 n

end A006442

/-! ## A006442.P18441561853836868030

`A121574(∑[4*n])`
-/

namespace A006442.P18441561853836868030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006442.P18441561853836868030

namespace A006442

/-- `A121574(∑[4*n])` -/
def P18441561853836868030.Spec : Prop :=
  ∀ n, P18441561853836868030.a n = A006442 n

end A006442

/-! ## A006442.P8368102736981255787

`A335333(∑[n+3])`
-/

namespace A006442.P8368102736981255787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006442.P8368102736981255787

namespace A006442

/-- `A335333(∑[n+3])` -/
def P8368102736981255787.Spec : Prop :=
  ∀ n, P8368102736981255787.a n = A006442 n

end A006442

/-! ## A006442.P11612310079394784257

`record[A335333(A027379(A008611(n)))]`
-/

namespace A006442.P11612310079394784257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006442.P11612310079394784257

namespace A006442

/-- `record[A335333(A027379(A008611(n)))]` -/
def P11612310079394784257.Spec : Prop :=
  ∀ n, P11612310079394784257.a n = A006442 n

end A006442

/-! ## A006442.P6081514105485212257

`record[A335333(A027379(A053186(n)))]`
-/

namespace A006442.P6081514105485212257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A027379 (A053186 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006442.P6081514105485212257

namespace A006442

/-- `record[A335333(A027379(A053186(n)))]` -/
def P6081514105485212257.Spec : Prop :=
  ∀ n, P6081514105485212257.a n = A006442 n

end A006442

/-! ## A006442.P1318527227659722211

`sqrt(A243943(n))`
-/

namespace A006442.P1318527227659722211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243943 n : ℝ)

end

end A006442.P1318527227659722211

namespace A006442

/-- `sqrt(A243943(n))` -/
def P1318527227659722211.Spec : Prop :=
  ∀ n, P1318527227659722211.a n = (A006442 n : ℝ)

end A006442

/-!
# A006443: Number of achiral planar maps with n edges.

The programs for A006443, there is no canonical definition to state claims against.
-/

/-! ## A006443.P4558797505030967912

`2*A006385(n)-A006384(n)`
-/

namespace A006443.P4558797505030967912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006385 n - A006384 n

end

end A006443.P4558797505030967912

/-! ## A006443.P6402087179259427955

`A380234(∑[A110654(n)])`
-/

namespace A006443.P6402087179259427955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006443.P6402087179259427955

/-! ## A006443.P16081502327859286022

`A380234(A002620(n+1))`
-/

namespace A006443.P16081502327859286022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380234 (A002620 (n + 1)).toNat

end

end A006443.P16081502327859286022

/-! ## A006443.P5633811528698510777

`A380234(eq[0, A055087(n)])`
-/

namespace A006443.P5633811528698510777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006443.P5633811528698510777

/-! ## A006443.P4181211996498292896

`A380234(lt[A055087(n), 1])`
-/

namespace A006443.P4181211996498292896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380234 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A006443.P4181211996498292896

/-!
# A006446: Numbers k such that floor(sqrt(k)) divides k.

The programs for A006446, the canonical program `A006446.P8207881238257435495` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006446 has offset 1).

The definition of A006446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006446.P8207881238257435495

`floor((n+2)/3)*(floor((n+1)/3)+1)+floor((n+3)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006446

/-- `floor((n+2)/3)*(floor((n+1)/3)+1)+floor((n+3)/3)` -/
def P8207881238257435495.Spec : Prop :=
  ∀ n, P8207881238257435495.a n = A006446 (n + 1)

theorem P8207881238257435495.correct : P8207881238257435495.Spec := by
  intro n
  simp only [A006446, Nat.add_sub_cancel]

end A006446

/-! ## A006446.P12507911237278951708

`∑[∑[char[3*n]]^(n²%3)]`
-/

namespace A006446.P12507911237278951708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P12507911237278951708

namespace A006446

/-- `∑[∑[char[3*n]]^(n²%3)]` -/
def P12507911237278951708.Spec : Prop :=
  ∀ n, (P12507911237278951708.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P9727340076230755708

`(∑[2-gcd(3, n)]+2)*∑[char[3*n]]`
-/

namespace A006446.P9727340076230755708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A006446.P9727340076230755708

namespace A006446

/-- `(∑[2-gcd(3, n)]+2)*∑[char[3*n]]` -/
def P9727340076230755708.Spec : Prop :=
  ∀ n, P9727340076230755708.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P8865118854969420893

`∪[(n+1)², a(n-2)+n+2]` with `a(0)=2, a(1)=3`
-/

namespace A006446.P8865118854969420893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 2) + (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A006446.P8865118854969420893

namespace A006446

/-- `∪[(n+1)², a(n-2)+n+2]` -/
def P8865118854969420893.Spec : Prop :=
  ∀ n, (P8865118854969420893.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P3675608156980132438

`a(n-1)+gcd(floor(n/3)+1, a(n-1))` with `a(0)=1`
-/

namespace A006446.P3675608156980132438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd (⌊(n : ℚ) / 3⌋ + 1) (a (n - 1) : ℤ)

end

end A006446.P3675608156980132438

namespace A006446

/-- `a(n-1)+gcd(floor(n/3)+1, a(n-1))` -/
def P3675608156980132438.Spec : Prop :=
  ∀ n, (P3675608156980132438.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P3777456687226851586

`∑[abs(∑[A122918(n)])]`
-/

namespace A006446.P3777456687226851586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P3777456687226851586

namespace A006446

/-- `∑[abs(∑[A122918(n)])]` -/
def P3777456687226851586.Spec : Prop :=
  ∀ n, P3777456687226851586.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P5501611144400567440

`∑[lcm(2, A138189(n))/2]`
-/

namespace A006446.P5501611144400567440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A138189 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P5501611144400567440

namespace A006446

/-- `∑[lcm(2, A138189(n))/2]` -/
def P5501611144400567440.Spec : Prop :=
  ∀ n, P5501611144400567440.a n = (A006446 (n + 1) : ℚ)

end A006446

/-! ## A006446.P1362296405173538421

`∪[(n+1)², A035106(n+1)]`
-/

namespace A006446.P1362296405173538421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006446.P1362296405173538421

namespace A006446

/-- `∪[(n+1)², A035106(n+1)]` -/
def P1362296405173538421.Spec : Prop :=
  ∀ n, (P1362296405173538421.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P1918105180045433639

`∑[A152271(A004396(n))]`
-/

namespace A006446.P1918105180045433639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P1918105180045433639

namespace A006446

/-- `∑[A152271(A004396(n))]` -/
def P1918105180045433639.Spec : Prop :=
  ∀ n, P1918105180045433639.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P9757244370653150893

`∑[A004526(A102899(n))+1]`
-/

namespace A006446.P9757244370653150893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102899 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P9757244370653150893

namespace A006446

/-- `∑[A004526(A102899(n))+1]` -/
def P9757244370653150893.Spec : Prop :=
  ∀ n, P9757244370653150893.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P6367391376903726960

`∑[A008620(n-A088439(n))]`
-/

namespace A006446.P6367391376903726960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) - A088439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P6367391376903726960

namespace A006446

/-- `∑[A008620(n-A088439(n))]` -/
def P6367391376903726960.Spec : Prop :=
  ∀ n, P6367391376903726960.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P7884305462006997289

`A008620(n)*A194960(n+1)`
-/

namespace A006446.P7884305462006997289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A194960 (n + 1)

end

end A006446.P7884305462006997289

namespace A006446

/-- `A008620(n)*A194960(n+1)` -/
def P7884305462006997289.Spec : Prop :=
  ∀ n, P7884305462006997289.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P3126951129095691900

`∑[A152271(n-A002264(n+1))]`
-/

namespace A006446.P3126951129095691900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 ((n : ℤ) - A002264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P3126951129095691900

namespace A006446

/-- `∑[A152271(n-A002264(n+1))]` -/
def P3126951129095691900.Spec : Prop :=
  ∀ n, P3126951129095691900.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P8295012111414289444

`∑[A002264(n*A011655(n))+1]`
-/

namespace A006446.P8295012111414289444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n : ℤ) * A011655 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006446.P8295012111414289444

namespace A006446

/-- `∑[A002264(n*A011655(n))+1]` -/
def P8295012111414289444.Spec : Prop :=
  ∀ n, P8295012111414289444.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P5547473888253945138

`∪[A035106(n+1), A087811(n+1)]`
-/

namespace A006446.P5547473888253945138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006446.P5547473888253945138

namespace A006446

/-- `∪[A035106(n+1), A087811(n+1)]` -/
def P5547473888253945138.Spec : Prop :=
  ∀ n, (P5547473888253945138.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P4464011857505766711

`∪[A002522(n+1)+n, A135276(n+1)]`
-/

namespace A006446.P4464011857505766711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006446.P4464011857505766711

namespace A006446

/-- `∪[A002522(n+1)+n, A135276(n+1)]` -/
def P4464011857505766711.Spec : Prop :=
  ∀ n, (P4464011857505766711.a n : ℤ) = A006446 (n + 1)

end A006446

/-! ## A006446.P18226424256818818616

`(A011655(n)+A008620(n+1))*A008620(n)`
-/

namespace A006446.P18226424256818818616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + A008620 (n + 1)) * A008620 n

end

end A006446.P18226424256818818616

namespace A006446

/-- `(A011655(n)+A008620(n+1))*A008620(n)` -/
def P18226424256818818616.Spec : Prop :=
  ∀ n, P18226424256818818616.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P6419944547316758843

`(A057078(n)+A008611(n+1))*A194960(n+1)`
-/

namespace A006446.P6419944547316758843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 n + A008611 (n + 1)) * A194960 (n + 1)

end

end A006446.P6419944547316758843

namespace A006446

/-- `(A057078(n)+A008611(n+1))*A194960(n+1)` -/
def P6419944547316758843.Spec : Prop :=
  ∀ n, P6419944547316758843.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P17589726328066630682

`(A008611(n+1)-A049347(n+1))*A194960(n+1)`
-/

namespace A006446.P17589726328066630682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 (n + 1) - A049347 (n + 1)) * A194960 (n + 1)

end

end A006446.P17589726328066630682

namespace A006446

/-- `(A008611(n+1)-A049347(n+1))*A194960(n+1)` -/
def P17589726328066630682.Spec : Prop :=
  ∀ n, P17589726328066630682.a n = A006446 (n + 1)

end A006446

/-! ## A006446.P11461015285430485332

`eq[2, A119462(n)]`
-/

namespace A006446.P11461015285430485332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006446.P11461015285430485332

namespace A006446

/-- `eq[2, A119462(n)]` -/
def P11461015285430485332.Spec : Prop :=
  ∀ n, (P11461015285430485332.a n : ℤ) = A006446 (n + 1)

end A006446

/-!
# A006449: Row sums of Fibonacci-Pascal triangle in A045995.

The programs for A006449, there is no canonical definition to state claims against.
-/

/-! ## A006449.P3009741992755371086

`∑{#}[n, A000045(C(n, #))]`
-/

namespace A006449.P3009741992755371086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000045 (Nat.choose n k)

end

end A006449.P3009741992755371086

/-! ## A006449.P12952923003368184109

`A328607(∑[abs(1-n)!])`
-/

namespace A006449.P12952923003368184109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006449.P12952923003368184109

/-!
# A006450: Prime-indexed primes: primes with prime subscripts.

The programs for A006450, the canonical program `A006450.P16445646407241112379` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006450 has offset 1).

The definition of A006450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006450.P16445646407241112379

`A000040(A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006450

/-- `A000040(A000040(n+1))` -/
def P16445646407241112379.Spec : Prop :=
  ∀ n, P16445646407241112379.a n = A006450 (n + 1)

theorem P16445646407241112379.correct : P16445646407241112379.Spec := by
  intro n
  simp only [A006450, Nat.add_sub_cancel]

end A006450

/-! ## A006450.P6584910379929913100

`sqrt(A092769(n+1))`
-/

namespace A006450.P6584910379929913100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ)

end

end A006450.P6584910379929913100

namespace A006450

/-- `sqrt(A092769(n+1))` -/
def P6584910379929913100.Spec : Prop :=
  ∀ n, P6584910379929913100.a n = (A006450 (n + 1) : ℝ)

end A006450

/-! ## A006450.P7474333172411337953

`A141138(n+1)+1`
-/

namespace A006450.P7474333172411337953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) + 1

end

end A006450.P7474333172411337953

namespace A006450

/-- `A141138(n+1)+1` -/
def P7474333172411337953.Spec : Prop :=
  ∀ n, P7474333172411337953.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P872718665348376013

`ceil(sqrt(A092771(n+1)))`
-/

namespace A006450.P872718665348376013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A092771 (n + 1) : ℝ)⌉

end

end A006450.P872718665348376013

namespace A006450

/-- `ceil(sqrt(A092771(n+1)))` -/
def P872718665348376013.Spec : Prop :=
  ∀ n, P872718665348376013.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P13042475980989377601

`A092770(n+1)^(1/3)`
-/

namespace A006450.P13042475980989377601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A092770 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A006450.P13042475980989377601

namespace A006450

/-- `A092770(n+1)^(1/3)` -/
def P13042475980989377601.Spec : Prop :=
  ∀ n, P13042475980989377601.a n = (A006450 (n + 1) : ℝ)

end A006450

/-! ## A006450.P4734090186167685195

`A262021(n+1)+1+n`
-/

namespace A006450.P4734090186167685195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

end

end A006450.P4734090186167685195

namespace A006450

/-- `A262021(n+1)+1+n` -/
def P4734090186167685195.Spec : Prop :=
  ∀ n, P4734090186167685195.a n = A006450 (n + 1)

theorem P4734090186167685195.correct : P4734090186167685195.Spec := by
  intro n
  simp only [A006450, Nat.add_sub_cancel, A006450.P4734090186167685195.a, A006450.P16445646407241112379.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A262021, A262021.P13700072325175955136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006450

/-! ## A006450.P8438021136529730797

`A080697(n+1)/(n+1)`
-/

namespace A006450.P8438021136529730797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080697 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006450.P8438021136529730797

namespace A006450

/-- `A080697(n+1)/(n+1)` -/
def P8438021136529730797.Spec : Prop :=
  ∀ n, P8438021136529730797.a n = (A006450 (n + 1) : ℚ)

end A006450

/-! ## A006450.P13956756829490141755

`A073131(n)+a(n-1)` with `a(0)=3`
-/

namespace A006450.P13956756829490141755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A073131 n + a (n - 1)

end

end A006450.P13956756829490141755

namespace A006450

/-- `A073131(n)+a(n-1)` -/
def P13956756829490141755.Spec : Prop :=
  ∀ n, P13956756829490141755.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P8446362665256747170

`A073136(n+1)-Δ[A007504(n)]`
-/

namespace A006450.P8446362665256747170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006450.P8446362665256747170

namespace A006450

/-- `A073136(n+1)-Δ[A007504(n)]` -/
def P8446362665256747170.Spec : Prop :=
  ∀ n, P8446362665256747170.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P18012415584756932103

`A092770(n+1)%A092771(n+1)`
-/

namespace A006450.P18012415584756932103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092770 (n + 1)) (A092771 (n + 1))

end

end A006450.P18012415584756932103

namespace A006450

/-- `A092770(n+1)%A092771(n+1)` -/
def P18012415584756932103.Spec : Prop :=
  ∀ n, P18012415584756932103.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P18122885452391911404

`gcd(A073065(n+1), A080697(n+1))`
-/

namespace A006450.P18122885452391911404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073065 (n + 1)) (A080697 (n + 1))

end

end A006450.P18122885452391911404

namespace A006450

/-- `gcd(A073065(n+1), A080697(n+1))` -/
def P18122885452391911404.Spec : Prop :=
  ∀ n, (P18122885452391911404.a n : ℤ) = A006450 (n + 1)

end A006450

/-! ## A006450.P13059639035477227972

`∪[A049090(n+1), A333353(n+1)]`
-/

namespace A006450.P13059639035477227972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006450.P13059639035477227972

namespace A006450

/-- `∪[A049090(n+1), A333353(n+1)]` -/
def P13059639035477227972.Spec : Prop :=
  ∀ n, (P13059639035477227972.a n : ℤ) = A006450 (n + 1)

end A006450

/-! ## A006450.P5389669542705572886

`A168152(n+1)+A008864(n+1)-1`
-/

namespace A006450.P5389669542705572886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (A008864 (n + 1) - 1)

end

end A006450.P5389669542705572886

namespace A006450

/-- `A168152(n+1)+A008864(n+1)-1` -/
def P5389669542705572886.Spec : Prop :=
  ∀ n, P5389669542705572886.a n = A006450 (n + 1)

theorem P5389669542705572886.correct : P5389669542705572886.Spec := by
  intro n
  simp only [A006450, Nat.add_sub_cancel, A006450.P5389669542705572886.a, A006450.P16445646407241112379.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A168152, A168152.P4567682893620914765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006450

/-! ## A006450.P5440156781610886704

`A168152(n+1)+A040976(n+1)+2`
-/

namespace A006450.P5440156781610886704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (A040976 (n + 1) + 2)

end

end A006450.P5440156781610886704

namespace A006450

/-- `A168152(n+1)+A040976(n+1)+2` -/
def P5440156781610886704.Spec : Prop :=
  ∀ n, P5440156781610886704.a n = A006450 (n + 1)

theorem P5440156781610886704.correct : P5440156781610886704.Spec := by
  intro n
  simp only [A006450, Nat.add_sub_cancel, A006450.P5440156781610886704.a, A006450.P16445646407241112379.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A168152, A168152.P4567682893620914765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006450

/-! ## A006450.P7532558182521020561

`A175247(n+2)`
-/

namespace A006450.P7532558182521020561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

end

end A006450.P7532558182521020561

namespace A006450

/-- `A175247(n+2)` -/
def P7532558182521020561.Spec : Prop :=
  ∀ n, P7532558182521020561.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P475178086014178769

`A302493(A024620(n+1))`
-/

namespace A006450.P475178086014178769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302493 (A024620 (n + 1)).toNat

end

end A006450.P475178086014178769

namespace A006450

/-- `A302493(A024620(n+1))` -/
def P475178086014178769.Spec : Prop :=
  ∀ n, P475178086014178769.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P1111625965296658371

`p?[A302596(n+1)]`
-/

namespace A006450.P1111625965296658371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006450.P1111625965296658371

namespace A006450

/-- `p?[A302596(n+1)]` -/
def P1111625965296658371.Spec : Prop :=
  ∀ n, P1111625965296658371.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P16788143328275791672

`p?[A302592(n+3)]`
-/

namespace A006450.P16788143328275791672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006450.P16788143328275791672

namespace A006450

/-- `p?[A302592(n+3)]` -/
def P16788143328275791672.Spec : Prop :=
  ∀ n, P16788143328275791672.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P13146102199914222776

`p?[A302590(n+1)]`
-/

namespace A006450.P13146102199914222776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006450.P13146102199914222776

namespace A006450

/-- `p?[A302590(n+1)]` -/
def P13146102199914222776.Spec : Prop :=
  ∀ n, P13146102199914222776.a n = A006450 (n + 1)

end A006450

/-! ## A006450.P5254357922343897775

`p?[A076610(n+1)]`
-/

namespace A006450.P5254357922343897775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006450.P5254357922343897775

namespace A006450

/-- `p?[A076610(n+1)]` -/
def P5254357922343897775.Spec : Prop :=
  ∀ n, P5254357922343897775.a n = A006450 (n + 1)

end A006450

/-!
# A006451: Numbers k such that k*(k+1)/2 + 1 is a square.

The programs for A006451, the canonical program `A006451.P9202226410721621247` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006451 has offset 0).

The definition of A006451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006451.P9202226410721621247

`6*a(n-2)-a(n-4)+2` with `a(0)=0, a(1)=2, a(2)=5, a(3)=15`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006451

/-- `6*a(n-2)-a(n-4)+2` -/
def P9202226410721621247.Spec : Prop :=
  ∀ n, P9202226410721621247.a n = A006451 n

theorem P9202226410721621247.correct : P9202226410721621247.Spec := by
  intro n
  simp only [A006451]

end A006451

/-! ## A006451.P6862009798691169715

`ogf((2x+3x^2-2x^3-x^4)/(1-x-6x^2+6x^3+x^4-x^5))`
-/

namespace A006451.P6862009798691169715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, -2, -1] [1, -1, -6, 6, 1, -1] n

end

end A006451.P6862009798691169715

namespace A006451

/-- `ogf((2x+3x^2-2x^3-x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P6862009798691169715.Spec : Prop :=
  ∀ n, P6862009798691169715.a n = A006451 n

end A006451

/-! ## A006451.P5892336678393610006

`A364319(n+1)-1`
-/

namespace A006451.P5892336678393610006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 (n + 1) - 1

end

end A006451.P5892336678393610006

namespace A006451

/-- `A364319(n+1)-1` -/
def P5892336678393610006.Spec : Prop :=
  ∀ n, P5892336678393610006.a n = A006451 n

end A006451

/-! ## A006451.P10773493364777684028

`∑[A097564(A047227(2*n+1))]-1`
-/

namespace A006451.P10773493364777684028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047227 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006451.P10773493364777684028

namespace A006451

/-- `∑[A097564(A047227(2*n+1))]-1` -/
def P10773493364777684028.Spec : Prop :=
  ∀ n, P10773493364777684028.a n = A006451 n

end A006451

/-! ## A006451.P4988533116625025309

`∑[A097564(A047246(2*(n+1)))]-1`
-/

namespace A006451.P4988533116625025309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047246 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006451.P4988533116625025309

namespace A006451

/-- `∑[A097564(A047246(2*(n+1)))]-1` -/
def P4988533116625025309.Spec : Prop :=
  ∀ n, P4988533116625025309.a n = A006451 n

end A006451

/-! ## A006451.P13134190873444803343

`A006452(n+1)+A216134(n)-A079496(n)`
-/

namespace A006451.P13134190873444803343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) + (A216134 n - A079496 n)

end

end A006451.P13134190873444803343

namespace A006451

/-- `A006452(n+1)+A216134(n)-A079496(n)` -/
def P13134190873444803343.Spec : Prop :=
  ∀ n, P13134190873444803343.a n = A006451 n

end A006451

/-! ## A006451.P1844868647257195851

`floor(A077446(n+1)/2)`
-/

namespace A006451.P1844868647257195851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077446 (n + 1) : ℚ) / 2⌋

end

end A006451.P1844868647257195851

namespace A006451

/-- `floor(A077446(n+1)/2)` -/
def P1844868647257195851.Spec : Prop :=
  ∀ n, P1844868647257195851.a n = A006451 n

end A006451

/-! ## A006451.P17493330748894855384

`(A154141(n+1)-1)/3`
-/

namespace A006451.P17493330748894855384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154141 (n + 1) - 1 : ℚ) / 3

end

end A006451.P17493330748894855384

namespace A006451

/-- `(A154141(n+1)-1)/3` -/
def P17493330748894855384.Spec : Prop :=
  ∀ n, P17493330748894855384.a n = (A006451 n : ℚ)

end A006451

/-! ## A006451.P3473271965885363280

`(A266505(∑[3/a(n-1)])-1)/2` with `a(0)=1`
-/

namespace A006451.P3473271965885363280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266505 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1 : ℚ) / 2

end

end A006451.P3473271965885363280

namespace A006451

/-- `(A266505(∑[3/a(n-1)])-1)/2` -/
def P3473271965885363280.Spec : Prop :=
  ∀ n, P3473271965885363280.a n = (A006451 n : ℚ)

end A006451

/-! ## A006451.P10346223792095812695

`A048739(n)-A079496(n)`
-/

namespace A006451.P10346223792095812695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - A079496 n

end

end A006451.P10346223792095812695

namespace A006451

/-- `A048739(n)-A079496(n)` -/
def P10346223792095812695.Spec : Prop :=
  ∀ n, P10346223792095812695.a n = A006451 n

end A006451

/-! ## A006451.P15612073087433482533

`∑[∑[A001333(n)]]-A079496(n)`
-/

namespace A006451.P15612073087433482533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079496 n

end

end A006451.P15612073087433482533

namespace A006451

/-- `∑[∑[A001333(n)]]-A079496(n)` -/
def P15612073087433482533.Spec : Prop :=
  ∀ n, P15612073087433482533.a n = A006451 n

end A006451

/-! ## A006451.P4075608785065352291

`(A266505(A042948(n+1))-1)/2`
-/

namespace A006451.P4075608785065352291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266505 (A042948 (n + 1)).toNat - 1 : ℚ) / 2

end

end A006451.P4075608785065352291

namespace A006451

/-- `(A266505(A042948(n+1))-1)/2` -/
def P4075608785065352291.Spec : Prop :=
  ∀ n, P4075608785065352291.a n = (A006451 n : ℚ)

end A006451

/-! ## A006451.P3092448711776242271

`(A266505(A338062(n+1))-1)/2`
-/

namespace A006451.P3092448711776242271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266505 (A338062 (n + 1)).toNat - 1 : ℚ) / 2

end

end A006451.P3092448711776242271

namespace A006451

/-- `(A266505(A338062(n+1))-1)/2` -/
def P3092448711776242271.Spec : Prop :=
  ∀ n, P3092448711776242271.a n = (A006451 n : ℚ)

end A006451

/-! ## A006451.P12351362777875599794

`A216134(n+1)-A006452(n+1)`
-/

namespace A006451.P12351362777875599794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (n + 1) - A006452 (n + 1)

end

end A006451.P12351362777875599794

namespace A006451

/-- `A216134(n+1)-A006452(n+1)` -/
def P12351362777875599794.Spec : Prop :=
  ∀ n, P12351362777875599794.a n = A006451 n

end A006451

/-! ## A006451.P9239171491750387623

`A154141(n+1)-A077446(n+1)`
-/

namespace A006451.P9239171491750387623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) - A077446 (n + 1)

end

end A006451.P9239171491750387623

namespace A006451

/-- `A154141(n+1)-A077446(n+1)` -/
def P9239171491750387623.Spec : Prop :=
  ∀ n, P9239171491750387623.a n = A006451 n

end A006451

/-! ## A006451.P13437073901725460309

`∑[A143609(n+1)]-A143609(n+1)`
-/

namespace A006451.P13437073901725460309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143609 (n + 1)

end

end A006451.P13437073901725460309

namespace A006451

/-- `∑[A143609(n+1)]-A143609(n+1)` -/
def P13437073901725460309.Spec : Prop :=
  ∀ n, P13437073901725460309.a n = A006451 n

end A006451

/-! ## A006451.P8521875141780304237

`A216134(n+1)-A216162(2*(n+1))`
-/

namespace A006451.P8521875141780304237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (n + 1) - A216162 (2 * (n + 1))

end

end A006451.P8521875141780304237

namespace A006451

/-- `A216134(n+1)-A216162(2*(n+1))` -/
def P8521875141780304237.Spec : Prop :=
  ∀ n, P8521875141780304237.a n = A006451 n

end A006451

/-! ## A006451.P1751193431357270522

`A124124(n+2)-2*A006452(n+1)`
-/

namespace A006451.P1751193431357270522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 2) - 2 * A006452 (n + 1)

end

end A006451.P1751193431357270522

namespace A006451

/-- `A124124(n+2)-2*A006452(n+1)` -/
def P1751193431357270522.Spec : Prop :=
  ∀ n, P1751193431357270522.a n = A006451 n

end A006451

/-! ## A006451.P15998716303827604327

`A216162(2*n+3)-A006452(n+1)`
-/

namespace A006451.P15998716303827604327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 3) - A006452 (n + 1)

end

end A006451.P15998716303827604327

namespace A006451

/-- `A216162(2*n+3)-A006452(n+1)` -/
def P15998716303827604327.Spec : Prop :=
  ∀ n, P15998716303827604327.a n = A006451 n

end A006451

/-! ## A006451.P11519916454554214280

`A216162(2*n+3)-A216162(2*(n+1))`
-/

namespace A006451.P11519916454554214280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 3) - A216162 (2 * (n + 1))

end

end A006451.P11519916454554214280

namespace A006451

/-- `A216162(2*n+3)-A216162(2*(n+1))` -/
def P11519916454554214280.Spec : Prop :=
  ∀ n, P11519916454554214280.a n = A006451 n

end A006451

/-!
# A006452: a(n) = 6*a(n-2) - a(n-4).

The programs for A006452, the canonical program `A006452.P10442096349668342578` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006452 has offset 0).

The definition of A006452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)-a(n-4)` (program `A006452.P10442096349668342578`, by `A006452.P10442096349668342578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006452.P10656232934215134952

`ogf((1+x-4x^2-2x^3)/(1-6x^2+x^4))`
-/

namespace A006452.P10656232934215134952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, -2] [1, 0, -6, 0, 1] n

end

end A006452.P10656232934215134952

namespace A006452

/-- `ogf((1+x-4x^2-2x^3)/(1-6x^2+x^4))` -/
def P10656232934215134952.Spec : Prop :=
  ∀ n, P10656232934215134952.a n = A006452 n

end A006452

/-! ## A006452.P10442096349668342578

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006452

/-- `6*a(n-2)-a(n-4)` -/
def P10442096349668342578.Spec : Prop :=
  ∀ n, P10442096349668342578.a n = A006452 n

theorem P10442096349668342578.correct : P10442096349668342578.Spec := by
  intro n
  simp only [A006452]

end A006452

/-! ## A006452.P6370457849009693655

`A216162(2*n)`
-/

namespace A006452.P6370457849009693655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n)

end

end A006452.P6370457849009693655

namespace A006452

/-- `A216162(2*n)` -/
def P6370457849009693655.Spec : Prop :=
  ∀ n, P6370457849009693655.a n = A006452 n

end A006452

/-! ## A006452.P12390614543671452433

`A084068(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A006452.P12390614543671452433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084068 (n - 1) + a (n - 1)

end

end A006452.P12390614543671452433

namespace A006452

/-- `A084068(n-1)+a(n-1)` -/
def P12390614543671452433.Spec : Prop :=
  ∀ n, P12390614543671452433.a n = A006452 n

end A006452

/-! ## A006452.P6029564461604325367

`A266504(A042948(n))/2`
-/

namespace A006452.P6029564461604325367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A042948 n).toNat : ℚ) / 2

end

end A006452.P6029564461604325367

namespace A006452

/-- `A266504(A042948(n))/2` -/
def P6029564461604325367.Spec : Prop :=
  ∀ n, P6029564461604325367.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P2484218321142353306

`A266506(A047467(n+1))/2`
-/

namespace A006452.P2484218321142353306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266506 (A047467 (n + 1)).toNat : ℚ) / 2

end

end A006452.P2484218321142353306

namespace A006452

/-- `A266506(A047467(n+1))/2` -/
def P2484218321142353306.Spec : Prop :=
  ∀ n, P2484218321142353306.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P11443892412995553150

`A266504(A080412(2*n))/2`
-/

namespace A006452.P11443892412995553150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A080412 (2 * n)).toNat : ℚ) / 2

end

end A006452.P11443892412995553150

namespace A006452

/-- `A266504(A080412(2*n))/2` -/
def P11443892412995553150.Spec : Prop :=
  ∀ n, P11443892412995553150.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P16912489368724324918

`A143609(n+1)-A077241(n)`
-/

namespace A006452.P16912489368724324918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - A077241 n

end

end A006452.P16912489368724324918

namespace A006452

/-- `A143609(n+1)-A077241(n)` -/
def P16912489368724324918.Spec : Prop :=
  ∀ n, P16912489368724324918.a n = A006452 n

end A006452

/-! ## A006452.P1092940978041752746

`A124124(n+1)-A216134(n)`
-/

namespace A006452.P1092940978041752746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 1) - A216134 n

end

end A006452.P1092940978041752746

namespace A006452

/-- `A124124(n+1)-A216134(n)` -/
def P1092940978041752746.Spec : Prop :=
  ∀ n, P1092940978041752746.a n = A006452 n

end A006452

/-! ## A006452.P5341479572654736070

`A216134(n)+1-A364319(n)`
-/

namespace A006452.P5341479572654736070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + (1 - A364319 n)

end

end A006452.P5341479572654736070

namespace A006452

/-- `A216134(n)+1-A364319(n)` -/
def P5341479572654736070.Spec : Prop :=
  ∀ n, P5341479572654736070.a n = A006452 n

end A006452

/-! ## A006452.P17381631223657783223

`A266504(eq[n, A266491(n)])/2`
-/

namespace A006452.P17381631223657783223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A006452.P17381631223657783223

namespace A006452

/-- `A266504(eq[n, A266491(n)])/2` -/
def P17381631223657783223.Spec : Prop :=
  ∀ n, P17381631223657783223.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P10280130676263090850

`A266506(A047471(n+1)-1)/2`
-/

namespace A006452.P10280130676263090850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266506 (A047471 (n + 1) - 1).toNat : ℚ) / 2

end

end A006452.P10280130676263090850

namespace A006452

/-- `A266506(A047471(n+1)-1)/2` -/
def P10280130676263090850.Spec : Prop :=
  ∀ n, P10280130676263090850.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P12093192347690575269

`A266504(A042964(n+1)-2)/2`
-/

namespace A006452.P12093192347690575269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A042964 (n + 1) - 2).toNat : ℚ) / 2

end

end A006452.P12093192347690575269

namespace A006452

/-- `A266504(A042964(n+1)-2)/2` -/
def P12093192347690575269.Spec : Prop :=
  ∀ n, P12093192347690575269.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P7868500259825888577

`A266504(A338064(n+1)-2)/2`
-/

namespace A006452.P7868500259825888577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A338064 (n + 1) - 2).toNat : ℚ) / 2

end

end A006452.P7868500259825888577

namespace A006452

/-- `A266504(A338064(n+1)-2)/2` -/
def P7868500259825888577.Spec : Prop :=
  ∀ n, P7868500259825888577.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P9096924857198129129

`A156066(n+1)-A084068(n+1)`
-/

namespace A006452.P9096924857198129129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156066 (n + 1) - A084068 (n + 1)

end

end A006452.P9096924857198129129

namespace A006452

/-- `A156066(n+1)-A084068(n+1)` -/
def P9096924857198129129.Spec : Prop :=
  ∀ n, P9096924857198129129.a n = A006452 n

end A006452

/-! ## A006452.P4966992814176731343

`A000129(n+2)-A276599(n+1)`
-/

namespace A006452.P4966992814176731343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A276599 (n + 1)

end

end A006452.P4966992814176731343

namespace A006452

/-- `A000129(n+2)-A276599(n+1)` -/
def P4966992814176731343.Spec : Prop :=
  ∀ n, P4966992814176731343.a n = A006452 n

end A006452

/-! ## A006452.P2826054374988485724

`(A077443(n+1)-A077442(n))/2`
-/

namespace A006452.P2826054374988485724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077443 (n + 1) - A077442 n : ℚ) / 2

end

end A006452.P2826054374988485724

namespace A006452

/-- `(A077443(n+1)-A077442(n))/2` -/
def P2826054374988485724.Spec : Prop :=
  ∀ n, P2826054374988485724.a n = (A006452 n : ℚ)

end A006452

/-! ## A006452.P5837336729873210022

`Δ[A276599(n+1)]-(A276599(n+1)+A079496(n))`
-/

namespace A006452.P5837336729873210022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A276599 (n + 1) + A079496 n)

end

end A006452.P5837336729873210022

namespace A006452

/-- `Δ[A276599(n+1)]-(A276599(n+1)+A079496(n))` -/
def P5837336729873210022.Spec : Prop :=
  ∀ n, P5837336729873210022.a n = A006452 n

end A006452

/-! ## A006452.P2965353523992567794

`A216162(n+n)^A004736(∑[n+1])`
-/

namespace A006452.P2965353523992567794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216162 (n + n) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A006452.P2965353523992567794

namespace A006452

/-- `A216162(n+n)^A004736(∑[n+1])` -/
def P2965353523992567794.Spec : Prop :=
  ∀ n, P2965353523992567794.a n = (A006452 n : ℚ)

end A006452

/-!
# A006454: Solution to a Diophantine equation: each term is a triangular number and each term + 1 is a square.

The programs for A006454, the canonical program `A006454.P4959451986391486644` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006454 has offset 0).

The definition of A006454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006454.P7435749778416078167

`ogf((3x+12x^2+3x^3)/(1-x-34x^2+34x^3+x^4-x^5))`
-/

namespace A006454.P7435749778416078167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 12, 3] [1, -1, -34, 34, 1, -1] n

end

end A006454.P7435749778416078167

namespace A006454

/-- `ogf((3x+12x^2+3x^3)/(1-x-34x^2+34x^3+x^4-x^5))` -/
def P7435749778416078167.Spec : Prop :=
  ∀ n, P7435749778416078167.a n = A006454 n

end A006454

/-! ## A006454.P4959451986391486644

`a(n-1)+34*a(n-2)-34*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=120, a(4)=528`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006454

/-- `a(n-1)+34*a(n-2)-34*a(n-3)-a(n-4)+a(n-5)` -/
def P4959451986391486644.Spec : Prop :=
  ∀ n, P4959451986391486644.a n = A006454 n

theorem P4959451986391486644.correct : P4959451986391486644.Spec := by
  intro n
  simp only [A006454]

end A006454

/-! ## A006454.P12585819381835202640

`A006451(n)*(A006451(n)+1)/2`
-/

namespace A006454.P12585819381835202640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006451 n * (A006451 n + 1) : ℚ) / 2

end

end A006454.P12585819381835202640

namespace A006454

/-- `A006451(n)*(A006451(n)+1)/2` -/
def P12585819381835202640.Spec : Prop :=
  ∀ n, P12585819381835202640.a n = (A006454 n : ℚ)

end A006454

/-! ## A006454.P8765548813955124962

`A217278(Δ[n²])`
-/

namespace A006454.P8765548813955124962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006454.P8765548813955124962

namespace A006454

/-- `A217278(Δ[n²])` -/
def P8765548813955124962.Spec : Prop :=
  ∀ n, P8765548813955124962.a n = A006454 n

end A006454

/-! ## A006454.P5975940351261870843

`A306561(n+1)-1`
-/

namespace A006454.P5975940351261870843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306561 (n + 1) - 1

end

end A006454.P5975940351261870843

namespace A006454

/-- `A306561(n+1)-1` -/
def P5975940351261870843.Spec : Prop :=
  ∀ n, P5975940351261870843.a n = A006454 n

end A006454

/-! ## A006454.P1331756222916711181

`C(A006451(n)+1, 2)`
-/

namespace A006454.P1331756222916711181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006451 n + 1).toNat 2

end

end A006454.P1331756222916711181

namespace A006454

/-- `C(A006451(n)+1, 2)` -/
def P1331756222916711181.Spec : Prop :=
  ∀ n, (P1331756222916711181.a n : ℤ) = A006454 n

end A006454

/-! ## A006454.P4726937194330346895

`C(A364319(n+1), 2)`
-/

namespace A006454.P4726937194330346895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A364319 (n + 1)).toNat 2

end

end A006454.P4726937194330346895

namespace A006454

/-- `C(A364319(n+1), 2)` -/
def P4726937194330346895.Spec : Prop :=
  ∀ n, (P4726937194330346895.a n : ℤ) = A006454 n

end A006454

/-! ## A006454.P13347577785842935118

`A006452(n+1)²-1`
-/

namespace A006454.P13347577785842935118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) ^ 2 - 1

end

end A006454.P13347577785842935118

namespace A006454

/-- `A006452(n+1)²-1` -/
def P13347577785842935118.Spec : Prop :=
  ∀ n, P13347577785842935118.a n = A006454 n

end A006454

/-! ## A006454.P5636700838428620551

`record[n%2*A217278(n)]`
-/

namespace A006454.P5636700838428620551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A217278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006454.P5636700838428620551

namespace A006454

/-- `record[n%2*A217278(n)]` -/
def P5636700838428620551.Spec : Prop :=
  ∀ n, P5636700838428620551.a n = A006454 n

end A006454

/-! ## A006454.P18070353625161450033

`Δ[∑[A006452(n)²]-n]`
-/

namespace A006454.P18070353625161450033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006454.P18070353625161450033

namespace A006454

/-- `Δ[∑[A006452(n)²]-n]` -/
def P18070353625161450033.Spec : Prop :=
  ∀ n, P18070353625161450033.a n = A006454 n

end A006454

/-! ## A006454.P2468315077690111301

`lcm(3, A217278(2*n+1))`
-/

namespace A006454.P2468315077690111301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A217278 (2 * n + 1))

end

end A006454.P2468315077690111301

namespace A006454

/-- `lcm(3, A217278(2*n+1))` -/
def P2468315077690111301.Spec : Prop :=
  ∀ n, (P2468315077690111301.a n : ℤ) = A006454 n

end A006454

/-! ## A006454.P10486582684515086322

`(A217975(n+1)/2)²-1`
-/

namespace A006454.P10486582684515086322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A217975 (n + 1) : ℚ) / 2) ^ 2 - 1

end

end A006454.P10486582684515086322

namespace A006454

/-- `(A217975(n+1)/2)²-1` -/
def P10486582684515086322.Spec : Prop :=
  ∀ n, P10486582684515086322.a n = (A006454 n : ℚ)

end A006454

/-! ## A006454.P4035840832455790567

`A182334(A114119(n))`
-/

namespace A006454.P4035840832455790567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182334 (A114119 n).toNat

end

end A006454.P4035840832455790567

namespace A006454

/-- `A182334(A114119(n))` -/
def P4035840832455790567.Spec : Prop :=
  ∀ n, P4035840832455790567.a n = A006454 n

end A006454

/-! ## A006454.P11871645536919916567

`record[A217278(A026741(n))]`
-/

namespace A006454.P11871645536919916567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006454.P11871645536919916567

namespace A006454

/-- `record[A217278(A026741(n))]` -/
def P11871645536919916567.Spec : Prop :=
  ∀ n, P11871645536919916567.a n = A006454 n

end A006454

/-! ## A006454.P11282927421796062553

`A299921(A007494(n+1))-1`
-/

namespace A006454.P11282927421796062553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299921 (A007494 (n + 1)).toNat - 1

end

end A006454.P11282927421796062553

namespace A006454

/-- `A299921(A007494(n+1))-1` -/
def P11282927421796062553.Spec : Prop :=
  ∀ n, P11282927421796062553.a n = A006454 n

end A006454

/-! ## A006454.P7285602727141969836

`A299921(A294732(n+3))-1`
-/

namespace A006454.P7285602727141969836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299921 (A294732 (n + 3)).toNat - 1

end

end A006454.P7285602727141969836

namespace A006454

/-- `A299921(A294732(n+3))-1` -/
def P7285602727141969836.Spec : Prop :=
  ∀ n, P7285602727141969836.a n = A006454 n

end A006454

/-! ## A006454.P8133434407217552363

`A216162(A004277(n+1))²-1`
-/

namespace A006454.P8133434407217552363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A004277 (n + 1)).toNat ^ 2 - 1

end

end A006454.P8133434407217552363

namespace A006454

/-- `A216162(A004277(n+1))²-1` -/
def P8133434407217552363.Spec : Prop :=
  ∀ n, P8133434407217552363.a n = A006454 n

end A006454

/-! ## A006454.P10621710957427988160

`A216162(A005843(n+1))²-1`
-/

namespace A006454.P10621710957427988160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A005843 (n + 1)).toNat ^ 2 - 1

end

end A006454.P10621710957427988160

namespace A006454

/-- `A216162(A005843(n+1))²-1` -/
def P10621710957427988160.Spec : Prop :=
  ∀ n, P10621710957427988160.a n = A006454 n

end A006454

/-! ## A006454.P16413501000251843572

`(A077443(n+1)-A156066(n+1))²-1`
-/

namespace A006454.P16413501000251843572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077443 (n + 1) - A156066 (n + 1)) ^ 2 - 1

end

end A006454.P16413501000251843572

namespace A006454

/-- `(A077443(n+1)-A156066(n+1))²-1` -/
def P16413501000251843572.Spec : Prop :=
  ∀ n, P16413501000251843572.a n = A006454 n

end A006454

/-! ## A006454.P9138419332850489018

`A217278(2*n+3)%A001109(n+1)`
-/

namespace A006454.P9138419332850489018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217278 (2 * n + 3)) (A001109 (n + 1))

end

end A006454.P9138419332850489018

namespace A006454

/-- `A217278(2*n+3)%A001109(n+1)` -/
def P9138419332850489018.Spec : Prop :=
  ∀ n, P9138419332850489018.a n = A006454 n

end A006454

/-!
# A006455: Number of partial orders on {1,2,...,n} that are contained in the usual linear order (i.e., xRy => x<y).

The programs for A006455, there is no canonical definition to state claims against.
-/

/-! ## A006455.P8045826146115393010

`A028441(A030791(n+1)+A028382(n))`
-/

namespace A006455.P8045826146115393010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028441 (A030791 (n + 1) + A028382 n).toNat

end

end A006455.P8045826146115393010

/-! ## A006455.P13815946089615270780

`floor(sqrt(sqrt(A147154(3*n+1))))`
-/

namespace A006455.P13815946089615270780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A147154 (3 * n + 1) : ℝ))⌋

end

end A006455.P13815946089615270780

/-!
# A006456: Number of compositions (ordered partitions) of n into squares.

The programs for A006456, there is no canonical definition to state claims against.
-/

/-! ## A006456.P14410927141962599100

`∑[A303909(n)]`
-/

namespace A006456.P14410927141962599100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006456.P14410927141962599100

/-! ## A006456.P12464074039693772167

`A339419(n)+A339418(n)`
-/

namespace A006456.P12464074039693772167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339419 n + A339418 n

end

end A006456.P12464074039693772167

/-! ## A006456.P11154317349915483629

`A317665(n)+2*A339419(n)`
-/

namespace A006456.P11154317349915483629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317665 n + 2 * A339419 n

end

end A006456.P11154317349915483629

/-! ## A006456.P5783572060021848278

`2*A339418(n)-A317665(n)`
-/

namespace A006456.P5783572060021848278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339418 n - A317665 n

end

end A006456.P5783572060021848278

/-! ## A006456.P14195042424460704950

`A303909(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A006456.P14195042424460704950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303909 n + a (A023443 n).toNat

end

end A006456.P14195042424460704950

/-! ## A006456.P1311877732712095181

`abs(Δ[A303667(abs(1-n))])`
-/

namespace A006456.P1311877732712095181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006456.P1311877732712095181

/-! ## A006456.P12115060170057720137

`Δ[A303667(n)]-A303909(n+1)`
-/

namespace A006456.P12115060170057720137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303909 (n + 1)

end

end A006456.P12115060170057720137

/-! ## A006456.P7954584708226956108

`Δ[A303667(n)-A303909(n)]-A303909(n)`
-/

namespace A006456.P7954584708226956108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 n - A303909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A303909 n

end

end A006456.P7954584708226956108

/-! ## A006456.P12117637178661719383

`A303667(n+1)-(A303909(n+1)+A303667(n))`
-/

namespace A006456.P12117637178661719383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303667 (n + 1) - (A303909 (n + 1) + A303667 n)

end

end A006456.P12117637178661719383

/-!
# A006457: Number of elements in Z[ i ] whose 'smallest algorithm' is <= n.

The programs for A006457, the canonical program `A006457.P17964235660098232261` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006457 has offset 0).

The definition of A006457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006457.P17964235660098232261

`∑[∑[A107659(n)]-A000225(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006457

/-- `∑[∑[A107659(n)]-A000225(n)]` -/
def P17964235660098232261.Spec : Prop :=
  ∀ n, P17964235660098232261.a n = A006457 n

theorem P17964235660098232261.correct : P17964235660098232261.Spec := by
  intro n
  simp only [A006457]

end A006457

/-! ## A006457.P7950852595804789275

`∑[∑[A107659(n)-A131577(n)]]`
-/

namespace A006457.P7950852595804789275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n - A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P7950852595804789275

namespace A006457

/-- `∑[∑[A107659(n)-A131577(n)]]` -/
def P7950852595804789275.Spec : Prop :=
  ∀ n, P7950852595804789275.a n = A006457 n

end A006457

/-! ## A006457.P9972345413472463274

`∑[A164285(n)-A010737(n+2)]`
-/

namespace A006457.P9972345413472463274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164285 n - A010737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P9972345413472463274

namespace A006457

/-- `∑[A164285(n)-A010737(n+2)]` -/
def P9972345413472463274.Spec : Prop :=
  ∀ n, P9972345413472463274.a n = A006457 n

end A006457

/-! ## A006457.P4148520756449086771

`∑[∑[A274230(n+1)+A083329(n)]]`
-/

namespace A006457.P4148520756449086771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 1) + A083329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P4148520756449086771

namespace A006457

/-- `∑[∑[A274230(n+1)+A083329(n)]]` -/
def P4148520756449086771.Spec : Prop :=
  ∀ n, P4148520756449086771.a n = A006457 n

end A006457

/-! ## A006457.P8450999136337955628

`∑[∑[A029750(4*n+3)-A029750(2*(n+1))]]`
-/

namespace A006457.P8450999136337955628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (4 * n + 3) - A029750 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P8450999136337955628

namespace A006457

/-- `∑[∑[A029750(4*n+3)-A029750(2*(n+1))]]` -/
def P8450999136337955628.Spec : Prop :=
  ∀ n, P8450999136337955628.a n = A006457 n

end A006457

/-!
# A006458: Number of elements in Z[ omega ] whose 'smallest algorithm' is <= n, where omega^2 = -omega - 1.

The programs for A006458, the canonical program `A006458.P5349862666223027070` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006458 has offset 0).

The definition of A006458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006458.P5349862666223027070

`ogf((1+2x+x^2+2x^4+6x^5)/(1-5x+5x^2+5x^3-4x^4-8x^5+6x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006458

/-- `ogf((1+2x+x^2+2x^4+6x^5)/(1-5x+5x^2+5x^3-4x^4-8x^5+6x^6))` -/
def P5349862666223027070.Spec : Prop :=
  ∀ n, P5349862666223027070.a n = A006458 n

theorem P5349862666223027070.correct : P5349862666223027070.Spec := by
  intro n
  simp only [A006458]

end A006458

/-! ## A006458.P2209808852547611536

`A000069(A000302(n))-A056311(n+1)`
-/

namespace A006458.P2209808852547611536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A000302 n).toNat - A056311 (n + 1)

end

end A006458.P2209808852547611536

namespace A006458

/-- `A000069(A000302(n))-A056311(n+1)` -/
def P2209808852547611536.Spec : Prop :=
  ∀ n, P2209808852547611536.a n = A006458 n

end A006458

/-! ## A006458.P5533354320548344591

`A000069(A000302(n))-A056320(n+1)`
-/

namespace A006458.P5533354320548344591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A000302 n).toNat - A056320 (n + 1)

end

end A006458.P5533354320548344591

namespace A006458

/-- `A000069(A000302(n))-A056320(n+1)` -/
def P5533354320548344591.Spec : Prop :=
  ∀ n, P5533354320548344591.a n = A006458 n

end A006458

/-!
# A006459: Number of elements in Z[ sqrt(-2) ] whose 'smallest algorithm' is <= n.

The programs for A006459, there is no canonical definition to state claims against.
-/

/-! ## A006459.P8465843543298486159

`A134674(A128639(n))`
-/

namespace A006459.P8465843543298486159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134674 (A128639 n).toNat

end

end A006459.P8465843543298486159

/-! ## A006459.P4074976133773599812

`A316355(A121596(n))`
-/

namespace A006459.P4074976133773599812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A121596 n).toNat

end

end A006459.P4074976133773599812

/-! ## A006459.P9760337763837825242

`A001650(record[A128641(n)])`
-/

namespace A006459.P9760337763837825242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006459.P9760337763837825242

/-! ## A006459.P10666228181248821382

`A001650(A128641(2*n))`
-/

namespace A006459.P10666228181248821382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A128641 (2 * n)).toNat

end

end A006459.P10666228181248821382

/-!
# A006460: Image of n after 3k iterates of '3x+1' map (k large).

The programs for A006460, there is no canonical definition to state claims against.
-/

/-! ## A006460.P8011807595443929116

`2^(A006577(n+1)%3)`
-/

namespace A006460.P8011807595443929116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A006577 (n + 1)) 3 : ℤ)

end

end A006460.P8011807595443929116

/-! ## A006460.P1600158492317279903

`A069705(A006577(n+1))`
-/

namespace A006460.P1600158492317279903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A006577 (n + 1)).toNat

end

end A006460.P1600158492317279903

/-! ## A006460.P9676388434029751430

`A069705(A008908(n+1)-1)`
-/

namespace A006460.P9676388434029751430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A008908 (n + 1) - 1).toNat

end

end A006460.P9676388434029751430

/-! ## A006460.P1599370409783087677

`A153727(2*A006577(n+1))`
-/

namespace A006460.P1599370409783087677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (2 * A006577 (n + 1)).toNat

end

end A006460.P1599370409783087677

/-! ## A006460.P4801911250546159513

`A153727(2*A008908(n+1)+1)`
-/

namespace A006460.P4801911250546159513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (2 * A008908 (n + 1) + 1).toNat

end

end A006460.P4801911250546159513

/-! ## A006460.P91680823535237668

`A033478(2*(A008908(n+1)+4))`
-/

namespace A006460.P91680823535237668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (2 * (A008908 (n + 1) + 4)).toNat

end

end A006460.P91680823535237668

/-! ## A006460.P3747753217144597614

`A000079(A008908(n+1)-1)%7`
-/

namespace A006460.P3747753217144597614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A008908 (n + 1) - 1).toNat) 7

end

end A006460.P3747753217144597614

/-! ## A006460.P11739848134579850917

`A153727(A006577(n+1)+A006577(n+1))`
-/

namespace A006460.P11739848134579850917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (A006577 (n + 1) + A006577 (n + 1)).toNat

end

end A006460.P11739848134579850917

/-! ## A006460.P18253580221382845739

`gcd(A101278(A006577(n+1)), A165825(n+1))`
-/

namespace A006460.P18253580221382845739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101278 (A006577 (n + 1)).toNat) (A165825 (n + 1))

end

end A006460.P18253580221382845739

/-! ## A006460.P14697230217654909569

`A153727(A008908(n+1)+A008908(n+1)+1)`
-/

namespace A006460.P14697230217654909569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (A008908 (n + 1) + (A008908 (n + 1) + 1)).toNat

end

end A006460.P14697230217654909569

/-! ## A006460.P14634992805974761353

`2^(A008908(A006370(n+1))%3)`
-/

namespace A006460.P14634992805974761353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A008908 (A006370 (n + 1)).toNat) 3 : ℤ)

end

end A006460.P14634992805974761353

/-! ## A006460.P10115633355215770242

`A000079(A139399(4*(n+1)))%7`
-/

namespace A006460.P10115633355215770242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A139399 (4 * (n + 1))).toNat) 7

end

end A006460.P10115633355215770242

/-!
# A006461: Percolation series for directed square lattice.

The programs for A006461, there is no canonical definition to state claims against.
-/

/-! ## A006461.P702267184071892696

`2-∑[A257639(A279840(n))]`
-/

namespace A006461.P702267184071892696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A279840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006461.P702267184071892696

/-! ## A006461.P8079577697497030937

`1-∑[A103221(A261664(n)+A196564(n))]`
-/

namespace A006461.P8079577697497030937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A261664 n + A196564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006461.P8079577697497030937

/-! ## A006461.P5677206145315112786

`1-∑[A103221(A261664(n)-A057428(n))]`
-/

namespace A006461.P5677206145315112786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A261664 n - A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006461.P5677206145315112786

/-! ## A006461.P8028711254421736913

`1-∑[A025897(A022091(n)^A136400(n))]`
-/

namespace A006461.P8028711254421736913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (SequenceMachineLib.roundAway ((A022091 n : ℚ) ^ (A136400 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006461.P8028711254421736913

/-! ## A006461.P884137110764213635

`A209229(A374517(2*(n+1)))-A025276(n+2)`
-/

namespace A006461.P884137110764213635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A374517 (2 * (n + 1))).toNat - A025276 (n + 2)

end

end A006461.P884137110764213635

/-!
# A006463: Convolve natural numbers with characteristic function of triangular numbers.

The programs for A006463, the canonical program `A006463.P5521778455435145153` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006463 has offset 0).

The definition of A006463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006463.P9746499556117312990

`∑[row(row(C(n, 2)))]`
-/

namespace A006463.P9746499556117312990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (Nat.choose n 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P9746499556117312990

namespace A006463

/-- `∑[row(row(C(n, 2)))]` -/
def P9746499556117312990.Spec : Prop :=
  ∀ n, (P9746499556117312990.a n : ℤ) = A006463 n

end A006463

/-! ## A006463.P4594652810514947786

`∑[row(n)]-row(n)`
-/

namespace A006463.P4594652810514947786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.triRow n : ℤ)

end

end A006463.P4594652810514947786

namespace A006463

/-- `∑[row(n)]-row(n)` -/
def P4594652810514947786.Spec : Prop :=
  ∀ n, P4594652810514947786.a n = A006463 n

end A006463

/-! ## A006463.P1557381579138333025

`∑[round(sqrt(2*n))]-n`
-/

namespace A006463.P1557381579138333025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A006463.P1557381579138333025

namespace A006463

/-- `∑[round(sqrt(2*n))]-n` -/
def P1557381579138333025.Spec : Prop :=
  ∀ n, P1557381579138333025.a n = A006463 n

end A006463

/-! ## A006463.P6206725792135013984

`∑[row(row(floor(n²/2)))]`
-/

namespace A006463.P6206725792135013984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow ⌊(n ^ 2 : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P6206725792135013984

namespace A006463

/-- `∑[row(row(floor(n²/2)))]` -/
def P6206725792135013984.Spec : Prop :=
  ∀ n, (P6206725792135013984.a n : ℤ) = A006463 n

end A006463

/-! ## A006463.P3677441906763658064

`∑[comp[∑[n+1]]%(n+1)]`
-/

namespace A006463.P3677441906763658064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P3677441906763658064

namespace A006463

/-- `∑[comp[∑[n+1]]%(n+1)]` -/
def P3677441906763658064.Spec : Prop :=
  ∀ n, (P3677441906763658064.a n : ℤ) = A006463 n

end A006463

/-! ## A006463.P6624672957586279831

`∑[∑[char[a(n-1)+n]]]` with `a(0)=2, a(1)=2`
-/

namespace A006463.P6624672957586279831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f3 =>
  f3 (n - 1) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P6624672957586279831

namespace A006463

/-- `∑[∑[char[a(n-1)+n]]]` -/
def P6624672957586279831.Spec : Prop :=
  ∀ n, (P6624672957586279831.a n : ℤ) = A006463 n

end A006463

/-! ## A006463.P2400068290681081225

`∑[comp[∑[C(n+1, n)+1]]-n]`
-/

namespace A006463.P2400068290681081225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P2400068290681081225

namespace A006463

/-- `∑[comp[∑[C(n+1, n)+1]]-n]` -/
def P2400068290681081225.Spec : Prop :=
  ∀ n, P2400068290681081225.a n = A006463 n

end A006463

/-! ## A006463.P5521778455435145153

`∑[a(n-1-a(n-1))+1]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006463

/-- `∑[a(n-1-a(n-1))+1]` -/
def P5521778455435145153.Spec : Prop :=
  ∀ n, (P5521778455435145153.a n : ℤ) = A006463 n

theorem P5521778455435145153.correct : P5521778455435145153.Spec := by
  intro n
  simp only [A006463]

end A006463

/-! ## A006463.P2379281526206124050

`∑[∑[A326822(n)]-1]`
-/

namespace A006463.P2379281526206124050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P2379281526206124050

namespace A006463

/-- `∑[∑[A326822(n)]-1]` -/
def P2379281526206124050.Spec : Prop :=
  ∀ n, P2379281526206124050.a n = A006463 n

end A006463

/-! ## A006463.P17095795400073065677

`∑[round(sqrt(A004277(n)))-1]`
-/

namespace A006463.P17095795400073065677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004277 n : ℝ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P17095795400073065677

namespace A006463

/-- `∑[round(sqrt(A004277(n)))-1]` -/
def P17095795400073065677.Spec : Prop :=
  ∀ n, P17095795400073065677.a n = A006463 n

end A006463

/-! ## A006463.P13373157443187879485

`∑[∑[char[A000124(n+1)]]]`
-/

namespace A006463.P13373157443187879485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P13373157443187879485

namespace A006463

/-- `∑[∑[char[A000124(n+1)]]]` -/
def P13373157443187879485.Spec : Prop :=
  ∀ n, (P13373157443187879485.a n : ℤ) = A006463 n

end A006463

/-! ## A006463.P12509206379874726080

`∑[comp[A000096(n+1)]-n]`
-/

namespace A006463.P12509206379874726080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P12509206379874726080

namespace A006463

/-- `∑[comp[A000096(n+1)]-n]` -/
def P12509206379874726080.Spec : Prop :=
  ∀ n, P12509206379874726080.a n = A006463 n

end A006463

/-! ## A006463.P7052843163462188241

`∑[round(sqrt(A004280(n+1)))-1]`
-/

namespace A006463.P7052843163462188241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004280 (n + 1) : ℝ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P7052843163462188241

namespace A006463

/-- `∑[round(sqrt(A004280(n+1)))-1]` -/
def P7052843163462188241.Spec : Prop :=
  ∀ n, P7052843163462188241.a n = A006463 n

end A006463

/-! ## A006463.P14807371270071791534

`∑[A002024(A028310(n))-1]`
-/

namespace A006463.P14807371270071791534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P14807371270071791534

namespace A006463

/-- `∑[A002024(A028310(n))-1]` -/
def P14807371270071791534.Spec : Prop :=
  ∀ n, P14807371270071791534.a n = A006463 n

end A006463

/-! ## A006463.P1950487530929925492

`∑[A003056(A028310(n)-1)]`
-/

namespace A006463.P1950487530929925492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P1950487530929925492

namespace A006463

/-- `∑[A003056(A028310(n)-1)]` -/
def P1950487530929925492.Spec : Prop :=
  ∀ n, P1950487530929925492.a n = A006463 n

end A006463

/-! ## A006463.P2131108713966808350

`∑[A123578(C(A123578(n), 2))]`
-/

namespace A006463.P2131108713966808350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Nat.choose (A123578 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P2131108713966808350

namespace A006463

/-- `∑[A123578(C(A123578(n), 2))]` -/
def P2131108713966808350.Spec : Prop :=
  ∀ n, P2131108713966808350.a n = A006463 n

end A006463

/-! ## A006463.P13499207563150920435

`∑[∑[A010054(A037126(n+1))]]`
-/

namespace A006463.P13499207563150920435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A037126 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P13499207563150920435

namespace A006463

/-- `∑[∑[A010054(A037126(n+1))]]` -/
def P13499207563150920435.Spec : Prop :=
  ∀ n, P13499207563150920435.a n = A006463 n

end A006463

/-! ## A006463.P15595927471349851820

`∑[∑[A073424(n)]-A073424(n)]`
-/

namespace A006463.P15595927471349851820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P15595927471349851820

namespace A006463

/-- `∑[∑[A073424(n)]-A073424(n)]` -/
def P15595927471349851820.Spec : Prop :=
  ∀ n, P15595927471349851820.a n = A006463 n

end A006463

/-! ## A006463.P8566149476086429161

`(∑[A279891(n)]-A279891(n))/2`
-/

namespace A006463.P8566149476086429161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A279891 n : ℤ) : ℚ) / 2

end

end A006463.P8566149476086429161

namespace A006463

/-- `(∑[A279891(n)]-A279891(n))/2` -/
def P8566149476086429161.Spec : Prop :=
  ∀ n, P8566149476086429161.a n = (A006463 n : ℚ)

end A006463

/-! ## A006463.P13557752310090139339

`∑[∑[A010054(A061579(n)+2)]]`
-/

namespace A006463.P13557752310090139339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A061579 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006463.P13557752310090139339

namespace A006463

/-- `∑[∑[A010054(A061579(n)+2)]]` -/
def P13557752310090139339.Spec : Prop :=
  ∀ n, P13557752310090139339.a n = A006463 n

end A006463

/-!
# A006464: Continued fraction for Sum_{n>=0} 1/4^(2^n).

The programs for A006464, there is no canonical definition to state claims against.
-/

/-! ## A006464.P12258563310528317583

`ceil(A004200(n)/sin(1))`
-/

namespace A006464.P12258563310528317583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004200 n : ℝ) / Real.sin (1 : ℝ)⌉

end

end A006464.P12258563310528317583

/-! ## A006464.P8424708563493534446

`A057427(n)+A004200(n)`
-/

namespace A006464.P8424708563493534446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004200 n

end

end A006464.P8424708563493534446

/-! ## A006464.P12776225251936879259

`A004200(n)-A057428(n)`
-/

namespace A006464.P12776225251936879259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n - A057428 n

end

end A006464.P12776225251936879259

/-! ## A006464.P17759504253454738823

`A004200(n)+n/A028310(n)`
-/

namespace A006464.P17759504253454738823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004200 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A006464.P17759504253454738823

/-! ## A006464.P14580341879241231452

`A004200(n)+(1-A000122(n))²`
-/

namespace A006464.P14580341879241231452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + (1 - A000122 n) ^ 2

end

end A006464.P14580341879241231452

/-! ## A006464.P3805568965115345591

`ceil(A004200(n)+n/A004207(n))`
-/

namespace A006464.P3805568965115345591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004200 n : ℚ) + (n : ℚ) / (A004207 n : ℚ)⌉

end

end A006464.P3805568965115345591

/-! ## A006464.P5614640193307577008

`A004200(n)+A004200(n+1)%2`
-/

namespace A006464.P5614640193307577008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + Int.tmod (A004200 (n + 1)) 2

end

end A006464.P5614640193307577008

/-! ## A006464.P12663353497527080955

`A004200(n)+and(1, A004200(A027709(n)))`
-/

namespace A006464.P12663353497527080955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + Int.land 1 (A004200 (A027709 n).toNat)

end

end A006464.P12663353497527080955

/-! ## A006464.P18205586274535513874

`A093768(A093768(a(n-1)))+A004200(n)` with `a(0)=0`
-/

namespace A006464.P18205586274535513874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A093768 (A093768 (a (n - 1)).toNat).toNat + A004200 n

end

end A006464.P18205586274535513874

/-! ## A006464.P12219300493533541561

`A004200(n)+char[A328399(n)]`
-/

namespace A006464.P12219300493533541561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A006464.P12219300493533541561

/-! ## A006464.P13082193838270933553

`A023921(A000038(n)*A023921(n))+A004200(n)`
-/

namespace A006464.P13082193838270933553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 (A000038 n * A023921 n).toNat + A004200 n

end

end A006464.P13082193838270933553

/-! ## A006464.P14496889441893111315

`A004200(lt[A004200(n), 2])+A004200(n)`
-/

namespace A006464.P14496889441893111315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + A004200 n

end

end A006464.P14496889441893111315

/-! ## A006464.P6022080371693796259

`floor(A122165(n)/atan(2))`
-/

namespace A006464.P6022080371693796259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122165 n : ℝ) / Real.arctan (2 : ℝ)⌋

end

end A006464.P6022080371693796259

/-! ## A006464.P7795056252227410416

`A122165(n)+A057428(n)`
-/

namespace A006464.P7795056252227410416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n + A057428 n

end

end A006464.P7795056252227410416

/-! ## A006464.P490859494499044165

`A122165(n)-A057427(n)`
-/

namespace A006464.P490859494499044165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n - A057427 n

end

end A006464.P490859494499044165

/-! ## A006464.P8919827579049632431

`A122165(n)-A178334(n)`
-/

namespace A006464.P8919827579049632431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n - A178334 n

end

end A006464.P8919827579049632431

/-! ## A006464.P13538042081677421386

`A122165(n)-A323022(2*n+1)`
-/

namespace A006464.P13538042081677421386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122165 n - A323022 (2 * n + 1)

end

end A006464.P13538042081677421386

/-!
# A006466: Continued fraction expansion of C = 2*Sum_{n>=0} 1/2^(2^n).

The programs for A006466, the canonical program `A006466.P13063757461679902126` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006466 has offset 0).

The definition of A006466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006466.P8867730795702353942

`Δ[∪[A076216(n+1), n²]]`
-/

namespace A006466.P8867730795702353942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076216 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A006466.P8867730795702353942

namespace A006466

/-- `Δ[∪[A076216(n+1), n²]]` -/
def P8867730795702353942.Spec : Prop :=
  ∀ n, P8867730795702353942.a n = A006466 n

end A006466

/-! ## A006466.P11564902092815868467

`Δ[A076216(round(sqrt(n²+1)))]!`
-/

namespace A006466.P11564902092815868467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076216 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A006466.P11564902092815868467

namespace A006466

/-- `Δ[A076216(round(sqrt(n²+1)))]!` -/
def P11564902092815868467.Spec : Prop :=
  ∀ n, (P11564902092815868467.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P13063757461679902126

`∏{e}[Δ[A076216(A028310(n))]², #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006466

/-- `∏{e}[Δ[A076216(A028310(n))]², #]` -/
def P13063757461679902126.Spec : Prop :=
  ∀ n, (P13063757461679902126.a n : ℤ) = A006466 n

theorem P13063757461679902126.correct : P13063757461679902126.Spec := by
  intro n
  simp only [A006466]

end A006466

/-! ## A006466.P14507494931824603796

`gcd(A092910(A057354(n)), A175922(n+1))`
-/

namespace A006466.P14507494931824603796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092910 (A057354 n).toNat) (A175922 (n + 1))

end

end A006466.P14507494931824603796

namespace A006466

/-- `gcd(A092910(A057354(n)), A175922(n+1))` -/
def P14507494931824603796.Spec : Prop :=
  ∀ n, (P14507494931824603796.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P11461849053253227012

`gcd(A117450(n), A389522(n))`
-/

namespace A006466.P11461849053253227012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117450 n) (A389522 n)

end

end A006466.P11461849053253227012

namespace A006466

/-- `gcd(A117450(n), A389522(n))` -/
def P11461849053253227012.Spec : Prop :=
  ∀ n, (P11461849053253227012.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P10575456661844502707

`gcd(A000079(n), A388655(n))`
-/

namespace A006466.P10575456661844502707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A388655 n)

end

end A006466.P10575456661844502707

namespace A006466

/-- `gcd(A000079(n), A388655(n))` -/
def P10575456661844502707.Spec : Prop :=
  ∀ n, (P10575456661844502707.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P12472609795923080417

`gcd(2, A387398(n))`
-/

namespace A006466.P12472609795923080417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A387398 n)

end

end A006466.P12472609795923080417

namespace A006466

/-- `gcd(2, A387398(n))` -/
def P12472609795923080417.Spec : Prop :=
  ∀ n, (P12472609795923080417.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P12711244580235267667

`A387398(n)%A040002(n)`
-/

namespace A006466.P12711244580235267667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387398 n) (A040002 n)

end

end A006466.P12711244580235267667

namespace A006466

/-- `A387398(n)%A040002(n)` -/
def P12711244580235267667.Spec : Prop :=
  ∀ n, P12711244580235267667.a n = A006466 n

end A006466

/-! ## A006466.P1863359813191054229

`and(A122553(n), A387398(n))`
-/

namespace A006466.P1863359813191054229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A387398 n)

end

end A006466.P1863359813191054229

namespace A006466

/-- `and(A122553(n), A387398(n))` -/
def P1863359813191054229.Spec : Prop :=
  ∀ n, P1863359813191054229.a n = A006466 n

end A006466

/-! ## A006466.P2411009478085973439

`and(A131554(n), A387398(n))`
-/

namespace A006466.P2411009478085973439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131554 n) (A387398 n)

end

end A006466.P2411009478085973439

namespace A006466

/-- `and(A131554(n), A387398(n))` -/
def P2411009478085973439.Spec : Prop :=
  ∀ n, P2411009478085973439.a n = A006466 n

end A006466

/-! ## A006466.P6783197620545834136

`and(A276390(n), A387398(n))`
-/

namespace A006466.P6783197620545834136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276390 n) (A387398 n)

end

end A006466.P6783197620545834136

namespace A006466

/-- `and(A276390(n), A387398(n))` -/
def P6783197620545834136.Spec : Prop :=
  ∀ n, P6783197620545834136.a n = A006466 n

end A006466

/-! ## A006466.P14357065412314968011

`and(A290856(n), A387398(n))`
-/

namespace A006466.P14357065412314968011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290856 n) (A387398 n)

end

end A006466.P14357065412314968011

namespace A006466

/-- `and(A290856(n), A387398(n))` -/
def P14357065412314968011.Spec : Prop :=
  ∀ n, P14357065412314968011.a n = A006466 n

end A006466

/-! ## A006466.P5379655584535367244

`and(A290858(n), A387398(n))`
-/

namespace A006466.P5379655584535367244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290858 n) (A387398 n)

end

end A006466.P5379655584535367244

namespace A006466

/-- `and(A290858(n), A387398(n))` -/
def P5379655584535367244.Spec : Prop :=
  ∀ n, P5379655584535367244.a n = A006466 n

end A006466

/-! ## A006466.P6457139957305666112

`and(A087717(n+1), A387398(n))`
-/

namespace A006466.P6457139957305666112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087717 (n + 1)) (A387398 n)

end

end A006466.P6457139957305666112

namespace A006466

/-- `and(A087717(n+1), A387398(n))` -/
def P6457139957305666112.Spec : Prop :=
  ∀ n, P6457139957305666112.a n = A006466 n

end A006466

/-! ## A006466.P7790058597651852017

`and(A188161(n), A387398(n))`
-/

namespace A006466.P7790058597651852017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188161 n) (A387398 n)

end

end A006466.P7790058597651852017

namespace A006466

/-- `and(A188161(n), A387398(n))` -/
def P7790058597651852017.Spec : Prop :=
  ∀ n, P7790058597651852017.a n = A006466 n

end A006466

/-! ## A006466.P3902931408479599407

`A347589(n^Δ[A057354(n)])`
-/

namespace A006466.P3902931408479599407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347589 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A006466.P3902931408479599407

namespace A006466

/-- `A347589(n^Δ[A057354(n)])` -/
def P3902931408479599407.Spec : Prop :=
  ∀ n, P3902931408479599407.a n = A006466 n

end A006466

/-! ## A006466.P795792920374792547

`(A347589(n)%3)!`
-/

namespace A006466.P795792920374792547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A347589 n) 3).toNat

end

end A006466.P795792920374792547

namespace A006466

/-- `(A347589(n)%3)!` -/
def P795792920374792547.Spec : Prop :=
  ∀ n, (P795792920374792547.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P18269100530382500474

`gcd(A000302(n), A347589(n))`
-/

namespace A006466.P18269100530382500474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000302 n) (A347589 n)

end

end A006466.P18269100530382500474

namespace A006466

/-- `gcd(A000302(n), A347589(n))` -/
def P18269100530382500474.Spec : Prop :=
  ∀ n, (P18269100530382500474.a n : ℤ) = A006466 n

end A006466

/-! ## A006466.P13278209825042159029

`(A347589(n)+A000244(n))%3`
-/

namespace A006466.P13278209825042159029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347589 n + A000244 n) 3

end

end A006466.P13278209825042159029

namespace A006466

/-- `(A347589(n)+A000244(n))%3` -/
def P13278209825042159029.Spec : Prop :=
  ∀ n, P13278209825042159029.a n = A006466 n

end A006466

/-!
# A006468: Number of rooted planar maps with 4 faces and n vertices and no isthmuses.

The programs for A006468, the canonical program `A006468.P4927994340717490535` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006468 has offset 1).

The definition of A006468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006468.P4927994340717490535

`(n+1)*(n+2)*(n+3)*((n+1)*((n+1)*(2*(n+1)+33)+142)+123)/360`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006468

/-- `(n+1)*(n+2)*(n+3)*((n+1)*((n+1)*(2*(n+1)+33)+142)+123)/360` -/
def P4927994340717490535.Spec : Prop :=
  ∀ n, P4927994340717490535.a n = (A006468 (n + 1) : ℚ)

end A006468

/-! ## A006468.P15437862312165530616

`ogf((5+2x-4x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A006468.P15437862312165530616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, -4, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A006468.P15437862312165530616

namespace A006468

/-- `ogf((5+2x-4x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P15437862312165530616.Spec : Prop :=
  ∀ n, P15437862312165530616.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P8102043048632999474

`∑[A089574(n+1)]`
-/

namespace A006468.P8102043048632999474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P8102043048632999474

namespace A006468

/-- `∑[A089574(n+1)]` -/
def P8102043048632999474.Spec : Prop :=
  ∀ n, P8102043048632999474.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P17805623050306811454

`∑[∑[(n+1)*A005586(n+1)-∑[n]]]`
-/

namespace A006468.P17805623050306811454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005586 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P17805623050306811454

namespace A006468

/-- `∑[∑[(n+1)*A005586(n+1)-∑[n]]]` -/
def P17805623050306811454.Spec : Prop :=
  ∀ n, P17805623050306811454.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P7614968916630059755

`∑[A034263(n)+∑[A162254(n+1)]]`
-/

namespace A006468.P7614968916630059755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P7614968916630059755

namespace A006468

/-- `∑[A034263(n)+∑[A162254(n+1)]]` -/
def P7614968916630059755.Spec : Prop :=
  ∀ n, P7614968916630059755.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P17981402780248483000

`∑[∑[A162254(n+1)+A002417(n+1)]]`
-/

namespace A006468.P17981402780248483000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162254 (n + 1) + A002417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P17981402780248483000

namespace A006468

/-- `∑[∑[A162254(n+1)+A002417(n+1)]]` -/
def P17981402780248483000.Spec : Prop :=
  ∀ n, P17981402780248483000.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P3125483315589090916

`a(n-1)+A089574(n+1)%A016792(n)` with `a(0)=5`
-/

namespace A006468.P3125483315589090916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + Int.tmod (A089574 (n + 1)) (A016792 n)

end

end A006468.P3125483315589090916

namespace A006468

/-- `a(n-1)+A089574(n+1)%A016792(n)` -/
def P3125483315589090916.Spec : Prop :=
  ∀ n, P3125483315589090916.a n = A006468 (n + 1)

end A006468

/-! ## A006468.P2993020615519286575

`∑[A215862(n+1)+A215862(n)+A034263(n)]`
-/

namespace A006468.P2993020615519286575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 (n + 1) + (A215862 n + A034263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P2993020615519286575

namespace A006468

/-- `∑[A215862(n+1)+A215862(n)+A034263(n)]` -/
def P2993020615519286575.Spec : Prop :=
  ∀ n, P2993020615519286575.a n = A006468 (n + 1)

end A006468

/-!
# A006469: Number of rooted toroidal maps with 2 faces, n vertices and no isthmuses.

The programs for A006469, the canonical program `A006469.P2405612066758772062` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006469 has offset 1).

The definition of A006469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006469.P18227611439135953875

`ogf((10+9x-3x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A006469.P18227611439135953875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9, -3] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A006469.P18227611439135953875

namespace A006469

/-- `ogf((10+9x-3x^2)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P18227611439135953875.Spec : Prop :=
  ∀ n, P18227611439135953875.a n = A006469 (n + 1)

end A006469

/-! ## A006469.P2405612066758772062

`(n+1)*(n+2)*(n+3)*(n+4)*((n+1)*(8*(n+1)+63)+79)/360`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006469

/-- `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)*(8*(n+1)+63)+79)/360` -/
def P2405612066758772062.Spec : Prop :=
  ∀ n, P2405612066758772062.a n = (A006469 (n + 1) : ℚ)

end A006469

/-! ## A006469.P2794266039804117267

`A027777(n+2)+A006408(n+2)`
-/

namespace A006469.P2794266039804117267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) + A006408 (n + 2)

end

end A006469.P2794266039804117267

namespace A006469

/-- `A027777(n+2)+A006408(n+2)` -/
def P2794266039804117267.Spec : Prop :=
  ∀ n, P2794266039804117267.a n = A006469 (n + 1)

end A006469

/-! ## A006469.P3660335479855847704

`A006470(n+1)+8*A040977(n)`
-/

namespace A006469.P3660335479855847704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006470 (n + 1) + 8 * A040977 n

end

end A006469.P3660335479855847704

namespace A006469

/-- `A006470(n+1)+8*A040977(n)` -/
def P3660335479855847704.Spec : Prop :=
  ∀ n, P3660335479855847704.a n = A006469 (n + 1)

end A006469

/-! ## A006469.P6331530821786586595

`A006408(n+2)+2*A006411(n+1)`
-/

namespace A006469.P6331530821786586595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006408 (n + 2) + 2 * A006411 (n + 1)

end

end A006469.P6331530821786586595

namespace A006469

/-- `A006408(n+2)+2*A006411(n+1)` -/
def P6331530821786586595.Spec : Prop :=
  ∀ n, P6331530821786586595.a n = A006469 (n + 1)

end A006469

/-! ## A006469.P16474508183934922192

`A006470(n+1)+A027764(n+3)+A006408(n+2)`
-/

namespace A006469.P16474508183934922192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006470 (n + 1) + (A027764 (n + 3) + A006408 (n + 2))

end

end A006469.P16474508183934922192

namespace A006469

/-- `A006470(n+1)+A027764(n+3)+A006408(n+2)` -/
def P16474508183934922192.Spec : Prop :=
  ∀ n, P16474508183934922192.a n = A006469 (n + 1)

end A006469

/-! ## A006469.P193635146535946548

`A330300(A020742(n))+A006408(n+2)`
-/

namespace A006469.P193635146535946548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (A020742 n).toNat + A006408 (n + 2)

end

end A006469.P193635146535946548

namespace A006469

/-- `A330300(A020742(n))+A006408(n+2)` -/
def P193635146535946548.Spec : Prop :=
  ∀ n, P193635146535946548.a n = A006469 (n + 1)

end A006469

/-!
# A006470: Number of tree-rooted planar maps with 3 faces and n vertices and no isthmuses.

The programs for A006470, the canonical program `A006470.P17673189531466744654` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006470 has offset 1).

The definition of A006470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006470.P17673189531466744654

`(n+2)*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006470

/-- `(n+2)*C(n+4, 4)` -/
def P17673189531466744654.Spec : Prop :=
  ∀ n, (P17673189531466744654.a n : ℤ) = A006470 (n + 1)

theorem P17673189531466744654.correct : P17673189531466744654.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel]

end A006470

/-! ## A006470.P9007567819657881117

`ogf((2+3x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A006470.P9007567819657881117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -6, 15, -20, 15, -6, 1] n

end

end A006470.P9007567819657881117

namespace A006470

/-- `ogf((2+3x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P9007567819657881117.Spec : Prop :=
  ∀ n, P9007567819657881117.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P216823489320433287

`(n+1)*(n+2)²*(n+3)*(n+4)/24`
-/

namespace A006470.P216823489320433287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) : ℚ) / 24

end

end A006470.P216823489320433287

namespace A006470

/-- `(n+1)*(n+2)²*(n+3)*(n+4)/24` -/
def P216823489320433287.Spec : Prop :=
  ∀ n, P216823489320433287.a n = (A006470 (n + 1) : ℚ)

theorem P216823489320433287.correct : P216823489320433287.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P216823489320433287.a, A006470.P17673189531466744654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P9902190721866283559

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=2`
-/

namespace A006470.P9902190721866283559
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006470.P9902190721866283559

namespace A006470

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P9902190721866283559.Spec : Prop :=
  ∀ n, (P9902190721866283559.a n : ℤ) = A006470 (n + 1)

end A006470

/-! ## A006470.P4773527568106938552

`∑[∑[A033994(n+1)]]`
-/

namespace A006470.P4773527568106938552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006470.P4773527568106938552

namespace A006470

/-- `∑[∑[A033994(n+1)]]` -/
def P4773527568106938552.Spec : Prop :=
  ∀ n, P4773527568106938552.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P17433805730813585490

`A004282(n+1)-A006414(n)`
-/

namespace A006470.P17433805730813585490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 (n + 1) - A006414 n

end

end A006470.P17433805730813585490

namespace A006470

/-- `A004282(n+1)-A006414(n)` -/
def P17433805730813585490.Spec : Prop :=
  ∀ n, P17433805730813585490.a n = A006470 (n + 1)

theorem P17433805730813585490.correct : P17433805730813585490.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P17433805730813585490.a, A006470.P17673189531466744654.a, A004282, A004282.P3282073839208396829.a, A006414, A006414.P3634447629182822101.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P7794065379694632140

`2*A027800(n)-A174002(n)`
-/

namespace A006470.P7794065379694632140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027800 n - A174002 n

end

end A006470.P7794065379694632140

namespace A006470

/-- `2*A027800(n)-A174002(n)` -/
def P7794065379694632140.Spec : Prop :=
  ∀ n, P7794065379694632140.a n = A006470 (n + 1)

theorem P7794065379694632140.correct : P7794065379694632140.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P7794065379694632140.a, A006470.P17673189531466744654.a, A027800, A027800.P6346572312768476247.a, A174002, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P752821949696315595

`A253945(n+4)-A095668(n)`
-/

namespace A006470.P752821949696315595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A095668 n

end

end A006470.P752821949696315595

namespace A006470

/-- `A253945(n+4)-A095668(n)` -/
def P752821949696315595.Spec : Prop :=
  ∀ n, P752821949696315595.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P5297067034231632313

`A027777(n+2)-A027764(n+3)`
-/

namespace A006470.P5297067034231632313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A027764 (n + 3)

end

end A006470.P5297067034231632313

namespace A006470

/-- `A027777(n+2)-A027764(n+3)` -/
def P5297067034231632313.Spec : Prop :=
  ∀ n, P5297067034231632313.a n = A006470 (n + 1)

theorem P5297067034231632313.correct : P5297067034231632313.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P5297067034231632313.a, A006470.P17673189531466744654.a, A027764, A027764.P14325653007751828854.a, A027777, A027777.P16503156280263900957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P15897222709715552729

`2*A033455(n+1)-A051836(n)`
-/

namespace A006470.P15897222709715552729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033455 (n + 1) - A051836 n

end

end A006470.P15897222709715552729

namespace A006470

/-- `2*A033455(n+1)-A051836(n)` -/
def P15897222709715552729.Spec : Prop :=
  ∀ n, P15897222709715552729.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P11131212386753902324

`2/(n+1)*A001297(n+1)`
-/

namespace A006470.P11131212386753902324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A001297 (n + 1) : ℚ)

end

end A006470.P11131212386753902324

namespace A006470

/-- `2/(n+1)*A001297(n+1)` -/
def P11131212386753902324.Spec : Prop :=
  ∀ n, P11131212386753902324.a n = (A006470 (n + 1) : ℚ)

theorem P11131212386753902324.correct : P11131212386753902324.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P11131212386753902324.a, A006470.P17673189531466744654.a, A001297, A001297.P389210440740052540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P8150690467477238166

`A051836(n+1)+A005585(n+1)`
-/

namespace A006470.P8150690467477238166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + A005585 (n + 1)

end

end A006470.P8150690467477238166

namespace A006470

/-- `A051836(n+1)+A005585(n+1)` -/
def P8150690467477238166.Spec : Prop :=
  ∀ n, P8150690467477238166.a n = A006470 (n + 1)

theorem P8150690467477238166.correct : P8150690467477238166.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P8150690467477238166.a, A006470.P17673189531466744654.a, A005585, A005585.P5066831349655201454.a, A051836, A051836.P14815993383635968968.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P9605550043996329533

`A256859(n+1)+A002418(n+1)`
-/

namespace A006470.P9605550043996329533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 1) + A002418 (n + 1)

end

end A006470.P9605550043996329533

namespace A006470

/-- `A256859(n+1)+A002418(n+1)` -/
def P9605550043996329533.Spec : Prop :=
  ∀ n, P9605550043996329533.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P1036983673195354204

`A271662(n+1)-A033455(n+2)`
-/

namespace A006470.P1036983673195354204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 (n + 1) - A033455 (n + 2)

end

end A006470.P1036983673195354204

namespace A006470

/-- `A271662(n+1)-A033455(n+2)` -/
def P1036983673195354204.Spec : Prop :=
  ∀ n, P1036983673195354204.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P10869203700397528322

`A256859(n+2)-A000292(n+2)`
-/

namespace A006470.P10869203700397528322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256859 (n + 2) - A000292 (n + 2)

end

end A006470.P10869203700397528322

namespace A006470

/-- `A256859(n+2)-A000292(n+2)` -/
def P10869203700397528322.Spec : Prop :=
  ∀ n, P10869203700397528322.a n = A006470 (n + 1)

theorem P10869203700397528322.correct : P10869203700397528322.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P10869203700397528322.a, A006470.P17673189531466744654.a, A000292, A000292.P18322089543142633594.a, A256859, A256859.P13446523280758156629.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P11073326722575085901

`A027800(n+1)+A034263(n)-A034263(n+1)`
-/

namespace A006470.P11073326722575085901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 (n + 1) + (A034263 n - A034263 (n + 1))

end

end A006470.P11073326722575085901

namespace A006470

/-- `A027800(n+1)+A034263(n)-A034263(n+1)` -/
def P11073326722575085901.Spec : Prop :=
  ∀ n, P11073326722575085901.a n = A006470 (n + 1)

theorem P11073326722575085901.correct : P11073326722575085901.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P11073326722575085901.a, A006470.P17673189531466744654.a, A027800, A027800.P6346572312768476247.a, A034263, A034263.P5868129197671622568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P4464822144949014017

`A056118(n+1)+A034263(n)-A051880(n+1)`
-/

namespace A006470.P4464822144949014017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 (n + 1) + (A034263 n - A051880 (n + 1))

end

end A006470.P4464822144949014017

namespace A006470

/-- `A056118(n+1)+A034263(n)-A051880(n+1)` -/
def P4464822144949014017.Spec : Prop :=
  ∀ n, P4464822144949014017.a n = A006470 (n + 1)

theorem P4464822144949014017.correct : P4464822144949014017.Spec := by
  intro n
  simp only [A006470, Nat.add_sub_cancel, A006470.P4464822144949014017.a, A006470.P17673189531466744654.a, A034263, A034263.P5868129197671622568.a, A051880, A051880.P18339695450162809644.a, A056118, A056118.P6591570600101730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006470

/-! ## A006470.P8648065789592613741

`A271567(n+1)+A034263(n)-A056118(n+1)`
-/

namespace A006470.P8648065789592613741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 (n + 1) + (A034263 n - A056118 (n + 1))

end

end A006470.P8648065789592613741

namespace A006470

/-- `A271567(n+1)+A034263(n)-A056118(n+1)` -/
def P8648065789592613741.Spec : Prop :=
  ∀ n, P8648065789592613741.a n = A006470 (n + 1)

end A006470

/-! ## A006470.P17905426038832081407

`∑[A212501(n+2)]`
-/

namespace A006470.P17905426038832081407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006470.P17905426038832081407

namespace A006470

/-- `∑[A212501(n+2)]` -/
def P17905426038832081407.Spec : Prop :=
  ∀ n, P17905426038832081407.a n = A006470 (n + 1)

end A006470

/-!
# A006471: Number of tree-rooted planar maps with 4 faces and n vertices and no isthmuses.

The programs for A006471, there is no canonical definition to state claims against.
-/

/-! ## A006471.P7585379998650143704

`A342987(A167614(n+2))`
-/

namespace A006471.P7585379998650143704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A167614 (n + 2)).toNat

end

end A006471.P7585379998650143704

/-! ## A006471.P2732585647159885721

`A342987(A052905(n)+8)`
-/

namespace A006471.P2732585647159885721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A052905 n + 8).toNat

end

end A006471.P2732585647159885721

/-! ## A006471.P8855096877555388614

`A342987(A055999(n)+9)`
-/

namespace A006471.P8855096877555388614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A055999 n + 9).toNat

end

end A006471.P8855096877555388614

/-! ## A006471.P15241012616985966132

`A342987(A000217(n+3)+3)`
-/

namespace A006471.P15241012616985966132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (A000217 (n + 3) + 3).toNat

end

end A006471.P15241012616985966132

/-! ## A006471.P10305244319177768101

`A342987(eq[4, A002260(n+1)])`
-/

namespace A006471.P10305244319177768101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006471.P10305244319177768101

/-!
# A006472: a(n) = n!*(n-1)!/2^(n-1).

The programs for A006472, the canonical program `A006472.P13638201114310649646` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006472 has offset 1).

The definition of A006472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006472.P13638201114310649646

`a(n-1)*A000217(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006472

/-- `a(n-1)*A000217(n)` -/
def P13638201114310649646.Spec : Prop :=
  ∀ n, P13638201114310649646.a n = A006472 (n + 1)

theorem P13638201114310649646.correct : P13638201114310649646.Spec := by
  intro n
  simp only [A006472, Nat.add_sub_cancel]

end A006472

/-! ## A006472.P682126247248674092

`A000142(n)/A000079(n)*A000142(n+1)`
-/

namespace A006472.P682126247248674092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A000142 (n + 1) : ℚ)

end

end A006472.P682126247248674092

namespace A006472

/-- `A000142(n)/A000079(n)*A000142(n+1)` -/
def P682126247248674092.Spec : Prop :=
  ∀ n, P682126247248674092.a n = (A006472 (n + 1) : ℚ)

end A006472

/-! ## A006472.P14424200785334496680

`A331955(C(n+2, 2)+n+1)`
-/

namespace A006472.P14424200785334496680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331955 (Nat.choose (n + 2) 2 + (n + 1))

end

end A006472.P14424200785334496680

namespace A006472

/-- `A331955(C(n+2, 2)+n+1)` -/
def P14424200785334496680.Spec : Prop :=
  ∀ n, P14424200785334496680.a n = A006472 (n + 1)

end A006472

/-! ## A006472.P15717860127307791959

`A331956(C(n+2, 2)+n+1)`
-/

namespace A006472.P15717860127307791959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331956 (Nat.choose (n + 2) 2 + (n + 1))

end

end A006472.P15717860127307791959

namespace A006472

/-- `A331956(C(n+2, 2)+n+1)` -/
def P15717860127307791959.Spec : Prop :=
  ∀ n, P15717860127307791959.a n = A006472 (n + 1)

end A006472

/-! ## A006472.P7729029159371177942

`A375835(C(n+2, 2)+n+1)`
-/

namespace A006472.P7729029159371177942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375835 (Nat.choose (n + 2) 2 + (n + 1))

end

end A006472.P7729029159371177942

namespace A006472

/-- `A375835(C(n+2, 2)+n+1)` -/
def P7729029159371177942.Spec : Prop :=
  ∀ n, P7729029159371177942.a n = A006472 (n + 1)

end A006472

/-! ## A006472.P12677383127434701410

`(n+1)!*n!/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006472.P12677383127434701410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * Nat.factorial n : ℚ) / (2 ^ n : ℚ)

end

end A006472.P12677383127434701410

namespace A006472

/-- `(n+1)!*n!/2^n` -/
def P12677383127434701410.Spec : Prop :=
  ∀ n, P12677383127434701410.a n = (A006472 (n + 1) : ℚ)

end A006472

/-!
# A006473: a(n) = binomial(n,2)!/n!.

The programs for A006473, there is no canonical definition to state claims against.
-/

/-! ## A006473.P3594742758808212939

`record[C(n, 2)!/n!]`
-/

namespace A006473.P3594742758808212939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose n 2) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006473.P3594742758808212939

/-! ## A006473.P5824396574725747697

`record[∑[n]!/(n+1)!]`
-/

namespace A006473.P5824396574725747697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (Nat.factorial (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006473.P5824396574725747697

/-! ## A006473.P12991405863213206875

`∑[n+2]!/(2*(n+1)!)`
-/

namespace A006473.P12991405863213206875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (2 * Nat.factorial (n + 1) : ℚ)

end

end A006473.P12991405863213206875

/-! ## A006473.P15615054504718922410

`record[A246292(n)/(n+1)]`
-/

namespace A006473.P15615054504718922410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246292 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006473.P15615054504718922410

/-! ## A006473.P8803536018543411694

`A327088(A000292(n+2))`
-/

namespace A006473.P8803536018543411694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327088 (A000292 (n + 2)).toNat

end

end A006473.P8803536018543411694

/-!
# A006474: Related to Ramsey numbers.

The programs for A006474, there is no canonical definition to state claims against.
-/

/-! ## A006474.P12736716752280716228

`floor(A116572(2*n+5)²/4)`
-/

namespace A006474.P12736716752280716228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116572 (2 * n + 5) ^ 2 : ℚ) / 4⌋

end

end A006474.P12736716752280716228

/-! ## A006474.P2398208826752917846

`record[floor(((A094752(n+1)-n)/2)²)]`
-/

namespace A006474.P2398208826752917846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A094752 (n + 1) - (n : ℤ) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006474.P2398208826752917846

/-! ## A006474.P4826375117382356524

`A008642(comp[2*n+3]+2*n-floor(n/sqrt(2)))`
-/

namespace A006474.P4826375117382356524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((2 * n : ℤ) - ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋)).toNat

end

end A006474.P4826375117382356524

/-! ## A006474.P7434527009350127475

`A086159(A045750(n))`
-/

namespace A006474.P7434527009350127475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A045750 n).toNat

end

end A006474.P7434527009350127475

/-! ## A006474.P14022401909980547011

`A232091(A084684(n))`
-/

namespace A006474.P14022401909980547011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (A084684 n).toNat

end

end A006474.P14022401909980547011

/-!
# A006477: Number of partitions of n with at least 1 odd and 1 even part.

The programs for A006477, there is no canonical definition to state claims against.
-/

/-! ## A006477.P2155035579629942877

`A035622(2*n)`
-/

namespace A006477.P2155035579629942877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (2 * n)

end

end A006477.P2155035579629942877

/-! ## A006477.P15378143711962551687

`xor(2, xor(2, A035622(n+n)))`
-/

namespace A006477.P15378143711962551687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A035622 (n + n)))

end

end A006477.P15378143711962551687

/-! ## A006477.P6261511843769009552

`A035639(A008486(n))`
-/

namespace A006477.P6261511843769009552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A008486 n).toNat

end

end A006477.P6261511843769009552

/-! ## A006477.P10368428546061507389

`A035639(A301729(2*n))`
-/

namespace A006477.P10368428546061507389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A301729 (2 * n)).toNat

end

end A006477.P10368428546061507389

/-! ## A006477.P10291827273203472437

`A365825(n)-A365827(n)`
-/

namespace A006477.P10291827273203472437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365825 n - A365827 n

end

end A006477.P10291827273203472437

/-! ## A006477.P7991525034974545419

`A035639(A099467(2*n+1))`
-/

namespace A006477.P7991525034974545419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A099467 (2 * n + 1)).toNat

end

end A006477.P7991525034974545419

/-! ## A006477.P10720712112774754932

`A035639(A267528(2*n+1))`
-/

namespace A006477.P10720712112774754932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A267528 (2 * n + 1)).toNat

end

end A006477.P10720712112774754932

/-! ## A006477.P17926889707179544132

`A035639(A294732(2*(n+1)))`
-/

namespace A006477.P17926889707179544132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A294732 (2 * (n + 1))).toNat

end

end A006477.P17926889707179544132

/-! ## A006477.P16021755731615238834

`A035639(A351412(2*n+1))`
-/

namespace A006477.P16021755731615238834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A351412 (2 * n + 1)).toNat

end

end A006477.P16021755731615238834

/-! ## A006477.P10072252789039105449

`A047967(n)-A035363(A028310(n))`
-/

namespace A006477.P10072252789039105449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A035363 (A028310 n).toNat

end

end A006477.P10072252789039105449

/-! ## A006477.P7352167197205683883

`A178333(A001747(n+1))+A035622(n+n)`
-/

namespace A006477.P7352167197205683883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A001747 (n + 1)).toNat + A035622 (n + n)

end

end A006477.P7352167197205683883

/-! ## A006477.P5708083352069156100

`lcm(A001221(A061238(n+1)), A035622(n+n))`
-/

namespace A006477.P5708083352069156100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A061238 (n + 1)).toNat) (A035622 (n + n))

end

end A006477.P5708083352069156100

/-! ## A006477.P1943187161800728080

`A035675(A008574(n))`
-/

namespace A006477.P1943187161800728080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A008574 n).toNat

end

end A006477.P1943187161800728080

/-! ## A006477.P10367089695935655572

`A035675(A336705(n))`
-/

namespace A006477.P10367089695935655572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A336705 n).toNat

end

end A006477.P10367089695935655572

/-! ## A006477.P16705297617118383081

`A035675(record[A257088(n)])`
-/

namespace A006477.P16705297617118383081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006477.P16705297617118383081

/-! ## A006477.P4335461547857377106

`A035675(A019442(n+2))`
-/

namespace A006477.P4335461547857377106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A019442 (n + 2)).toNat

end

end A006477.P4335461547857377106

/-! ## A006477.P8684555347549657294

`A035675(A004277(2*n))`
-/

namespace A006477.P8684555347549657294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004277 (2 * n)).toNat

end

end A006477.P8684555347549657294

/-! ## A006477.P11688277907787547618

`A035675(A057543(2*n))`
-/

namespace A006477.P11688277907787547618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A057543 (2 * n)).toNat

end

end A006477.P11688277907787547618

/-! ## A006477.P4737030480863653630

`A035675(A257088(2*n))`
-/

namespace A006477.P4737030480863653630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A257088 (2 * n)).toNat

end

end A006477.P4737030480863653630

/-! ## A006477.P5531778709093940511

`A035675(record[A019425(n+1)])`
-/

namespace A006477.P5531778709093940511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006477.P5531778709093940511

/-!
# A006478: a(n) = a(n-1) + a(n-2) + F(n) - 1, a(0) = a(1) = 0, where F() = Fibonacci numbers A000045.

The programs for A006478, the canonical program `A006478.P12481983628482939867` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006478 has offset 0).

The definition of A006478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+A000045(n)-1` (program `A006478.P12481983628482939867`, by `A006478.P12481983628482939867.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006478.P11328969185998768340

`ogf(x^3/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A006478.P11328969185998768340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -3, 1, 3, -1, -1] n

end

end A006478.P11328969185998768340

namespace A006478

/-- `ogf(x^3/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P11328969185998768340.Spec : Prop :=
  ∀ n, P11328969185998768340.a n = A006478 n

end A006478

/-! ## A006478.P12481983628482939867

`a(n-1)+a(n-2)+A000045(n)-1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006478

/-- `a(n-1)+a(n-2)+A000045(n)-1` -/
def P12481983628482939867.Spec : Prop :=
  ∀ n, P12481983628482939867.a n = A006478 n

theorem P12481983628482939867.correct : P12481983628482939867.Spec := by
  intro n
  simp only [A006478]

end A006478

/-! ## A006478.P13163124975080069046

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A006478.P13163124975080069046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A006478.P13163124975080069046

namespace A006478

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P13163124975080069046.Spec : Prop :=
  ∀ n, P13163124975080069046.a n = A006478 n

end A006478

/-! ## A006478.P18031247075748513523

`∑[A001629(abs(1-n))]`
-/

namespace A006478.P18031247075748513523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P18031247075748513523

namespace A006478

/-- `∑[A001629(abs(1-n))]` -/
def P18031247075748513523.Spec : Prop :=
  ∀ n, P18031247075748513523.a n = A006478 n

end A006478

/-! ## A006478.P14454617407005192054

`A001629(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A006478.P14454617407005192054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001629 (n - 1) + a (n - 1)

end

end A006478.P14454617407005192054

namespace A006478

/-- `A001629(n-1)+a(n-1)` -/
def P14454617407005192054.Spec : Prop :=
  ∀ n, P14454617407005192054.a n = A006478 n

end A006478

/-! ## A006478.P6546843991262343733

`∑[(n-2)*A000045(n-2)-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A006478.P6546843991262343733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((n : ℤ) - 2) * A000045 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P6546843991262343733

namespace A006478

/-- `∑[(n-2)*A000045(n-2)-a(n-2)]` -/
def P6546843991262343733.Spec : Prop :=
  ∀ n, P6546843991262343733.a n = A006478 n

end A006478

/-! ## A006478.P15564074824079941758

`A055244(n)-A001595(n)`
-/

namespace A006478.P15564074824079941758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A001595 n

end

end A006478.P15564074824079941758

namespace A006478

/-- `A055244(n)-A001595(n)` -/
def P15564074824079941758.Spec : Prop :=
  ∀ n, P15564074824079941758.a n = A006478 n

end A006478

/-! ## A006478.P5455127538207794149

`A271785(n)-A022308(n)`
-/

namespace A006478.P5455127538207794149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271785 n - A022308 n

end

end A006478.P5455127538207794149

namespace A006478

/-- `A271785(n)-A022308(n)` -/
def P5455127538207794149.Spec : Prop :=
  ∀ n, P5455127538207794149.a n = A006478 n

end A006478

/-! ## A006478.P7583118626560672651

`∑[∑[A010049(A289207(n))]]`
-/

namespace A006478.P7583118626560672651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P7583118626560672651

namespace A006478

/-- `∑[∑[A010049(A289207(n))]]` -/
def P7583118626560672651.Spec : Prop :=
  ∀ n, P7583118626560672651.a n = A006478 n

end A006478

/-! ## A006478.P2856745248751494981

`∑[A010049(n)-A000045(n)]`
-/

namespace A006478.P2856745248751494981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P2856745248751494981

namespace A006478

/-- `∑[A010049(n)-A000045(n)]` -/
def P2856745248751494981.Spec : Prop :=
  ∀ n, P2856745248751494981.a n = A006478 n

end A006478

/-! ## A006478.P2407756768765098338

`A055244(n)-∑[A006355(n)]`
-/

namespace A006478.P2407756768765098338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P2407756768765098338

namespace A006478

/-- `A055244(n)-∑[A006355(n)]` -/
def P2407756768765098338.Spec : Prop :=
  ∀ n, P2407756768765098338.a n = A006478 n

end A006478

/-! ## A006478.P8137459945125648474

`A001629(n+1)-∑[A000045(n)]`
-/

namespace A006478.P8137459945125648474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P8137459945125648474

namespace A006478

/-- `A001629(n+1)-∑[A000045(n)]` -/
def P8137459945125648474.Spec : Prop :=
  ∀ n, P8137459945125648474.a n = A006478 n

end A006478

/-! ## A006478.P13651534577948973001

`∑[A010049(n)+1-A001611(n)]`
-/

namespace A006478.P13651534577948973001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (1 - A001611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P13651534577948973001

namespace A006478

/-- `∑[A010049(n)+1-A001611(n)]` -/
def P13651534577948973001.Spec : Prop :=
  ∀ n, P13651534577948973001.a n = A006478 n

end A006478

/-! ## A006478.P12184381002460578464

`∑[A208354(n)-A000045(n+1)]`
-/

namespace A006478.P12184381002460578464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P12184381002460578464

namespace A006478

/-- `∑[A208354(n)-A000045(n+1)]` -/
def P12184381002460578464.Spec : Prop :=
  ∀ n, P12184381002460578464.a n = A006478 n

end A006478

/-! ## A006478.P16811396214302693209

`∑[A010049(n)-A212804(n+1)]`
-/

namespace A006478.P16811396214302693209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P16811396214302693209

namespace A006478

/-- `∑[A010049(n)-A212804(n+1)]` -/
def P16811396214302693209.Spec : Prop :=
  ∀ n, P16811396214302693209.a n = A006478 n

end A006478

/-! ## A006478.P9713842626241032306

`∑[A010049(n)]-A000071(n+2)`
-/

namespace A006478.P9713842626241032306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (n + 2)

end

end A006478.P9713842626241032306

namespace A006478

/-- `∑[A010049(n)]-A000071(n+2)` -/
def P9713842626241032306.Spec : Prop :=
  ∀ n, P9713842626241032306.a n = A006478 n

end A006478

/-! ## A006478.P4648995526534194776

`∑[A010049(n)+n-A002062(n)]`
-/

namespace A006478.P4648995526534194776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + ((n : ℤ) - A002062 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P4648995526534194776

namespace A006478

/-- `∑[A010049(n)+n-A002062(n)]` -/
def P4648995526534194776.Spec : Prop :=
  ∀ n, P4648995526534194776.a n = A006478 n

end A006478

/-! ## A006478.P282918879522284204

`∑[A010049(n)-∑{d}[n, A007436(#)]]`
-/

namespace A006478.P282918879522284204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - ∑ d ∈ Nat.divisors (f2 n), A007436 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006478.P282918879522284204

namespace A006478

/-- `∑[A010049(n)-∑{d}[n, A007436(#)]]` -/
def P282918879522284204.Spec : Prop :=
  ∀ n, P282918879522284204.a n = A006478 n

end A006478

/-! ## A006478.P5755033280728861341

`A134508(n+1)-A104161(n+1)`
-/

namespace A006478.P5755033280728861341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134508 (n + 1) - A104161 (n + 1)

end

end A006478.P5755033280728861341

namespace A006478

/-- `A134508(n+1)-A104161(n+1)` -/
def P5755033280728861341.Spec : Prop :=
  ∀ n, P5755033280728861341.a n = A006478 n

end A006478

/-! ## A006478.P17087067515113728856

`A001629(n+1)-A000071(n+2)`
-/

namespace A006478.P17087067515113728856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - A000071 (n + 2)

end

end A006478.P17087067515113728856

namespace A006478

/-- `A001629(n+1)-A000071(n+2)` -/
def P17087067515113728856.Spec : Prop :=
  ∀ n, P17087067515113728856.a n = A006478 n

end A006478

/-!
# A006479: From variance of Fibonacci search.

The programs for A006479, there is no canonical definition to state claims against.
-/

/-! ## A006479.P15734543683356383172

`∑[∑[A235963(A056328(n+1))]]`
-/

namespace A006479.P15734543683356383172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A056328 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006479.P15734543683356383172

/-! ## A006479.P18166143217115583913

`A115981(n+2)+A003141(A126796(n))`
-/

namespace A006479.P18166143217115583913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 (n + 2) + A003141 (A126796 n).toNat

end

end A006479.P18166143217115583913

/-! ## A006479.P18223918240645243832

`∑[∑[∑[A084114(n!)]]]`
-/

namespace A006479.P18223918240645243832
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (Nat.factorial n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006479.P18223918240645243832

/-! ## A006479.P18319185194708019068

`A123578(A326529(n²))`
-/

namespace A006479.P18319185194708019068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A326529 (n ^ 2)).toNat

end

end A006479.P18319185194708019068

/-!
# A006480: De Bruijn's S(3,n): (3n)!/(n!)^3.

The programs for A006480, the canonical program `A006480.P12463522902644750404` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006480 has offset 0).

The definition of A006480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006480.P18432205725971697191

`C(2*n, n)*C(3*n, n)`
-/

namespace A006480.P18432205725971697191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose (3 * n) n

end

end A006480.P18432205725971697191

namespace A006480

/-- `C(2*n, n)*C(3*n, n)` -/
def P18432205725971697191.Spec : Prop :=
  ∀ n, (P18432205725971697191.a n : ℤ) = A006480 n

theorem P18432205725971697191.correct : P18432205725971697191.Spec := by
  intro n
  simp only [A006480, Nat.add_sub_cancel, A006480.P18432205725971697191.a, A006480.P12463522902644750404.a, A000984, A000984.P7946844122574426130.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006480

/-! ## A006480.P12463522902644750404

`A005809(n)*A000984(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006480

/-- `A005809(n)*A000984(n)` -/
def P12463522902644750404.Spec : Prop :=
  ∀ n, P12463522902644750404.a n = A006480 n

theorem P12463522902644750404.correct : P12463522902644750404.Spec := by
  intro n
  simp only [A006480]

end A006480

/-! ## A006480.P6575918855234081411

`A104684(C(2*n+1, 2)+n)`
-/

namespace A006480.P6575918855234081411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (Nat.choose (2 * n + 1) 2 + n)

end

end A006480.P6575918855234081411

namespace A006480

/-- `A104684(C(2*n+1, 2)+n)` -/
def P6575918855234081411.Spec : Prop :=
  ∀ n, P6575918855234081411.a n = A006480 n

end A006480

/-! ## A006480.P12041861131708870644

`(3*n)!/n!^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006480.P12041861131708870644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (Nat.factorial n ^ 3 : ℚ)

end

end A006480.P12041861131708870644

namespace A006480

/-- `(3*n)!/n!^3` -/
def P12041861131708870644.Spec : Prop :=
  ∀ n, P12041861131708870644.a n = (A006480 n : ℚ)

end A006480

/-! ## A006480.P12791317115039217475

`a(n-1)*3*(3*n-1)*(3*n-2)/n²` with `a(0)=1`
-/

namespace A006480.P12791317115039217475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (3 * (((3 * n : ℤ) - 1 : ℚ) * (((3 * n : ℤ) - 2 : ℚ) / (n ^ 2 : ℚ))))

end

end A006480.P12791317115039217475

namespace A006480

/-- `a(n-1)*3*(3*n-1)*(3*n-2)/n²` -/
def P12791317115039217475.Spec : Prop :=
  ∀ n, P12791317115039217475.a n = (A006480 n : ℚ)

end A006480

/-! ## A006480.P2368585127304452869

`A022916(3*n)`
-/

namespace A006480.P2368585127304452869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 (3 * n)

end

end A006480.P2368585127304452869

namespace A006480

/-- `A022916(3*n)` -/
def P2368585127304452869.Spec : Prop :=
  ∀ n, P2368585127304452869.a n = A006480 n

end A006480

/-! ## A006480.P9726879105584759434

`record[abs(A245086(n))]`
-/

namespace A006480.P9726879105584759434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245086 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006480.P9726879105584759434

namespace A006480

/-- `record[abs(A245086(n))]` -/
def P9726879105584759434.Spec : Prop :=
  ∀ n, P9726879105584759434.a n = A006480 n

end A006480

/-! ## A006480.P2893751016470473391

`abs(A245086(2*n))`
-/

namespace A006480.P2893751016470473391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245086 (2 * n)|

end

end A006480.P2893751016470473391

namespace A006480

/-- `abs(A245086(2*n))` -/
def P2893751016470473391.Spec : Prop :=
  ∀ n, P2893751016470473391.a n = A006480 n

end A006480

/-! ## A006480.P128088147324489593

`(n+1)*A007004(n)`
-/

namespace A006480.P128088147324489593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007004 n

end

end A006480.P128088147324489593

namespace A006480

/-- `(n+1)*A007004(n)` -/
def P128088147324489593.Spec : Prop :=
  ∀ n, P128088147324489593.a n = A006480 n

end A006480

/-! ## A006480.P17947084137338178901

`∑[n+1]*A324151(n)`
-/

namespace A006480.P17947084137338178901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324151 n

end

end A006480.P17947084137338178901

namespace A006480

/-- `∑[n+1]*A324151(n)` -/
def P17947084137338178901.Spec : Prop :=
  ∀ n, P17947084137338178901.a n = A006480 n

end A006480

/-!
# A006481: Euler characteristics of polytopes.

The programs for A006481, the canonical program `A006481.P17940934081453945236` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006481 has offset 1).

The definition of A006481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006481.P17940934081453945236

`C(n, 2*floor(n/4)+1)+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006481

/-- `C(n, 2*floor(n/4)+1)+1` -/
def P17940934081453945236.Spec : Prop :=
  ∀ n, (P17940934081453945236.a n : ℤ) = A006481 (n + 1)

theorem P17940934081453945236.correct : P17940934081453945236.Spec := by
  intro n
  simp only [A006481, Nat.add_sub_cancel]

end A006481

/-! ## A006481.P10882133953779255166

`1-A214283(n+1)`
-/

namespace A006481.P10882133953779255166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214283 (n + 1)

end

end A006481.P10882133953779255166

namespace A006481

/-- `1-A214283(n+1)` -/
def P10882133953779255166.Spec : Prop :=
  ∀ n, P10882133953779255166.a n = A006481 (n + 1)

end A006481

/-! ## A006481.P16326507376494452604

`A057979(2*(n+2))+abs(A214283(n+1))`
-/

namespace A006481.P16326507376494452604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * (n + 2)) + |A214283 (n + 1)|

end

end A006481.P16326507376494452604

namespace A006481

/-- `A057979(2*(n+2))+abs(A214283(n+1))` -/
def P16326507376494452604.Spec : Prop :=
  ∀ n, P16326507376494452604.a n = A006481 (n + 1)

end A006481

/-! ## A006481.P2699631482989850693

`A152271(2*(n+2))+abs(A214283(n+1))`
-/

namespace A006481.P2699631482989850693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * (n + 2)) + |A214283 (n + 1)|

end

end A006481.P2699631482989850693

namespace A006481

/-- `A152271(2*(n+2))+abs(A214283(n+1))` -/
def P2699631482989850693.Spec : Prop :=
  ∀ n, P2699631482989850693.a n = A006481 (n + 1)

end A006481

/-! ## A006481.P747762041355275043

`abs(A214282(n+1)-A001405(n+1))+1`
-/

namespace A006481.P747762041355275043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214282 (n + 1) - A001405 (n + 1)| + 1

end

end A006481.P747762041355275043

namespace A006481

/-- `abs(A214282(n+1)-A001405(n+1))+1` -/
def P747762041355275043.Spec : Prop :=
  ∀ n, P747762041355275043.a n = A006481 (n + 1)

end A006481

/-! ## A006481.P479243512661201617

`1+C(n, A106249(n))`
-/

namespace A006481.P479243512661201617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose n (A106249 n).toNat

end

end A006481.P479243512661201617

namespace A006481

/-- `1+C(n, A106249(n))` -/
def P479243512661201617.Spec : Prop :=
  ∀ n, (P479243512661201617.a n : ℤ) = A006481 (n + 1)

end A006481

/-!
# A006482: Euler characteristics of polytopes.

The programs for A006482, there is no canonical definition to state claims against.
-/

/-! ## A006482.P141730179343210343

`abs(∑[(n-1)^A174545(A000393(n+1))])`
-/

namespace A006482.P141730179343210343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (A174545 (A000393 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006482.P141730179343210343

/-!
# A006483: a(n) = Fibonacci(n)*2^n + 1.

The programs for A006483, the canonical program `A006483.P1423349417915343725` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006483 has offset 0).

The definition of A006483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*2^n+1` (program `A006483.P1423349417915343725`, by `A006483.P1423349417915343725.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006483.P13998736541881157325

`ogf((1-6x^2)/(1-3x-2x^2+4x^3))`
-/

namespace A006483.P13998736541881157325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6] [1, -3, -2, 4] n

end

end A006483.P13998736541881157325

namespace A006483

/-- `ogf((1-6x^2)/(1-3x-2x^2+4x^3))` -/
def P13998736541881157325.Spec : Prop :=
  ∀ n, P13998736541881157325.a n = A006483 n

end A006483

/-! ## A006483.P1423349417915343725

`A000045(n)*2^n+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006483

/-- `A000045(n)*2^n+1` -/
def P1423349417915343725.Spec : Prop :=
  ∀ n, P1423349417915343725.a n = A006483 n

theorem P1423349417915343725.correct : P1423349417915343725.Spec := by
  intro n
  simp only [A006483]

end A006483

/-! ## A006483.P10232439088371059108

`∑[ogf((-1+6x^2)/(-1+2x+4x^2))]`
-/

namespace A006483.P10232439088371059108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6] [1, -2, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006483.P10232439088371059108

namespace A006483

/-- `∑[ogf((-1+6x^2)/(-1+2x+4x^2))]` -/
def P10232439088371059108.Spec : Prop :=
  ∀ n, P10232439088371059108.a n = A006483 n

end A006483

/-! ## A006483.P17283528238741043435

`2^n*round(ϕ^n/sqrt(5))+1`
-/

namespace A006483.P17283528238741043435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + 1

end

end A006483.P17283528238741043435

namespace A006483

/-- `2^n*round(ϕ^n/sqrt(5))+1` -/
def P17283528238741043435.Spec : Prop :=
  ∀ n, P17283528238741043435.a n = A006483 n

end A006483

/-! ## A006483.P4841356937697481822

`or(1, A103435(n))`
-/

namespace A006483.P4841356937697481822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103435 n)

end

end A006483.P4841356937697481822

namespace A006483

/-- `or(1, A103435(n))` -/
def P4841356937697481822.Spec : Prop :=
  ∀ n, P4841356937697481822.a n = A006483 n

end A006483

/-! ## A006483.P1307993046183945650

`or(1, Δ[A014334(n)])`
-/

namespace A006483.P1307993046183945650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A006483.P1307993046183945650

namespace A006483

/-- `or(1, Δ[A014334(n)])` -/
def P1307993046183945650.Spec : Prop :=
  ∀ n, P1307993046183945650.a n = A006483 n

end A006483

/-! ## A006483.P4271073265218038496

`(A209084(n)+2)/2`
-/

namespace A006483.P4271073265218038496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209084 n + 2 : ℚ) / 2

end

end A006483.P4271073265218038496

namespace A006483

/-- `(A209084(n)+2)/2` -/
def P4271073265218038496.Spec : Prop :=
  ∀ n, P4271073265218038496.a n = (A006483 n : ℚ)

end A006483

/-! ## A006483.P15064264971558125138

`or(1, 2*A085449(n))`
-/

namespace A006483.P15064264971558125138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A085449 n)

end

end A006483.P15064264971558125138

namespace A006483

/-- `or(1, 2*A085449(n))` -/
def P15064264971558125138.Spec : Prop :=
  ∀ n, P15064264971558125138.a n = A006483 n

end A006483

/-! ## A006483.P7482812715737991035

`xor(1, A103435(A004525(2*n)))`
-/

namespace A006483.P7482812715737991035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103435 (A004525 (2 * n)).toNat)

end

end A006483.P7482812715737991035

namespace A006483

/-- `xor(1, A103435(A004525(2*n)))` -/
def P7482812715737991035.Spec : Prop :=
  ∀ n, P7482812715737991035.a n = A006483 n

end A006483

/-! ## A006483.P15368244940452226678

`xor(1, A103435(xor(1, A004442(n))))`
-/

namespace A006483.P15368244940452226678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103435 (Int.xor 1 (A004442 n)).toNat)

end

end A006483.P15368244940452226678

namespace A006483

/-- `xor(1, A103435(xor(1, A004442(n))))` -/
def P15368244940452226678.Spec : Prop :=
  ∀ n, P15368244940452226678.a n = A006483 n

end A006483

/-! ## A006483.P15124192214748242010

`or(1, A000045(n)*A000079(n))`
-/

namespace A006483.P15124192214748242010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000045 n * A000079 n)

end

end A006483.P15124192214748242010

namespace A006483

/-- `or(1, A000045(n)*A000079(n))` -/
def P15124192214748242010.Spec : Prop :=
  ∀ n, P15124192214748242010.a n = A006483 n

end A006483

/-! ## A006483.P1059444164631294131

`∑[A000032(abs(1-n))*A011782(n)]`
-/

namespace A006483.P1059444164631294131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006483.P1059444164631294131

namespace A006483

/-- `∑[A000032(abs(1-n))*A011782(n)]` -/
def P1059444164631294131.Spec : Prop :=
  ∀ n, P1059444164631294131.a n = A006483 n

end A006483

/-! ## A006483.P6986767960651920927

`xor(A001222(A095283(n+1)), A103435(n))`
-/

namespace A006483.P6986767960651920927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A095283 (n + 1)).toNat) (A103435 n)

end

end A006483.P6986767960651920927

namespace A006483

/-- `xor(A001222(A095283(n+1)), A103435(n))` -/
def P6986767960651920927.Spec : Prop :=
  ∀ n, P6986767960651920927.a n = A006483 n

end A006483

/-! ## A006483.P15546270756057221033

`xor(A001222(A273289(n+2)), A103435(n))`
-/

namespace A006483.P15546270756057221033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A273289 (n + 2)).toNat) (A103435 n)

end

end A006483.P15546270756057221033

namespace A006483

/-- `xor(A001222(A273289(n+2)), A103435(n))` -/
def P15546270756057221033.Spec : Prop :=
  ∀ n, P15546270756057221033.a n = A006483 n

end A006483

/-!
# A006484: a(n) = n*(n + 1)*(n^2 - 3*n + 5)/6.

The programs for A006484, the canonical program `A006484.P1599834729797112259` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006484 has offset 0).

The definition of A006484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²-3*n+5)/6` (program `A006484.P4880915342393595348`, by `A006484.P4880915342393595348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006484.P9690450261925181465

`C(n+1, 2)+4*C(n+1, 4)`
-/

namespace A006484.P9690450261925181465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 4 * Nat.choose (n + 1) 4

end

end A006484.P9690450261925181465

namespace A006484

/-- `C(n+1, 2)+4*C(n+1, 4)` -/
def P9690450261925181465.Spec : Prop :=
  ∀ n, (P9690450261925181465.a n : ℤ) = A006484 n

end A006484

/-! ## A006484.P4880915342393595348

`n*(n+1)*(n²-3*n+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006484.P4880915342393595348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 5) : ℚ) / 6

end

end A006484.P4880915342393595348

namespace A006484

/-- `n*(n+1)*(n²-3*n+5)/6` -/
def P4880915342393595348.Spec : Prop :=
  ∀ n, P4880915342393595348.a n = (A006484 n : ℚ)

theorem P4880915342393595348.correct : P4880915342393595348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A006484, Nat.add_sub_cancel, A006484.P4880915342393595348.a, A006484.P1599834729797112259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A006484, Nat.add_sub_cancel, A006484.P4880915342393595348.a, A006484.P1599834729797112259.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A006484

/-! ## A006484.P1599834729797112259

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=10, a(4)=30`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006484

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1599834729797112259.Spec : Prop :=
  ∀ n, P1599834729797112259.a n = A006484 n

theorem P1599834729797112259.correct : P1599834729797112259.Spec := by
  intro n
  simp only [A006484]

end A006484

/-! ## A006484.P14920442405051221237

`∑[4*C(n, 3)+n]`
-/

namespace A006484.P14920442405051221237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006484.P14920442405051221237

namespace A006484

/-- `∑[4*C(n, 3)+n]` -/
def P14920442405051221237.Spec : Prop :=
  ∀ n, (P14920442405051221237.a n : ℤ) = A006484 n

end A006484

/-! ## A006484.P9898051867995611616

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A006484.P9898051867995611616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006484.P9898051867995611616

namespace A006484

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P9898051867995611616.Spec : Prop :=
  ∀ n, (P9898051867995611616.a n : ℤ) = A006484 n

end A006484

/-! ## A006484.P7701021078976101491

`C((1-n)²+n, 2)/3+n`
-/

namespace A006484.P7701021078976101491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2 : ℚ) / 3 + (n : ℚ)

end

end A006484.P7701021078976101491

namespace A006484

/-- `C((1-n)²+n, 2)/3+n` -/
def P7701021078976101491.Spec : Prop :=
  ∀ n, P7701021078976101491.a n = (A006484 n : ℚ)

end A006484

/-! ## A006484.P14237409864536303556

`A006325(n)+n`
-/

namespace A006484.P14237409864536303556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n + (n : ℤ)

end

end A006484.P14237409864536303556

namespace A006484

/-- `A006325(n)+n` -/
def P14237409864536303556.Spec : Prop :=
  ∀ n, P14237409864536303556.a n = A006484 n

end A006484

/-! ## A006484.P18361029676280972115

`n*A000125(n)-∑[n²]`
-/

namespace A006484.P18361029676280972115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000125 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006484.P18361029676280972115

namespace A006484

/-- `n*A000125(n)-∑[n²]` -/
def P18361029676280972115.Spec : Prop :=
  ∀ n, P18361029676280972115.a n = A006484 n

end A006484

/-! ## A006484.P17372204544191187566

`A352405(n+1)-∑[∑[n²]]`
-/

namespace A006484.P17372204544191187566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352405 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006484.P17372204544191187566

namespace A006484

/-- `A352405(n+1)-∑[∑[n²]]` -/
def P17372204544191187566.Spec : Prop :=
  ∀ n, P17372204544191187566.a n = A006484 n

end A006484

/-! ## A006484.P11631548987709481883

`n*A004006(n)-∑[n²]+n`
-/

namespace A006484.P11631548987709481883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004006 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A006484.P11631548987709481883

namespace A006484

/-- `n*A004006(n)-∑[n²]+n` -/
def P11631548987709481883.Spec : Prop :=
  ∀ n, P11631548987709481883.a n = A006484 n

end A006484

/-! ## A006484.P3845200707343174715

`A384852(n)+A050407(n)`
-/

namespace A006484.P3845200707343174715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384852 n + A050407 n

end

end A006484.P3845200707343174715

namespace A006484

/-- `A384852(n)+A050407(n)` -/
def P3845200707343174715.Spec : Prop :=
  ∀ n, P3845200707343174715.a n = A006484 n

end A006484

/-! ## A006484.P9693447607677321762

`A033488(n)-A132124(n)`
-/

namespace A006484.P9693447607677321762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n - A132124 n

end

end A006484.P9693447607677321762

namespace A006484

/-- `A033488(n)-A132124(n)` -/
def P9693447607677321762.Spec : Prop :=
  ∀ n, P9693447607677321762.a n = A006484 n

end A006484

/-! ## A006484.P5441815592024602965

`A100855(n)-A071246(n)`
-/

namespace A006484.P5441815592024602965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - A071246 n

end

end A006484.P5441815592024602965

namespace A006484

/-- `A100855(n)-A071246(n)` -/
def P5441815592024602965.Spec : Prop :=
  ∀ n, P5441815592024602965.a n = A006484 n

end A006484

/-! ## A006484.P7427992818016515022

`A071239(n)-A135503(n)`
-/

namespace A006484.P7427992818016515022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - A135503 n

end

end A006484.P7427992818016515022

namespace A006484

/-- `A071239(n)-A135503(n)` -/
def P7427992818016515022.Spec : Prop :=
  ∀ n, P7427992818016515022.a n = A006484 n

end A006484

/-! ## A006484.P16174560371507475774

`A132366(n)-A081435(n)`
-/

namespace A006484.P16174560371507475774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132366 n - A081435 n

end

end A006484.P16174560371507475774

namespace A006484

/-- `A132366(n)-A081435(n)` -/
def P16174560371507475774.Spec : Prop :=
  ∀ n, P16174560371507475774.a n = A006484 n

end A006484

/-! ## A006484.P13975777027379755994

`A101374(n)-A330700(n)`
-/

namespace A006484.P13975777027379755994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n - A330700 n

end

end A006484.P13975777027379755994

namespace A006484

/-- `A101374(n)-A330700(n)` -/
def P13975777027379755994.Spec : Prop :=
  ∀ n, P13975777027379755994.a n = A006484 n

end A006484

/-! ## A006484.P7803151022809846509

`A213827(n)-A264850(n)`
-/

namespace A006484.P7803151022809846509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n - A264850 n

end

end A006484.P7803151022809846509

namespace A006484

/-- `A213827(n)-A264850(n)` -/
def P7803151022809846509.Spec : Prop :=
  ∀ n, P7803151022809846509.a n = A006484 n

end A006484

/-! ## A006484.P13510273467745658097

`A332697(n)-A255211(n)`
-/

namespace A006484.P13510273467745658097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332697 n - A255211 n

end

end A006484.P13510273467745658097

namespace A006484

/-- `A332697(n)-A255211(n)` -/
def P13510273467745658097.Spec : Prop :=
  ∀ n, P13510273467745658097.a n = A006484 n

end A006484

/-! ## A006484.P810227365531234052

`A055795(n+1)+A050534(n)`
-/

namespace A006484.P810227365531234052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + A050534 n

end

end A006484.P810227365531234052

namespace A006484

/-- `A055795(n+1)+A050534(n)` -/
def P810227365531234052.Spec : Prop :=
  ∀ n, P810227365531234052.a n = A006484 n

end A006484

/-! ## A006484.P8604583484669915241

`A378023(n+1)%A132366(n)`
-/

namespace A006484.P8604583484669915241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378023 (n + 1)) (A132366 n)

end

end A006484.P8604583484669915241

namespace A006484

/-- `A378023(n+1)%A132366(n)` -/
def P8604583484669915241.Spec : Prop :=
  ∀ n, P8604583484669915241.a n = A006484 n

end A006484

/-!
# A006485: a(n) = (2^(2^n + 1) + 1)/3.

The programs for A006485, the canonical program `A006485.P14218750805790703323` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006485 has offset 1).

The definition of A006485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006485.P14218750805790703323

`(2^(2^(n+1)+1)+1)/3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006485

/-- `(2^(2^(n+1)+1)+1)/3` -/
def P14218750805790703323.Spec : Prop :=
  ∀ n, P14218750805790703323.a n = (A006485 (n + 1) : ℚ)

end A006485

/-! ## A006485.P8553301121051733195

`(3*a(n-1)²+1)/2-a(n-1)` with `a(0)=3`
-/

namespace A006485.P8553301121051733195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (3 * a (n - 1) ^ 2 + 1) / 2 - a (n - 1)

end

end A006485.P8553301121051733195

namespace A006485

/-- `(3*a(n-1)²+1)/2-a(n-1)` -/
def P8553301121051733195.Spec : Prop :=
  ∀ n, P8553301121051733195.a n = (A006485 (n + 1) : ℚ)

end A006485

/-! ## A006485.P5104771988354546410

`a(n-1)²+(1-a(n-1))²/2` with `a(0)=3`
-/

namespace A006485.P5104771988354546410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 + (1 - a (n - 1)) ^ 2 / 2

end

end A006485.P5104771988354546410

namespace A006485

/-- `a(n-1)²+(1-a(n-1))²/2` -/
def P5104771988354546410.Spec : Prop :=
  ∀ n, P5104771988354546410.a n = (A006485 (n + 1) : ℚ)

end A006485

/-! ## A006485.P6853151936328266500

`A007583(2^n)`
-/

namespace A006485.P6853151936328266500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (2 ^ n)

end

end A006485.P6853151936328266500

namespace A006485

/-- `A007583(2^n)` -/
def P6853151936328266500.Spec : Prop :=
  ∀ n, P6853151936328266500.a n = A006485 (n + 1)

end A006485

/-!
# A006488: Numbers n such that n! has a square number of digits.

The programs for A006488, there is no canonical definition to state claims against.
-/

/-! ## A006488.P7520216191144658371

`eq[1, A007913(A034886(n))]`
-/

namespace A006488.P7520216191144658371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A034886 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006488.P7520216191144658371

/-! ## A006488.P9891258659665042756

`eq[1, A007913(A241730(n)+A055642(n))]`
-/

namespace A006488.P9891258659665042756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A241730 n + A055642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006488.P9891258659665042756

/-! ## A006488.P7133959502263398302

`eq[1, A007913(A027868(n)+A008906(n))]`
-/

namespace A006488.P7133959502263398302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A027868 n + A008906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006488.P7133959502263398302

/-! ## A006488.P10054697901243559719

`eq[1, A007913(A191610(n+1)+A008906(n)-n)]`
-/

namespace A006488.P10054697901243559719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A191610 (n + 1) + (A008906 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006488.P10054697901243559719

/-! ## A006488.P15271613206691176047

`eq[1, A207538(A027868(n)+A008906(n))]`
-/

namespace A006488.P15271613206691176047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (A027868 n + A008906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006488.P15271613206691176047

/-!
# A006489: Numbers k such that k-6, k, and k+6 are primes.

The programs for A006489, there is no canonical definition to state claims against.
-/

/-! ## A006489.P5605031979091436484

`A023241(n+1)+6`
-/

namespace A006489.P5605031979091436484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) + 6

end

end A006489.P5605031979091436484

/-! ## A006489.P6817722993331275138

`∪[A046119(n+1), A046122(n+1)]`
-/

namespace A006489.P6817722993331275138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P6817722993331275138

/-! ## A006489.P14725880003422786613

`p?[A087681(n+1)]`
-/

namespace A006489.P14725880003422786613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006489.P14725880003422786613

/-! ## A006489.P401474496553686834

`p?[A046133(n+1)+6]`
-/

namespace A006489.P401474496553686834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006489.P401474496553686834

/-! ## A006489.P8425190363932139708

`p?[A092216(n+1)-6]`
-/

namespace A006489.P8425190363932139708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006489.P8425190363932139708

/-! ## A006489.P8408940868695902413

`p?[2*A088766(n+1)+1]`
-/

namespace A006489.P8408940868695902413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088766 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A006489.P8408940868695902413

/-! ## A006489.P17552199319874581391

`∩[A283562(n+1), A087681(n+1)]`
-/

namespace A006489.P17552199319874581391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P17552199319874581391

/-! ## A006489.P12833180996321874676

`∩[A023201(n+1), A046117(n+1)]`
-/

namespace A006489.P12833180996321874676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P12833180996321874676

/-! ## A006489.P8403851873778469587

`∩[A023201(n+1), A087681(n+1)]`
-/

namespace A006489.P8403851873778469587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P8403851873778469587

/-! ## A006489.P17536027841593433800

`∩[A046117(n+1), A087681(n+1)]`
-/

namespace A006489.P17536027841593433800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P17536027841593433800

/-! ## A006489.P4712025678218066458

`∩[A067831(n+1), A087681(n+1)]`
-/

namespace A006489.P4712025678218066458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P4712025678218066458

/-! ## A006489.P16424218741764185431

`∩[A023201(n+1), A172071(n+1)]`
-/

namespace A006489.P16424218741764185431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P16424218741764185431

/-! ## A006489.P13470525552054013116

`∩[A087681(n+1), A172071(n+1)]`
-/

namespace A006489.P13470525552054013116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P13470525552054013116

/-! ## A006489.P11855238435960149640

`∩[A087681(n+1), A172988(n+1)]`
-/

namespace A006489.P11855238435960149640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P11855238435960149640

/-! ## A006489.P11771021233404044550

`∩[A023201(n+1), A104010(n+1)-A023201(n+1)]`
-/

namespace A006489.P11771021233404044550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P11771021233404044550

/-! ## A006489.P17117615352035863466

`∩[A046117(n+1), A104010(n+1)-A046117(n+1)]`
-/

namespace A006489.P17117615352035863466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104010 (n + 1) - A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P17117615352035863466

/-! ## A006489.P10310840350615816637

`∩[A015914(n+1), A046117(n+1)]`
-/

namespace A006489.P10310840350615816637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P10310840350615816637

/-! ## A006489.P684622872735874146

`∩[A015914(n+1), A087681(n+1)]`
-/

namespace A006489.P684622872735874146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P684622872735874146

/-! ## A006489.P3839427423513833329

`∩[A015914(n+1), A172071(n+1)]`
-/

namespace A006489.P3839427423513833329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P3839427423513833329

/-! ## A006489.P4284600968505208756

`∩[A087681(n+1), A136207(n+1)]`
-/

namespace A006489.P4284600968505208756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006489.P4284600968505208756

/-!
# A006490: a(1) = 1, a(2) = 0; for n > 2, a(n) = n*Fibonacci(n-2) (with the convention Fibonacci(0)=0, Fibonacci(1)=1).

The programs for A006490, the canonical program `A006490.P10224100167950449829` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006490 has offset 1).

The definition of A006490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006490.P15553014696226298734

`ogf((1-2x+2x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A006490.P15553014696226298734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -2, -1, 2, 1] n

end

end A006490.P15553014696226298734

namespace A006490

/-- `ogf((1-2x+2x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P15553014696226298734.Spec : Prop :=
  ∀ n, P15553014696226298734.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P10224100167950449829

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006490

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P10224100167950449829.Spec : Prop :=
  ∀ n, P10224100167950449829.a n = A006490 (n + 1)

theorem P10224100167950449829.correct : P10224100167950449829.Spec := by
  intro n
  simp only [A006490, Nat.add_sub_cancel]

end A006490

/-! ## A006490.P428166320245696962

`(n+1)*Δ[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A006490.P428166320245696962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006490.P428166320245696962

namespace A006490

/-- `(n+1)*Δ[a(n-1)+a(n-2)]` -/
def P428166320245696962.Spec : Prop :=
  ∀ n, P428166320245696962.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P14795238169852470002

`(n+1)*∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A006490.P14795238169852470002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006490.P14795238169852470002

namespace A006490

/-- `(n+1)*∑[a(n-1)+a(n-2)]` -/
def P14795238169852470002.Spec : Prop :=
  ∀ n, P14795238169852470002.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P7857307631447440401

`(1+n)*A212804(n)`
-/

namespace A006490.P7857307631447440401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A212804 n

end

end A006490.P7857307631447440401

namespace A006490

/-- `(1+n)*A212804(n)` -/
def P7857307631447440401.Spec : Prop :=
  ∀ n, P7857307631447440401.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P15528291406757538396

`(n+1)*Δ[A000045(n)]`
-/

namespace A006490.P15528291406757538396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P15528291406757538396

namespace A006490

/-- `(n+1)*Δ[A000045(n)]` -/
def P15528291406757538396.Spec : Prop :=
  ∀ n, P15528291406757538396.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P8119627050882103628

`(n+1)*Δ[A001611(n)]`
-/

namespace A006490.P8119627050882103628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P8119627050882103628

namespace A006490

/-- `(n+1)*Δ[A001611(n)]` -/
def P8119627050882103628.Spec : Prop :=
  ∀ n, P8119627050882103628.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P9607279734247136765

`(n+1)*Δ[A157725(n)]`
-/

namespace A006490.P9607279734247136765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P9607279734247136765

namespace A006490

/-- `(n+1)*Δ[A157725(n)]` -/
def P9607279734247136765.Spec : Prop :=
  ∀ n, P9607279734247136765.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P2840094488257120668

`(n+1)*Δ[A157726(n)]`
-/

namespace A006490.P2840094488257120668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P2840094488257120668

namespace A006490

/-- `(n+1)*Δ[A157726(n)]` -/
def P2840094488257120668.Spec : Prop :=
  ∀ n, P2840094488257120668.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P6117086975684490486

`(n+1)*Δ[A157727(n)]`
-/

namespace A006490.P6117086975684490486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P6117086975684490486

namespace A006490

/-- `(n+1)*Δ[A157727(n)]` -/
def P6117086975684490486.Spec : Prop :=
  ∀ n, P6117086975684490486.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P12770716718877554259

`(n+1)*Δ[A157729(n)]`
-/

namespace A006490.P12770716718877554259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A006490.P12770716718877554259

namespace A006490

/-- `(n+1)*Δ[A157729(n)]` -/
def P12770716718877554259.Spec : Prop :=
  ∀ n, P12770716718877554259.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P8634819155068733237

`(n+1)/2*A118658(n)`
-/

namespace A006490.P8634819155068733237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A118658 n : ℚ)

end

end A006490.P8634819155068733237

namespace A006490

/-- `(n+1)/2*A118658(n)` -/
def P8634819155068733237.Spec : Prop :=
  ∀ n, P8634819155068733237.a n = (A006490 (n + 1) : ℚ)

end A006490

/-! ## A006490.P16184217325941858019

`(n+1)*A247049(3*n)`
-/

namespace A006490.P16184217325941858019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247049 (3 * n)

end

end A006490.P16184217325941858019

namespace A006490

/-- `(n+1)*A247049(3*n)` -/
def P16184217325941858019.Spec : Prop :=
  ∀ n, P16184217325941858019.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P1578707002231267792

`(n+1)*A000045(abs(1-n))`
-/

namespace A006490.P1578707002231267792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 |1 - (n : ℤ)|.toNat

end

end A006490.P1578707002231267792

namespace A006490

/-- `(n+1)*A000045(abs(1-n))` -/
def P1578707002231267792.Spec : Prop :=
  ∀ n, P1578707002231267792.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P11607644371993123779

`(n+1)*(A210673(n+1)+n)`
-/

namespace A006490.P11607644371993123779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A210673 (n + 1) + (n : ℤ))

end

end A006490.P11607644371993123779

namespace A006490

/-- `(n+1)*(A210673(n+1)+n)` -/
def P11607644371993123779.Spec : Prop :=
  ∀ n, P11607644371993123779.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P16745698873406077622

`A000045(abs(n-1))/(n+1)^-1`
-/

namespace A006490.P16745698873406077622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 |(n : ℤ) - 1|.toNat : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A006490.P16745698873406077622

namespace A006490

/-- `A000045(abs(n-1))/(n+1)^-1` -/
def P16745698873406077622.Spec : Prop :=
  ∀ n, P16745698873406077622.a n = (A006490 (n + 1) : ℚ)

end A006490

/-! ## A006490.P4250370359142401839

`a(n-1)+A000032(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A006490.P4250370359142401839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (A000032 (n - 2) + a (n - 2))

end

end A006490.P4250370359142401839

namespace A006490

/-- `a(n-1)+A000032(n-2)+a(n-2)` -/
def P4250370359142401839.Spec : Prop :=
  ∀ n, P4250370359142401839.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P14701415658651253673

`A006367(n)+A001629(n)`
-/

namespace A006490.P14701415658651253673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n + A001629 n

end

end A006490.P14701415658651253673

namespace A006490

/-- `A006367(n)+A001629(n)` -/
def P14701415658651253673.Spec : Prop :=
  ∀ n, P14701415658651253673.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P17179591352320450424

`A152163(n)+A094588(n)`
-/

namespace A006490.P17179591352320450424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A094588 n

end

end A006490.P17179591352320450424

namespace A006490

/-- `A152163(n)+A094588(n)` -/
def P17179591352320450424.Spec : Prop :=
  ∀ n, P17179591352320450424.a n = A006490 (n + 1)

end A006490

/-! ## A006490.P2061974632678640892

`A264147(n)+A000045(n+1)`
-/

namespace A006490.P2061974632678640892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + A000045 (n + 1)

end

end A006490.P2061974632678640892

namespace A006490

/-- `A264147(n)+A000045(n+1)` -/
def P2061974632678640892.Spec : Prop :=
  ∀ n, P2061974632678640892.a n = A006490 (n + 1)

end A006490

/-!
# A006491: Generalized Lucas numbers.

The programs for A006491, the canonical program `A006491.P326429872329863243` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006491 has offset 1).

The definition of A006491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006491.P9378199648724737645

`ogf((1-3x+4x^2-2x^3)/(1-3x+5x^3-3x^5-x^6))`
-/

namespace A006491.P9378199648724737645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -2] [1, -3, 0, 5, 0, -3, -1] n

end

end A006491.P9378199648724737645

namespace A006491

/-- `ogf((1-3x+4x^2-2x^3)/(1-3x+5x^3-3x^5-x^6))` -/
def P9378199648724737645.Spec : Prop :=
  ∀ n, P9378199648724737645.a n = A006491 (n + 1)

end A006491

/-! ## A006491.P16359456395329747651

`a(n-1)+a(n-2)+(n+1)*A000045(n-1)-n*A000045(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A006491.P16359456395329747651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2) + (n + 1 : ℤ) * A000045 (n - 1) - (n : ℤ) * A000045 (n - 2)

end

end A006491.P16359456395329747651

namespace A006491

/-- `a(n-1)+a(n-2)+(n+1)*A000045(n-1)-n*A000045(n-2)` -/
def P16359456395329747651.Spec : Prop :=
  ∀ n, P16359456395329747651.a n = A006491 (n + 1)

end A006491

/-! ## A006491.P326429872329863243

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=5, a(4)=15, a(5)=28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006491

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P326429872329863243.Spec : Prop :=
  ∀ n, P326429872329863243.a n = A006491 (n + 1)

theorem P326429872329863243.correct : P326429872329863243.Spec := by
  intro n
  simp only [A006491, Nat.add_sub_cancel]

end A006491

/-! ## A006491.P17685206780959732764

`(n/2+1)*A006367(n)`
-/

namespace A006491.P17685206780959732764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A006367 n : ℚ)

end

end A006491.P17685206780959732764

namespace A006491

/-- `(n/2+1)*A006367(n)` -/
def P17685206780959732764.Spec : Prop :=
  ∀ n, P17685206780959732764.a n = (A006491 (n + 1) : ℚ)

end A006491

/-! ## A006491.P10833515477616605781

`∑[n+1]/(n+1)*Δ[A010049(n)]`
-/

namespace A006491.P10833515477616605781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * (f2 (n + 1) - f2 n : ℚ)

end

end A006491.P10833515477616605781

namespace A006491

/-- `∑[n+1]/(n+1)*Δ[A010049(n)]` -/
def P10833515477616605781.Spec : Prop :=
  ∀ n, P10833515477616605781.a n = (A006491 (n + 1) : ℚ)

end A006491

/-! ## A006491.P2464995395229951789

`(n/2+1)*(A006490(n+1)-A001629(n))`
-/

namespace A006491.P2464995395229951789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A006490 (n + 1) - A001629 n : ℚ)

end

end A006491.P2464995395229951789

namespace A006491

/-- `(n/2+1)*(A006490(n+1)-A001629(n))` -/
def P2464995395229951789.Spec : Prop :=
  ∀ n, P2464995395229951789.a n = (A006491 (n + 1) : ℚ)

end A006491

/-! ## A006491.P15878311670405673493

`A006367(n)/2*A080513(A005408(n))`
-/

namespace A006491.P15878311670405673493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 n : ℚ) / 2 * (A080513 (A005408 n).toNat : ℚ)

end

end A006491.P15878311670405673493

namespace A006491

/-- `A006367(n)/2*A080513(A005408(n))` -/
def P15878311670405673493.Spec : Prop :=
  ∀ n, P15878311670405673493.a n = (A006491 (n + 1) : ℚ)

end A006491

/-! ## A006491.P15251766183972236104

`(A000045(n+1)+A264147(n)-A001629(n))*(n/2+1)`
-/

namespace A006491.P15251766183972236104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) + (A264147 n - A001629 n) : ℚ) * ((n : ℚ) / 2 + 1)

end

end A006491.P15251766183972236104

namespace A006491

/-- `(A000045(n+1)+A264147(n)-A001629(n))*(n/2+1)` -/
def P15251766183972236104.Spec : Prop :=
  ∀ n, P15251766183972236104.a n = (A006491 (n + 1) : ℚ)

end A006491

/-!
# A006492: Generalized Lucas numbers.

The programs for A006492, the canonical program `A006492.P2941648497071509617` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006492 has offset 3).

The definition of A006492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006492.P2941648497071509617

`(n/3+1)*A105423(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006492

/-- `(n/3+1)*A105423(n)` -/
def P2941648497071509617.Spec : Prop :=
  ∀ n, P2941648497071509617.a n = (A006492 (n + 3) : ℚ)

end A006492

/-! ## A006492.P5072836889804278759

`A119458(A167614(n+2))`
-/

namespace A006492.P5072836889804278759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A167614 (n + 2)).toNat

end

end A006492.P5072836889804278759

namespace A006492

/-- `A119458(A167614(n+2))` -/
def P5072836889804278759.Spec : Prop :=
  ∀ n, P5072836889804278759.a n = A006492 (n + 3)

end A006492

/-! ## A006492.P13327319717649248326

`A119458(A141214(n)+6)`
-/

namespace A006492.P13327319717649248326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A141214 n + 6).toNat

end

end A006492.P13327319717649248326

namespace A006492

/-- `A119458(A141214(n)+6)` -/
def P13327319717649248326.Spec : Prop :=
  ∀ n, P13327319717649248326.a n = A006492 (n + 3)

end A006492

/-! ## A006492.P7607418955178580757

`A119458(A052905(n)+8)`
-/

namespace A006492.P7607418955178580757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A052905 n + 8).toNat

end

end A006492.P7607418955178580757

namespace A006492

/-- `A119458(A052905(n)+8)` -/
def P7607418955178580757.Spec : Prop :=
  ∀ n, P7607418955178580757.a n = A006492 (n + 3)

end A006492

/-! ## A006492.P11221270419699304046

`A119458(A055999(n)+9)`
-/

namespace A006492.P11221270419699304046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A055999 n + 9).toNat

end

end A006492.P11221270419699304046

namespace A006492

/-- `A119458(A055999(n)+9)` -/
def P11221270419699304046.Spec : Prop :=
  ∀ n, P11221270419699304046.a n = A006492 (n + 3)

end A006492

/-!
# A006493: Generalized Lucas numbers.

The programs for A006493, there is no canonical definition to state claims against.
-/

/-! ## A006493.P4293356599259447418

`A119458(A155212(n)+12)`
-/

namespace A006493.P4293356599259447418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A155212 n + 12).toNat

end

end A006493.P4293356599259447418

/-! ## A006493.P5223481740777800668

`A119458(A056000(n)+14)`
-/

namespace A006493.P5223481740777800668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (A056000 n + 14).toNat

end

end A006493.P5223481740777800668

/-! ## A006493.P1976217366065951666

`A119458(eq[3, A141169(n)])`
-/

namespace A006493.P1976217366065951666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006493.P1976217366065951666

/-! ## A006493.P14225420917836237576

`A119458(eq[4, A002262(n)])`
-/

namespace A006493.P14225420917836237576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006493.P14225420917836237576

/-!
# A006494: Number of possible chess games at the end of the n-th ply plus number of games that terminate (i.e., mate) in fewer than n plies.

The programs for A006494, there is no canonical definition to state claims against.
-/

/-! ## A006494.P12862721594194886149

`A079485(A046904(n))+A048987(n)`
-/

namespace A006494.P12862721594194886149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079485 (A046904 n).toNat + A048987 n

end

end A006494.P12862721594194886149

/-! ## A006494.P17964442464448761127

`A081157(A090338(n))+A048987(n)`
-/

namespace A006494.P17964442464448761127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081157 (A090338 n).toNat + A048987 n

end

end A006494.P17964442464448761127

/-!
# A006495: Real part of (1 + 2*i)^n, where i is sqrt(-1).

The programs for A006495, the canonical program `A006495.P9239761419215004560` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006495 has offset 0).

The definition of A006495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006495.P15810167881302552294

`ogf((1-x)/(1-2x+5x^2))`
-/

namespace A006495.P15810167881302552294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 5] n

end

end A006495.P15810167881302552294

namespace A006495

/-- `ogf((1-x)/(1-2x+5x^2))` -/
def P15810167881302552294.Spec : Prop :=
  ∀ n, P15810167881302552294.a n = A006495 n

end A006495

/-! ## A006495.P9239761419215004560

`2*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006495

/-- `2*a(n-1)-5*a(n-2)` -/
def P9239761419215004560.Spec : Prop :=
  ∀ n, P9239761419215004560.a n = A006495 n

theorem P9239761419215004560.correct : P9239761419215004560.Spec := by
  intro n
  simp only [A006495]

end A006495

/-! ## A006495.P7276094365140555464

`∑{#}[n, A098158(C(n+1, 2)+#)*(-4)^(n-#)]`
-/

namespace A006495.P7276094365140555464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A098158 (Nat.choose (n + 1) 2 + k) : ℚ) * (-4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A006495.P7276094365140555464

namespace A006495

/-- `∑{#}[n, A098158(C(n+1, 2)+#)*(-4)^(n-#)]` -/
def P7276094365140555464.Spec : Prop :=
  ∀ n, P7276094365140555464.a n = (A006495 n : ℚ)

end A006495

/-! ## A006495.P12730898922469007151

`∑{#}[n, A124182(C(n+1, 2)+#)*(-5)^(n-#)]`
-/

namespace A006495.P12730898922469007151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A124182 (Nat.choose (n + 1) 2 + k) : ℚ) * (-5 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A006495.P12730898922469007151

namespace A006495

/-- `∑{#}[n, A124182(C(n+1, 2)+#)*(-5)^(n-#)]` -/
def P12730898922469007151.Spec : Prop :=
  ∀ n, P12730898922469007151.a n = (A006495 n : ℚ)

end A006495

/-! ## A006495.P15679646794736670268

`∏[2-5/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A006495.P15679646794736670268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006495.P15679646794736670268

namespace A006495

/-- `∏[2-5/a(n-1)]` -/
def P15679646794736670268.Spec : Prop :=
  ∀ n, P15679646794736670268.a n = (A006495 n : ℚ)

end A006495

/-! ## A006495.P4232735450907108062

`5^(n/2)*cos(n*atan(2))`
-/

namespace A006495.P4232735450907108062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * Real.cos ((n : ℝ) * Real.arctan (2 : ℝ))

end

end A006495.P4232735450907108062

namespace A006495

/-- `5^(n/2)*cos(n*atan(2))` -/
def P4232735450907108062.Spec : Prop :=
  ∀ n, P4232735450907108062.a n = (A006495 n : ℝ)

end A006495

/-! ## A006495.P10317246149741639250

`Δ[A045873(n)]`
-/

namespace A006495.P10317246149741639250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006495.P10317246149741639250

namespace A006495

/-- `Δ[A045873(n)]` -/
def P10317246149741639250.Spec : Prop :=
  ∀ n, P10317246149741639250.a n = A006495 n

end A006495

/-! ## A006495.P10031420603699911429

`Δ[A006496(n)/2]`
-/

namespace A006495.P10031420603699911429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006496 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006495.P10031420603699911429

namespace A006495

/-- `Δ[A006496(n)/2]` -/
def P10031420603699911429.Spec : Prop :=
  ∀ n, P10031420603699911429.a n = (A006495 n : ℚ)

end A006495

/-! ## A006495.P15030379060637583009

`A116483(n)-A006496(n)`
-/

namespace A006495.P15030379060637583009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n - A006496 n

end

end A006495.P15030379060637583009

namespace A006495

/-- `A116483(n)-A006496(n)` -/
def P15030379060637583009.Spec : Prop :=
  ∀ n, P15030379060637583009.a n = A006495 n

end A006495

/-! ## A006495.P15363790026168564130

`A045873(n+1)-A045873(n)`
-/

namespace A006495.P15363790026168564130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1) - A045873 n

end

end A006495.P15363790026168564130

namespace A006495

/-- `A045873(n+1)-A045873(n)` -/
def P15363790026168564130.Spec : Prop :=
  ∀ n, P15363790026168564130.a n = A006495 n

end A006495

/-! ## A006495.P11653462409157109054

`A116483(n)-2*A045873(n)`
-/

namespace A006495.P11653462409157109054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n - 2 * A045873 n

end

end A006495.P11653462409157109054

namespace A006495

/-- `A116483(n)-2*A045873(n)` -/
def P11653462409157109054.Spec : Prop :=
  ∀ n, P11653462409157109054.a n = A006495 n

end A006495

/-! ## A006495.P14302047502277048189

`A006496(n)-A116484(n)`
-/

namespace A006495.P14302047502277048189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n - A116484 n

end

end A006495.P14302047502277048189

namespace A006495

/-- `A006496(n)-A116484(n)` -/
def P14302047502277048189.Spec : Prop :=
  ∀ n, P14302047502277048189.a n = A006495 n

end A006495

/-! ## A006495.P10733513828101164306

`2*A045873(n)-A116484(n)`
-/

namespace A006495.P10733513828101164306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045873 n - A116484 n

end

end A006495.P10733513828101164306

namespace A006495

/-- `2*A045873(n)-A116484(n)` -/
def P10733513828101164306.Spec : Prop :=
  ∀ n, P10733513828101164306.a n = A006495 n

end A006495

/-! ## A006495.P2121289209133169122

`(A116483(n)-A116484(n))/2`
-/

namespace A006495.P2121289209133169122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116483 n - A116484 n : ℚ) / 2

end

end A006495.P2121289209133169122

namespace A006495

/-- `(A116483(n)-A116484(n))/2` -/
def P2121289209133169122.Spec : Prop :=
  ∀ n, P2121289209133169122.a n = (A006495 n : ℚ)

end A006495

/-!
# A006496: Imaginary part of (1+2i)^n.

The programs for A006496, the canonical program `A006496.P2429979591989079942` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006496 has offset 0).

The definition of A006496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006496.P13600729376927498850

`2*A045873(n)`
-/

namespace A006496.P13600729376927498850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045873 n

end

end A006496.P13600729376927498850

namespace A006496

/-- `2*A045873(n)` -/
def P13600729376927498850.Spec : Prop :=
  ∀ n, P13600729376927498850.a n = A006496 n

end A006496

/-! ## A006496.P15372463648995275042

`ogf(2x/(1-2x+5x^2))`
-/

namespace A006496.P15372463648995275042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, 5] n

end

end A006496.P15372463648995275042

namespace A006496

/-- `ogf(2x/(1-2x+5x^2))` -/
def P15372463648995275042.Spec : Prop :=
  ∀ n, P15372463648995275042.a n = A006496 n

end A006496

/-! ## A006496.P2429979591989079942

`2*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006496

/-- `2*a(n-1)-5*a(n-2)` -/
def P2429979591989079942.Spec : Prop :=
  ∀ n, P2429979591989079942.a n = A006496 n

theorem P2429979591989079942.correct : P2429979591989079942.Spec := by
  intro n
  simp only [A006496]

end A006496

/-! ## A006496.P1483442072025655730

`A045873(A069782(n+1)-1)+A045873(n)`
-/

namespace A006496.P1483442072025655730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (A069782 (n + 1) - 1).toNat + A045873 n

end

end A006496.P1483442072025655730

namespace A006496

/-- `A045873(A069782(n+1)-1)+A045873(n)` -/
def P1483442072025655730.Spec : Prop :=
  ∀ n, P1483442072025655730.a n = A006496 n

end A006496

/-! ## A006496.P15509786968011674892

`A116483(n)-A006495(n)`
-/

namespace A006496.P15509786968011674892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n - A006495 n

end

end A006496.P15509786968011674892

namespace A006496

/-- `A116483(n)-A006495(n)` -/
def P15509786968011674892.Spec : Prop :=
  ∀ n, P15509786968011674892.a n = A006496 n

end A006496

/-! ## A006496.P8556935901827314866

`A116483(n)-Δ[A045873(n)]`
-/

namespace A006496.P8556935901827314866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n - (f1 (n + 1) - f1 n)

end

end A006496.P8556935901827314866

namespace A006496

/-- `A116483(n)-Δ[A045873(n)]` -/
def P8556935901827314866.Spec : Prop :=
  ∀ n, P8556935901827314866.a n = A006496 n

end A006496

/-! ## A006496.P13027895741677386388

`∑[A006495(n)]+A045873(n)-A006495(n)`
-/

namespace A006496.P13027895741677386388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A045873 n - A006495 n)

end

end A006496.P13027895741677386388

namespace A006496

/-- `∑[A006495(n)]+A045873(n)-A006495(n)` -/
def P13027895741677386388.Spec : Prop :=
  ∀ n, P13027895741677386388.a n = A006496 n

end A006496

/-! ## A006496.P16044864503341108261

`A045873(n+1)+A045873(n)-A006495(n)`
-/

namespace A006496.P16044864503341108261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1) + (A045873 n - A006495 n)

end

end A006496.P16044864503341108261

namespace A006496

/-- `A045873(n+1)+A045873(n)-A006495(n)` -/
def P16044864503341108261.Spec : Prop :=
  ∀ n, P16044864503341108261.a n = A006496 n

end A006496

/-! ## A006496.P6977850831081270100

`A045873(n)+A116483(n)-A045873(n+1)`
-/

namespace A006496.P6977850831081270100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n + (A116483 n - A045873 (n + 1))

end

end A006496.P6977850831081270100

namespace A006496

/-- `A045873(n)+A116483(n)-A045873(n+1)` -/
def P6977850831081270100.Spec : Prop :=
  ∀ n, P6977850831081270100.a n = A006496 n

end A006496

/-! ## A006496.P15248970536188908208

`A116484(n)+A006495(n)`
-/

namespace A006496.P15248970536188908208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + A006495 n

end

end A006496.P15248970536188908208

namespace A006496

/-- `A116484(n)+A006495(n)` -/
def P15248970536188908208.Spec : Prop :=
  ∀ n, P15248970536188908208.a n = A006496 n

end A006496

/-! ## A006496.P3087479608861438367

`A116484(n)+Δ[A045873(n)]`
-/

namespace A006496.P3087479608861438367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + (f1 (n + 1) - f1 n)

end

end A006496.P3087479608861438367

namespace A006496

/-- `A116484(n)+Δ[A045873(n)]` -/
def P3087479608861438367.Spec : Prop :=
  ∀ n, P3087479608861438367.a n = A006496 n

end A006496

/-! ## A006496.P14305851207681512762

`(A116484(n)+A116483(n))/2`
-/

namespace A006496.P14305851207681512762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116484 n + A116483 n : ℚ) / 2

end

end A006496.P14305851207681512762

namespace A006496

/-- `(A116484(n)+A116483(n))/2` -/
def P14305851207681512762.Spec : Prop :=
  ∀ n, P14305851207681512762.a n = (A006496 n : ℚ)

end A006496

/-! ## A006496.P9046627154287144829

`A045873(n+1)+A116484(n)-A045873(n)`
-/

namespace A006496.P9046627154287144829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1) + (A116484 n - A045873 n)

end

end A006496.P9046627154287144829

namespace A006496

/-- `A045873(n+1)+A116484(n)-A045873(n)` -/
def P9046627154287144829.Spec : Prop :=
  ∀ n, P9046627154287144829.a n = A006496 n

end A006496

/-!
# A006497: a(n) = 3*a(n-1) + a(n-2) with a(0) = 2, a(1) = 3.

The programs for A006497, the canonical program `A006497.P11628762787641244397` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006497 has offset 0).

The definition of A006497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A006497.P11628762787641244397`, by `A006497.P11628762787641244397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006497.P6700238644693075453

`ogf((2-3x)/(1-3x-x^2))`
-/

namespace A006497.P6700238644693075453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -3, -1] n

end

end A006497.P6700238644693075453

namespace A006497

/-- `ogf((2-3x)/(1-3x-x^2))` -/
def P6700238644693075453.Spec : Prop :=
  ∀ n, P6700238644693075453.a n = A006497 n

end A006497

/-! ## A006497.P11628762787641244397

`3*a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006497

/-- `3*a(n-1)+a(n-2)` -/
def P11628762787641244397.Spec : Prop :=
  ∀ n, (P11628762787641244397.a n : ℤ) = A006497 n

theorem P11628762787641244397.correct : P11628762787641244397.Spec := by
  intro n
  simp only [A006497]

end A006497

/-! ## A006497.P16488121045223280641

`2*A006190(n+1)-3*A006190(n)`
-/

namespace A006497.P16488121045223280641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006190 (n + 1) - 3 * A006190 n

end

end A006497.P16488121045223280641

namespace A006497

/-- `2*A006190(n+1)-3*A006190(n)` -/
def P16488121045223280641.Spec : Prop :=
  ∀ n, P16488121045223280641.a n = A006497 n

end A006497

/-! ## A006497.P7493309101322804969

`2^(1-n)*∑{#}[floor(n/2), C(n, 2*#)*13^#*3^(n-2*#)]`
-/

namespace A006497.P7493309101322804969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - (n : ℤ) : ℤ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (2 * k) * 13 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ))

end

end A006497.P7493309101322804969

namespace A006497

/-- `2^(1-n)*∑{#}[floor(n/2), C(n, 2*#)*13^#*3^(n-2*#)]` -/
def P7493309101322804969.Spec : Prop :=
  ∀ n, P7493309101322804969.a n = (A006497 n : ℚ)

end A006497

/-! ## A006497.P11322408199806183049

`sqrt(13*A006190(n)²+4*(-1)^n)`
-/

namespace A006497.P11322408199806183049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (13 * A006190 n ^ 2 + 4 * (-1) ^ n : ℝ)

end

end A006497.P11322408199806183049

namespace A006497

/-- `sqrt(13*A006190(n)²+4*(-1)^n)` -/
def P11322408199806183049.Spec : Prop :=
  ∀ n, P11322408199806183049.a n = (A006497 n : ℝ)

end A006497

/-! ## A006497.P8409228448615346602

`3*a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A006497.P8409228448615346602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 * a (n - 1) - (-a (n - 2))

end

end A006497.P8409228448615346602

namespace A006497

/-- `3*a(n-1)-floor(-a(n-2))` -/
def P8409228448615346602.Spec : Prop :=
  ∀ n, P8409228448615346602.a n = A006497 n

end A006497

/-! ## A006497.P17148335728821783226

`a(n-2)+a(n-1)/sqrt(1/9)` with `a(0)=2, a(1)=3`
-/

namespace A006497.P17148335728821783226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A006497.P17148335728821783226

namespace A006497

/-- `a(n-2)+a(n-1)/sqrt(1/9)` -/
def P17148335728821783226.Spec : Prop :=
  ∀ n, P17148335728821783226.a n = (A006497 n : ℝ)

end A006497

/-! ## A006497.P1643627260779016734

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A006497.P1643627260779016734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A006497.P1643627260779016734

namespace A006497

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P1643627260779016734.Spec : Prop :=
  ∀ n, P1643627260779016734.a n = A006497 n

end A006497

/-! ## A006497.P6434217358327312875

`((3+sqrt(13))/2)^n+((3-sqrt(13))/2)^n`
-/

namespace A006497.P6434217358327312875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (13 : ℝ)) / 2) ^ n + ((3 - Real.sqrt (13 : ℝ)) / 2) ^ n

end

end A006497.P6434217358327312875

namespace A006497

/-- `((3+sqrt(13))/2)^n+((3-sqrt(13))/2)^n` -/
def P6434217358327312875.Spec : Prop :=
  ∀ n, P6434217358327312875.a n = (A006497 n : ℝ)

theorem P6434217358327312875.correct : P6434217358327312875.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A006497, Nat.add_sub_cancel, A006497.P6434217358327312875.a, A006497.P11628762787641244397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A006497, Nat.add_sub_cancel, A006497.P6434217358327312875.a, A006497.P11628762787641244397.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A006497

/-! ## A006497.P3363229423791650114

`∑{#}[n, C(n, #)*A075118(#)]`
-/

namespace A006497.P3363229423791650114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A075118 k

end

end A006497.P3363229423791650114

namespace A006497

/-- `∑{#}[n, C(n, #)*A075118(#)]` -/
def P3363229423791650114.Spec : Prop :=
  ∀ n, P3363229423791650114.a n = A006497 n

end A006497

/-! ## A006497.P7559122231964074432

`abs(A018186(2*n+1)-A018186(2*n))`
-/

namespace A006497.P7559122231964074432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018186 (2 * n + 1) - A018186 (2 * n)|

end

end A006497.P7559122231964074432

namespace A006497

/-- `abs(A018186(2*n+1)-A018186(2*n))` -/
def P7559122231964074432.Spec : Prop :=
  ∀ n, P7559122231964074432.a n = A006497 n

end A006497

/-! ## A006497.P1840420252938805483

`∑{#}[n, (-1)^(n-#)*C(n, #)*A228569(#)]`
-/

namespace A006497.P1840420252938805483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A228569 k : ℚ)

end

end A006497.P1840420252938805483

namespace A006497

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A228569(#)]` -/
def P1840420252938805483.Spec : Prop :=
  ∀ n, P1840420252938805483.a n = (A006497 n : ℚ)

end A006497

/-!
# A006498: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = a(1) = a(2) = 1, a(3) = 2.

The programs for A006498, the canonical program `A006498.P9116683713513709684` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006498 has offset 0).

The definition of A006498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A006498.P9116683713513709684`, by `A006498.P9116683713513709684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006498.P325622446012130484

`ogf(1/(1-x-x^3-x^4))`
-/

namespace A006498.P325622446012130484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -1, -1] n

end

end A006498.P325622446012130484

namespace A006498

/-- `ogf(1/(1-x-x^3-x^4))` -/
def P325622446012130484.Spec : Prop :=
  ∀ n, P325622446012130484.a n = A006498 n

end A006498

/-! ## A006498.P9116683713513709684

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006498

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P9116683713513709684.Spec : Prop :=
  ∀ n, (P9116683713513709684.a n : ℤ) = A006498 n

theorem P9116683713513709684.correct : P9116683713513709684.Spec := by
  intro n
  simp only [A006498]

end A006498

/-! ## A006498.P12159911789069633490

`A000045(floor(n/2)+2)^(n%2)*A000045(floor(n/2)+1)^(2-n%2)`
-/

namespace A006498.P12159911789069633490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (⌊(n : ℚ) / 2⌋ + 2).toNat ^ (n % 2) : ℚ) * (A000045 (⌊(n : ℚ) / 2⌋ + 1).toNat : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A006498.P12159911789069633490

namespace A006498

/-- `A000045(floor(n/2)+2)^(n%2)*A000045(floor(n/2)+1)^(2-n%2)` -/
def P12159911789069633490.Spec : Prop :=
  ∀ n, P12159911789069633490.a n = (A006498 n : ℚ)

end A006498

/-! ## A006498.P10904318120585590808

`A074677(n+1)`
-/

namespace A006498.P10904318120585590808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1)

end

end A006498.P10904318120585590808

namespace A006498

/-- `A074677(n+1)` -/
def P10904318120585590808.Spec : Prop :=
  ∀ n, P10904318120585590808.a n = A006498 n

end A006498

/-! ## A006498.P17928813380684644977

`∑[abs(Δ[A074677(n)])]`
-/

namespace A006498.P17928813380684644977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006498.P17928813380684644977

namespace A006498

/-- `∑[abs(Δ[A074677(n)])]` -/
def P17928813380684644977.Spec : Prop :=
  ∀ n, P17928813380684644977.a n = A006498 n

end A006498

/-! ## A006498.P12879973795135619876

`A126116(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A006498.P12879973795135619876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A126116 n + a (n - 3)

end

end A006498.P12879973795135619876

namespace A006498

/-- `A126116(n)+a(n-3)` -/
def P12879973795135619876.Spec : Prop :=
  ∀ n, P12879973795135619876.a n = A006498 n

end A006498

/-! ## A006498.P7994634920728850241

`∑[A212804(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006498.P7994634920728850241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A006498.P7994634920728850241

namespace A006498

/-- `∑[A212804(n)]-a(n-2)` -/
def P7994634920728850241.Spec : Prop :=
  ∀ n, P7994634920728850241.a n = A006498 n

end A006498

/-! ## A006498.P10795477941161897297

`-round(A000045(n+1)/(ϕ-3))`
-/

namespace A006498.P10795477941161897297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway ((A000045 (n + 1) : ℝ) / (Real.goldenRatio - 3))

end

end A006498.P10795477941161897297

namespace A006498

/-- `-round(A000045(n+1)/(ϕ-3))` -/
def P10795477941161897297.Spec : Prop :=
  ∀ n, P10795477941161897297.a n = A006498 n

end A006498

/-! ## A006498.P17889234873673797948

`A000045(n)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A006498.P17889234873673797948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A000045 n + a (n - 4)

end

end A006498.P17889234873673797948

namespace A006498

/-- `A000045(n)+a(n-4)` -/
def P17889234873673797948.Spec : Prop :=
  ∀ n, P17889234873673797948.a n = A006498 n

end A006498

/-! ## A006498.P2415596826433437059

`∑[A000045(n-1)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A006498.P2415596826433437059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000045 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006498.P2415596826433437059

namespace A006498

/-- `∑[A000045(n-1)-a(n-2)]` -/
def P2415596826433437059.Spec : Prop :=
  ∀ n, P2415596826433437059.a n = A006498 n

end A006498

/-! ## A006498.P5550474094276936399

`A295688(n)-A056594(n)`
-/

namespace A006498.P5550474094276936399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 n - A056594 n

end

end A006498.P5550474094276936399

namespace A006498

/-- `A295688(n)-A056594(n)` -/
def P5550474094276936399.Spec : Prop :=
  ∀ n, P5550474094276936399.a n = A006498 n

end A006498

/-! ## A006498.P14401004118681003242

`A295684(n)-A152163(n)`
-/

namespace A006498.P14401004118681003242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 n - A152163 n

end

end A006498.P14401004118681003242

namespace A006498

/-- `A295684(n)-A152163(n)` -/
def P14401004118681003242.Spec : Prop :=
  ∀ n, P14401004118681003242.a n = A006498 n

end A006498

/-! ## A006498.P12443300479275266788

`A236144(n)-A236165(n)`
-/

namespace A006498.P12443300479275266788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A236165 n

end

end A006498.P12443300479275266788

namespace A006498

/-- `A236144(n)-A236165(n)` -/
def P12443300479275266788.Spec : Prop :=
  ∀ n, P12443300479275266788.a n = A006498 n

end A006498

/-! ## A006498.P46357565537261615

`A295691(n)-A295671(n)`
-/

namespace A006498.P46357565537261615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n - A295671 n

end

end A006498.P46357565537261615

namespace A006498

/-- `A295691(n)-A295671(n)` -/
def P46357565537261615.Spec : Prop :=
  ∀ n, P46357565537261615.a n = A006498 n

end A006498

/-! ## A006498.P9721894256089644058

`A074662(n)-Δ[A074677(n)]`
-/

namespace A006498.P9721894256089644058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - (f1 (n + 1) - f1 n)

end

end A006498.P9721894256089644058

namespace A006498

/-- `A074662(n)-Δ[A074677(n)]` -/
def P9721894256089644058.Spec : Prop :=
  ∀ n, P9721894256089644058.a n = A006498 n

end A006498

/-! ## A006498.P16382140144263091282

`A295685(n+1)-A295680(n)`
-/

namespace A006498.P16382140144263091282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 (n + 1) - A295680 n

end

end A006498.P16382140144263091282

namespace A006498

/-- `A295685(n+1)-A295680(n)` -/
def P16382140144263091282.Spec : Prop :=
  ∀ n, P16382140144263091282.a n = A006498 n

end A006498

/-! ## A006498.P17824369574259340943

`A126116(n)+A295680(n)/2`
-/

namespace A006498.P17824369574259340943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126116 n : ℚ) + (A295680 n : ℚ) / 2

end

end A006498.P17824369574259340943

namespace A006498

/-- `A126116(n)+A295680(n)/2` -/
def P17824369574259340943.Spec : Prop :=
  ∀ n, P17824369574259340943.a n = (A006498 n : ℚ)

end A006498

/-! ## A006498.P5036879457807786183

`∑[A126116(n+1)-A000045(n)]`
-/

namespace A006498.P5036879457807786183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006498.P5036879457807786183

namespace A006498

/-- `∑[A126116(n+1)-A000045(n)]` -/
def P5036879457807786183.Spec : Prop :=
  ∀ n, P5036879457807786183.a n = A006498 n

end A006498

/-! ## A006498.P1192219919634242182

`A111569(n+1)+A056594(n+1)`
-/

namespace A006498.P1192219919634242182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + A056594 (n + 1)

end

end A006498.P1192219919634242182

namespace A006498

/-- `A111569(n+1)+A056594(n+1)` -/
def P1192219919634242182.Spec : Prop :=
  ∀ n, P1192219919634242182.a n = A006498 n

end A006498

/-! ## A006498.P7640151951466753887

`A103609(n+2)*A103609(n+3)`
-/

namespace A006498.P7640151951466753887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 2) * A103609 (n + 3)

end

end A006498.P7640151951466753887

namespace A006498

/-- `A103609(n+2)*A103609(n+3)` -/
def P7640151951466753887.Spec : Prop :=
  ∀ n, P7640151951466753887.a n = A006498 n

end A006498

/-!
# A006499: Number of restricted circular combinations.

The programs for A006499, the canonical program `A006499.P10070524871460516135` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006499 has offset 0).

The definition of A006499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006499.P10070524871460516135

`ogf((1+2x+6x^2+2x^3)/(1-x-x^3-x^4))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006499

/-- `ogf((1+2x+6x^2+2x^3)/(1-x-x^3-x^4))` -/
def P10070524871460516135.Spec : Prop :=
  ∀ n, P10070524871460516135.a n = A006499 n

theorem P10070524871460516135.correct : P10070524871460516135.Spec := by
  intro n
  simp only [A006499]

end A006499

/-! ## A006499.P6110268548749421307

`(a(n-3)/a(n-2)+1)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A006499.P6110268548749421307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  (a (n - 3) / a (n - 2) + 1) * a (n - 1)

end

end A006499.P6110268548749421307

namespace A006499

/-- `(a(n-3)/a(n-2)+1)*a(n-1)` -/
def P6110268548749421307.Spec : Prop :=
  ∀ n, P6110268548749421307.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P16153650653769971855

`A056594(n+1)+A001638(n+2)`
-/

namespace A006499.P16153650653769971855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A001638 (n + 2)

end

end A006499.P16153650653769971855

namespace A006499

/-- `A056594(n+1)+A001638(n+2)` -/
def P16153650653769971855.Spec : Prop :=
  ∀ n, P16153650653769971855.a n = A006499 n

end A006499

/-! ## A006499.P12717346872116534499

`A295674(n+1)-A143431(2*n)`
-/

namespace A006499.P12717346872116534499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (n + 1) - A143431 (2 * n)

end

end A006499.P12717346872116534499

namespace A006499

/-- `A295674(n+1)-A143431(2*n)` -/
def P12717346872116534499.Spec : Prop :=
  ∀ n, P12717346872116534499.a n = A006499 n

end A006499

/-! ## A006499.P802930397521233427

`A295674(n+1)+2-A084101(n+1)`
-/

namespace A006499.P802930397521233427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 (n + 1) + (2 - A084101 (n + 1))

end

end A006499.P802930397521233427

namespace A006499

/-- `A295674(n+1)+2-A084101(n+1)` -/
def P802930397521233427.Spec : Prop :=
  ∀ n, P802930397521233427.a n = A006499 n

end A006499

/-! ## A006499.P943858713161444870

`5*A000045(n+1)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A006499.P943858713161444870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * A000045 (n + 1) - a (n - 2)

end

end A006499.P943858713161444870

namespace A006499

/-- `5*A000045(n+1)-a(n-2)` -/
def P943858713161444870.Spec : Prop :=
  ∀ n, P943858713161444870.a n = A006499 n

end A006499

/-! ## A006499.P1255809530594151091

`Δ[A080145(n)]/A006498(n)`
-/

namespace A006499.P1255809530594151091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A006498 n : ℚ)

end

end A006499.P1255809530594151091

namespace A006499

/-- `Δ[A080145(n)]/A006498(n)` -/
def P1255809530594151091.Spec : Prop :=
  ∀ n, P1255809530594151091.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P4482131406079959044

`A064831(n+1)/A006498(n)`
-/

namespace A006499.P4482131406079959044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064831 (n + 1) : ℚ) / (A006498 n : ℚ)

end

end A006499.P4482131406079959044

namespace A006499

/-- `A064831(n+1)/A006498(n)` -/
def P4482131406079959044.Spec : Prop :=
  ∀ n, P4482131406079959044.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P13189348423991363044

`∑[A001654(n+1)]/A006498(n)`
-/

namespace A006499.P13189348423991363044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006498 n : ℚ)

end

end A006499.P13189348423991363044

namespace A006499

/-- `∑[A001654(n+1)]/A006498(n)` -/
def P13189348423991363044.Spec : Prop :=
  ∀ n, P13189348423991363044.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P3565461214473393142

`A097083(2*n+1)/A006498(n)`
-/

namespace A006499.P3565461214473393142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097083 (2 * n + 1) : ℚ) / (A006498 n : ℚ)

end

end A006499.P3565461214473393142

namespace A006499

/-- `A097083(2*n+1)/A006498(n)` -/
def P3565461214473393142.Spec : Prop :=
  ∀ n, P3565461214473393142.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P501559737655756896

`∑[A006498(2*n+1)]/A006498(n)`
-/

namespace A006499.P501559737655756896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006498 n : ℚ)

end

end A006499.P501559737655756896

namespace A006499

/-- `∑[A006498(2*n+1)]/A006498(n)` -/
def P501559737655756896.Spec : Prop :=
  ∀ n, P501559737655756896.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P14233845715036381401

`∑[A070550(2*n)]/A074677(n+1)`
-/

namespace A006499.P14233845715036381401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A074677 (n + 1) : ℚ)

end

end A006499.P14233845715036381401

namespace A006499

/-- `∑[A070550(2*n)]/A074677(n+1)` -/
def P14233845715036381401.Spec : Prop :=
  ∀ n, P14233845715036381401.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P12493315009291075188

`∑[∑[A074677(2*n+1)]]/A074677(n+1)`
-/

namespace A006499.P12493315009291075188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A074677 (n + 1) : ℚ)

end

end A006499.P12493315009291075188

namespace A006499

/-- `∑[∑[A074677(2*n+1)]]/A074677(n+1)` -/
def P12493315009291075188.Spec : Prop :=
  ∀ n, P12493315009291075188.a n = (A006499 n : ℚ)

end A006499

/-! ## A006499.P16407054041045742819

`A284115(∑[or(1, n)])`
-/

namespace A006499.P16407054041045742819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006499.P16407054041045742819

namespace A006499

/-- `A284115(∑[or(1, n)])` -/
def P16407054041045742819.Spec : Prop :=
  ∀ n, P16407054041045742819.a n = A006499 n

end A006499

/-! ## A006499.P9484543236027074042

`A284115(A000982(n+1))`
-/

namespace A006499.P9484543236027074042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A000982 (n + 1)).toNat

end

end A006499.P9484543236027074042

namespace A006499

/-- `A284115(A000982(n+1))` -/
def P9484543236027074042.Spec : Prop :=
  ∀ n, P9484543236027074042.a n = A006499 n

end A006499

/-! ## A006499.P10740549156531384630

`A284115(A074133(n+1))`
-/

namespace A006499.P10740549156531384630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A074133 (n + 1)).toNat

end

end A006499.P10740549156531384630

namespace A006499

/-- `A284115(A074133(n+1))` -/
def P10740549156531384630.Spec : Prop :=
  ∀ n, P10740549156531384630.a n = A006499 n

end A006499

/-! ## A006499.P4737813462884000864

`A284115(A080827(n+1))`
-/

namespace A006499.P4737813462884000864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A080827 (n + 1)).toNat

end

end A006499.P4737813462884000864

namespace A006499

/-- `A284115(A080827(n+1))` -/
def P4737813462884000864.Spec : Prop :=
  ∀ n, P4737813462884000864.a n = A006499 n

end A006499

/-! ## A006499.P18002945458749586694

`A284115(A104563(n+1))`
-/

namespace A006499.P18002945458749586694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A104563 (n + 1)).toNat

end

end A006499.P18002945458749586694

namespace A006499

/-- `A284115(A104563(n+1))` -/
def P18002945458749586694.Spec : Prop :=
  ∀ n, P18002945458749586694.a n = A006499 n

end A006499

/-! ## A006499.P16078897335863650407

`A284115(A099392(n+2))`
-/

namespace A006499.P16078897335863650407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (A099392 (n + 2)).toNat

end

end A006499.P16078897335863650407

namespace A006499

/-- `A284115(A099392(n+2))` -/
def P16078897335863650407.Spec : Prop :=
  ∀ n, P16078897335863650407.a n = A006499 n

end A006499

