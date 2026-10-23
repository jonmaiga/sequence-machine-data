import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136601: Complement of A136602.

The programs for A136601, there is no canonical definition to state claims against.
-/

/-! ## A136601.P3365464928817538365

`eq[0, A066957(n)]`
-/

namespace A136601.P3365464928817538365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136601.P3365464928817538365

/-! ## A136601.P7348524587281627310

`lt[A066957(n), acot(A007895(n))]`
-/

namespace A136601.P7348524587281627310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007895 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A136601.P7348524587281627310

/-! ## A136601.P697180288166965187

`lt[A014167(A066957(n)+1), 2]`
-/

namespace A136601.P697180288166965187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014167 (A066957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136601.P697180288166965187

/-! ## A136601.P18407869151231543966

`lt[A074288(A066957(n)+1), 2]`
-/

namespace A136601.P18407869151231543966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (A066957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136601.P18407869151231543966

/-! ## A136601.P8526869713062805491

`lt[A167307(A066957(n)+1), 2]`
-/

namespace A136601.P8526869713062805491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167307 (A066957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136601.P8526869713062805491

/-! ## A136601.P4506494236202521000

`lt[A000040(A066957(n)+1), 3]`
-/

namespace A136601.P4506494236202521000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136601.P4506494236202521000

/-! ## A136601.P10528049212196728986

`lt[A066957(n), acot(A004526(n))]`
-/

namespace A136601.P10528049212196728986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004526 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A136601.P10528049212196728986

/-! ## A136601.P15223159549702698390

`lt[A066957(n), acot(A005100(n+1))]`
-/

namespace A136601.P15223159549702698390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005100 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A136601.P15223159549702698390

/-! ## A136601.P182422622892429452

`lt[A066957(n)*A273536(n), 1]`
-/

namespace A136601.P182422622892429452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n * A273536 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136601.P182422622892429452

/-!
# A136603: Positive numbers having a unique representation by inserting minus and plus-signs in 123456789.

The programs for A136603, there is no canonical definition to state claims against.
-/

/-! ## A136603.P10504517193595212739

`eq[1, A066957(n)]`
-/

namespace A136603.P10504517193595212739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136603.P10504517193595212739

/-! ## A136603.P18125872521434115144

`lt[A091434(A066957(n)²), 1]`
-/

namespace A136603.P18125872521434115144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A066957 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136603.P18125872521434115144

/-! ## A136603.P17854005367613123286

`lt[A038520(A066957(n)+1), 1]`
-/

namespace A136603.P17854005367613123286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (A066957 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136603.P17854005367613123286

/-! ## A136603.P9195848314331060481

`lt[(1-A066957(n))², A054977(n)]`
-/

namespace A136603.P9195848314331060481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066957 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136603.P9195848314331060481

/-! ## A136603.P2268424492265790502

`lt[(1-A066957(n))², A057427(n)]`
-/

namespace A136603.P2268424492265790502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066957 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136603.P2268424492265790502

/-! ## A136603.P6204139723049939219

`lt[xor(4, A000040(A066957(n)+1)+1), 2]`
-/

namespace A136603.P6204139723049939219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A000040 (A066957 n + 1).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136603.P6204139723049939219

/-! ## A136603.P5162840818791662351

`lt[A025147(A066957(n)), A054977(n)]`
-/

namespace A136603.P5162840818791662351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (A066957 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136603.P5162840818791662351

/-! ## A136603.P3910358070697933574

`lt[A091434(A066957(n)), A057427(n)]`
-/

namespace A136603.P3910358070697933574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091434 (A066957 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136603.P3910358070697933574

/-! ## A136603.P1484086583728783337

`lt[A004526(A066957(n)²), A066957(n)]`
-/

namespace A136603.P1484086583728783337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066957 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136603.P1484086583728783337

/-!
# A136604: Partial sums of A066957.

The programs for A136604, there is no canonical definition to state claims against.
-/

/-! ## A136604.P4097332851951117540

`∑[A066957(n)]`
-/

namespace A136604.P4097332851951117540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136604.P4097332851951117540

/-!
# A136605: Triangle read by rows: T(n,k) = number of forests on n unlabeled nodes with k edges (n>=1, 0<=k<=n-1).

The programs for A136605, there is no canonical definition to state claims against.
-/

/-! ## A136605.P15363013667692409573

`A095133(∑[char[∑[n]]]²-n)`
-/

namespace A136605.P15363013667692409573
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A136605.P15363013667692409573

/-! ## A136605.P2356334063595878850

`A105821(A061579(comp[∑[n-1]])+1)`
-/

namespace A136605.P2356334063595878850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat

end

end A136605.P2356334063595878850

/-! ## A136605.P17401470147467874197

`A155092(A038722(n+1)%A188427(3*n+4))`
-/

namespace A136605.P17401470147467874197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155092 (Int.tmod (A038722 (n + 1)) (A188427 (3 * n + 4))).toNat

end

end A136605.P17401470147467874197

/-! ## A136605.P9084094596874643178

`A029931(A101489(n)%A001213(n+1))`
-/

namespace A136605.P9084094596874643178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.tmod (A101489 n) (A001213 (n + 1))).toNat

end

end A136605.P9084094596874643178

/-!
# A136606: Reduced denominators in the Maclaurin series for the Gudermannian.

The programs for A136606, there is no canonical definition to state claims against.
-/

/-! ## A136606.P13718316491726108070

`sqrt(A056982(n))*A335258(n+1)`
-/

namespace A136606.P13718316491726108070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056982 n : ℝ) * (A335258 (n + 1) : ℝ)

end

end A136606.P13718316491726108070

/-! ## A136606.P4179116597458907632

`A000142(2*n+1)/gcd(A000111(2*n), A000142(2*n+1))`
-/

namespace A136606.P4179116597458907632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n + 1) : ℚ) / (Int.gcd (A000111 (2 * n)) (A000142 (2 * n + 1)) : ℚ)

end

end A136606.P4179116597458907632

/-!
# A136610: Number of odd digits in Fibonacci numbers.

The programs for A136610, the canonical program `A136610.P9162835627362272791` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136610 has offset 0).

The definition of A136610 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A196564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136610.P5352899407394051569

`A060384(n)-A138468(n)`
-/

namespace A136610.P5352899407394051569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n - A138468 n

end

end A136610.P5352899407394051569

namespace A136610

/-- `A060384(n)-A138468(n)` -/
def P5352899407394051569.Spec : Prop :=
  ∀ n, P5352899407394051569.a n = A136610 n

end A136610

/-! ## A136610.P9162835627362272791

`A196564(A000045(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136610

/-- `A196564(A000045(n))` -/
def P9162835627362272791.Spec : Prop :=
  ∀ n, P9162835627362272791.a n = A136610 n

theorem P9162835627362272791.correct : P9162835627362272791.Spec := by
  intro n
  simp only [A136610]

end A136610

/-! ## A136610.P6333764756788803726

`∑{digits}[A000045(n), A000035(#)]`
-/

namespace A136610.P6333764756788803726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A136610.P6333764756788803726

namespace A136610

/-- `∑{digits}[A000045(n), A000035(#)]` -/
def P6333764756788803726.Spec : Prop :=
  ∀ n, P6333764756788803726.a n = A136610 n

end A136610

/-! ## A136610.P11956264699146884550

`∑{digits}[A000045(n), A059841(#+1)]`
-/

namespace A136610.P11956264699146884550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (x + 1)).sum

end

end A136610.P11956264699146884550

namespace A136610

/-- `∑{digits}[A000045(n), A059841(#+1)]` -/
def P11956264699146884550.Spec : Prop :=
  ∀ n, P11956264699146884550.a n = A136610 n

end A136610

/-! ## A136610.P11619218682274533203

`∑{digits}[A000045(n), A178226(#+1)]`
-/

namespace A136610.P11619218682274533203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178226 (x + 1)).sum

end

end A136610.P11619218682274533203

namespace A136610

/-- `∑{digits}[A000045(n), A178226(#+1)]` -/
def P11619218682274533203.Spec : Prop :=
  ∀ n, P11619218682274533203.a n = A136610 n

end A136610

/-! ## A136610.P5853415116767529916

`∑{digits}[A000045(n), 1-A059841(#)]`
-/

namespace A136610.P5853415116767529916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A059841 x).sum

end

end A136610.P5853415116767529916

namespace A136610

/-- `∑{digits}[A000045(n), 1-A059841(#)]` -/
def P5853415116767529916.Spec : Prop :=
  ∀ n, P5853415116767529916.a n = A136610 n

end A136610

/-! ## A136610.P13899689982362796230

`∑{digits}[A000045(n), A098800(#+2)]`
-/

namespace A136610.P13899689982362796230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A098800 (x + 2)).sum

end

end A136610.P13899689982362796230

namespace A136610

/-- `∑{digits}[A000045(n), A098800(#+2)]` -/
def P13899689982362796230.Spec : Prop :=
  ∀ n, P13899689982362796230.a n = A136610 n

end A136610

/-! ## A136610.P5409330728844069496

`∑{digits}[A000045(n), and(#, A000051(n))]`
-/

namespace A136610.P5409330728844069496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.land (x : ℤ) (A000051 n)).sum

end

end A136610.P5409330728844069496

namespace A136610

/-- `∑{digits}[A000045(n), and(#, A000051(n))]` -/
def P5409330728844069496.Spec : Prop :=
  ∀ n, P5409330728844069496.a n = A136610 n

end A136610

/-!
# A136611: (0, 1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, ...) becomes (0, 1, 2, 3, 4^5, 6, 7*8, 9, 10^11, 12^13, 14*15, 16, 17^18*19, ...).

The programs for A136611, there is no canonical definition to state claims against.
-/

/-! ## A136611.P8707397689982268490

`n^5^C(n, 4)`
-/

namespace A136611.P8707397689982268490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 ^ Nat.choose n 4

end

end A136611.P8707397689982268490

/-!
# A136612: a(n) = ((prime(n+3) + prime(n+1)) - (prime(n+2) + prime(n))).

The programs for A136612, the canonical program `A136612.P2775654094035174028` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136612 has offset 1).

The definition of A136612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136612.P2775654094035174028

`A001223(n+1)+A001223(n+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136612

/-- `A001223(n+1)+A001223(n+3)` -/
def P2775654094035174028.Spec : Prop :=
  ∀ n, P2775654094035174028.a n = A136612 (n + 1)

theorem P2775654094035174028.correct : P2775654094035174028.Spec := by
  intro n
  simp only [A136612, Nat.add_sub_cancel]

end A136612

/-! ## A136612.P10902793401750829209

`A031166(n)-a(n-1)` with `a(0)=3`
-/

namespace A136612.P10902793401750829209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A031166 n - a (n - 1)

end

end A136612.P10902793401750829209

namespace A136612

/-- `A031166(n)-a(n-1)` -/
def P10902793401750829209.Spec : Prop :=
  ∀ n, P10902793401750829209.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P16922318329190770281

`A008347(n+4)-A008347(n)`
-/

namespace A136612.P16922318329190770281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 4) - A008347 n

end

end A136612.P16922318329190770281

namespace A136612

/-- `A008347(n+4)-A008347(n)` -/
def P16922318329190770281.Spec : Prop :=
  ∀ n, P16922318329190770281.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P13892289203856085321

`A036263(n+2)+A031131(n+1)`
-/

namespace A136612.P13892289203856085321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) + A031131 (n + 1)

end

end A136612.P13892289203856085321

namespace A136612

/-- `A036263(n+2)+A031131(n+1)` -/
def P13892289203856085321.Spec : Prop :=
  ∀ n, P13892289203856085321.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P10368048267656539818

`A093667(n+2)-A000040(n+1)`
-/

namespace A136612.P10368048267656539818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2) - A000040 (n + 1)

end

end A136612.P10368048267656539818

namespace A136612

/-- `A093667(n+2)-A000040(n+1)` -/
def P10368048267656539818.Spec : Prop :=
  ∀ n, P10368048267656539818.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P5569607231917727598

`A215848(n+2)-A093667(n+1)`
-/

namespace A136612.P5569607231917727598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2) - A093667 (n + 1)

end

end A136612.P5569607231917727598

namespace A136612

/-- `A215848(n+2)-A093667(n+1)` -/
def P5569607231917727598.Spec : Prop :=
  ∀ n, P5569607231917727598.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P17385148500784445262

`A093667(n+2)-A008578(n+2)`
-/

namespace A136612.P17385148500784445262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2) - A008578 (n + 2)

end

end A136612.P17385148500784445262

namespace A136612

/-- `A093667(n+2)-A008578(n+2)` -/
def P17385148500784445262.Spec : Prop :=
  ∀ n, P17385148500784445262.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P15890874203222469120

`Δ[A215848(n+1)+Δ[A007504(n)]]`
-/

namespace A136612.P15890874203222469120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P15890874203222469120

namespace A136612

/-- `Δ[A215848(n+1)+Δ[A007504(n)]]` -/
def P15890874203222469120.Spec : Prop :=
  ∀ n, P15890874203222469120.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P8501683281727124882

`Δ[A093667(n+1)+A065091(n+1)]`
-/

namespace A136612.P8501683281727124882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P8501683281727124882

namespace A136612

/-- `Δ[A093667(n+1)+A065091(n+1)]` -/
def P8501683281727124882.Spec : Prop :=
  ∀ n, P8501683281727124882.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P7787066148156515023

`Δ[A215848(n+1)+A000040(n+1)]`
-/

namespace A136612.P7787066148156515023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P7787066148156515023

namespace A136612

/-- `Δ[A215848(n+1)+A000040(n+1)]` -/
def P7787066148156515023.Spec : Prop :=
  ∀ n, P7787066148156515023.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P10863404088849801431

`A000040(n+2)+A000040(n+2)-A096380(n+1)`
-/

namespace A136612.P10863404088849801431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A000040 (n + 2) - A096380 (n + 1))

end

end A136612.P10863404088849801431

namespace A136612

/-- `A000040(n+2)+A000040(n+2)-A096380(n+1)` -/
def P10863404088849801431.Spec : Prop :=
  ∀ n, P10863404088849801431.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P8939272469741235175

`Δ[A048448(n+2)]`
-/

namespace A136612.P8939272469741235175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P8939272469741235175

namespace A136612

/-- `Δ[A048448(n+2)]` -/
def P8939272469741235175.Spec : Prop :=
  ∀ n, P8939272469741235175.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P12260068849651173804

`A147966(n+3)-A147965(n+1)`
-/

namespace A136612.P12260068849651173804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 3) - A147965 (n + 1)

end

end A136612.P12260068849651173804

namespace A136612

/-- `A147966(n+3)-A147965(n+1)` -/
def P12260068849651173804.Spec : Prop :=
  ∀ n, P12260068849651173804.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P1370902309959962606

`A048448(n+3)-A048448(n+2)`
-/

namespace A136612.P1370902309959962606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 3) - A048448 (n + 2)

end

end A136612.P1370902309959962606

namespace A136612

/-- `A048448(n+3)-A048448(n+2)` -/
def P1370902309959962606.Spec : Prop :=
  ∀ n, P1370902309959962606.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P6841020986112615841

`Δ[A065091(n+2)+A008578(n+2)]`
-/

namespace A136612.P6841020986112615841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P6841020986112615841

namespace A136612

/-- `Δ[A065091(n+2)+A008578(n+2)]` -/
def P6841020986112615841.Spec : Prop :=
  ∀ n, P6841020986112615841.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P1658153095212590585

`A054541(n+2)+Δ[A065091(n+2)]`
-/

namespace A136612.P1658153095212590585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + (f1 (n + 1) - f1 n)

end

end A136612.P1658153095212590585

namespace A136612

/-- `A054541(n+2)+Δ[A065091(n+2)]` -/
def P1658153095212590585.Spec : Prop :=
  ∀ n, P1658153095212590585.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P239821988963039285

`Δ[A001043(n+2)-A125266(n+2)]`
-/

namespace A136612.P239821988963039285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) - A125266 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P239821988963039285

namespace A136612

/-- `Δ[A001043(n+2)-A125266(n+2)]` -/
def P239821988963039285.Spec : Prop :=
  ∀ n, P239821988963039285.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P13037521720782094116

`Δ[A001043(n+1)+Δ[A065091(n+1)]]`
-/

namespace A136612.P13037521720782094116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P13037521720782094116

namespace A136612

/-- `Δ[A001043(n+1)+Δ[A065091(n+1)]]` -/
def P13037521720782094116.Spec : Prop :=
  ∀ n, P13037521720782094116.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P9486259352419538977

`Δ[A176099(n+3)]`
-/

namespace A136612.P9486259352419538977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136612.P9486259352419538977

namespace A136612

/-- `Δ[A176099(n+3)]` -/
def P9486259352419538977.Spec : Prop :=
  ∀ n, P9486259352419538977.a n = A136612 (n + 1)

end A136612

/-! ## A136612.P7529732670509353803

`A054541(n+2)+A054541(n+4)`
-/

namespace A136612.P7529732670509353803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + A054541 (n + 4)

end

end A136612.P7529732670509353803

namespace A136612

/-- `A054541(n+2)+A054541(n+4)` -/
def P7529732670509353803.Spec : Prop :=
  ∀ n, P7529732670509353803.a n = A136612 (n + 1)

end A136612

/-!
# A136613: Concatenation of (sum of digits of n) and n.

The programs for A136613, the canonical program `A136613.P13511050304393903560` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136613 has offset 0).

The definition of A136613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136613.P13511050304393903560

`10^A055642(n)*A007953(n)+n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136613

/-- `10^A055642(n)*A007953(n)+n` -/
def P13511050304393903560.Spec : Prop :=
  ∀ n, P13511050304393903560.a n = (A136613 n : ℚ)

end A136613

/-! ## A136613.P16735116614959350717

`n-(A318757(∑[n])-10^A055642(n)*A007953(n))`
-/

namespace A136613.P16735116614959350717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ((A318757 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) - (10 : ℚ) ^ (A055642 n : ℤ) * (A007953 n : ℚ))

end

end A136613.P16735116614959350717

namespace A136613

/-- `n-(A318757(∑[n])-10^A055642(n)*A007953(n))` -/
def P16735116614959350717.Spec : Prop :=
  ∀ n, P16735116614959350717.a n = (A136613 n : ℚ)

end A136613

/-! ## A136613.P10316929539402186349

`A008592(A004086(n))-A001489(A051022(n))`
-/

namespace A136613.P10316929539402186349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A004086 n).toNat - A001489 (A051022 n).toNat

end

end A136613.P10316929539402186349

namespace A136613

/-- `A008592(A004086(n))-A001489(A051022(n))` -/
def P10316929539402186349.Spec : Prop :=
  ∀ n, P10316929539402186349.a n = A136613 n

end A136613

/-! ## A136613.P17358264006142252394

`A343452(n+1)+A001222(A000079(n))`
-/

namespace A136613.P17358264006142252394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343452 (n + 1) + A001222 (A000079 n).toNat

end

end A136613.P17358264006142252394

namespace A136613

/-- `A343452(n+1)+A001222(A000079(n))` -/
def P17358264006142252394.Spec : Prop :=
  ∀ n, P17358264006142252394.a n = A136613 n

end A136613

/-! ## A136613.P6415348944930917595

`A344511(A007088(n))+A343452(n+1)`
-/

namespace A136613.P6415348944930917595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A007088 n).toNat + A343452 (n + 1)

end

end A136613.P6415348944930917595

namespace A136613

/-- `A344511(A007088(n))+A343452(n+1)` -/
def P6415348944930917595.Spec : Prop :=
  ∀ n, P6415348944930917595.a n = A136613 n

end A136613

/-!
# A136614: Sum of digits of A108773 and of A136613.

The programs for A136614, the canonical program `A136614.P12201404879078556315` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136614 has offset 0).

The definition of A136614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136614.P12201404879078556315

`∑{digits}[n, #]+∑{digits}[∑{digits}[n, #], #]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136614

/-- `∑{digits}[n, #]+∑{digits}[∑{digits}[n, #], #]` -/
def P12201404879078556315.Spec : Prop :=
  ∀ n, (P12201404879078556315.a n : ℤ) = A136614 n

theorem P12201404879078556315.correct : P12201404879078556315.Spec := by
  intro n
  simp only [A136614]

end A136614

/-! ## A136614.P2676735240731808523

`A062028(∑{digits}[n, #])`
-/

namespace A136614.P2676735240731808523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A136614.P2676735240731808523

namespace A136614

/-- `A062028(∑{digits}[n, #])` -/
def P2676735240731808523.Spec : Prop :=
  ∀ n, P2676735240731808523.a n = A136614 n

end A136614

/-! ## A136614.P7676802888087648887

`∑{digits}[A108773(n), #]`
-/

namespace A136614.P7676802888087648887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136614.P7676802888087648887

namespace A136614

/-- `∑{digits}[A108773(n), #]` -/
def P7676802888087648887.Spec : Prop :=
  ∀ n, (P7676802888087648887.a n : ℤ) = A136614 n

end A136614

/-! ## A136614.P13342406083704045903

`∑{digits}[A136613(n), #]`
-/

namespace A136614.P13342406083704045903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136614.P13342406083704045903

namespace A136614

/-- `∑{digits}[A136613(n), #]` -/
def P13342406083704045903.Spec : Prop :=
  ∀ n, (P13342406083704045903.a n : ℤ) = A136614 n

end A136614

/-! ## A136614.P5322332114258793282

`A062028(A007953(n))`
-/

namespace A136614.P5322332114258793282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A007953 n).toNat

end

end A136614.P5322332114258793282

namespace A136614

/-- `A062028(A007953(n))` -/
def P5322332114258793282.Spec : Prop :=
  ∀ n, P5322332114258793282.a n = A136614 n

end A136614

/-! ## A136614.P15122584883590452144

`A062028(A169805(n)/2)`
-/

namespace A136614.P15122584883590452144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

end

end A136614.P15122584883590452144

namespace A136614

/-- `A062028(A169805(n)/2)` -/
def P15122584883590452144.Spec : Prop :=
  ∀ n, P15122584883590452144.a n = A136614 n

end A136614

/-! ## A136614.P11133669427821520863

`A062028(A062028(n)-n)`
-/

namespace A136614.P11133669427821520863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A062028 n - (n : ℤ)).toNat

end

end A136614.P11133669427821520863

namespace A136614

/-- `A062028(A062028(n)-n)` -/
def P11133669427821520863.Spec : Prop :=
  ∀ n, P11133669427821520863.a n = A136614 n

end A136614

/-! ## A136614.P16486642382535550364

`A160939(A007953(n)+1)-1`
-/

namespace A136614.P16486642382535550364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (A007953 n + 1).toNat - 1

end

end A136614.P16486642382535550364

namespace A136614

/-- `A160939(A007953(n)+1)-1` -/
def P16486642382535550364.Spec : Prop :=
  ∀ n, P16486642382535550364.a n = A136614 n

end A136614

/-! ## A136614.P6269959919616859286

`A160939(A160939(n+1)-n)-1`
-/

namespace A136614.P6269959919616859286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (A160939 (n + 1) - (n : ℤ)).toNat - 1

end

end A136614.P6269959919616859286

namespace A136614

/-- `A160939(A160939(n+1)-n)-1` -/
def P6269959919616859286.Spec : Prop :=
  ∀ n, P6269959919616859286.a n = A136614 n

end A136614

/-! ## A136614.P4583029548821343698

`A007953(A108773(n))`
-/

namespace A136614.P4583029548821343698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A108773 n).toNat

end

end A136614.P4583029548821343698

namespace A136614

/-- `A007953(A108773(n))` -/
def P4583029548821343698.Spec : Prop :=
  ∀ n, P4583029548821343698.a n = A136614 n

end A136614

/-! ## A136614.P10366337822156530463

`A007953(A136613(n))`
-/

namespace A136614.P10366337822156530463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A136613 n).toNat

end

end A136614.P10366337822156530463

namespace A136614

/-- `A007953(A136613(n))` -/
def P10366337822156530463.Spec : Prop :=
  ∀ n, P10366337822156530463.a n = A136614 n

end A136614

/-!
# A136615: Fold-switch-fold sequence defined by McFarlane and Withers for m=3: Let A(n) = If[Mod[A(n - 1), 2] == 0, A(n - 1)/2, (m - A(n - 1))2]; a(n)= If[ Mod[A(n - 1), 2] == 0, a(n - 1)/2, (Pi - a(n - 1))/2].

The programs for A136615, there is no canonical definition to state claims against.
-/

/-! ## A136615.P16690618333821468131

`A080918(xor(A035225(n+1), A046058(n+1)))`
-/

namespace A136615.P16690618333821468131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (Int.xor (A035225 (n + 1)) (A046058 (n + 1))).toNat

end

end A136615.P16690618333821468131

/-!
# A136616: a(n) = largest m with H(m) - H(n) <= 1, where H(i) = Sum_{j=1 to i} 1/j, the i-th harmonic number, H(0) = 0.

The programs for A136616, the canonical program `A136616.P1728225680338750838` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136616 has offset 0).

The definition of A136616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136616.P1728225680338750838

`floor(e*n+(e-1)/2+(e-1/e)/(24*n+12))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136616

/-- `floor(e*n+(e-1)/2+(e-1/e)/(24*n+12))` -/
def P1728225680338750838.Spec : Prop :=
  ∀ n, P1728225680338750838.a n = A136616 n

theorem P1728225680338750838.correct : P1728225680338750838.Spec := by
  intro n
  simp only [A136616]

end A136616

/-! ## A136616.P4914012750599114313

`A136617(n+1)+n`
-/

namespace A136616.P4914012750599114313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + (n : ℤ)

end

end A136616.P4914012750599114313

namespace A136616

/-- `A136617(n+1)+n` -/
def P4914012750599114313.Spec : Prop :=
  ∀ n, P4914012750599114313.a n = A136616 n

end A136616

/-! ## A136616.P2562394129023802133

`A213908(n+1)+n-ceil(sin(n)²)`
-/

namespace A136616.P2562394129023802133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉)

end

end A136616.P2562394129023802133

namespace A136616

/-- `A213908(n+1)+n-ceil(sin(n)²)` -/
def P2562394129023802133.Spec : Prop :=
  ∀ n, P2562394129023802133.a n = A136616 n

end A136616

/-! ## A136616.P11251474334414308234

`A103762(n+1)+A057428(n)`
-/

namespace A136616.P11251474334414308234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) + A057428 n

end

end A136616.P11251474334414308234

namespace A136616

/-- `A103762(n+1)+A057428(n)` -/
def P11251474334414308234.Spec : Prop :=
  ∀ n, P11251474334414308234.a n = A136616 n

end A136616

/-! ## A136616.P16870566193110128813

`A055456(A213908(n+1))+n`
-/

namespace A136616.P16870566193110128813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A213908 (n + 1)).toNat + (n : ℤ)

end

end A136616.P16870566193110128813

namespace A136616

/-- `A055456(A213908(n+1))+n` -/
def P16870566193110128813.Spec : Prop :=
  ∀ n, P16870566193110128813.a n = A136616 n

end A136616

/-! ## A136616.P17899307278012831989

`A103762(n+1)-A057427(n)`
-/

namespace A136616.P17899307278012831989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) - A057427 n

end

end A136616.P17899307278012831989

namespace A136616

/-- `A103762(n+1)-A057427(n)` -/
def P17899307278012831989.Spec : Prop :=
  ∀ n, P17899307278012831989.a n = A136616 n

end A136616

/-! ## A136616.P16961515594734850679

`A065033(2*(A103762(n+1)-1))`
-/

namespace A136616.P16961515594734850679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A103762 (n + 1) - 1)).toNat

end

end A136616.P16961515594734850679

namespace A136616

/-- `A065033(2*(A103762(n+1)-1))` -/
def P16961515594734850679.Spec : Prop :=
  ∀ n, P16961515594734850679.a n = A136616 n

end A136616

/-! ## A136616.P13251393360073037617

`A213908(n+1)+A028310(n)-1`
-/

namespace A136616.P13251393360073037617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + (A028310 n - 1)

end

end A136616.P13251393360073037617

namespace A136616

/-- `A213908(n+1)+A028310(n)-1` -/
def P13251393360073037617.Spec : Prop :=
  ∀ n, P13251393360073037617.a n = A136616 n

end A136616

/-! ## A136616.P505964291992606154

`A103762(n+1)+A022843(n)-A121384(n)`
-/

namespace A136616.P505964291992606154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) + (A022843 n - A121384 n)

end

end A136616.P505964291992606154

namespace A136616

/-- `A103762(n+1)+A022843(n)-A121384(n)` -/
def P505964291992606154.Spec : Prop :=
  ∀ n, P505964291992606154.a n = A136616 n

end A136616

/-! ## A136616.P224491536481865007

`A214966(∑[n+1])+n`
-/

namespace A136616.P224491536481865007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214966 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A136616.P224491536481865007

namespace A136616

/-- `A214966(∑[n+1])+n` -/
def P224491536481865007.Spec : Prop :=
  ∀ n, P224491536481865007.a n = A136616 n

end A136616

/-!
# A136617: a(n) = largest k such that the sum of k consecutive reciprocals 1/n + ... + 1/(n+k-1) does not exceed 1.

The programs for A136617, the canonical program `A136617.P13619438040445121568` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136617 has offset 1).

The definition of A136617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136617.P13619438040445121568

`floor((e-1)*(n+1-1/2)+(e-1/e)/(24*(n+1-1/2)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136617

/-- `floor((e-1)*(n+1-1/2)+(e-1/e)/(24*(n+1-1/2)))` -/
def P13619438040445121568.Spec : Prop :=
  ∀ n, P13619438040445121568.a n = A136617 (n + 1)

theorem P13619438040445121568.correct : P13619438040445121568.Spec := by
  intro n
  simp only [A136617, Nat.add_sub_cancel]

end A136617

/-! ## A136617.P3937462205684773699

`A136616(n)-(n+1)+1`
-/

namespace A136617.P3937462205684773699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136616 n - (n + 1 : ℤ) + 1

end

end A136617.P3937462205684773699

namespace A136617

/-- `A136616(n)-(n+1)+1` -/
def P3937462205684773699.Spec : Prop :=
  ∀ n, P3937462205684773699.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P17882549759347703791

`A136616(n)-n`
-/

namespace A136617.P17882549759347703791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136616 n - (n : ℤ)

end

end A136617.P17882549759347703791

namespace A136617

/-- `A136616(n)-n` -/
def P17882549759347703791.Spec : Prop :=
  ∀ n, P17882549759347703791.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P10094505008151389476

`A213908(n+1)-ceil(sin(n)²)`
-/

namespace A136617.P10094505008151389476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A136617.P10094505008151389476

namespace A136617

/-- `A213908(n+1)-ceil(sin(n)²)` -/
def P10094505008151389476.Spec : Prop :=
  ∀ n, P10094505008151389476.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P5330018253048794258

`A055456(A213908(n+1))`
-/

namespace A136617.P5330018253048794258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A213908 (n + 1)).toNat

end

end A136617.P5330018253048794258

namespace A136617

/-- `A055456(A213908(n+1))` -/
def P5330018253048794258.Spec : Prop :=
  ∀ n, P5330018253048794258.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P1909893637829750403

`A028310(A213908(n+1)-1)`
-/

namespace A136617.P1909893637829750403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A213908 (n + 1) - 1).toNat

end

end A136617.P1909893637829750403

namespace A136617

/-- `A028310(A213908(n+1)-1)` -/
def P1909893637829750403.Spec : Prop :=
  ∀ n, P1909893637829750403.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P17975843547844326653

`A213908(n+1)+A057428(n)`
-/

namespace A136617.P17975843547844326653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + A057428 n

end

end A136617.P17975843547844326653

namespace A136617

/-- `A213908(n+1)+A057428(n)` -/
def P17975843547844326653.Spec : Prop :=
  ∀ n, P17975843547844326653.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P3807489179519823

`A055456(A103762(n+1)-n)`
-/

namespace A136617.P3807489179519823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A103762 (n + 1) - (n : ℤ)).toNat

end

end A136617.P3807489179519823

namespace A136617

/-- `A055456(A103762(n+1)-n)` -/
def P3807489179519823.Spec : Prop :=
  ∀ n, P3807489179519823.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P11804708434376960502

`A213908(n+1)-A057427(n)`
-/

namespace A136617.P11804708434376960502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) - A057427 n

end

end A136617.P11804708434376960502

namespace A136617

/-- `A213908(n+1)-A057427(n)` -/
def P11804708434376960502.Spec : Prop :=
  ∀ n, P11804708434376960502.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P9105676511737934786

`A103762(n+1)-A087156(n+1)`
-/

namespace A136617.P9105676511737934786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) - A087156 (n + 1)

end

end A136617.P9105676511737934786

namespace A136617

/-- `A103762(n+1)-A087156(n+1)` -/
def P9105676511737934786.Spec : Prop :=
  ∀ n, P9105676511737934786.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P11564679448591689850

`A103762(n+1)-(A057427(n)+n)`
-/

namespace A136617.P11564679448591689850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) - (A057427 n + (n : ℤ))

end

end A136617.P11564679448591689850

namespace A136617

/-- `A103762(n+1)-(A057427(n)+n)` -/
def P11564679448591689850.Spec : Prop :=
  ∀ n, P11564679448591689850.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P14267421253950930692

`A103762(n+1)+A057428(n)-n`
-/

namespace A136617.P14267421253950930692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) + (A057428 n - (n : ℤ))

end

end A136617.P14267421253950930692

namespace A136617

/-- `A103762(n+1)+A057428(n)-n` -/
def P14267421253950930692.Spec : Prop :=
  ∀ n, P14267421253950930692.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P3638649921336138132

`A213908(n+1)-char[A213927(n+1)]`
-/

namespace A136617.P3638649921336138132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136617.P3638649921336138132

namespace A136617

/-- `A213908(n+1)-char[A213927(n+1)]` -/
def P3638649921336138132.Spec : Prop :=
  ∀ n, P3638649921336138132.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P5690825455247493820

`A103762(n+1)-(char[A052938(n)]+n)`
-/

namespace A136617.P5690825455247493820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ)

end

end A136617.P5690825455247493820

namespace A136617

/-- `A103762(n+1)-(char[A052938(n)]+n)` -/
def P5690825455247493820.Spec : Prop :=
  ∀ n, P5690825455247493820.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P14639418278103146808

`A213908(n+1)-A002496(n+1)%2`
-/

namespace A136617.P14639418278103146808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) - Int.tmod (A002496 (n + 1)) 2

end

end A136617.P14639418278103146808

namespace A136617

/-- `A213908(n+1)-A002496(n+1)%2` -/
def P14639418278103146808.Spec : Prop :=
  ∀ n, P14639418278103146808.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P17097458882998648846

`A281388(A213908(n+1)-a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A136617.P17097458882998648846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281388 (A213908 (n + 1) - a (n - 1) + 1).toNat + a (n - 1)

end

end A136617.P17097458882998648846

namespace A136617

/-- `A281388(A213908(n+1)-a(n-1)+1)+a(n-1)` -/
def P17097458882998648846.Spec : Prop :=
  ∀ n, P17097458882998648846.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P5533825582031579005

`A213908(n+1)-A304042(a(A001222(n)))` with `a(0)=1`
-/

namespace A136617.P5533825582031579005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213908 (n + 1) - A304042 (a (A001222 n).toNat).toNat

end

end A136617.P5533825582031579005

namespace A136617

/-- `A213908(n+1)-A304042(a(A001222(n)))` -/
def P5533825582031579005.Spec : Prop :=
  ∀ n, P5533825582031579005.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P17706398897362503985

`A213908(n+1)+A022843(n)-A121384(n)`
-/

namespace A136617.P17706398897362503985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (n + 1) + (A022843 n - A121384 n)

end

end A136617.P17706398897362503985

namespace A136617

/-- `A213908(n+1)+A022843(n)-A121384(n)` -/
def P17706398897362503985.Spec : Prop :=
  ∀ n, P17706398897362503985.a n = A136617 (n + 1)

end A136617

/-! ## A136617.P670463781778154463

`A209081(A103762(n+1))`
-/

namespace A136617.P670463781778154463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A103762 (n + 1)).toNat

end

end A136617.P670463781778154463

namespace A136617

/-- `A209081(A103762(n+1))` -/
def P670463781778154463.Spec : Prop :=
  ∀ n, P670463781778154463.a n = A136617 (n + 1)

end A136617

/-!
# A136619: a(1) = 1, then repeat period 3: [1, 4, 2].

The programs for A136619, the canonical program `A136619.P1400438081899835036` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136619 has offset 1).

The definition of A136619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136619.P1400438081899835036

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136619

/-- `a(n-3)` -/
def P1400438081899835036.Spec : Prop :=
  ∀ n, (P1400438081899835036.a n : ℤ) = A136619 (n + 1)

theorem P1400438081899835036.correct : P1400438081899835036.Spec := by
  intro n
  simp only [A136619, Nat.add_sub_cancel]

end A136619

/-!
# A136621: Transpose T(n,k) of Parker's partition triangle A047812 (n >= 1 and 0 <= k <= n-1).

The programs for A136621, there is no canonical definition to state claims against.
-/

/-! ## A136621.P7368493513571996417

`A047812(A038722(n+1))`
-/

namespace A136621.P7368493513571996417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A038722 (n + 1)).toNat

end

end A136621.P7368493513571996417

/-! ## A136621.P17988631442737655158

`A047812(A061579(n)+1)`
-/

namespace A136621.P17988631442737655158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A061579 n + 1).toNat

end

end A136621.P17988631442737655158

/-! ## A136621.P2074849047379101894

`A047812(A093995(n+1)-n)`
-/

namespace A136621.P2074849047379101894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A136621.P2074849047379101894

/-! ## A136621.P5894264722233934516

`A047812(A002024(n+1)²-n)`
-/

namespace A136621.P5894264722233934516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A136621.P5894264722233934516

/-! ## A136621.P6694691491846934523

`A047812(A057944(n)+A004736(n+1))`
-/

namespace A136621.P6694691491846934523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 (A057944 n + A004736 (n + 1)).toNat

end

end A136621.P6694691491846934523

/-!
# A136622: Partial sums of the irregular table A136624.

The programs for A136622, there is no canonical definition to state claims against.
-/

/-! ## A136622.P6649715622234347444

`A099384(4*A263597(n+1))`
-/

namespace A136622.P6649715622234347444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (4 * A263597 (n + 1)).toNat

end

end A136622.P6649715622234347444

/-! ## A136622.P12266270895375588735

`A099384(4*A263905(n+1))`
-/

namespace A136622.P12266270895375588735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (4 * A263905 (n + 1)).toNat

end

end A136622.P12266270895375588735

/-! ## A136622.P1013860479275730451

`A008619(A243113(A245049(n)²))`
-/

namespace A136622.P1013860479275730451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A243113 (A245049 n ^ 2).toNat).toNat

end

end A136622.P1013860479275730451

/-! ## A136622.P1783569645958870791

`A099384(A008574(A263597(n+1)))`
-/

namespace A136622.P1783569645958870791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (A008574 (A263597 (n + 1)).toNat).toNat

end

end A136622.P1783569645958870791

/-! ## A136622.P9169155774644339504

`A091953(A156885(n))`
-/

namespace A136622.P9169155774644339504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091953 (A156885 n).toNat

end

end A136622.P9169155774644339504

/-!
# A136623: a(n) is the largest prime power that is <=n and is coprime to n.

The programs for A136623, there is no canonical definition to state claims against.
-/

/-! ## A136623.P17451904753717972549

`A031218(A010055(∑[18*n]+4)+n)`
-/

namespace A136623.P17451904753717972549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A010055 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + (n : ℤ)).toNat

end

end A136623.P17451904753717972549

/-! ## A136623.P1335957626863960214

`A031218(A028310(n))%p?[(n+1)^3-n]`
-/

namespace A136623.P1335957626863960214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031218 (A028310 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A136623.P1335957626863960214

/-! ## A136623.P14069722828189495384

`A034699((n*a(n-1))%A093182(n+1))` with `a(0)=1`
-/

namespace A136623.P14069722828189495384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034699 (Int.tmod ((n : ℤ) * a (n - 1)) (A093182 (n + 1))).toNat

end

end A136623.P14069722828189495384

/-! ## A136623.P16558259291468172596

`A031218(A028310(n))%Δ[A002765(n)]`
-/

namespace A136623.P16558259291468172596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031218 (A028310 n).toNat) (f1 (n + 1) - f1 n)

end

end A136623.P16558259291468172596

/-! ## A136623.P10670851261211716189

`A031218(A028310(n))+A000007(n)*A055571(n+1)`
-/

namespace A136623.P10670851261211716189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A028310 n).toNat + A000007 n * A055571 (n + 1)

end

end A136623.P10670851261211716189

/-!
# A136624: Irregular triangle read by rows: classify each numeric partition by sum of its parts and by the size of the staircase Ferrers board required to contain it. The triangle gives the number of partitions in each class, cf. A136102 and A136103.

The programs for A136624, there is no canonical definition to state claims against.
-/

/-! ## A136624.P4748573384591483618

`A244231(ceil(Δ[A244324(n+1)]/2)+1)`
-/

namespace A136624.P4748573384591483618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉ + 1).toNat

end

end A136624.P4748573384591483618

/-! ## A136624.P10749789842313064322

`A322058(n)+A213729(A242563(n))`
-/

namespace A136624.P10749789842313064322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 n + A213729 (A242563 n).toNat

end

end A136624.P10749789842313064322

/-! ## A136624.P6876440788725540528

`A000120(C(A004001(2*(n+1)), A131644(n+1)))`
-/

namespace A136624.P6876440788725540528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A004001 (2 * (n + 1))).toNat (A131644 (n + 1)).toNat)

end

end A136624.P6876440788725540528

/-! ## A136624.P2027338252927726483

`A008687(or(2, A307578(n)))/A342084(A342096(n+1))`
-/

namespace A136624.P2027338252927726483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008687 (Int.lor 2 (A307578 n)).toNat : ℚ) / (A342084 (A342096 (n + 1)).toNat : ℚ)

end

end A136624.P2027338252927726483

/-!
# A136625: Transpose the irregular triangle A136624; rows will now count numeric partitions and columns will count new Catalan objects.

The programs for A136625, there is no canonical definition to state claims against.
-/

/-! ## A136625.P8833812686020883632

`A325189(lt[0, A325189(n)])`
-/

namespace A136625.P8833812686020883632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A136625.P8833812686020883632

/-! ## A136625.P15280272415330492674

`filter[A325189(n), A011558(#)]`
-/

namespace A136625.P15280272415330492674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A136625.P15280272415330492674

/-! ## A136625.P17966984816385709233

`filter[A325189(n), A145568(#)]`
-/

namespace A136625.P17966984816385709233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A136625.P17966984816385709233

/-! ## A136625.P14514247634486995806

`filter[A325189(n), A168046(#)]`
-/

namespace A136625.P14514247634486995806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A136625.P14514247634486995806

/-! ## A136625.P1543186655109435453

`filter[A325189(n), A168182(#)]`
-/

namespace A136625.P1543186655109435453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A136625.P1543186655109435453

/-!
# A136626: For every number n in Ulam's spiral the sequence gives the number of primes around it (number n excluded).

The programs for A136626, there is no canonical definition to state claims against.
-/

/-! ## A136626.P2844551635495671059

`A136627(n+1)-char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A136626.P2844551635495671059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A136626.P2844551635495671059

/-! ## A136626.P1246551707401573586

`A136627(n+1)-Δ[A230980(n)]`
-/

namespace A136626.P1246551707401573586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - (f1 (n + 1) - f1 n)

end

end A136626.P1246551707401573586

/-! ## A136626.P12115352665615703084

`A136627(n+1)-A010051(n+1)`
-/

namespace A136626.P12115352665615703084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A010051 (n + 1)

end

end A136626.P12115352665615703084

/-! ## A136626.P4006538486465205710

`A136627(n+1)-abs(A129950(n+1))`
-/

namespace A136626.P4006538486465205710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - |A129950 (n + 1)|

end

end A136626.P4006538486465205710

/-! ## A136626.P3887468826053710367

`A136627(n+1)-A064911((n+1)²)`
-/

namespace A136626.P3887468826053710367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A064911 ((n + 1) ^ 2)

end

end A136626.P3887468826053710367

/-! ## A136626.P14792128904242374855

`A136627(n+1)-A143536(∑[n+1])`
-/

namespace A136626.P14792128904242374855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A143536 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136626.P14792128904242374855

/-! ## A136626.P9761623923332893246

`A136627(n+1)-char[A006093(n+1)]`
-/

namespace A136626.P9761623923332893246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136626.P9761623923332893246

/-! ## A136626.P16145944295341081930

`A136627(n+1)-char[A057237(n+1)]`
-/

namespace A136626.P16145944295341081930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136626.P16145944295341081930

/-! ## A136626.P3275913707545580482

`A136627(n+1)-char[eq[2, A000005(n+1)]]`
-/

namespace A136626.P3275913707545580482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A136626.P3275913707545580482

/-! ## A136626.P1497543031804550992

`A159075(A240545(n))+A136627(n+1)`
-/

namespace A136626.P1497543031804550992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A240545 n).toNat + A136627 (n + 1)

end

end A136626.P1497543031804550992

/-! ## A136626.P14248693795330957857

`A136627(n+1)-A000007(A056897(n))`
-/

namespace A136626.P14248693795330957857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A000007 (A056897 n).toNat

end

end A136626.P14248693795330957857

/-! ## A136626.P621520352579054404

`A159075(A008481(n+1))+A136627(n+1)`
-/

namespace A136626.P621520352579054404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A008481 (n + 1)).toNat + A136627 (n + 1)

end

end A136626.P621520352579054404

/-! ## A136626.P3409231583950219929

`A136627(n+1)-A001222(A089026(n+1))`
-/

namespace A136626.P3409231583950219929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A001222 (A089026 (n + 1)).toNat

end

end A136626.P3409231583950219929

/-! ## A136626.P16277267796844359299

`A136627(n+1)-A178334(A049084(n+1))`
-/

namespace A136626.P16277267796844359299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A178334 (A049084 (n + 1)).toNat

end

end A136626.P16277267796844359299

/-! ## A136626.P12805903388990924308

`A136627(n+1)-A283991(A165824(n+1))`
-/

namespace A136626.P12805903388990924308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - A283991 (A165824 (n + 1)).toNat

end

end A136626.P12805903388990924308

/-! ## A136626.P12865136740561521514

`A136627(n+1)-char[A000010(A008578(n+1))]`
-/

namespace A136626.P12865136740561521514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136627 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136626.P12865136740561521514

/-!
# A136627: For every number n in Ulam's spiral the sequence gives the number of primes around it (number n included).

The programs for A136627, there is no canonical definition to state claims against.
-/

/-! ## A136627.P6067988447461952845

`A136626(n+1)+char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A136627.P6067988447461952845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A136627.P6067988447461952845

/-! ## A136627.P6577651574452957440

`A136626(n+1)+Δ[A230980(n)]`
-/

namespace A136627.P6577651574452957440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + (f1 (n + 1) - f1 n)

end

end A136627.P6577651574452957440

/-! ## A136627.P4608780240155991886

`A136626(n+1)+A010051(n+1)`
-/

namespace A136627.P4608780240155991886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + A010051 (n + 1)

end

end A136627.P4608780240155991886

/-! ## A136627.P8689571543557851773

`A136626(n+1)+abs(A129950(n+1))`
-/

namespace A136627.P8689571543557851773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + |A129950 (n + 1)|

end

end A136627.P8689571543557851773

/-! ## A136627.P164267690709095950

`A143536(∑[n+1])+A136626(n+1)`
-/

namespace A136627.P164267690709095950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (∑ j ∈ Finset.range (n + 1), f1 j) + A136626 (n + 1)

end

end A136627.P164267690709095950

/-! ## A136627.P8805826271536327599

`A136626(n+1)+char[A006093(n+1)]`
-/

namespace A136627.P8805826271536327599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136627.P8805826271536327599

/-! ## A136627.P8278080271640520907

`A136626(n+1)+char[A057237(n+1)]`
-/

namespace A136627.P8278080271640520907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136627.P8278080271640520907

/-! ## A136627.P6328421351876120696

`A136626(n+1)+char[record[A000010(n+1)]]`
-/

namespace A136627.P6328421351876120696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136627.P6328421351876120696

/-! ## A136627.P15931811316123059740

`A136626(n+1)+char[A000040(n+1)-1]`
-/

namespace A136627.P15931811316123059740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136627.P15931811316123059740

/-! ## A136627.P1406948863518083513

`A136626(n+1)+char[eq[2, A000005(n+1)]]`
-/

namespace A136627.P1406948863518083513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A136627.P1406948863518083513

/-! ## A136627.P18204574484406663257

`A136626(n+1)+A000007(A056897(n))`
-/

namespace A136627.P18204574484406663257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + A000007 (A056897 n).toNat

end

end A136627.P18204574484406663257

/-! ## A136627.P17166572248346361757

`A136626(n+1)-A159075(A240545(n))`
-/

namespace A136627.P17166572248346361757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) - A159075 (A240545 n).toNat

end

end A136627.P17166572248346361757

/-! ## A136627.P16010100743043987544

`A136626(n+1)+A000007(A063918(n+1))`
-/

namespace A136627.P16010100743043987544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + A000007 (A063918 (n + 1)).toNat

end

end A136627.P16010100743043987544

/-! ## A136627.P14930880656180085323

`A136626(n+1)+A001222(A089026(n+1))`
-/

namespace A136627.P14930880656180085323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + A001222 (A089026 (n + 1)).toNat

end

end A136627.P14930880656180085323

/-! ## A136627.P8789368559697579773

`A136626(n+1)+A049084(A061142(n+1))`
-/

namespace A136627.P8789368559697579773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + A049084 (A061142 (n + 1)).toNat

end

end A136627.P8789368559697579773

/-! ## A136627.P6958655726926157626

`A136626(n+1)-A159075(A001222(n+1))`
-/

namespace A136627.P6958655726926157626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) - A159075 (A001222 (n + 1)).toNat

end

end A136627.P6958655726926157626

/-! ## A136627.P2137068232771300009

`A136626(n+1)-A159075(A008481(n+1))`
-/

namespace A136627.P2137068232771300009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) - A159075 (A008481 (n + 1)).toNat

end

end A136627.P2137068232771300009

/-! ## A136627.P1529085221683115761

`A136626(n+1)+char[A000010(A330979(n+1))]`
-/

namespace A136627.P1529085221683115761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A330979 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136627.P1529085221683115761

/-!
# A136628: Number of unlabeled PQ-trees with n leaves.

The programs for A136628, there is no canonical definition to state claims against.
-/

/-! ## A136628.P2564294426615868732

`A195174(Δ[A215576(n)])`
-/

namespace A136628.P2564294426615868732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (f1 (n + 1) - f1 n).toNat

end

end A136628.P2564294426615868732

/-! ## A136628.P1212737109116564065

`A008679(∑[∑[A149535(n)]])`
-/

namespace A136628.P1212737109116564065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136628.P1212737109116564065

/-! ## A136628.P8748517579215676094

`A008617(A099488(n))+A002265(n)`
-/

namespace A136628.P8748517579215676094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A099488 n).toNat + A002265 n

end

end A136628.P8748517579215676094

/-! ## A136628.P1418708360030881913

`A104738(A122391(n))%A131339(n)`
-/

namespace A136628.P1418708360030881913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104738 (A122391 n).toNat) (A131339 (n + 10))

end

end A136628.P1418708360030881913

/-!
# A136629: Number of labeled PQ-trees with n leaves.

The programs for A136629, there is no canonical definition to state claims against.
-/

/-! ## A136629.P10791409071615200357

`A008615(A069471(n)+n)`
-/

namespace A136629.P10791409071615200357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A069471 n + (n : ℤ)).toNat

end

end A136629.P10791409071615200357

/-! ## A136629.P10321748342282961398

`A015537(n)%A038093(n)`
-/

namespace A136629.P10321748342282961398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015537 n) (A038093 n)

end

end A136629.P10321748342282961398

/-!
# A136630: Triangular array: T(n,k) counts the partitions of the set [n] into k odd sized blocks.

The programs for A136630, there is no canonical definition to state claims against.
-/

/-! ## A136630.P2211922429435019662

`A000027(A075497(n+1))%A128710(n)`
-/

namespace A136630.P2211922429435019662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A075497 (n + 1)).toNat) (A128710 n)

end

end A136630.P2211922429435019662

/-! ## A136630.P13813085354643498821

`A147312(n)%A271409(A166350(n+1))`
-/

namespace A136630.P13813085354643498821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147312 n) (A271409 (A166350 (n + 1)).toNat)

end

end A136630.P13813085354643498821

/-! ## A136630.P7180565994429616143

`A147312(n)%A005496(A144048(n))`
-/

namespace A136630.P7180565994429616143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147312 n) (A005496 (A144048 n).toNat)

end

end A136630.P7180565994429616143

/-! ## A136630.P1552067374317271970

`A356001(A385343(n))%(n+3)`
-/

namespace A136630.P1552067374317271970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356001 (A385343 n).toNat) (n + 3 : ℤ)

end

end A136630.P1552067374317271970

/-! ## A136630.P8581427591747354528

`A385343(n)^A287847(A385343(n))`
-/

namespace A136630.P8581427591747354528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385343 n : ℚ) ^ (A287847 (A385343 n).toNat : ℤ)

end

end A136630.P8581427591747354528

/-!
# A136631: Antidiagonal sums of triangle A136630, omitting antidiagonals of all zeros.

The programs for A136631, there is no canonical definition to state claims against.
-/

/-! ## A136631.P4820665083571147540

`A073092(A125022(n!))`
-/

namespace A136631.P4820665083571147540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073092 (A125022 (Nat.factorial n)).toNat

end

end A136631.P4820665083571147540

/-! ## A136631.P16618305735256928182

`A102464(A055890(n))`
-/

namespace A136631.P16618305735256928182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102464 (A055890 n).toNat

end

end A136631.P16618305735256928182

/-!
# A136632: a(n) = Sum_{k=0..n} A136630(n,k) * 2^(nk).

The programs for A136632, there is no canonical definition to state claims against.
-/

/-! ## A136632.P16464727125064291715

`and(A001057(A081341(n)), A168405(n))`
-/

namespace A136632.P16464727125064291715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001057 (A081341 n).toNat) (A168405 n)

end

end A136632.P16464727125064291715

/-!
# A136633: G.f.: A(x) = Series_Reversion( x / Sum_{n>=0} (n+1)!*x^n ).

The programs for A136633, there is no canonical definition to state claims against.
-/

/-! ## A136633.P4073189442027746099

`A059369(A001844(n))/(n+1)`
-/

namespace A136633.P4073189442027746099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059369 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A136633.P4073189442027746099

/-!
# A136636: a(n) = n * C(2*3^(n-1), n) for n>=1.

The programs for A136636, the canonical program `A136636.P7093966570168245043` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136636 has offset 1).

The definition of A136636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*C(2*3^n, n+1)` (program `A136636.P7093966570168245043`, by `A136636.P7093966570168245043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136636.P7093966570168245043

`(n+1)*C(2*3^n, n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136636

/-- `(n+1)*C(2*3^n, n+1)` -/
def P7093966570168245043.Spec : Prop :=
  ∀ n, (P7093966570168245043.a n : ℤ) = A136636 (n + 1)

theorem P7093966570168245043.correct : P7093966570168245043.Spec := by
  intro n
  simp only [A136636, Nat.add_sub_cancel]

end A136636

/-! ## A136636.P11451476736584801190

`(n+1)*A179432(n+1)`
-/

namespace A136636.P11451476736584801190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A179432 (n + 1)

end

end A136636.P11451476736584801190

namespace A136636

/-- `(n+1)*A179432(n+1)` -/
def P11451476736584801190.Spec : Prop :=
  ∀ n, P11451476736584801190.a n = A136636 (n + 1)

end A136636

/-!
# A136639: G.f. A(x) satisfies: 1 + 4x = Sum_{n>=0} x^n * [y^n] A(y)^{2^n}, so that the coefficient of y^n in the (2^n)-th power of A(y) is zero for n>1.

The programs for A136639, there is no canonical definition to state claims against.
-/

/-! ## A136639.P3627960428841174926

`A250246(A014070(n))/A003406(n)`
-/

namespace A136639.P3627960428841174926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (A014070 n).toNat : ℚ) / (A003406 n : ℚ)

end

end A136639.P3627960428841174926

/-!
# A136640: A limited integer Devil's staircase from a winding number function.

The programs for A136640, there is no canonical definition to state claims against.
-/

/-! ## A136640.P1767265158859028896

`A120677(A034547(n+1)+1)`
-/

namespace A136640.P1767265158859028896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120677 (A034547 (n + 1) + 1).toNat

end

end A136640.P1767265158859028896

/-! ## A136640.P2720146847459420592

`A151893(A034537(n+1)+1)`
-/

namespace A136640.P2720146847459420592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151893 (A034537 (n + 1) + 1).toNat

end

end A136640.P2720146847459420592

/-! ## A136640.P10685386196793659420

`A066063(A034556(n+1))`
-/

namespace A136640.P10685386196793659420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (A034556 (n + 1)).toNat

end

end A136640.P10685386196793659420

/-! ## A136640.P7890648857918465863

`A066063(A034582(n+1))`
-/

namespace A136640.P7890648857918465863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (A034582 (n + 1)).toNat

end

end A136640.P7890648857918465863

/-! ## A136640.P11146492994725435764

`A099875(A034577(n+1))`
-/

namespace A136640.P11146492994725435764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099875 (A034577 (n + 1)).toNat

end

end A136640.P11146492994725435764

/-!
# A136641: a(n) is the smallest positive integer that is coprime to n and has n divisors.

The programs for A136641, there is no canonical definition to state claims against.
-/

/-! ## A136641.P2670099903871070620

`record[A325567(A301279(n)²)]`
-/

namespace A136641.P2670099903871070620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325567 (A301279 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136641.P2670099903871070620

/-! ## A136641.P8478692847602277496

`record[A137926(record[A055349(n+1)])]`
-/

namespace A136641.P8478692847602277496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137926 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136641.P8478692847602277496

/-!
# A136642: A self-similar scaled version of a Devil's staircase as a triangular sequence.

The programs for A136642, there is no canonical definition to state claims against.
-/

/-! ## A136642.P2455417873511099314

`A235224(3^A165974(2*(n+1)))`
-/

namespace A136642.P2455417873511099314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A165974 (2 * (n + 1)) : ℤ))).toNat

end

end A136642.P2455417873511099314

/-! ## A136642.P5655763914784738497

`A003557(lcm(A005521(n), A181854(n)))`
-/

namespace A136642.P5655763914784738497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.lcm (A005521 n) (A181854 n))

end

end A136642.P5655763914784738497

/-! ## A136642.P10401501608618889033

`gcd(A116689(A081282(n)), A131818(n+1))`
-/

namespace A136642.P10401501608618889033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116689 (A081282 n).toNat) (A131818 (n + 1))

end

end A136642.P10401501608618889033

/-! ## A136642.P17820809558439968231

`gcd(A003991(n+1), A244264(A089408(n)))`
-/

namespace A136642.P17820809558439968231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003991 (n + 1)) (A244264 (A089408 n).toNat)

end

end A136642.P17820809558439968231

/-! ## A136642.P2473529428155263031

`A000005(A333339(n+1)^A217593(n+2))`
-/

namespace A136642.P2473529428155263031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A333339 (n + 1) : ℚ) ^ (A217593 (n + 2) : ℤ))).toNat

end

end A136642.P2473529428155263031

/-!
# A136647: G.f.: A(x) = Sum_{n>=0} arcsinh( 2^n*x )^n / n!; a power series in x with integer coefficients.

The programs for A136647, there is no canonical definition to state claims against.
-/

/-! ## A136647.P2222156141599561492

`A233280(A136749(n))`
-/

namespace A136647.P2222156141599561492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A136749 n).toNat

end

end A136647.P2222156141599561492

/-!
# A136648: Inverse binomial transform of A014070: a(n) = Sum_{k=0..n} (-1)^(n-k)*C(n,k)*C(2^k,k).

The programs for A136648, there is no canonical definition to state claims against.
-/

/-! ## A136648.P11286627245775199307

`A030101(∑[4*n]+C(2*n, n)²)`
-/

namespace A136648.P11286627245775199307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n) n ^ 2)

end

end A136648.P11286627245775199307

/-!
# A136649: Binomial transform of A014070: a(n) = Sum_{k=0..n} C(n,k)*C(2^k,k).

The programs for A136649, there is no canonical definition to state claims against.
-/

/-! ## A136649.P2566852178309916569

`∑[A180687(n)]`
-/

namespace A136649.P2566852178309916569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136649.P2566852178309916569

/-! ## A136649.P4689265067893740648

`∑{d}[A002110(n), A068903(#)]`
-/

namespace A136649.P4689265067893740648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A068903 d

end

end A136649.P4689265067893740648

/-!
# A136650: Self-convolution of A006125(n) = 2^{n(n-1)/2}.

The programs for A136650, there is no canonical definition to state claims against.
-/

/-! ## A136650.P4553049557364273337

`A174936(2^n)/2^n`
-/

namespace A136650.P4553049557364273337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174936 (2 ^ n) : ℚ) / (2 ^ n : ℚ)

end

end A136650.P4553049557364273337

/-! ## A136650.P8543357464260652318

`A000010(A008622(63*a(n-2)-n)+1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A136650.P8543357464260652318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A000010 (A008622 (63 * a (n - 2) - (n : ℤ)).toNat + 1).toNat

end

end A136650.P8543357464260652318

/-!
# A136651: Self-convolution of A014070: a(n) = Sum_{k=0..n} C(2^k,k)*C(2^(n-k),n-k).

The programs for A136651, there is no canonical definition to state claims against.
-/

/-! ## A136651.P10673189041356592974

`A020703(A054091(comp[2*(n+1)]))`
-/

namespace A136651.P10673189041356592974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A054091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A136651.P10673189041356592974

/-!
# A136652: L.g.f.: A(x) = log( Sum_{n>=0} 2^[n(n-1)/2]*x^n ).

The programs for A136652, there is no canonical definition to state claims against.
-/

/-! ## A136652.P9801008551450994786

`A026352(xor(A014062(n), A212804(n)))`
-/

namespace A136652.P9801008551450994786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (Int.xor (A014062 n) (A212804 n)).toNat

end

end A136652.P9801008551450994786

/-!
# A136653: G.f.: A(x) satisfies: coefficient of x^n in A(x)^(n+1)/(n+1) = 2^(n*(n-1)/2).

The programs for A136653, there is no canonical definition to state claims against.
-/

/-! ## A136653.P16637759598432333618

`A320340(A006024(n))`
-/

namespace A136653.P16637759598432333618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (A006024 n).toNat

end

end A136653.P16637759598432333618

/-! ## A136653.P6924715880700603585

`A089473(A116564(∑[n]))`
-/

namespace A136653.P6924715880700603585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089473 (A116564 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A136653.P6924715880700603585

/-!
# A136654: G.f.: A(x) = (1/x)*Series_Reversion( x/Sum_{k=0..n} 2^[k(k-1)/2]*x^k ).

The programs for A136654, there is no canonical definition to state claims against.
-/

/-! ## A136654.P15327545112616384672

`or(n, A054068(A302702(n)))`
-/

namespace A136654.P15327545112616384672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A054068 (A302702 n).toNat)

end

end A136654.P15327545112616384672

/-! ## A136654.P10197530303073661276

`or(n, A355736(A007578(n)))`
-/

namespace A136654.P10197530303073661276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A355736 (A007578 n).toNat)

end

end A136654.P10197530303073661276

/-!
# A136655: Product of odd divisors of n.

The programs for A136655, the canonical program `A136655.P6898673837673144474` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136655 has offset 1).

The definition of A136655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140210, A140211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136655.P6898673837673144474

`A140210(n+1)*A140211(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136655

/-- `A140210(n+1)*A140211(n+1)` -/
def P6898673837673144474.Spec : Prop :=
  ∀ n, P6898673837673144474.a n = A136655 (n + 1)

theorem P6898673837673144474.correct : P6898673837673144474.Spec := by
  intro n
  simp only [A136655, Nat.add_sub_cancel]

end A136655

/-! ## A136655.P13293740121196821224

`A007955(A000265(n+1))`
-/

namespace A136655.P13293740121196821224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000265 (n + 1)).toNat

end

end A136655.P13293740121196821224

namespace A136655

/-- `A007955(A000265(n+1))` -/
def P13293740121196821224.Spec : Prop :=
  ∀ n, P13293740121196821224.a n = A136655 (n + 1)

end A136655

/-! ## A136655.P6385375192077262801

`A007955(n+1)/A125911(n+1)`
-/

namespace A136655.P6385375192077262801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A125911 (n + 1) : ℚ)

end

end A136655.P6385375192077262801

namespace A136655

/-- `A007955(n+1)/A125911(n+1)` -/
def P6385375192077262801.Spec : Prop :=
  ∀ n, P6385375192077262801.a n = (A136655 (n + 1) : ℚ)

end A136655

/-! ## A136655.P17979855393449080791

`∏{d}[n+1, #^(#%2)]`
-/

namespace A136655.P17979855393449080791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ (d % 2)

end

end A136655.P17979855393449080791

namespace A136655

/-- `∏{d}[n+1, #^(#%2)]` -/
def P17979855393449080791.Spec : Prop :=
  ∀ n, (P17979855393449080791.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P4580473031436303448

`∏{d}[n+1, #^and(1, #)]`
-/

namespace A136655.P4580473031436303448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ Nat.land 1 d

end

end A136655.P4580473031436303448

namespace A136655

/-- `∏{d}[n+1, #^and(1, #)]` -/
def P4580473031436303448.Spec : Prop :=
  ∀ n, (P4580473031436303448.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P5782738004972976768

`∏{d}[(n+1)/2^val(n+1, 2), #]`
-/

namespace A136655.P5782738004972976768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P5782738004972976768

namespace A136655

/-- `∏{d}[(n+1)/2^val(n+1, 2), #]` -/
def P5782738004972976768.Spec : Prop :=
  ∀ n, (P5782738004972976768.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P18111279930658276238

`∏{d}[(n+1)/and(n+1, -(n+1)), #]`
-/

namespace A136655.P18111279930658276238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P18111279930658276238

namespace A136655

/-- `∏{d}[(n+1)/and(n+1, -(n+1)), #]` -/
def P18111279930658276238.Spec : Prop :=
  ∀ n, (P18111279930658276238.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P4605869336320088409

`∏{d}[(n+1)/or(n+1, -(n+1)), #]`
-/

namespace A136655.P4605869336320088409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P4605869336320088409

namespace A136655

/-- `∏{d}[(n+1)/or(n+1, -(n+1)), #]` -/
def P4605869336320088409.Spec : Prop :=
  ∀ n, (P4605869336320088409.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P16026609081862086173

`∏{d}[2*(n+1)/(xor(n, n+1)+1), #]`
-/

namespace A136655.P16026609081862086173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P16026609081862086173

namespace A136655

/-- `∏{d}[2*(n+1)/(xor(n, n+1)+1), #]` -/
def P16026609081862086173.Spec : Prop :=
  ∀ n, (P16026609081862086173.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P9877548694756459018

`∏{d}[(n+1)/(n+1-and(n, n+1)), #]`
-/

namespace A136655.P9877548694756459018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P9877548694756459018

namespace A136655

/-- `∏{d}[(n+1)/(n+1-and(n, n+1)), #]` -/
def P9877548694756459018.Spec : Prop :=
  ∀ n, (P9877548694756459018.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P13442544408401060767

`∏{d}[n+1, A093178(#)]`
-/

namespace A136655.P13442544408401060767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A093178 d

end

end A136655.P13442544408401060767

namespace A136655

/-- `∏{d}[n+1, A093178(#)]` -/
def P13442544408401060767.Spec : Prop :=
  ∀ n, P13442544408401060767.a n = A136655 (n + 1)

end A136655

/-! ## A136655.P1836508250585981578

`∏{d}[A153733(n)+1, #]`
-/

namespace A136655.P1836508250585981578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A136655.P1836508250585981578

namespace A136655

/-- `∏{d}[A153733(n)+1, #]` -/
def P1836508250585981578.Spec : Prop :=
  ∀ n, (P1836508250585981578.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P7914713243439904322

`∏{d}[A171435(2*(n+1)), #]`
-/

namespace A136655.P7914713243439904322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A136655.P7914713243439904322

namespace A136655

/-- `∏{d}[A171435(2*(n+1)), #]` -/
def P7914713243439904322.Spec : Prop :=
  ∀ n, (P7914713243439904322.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P10638878847068577585

`∏{d}[A302034(2*(n+1)), #]`
-/

namespace A136655.P10638878847068577585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A136655.P10638878847068577585

namespace A136655

/-- `∏{d}[A302034(2*(n+1)), #]` -/
def P10638878847068577585.Spec : Prop :=
  ∀ n, (P10638878847068577585.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P9567408876953250227

`∏{d}[A302044(2*(n+1)), #]`
-/

namespace A136655.P9567408876953250227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A136655.P9567408876953250227

namespace A136655

/-- `∏{d}[A302044(2*(n+1)), #]` -/
def P9567408876953250227.Spec : Prop :=
  ∀ n, (P9567408876953250227.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P12085745371648373880

`∏{d}[A166466(n+1)/3, #]`
-/

namespace A136655.P12085745371648373880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P12085745371648373880

namespace A136655

/-- `∏{d}[A166466(n+1)/3, #]` -/
def P12085745371648373880.Spec : Prop :=
  ∀ n, (P12085745371648373880.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P15272223455928335533

`∏{d}[(n+1)/A000010(xor(n, n+1)+1), #]`
-/

namespace A136655.P15272223455928335533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A136655.P15272223455928335533

namespace A136655

/-- `∏{d}[(n+1)/A000010(xor(n, n+1)+1), #]` -/
def P15272223455928335533.Spec : Prop :=
  ∀ n, (P15272223455928335533.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P4709770833968258427

`sqrt(((n+1)/and(n+1, -(n+1)))^A001227(n+1))`
-/

namespace A136655.P4709770833968258427
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) ^ (A001227 (n + 1) : ℤ) : ℝ)

end

end A136655.P4709770833968258427

namespace A136655

/-- `sqrt(((n+1)/and(n+1, -(n+1)))^A001227(n+1))` -/
def P4709770833968258427.Spec : Prop :=
  ∀ n, P4709770833968258427.a n = (A136655 (n + 1) : ℝ)

end A136655

/-! ## A136655.P15806623906803759057

`∏{d}[A025480(n)+A003602(n+1), #]`
-/

namespace A136655.P15806623906803759057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A003602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A136655.P15806623906803759057

namespace A136655

/-- `∏{d}[A025480(n)+A003602(n+1), #]` -/
def P15806623906803759057.Spec : Prop :=
  ∀ n, (P15806623906803759057.a n : ℤ) = A136655 (n + 1)

end A136655

/-! ## A136655.P6281645709600777324

`∏{d}[gcd(A166466(n+1), A270710(n)), #]`
-/

namespace A136655.P6281645709600777324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166466 (n + 1)) (A270710 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A136655.P6281645709600777324

namespace A136655

/-- `∏{d}[gcd(A166466(n+1), A270710(n)), #]` -/
def P6281645709600777324.Spec : Prop :=
  ∀ n, (P6281645709600777324.a n : ℤ) = A136655 (n + 1)

end A136655

/-!
# A136657: Unsigned member s=2 of a family of generalizations of the (signed) Lah triangle A008297. All numbers divided by 2.

The programs for A136657, there is no canonical definition to state claims against.
-/

/-! ## A136657.P18426318227155688245

`2^(n-C(∑[char[∑[n]]], 2))*A046089(n+1)`
-/

namespace A136657.P18426318227155688245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A046089 (n + 1) : ℚ)

end

end A136657.P18426318227155688245

/-! ## A136657.P10060837822383029759

`A046089(n+1)*A059268(n)`
-/

namespace A136657.P10060837822383029759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (n + 1) * A059268 n

end

end A136657.P10060837822383029759

/-! ## A136657.P551636359105167216

`A094587(n)*A210754(n+1)`
-/

namespace A136657.P551636359105167216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A210754 (n + 1)

end

end A136657.P551636359105167216

/-! ## A136657.P591446287561207162

`2^A025675(n+1)*A046089(n+1)`
-/

namespace A136657.P591446287561207162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025675 (n + 1) : ℤ) * (A046089 (n + 1) : ℚ)

end

end A136657.P591446287561207162

/-! ## A136657.P7041472249571308590

`A000079(A002262(n))*A046089(n+1)`
-/

namespace A136657.P7041472249571308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A046089 (n + 1)

end

end A136657.P7041472249571308590

/-!
# A136658: Row sums of unsigned triangle A136656 and also of triangle 2*A136657.

The programs for A136658, there is no canonical definition to state claims against.
-/

/-! ## A136658.P9216127338530393737

`A294046(∑[n+3])`
-/

namespace A136658.P9216127338530393737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136658.P9216127338530393737

/-! ## A136658.P5118192980433820499

`record[A294046(A055998(A025480(n)))]`
-/

namespace A136658.P5118192980433820499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136658.P5118192980433820499

/-! ## A136658.P2507144117192527846

`record[A294046(A055998(A051162(n)))]`
-/

namespace A136658.P2507144117192527846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 (A051162 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136658.P2507144117192527846

/-! ## A136658.P4721650784046456949

`record[A294046(A055998(A056926(n)))]`
-/

namespace A136658.P4721650784046456949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 (A056926 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136658.P4721650784046456949

/-! ## A136658.P16133983846479646854

`record[A294046(A055998(A285869(n)))]`
-/

namespace A136658.P16133983846479646854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A055998 (A285869 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136658.P16133983846479646854

/-! ## A136658.P184278379702456043

`record[A294046(A027379(A002260(n+1)))]`
-/

namespace A136658.P184278379702456043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 (A027379 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136658.P184278379702456043

/-!
# A136659: Unsigned third column (k=2) of triangle A136656 divided by 4.

The programs for A136659, the canonical program `A136659.P7005650521085676556` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136659 has offset 0).

The definition of A136659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136659.P7005650521085676556

`1/48*(n+8)*(n+1)*(n+3)!`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136659

/-- `1/48*(n+8)*(n+1)*(n+3)!` -/
def P7005650521085676556.Spec : Prop :=
  ∀ n, P7005650521085676556.a n = (A136659 n : ℚ)

end A136659

/-! ## A136659.P186735256663093011

`(n+8)*(n+1)*(n+3)!/48`
-/

namespace A136659.P186735256663093011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 8) * (n + 1) * Nat.factorial (n + 3) : ℚ) / 48

end

end A136659.P186735256663093011

namespace A136659

/-- `(n+8)*(n+1)*(n+3)!/48` -/
def P186735256663093011.Spec : Prop :=
  ∀ n, P186735256663093011.a n = (A136659 n : ℚ)

end A136659

/-! ## A136659.P10026655768793376390

`∑[n/4+1]*A001715(n+3)`
-/

namespace A136659.P10026655768793376390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A001715 (n + 3) : ℚ)

end

end A136659.P10026655768793376390

namespace A136659

/-- `∑[n/4+1]*A001715(n+3)` -/
def P10026655768793376390.Spec : Prop :=
  ∀ n, P10026655768793376390.a n = (A136659 n : ℚ)

end A136659

/-! ## A136659.P3256984442751599085

`A226167(A055999(n)+10)`
-/

namespace A136659.P3256984442751599085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (A055999 n + 10).toNat

end

end A136659.P3256984442751599085

namespace A136659

/-- `A226167(A055999(n)+10)` -/
def P3256984442751599085.Spec : Prop :=
  ∀ n, P3256984442751599085.a n = A136659 n

end A136659

/-! ## A136659.P3974959117879286254

`A226167(A167614(n+2)+1)`
-/

namespace A136659.P3974959117879286254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (A167614 (n + 2) + 1).toNat

end

end A136659.P3974959117879286254

namespace A136659

/-- `A226167(A167614(n+2)+1)` -/
def P3974959117879286254.Spec : Prop :=
  ∀ n, P3974959117879286254.a n = A136659 n

end A136659

/-! ## A136659.P14041042818433094640

`(A061206(n+1)+A005990(n+2))/2`
-/

namespace A136659.P14041042818433094640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) + A005990 (n + 2) : ℚ) / 2

end

end A136659.P14041042818433094640

namespace A136659

/-- `(A061206(n+1)+A005990(n+2))/2` -/
def P14041042818433094640.Spec : Prop :=
  ∀ n, P14041042818433094640.a n = (A136659 n : ℚ)

end A136659

/-! ## A136659.P4804738491712294312

`A046089(∑[n+1]+2)`
-/

namespace A136659.P4804738491712294312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A136659.P4804738491712294312

namespace A136659

/-- `A046089(∑[n+1]+2)` -/
def P4804738491712294312.Spec : Prop :=
  ∀ n, P4804738491712294312.a n = A136659 n

end A136659

/-!
# A136660: Unsigned fourth column (k=3) of triangle A136656 divided by 8.

The programs for A136660, there is no canonical definition to state claims against.
-/

/-! ## A136660.P4729627499723918937

`A046089(∑[n+2]+4)`
-/

namespace A136660.P4729627499723918937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A136660.P4729627499723918937

/-! ## A136660.P15518278594978382994

`gcd(A000038(n), A046089(A167614(n+1)))`
-/

namespace A136660.P15518278594978382994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046089 (A167614 (n + 1)).toNat)

end

end A136660.P15518278594978382994

/-! ## A136660.P1589517809261492207

`lcm(A007318(n), A046089(A167614(n+1)))`
-/

namespace A136660.P1589517809261492207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A046089 (A167614 (n + 1)).toNat)

end

end A136660.P1589517809261492207

/-! ## A136660.P17172852563823605133

`or(A000007(n), A046089(A167614(n+1)))`
-/

namespace A136660.P17172852563823605133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046089 (A167614 (n + 1)).toNat)

end

end A136660.P17172852563823605133

/-! ## A136660.P16470705705530275844

`A046089(A167614(n+1))^and(1, A000040(n+1))`
-/

namespace A136660.P16470705705530275844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046089 (A167614 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A136660.P16470705705530275844

/-! ## A136660.P8682799580226165812

`A046089(A167614(n+1))%A205763(n+1)`
-/

namespace A136660.P8682799580226165812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046089 (A167614 (n + 1)).toNat) (A205763 (n + 1))

end

end A136660.P8682799580226165812

/-!
# A136661: Unsigned fifth column (k=4) of triangle A136656 divided by 16.

The programs for A136661, there is no canonical definition to state claims against.
-/

/-! ## A136661.P231429237712721607

`A046089(A052905(n)+9)`
-/

namespace A136661.P231429237712721607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (A052905 n + 9).toNat

end

end A136661.P231429237712721607

/-! ## A136661.P406946662551755978

`A046089(A055999(n)+10)`
-/

namespace A136661.P406946662551755978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (A055999 n + 10).toNat

end

end A136661.P406946662551755978

/-! ## A136661.P13624905831298440475

`A046089(A167614(n+2)+1)`
-/

namespace A136661.P13624905831298440475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (A167614 (n + 2) + 1).toNat

end

end A136661.P13624905831298440475

/-! ## A136661.P5797806427569922166

`A046089(A166136(n+2)-2)`
-/

namespace A136661.P5797806427569922166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (A166136 (n + 2) - 2).toNat

end

end A136661.P5797806427569922166

/-! ## A136661.P1675578659183757307

`A046089(eq[5, A131818(n+1)])`
-/

namespace A136661.P1675578659183757307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A136661.P1675578659183757307

/-! ## A136661.P13244316294861540494

`A046089(A166136(n+1)+1+n)`
-/

namespace A136661.P13244316294861540494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A136661.P13244316294861540494

/-!
# A136662: Number of cycles of the permutations of [1,2,...,n].

The programs for A136662, there is no canonical definition to state claims against.
-/

/-! ## A136662.P11323799829362977900

`A126303(∑[A320079(A320079(n))])`
-/

namespace A136662.P11323799829362977900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (A320079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126303 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136662.P11323799829362977900

/-! ## A136662.P9263837925060767252

`A062756(A045506(n)+A005934(n+2))`
-/

namespace A136662.P9263837925060767252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A045506 n + A005934 (n + 2)).toNat

end

end A136662.P9263837925060767252

/-! ## A136662.P12453567798927767271

`A303536(A285654(n)+∑[A303536(n)])`
-/

namespace A136662.P12453567798927767271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A285654 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136662.P12453567798927767271

/-! ## A136662.P7759658162550071895

`∑[A090193(n)]-A000523(A018176(n))`
-/

namespace A136662.P7759658162550071895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000523 (A018176 n).toNat

end

end A136662.P7759658162550071895

/-! ## A136662.P2336790679706104237

`A322027(A059802(n+1)-A319694(n+1))`
-/

namespace A136662.P2336790679706104237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A059802 (n + 1) - A319694 (n + 1)).toNat

end

end A136662.P2336790679706104237

/-!
# A136669: Primes of the form colossally abundant number - 1.

The programs for A136669, there is no canonical definition to state claims against.
-/

/-! ## A136669.P15017025084277128242

`A307187(A035973(n+4))+1-4/2`
-/

namespace A136669.P15017025084277128242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307187 (A035973 (n + 4)).toNat : ℚ) + (1 - (4 : ℚ) / 2)

end

end A136669.P15017025084277128242

/-! ## A136669.P804026392284451015

`p?[A002201(n+1)-1]`
-/

namespace A136669.P804026392284451015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136669.P804026392284451015

/-!
# A136670: a(n) = floor(a(n-1) * exp(Pi)), starting 0, 1.

The programs for A136670, the canonical program `A136670.P17566948881262892148` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136670 has offset 0).

The definition of A136670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*exp(π))` (program `A136670.P17566948881262892148`, by `A136670.P17566948881262892148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136670.P17566948881262892148

`floor(a(n-1)*exp(π))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136670

/-- `floor(a(n-1)*exp(π))` -/
def P17566948881262892148.Spec : Prop :=
  ∀ n, P17566948881262892148.a n = A136670 n

theorem P17566948881262892148.correct : P17566948881262892148.Spec := by
  intro n
  simp only [A136670]

end A136670

/-!
# A136671: Recursion based on Exp[Pi/4]: a(n)=Floor[a(n-1)*Exp[Pi/4]] Angular domain {0,Pi/4} is the smallest self-similar piece of a sine wave.

The programs for A136671, the canonical program `A136671.P13950246451155098980` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136671 has offset 1).

The definition of A136671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*exp(π/4))` (program `A136671.P13950246451155098980`, by `A136671.P13950246451155098980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136671.P13950246451155098980

`floor(a(n-1)*exp(π/4))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136671

/-- `floor(a(n-1)*exp(π/4))` -/
def P13950246451155098980.Spec : Prop :=
  ∀ n, P13950246451155098980.a n = A136671 (n + 1)

theorem P13950246451155098980.correct : P13950246451155098980.Spec := by
  intro n
  simp only [A136671, Nat.add_sub_cancel]

end A136671

/-! ## A136671.P3489233574842645823

`floor(exp(atan(1))*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A136671.P3489233574842645823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊Real.exp (Real.arctan (1 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A136671.P3489233574842645823

namespace A136671

/-- `floor(exp(atan(1))*a(n-1))` -/
def P3489233574842645823.Spec : Prop :=
  ∀ n, P3489233574842645823.a n = A136671 (n + 1)

theorem P3489233574842645823.correct : P3489233574842645823.Spec := by
  intro n
  simp only [A136671, Nat.add_sub_cancel, A136671.P3489233574842645823.a, A136671.P13950246451155098980.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A136671

/-! ## A136671.P8010735883137848332

`A094390(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A136671.P8010735883137848332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A094390 (a (n - 1)).toNat

end

end A136671.P8010735883137848332

namespace A136671

/-- `A094390(a(n-1))` -/
def P8010735883137848332.Spec : Prop :=
  ∀ n, P8010735883137848332.a n = A136671 (n + 1)

end A136671

/-! ## A136671.P11938832647866517498

`A002265(A131244(n)+round(sqrt(2*n)))`
-/

namespace A136671.P11938832647866517498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A131244 n + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A136671.P11938832647866517498

namespace A136671

/-- `A002265(A131244(n)+round(sqrt(2*n)))` -/
def P11938832647866517498.Spec : Prop :=
  ∀ n, P11938832647866517498.a n = A136671 (n + 1)

end A136671

/-! ## A136671.P1366556459937157864

`A057427(n)+A002265(A131244(n))`
-/

namespace A136671.P1366556459937157864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002265 (A131244 n).toNat

end

end A136671.P1366556459937157864

namespace A136671

/-- `A057427(n)+A002265(A131244(n))` -/
def P1366556459937157864.Spec : Prop :=
  ∀ n, P1366556459937157864.a n = A136671 (n + 1)

end A136671

/-!
# A136673: Triangle of coefficients from a polynomial recursion for Galois field GF(2^n) polynomials: p(x,n)=(x+1)*p(x,n-1)-x*p(x,n-2); or f(x,n)=x^n+x+1;.

The programs for A136673, there is no canonical definition to state claims against.
-/

/-! ## A136673.P5679979097930920205

`C(a(n-2), A091866(n))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A136673.P5679979097930920205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 2] fun n a =>
  Nat.choose (a (n - 2)) (A091866 n).toNat

end

end A136673.P5679979097930920205

/-! ## A136673.P5591144084926429961

`round(A204898(n+1)/comp[∑[2*n]])`
-/

namespace A136673.P5591144084926429961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A204898 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ))

end

end A136673.P5591144084926429961

/-! ## A136673.P2849448891594530211

`round(A123265(n)/A164975(n+1))`
-/

namespace A136673.P2849448891594530211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123265 n : ℚ) / (A164975 (n + 1) : ℚ))

end

end A136673.P2849448891594530211

/-! ## A136673.P1372267784448320136

`A001222(ceil((A025581(n)+6)/A134478(n)))`
-/

namespace A136673.P1372267784448320136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(A025581 n + 6 : ℚ) / (A134478 n : ℚ)⌉.toNat

end

end A136673.P1372267784448320136

/-! ## A136673.P3398036275971842935

`abs(A140056(n+2))`
-/

namespace A136673.P3398036275971842935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140056 (n + 2)|

end

end A136673.P3398036275971842935

/-!
# A136680: Triangle T(n, k) = f(k) for k < n+1, otherwise 0, where f(k) = f(k-1) + k^(k-2)*f(k-2) with f(0) = 0 and f(1) = 1, read by rows.

The programs for A136680, there is no canonical definition to state claims against.
-/

/-! ## A136680.P6561099122508653125

`A000010(A324847(A233543(n)²))`
-/

namespace A136680.P6561099122508653125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A324847 (A233543 n ^ 2).toNat).toNat

end

end A136680.P6561099122508653125

/-! ## A136680.P64401704502150678

`A143051(A296119(A233543(n)²))`
-/

namespace A136680.P64401704502150678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A296119 (A233543 n ^ 2).toNat).toNat

end

end A136680.P64401704502150678

/-! ## A136680.P12322909501444075516

`A303788(A072473(A140207(n)!))`
-/

namespace A136680.P12322909501444075516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A072473 (Nat.factorial (A140207 n).toNat)).toNat

end

end A136680.P12322909501444075516

/-! ## A136680.P3446093703941378767

`A146767(A106247(2^A002262(n)))`
-/

namespace A136680.P3446093703941378767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146767 (A106247 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ))).toNat).toNat

end

end A136680.P3446093703941378767

/-!
# A136687: Number of palindromes in the range [0,n] inclusive.

The programs for A136687, there is no canonical definition to state claims against.
-/

/-! ## A136687.P13099926672153811996

`∑[A136522(n)]`
-/

namespace A136687.P13099926672153811996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P13099926672153811996

/-! ## A136687.P17944140752709402268

`A137180(n)+1`
-/

namespace A136687.P17944140752709402268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137180 n + 1

end

end A136687.P17944140752709402268

/-! ## A136687.P14935318369587124162

`∑[char[A261423(n)]]`
-/

namespace A136687.P14935318369587124162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P14935318369587124162

/-! ## A136687.P13101732317905727292

`∑[char[A261914(n)]]`
-/

namespace A136687.P13101732317905727292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P13101732317905727292

/-! ## A136687.P466848025406381974

`∑[char[A262037(n)]]`
-/

namespace A136687.P466848025406381974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P466848025406381974

/-! ## A136687.P9366093270785977631

`∑[char[A262038(n)]]`
-/

namespace A136687.P9366093270785977631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P9366093270785977631

/-! ## A136687.P3651896735749287644

`∑[char[A330420(n)]]`
-/

namespace A136687.P3651896735749287644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P3651896735749287644

/-! ## A136687.P11042465453402719093

`∑[char[A002113(n+1)]]`
-/

namespace A136687.P11042465453402719093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P11042465453402719093

/-! ## A136687.P14491104724579339762

`∑[A000007(A064834(n))]`
-/

namespace A136687.P14491104724579339762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P14491104724579339762

/-! ## A136687.P9985695984319825581

`∑[A000007(n-A262087(n))]`
-/

namespace A136687.P9985695984319825581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A262087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P9985695984319825581

/-! ## A136687.P5709868938484182119

`∑[char[A020485(n)]]`
-/

namespace A136687.P5709868938484182119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P5709868938484182119

/-! ## A136687.P10600745314030276832

`∑[char[A082216(n)]]`
-/

namespace A136687.P10600745314030276832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P10600745314030276832

/-! ## A136687.P16727318866494762301

`∑[char[A056544(n+1)]]+1`
-/

namespace A136687.P16727318866494762301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A136687.P16727318866494762301

/-! ## A136687.P15439897806994275629

`∑[char[A262188(n)]]`
-/

namespace A136687.P15439897806994275629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P15439897806994275629

/-! ## A136687.P16618588193802983507

`∑[char[A047813(n)]]`
-/

namespace A136687.P16618588193802983507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P16618588193802983507

/-! ## A136687.P8764553060123423979

`∑[char[A262087(n)]]`
-/

namespace A136687.P8764553060123423979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P8764553060123423979

/-! ## A136687.P14756072806866191662

`∑[char[A265525(n)]]`
-/

namespace A136687.P14756072806866191662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P14756072806866191662

/-! ## A136687.P7594074071369036287

`∑[char[A261916(n)]]`
-/

namespace A136687.P7594074071369036287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261916 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P7594074071369036287

/-! ## A136687.P16102420398644223408

`∑[A010054((n-A004086(n))²)]`
-/

namespace A136687.P16102420398644223408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (((n : ℤ) - A004086 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136687.P16102420398644223408

/-!
# A136688: Triangle of polynomials F(x,n) = x*F(x,n-1) + 2*F(x,n-2).

The programs for A136688, the canonical program `A136688.P3993852175964647821` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136688 has offset 1).

The definition of A136688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136688.P15343403035652403253

`A049310(n)*A116949(n)`
-/

namespace A136688.P15343403035652403253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A116949 n

end

end A136688.P15343403035652403253

namespace A136688

/-- `A049310(n)*A116949(n)` -/
def P15343403035652403253.Spec : Prop :=
  ∀ n, P15343403035652403253.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P5767406743023477331

`A046854(n)*A156663(n)`
-/

namespace A136688.P5767406743023477331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A156663 n

end

end A136688.P5767406743023477331

namespace A136688

/-- `A046854(n)*A156663(n)` -/
def P5767406743023477331.Spec : Prop :=
  ∀ n, P5767406743023477331.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P3993852175964647821

`A134513(n)*A156663(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A136688

/-- `A134513(n)*A156663(n)` -/
def P3993852175964647821.Spec : Prop :=
  ∀ n, P3993852175964647821.a n = A136688 (n + 1)

theorem P3993852175964647821.correct : P3993852175964647821.Spec := by
  intro n
  simp only [A136688, Nat.add_sub_cancel]

end A136688

/-! ## A136688.P12544175105131704023

`A156663(n)*A168561(n)`
-/

namespace A136688.P12544175105131704023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A168561 n

end

end A136688.P12544175105131704023

namespace A136688

/-- `A156663(n)*A168561(n)` -/
def P12544175105131704023.Spec : Prop :=
  ∀ n, P12544175105131704023.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P16760312478281873602

`abs(A049310(n)*A156663(n))`
-/

namespace A136688.P16760312478281873602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 n * A156663 n|

end

end A136688.P16760312478281873602

namespace A136688

/-- `abs(A049310(n)*A156663(n))` -/
def P16760312478281873602.Spec : Prop :=
  ∀ n, P16760312478281873602.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P7975224571428197701

`sqrt(A130321(n))*A168561(n)`
-/

namespace A136688.P7975224571428197701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ) * (A168561 n : ℝ)

end

end A136688.P7975224571428197701

namespace A136688

/-- `sqrt(A130321(n))*A168561(n)` -/
def P7975224571428197701.Spec : Prop :=
  ∀ n, P7975224571428197701.a n = (A136688 (n + 1) : ℝ)

end A136688

/-! ## A136688.P5171515939529519475

`A134505(n+1)*A156663(n)`
-/

namespace A136688.P5171515939529519475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134505 (n + 1) * A156663 n

end

end A136688.P5171515939529519475

namespace A136688

/-- `A134505(n+1)*A156663(n)` -/
def P5171515939529519475.Spec : Prop :=
  ∀ n, P5171515939529519475.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P11915879630049161677

`A046854(n)*A077957(A025581(n))`
-/

namespace A136688.P11915879630049161677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A077957 (A025581 n).toNat

end

end A136688.P11915879630049161677

namespace A136688

/-- `A046854(n)*A077957(A025581(n))` -/
def P11915879630049161677.Spec : Prop :=
  ∀ n, P11915879630049161677.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P7412240320261761280

`A016116(A025581(n))*A168561(n)`
-/

namespace A136688.P7412240320261761280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A025581 n).toNat * A168561 n

end

end A136688.P7412240320261761280

namespace A136688

/-- `A016116(A025581(n))*A168561(n)` -/
def P7412240320261761280.Spec : Prop :=
  ∀ n, P7412240320261761280.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P10157216710517527515

`A049310(n)*A117575(A004736(n+1))`
-/

namespace A136688.P10157216710517527515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A117575 (A004736 (n + 1)).toNat

end

end A136688.P10157216710517527515

namespace A136688

/-- `A049310(n)*A117575(A004736(n+1))` -/
def P10157216710517527515.Spec : Prop :=
  ∀ n, P10157216710517527515.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P8161036290391408345

`A016116(A004736(n+1))*A168561(n)`
-/

namespace A136688.P8161036290391408345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004736 (n + 1)).toNat * A168561 n

end

end A136688.P8161036290391408345

namespace A136688

/-- `A016116(A004736(n+1))*A168561(n)` -/
def P8161036290391408345.Spec : Prop :=
  ∀ n, P8161036290391408345.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P5985390368107936477

`A329918(comp[∑[n]])`
-/

namespace A136688.P5985390368107936477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A136688.P5985390368107936477

namespace A136688

/-- `A329918(comp[∑[n]])` -/
def P5985390368107936477.Spec : Prop :=
  ∀ n, P5985390368107936477.a n = A136688 (n + 1)

end A136688

/-! ## A136688.P5220810648064264364

`lcm(A049310(n), A123148(n))`
-/

namespace A136688.P5220810648064264364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049310 n) (A123148 n)

end

end A136688.P5220810648064264364

namespace A136688

/-- `lcm(A049310(n), A123148(n))` -/
def P5220810648064264364.Spec : Prop :=
  ∀ n, (P5220810648064264364.a n : ℤ) = A136688 (n + 1)

end A136688

/-! ## A136688.P11290892630242776180

`A002024(A155038(n+1))*A168561(n)`
-/

namespace A136688.P11290892630242776180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A155038 (n + 1)).toNat * A168561 n

end

end A136688.P11290892630242776180

namespace A136688

/-- `A002024(A155038(n+1))*A168561(n)` -/
def P11290892630242776180.Spec : Prop :=
  ∀ n, P11290892630242776180.a n = A136688 (n + 1)

end A136688

/-!
# A136689: Triangular sequence of q-Fibonacci polynomials for s=3: F(x,n) = x*F(x,n-1) + s*F(x,n-2).

The programs for A136689, the canonical program `A136689.P9971135850867848831` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136689 has offset 1).

The definition of A136689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136689.P15015159129814581374

`A168561(n)*A389707(n)`
-/

namespace A136689.P15015159129814581374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A389707 n

end

end A136689.P15015159129814581374

namespace A136689

/-- `A168561(n)*A389707(n)` -/
def P15015159129814581374.Spec : Prop :=
  ∀ n, P15015159129814581374.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P3964303057590681626

`A168561(n)*A389750(n)`
-/

namespace A136689.P3964303057590681626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A389750 n

end

end A136689.P3964303057590681626

namespace A136689

/-- `A168561(n)*A389750(n)` -/
def P3964303057590681626.Spec : Prop :=
  ∀ n, P3964303057590681626.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P6649784873651490279

`sqrt(A140303(n))*A168561(n)`
-/

namespace A136689.P6649784873651490279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140303 n : ℝ) * (A168561 n : ℝ)

end

end A136689.P6649784873651490279

namespace A136689

/-- `sqrt(A140303(n))*A168561(n)` -/
def P6649784873651490279.Spec : Prop :=
  ∀ n, P6649784873651490279.a n = (A136689 (n + 1) : ℝ)

end A136689

/-! ## A136689.P12429362827699687920

`abs(A049310(n))*sqrt(A140303(n))`
-/

namespace A136689.P12429362827699687920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|A049310 n| : ℝ) * Real.sqrt (A140303 n : ℝ)

end

end A136689.P12429362827699687920

namespace A136689

/-- `abs(A049310(n))*sqrt(A140303(n))` -/
def P12429362827699687920.Spec : Prop :=
  ∀ n, P12429362827699687920.a n = (A136689 (n + 1) : ℝ)

end A136689

/-! ## A136689.P9971135850867848831

`A038754(A025581(n))*A168561(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136689

/-- `A038754(A025581(n))*A168561(n)` -/
def P9971135850867848831.Spec : Prop :=
  ∀ n, P9971135850867848831.a n = A136689 (n + 1)

theorem P9971135850867848831.correct : P9971135850867848831.Spec := by
  intro n
  simp only [A136689, Nat.add_sub_cancel]

end A136689

/-! ## A136689.P11655231132770327857

`A046854(n)*A254006(A025581(n))`
-/

namespace A136689.P11655231132770327857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A254006 (A025581 n).toNat

end

end A136689.P11655231132770327857

namespace A136689

/-- `A046854(n)*A254006(A025581(n))` -/
def P11655231132770327857.Spec : Prop :=
  ∀ n, P11655231132770327857.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P3568881710716035099

`abs(A038754(A025581(n))*A049310(n))`
-/

namespace A136689.P3568881710716035099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038754 (A025581 n).toNat * A049310 n|

end

end A136689.P3568881710716035099

namespace A136689

/-- `abs(A038754(A025581(n))*A049310(n))` -/
def P3568881710716035099.Spec : Prop :=
  ∀ n, P3568881710716035099.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P5877647448448749551

`A108411(A004736(n+1))*A168561(n)`
-/

namespace A136689.P5877647448448749551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A004736 (n + 1)).toNat * A168561 n

end

end A136689.P5877647448448749551

namespace A136689

/-- `A108411(A004736(n+1))*A168561(n)` -/
def P5877647448448749551.Spec : Prop :=
  ∀ n, P5877647448448749551.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P15731734009930033235

`A006046(A156663(n))*A046854(n)`
-/

namespace A136689.P15731734009930033235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A156663 n).toNat * A046854 n

end

end A136689.P15731734009930033235

namespace A136689

/-- `A006046(A156663(n))*A046854(n)` -/
def P15731734009930033235.Spec : Prop :=
  ∀ n, P15731734009930033235.a n = A136689 (n + 1)

end A136689

/-! ## A136689.P13307093080047072345

`A006046(A156663(n))*A168561(n)`
-/

namespace A136689.P13307093080047072345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A156663 n).toNat * A168561 n

end

end A136689.P13307093080047072345

namespace A136689

/-- `A006046(A156663(n))*A168561(n)` -/
def P13307093080047072345.Spec : Prop :=
  ∀ n, P13307093080047072345.a n = A136689 (n + 1)

end A136689

/-!
# A136690: Final nonzero digit of n! in base 3.

The programs for A136690, the canonical program `A136690.P4459734737890142272` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136690 has offset 0).

The definition of A136690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136690.P14227084696327460296

`and(2, A256185(n))!`
-/

namespace A136690.P14227084696327460296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A256185 n)).toNat

end

end A136690.P14227084696327460296

namespace A136690

/-- `and(2, A256185(n))!` -/
def P14227084696327460296.Spec : Prop :=
  ∀ n, (P14227084696327460296.a n : ℤ) = A136690 n

end A136690

/-! ## A136690.P14186278587636511365

`A189641(n+1)%2+1`
-/

namespace A136690.P14186278587636511365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189641 (n + 1)) 2 + 1

end

end A136690.P14186278587636511365

namespace A136690

/-- `A189641(n+1)%2+1` -/
def P14186278587636511365.Spec : Prop :=
  ∀ n, P14186278587636511365.a n = A136690 n

end A136690

/-! ## A136690.P4459734737890142272

`((n-val(A006047(n), 2))%4)!`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136690

/-- `((n-val(A006047(n), 2))%4)!` -/
def P4459734737890142272.Spec : Prop :=
  ∀ n, (P4459734737890142272.a n : ℤ) = A136690 n

theorem P4459734737890142272.correct : P4459734737890142272.Spec := by
  intro n
  simp only [A136690]

end A136690

/-! ## A136690.P5152930134835369591

`(a(n-1)*A038502(n))%3` with `a(0)=1`
-/

namespace A136690.P5152930134835369591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) * A038502 n) 3

end

end A136690.P5152930134835369591

namespace A136690

/-- `(a(n-1)*A038502(n))%3` -/
def P5152930134835369591.Spec : Prop :=
  ∀ n, P5152930134835369591.a n = A136690 n

end A136690

/-! ## A136690.P3778997569389262171

`and(1, ∑[char[A026179(n+2)]])+1`
-/

namespace A136690.P3778997569389262171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A136690.P3778997569389262171

namespace A136690

/-- `and(1, ∑[char[A026179(n+2)]])+1` -/
def P3778997569389262171.Spec : Prop :=
  ∀ n, (P3778997569389262171.a n : ℤ) = A136690 n

end A136690

/-! ## A136690.P18188010490620882540

`gcd(2, a(floor(n/3))-A000212(n))` with `a(0)=1`
-/

namespace A136690.P18188010490620882540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 ((a ⌊(n : ℚ) / 3⌋.toNat : ℤ) - A000212 n)

end

end A136690.P18188010490620882540

namespace A136690

/-- `gcd(2, a(floor(n/3))-A000212(n))` -/
def P18188010490620882540.Spec : Prop :=
  ∀ n, (P18188010490620882540.a n : ℤ) = A136690 n

end A136690

/-! ## A136690.P1215189652105888222

`A000034(A189641(n+1))`
-/

namespace A136690.P1215189652105888222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A189641 (n + 1)).toNat

end

end A136690.P1215189652105888222

namespace A136690

/-- `A000034(A189641(n+1))` -/
def P1215189652105888222.Spec : Prop :=
  ∀ n, P1215189652105888222.a n = A136690 n

end A136690

/-! ## A136690.P2558698629481314215

`A000041(and(2, A256185(n)))`
-/

namespace A136690.P2558698629481314215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 2 (A256185 n)).toNat

end

end A136690.P2558698629481314215

namespace A136690

/-- `A000041(and(2, A256185(n)))` -/
def P2558698629481314215.Spec : Prop :=
  ∀ n, P2558698629481314215.a n = A136690 n

end A136690

/-! ## A136690.P3030808030307981446

`A000108(and(2, A256185(n)))`
-/

namespace A136690.P3030808030307981446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 2 (A256185 n)).toNat

end

end A136690.P3030808030307981446

namespace A136690

/-- `A000108(and(2, A256185(n)))` -/
def P3030808030307981446.Spec : Prop :=
  ∀ n, P3030808030307981446.a n = A136690 n

end A136690

/-! ## A136690.P3470066964917753014

`A256180(and(2, A256185(n)))`
-/

namespace A136690.P3470066964917753014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256180 (Int.land 2 (A256185 n)).toNat

end

end A136690.P3470066964917753014

namespace A136690

/-- `A256180(and(2, A256185(n)))` -/
def P3470066964917753014.Spec : Prop :=
  ∀ n, P3470066964917753014.a n = A136690 n

end A136690

/-! ## A136690.P10886120072068720193

`A256195(and(2, A256185(n)))`
-/

namespace A136690.P10886120072068720193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256195 (Int.land 2 (A256185 n)).toNat

end

end A136690.P10886120072068720193

namespace A136690

/-- `A256195(and(2, A256185(n)))` -/
def P10886120072068720193.Spec : Prop :=
  ∀ n, P10886120072068720193.a n = A136690 n

end A136690

/-! ## A136690.P5669230803748269424

`A256196(and(2, A256185(n)))`
-/

namespace A136690.P5669230803748269424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256196 (Int.land 2 (A256185 n)).toNat

end

end A136690.P5669230803748269424

namespace A136690

/-- `A256196(and(2, A256185(n)))` -/
def P5669230803748269424.Spec : Prop :=
  ∀ n, P5669230803748269424.a n = A136690 n

end A136690

/-! ## A136690.P12346402490368084994

`A256197(and(2, A256185(n)))`
-/

namespace A136690.P12346402490368084994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256197 (Int.land 2 (A256185 n)).toNat

end

end A136690.P12346402490368084994

namespace A136690

/-- `A256197(and(2, A256185(n)))` -/
def P12346402490368084994.Spec : Prop :=
  ∀ n, P12346402490368084994.a n = A136690 n

end A136690

/-! ## A136690.P14995012498600273204

`A000010(and(2, A256185(n))+1)`
-/

namespace A136690.P14995012498600273204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.land 2 (A256185 n) + 1).toNat

end

end A136690.P14995012498600273204

namespace A136690

/-- `A000010(and(2, A256185(n))+1)` -/
def P14995012498600273204.Spec : Prop :=
  ∀ n, P14995012498600273204.a n = A136690 n

end A136690

/-! ## A136690.P17834451735377924943

`A000041(and(2, n-A062756(n)))`
-/

namespace A136690.P17834451735377924943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 2 ((n : ℤ) - A062756 n)).toNat

end

end A136690.P17834451735377924943

namespace A136690

/-- `A000041(and(2, n-A062756(n)))` -/
def P17834451735377924943.Spec : Prop :=
  ∀ n, P17834451735377924943.a n = A136690 n

end A136690

/-! ## A136690.P8634883367971575811

`A000108(and(2, n-A062756(n)))`
-/

namespace A136690.P8634883367971575811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 2 ((n : ℤ) - A062756 n)).toNat

end

end A136690.P8634883367971575811

namespace A136690

/-- `A000108(and(2, n-A062756(n)))` -/
def P8634883367971575811.Spec : Prop :=
  ∀ n, P8634883367971575811.a n = A136690 n

end A136690

/-! ## A136690.P14498862471792084326

`A007318(and(2, n-A062756(n))+2)`
-/

namespace A136690.P14498862471792084326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - A062756 n) + 2).toNat

end

end A136690.P14498862471792084326

namespace A136690

/-- `A007318(and(2, n-A062756(n))+2)` -/
def P14498862471792084326.Spec : Prop :=
  ∀ n, P14498862471792084326.a n = A136690 n

end A136690

/-! ## A136690.P14854431466288230892

`A007318(2*and(2, n-A062756(n)))`
-/

namespace A136690.P14854431466288230892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * Int.land 2 ((n : ℤ) - A062756 n)).toNat

end

end A136690.P14854431466288230892

namespace A136690

/-- `A007318(2*and(2, n-A062756(n)))` -/
def P14854431466288230892.Spec : Prop :=
  ∀ n, P14854431466288230892.a n = A136690 n

end A136690

/-! ## A136690.P457168483578955525

`A007318(2^and(2, n-A062756(n)))`
-/

namespace A136690.P457168483578955525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land 2 ((n : ℤ) - A062756 n) : ℤ))).toNat

end

end A136690.P457168483578955525

namespace A136690

/-- `A007318(2^and(2, n-A062756(n)))` -/
def P457168483578955525.Spec : Prop :=
  ∀ n, P457168483578955525.a n = A136690 n

end A136690

/-! ## A136690.P2726863605692240075

`A000041(and(2, n-val(A006047(n), 2)))`
-/

namespace A136690.P2726863605692240075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 2 ((n : ℤ) - (SequenceMachineLib.valuation (A006047 n).toNat 2 : ℤ))).toNat

end

end A136690.P2726863605692240075

namespace A136690

/-- `A000041(and(2, n-val(A006047(n), 2)))` -/
def P2726863605692240075.Spec : Prop :=
  ∀ n, P2726863605692240075.a n = A136690 n

end A136690

/-!
# A136691: Final nonzero digit of n! in base 4.

The programs for A136691, the canonical program `A136691.P18423899121827454363` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136691 has offset 0).

The definition of A136691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136691.P3520454200055016081

`gcd(4, A071052(n)/2)%4+1`
-/

namespace A136691.P3520454200055016081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (SequenceMachineLib.roundAway ((A071052 n : ℚ) / 2)) % 4 + 1

end

end A136691.P3520454200055016081

namespace A136691

/-- `gcd(4, A071052(n)/2)%4+1` -/
def P3520454200055016081.Spec : Prop :=
  ∀ n, (P3520454200055016081.a n : ℤ) = A136691 n

end A136691

/-! ## A136691.P18423899121827454363

`A065882(A136702(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A136691

/-- `A065882(A136702(n))` -/
def P18423899121827454363.Spec : Prop :=
  ∀ n, P18423899121827454363.a n = A136691 n

theorem P18423899121827454363.correct : P18423899121827454363.Spec := by
  intro n
  simp only [A136691]

end A136691

/-! ## A136691.P5158005381740440938

`A055204(A028310(n))%4`
-/

namespace A136691.P5158005381740440938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055204 (A028310 n).toNat) 4

end

end A136691.P5158005381740440938

namespace A136691

/-- `A055204(A028310(n))%4` -/
def P5158005381740440938.Spec : Prop :=
  ∀ n, P5158005381740440938.a n = A136691 n

end A136691

/-! ## A136691.P16062089977414646963

`A008687(and(7, A098331(n)))`
-/

namespace A136691.P16062089977414646963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Int.land 7 (A098331 n)).toNat

end

end A136691.P16062089977414646963

namespace A136691

/-- `A008687(and(7, A098331(n)))` -/
def P16062089977414646963.Spec : Prop :=
  ∀ n, P16062089977414646963.a n = A136691 n

end A136691

/-! ## A136691.P11087024425711998155

`A249831(∑[n+1])%4`
-/

namespace A136691.P11087024425711998155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249831 (∑ j ∈ Finset.range (n + 1), f1 j)) 4

end

end A136691.P11087024425711998155

namespace A136691

/-- `A249831(∑[n+1])%4` -/
def P11087024425711998155.Spec : Prop :=
  ∀ n, P11087024425711998155.a n = A136691 n

end A136691

/-! ## A136691.P1721229982630618359

`and(3, A249831(Δ[A000292(n)]))`
-/

namespace A136691.P1721229982630618359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A249831 (f1 (n + 1) - f1 n).toNat)

end

end A136691.P1721229982630618359

namespace A136691

/-- `and(3, A249831(Δ[A000292(n)]))` -/
def P1721229982630618359.Spec : Prop :=
  ∀ n, P1721229982630618359.a n = A136691 n

end A136691

/-! ## A136691.P7192540686322103968

`and(3, A249831(∑[A000027(n+1)]))`
-/

namespace A136691.P7192540686322103968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A249831 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A136691.P7192540686322103968

namespace A136691

/-- `and(3, A249831(∑[A000027(n+1)]))` -/
def P7192540686322103968.Spec : Prop :=
  ∀ n, P7192540686322103968.a n = A136691 n

end A136691

/-!
# A136692: Final nonzero digit of n! in base 5.

The programs for A136692, the canonical program `A136692.P3604268324122598631` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136692 has offset 0).

The definition of A136692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136692.P18151456870120967866

`A277543(n*a(n-1))` with `a(0)=1`
-/

namespace A136692.P18151456870120967866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277543 ((n : ℤ) * a (n - 1)).toNat

end

end A136692.P18151456870120967866

namespace A136692

/-- `A277543(n*a(n-1))` -/
def P18151456870120967866.Spec : Prop :=
  ∀ n, P18151456870120967866.a n = A136692 n

end A136692

/-! ## A136692.P3604268324122598631

`A132739(n*a(n-1))%5` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136692

/-- `A132739(n*a(n-1))%5` -/
def P3604268324122598631.Spec : Prop :=
  ∀ n, P3604268324122598631.a n = A136692 n

theorem P3604268324122598631.correct : P3604268324122598631.Spec := by
  intro n
  simp only [A136692]

end A136692

/-! ## A136692.P11269674875129076841

`A277543(a(n-1)/n^-1)` with `a(0)=1, a(1)=1`
-/

namespace A136692.P11269674875129076841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277543 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A136692.P11269674875129076841

namespace A136692

/-- `A277543(a(n-1)/n^-1)` -/
def P11269674875129076841.Spec : Prop :=
  ∀ n, P11269674875129076841.a n = A136692 n

end A136692

/-! ## A136692.P656563976707535738

`A277543(floor(n*a(floor(n²/(n+1)))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A136692.P656563976707535738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277543 ((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat).toNat

end

end A136692.P656563976707535738

namespace A136692

/-- `A277543(floor(n*a(floor(n²/(n+1)))))` -/
def P656563976707535738.Spec : Prop :=
  ∀ n, P656563976707535738.a n = A136692 n

end A136692

/-! ## A136692.P11668614547714661129

`∏[A277543(A028310(n))]%5`
-/

namespace A136692.P11668614547714661129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 5

end

end A136692.P11668614547714661129

namespace A136692

/-- `∏[A277543(A028310(n))]%5` -/
def P11668614547714661129.Spec : Prop :=
  ∀ n, P11668614547714661129.a n = A136692 n

end A136692

/-! ## A136692.P16880979345073994240

`(A060818(n)*A240533(n))%5`
-/

namespace A136692.P16880979345073994240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060818 n * A240533 n) 5

end

end A136692.P16880979345073994240

namespace A136692

/-- `(A060818(n)*A240533(n))%5` -/
def P16880979345073994240.Spec : Prop :=
  ∀ n, P16880979345073994240.a n = A136692 n

end A136692

/-! ## A136692.P7538519942344744509

`(A000142(n)/A243757(n))%5`
-/

namespace A136692.P7538519942344744509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A243757 n : ℚ))) 5

end

end A136692.P7538519942344744509

namespace A136692

/-- `(A000142(n)/A243757(n))%5` -/
def P7538519942344744509.Spec : Prop :=
  ∀ n, P7538519942344744509.a n = A136692 n

end A136692

/-! ## A136692.P17564591062891393467

`gcd(A000142(n), A008548(n))%5`
-/

namespace A136692.P17564591062891393467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A008548 n) % 5

end

end A136692.P17564591062891393467

namespace A136692

/-- `gcd(A000142(n), A008548(n))%5` -/
def P17564591062891393467.Spec : Prop :=
  ∀ n, (P17564591062891393467.a n : ℤ) = A136692 n

end A136692

/-!
# A136693: Final nonzero digit of n! in base 6.

The programs for A136693, there is no canonical definition to state claims against.
-/

/-! ## A136693.P5864311361818308045

`A092205(a(floor(n/3))*a(n%3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A136693.P5864311361818308045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  A092205 (a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)).toNat

end

end A136693.P5864311361818308045

/-! ## A136693.P6168102901176568045

`gcd(A123932(A008615(n)), A300222(n))`
-/

namespace A136693.P6168102901176568045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123932 (A008615 n).toNat) (A300222 n)

end

end A136693.P6168102901176568045

/-! ## A136693.P14904619982490536565

`A162533(lcm(3, n)/3)%6`
-/

namespace A136693.P14904619982490536565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162533 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3)).toNat) 6

end

end A136693.P14904619982490536565

/-! ## A136693.P12935279508573965237

`A162533(A051176(n))%6`
-/

namespace A136693.P12935279508573965237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162533 (A051176 n).toNat) 6

end

end A136693.P12935279508573965237

/-! ## A136693.P17060294807794953865

`A162533(A255588(n))%6`
-/

namespace A136693.P17060294807794953865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162533 (A255588 n).toNat) 6

end

end A136693.P17060294807794953865

/-! ## A136693.P12835559437713320861

`A080609(n)%A267884(A086183(n+1))`
-/

namespace A136693.P12835559437713320861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080609 n) (A267884 (A086183 (n + 1)).toNat)

end

end A136693.P12835559437713320861

/-!
# A136694: Final nonzero digit of n! in base 7.

The programs for A136694, the canonical program `A136694.P15990081866710796202` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136694 has offset 0).

The definition of A136694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136694.P15990081866710796202

`A277545(n*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136694

/-- `A277545(n*a(n-1))` -/
def P15990081866710796202.Spec : Prop :=
  ∀ n, P15990081866710796202.a n = A136694 n

theorem P15990081866710796202.correct : P15990081866710796202.Spec := by
  intro n
  simp only [A136694]

end A136694

/-! ## A136694.P14563359424670472113

`A277545(a(n-1)/n^-1)` with `a(0)=1`
-/

namespace A136694.P14563359424670472113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A136694.P14563359424670472113

namespace A136694

/-- `A277545(a(n-1)/n^-1)` -/
def P14563359424670472113.Spec : Prop :=
  ∀ n, P14563359424670472113.a n = A136694 n

end A136694

/-! ## A136694.P620265982991980870

`A277545(floor(n*a(xor(-1, -n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A136694.P620265982991980870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat).toNat

end

end A136694.P620265982991980870

namespace A136694

/-- `A277545(floor(n*a(xor(-1, -n))))` -/
def P620265982991980870.Spec : Prop :=
  ∀ n, P620265982991980870.a n = A136694 n

end A136694

/-! ## A136694.P12089176188656866779

`A277545(ceil(n*a(xor(-1, -n))))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A136694.P12089176188656866779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat).toNat

end

end A136694.P12089176188656866779

namespace A136694

/-- `A277545(ceil(n*a(xor(-1, -n))))` -/
def P12089176188656866779.Spec : Prop :=
  ∀ n, P12089176188656866779.a n = A136694 n

end A136694

/-! ## A136694.P6303603265666619107

`A277545(round(n*a(xor(-1, -n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A136694.P6303603265666619107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (Int.xor (-1) (-(n : ℤ))).toNat).toNat

end

end A136694.P6303603265666619107

namespace A136694

/-- `A277545(round(n*a(xor(-1, -n))))` -/
def P6303603265666619107.Spec : Prop :=
  ∀ n, P6303603265666619107.a n = A136694 n

end A136694

/-! ## A136694.P5564633304902553975

`A152656(eq[64, A059268(n)])%7`
-/

namespace A136694.P5564633304902553975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 7

end

end A136694.P5564633304902553975

namespace A136694

/-- `A152656(eq[64, A059268(n)])%7` -/
def P5564633304902553975.Spec : Prop :=
  ∀ n, P5564633304902553975.a n = A136694 n

end A136694

/-!
# A136697: Final nonzero digit of n! in base 11.

The programs for A136697, there is no canonical definition to state claims against.
-/

/-! ## A136697.P12359471198861068856

`∏[A106612(floor(acot(n)+n))]%11`
-/

namespace A136697.P12359471198861068856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 11

end

end A136697.P12359471198861068856

/-! ## A136697.P4970415498034265087

`∏[A137564(floor(acot(n)+n))]%11`
-/

namespace A136697.P4970415498034265087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 11

end

end A136697.P4970415498034265087

/-! ## A136697.P2554915073763803896

`∏[A106612(floor((n+1)^-1+n))]%11`
-/

namespace A136697.P2554915073763803896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 ⌊(n + 1 : ℚ) ^ (-1 : ℤ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 11

end

end A136697.P2554915073763803896

/-! ## A136697.P10868565918931397203

`A232985(n)%A006530(A005015(n))`
-/

namespace A136697.P10868565918931397203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232985 n) (A006530 (A005015 n).toNat)

end

end A136697.P10868565918931397203

/-! ## A136697.P9858381791129258149

`(A289282(n)-A002265(A014378(n)))%11`
-/

namespace A136697.P9858381791129258149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289282 n - A002265 (A014378 n).toNat) 11

end

end A136697.P9858381791129258149

/-!
# A136699: Final nonzero digit of n! in base 13.

The programs for A136699, there is no canonical definition to state claims against.
-/

/-! ## A136699.P17450918534861289939

`∏[A070939(A301706(n+1))]%13`
-/

namespace A136699.P17450918534861289939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A301706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 13

end

end A136699.P17450918534861289939

/-! ## A136699.P1579068764652417754

`A055648(n)!%13`
-/

namespace A136699.P1579068764652417754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055648 n).toNat % 13

end

end A136699.P1579068764652417754

/-! ## A136699.P12988231333807327751

`A004874(n+1)!%13`
-/

namespace A136699.P12988231333807327751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004874 (n + 1)).toNat % 13

end

end A136699.P12988231333807327751

/-! ## A136699.P16392970320573461596

`A004885(n+1)!%13`
-/

namespace A136699.P16392970320573461596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004885 (n + 1)).toNat % 13

end

end A136699.P16392970320573461596

/-! ## A136699.P771890523781697036

`A004896(n+1)!%13`
-/

namespace A136699.P771890523781697036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004896 (n + 1)).toNat % 13

end

end A136699.P771890523781697036

