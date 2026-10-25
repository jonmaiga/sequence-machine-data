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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
# A060300: a(n) = (2*n*(n+1))^2.

The programs for A060300, the canonical program `A060300.P1314956441552645560` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060300 has offset 0).

The definition of A060300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n*(n+1))²` (program `A060300.P1314956441552645560`, by `A060300.P1314956441552645560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060300.P1314956441552645560

`(2*n*(n+1))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060300

/-- `(2*n*(n+1))²` -/
def P1314956441552645560.Spec : Prop :=
  ∀ n, (P1314956441552645560.a n : ℤ) = A060300 n

theorem P1314956441552645560.correct : P1314956441552645560.Spec := by
  intro n
  simp only [A060300]

end A060300

/-! ## A060300.P100762955870178444

`2*A254371(n)`
-/

namespace A060300.P100762955870178444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254371 n

end

end A060300.P100762955870178444

namespace A060300

/-- `2*A254371(n)` -/
def P100762955870178444.Spec : Prop :=
  ∀ n, P100762955870178444.a n = A060300 n

theorem P100762955870178444.correct : P100762955870178444.Spec := by
  intro n
  simp only [A060300, Nat.add_sub_cancel, A060300.P100762955870178444.a, A060300.P1314956441552645560.a, A254371, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060300

/-! ## A060300.P13182876247970957595

`8*A163102(n)`
-/

namespace A060300.P13182876247970957595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A163102 n

end

end A060300.P13182876247970957595

namespace A060300

/-- `8*A163102(n)` -/
def P13182876247970957595.Spec : Prop :=
  ∀ n, P13182876247970957595.a n = A060300 n

end A060300

/-! ## A060300.P1092456432439487168

`16*A000537(n)`
-/

namespace A060300.P1092456432439487168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000537 n

end

end A060300.P1092456432439487168

namespace A060300

/-- `16*A000537(n)` -/
def P1092456432439487168.Spec : Prop :=
  ∀ n, P1092456432439487168.a n = A060300 n

theorem P1092456432439487168.correct : P1092456432439487168.Spec := by
  intro n
  simp only [A060300, Nat.add_sub_cancel, A060300.P1092456432439487168.a, A060300.P1314956441552645560.a, A000537, A000537.P7887993002585723883.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060300

/-! ## A060300.P16919823526286497103

`4*A002378(n)²`
-/

namespace A060300.P16919823526286497103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002378 n ^ 2

end

end A060300.P16919823526286497103

namespace A060300

/-- `4*A002378(n)²` -/
def P16919823526286497103.Spec : Prop :=
  ∀ n, P16919823526286497103.a n = A060300 n

theorem P16919823526286497103.correct : P16919823526286497103.Spec := by
  intro n
  simp only [A060300, Nat.add_sub_cancel, A060300.P16919823526286497103.a, A060300.P1314956441552645560.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060300

/-! ## A060300.P14407719167685679389

`16*A000217(n)²`
-/

namespace A060300.P14407719167685679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000217 n ^ 2

end

end A060300.P14407719167685679389

namespace A060300

/-- `16*A000217(n)²` -/
def P14407719167685679389.Spec : Prop :=
  ∀ n, P14407719167685679389.a n = A060300 n

theorem P14407719167685679389.correct : P14407719167685679389.Spec := by
  intro n
  simp only [A060300, Nat.add_sub_cancel, A060300.P14407719167685679389.a, A060300.P1314956441552645560.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060300

/-! ## A060300.P5735737271486858904

`4*A035287(n+1)`
-/

namespace A060300.P5735737271486858904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A035287 (n + 1)

end

end A060300.P5735737271486858904

namespace A060300

/-- `4*A035287(n+1)` -/
def P5735737271486858904.Spec : Prop :=
  ∀ n, P5735737271486858904.a n = A060300 n

theorem P5735737271486858904.correct : P5735737271486858904.Spec := by
  intro n
  simp only [A060300, Nat.add_sub_cancel, A060300.P5735737271486858904.a, A060300.P1314956441552645560.a, A035287, A035287.P16843695516421463004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060300

/-! ## A060300.P14536872212510779260

`(2*sqrt(C(n+1, 2)))^4`
-/

namespace A060300.P14536872212510779260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * Real.sqrt (Nat.choose (n + 1) 2 : ℝ)) ^ 4

end

end A060300.P14536872212510779260

namespace A060300

/-- `(2*sqrt(C(n+1, 2)))^4` -/
def P14536872212510779260.Spec : Prop :=
  ∀ n, P14536872212510779260.a n = (A060300 n : ℝ)

end A060300

/-! ## A060300.P9356143403987569510

`∑[lcm(2, 2*(2*n)^3)]`
-/

namespace A060300.P9356143403987569510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (2 * n) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060300.P9356143403987569510

namespace A060300

/-- `∑[lcm(2, 2*(2*n)^3)]` -/
def P9356143403987569510.Spec : Prop :=
  ∀ n, (P9356143403987569510.a n : ℤ) = A060300 n

end A060300

/-! ## A060300.P9762772906072647023

`∑[a(n-1)+4]^2` with `a(0)=0`
-/

namespace A060300.P9762772906072647023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060300.P9762772906072647023

namespace A060300

/-- `∑[a(n-1)+4]^2` -/
def P9762772906072647023.Spec : Prop :=
  ∀ n, (P9762772906072647023.a n : ℤ) = A060300 n

end A060300

/-! ## A060300.P13361275681631053356

`∑[4*n]^gcd(2, 2*n)`
-/

namespace A060300.P13361275681631053356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A060300.P13361275681631053356

namespace A060300

/-- `∑[4*n]^gcd(2, 2*n)` -/
def P13361275681631053356.Spec : Prop :=
  ∀ n, (P13361275681631053356.a n : ℤ) = A060300 n

end A060300

/-! ## A060300.P7793880605285673688

`floor(∑[a(n-1)+4]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060300.P7793880605285673688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060300.P7793880605285673688

namespace A060300

/-- `floor(∑[a(n-1)+4]²)` -/
def P7793880605285673688.Spec : Prop :=
  ∀ n, (P7793880605285673688.a n : ℤ) = A060300 n

end A060300

/-! ## A060300.P12819046408762739093

`(2*n)²*xor(n, -1)²`
-/

namespace A060300.P12819046408762739093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * Int.xor (n : ℤ) (-1) ^ 2

end

end A060300.P12819046408762739093

namespace A060300

/-- `(2*n)²*xor(n, -1)²` -/
def P12819046408762739093.Spec : Prop :=
  ∀ n, P12819046408762739093.a n = A060300 n

end A060300

/-! ## A060300.P455385113390552737

`(2*n)²*record[(1-n)²]`
-/

namespace A060300.P455385113390552737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060300.P455385113390552737

namespace A060300

/-- `(2*n)²*record[(1-n)²]` -/
def P455385113390552737.Spec : Prop :=
  ∀ n, P455385113390552737.a n = A060300 n

end A060300

/-! ## A060300.P6761606690424752551

`∑[a(n-1)+8]²/4` with `a(0)=0`
-/

namespace A060300.P6761606690424752551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A060300.P6761606690424752551

namespace A060300

/-- `∑[a(n-1)+8]²/4` -/
def P6761606690424752551.Spec : Prop :=
  ∀ n, P6761606690424752551.a n = (A060300 n : ℚ)

end A060300

/-! ## A060300.P4511573602981561360

`floor(∑[a(n-1)-4]^2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060300.P4511573602981561360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060300.P4511573602981561360

namespace A060300

/-- `floor(∑[a(n-1)-4]^2)` -/
def P4511573602981561360.Spec : Prop :=
  ∀ n, P4511573602981561360.a n = A060300 n

end A060300

/-! ## A060300.P7180361792250818037

`((n+1)*2*n)^acos(cos(2))`
-/

namespace A060300.P7180361792250818037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A060300.P7180361792250818037

namespace A060300

/-- `((n+1)*2*n)^acos(cos(2))` -/
def P7180361792250818037.Spec : Prop :=
  ∀ n, P7180361792250818037.a n = (A060300 n : ℝ)

end A060300

/-! ## A060300.P1568292423837098038

`∑[2*xor(1, 2*n+1)^3]`
-/

namespace A060300.P1568292423837098038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (2 * n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060300.P1568292423837098038

namespace A060300

/-- `∑[2*xor(1, 2*n+1)^3]` -/
def P1568292423837098038.Spec : Prop :=
  ∀ n, (P1568292423837098038.a n : ℤ) = A060300 n

end A060300

/-! ## A060300.P1605379717322007092

`sqrt(lcm(4, ((n+1)*2*n)^4))`
-/

namespace A060300.P1605379717322007092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 4 (((n + 1) * (2 * n)) ^ 4) : ℝ)

end

end A060300.P1605379717322007092

namespace A060300

/-- `sqrt(lcm(4, ((n+1)*2*n)^4))` -/
def P1605379717322007092.Spec : Prop :=
  ∀ n, P1605379717322007092.a n = (A060300 n : ℝ)

end A060300

/-! ## A060300.P16924106346808912124

`floor((∑[a(n-1)-8]/2)²)` with `a(0)=0`
-/

namespace A060300.P16924106346808912124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2⌋

end

end A060300.P16924106346808912124

namespace A060300

/-- `floor((∑[a(n-1)-8]/2)²)` -/
def P16924106346808912124.Spec : Prop :=
  ∀ n, P16924106346808912124.a n = A060300 n

end A060300

/-!
# A060301: For n>3: a(n) is a multiple of three distinct earlier terms.

The programs for A060301, there is no canonical definition to state claims against.
-/

/-! ## A060301.P1306811465841925621

`filter[A018710(n+1), A374130(#)]`
-/

namespace A060301.P1306811465841925621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A060301.P1306811465841925621

/-! ## A060301.P11891932809771787419

`filter[A018710(n+1), A374466(#)]`
-/

namespace A060301.P11891932809771787419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A060301.P11891932809771787419

/-! ## A060301.P18041461902598456129

`∩[A018710(n+1), A279457(n+1)]`
-/

namespace A060301.P18041461902598456129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060301.P18041461902598456129

/-!
# A060303: Number of primes below n^2 does not exceed n times the number of primes below n.

The programs for A060303, the canonical program `A060303.P1967111491772057259` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060303 has offset 1).

The definition of A060303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060303.P3953325071778271759

`A128913(n+1)-∑[A014085(n)]`
-/

namespace A060303.P3953325071778271759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060303.P3953325071778271759

namespace A060303

/-- `A128913(n+1)-∑[A014085(n)]` -/
def P3953325071778271759.Spec : Prop :=
  ∀ n, P3953325071778271759.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P1967111491772057259

`A168048(n+1)-A291440(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060303

/-- `A168048(n+1)-A291440(n+1)` -/
def P1967111491772057259.Spec : Prop :=
  ∀ n, P1967111491772057259.a n = A060303 (n + 1)

theorem P1967111491772057259.correct : P1967111491772057259.Spec := by
  intro n
  simp only [A060303, Nat.add_sub_cancel]

end A060303

/-! ## A060303.P2662020030576175878

`n*A000720(n+1)-A117490(n+1)`
-/

namespace A060303.P2662020030576175878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000720 (n + 1) - A117490 (n + 1)

end

end A060303.P2662020030576175878

namespace A060303

/-- `n*A000720(n+1)-A117490(n+1)` -/
def P2662020030576175878.Spec : Prop :=
  ∀ n, P2662020030576175878.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P17345307246310929231

`(n+1)*A000720(n+1)-∑[A014085(n)]`
-/

namespace A060303.P17345307246310929231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060303.P17345307246310929231

namespace A060303

/-- `(n+1)*A000720(n+1)-∑[A014085(n)]` -/
def P17345307246310929231.Spec : Prop :=
  ∀ n, P17345307246310929231.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P8488228328485997446

`n*∑[A010051(n+1)]-A117490(n+1)`
-/

namespace A060303.P8488228328485997446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A117490 (n + 1)

end

end A060303.P8488228328485997446

namespace A060303

/-- `n*∑[A010051(n+1)]-A117490(n+1)` -/
def P8488228328485997446.Spec : Prop :=
  ∀ n, P8488228328485997446.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P11526653494945136218

`A128913(n+1)-A038107(n+1)`
-/

namespace A060303.P11526653494945136218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - A038107 (n + 1)

end

end A060303.P11526653494945136218

namespace A060303

/-- `A128913(n+1)-A038107(n+1)` -/
def P11526653494945136218.Spec : Prop :=
  ∀ n, P11526653494945136218.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P15737071323662574441

`A128913(n+1)-A000720((n+1)²)`
-/

namespace A060303.P15737071323662574441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - A000720 ((n + 1) ^ 2)

end

end A060303.P15737071323662574441

namespace A060303

/-- `A128913(n+1)-A000720((n+1)²)` -/
def P15737071323662574441.Spec : Prop :=
  ∀ n, P15737071323662574441.a n = A060303 (n + 1)

theorem P15737071323662574441.correct : P15737071323662574441.Spec := by
  intro n
  simp only [A060303, Nat.add_sub_cancel, A060303.P15737071323662574441.a, A060303.P1967111491772057259.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A128913, A128913.P17301333717528200460.a, A168048, A168048.P5656807173339822994.a, A291440, A291440.P5300707734010347566.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060303

/-! ## A060303.P11040755650888627359

`(n+1)*∑[char[A000040(n+1)-1]]-A000720((n+1)²)`
-/

namespace A060303.P11040755650888627359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A000720 ((n + 1) ^ 2)

end

end A060303.P11040755650888627359

namespace A060303

/-- `(n+1)*∑[char[A000040(n+1)-1]]-A000720((n+1)²)` -/
def P11040755650888627359.Spec : Prop :=
  ∀ n, P11040755650888627359.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P17102047657211412326

`(n+1)*∑[char[A006530(n+2)-1]]-A000720((n+1)²)`
-/

namespace A060303.P17102047657211412326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A000720 ((n + 1) ^ 2)

end

end A060303.P17102047657211412326

namespace A060303

/-- `(n+1)*∑[char[A006530(n+2)-1]]-A000720((n+1)²)` -/
def P17102047657211412326.Spec : Prop :=
  ∀ n, P17102047657211412326.a n = A060303 (n + 1)

end A060303

/-! ## A060303.P2061508798982178633

`(n+1)*∑[char[A000010(A014963(n+1))]]-A000720((n+1)²)`
-/

namespace A060303.P2061508798982178633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A000720 ((n + 1) ^ 2)

end

end A060303.P2061508798982178633

namespace A060303

/-- `(n+1)*∑[char[A000010(A014963(n+1))]]-A000720((n+1)²)` -/
def P2061508798982178633.Spec : Prop :=
  ∀ n, P2061508798982178633.a n = A060303 (n + 1)

end A060303

/-!
# A060304: Number of primes below n^3 does not exceed n times the number of primes below n^2.

The programs for A060304, there is no canonical definition to state claims against.
-/

/-! ## A060304.P14574955142606870283

`(n+1)*A038107(n+1)-∑[A060199(n)]`
-/

namespace A060304.P14574955142606870283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038107 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060304.P14574955142606870283

/-! ## A060304.P8404564202950079262

`n*A038107(n+1)-A079648(n+1)`
-/

namespace A060304.P8404564202950079262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038107 (n + 1) - A079648 (n + 1)

end

end A060304.P8404564202950079262

/-!
# A060305: Pisano periods for primes: period of Fibonacci numbers mod prime(n).

The programs for A060305, there is no canonical definition to state claims against.
-/

/-! ## A060305.P18111173889568096530

`A001602(n+1)*A116515(n+1)`
-/

namespace A060305.P18111173889568096530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1) * A116515 (n + 1)

end

end A060305.P18111173889568096530

/-! ## A060305.P13707659374522594550

`A001175(p?[comp[n²]])`
-/

namespace A060305.P13707659374522594550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060305.P13707659374522594550

/-! ## A060305.P8505588560978629740

`A001175(eq[1, ∑{e}[n, #]])`
-/

namespace A060305.P8505588560978629740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060305.P8505588560978629740

/-! ## A060305.P8444920299381647373

`A001175(Δ[A007504(n)])`
-/

namespace A060305.P8444920299381647373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (n + 1) - f1 n).toNat

end

end A060305.P8444920299381647373

/-! ## A060305.P4280972647751254510

`A001175(A000040(n+1))`
-/

namespace A060305.P4280972647751254510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000040 (n + 1)).toNat

end

end A060305.P4280972647751254510

/-! ## A060305.P17264988635704075316

`A001175(A008578(n+2))`
-/

namespace A060305.P17264988635704075316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A008578 (n + 2)).toNat

end

end A060305.P17264988635704075316

/-! ## A060305.P9386090933327381574

`A001175(A182986(n+2))`
-/

namespace A060305.P9386090933327381574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A182986 (n + 2)).toNat

end

end A060305.P9386090933327381574

/-! ## A060305.P11165163715560490005

`A001175(lt[0, A055672(n)])`
-/

namespace A060305.P11165163715560490005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060305.P11165163715560490005

/-! ## A060305.P16977676446169939212

`A001175(record[A006530(n+2)])`
-/

namespace A060305.P16977676446169939212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060305.P16977676446169939212

/-! ## A060305.P13810167178081094074

`A001175(record[A014963(n+2)])`
-/

namespace A060305.P13810167178081094074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060305.P13810167178081094074

/-! ## A060305.P11931860380061186131

`A001175(record[A020639(n+2)])`
-/

namespace A060305.P11931860380061186131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060305.P11931860380061186131

/-! ## A060305.P9747548324263987592

`A001175(A006093(n+1)+1)`
-/

namespace A060305.P9747548324263987592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A006093 (n + 1) + 1).toNat

end

end A060305.P9747548324263987592

/-! ## A060305.P3229705026934459313

`A001175(lt[A007918(n)-n, 1])`
-/

namespace A060305.P3229705026934459313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A060305.P3229705026934459313

/-! ## A060305.P10163448654077081774

`A001175(record[A000010(n+1)+1])`
-/

namespace A060305.P10163448654077081774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060305.P10163448654077081774

/-! ## A060305.P18219125409873887024

`A001175(record[A251561(n+2)/2])`
-/

namespace A060305.P18219125409873887024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251561 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A060305.P18219125409873887024

/-! ## A060305.P1406073516921136717

`A001175(eq[1, A001222(n+1)]+1)`
-/

namespace A060305.P1406073516921136717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060305.P1406073516921136717

/-! ## A060305.P1254777512416036705

`A001175(eq[2, A000005(n+1)]+1)`
-/

namespace A060305.P1254777512416036705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060305.P1254777512416036705

/-! ## A060305.P18199180289061380081

`A001175(lt[1, A089026(n+1)]+1)`
-/

namespace A060305.P18199180289061380081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A060305.P18199180289061380081

/-! ## A060305.P12193378343313174101

`A001175(A137751(n+1)+A137750(n+1))`
-/

namespace A060305.P12193378343313174101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A137751 (n + 1) + A137750 (n + 1)).toNat

end

end A060305.P12193378343313174101

/-! ## A060305.P336938053453490471

`A001175(A223489(n+1)+A223488(n+1))`
-/

namespace A060305.P336938053453490471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A223489 (n + 1) + A223488 (n + 1)).toNat

end

end A060305.P336938053453490471

/-!
# A060306: Records in A025441.

The programs for A060306, there is no canonical definition to state claims against.
-/

/-! ## A060306.P16371653690196026806

`record[A336543(n+1)]`
-/

namespace A060306.P16371653690196026806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P16371653690196026806

/-! ## A060306.P11650568428009416133

`record[A278529(A344470(n+1))]`
-/

namespace A060306.P11650568428009416133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A344470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P11650568428009416133

/-! ## A060306.P10460205196900914178

`record[A025480(A344470(A008619(n)))]`
-/

namespace A060306.P10460205196900914178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A344470 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P10460205196900914178

/-! ## A060306.P1940657066865334620

`record[A025480(A344470(A065033(n)))]`
-/

namespace A060306.P1940657066865334620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A344470 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P1940657066865334620

/-! ## A060306.P13237465698092673246

`record[A025480(A344470(A117910(n)))]`
-/

namespace A060306.P13237465698092673246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A344470 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P13237465698092673246

/-! ## A060306.P868739448717005739

`record[A025480(A344470(A134478(n)))]`
-/

namespace A060306.P868739448717005739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A344470 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P868739448717005739

/-! ## A060306.P3598569115184958242

`record[A246277(A344470(A020915(n)))]`
-/

namespace A060306.P3598569115184958242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A344470 (A020915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P3598569115184958242

/-! ## A060306.P18122098291563536831

`record[A246277(A344470(A028310(n)))]`
-/

namespace A060306.P18122098291563536831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A344470 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P18122098291563536831

/-! ## A060306.P1204088625685220080

`record[A060681(A344470(A004741(n+1)))]`
-/

namespace A060306.P1204088625685220080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A344470 (A004741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060306.P1204088625685220080

/-! ## A060306.P5124562029349514749

`A000720(record[A082500(A344470(n+1))])`
-/

namespace A060306.P5124562029349514749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A344470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060306.P5124562029349514749

/-!
# A060308: Largest prime <= 2n.

The programs for A060308, the canonical program `A060308.P4368646436962365300` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060308 has offset 1).

The definition of A060308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060308.P4368646436962365300

`A007917(A005843(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060308

/-- `A007917(A005843(n+1))` -/
def P4368646436962365300.Spec : Prop :=
  ∀ n, P4368646436962365300.a n = A060308 (n + 1)

theorem P4368646436962365300.correct : P4368646436962365300.Spec := by
  intro n
  simp only [A060308, Nat.add_sub_cancel]

end A060308

/-! ## A060308.P13212277095535227373

`2*(n+1)-A238737(n)`
-/

namespace A060308.P13212277095535227373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A238737 n

end

end A060308.P13212277095535227373

namespace A060308

/-- `2*(n+1)-A238737(n)` -/
def P13212277095535227373.Spec : Prop :=
  ∀ n, P13212277095535227373.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P17454755565157898980

`∑[A096501(2*n+1)]+2`
-/

namespace A060308.P17454755565157898980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A060308.P17454755565157898980

namespace A060308

/-- `∑[A096501(2*n+1)]+2` -/
def P17454755565157898980.Spec : Prop :=
  ∀ n, P17454755565157898980.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P618963329338407697

`2*n+3-A049716(n+1)`
-/

namespace A060308.P618963329338407697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A049716 (n + 1)

end

end A060308.P618963329338407697

namespace A060308

/-- `2*n+3-A049716(n+1)` -/
def P618963329338407697.Spec : Prop :=
  ∀ n, P618963329338407697.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P13893056875289756733

`A308044(n+2)/2+n+2`
-/

namespace A060308.P13893056875289756733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308044 (n + 2) : ℚ) / 2 + (n + 2 : ℚ)

end

end A060308.P13893056875289756733

namespace A060308

/-- `A308044(n+2)/2+n+2` -/
def P13893056875289756733.Spec : Prop :=
  ∀ n, P13893056875289756733.a n = (A060308 (n + 1) : ℚ)

end A060308

/-! ## A060308.P1996848709150272715

`A000040(A099802(n+1))`
-/

namespace A060308.P1996848709150272715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (n + 1)).toNat

end

end A060308.P1996848709150272715

namespace A060308

/-- `A000040(A099802(n+1))` -/
def P1996848709150272715.Spec : Prop :=
  ∀ n, P1996848709150272715.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P5061657958477399083

`A000040(∑[A101264(n)]+1)`
-/

namespace A060308.P5061657958477399083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A060308.P5061657958477399083

namespace A060308

/-- `A000040(∑[A101264(n)]+1)` -/
def P5061657958477399083.Spec : Prop :=
  ∀ n, P5061657958477399083.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P12535505974522571373

`A008578(∑[A101264(n)]+2)`
-/

namespace A060308.P12535505974522571373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A060308.P12535505974522571373

namespace A060308

/-- `A008578(∑[A101264(n)]+2)` -/
def P12535505974522571373.Spec : Prop :=
  ∀ n, P12535505974522571373.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P12946993190420527001

`A008578(A099802(n+1)+1)`
-/

namespace A060308.P12946993190420527001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099802 (n + 1) + 1).toNat

end

end A060308.P12946993190420527001

namespace A060308

/-- `A008578(A099802(n+1)+1)` -/
def P12946993190420527001.Spec : Prop :=
  ∀ n, P12946993190420527001.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P14851267968269963148

`A000040(A000720(2*(n+1)))`
-/

namespace A060308.P14851267968269963148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * (n + 1))).toNat

end

end A060308.P14851267968269963148

namespace A060308

/-- `A000040(A000720(2*(n+1)))` -/
def P14851267968269963148.Spec : Prop :=
  ∀ n, P14851267968269963148.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P1945562010275212205

`A000040(∑[A323152(2*n+1)])`
-/

namespace A060308.P1945562010275212205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060308.P1945562010275212205

namespace A060308

/-- `A000040(∑[A323152(2*n+1)])` -/
def P1945562010275212205.Spec : Prop :=
  ∀ n, P1945562010275212205.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P959236425527995524

`A000040(∑[A340371(2*n+1)])`
-/

namespace A060308.P959236425527995524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060308.P959236425527995524

namespace A060308

/-- `A000040(∑[A340371(2*n+1)])` -/
def P959236425527995524.Spec : Prop :=
  ∀ n, P959236425527995524.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P3505693678897612549

`A008578(A000720(2*(n+1))+1)`
-/

namespace A060308.P3505693678897612549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (2 * (n + 1)) + 1).toNat

end

end A060308.P3505693678897612549

namespace A060308

/-- `A008578(A000720(2*(n+1))+1)` -/
def P3505693678897612549.Spec : Prop :=
  ∀ n, P3505693678897612549.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P3629685093850540981

`A073846(2*A000720(2*(n+1)))`
-/

namespace A060308.P3629685093850540981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A000720 (2 * (n + 1))).toNat

end

end A060308.P3629685093850540981

namespace A060308

/-- `A073846(2*A000720(2*(n+1)))` -/
def P3629685093850540981.Spec : Prop :=
  ∀ n, P3629685093850540981.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P15736745205799953922

`A082500(2*A000720(2*(n+1)))`
-/

namespace A060308.P15736745205799953922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A000720 (2 * (n + 1))).toNat

end

end A060308.P15736745205799953922

namespace A060308

/-- `A082500(2*A000720(2*(n+1)))` -/
def P15736745205799953922.Spec : Prop :=
  ∀ n, P15736745205799953922.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P12308093313593915130

`A207790(2*A000720(2*(n+1)))`
-/

namespace A060308.P12308093313593915130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A000720 (2 * (n + 1))).toNat

end

end A060308.P12308093313593915130

namespace A060308

/-- `A207790(2*A000720(2*(n+1)))` -/
def P12308093313593915130.Spec : Prop :=
  ∀ n, P12308093313593915130.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P11748378650196284688

`A000040(n+1-A210469(n+1))`
-/

namespace A060308.P11748378650196284688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) - A210469 (n + 1)).toNat

end

end A060308.P11748378650196284688

namespace A060308

/-- `A000040(n+1-A210469(n+1))` -/
def P11748378650196284688.Spec : Prop :=
  ∀ n, P11748378650196284688.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P2731716276236716845

`A000040(∑[A010051(2*n+1)]+1)`
-/

namespace A060308.P2731716276236716845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A060308.P2731716276236716845

namespace A060308

/-- `A000040(∑[A010051(2*n+1)]+1)` -/
def P2731716276236716845.Spec : Prop :=
  ∀ n, P2731716276236716845.a n = A060308 (n + 1)

end A060308

/-! ## A060308.P2026583741973179782

`A000040(∑[C(2, A000005(2*n+1))]-1)`
-/

namespace A060308.P2026583741973179782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A060308.P2026583741973179782

namespace A060308

/-- `A000040(∑[C(2, A000005(2*n+1))]-1)` -/
def P2026583741973179782.Spec : Prop :=
  ∀ n, P2026583741973179782.a n = A060308 (n + 1)

end A060308

/-!
# A060309: A001067 appears to count the periodic points for a certain map. If so, then this is the sequence of the numbers of orbits of length n.

The programs for A060309, there is no canonical definition to state claims against.
-/

/-! ## A060309.P11760192156663453205

`floor(∏{p}[A001067(n+1), #]/(n+1))`
-/

namespace A060309.P11760192156663453205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060309.P11760192156663453205

/-! ## A060309.P11772296097701977942

`floor(A000203(A046988(n+1))/(n+1))`
-/

namespace A060309.P11772296097701977942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (A046988 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A060309.P11772296097701977942

/-!
# A060310: a(1)=1, a(2)=3; then append digits of a(n-1)*a(n).

The programs for A060310, there is no canonical definition to state claims against.
-/

/-! ## A060310.P11945369313851955563

`A093096(n)/a(ceil(acot(n))-1)` with `a(0)=1`
-/

namespace A060310.P11945369313851955563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A093096 n : ℚ) / a (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 1).toNat

end

end A060310.P11945369313851955563

/-! ## A060310.P16377594542085863060

`A093096(round(acot(n)+n))-floor(acot(n)²)`
-/

namespace A060310.P16377594542085863060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A060310.P16377594542085863060

/-! ## A060310.P7719375760261813043

`A093096(round(acot(a(n-1)+2)+n))` with `a(0)=1`
-/

namespace A060310.P7719375760261813043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093096 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) + 2 : ℝ) + (n : ℝ))).toNat

end

end A060310.P7719375760261813043

/-! ## A060310.P1164936282535793202

`A093096(abs(1-n)+1)-floor(acot(n)²)`
-/

namespace A060310.P1164936282535793202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (|1 - (n : ℤ)| + 1).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A060310.P1164936282535793202

/-! ## A060310.P18232005722740463844

`A093096(round(1/(a(n-1)+32)+n))` with `a(0)=1`
-/

namespace A060310.P18232005722740463844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093096 (SequenceMachineLib.roundAway (1 / (a (n - 1) + 32 : ℚ) + (n : ℚ))).toNat

end

end A060310.P18232005722740463844

/-! ## A060310.P16839516184543356782

`A093096(A025469(a(n-1))+n)` with `a(0)=1`
-/

namespace A060310.P16839516184543356782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093096 (A025469 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A060310.P16839516184543356782

/-! ## A060310.P3535932606710074761

`A093096(n)-A326684(a(n-1))` with `a(0)=1`
-/

namespace A060310.P3535932606710074761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093096 n - A326684 (a (n - 1)).toNat

end

end A060310.P3535932606710074761

/-! ## A060310.P10149530128570023746

`xor(A025469(a(n-1)), A093096(n))` with `a(0)=1`
-/

namespace A060310.P10149530128570023746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (A025469 (a (n - 1)).toNat) (A093096 n)

end

end A060310.P10149530128570023746

/-! ## A060310.P10294112515953567768

`A093096(A028310(n))-A000038(n)`
-/

namespace A060310.P10294112515953567768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (A028310 n).toNat - A000038 n

end

end A060310.P10294112515953567768

/-! ## A060310.P5957600009823416743

`A093096(A028310(n))^abs(A057428(n))`
-/

namespace A060310.P5957600009823416743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A060310.P5957600009823416743

/-! ## A060310.P676679135965895163

`A093096(A028310(n))^A062157(n)²`
-/

namespace A060310.P676679135965895163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A060310.P676679135965895163

/-! ## A060310.P6027079759286474964

`A093096(A028310(n))-2*A000007(n)`
-/

namespace A060310.P6027079759286474964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (A028310 n).toNat - 2 * A000007 n

end

end A060310.P6027079759286474964

/-! ## A060310.P7583444670957689790

`A093096(A000038(n)+n)-A000038(n)`
-/

namespace A060310.P7583444670957689790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (A000038 n + (n : ℤ)).toNat - A000038 n

end

end A060310.P7583444670957689790

/-! ## A060310.P11246377231182444370

`A093096(A028310(n))^(A000040(n+1)%2)`
-/

namespace A060310.P11246377231182444370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A060310.P11246377231182444370

/-! ## A060310.P10645956574017653895

`A093096(A000038(n)*A093096(n+1)+n)`
-/

namespace A060310.P10645956574017653895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (A000038 n * A093096 (n + 1) + (n : ℤ)).toNat

end

end A060310.P10645956574017653895

/-! ## A060310.P837588527901987824

`A093096(A028310(n))^A001221(A001316(n))`
-/

namespace A060310.P837588527901987824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A060310.P837588527901987824

/-! ## A060310.P931957817643219981

`A093096(A028310(n))^(record[A020639(n+2)]%2)`
-/

namespace A060310.P931957817643219981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A060310.P931957817643219981

/-! ## A060310.P9109084829185237041

`A093096(A028310(n))^A008683(2*A000040(n+1))`
-/

namespace A060310.P9109084829185237041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093096 (A028310 n).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A060310.P9109084829185237041

/-! ## A060310.P149647986099041091

`A093096(A233583(n+1))^((n+2)%(n+1))`
-/

namespace A060310.P149647986099041091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093096 (A233583 (n + 1)).toNat ^ ((n + 2) % (n + 1))

end

end A060310.P149647986099041091

/-! ## A060310.P8921159237492471006

`and(A093096(A028310(n)), A126646(n))`
-/

namespace A060310.P8921159237492471006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093096 (A028310 n).toNat) (A126646 n)

end

end A060310.P8921159237492471006

/-!
# A060311: Expansion of e.g.f. exp((exp(x)-1)^2/2).

The programs for A060311, there is no canonical definition to state claims against.
-/

/-! ## A060311.P12565357218510856007

`A324162(∑[n]+2)`
-/

namespace A060311.P12565357218510856007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060311.P12565357218510856007

/-! ## A060311.P14523493762692201747

`A324162(A133263(n))+A000007(n)`
-/

namespace A060311.P14523493762692201747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A133263 n).toNat + A000007 n

end

end A060311.P14523493762692201747

/-! ## A060311.P13084866354542020561

`A324162(A133263(n))+A145459(A000196(n))`
-/

namespace A060311.P13084866354542020561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A133263 n).toNat + A145459 (A000196 n).toNat

end

end A060311.P13084866354542020561

/-! ## A060311.P15579840113066225625

`A324162(A057944(n))+A324162(A133263(n))`
-/

namespace A060311.P15579840113066225625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A057944 n).toNat + A324162 (A133263 n).toNat

end

end A060311.P15579840113066225625

/-! ## A060311.P13525788842176069851

`A324162(A133263(n))+A035457(A235482(n+1))`
-/

namespace A060311.P13525788842176069851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A133263 n).toNat + A035457 (A235482 (n + 1)).toNat

end

end A060311.P13525788842176069851

/-! ## A060311.P14107235896281409997

`A324162(A133263(n))+A035457(A167293(n+1))`
-/

namespace A060311.P14107235896281409997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324162 (A133263 n).toNat + A035457 (A167293 (n + 1)).toNat

end

end A060311.P14107235896281409997

/-!
# A060312: Number of distinct ways to tile a 2 X n rectangle with dominoes (solutions are identified if they are rotations or reflections of each other).

The programs for A060312, the canonical program `A060312.P18115054716268968437` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060312 has offset 1).

The definition of A060312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060312.P5552971337628032499

`A001224(1-char[1]+n)`
-/

namespace A060312.P5552971337628032499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A060312.P5552971337628032499

namespace A060312

/-- `A001224(1-char[1]+n)` -/
def P5552971337628032499.Spec : Prop :=
  ∀ n, P5552971337628032499.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P7425344105073533038

`A102526(n+1)-char[1]`
-/

namespace A060312.P7425344105073533038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060312.P7425344105073533038

namespace A060312

/-- `A102526(n+1)-char[1]` -/
def P7425344105073533038.Spec : Prop :=
  ∀ n, P7425344105073533038.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P185850764840798922

`A001224(n+1)/(char[1]+1)`
-/

namespace A060312.P185850764840798922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001224 (n + 1) : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A060312.P185850764840798922

namespace A060312

/-- `A001224(n+1)/(char[1]+1)` -/
def P185850764840798922.Spec : Prop :=
  ∀ n, P185850764840798922.a n = (A060312 (n + 1) : ℚ)

end A060312

/-! ## A060312.P8119201191402847249

`A102526(A326178(n))`
-/

namespace A060312.P8119201191402847249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (A326178 n).toNat

end

end A060312.P8119201191402847249

namespace A060312

/-- `A102526(A326178(n))` -/
def P8119201191402847249.Spec : Prop :=
  ∀ n, P8119201191402847249.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P18164596801164891560

`A102526(A184985(n+1))`
-/

namespace A060312.P18164596801164891560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (A184985 (n + 1)).toNat

end

end A060312.P18164596801164891560

namespace A060312

/-- `A102526(A184985(n+1))` -/
def P18164596801164891560.Spec : Prop :=
  ∀ n, P18164596801164891560.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P13675966617189737604

`A159075(n)+A001224(n+1)`
-/

namespace A060312.P13675966617189737604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A001224 (n + 1)

end

end A060312.P13675966617189737604

namespace A060312

/-- `A159075(n)+A001224(n+1)` -/
def P13675966617189737604.Spec : Prop :=
  ∀ n, P13675966617189737604.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P18115054716268968437

`A001224(n+1)-A063524(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060312

/-- `A001224(n+1)-A063524(n)` -/
def P18115054716268968437.Spec : Prop :=
  ∀ n, P18115054716268968437.a n = A060312 (n + 1)

theorem P18115054716268968437.correct : P18115054716268968437.Spec := by
  intro n
  simp only [A060312, Nat.add_sub_cancel]

end A060312

/-! ## A060312.P7754027731927217754

`A068928(n+1)/A141044(n)`
-/

namespace A060312.P7754027731927217754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068928 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A060312.P7754027731927217754

namespace A060312

/-- `A068928(n+1)/A141044(n)` -/
def P7754027731927217754.Spec : Prop :=
  ∀ n, P7754027731927217754.a n = (A060312 (n + 1) : ℚ)

end A060312

/-! ## A060312.P1338404435019935063

`gcd(A001224(n+1), A130779(n))`
-/

namespace A060312.P1338404435019935063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001224 (n + 1)) (A130779 n)

end

end A060312.P1338404435019935063

namespace A060312

/-- `gcd(A001224(n+1), A130779(n))` -/
def P1338404435019935063.Spec : Prop :=
  ∀ n, (P1338404435019935063.a n : ℤ) = A060312 (n + 1)

end A060312

/-! ## A060312.P9511027241293623393

`gcd(A068928(n+1), A169585(n))`
-/

namespace A060312.P9511027241293623393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068928 (n + 1)) (A169585 n)

end

end A060312.P9511027241293623393

namespace A060312

/-- `gcd(A068928(n+1), A169585(n))` -/
def P9511027241293623393.Spec : Prop :=
  ∀ n, (P9511027241293623393.a n : ℤ) = A060312 (n + 1)

end A060312

/-! ## A060312.P11282088641811552278

`A068928(n+1)-A019590(n+1)`
-/

namespace A060312.P11282088641811552278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - A019590 (n + 1)

end

end A060312.P11282088641811552278

namespace A060312

/-- `A068928(n+1)-A019590(n+1)` -/
def P11282088641811552278.Spec : Prop :=
  ∀ n, P11282088641811552278.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P12820921555448015860

`A001224(n+1)-A000007(xor(1, n))`
-/

namespace A060312.P12820921555448015860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A000007 (Nat.xor 1 n)

end

end A060312.P12820921555448015860

namespace A060312

/-- `A001224(n+1)-A000007(xor(1, n))` -/
def P12820921555448015860.Spec : Prop :=
  ∀ n, P12820921555448015860.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P6959770191531240348

`A001224(n+1)+n-A254667(n)`
-/

namespace A060312.P6959770191531240348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) + ((n : ℤ) - A254667 n)

end

end A060312.P6959770191531240348

namespace A060312

/-- `A001224(n+1)+n-A254667(n)` -/
def P6959770191531240348.Spec : Prop :=
  ∀ n, P6959770191531240348.a n = A060312 (n + 1)

theorem P6959770191531240348.correct : P6959770191531240348.Spec := by
  intro n
  simp only [A060312, Nat.add_sub_cancel, A060312.P6959770191531240348.a, A060312.P18115054716268968437.a, A001224, A001224.P15167024131846782578.a, A063524, A063524.P5631347671191003537.a, A254667, A254667.P2531765093314999596.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060312

/-! ## A060312.P12654106744071636759

`A001224(n+1)^(A039649(n+1)%2)`
-/

namespace A060312.P12654106744071636759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001224 (n + 1) : ℚ) ^ (Int.tmod (A039649 (n + 1)) 2 : ℤ)

end

end A060312.P12654106744071636759

namespace A060312

/-- `A001224(n+1)^(A039649(n+1)%2)` -/
def P12654106744071636759.Spec : Prop :=
  ∀ n, P12654106744071636759.a n = (A060312 (n + 1) : ℚ)

end A060312

/-! ## A060312.P7543542299457983965

`A001224(n+1)-A224226(A053182(n+1))`
-/

namespace A060312.P7543542299457983965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A224226 (A053182 (n + 1)).toNat

end

end A060312.P7543542299457983965

namespace A060312

/-- `A001224(n+1)-A224226(A053182(n+1))` -/
def P7543542299457983965.Spec : Prop :=
  ∀ n, P7543542299457983965.a n = A060312 (n + 1)

end A060312

/-! ## A060312.P4000559326133697437

`A102526(A322832(n²+1))`
-/

namespace A060312.P4000559326133697437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (A322832 (n ^ 2 + 1)).toNat

end

end A060312.P4000559326133697437

namespace A060312

/-- `A102526(A322832(n²+1))` -/
def P4000559326133697437.Spec : Prop :=
  ∀ n, P4000559326133697437.a n = A060312 (n + 1)

end A060312

/-!
# A060313: Number of homeomorphically irreducible rooted trees (also known as series-reduced rooted trees, or rooted trees without nodes of degree 2) on n labeled nodes.

The programs for A060313, there is no canonical definition to state claims against.
-/

/-! ## A060313.P11075952787256219339

`(n+1)*A005512(n+1)`
-/

namespace A060313.P11075952787256219339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005512 (n + 1)

end

end A060313.P11075952787256219339

/-! ## A060313.P16922040452270880163

`(n+1)*A331437(∑[n]+n)`
-/

namespace A060313.P16922040452270880163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331437 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A060313.P16922040452270880163

/-! ## A060313.P9773354402724781239

`-(A001478(n+1)*A331437(A000096(n)))`
-/

namespace A060313.P9773354402724781239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001478 (n + 1) * A331437 (A000096 n).toNat)

end

end A060313.P9773354402724781239

/-! ## A060313.P16980513606608187321

`(n+1)*A000034(2*n)*A331437(A000096(n))`
-/

namespace A060313.P16980513606608187321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000034 (2 * n) * A331437 (A000096 n).toNat)

end

end A060313.P16980513606608187321

/-! ## A060313.P4228770874760849582

`(n+1)*A007318(C(n, 2))*A331437(A000096(n))`
-/

namespace A060313.P4228770874760849582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007318 (Nat.choose n 2) * A331437 (A000096 n).toNat)

end

end A060313.P4228770874760849582

/-! ## A060313.P1956199854947135026

`(n+1)*A331437(A000096(n))^A008683(A014963(n+1))²`
-/

namespace A060313.P1956199854947135026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A331437 (A000096 n).toNat : ℚ) ^ (A008683 (A014963 (n + 1)).toNat ^ 2 : ℤ)

end

end A060313.P1956199854947135026

/-!
# A060314: a(n) = n + next number > n beginning with same digit as n.

The programs for A060314, there is no canonical definition to state claims against.
-/

/-! ## A060314.P18065193398585869411

`A060317(n+1)/(n+1)+1+n`
-/

namespace A060314.P18065193398585869411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060317 (n + 1) : ℚ) / (n + 1 : ℚ) + 1 + (n : ℚ)

end

end A060314.P18065193398585869411

/-! ## A060314.P8833554358932226332

`A004086(eq[11, A265525(n)])+n`
-/

namespace A060314.P8833554358932226332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ)

end

end A060314.P8833554358932226332

/-! ## A060314.P2119987743929018891

`A333659(eq[11, A265525(n)])+n`
-/

namespace A060314.P2119987743929018891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ)

end

end A060314.P2119987743929018891

/-! ## A060314.P9191049614371836128

`A317311(A318275(n+1)+A187829(n+1))`
-/

namespace A060314.P9191049614371836128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (A318275 (n + 1) + A187829 (n + 1)).toNat

end

end A060314.P9191049614371836128

/-!
# A060315: a(1)=1; a(n) is the smallest positive integer that cannot be obtained from the integers {0, 1, ..., n-1} using each number at most once and the operators +, -, *, /.

The programs for A060315, there is no canonical definition to state claims against.
-/

/-! ## A060315.P12016893556730820433

`A148725(n)+A095407(A006013(n))`
-/

namespace A060315.P12016893556730820433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148725 n + A095407 (A006013 n).toNat

end

end A060315.P12016893556730820433

/-! ## A060315.P13621801690527664411

`A148726(n)+A095407(A006013(n))`
-/

namespace A060315.P13621801690527664411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148726 n + A095407 (A006013 n).toNat

end

end A060315.P13621801690527664411

/-!
# A060317: a(n) = n * next number greater than n with same first digit as n.

The programs for A060317, there is no canonical definition to state claims against.
-/

/-! ## A060317.P16850178166206161494

`(n+1)*(A060314(n+1)-(n+1))`
-/

namespace A060317.P16850178166206161494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A060314 (n + 1) - (n + 1 : ℤ))

end

end A060317.P16850178166206161494

/-! ## A060317.P14226384301198639989

`10*A347470(A050785(n+1))`
-/

namespace A060317.P14226384301198639989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347470 (A050785 (n + 1)).toNat

end

end A060317.P14226384301198639989

/-! ## A060317.P15785069635616939200

`10*A347470(A239019(n+1))`
-/

namespace A060317.P15785069635616939200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347470 (A239019 (n + 1)).toNat

end

end A060317.P15785069635616939200

/-! ## A060317.P7249629695956863904

`10*A347470(A010785(n+10))`
-/

namespace A060317.P7249629695956863904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347470 (A010785 (n + 10)).toNat

end

end A060317.P7249629695956863904

/-! ## A060317.P12451732393581266218

`10*A347470(lt[A320485(n), 0])`
-/

namespace A060317.P12451732393581266218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347470 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A060317.P12451732393581266218

/-!
# A060318: Exponent of highest power of 3 dividing the n-th odd Catalan number Catalan(2^n - 1).

The programs for A060318, there is no canonical definition to state claims against.
-/

/-! ## A060318.P737616869820055891

`A000989(floor(∑[2^n/3]))`
-/

namespace A060318.P737616869820055891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A060318.P737616869820055891

/-! ## A060318.P9698025894660260673

`dr(A000989(A000975(n)))`
-/

namespace A060318.P9698025894660260673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000989 (A000975 n).toNat)

end

end A060318.P9698025894660260673

/-! ## A060318.P16459432064298773172

`dr(A000989(∑[A001045(n)]))`
-/

namespace A060318.P16459432064298773172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000989 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A060318.P16459432064298773172

/-! ## A060318.P14656214430886166928

`dr(A000989(∑[A128209(n)-1]))`
-/

namespace A060318.P14656214430886166928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000989 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A060318.P14656214430886166928

/-! ## A060318.P998549270762410543

`dr(A000989(∑[A153643(n)-2]))`
-/

namespace A060318.P998549270762410543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000989 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A060318.P998549270762410543

/-!
# A060319: Smallest Fibonacci number with n distinct prime factors.

The programs for A060319, there is no canonical definition to state claims against.
-/

/-! ## A060319.P5451513890265965190

`A000045(A060320(n))`
-/

namespace A060319.P5451513890265965190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A060320 n).toNat

end

end A060319.P5451513890265965190

/-! ## A060319.P665575573469606227

`A212804(A060320(n)+1)`
-/

namespace A060319.P665575573469606227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A060320 n + 1).toNat

end

end A060319.P665575573469606227

/-! ## A060319.P9428743167772322624

`A302126(2*A060320(n))`
-/

namespace A060319.P9428743167772322624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A060320 n).toNat

end

end A060319.P9428743167772322624

/-! ## A060319.P3795340981812696203

`∏{d}[A060320(n), A061446(#)]`
-/

namespace A060319.P3795340981812696203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A061446 d

end

end A060319.P3795340981812696203

/-!
# A060320: Index of smallest Fibonacci number with exactly n distinct prime factors.

The programs for A060320, there is no canonical definition to state claims against.
-/

/-! ## A060320.P2677389561242394063

`A303217(A152947(n+1))-A000038(n)`
-/

namespace A060320.P2677389561242394063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A152947 (n + 1)).toNat - A000038 n

end

end A060320.P2677389561242394063

/-! ## A060320.P6796044041372025883

`A303217(A152947(n+1))^A178334(n)`
-/

namespace A060320.P6796044041372025883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303217 (A152947 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A060320.P6796044041372025883

/-! ## A060320.P17959245404303290508

`gcd(A080953(n), A303217(A152947(n+1)))`
-/

namespace A060320.P17959245404303290508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080953 n) (A303217 (A152947 (n + 1)).toNat)

end

end A060320.P17959245404303290508

/-! ## A060320.P15523188236319443362

`A303217(A152947(n+1))%A000108(n+2)`
-/

namespace A060320.P15523188236319443362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303217 (A152947 (n + 1)).toNat) (A000108 (n + 2))

end

end A060320.P15523188236319443362

/-! ## A060320.P447402614069060007

`A303217(A152947(n+1))+2*A008683(2*(n+1)²)`
-/

namespace A060320.P447402614069060007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A152947 (n + 1)).toNat + 2 * A008683 (2 * (n + 1) ^ 2)

end

end A060320.P447402614069060007

/-!
# A060322: Consider the version of the Collatz or 3x+1 problem where x -> x/2 if x is even, x -> (3x+1)/2 if x is odd. Define the stopping time of x to be the number of steps needed to reach 1. Sequence gives the number of integers x with stopping time n.

The programs for A060322, there is no canonical definition to state claims against.
-/

/-! ## A060322.P1752872895840796901

`A131450(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A060322.P1752872895840796901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A131450 n + a (n - 1)

end

end A060322.P1752872895840796901

/-! ## A060322.P7866751410756046863

`char[n^6]+∑[A131450(A028310(n))]`
-/

namespace A060322.P7866751410756046863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131450 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A060322.P7866751410756046863

/-! ## A060322.P754722026007929092

`abs(A131450(n)+a(A023443(n)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A060322.P754722026007929092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  |A131450 n + a (A023443 n).toNat|

end

end A060322.P754722026007929092

/-! ## A060322.P8128491520649472740

`A028310(∑[A131450(A028310(n))])`
-/

namespace A060322.P8128491520649472740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131450 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060322.P8128491520649472740

/-!
# A060324: a(n) is the minimal prime q such that n*(q+1)-1 is prime, that is, the smallest prime q so that n = (p+1)/(q+1) with p prime; or a(n) = -1 if no such q exists.

The programs for A060324, there is no canonical definition to state claims against.
-/

/-! ## A060324.P834657288864669661

`(A062251(n+1)+1)/(n+1)-1`
-/

namespace A060324.P834657288864669661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062251 (n + 1) + 1 : ℚ) / (n + 1 : ℚ) - 1

end

end A060324.P834657288864669661

/-! ## A060324.P17639639493640948281

`floor(A062251(n+1)/(n+1))`
-/

namespace A060324.P17639639493640948281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062251 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060324.P17639639493640948281

/-! ## A060324.P5189488356289789604

`(A062251(n+1)-n)/A000027(n+1)`
-/

namespace A060324.P5189488356289789604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062251 (n + 1) - (n : ℤ) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A060324.P5189488356289789604

/-! ## A060324.P13055389663946064912

`A004771(A062251(n+1))%A004771(n)`
-/

namespace A060324.P13055389663946064912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 (A062251 (n + 1)).toNat) (A004771 n)

end

end A060324.P13055389663946064912

/-! ## A060324.P13284157741438463408

`A016897(A062251(n+1))%A016897(n)`
-/

namespace A060324.P13284157741438463408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016897 (A062251 (n + 1)).toNat) (A016897 n)

end

end A060324.P13284157741438463408

/-! ## A060324.P16065928174741070292

`A016969(A062251(n+1))%A016969(n)`
-/

namespace A060324.P16065928174741070292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 (A062251 (n + 1)).toNat) (A016969 n)

end

end A060324.P16065928174741070292

/-! ## A060324.P866718562581892137

`A017377(A062251(n+1))%A017377(n)`
-/

namespace A060324.P866718562581892137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 (A062251 (n + 1)).toNat) (A017377 n)

end

end A060324.P866718562581892137

/-! ## A060324.P7176857991105170363

`A017509(A062251(n+1))%A017509(n)`
-/

namespace A060324.P7176857991105170363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017509 (A062251 (n + 1)).toNat) (A017509 n)

end

end A060324.P7176857991105170363

/-! ## A060324.P6901463745625537043

`A125169(A062251(n+1))%A125169(n)`
-/

namespace A060324.P6901463745625537043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 (A062251 (n + 1)).toNat) (A125169 n)

end

end A060324.P6901463745625537043

/-!
# A060325: a(n) = n-th prime prime(n) subtracted from sum of all composites between prime(n) and prime(n-1).

The programs for A060325, the canonical program `A060325.P9919999057588717172` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060325 has offset 2).

The definition of A060325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060325.P9919999057588717172

`A054265(n+1)-A065091(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060325

/-- `A054265(n+1)-A065091(n+1)` -/
def P9919999057588717172.Spec : Prop :=
  ∀ n, P9919999057588717172.a n = A060325 (n + 2)

theorem P9919999057588717172.correct : P9919999057588717172.Spec := by
  intro n
  simp only [A060325, Nat.add_sub_cancel]

end A060325

/-! ## A060325.P9070985167113325275

`A054265(n+1)-A000040(n+2)`
-/

namespace A060325.P9070985167113325275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A000040 (n + 2)

end

end A060325.P9070985167113325275

namespace A060325

/-- `A054265(n+1)-A000040(n+2)` -/
def P9070985167113325275.Spec : Prop :=
  ∀ n, P9070985167113325275.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P15974571664344890025

`Δ[A079725(n+1)]-A000040(n+2)`
-/

namespace A060325.P15974571664344890025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 2)

end

end A060325.P15974571664344890025

namespace A060325

/-- `Δ[A079725(n+1)]-A000040(n+2)` -/
def P15974571664344890025.Spec : Prop :=
  ∀ n, P15974571664344890025.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P5571156416557209895

`A138383(n+1)-2*A000040(n+2)`
-/

namespace A060325.P5571156416557209895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1) - 2 * A000040 (n + 2)

end

end A060325.P5571156416557209895

namespace A060325

/-- `A138383(n+1)-2*A000040(n+2)` -/
def P5571156416557209895.Spec : Prop :=
  ∀ n, P5571156416557209895.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P5354066286432727511

`A054265(n+1)+A054265(n+1)-A138383(n+1)`
-/

namespace A060325.P5354066286432727511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) + (A054265 (n + 1) - A138383 (n + 1))

end

end A060325.P5354066286432727511

namespace A060325

/-- `A054265(n+1)+A054265(n+1)-A138383(n+1)` -/
def P5354066286432727511.Spec : Prop :=
  ∀ n, P5354066286432727511.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P5325807811849168245

`A062046(n+1)+A062047(n+1)-A000040(n+2)`
-/

namespace A060325.P5325807811849168245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062046 (n + 1) + (A062047 (n + 1) - A000040 (n + 2))

end

end A060325.P5325807811849168245

namespace A060325

/-- `A062046(n+1)+A062047(n+1)-A000040(n+2)` -/
def P5325807811849168245.Spec : Prop :=
  ∀ n, P5325807811849168245.a n = A060325 (n + 2)

theorem P5325807811849168245.correct : P5325807811849168245.Spec := by
  intro n
  simp only [A060325, Nat.add_sub_cancel, A060325.P5325807811849168245.a, A060325.P9919999057588717172.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P1087078146854492395.a, A062046, A062046.P5666097150901793030.a, A062047, A062047.P9752423036722782838.a, A065091, A065091.P6971844946592549357.a, A162735, A162735.P15250219322694002563.a, A162800, A162800.P4495527545912003925.a, A371201, A371201.P4499511649538821653.a, A001057, A001057.P5698194758103254717.a, A054541, A054541.P347795157194570387.a, A138383, A138383.P12057680443366448035.f1, A138383.P12057680443366448035.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A011974, A011974.P2665693327137284562.a, A034953, A034953.P12568728140146877898.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060325

/-! ## A060325.P10083005654536372048

`A054265(n+1)+A162153(n+1)-A054265(n+2)`
-/

namespace A060325.P10083005654536372048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) + (A162153 (n + 1) - A054265 (n + 2))

end

end A060325.P10083005654536372048

namespace A060325

/-- `A054265(n+1)+A162153(n+1)-A054265(n+2)` -/
def P10083005654536372048.Spec : Prop :=
  ∀ n, P10083005654536372048.a n = A060325 (n + 2)

theorem P10083005654536372048.correct : P10083005654536372048.Spec := by
  intro n
  simp only [A060325, Nat.add_sub_cancel, A060325.P10083005654536372048.a, A060325.P9919999057588717172.a, A054265, A054265.P1087078146854492395.a, A065091, A065091.P6971844946592549357.a, A162153, A162153.P5732949919012923603.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A371201, A371201.P4499511649538821653.a, A054541, A054541.P347795157194570387.a, A138383, A138383.P12057680443366448035.f1, A138383.P12057680443366448035.a, A034953, A034953.P12568728140146877898.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060325

/-! ## A060325.P8102409606270335617

`A371201(n+1)-(A000040(n+1)+A000040(n+2))`
-/

namespace A060325.P8102409606270335617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 1) - (A000040 (n + 1) + A000040 (n + 2))

end

end A060325.P8102409606270335617

namespace A060325

/-- `A371201(n+1)-(A000040(n+1)+A000040(n+2))` -/
def P8102409606270335617.Spec : Prop :=
  ∀ n, P8102409606270335617.a n = A060325 (n + 2)

theorem P8102409606270335617.correct : P8102409606270335617.Spec := by
  intro n
  simp only [A060325, Nat.add_sub_cancel, A060325.P8102409606270335617.a, A060325.P9919999057588717172.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A054265, A054265.P1087078146854492395.a, A065091, A065091.P6971844946592549357.a, A371201, A371201.P4499511649538821653.a, A054541, A054541.P347795157194570387.a, A138383, A138383.P12057680443366448035.f1, A138383.P12057680443366448035.a, A034953, A034953.P12568728140146877898.a, A046930, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, A000217, A000217.P10269402890581615239.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060325

/-! ## A060325.P5147937517850914549

`A008837(n+2)-(A034953(n+1)+A000040(n+2))`
-/

namespace A060325.P5147937517850914549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 2) - (A034953 (n + 1) + A000040 (n + 2))

end

end A060325.P5147937517850914549

namespace A060325

/-- `A008837(n+2)-(A034953(n+1)+A000040(n+2))` -/
def P5147937517850914549.Spec : Prop :=
  ∀ n, P5147937517850914549.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P17884159475461129028

`A045717(n+2)-(A045717(n+1)+A000040(n+2))`
-/

namespace A060325.P17884159475461129028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 2) - (A045717 (n + 1) + A000040 (n + 2))

end

end A060325.P17884159475461129028

namespace A060325

/-- `A045717(n+2)-(A045717(n+1)+A000040(n+2))` -/
def P17884159475461129028.Spec : Prop :=
  ∀ n, P17884159475461129028.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P16167786004146379528

`A036689(n+2)-(A034953(n+1)+A034953(n+2))`
-/

namespace A060325.P16167786004146379528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 2) - (A034953 (n + 1) + A034953 (n + 2))

end

end A060325.P16167786004146379528

namespace A060325

/-- `A036689(n+2)-(A034953(n+1)+A034953(n+2))` -/
def P16167786004146379528.Spec : Prop :=
  ∀ n, P16167786004146379528.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P10976076015467611571

`A079725(n+2)-(A079725(n+1)+A000040(n+2))`
-/

namespace A060325.P10976076015467611571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 2) - (A079725 (n + 1) + A000040 (n + 2))

end

end A060325.P10976076015467611571

namespace A060325

/-- `A079725(n+2)-(A079725(n+1)+A000040(n+2))` -/
def P10976076015467611571.Spec : Prop :=
  ∀ n, P10976076015467611571.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P76370388932528713

`A000040(n+2)*A067076(n+1)-A034953(n+1)`
-/

namespace A060325.P76370388932528713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A067076 (n + 1) - A034953 (n + 1)

end

end A060325.P76370388932528713

namespace A060325

/-- `A000040(n+2)*A067076(n+1)-A034953(n+1)` -/
def P76370388932528713.Spec : Prop :=
  ∀ n, P76370388932528713.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P10292335548046170334

`A054265(n+1)-A063934(2*(n+1))`
-/

namespace A060325.P10292335548046170334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A063934 (2 * (n + 1))

end

end A060325.P10292335548046170334

namespace A060325

/-- `A054265(n+1)-A063934(2*(n+1))` -/
def P10292335548046170334.Spec : Prop :=
  ∀ n, P10292335548046170334.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P5571777977546756964

`Δ[A051352(A000040(n+1))]`
-/

namespace A060325.P5571777977546756964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060325.P5571777977546756964

namespace A060325

/-- `Δ[A051352(A000040(n+1))]` -/
def P5571777977546756964.Spec : Prop :=
  ∀ n, P5571777977546756964.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P4150332418832707801

`Δ[A051352(p?[A051377(n+1)])]`
-/

namespace A060325.P4150332418832707801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060325.P4150332418832707801

namespace A060325

/-- `Δ[A051352(p?[A051377(n+1)])]` -/
def P4150332418832707801.Spec : Prop :=
  ∀ n, P4150332418832707801.a n = A060325 (n + 2)

end A060325

/-! ## A060325.P2092000750083574982

`A174520(n+1)-A371201(n+2)`
-/

namespace A060325.P2092000750083574982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174520 (n + 1) - A371201 (n + 2)

end

end A060325.P2092000750083574982

namespace A060325

/-- `A174520(n+1)-A371201(n+2)` -/
def P2092000750083574982.Spec : Prop :=
  ∀ n, P2092000750083574982.a n = A060325 (n + 2)

end A060325

/-!
# A060326: Numbers m such that 2*m - sigma(m) is a divisor of m and greater than one, where sigma = A000203 is the sum of divisors.

The programs for A060326, there is no canonical definition to state claims against.
-/

/-! ## A060326.P215122625732910329

`filter[A271816(n+1), A202238(#)]`
-/

namespace A060326.P215122625732910329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A060326.P215122625732910329

/-! ## A060326.P3400949116212391504

`filter[A271816(n+1), A323170(#)]`
-/

namespace A060326.P3400949116212391504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A060326.P3400949116212391504

/-! ## A060326.P9093758939771896394

`filter[A271816(n+1), A347523(#)]`
-/

namespace A060326.P9093758939771896394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A060326.P9093758939771896394

/-! ## A060326.P2746243800316540194

`filter[A271816(n+1), A389911(#)]`
-/

namespace A060326.P2746243800316540194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389911 (f1 j).toNat = 1) n)

end

end A060326.P2746243800316540194

/-! ## A060326.P14105037346315999638

`filter[A271816(n+1), A143731(#)]`
-/

namespace A060326.P14105037346315999638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A060326.P14105037346315999638

/-!
# A060327: Primes the sum of both two and three consecutive composite numbers.

The programs for A060327, there is no canonical definition to state claims against.
-/

/-! ## A060327.P193231312371847196

`∩[A060254(n+1), A060328(n+1)]`
-/

namespace A060327.P193231312371847196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P193231312371847196

/-! ## A060327.P15048496981038130881

`∩[A060254(n+1), A167610(n+1)]`
-/

namespace A060327.P15048496981038130881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P15048496981038130881

/-! ## A060327.P16710794082550918279

`∩[A060328(n+1), A167915(n+1)]`
-/

namespace A060327.P16710794082550918279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P16710794082550918279

/-! ## A060327.P7249995524303114888

`∩[A060328(n+1), A176902(n+1)]`
-/

namespace A060327.P7249995524303114888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P7249995524303114888

/-! ## A060327.P51146947360699581

`∩[A167610(n+1), A176902(n+1)]`
-/

namespace A060327.P51146947360699581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P51146947360699581

/-! ## A060327.P13002067804467343177

`∩[A060254(n+1), A166039(n+1)]`
-/

namespace A060327.P13002067804467343177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P13002067804467343177

/-! ## A060327.P17678796497717225163

`∩[A166039(n+1), A176902(n+1)]`
-/

namespace A060327.P17678796497717225163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P17678796497717225163

/-! ## A060327.P3933537726574991399

`∩[A060254(n+1), A166037(n+1)+A002808(n+1)]`
-/

namespace A060327.P3933537726574991399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) + A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P3933537726574991399

/-! ## A060327.P8775487892071055893

`∩[A060254(n+1), A007310(A128245(n+1)+2)]`
-/

namespace A060327.P8775487892071055893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A128245 (n + 1) + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P8775487892071055893

/-! ## A060327.P6129016256096862917

`∩[A060328(n+1), A166037(n+1)]`
-/

namespace A060327.P6129016256096862917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P6129016256096862917

/-! ## A060327.P6880011003235478880

`p?[∩[A166037(n+1), A166039(n+2)]]`
-/

namespace A060327.P6880011003235478880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060327.P6880011003235478880

/-! ## A060327.P9422552953589631672

`∩[A060328(n+1), A176462(n+1)]`
-/

namespace A060327.P9422552953589631672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P9422552953589631672

/-! ## A060327.P10782322776593730151

`∩[A167610(n+1), A176462(n+1)]`
-/

namespace A060327.P10782322776593730151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P10782322776593730151

/-!
# A060328: Primes which are the sum of three consecutive composite numbers.

The programs for A060328, there is no canonical definition to state claims against.
-/

/-! ## A060328.P1743588355171179082

`A167610(n+3)`
-/

namespace A060328.P1743588355171179082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167610 (n + 3)

end

end A060328.P1743588355171179082

/-! ## A060328.P12905914142104975023

`p?[A166039(n+3)]`
-/

namespace A060328.P12905914142104975023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060328.P12905914142104975023

/-! ## A060328.P13541957407746015031

`record[A006530(A166039(n+4))]`
-/

namespace A060328.P13541957407746015031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A166039 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060328.P13541957407746015031

/-! ## A060328.P979718446344553876

`filter[A166039(n+3), A010051(#)]`
-/

namespace A060328.P979718446344553876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A060328.P979718446344553876

/-! ## A060328.P16852783949689733504

`filter[A166039(n+3), A323153(#)]`
-/

namespace A060328.P16852783949689733504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A060328.P16852783949689733504

/-! ## A060328.P14060999420752591521

`p?[A053767(n+3)-A053767(n)]`
-/

namespace A060328.P14060999420752591521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 3) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060328.P14060999420752591521

/-! ## A060328.P17202520673697966591

`∩[A071621(n+1), A166039(n+1)]`
-/

namespace A060328.P17202520673697966591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060328.P17202520673697966591

/-! ## A060328.P15274582147316530953

`∩[A166039(n+1), A181901(n+1)]`
-/

namespace A060328.P15274582147316530953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060328.P15274582147316530953

/-! ## A060328.P13711576324498263348

`∩[A166039(n+1), A387959(n+1)]`
-/

namespace A060328.P13711576324498263348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060328.P13711576324498263348

/-! ## A060328.P5125561653149244915

`p?[A166037(n+4)+A018252(n+2)]`
-/

namespace A060328.P5125561653149244915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 4) + A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060328.P5125561653149244915

/-! ## A060328.P350865980895738111

`A306289(A128245(n+1)+1)`
-/

namespace A060328.P350865980895738111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (A128245 (n + 1) + 1).toNat

end

end A060328.P350865980895738111

/-! ## A060328.P15621265804610549848

`A007310(A128245(n+1)+2)`
-/

namespace A060328.P15621265804610549848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A128245 (n + 1) + 2).toNat

end

end A060328.P15621265804610549848

/-! ## A060328.P10060710219629028781

`p?[A066560(n+1)+A066560(n+3)]`
-/

namespace A060328.P10060710219629028781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (n + 1) + A066560 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060328.P10060710219629028781

/-! ## A060328.P13811190569170083831

`p?[A101203(n+5)-A101203(n+1)]`
-/

namespace A060328.P13811190569170083831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060328.P13811190569170083831

/-! ## A060328.P6282038081832553622

`filter[A166039(n+3), A080339(#)]`
-/

namespace A060328.P6282038081832553622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A060328.P6282038081832553622

/-! ## A060328.P1127975202221813653

`filter[A166039(n+3), A080545(#)]`
-/

namespace A060328.P1127975202221813653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A060328.P1127975202221813653

/-! ## A060328.P6373048928974316070

`filter[A166039(n+3), A171387(#)]`
-/

namespace A060328.P6373048928974316070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A060328.P6373048928974316070

/-! ## A060328.P532267883364327218

`filter[A166039(n+3), A365605(#)]`
-/

namespace A060328.P532267883364327218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A060328.P532267883364327218

/-!
# A060329: Primes the sum of four consecutive composite numbers.

The programs for A060329, the canonical program `A060329.P5601764562904454066` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060329 has offset 1).

The definition of A060329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060329.P5601764562904454066

`p?[A053767(n+4)-A053767(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060329

/-- `p?[A053767(n+4)-A053767(n)]` -/
def P5601764562904454066.Spec : Prop :=
  ∀ n, P5601764562904454066.a n = A060329 (n + 1)

theorem P5601764562904454066.correct : P5601764562904454066.Spec := by
  intro n
  simp only [A060329, Nat.add_sub_cancel]

end A060329

/-! ## A060329.P8549481889691093251

`p?[A166037(n+7)+A166037(n+9)]`
-/

namespace A060329.P8549481889691093251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 7) + A166037 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P8549481889691093251

namespace A060329

/-- `p?[A166037(n+7)+A166037(n+9)]` -/
def P8549481889691093251.Spec : Prop :=
  ∀ n, P8549481889691093251.a n = A060329 (n + 1)

end A060329

/-! ## A060329.P1786443722309067201

`p?[A051349(n+10)-A051349(n+6)]`
-/

namespace A060329.P1786443722309067201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 10) - A051349 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P1786443722309067201

namespace A060329

/-- `p?[A051349(n+10)-A051349(n+6)]` -/
def P1786443722309067201.Spec : Prop :=
  ∀ n, P1786443722309067201.a n = A060329 (n + 1)

end A060329

/-! ## A060329.P10596648836330077942

`p?[A175967(n+11)-A175967(n+7)]`
-/

namespace A060329.P10596648836330077942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 11) - A175967 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P10596648836330077942

namespace A060329

/-- `p?[A175967(n+11)-A175967(n+7)]` -/
def P10596648836330077942.Spec : Prop :=
  ∀ n, P10596648836330077942.a n = A060329 (n + 1)

end A060329

/-! ## A060329.P15958950129303360788

`p?[A053767(n+10)%A053767(n+6)]`
-/

namespace A060329.P15958950129303360788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 (n + 10)) (A053767 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060329.P15958950129303360788

namespace A060329

/-- `p?[A053767(n+10)%A053767(n+6)]` -/
def P15958950129303360788.Spec : Prop :=
  ∀ n, P15958950129303360788.a n = A060329 (n + 1)

end A060329

/-!
# A060330: Primes that are the sum of five consecutive composite numbers.

The programs for A060330, the canonical program `A060330.P16314601193088272172` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060330 has offset 1).

The definition of A060330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060330.P16314601193088272172

`p?[A051349(n+5)-A051349(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060330

/-- `p?[A051349(n+5)-A051349(n)]` -/
def P16314601193088272172.Spec : Prop :=
  ∀ n, P16314601193088272172.a n = A060330 (n + 1)

theorem P16314601193088272172.correct : P16314601193088272172.Spec := by
  intro n
  simp only [A060330, Nat.add_sub_cancel]

end A060330

/-! ## A060330.P6764338576850710530

`p?[A053767(n+5)-A053767(n)]`
-/

namespace A060330.P6764338576850710530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 5) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060330.P6764338576850710530

namespace A060330

/-- `p?[A053767(n+5)-A053767(n)]` -/
def P6764338576850710530.Spec : Prop :=
  ∀ n, P6764338576850710530.a n = A060330 (n + 1)

end A060330

/-! ## A060330.P8688036253300636733

`p?[A166039(n+4)+A166037(n+2)]`
-/

namespace A060330.P8688036253300636733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 4) + A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060330.P8688036253300636733

namespace A060330

/-- `p?[A166039(n+4)+A166037(n+2)]` -/
def P8688036253300636733.Spec : Prop :=
  ∀ n, P8688036253300636733.a n = A060330 (n + 1)

end A060330

/-! ## A060330.P17452383046557054321

`p?[A175967(n+6)-A175967(n+1)]`
-/

namespace A060330.P17452383046557054321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 6) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060330.P17452383046557054321

namespace A060330

/-- `p?[A175967(n+6)-A175967(n+1)]` -/
def P17452383046557054321.Spec : Prop :=
  ∀ n, P17452383046557054321.a n = A060330 (n + 1)

theorem P17452383046557054321.correct : P17452383046557054321.Spec := by
  intro n
  simp only [A060330, Nat.add_sub_cancel, A060330.P17452383046557054321.f1, A060330.P17452383046557054321.a, A060330.P16314601193088272172.f1, A060330.P16314601193088272172.a, A051349, A051349.P2414547720400107792.a, A175967, A175967.P17254181130027743458.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060330

/-! ## A060330.P9477198291181641201

`record[A006530(A053767(n+5)-A053767(n))]`
-/

namespace A060330.P9477198291181641201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053767 (n + 5) - A053767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060330.P9477198291181641201

namespace A060330

/-- `record[A006530(A053767(n+5)-A053767(n))]` -/
def P9477198291181641201.Spec : Prop :=
  ∀ n, P9477198291181641201.a n = A060330 (n + 1)

end A060330

/-!
# A060331: Primes the sum of six consecutive composite numbers.

The programs for A060331, the canonical program `A060331.P1042131893594704924` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060331 has offset 1).

The definition of A060331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060331.P1042131893594704924

`p?[A051349(n+6)-A051349(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060331

/-- `p?[A051349(n+6)-A051349(n)]` -/
def P1042131893594704924.Spec : Prop :=
  ∀ n, P1042131893594704924.a n = A060331 (n + 1)

theorem P1042131893594704924.correct : P1042131893594704924.Spec := by
  intro n
  simp only [A060331, Nat.add_sub_cancel]

end A060331

/-! ## A060331.P6916194620816625141

`p?[A053767(n+6)-A053767(n)]`
-/

namespace A060331.P6916194620816625141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 6) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060331.P6916194620816625141

namespace A060331

/-- `p?[A053767(n+6)-A053767(n)]` -/
def P6916194620816625141.Spec : Prop :=
  ∀ n, P6916194620816625141.a n = A060331 (n + 1)

end A060331

/-! ## A060331.P16563543156026540267

`p?[A166039(n+1)+A166039(n+4)]`
-/

namespace A060331.P16563543156026540267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) + A166039 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060331.P16563543156026540267

namespace A060331

/-- `p?[A166039(n+1)+A166039(n+4)]` -/
def P16563543156026540267.Spec : Prop :=
  ∀ n, P16563543156026540267.a n = A060331 (n + 1)

end A060331

/-! ## A060331.P15260715866766616923

`p?[A175967(n+7)-A175967(n+1)]`
-/

namespace A060331.P15260715866766616923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 7) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060331.P15260715866766616923

namespace A060331

/-- `p?[A175967(n+7)-A175967(n+1)]` -/
def P15260715866766616923.Spec : Prop :=
  ∀ n, P15260715866766616923.a n = A060331 (n + 1)

theorem P15260715866766616923.correct : P15260715866766616923.Spec := by
  intro n
  simp only [A060331, Nat.add_sub_cancel, A060331.P15260715866766616923.f1, A060331.P15260715866766616923.a, A060331.P1042131893594704924.f1, A060331.P1042131893594704924.a, A051349, A051349.P2414547720400107792.a, A175967, A175967.P17254181130027743458.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060331

/-! ## A060331.P5975819135155318852

`record[A006530(A053767(n+7)-A053767(n+1))]`
-/

namespace A060331.P5975819135155318852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053767 (n + 7) - A053767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060331.P5975819135155318852

namespace A060331

/-- `record[A006530(A053767(n+7)-A053767(n+1))]` -/
def P5975819135155318852.Spec : Prop :=
  ∀ n, P5975819135155318852.a n = A060331 (n + 1)

end A060331

/-!
# A060332: Primes the sum of seven consecutive composite numbers.

The programs for A060332, the canonical program `A060332.P4845676544807101824` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060332 has offset 1).

The definition of A060332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060332.P4845676544807101824

`p?[A051349(n+7)-A051349(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060332

/-- `p?[A051349(n+7)-A051349(n)]` -/
def P4845676544807101824.Spec : Prop :=
  ∀ n, P4845676544807101824.a n = A060332 (n + 1)

theorem P4845676544807101824.correct : P4845676544807101824.Spec := by
  intro n
  simp only [A060332, Nat.add_sub_cancel]

end A060332

/-! ## A060332.P4487624102819811762

`p?[A053767(n+7)-A053767(n)]`
-/

namespace A060332.P4487624102819811762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 7) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060332.P4487624102819811762

namespace A060332

/-- `p?[A053767(n+7)-A053767(n)]` -/
def P4487624102819811762.Spec : Prop :=
  ∀ n, P4487624102819811762.a n = A060332 (n + 1)

end A060332

/-! ## A060332.P15075676050598196684

`p?[A175967(n+8)-A175967(n+1)]`
-/

namespace A060332.P15075676050598196684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 8) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060332.P15075676050598196684

namespace A060332

/-- `p?[A175967(n+8)-A175967(n+1)]` -/
def P15075676050598196684.Spec : Prop :=
  ∀ n, P15075676050598196684.a n = A060332 (n + 1)

theorem P15075676050598196684.correct : P15075676050598196684.Spec := by
  intro n
  simp only [A060332, Nat.add_sub_cancel, A060332.P15075676050598196684.f1, A060332.P15075676050598196684.a, A060332.P4845676544807101824.f1, A060332.P4845676544807101824.a, A051349, A051349.P2414547720400107792.a, A175967, A175967.P17254181130027743458.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060332

/-! ## A060332.P14413736855711310075

`∩[A000040(n+1), A051349(n+7)-A051349(n)]`
-/

namespace A060332.P14413736855711310075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 7) - A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060332.P14413736855711310075

namespace A060332

/-- `∩[A000040(n+1), A051349(n+7)-A051349(n)]` -/
def P14413736855711310075.Spec : Prop :=
  ∀ n, (P14413736855711310075.a n : ℤ) = A060332 (n + 1)

end A060332

/-! ## A060332.P4956500976940418838

`∩[A000040(n+1), A053767(n+7)-A053767(n)]`
-/

namespace A060332.P4956500976940418838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 7) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060332.P4956500976940418838

namespace A060332

/-- `∩[A000040(n+1), A053767(n+7)-A053767(n)]` -/
def P4956500976940418838.Spec : Prop :=
  ∀ n, (P4956500976940418838.a n : ℤ) = A060332 (n + 1)

end A060332

/-!
# A060333: Primes which are the sum of eight consecutive composite numbers.

The programs for A060333, the canonical program `A060333.P11127970401652711580` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060333 has offset 1).

The definition of A060333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060333.P11127970401652711580

`p?[A051349(n+8)-A051349(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060333

/-- `p?[A051349(n+8)-A051349(n)]` -/
def P11127970401652711580.Spec : Prop :=
  ∀ n, P11127970401652711580.a n = A060333 (n + 1)

theorem P11127970401652711580.correct : P11127970401652711580.Spec := by
  intro n
  simp only [A060333, Nat.add_sub_cancel]

end A060333

/-! ## A060333.P4973042534591621273

`p?[A053767(n+8)-A053767(n)]`
-/

namespace A060333.P4973042534591621273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 8) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060333.P4973042534591621273

namespace A060333

/-- `p?[A053767(n+8)-A053767(n)]` -/
def P4973042534591621273.Spec : Prop :=
  ∀ n, P4973042534591621273.a n = A060333 (n + 1)

end A060333

/-! ## A060333.P16654294427412358332

`p?[A175967(n+9)-A175967(n+1)]`
-/

namespace A060333.P16654294427412358332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 9) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060333.P16654294427412358332

namespace A060333

/-- `p?[A175967(n+9)-A175967(n+1)]` -/
def P16654294427412358332.Spec : Prop :=
  ∀ n, P16654294427412358332.a n = A060333 (n + 1)

theorem P16654294427412358332.correct : P16654294427412358332.Spec := by
  intro n
  simp only [A060333, Nat.add_sub_cancel, A060333.P16654294427412358332.f1, A060333.P16654294427412358332.a, A060333.P11127970401652711580.f1, A060333.P11127970401652711580.a, A051349, A051349.P2414547720400107792.a, A175967, A175967.P17254181130027743458.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060333

/-! ## A060333.P4515644087212279044

`∩[A000040(n+1), A053767(n+8)-A053767(n)]`
-/

namespace A060333.P4515644087212279044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 8) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060333.P4515644087212279044

namespace A060333

/-- `∩[A000040(n+1), A053767(n+8)-A053767(n)]` -/
def P4515644087212279044.Spec : Prop :=
  ∀ n, (P4515644087212279044.a n : ℤ) = A060333 (n + 1)

end A060333

/-! ## A060333.P15430547496213658225

`∩[A000040(n+5), A051349(n+8)-A051349(n)]`
-/

namespace A060333.P15430547496213658225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 8) - A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060333.P15430547496213658225

namespace A060333

/-- `∩[A000040(n+5), A051349(n+8)-A051349(n)]` -/
def P15430547496213658225.Spec : Prop :=
  ∀ n, (P15430547496213658225.a n : ℤ) = A060333 (n + 1)

end A060333

/-!
# A060334: The sequence A006863 (shifted by one) seems to be counting the periodic points for a map. If so, then this is the sequence of the numbers of orbits of length n.

The programs for A060334, there is no canonical definition to state claims against.
-/

/-! ## A060334.P6588301310857695670

`2*A060171(n+1)`
-/

namespace A060334.P6588301310857695670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060171 (n + 1)

end

end A060334.P6588301310857695670

/-! ## A060334.P6609663159738935752

`A060171(n+1)+A060171(Δ[n²]-n)`
-/

namespace A060334.P6609663159738935752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060171 (n + 1) + A060171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A060334.P6609663159738935752

/-! ## A060334.P4928562843768883055

`A060171(n+1)+A060171(n+1)%A007727(n+4)`
-/

namespace A060334.P4928562843768883055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060171 (n + 1) + Int.tmod (A060171 (n + 1)) (A007727 (n + 4))

end

end A060334.P4928562843768883055

/-! ## A060334.P12503589430462387121

`A060171(n+1)/2^A008683(A000230(n))`
-/

namespace A060334.P12503589430462387121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060171 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A000230 n).toNat : ℤ)

end

end A060334.P12503589430462387121

/-! ## A060334.P15764247311207324244

`A005843(A060171(n+1))`
-/

namespace A060334.P15764247311207324244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A060171 (n + 1)).toNat

end

end A060334.P15764247311207324244

/-!
# A060335: Number of n-node labeled acyclic digraphs with 3 out-points.

The programs for A060335, there is no canonical definition to state claims against.
-/

/-! ## A060335.P702650221477044462

`A058876(∑[n+3]+1)`
-/

namespace A060335.P702650221477044462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060335.P702650221477044462

/-! ## A060335.P14493915019039636919

`record[A058876(gcd(n, A008290(n)))]`
-/

namespace A060335.P14493915019039636919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (Int.gcd (n : ℤ) (A008290 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060335.P14493915019039636919

/-! ## A060335.P14582440870772953879

`record[A010054(n+3)*A058876(n+1)]`
-/

namespace A060335.P14582440870772953879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A058876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060335.P14582440870772953879

/-! ## A060335.P1534912386697065671

`record[A058876(n+1)/A058876(n+4)]`
-/

namespace A060335.P1534912386697065671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058876 (n + 1) : ℚ) / (A058876 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060335.P1534912386697065671

/-! ## A060335.P15427405954618406308

`record[gcd(A058876(n+1), A122078(n+2))]`
-/

namespace A060335.P15427405954618406308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058876 (n + 1)) (A122078 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060335.P15427405954618406308

/-!
# A060336: Number of n X n {-1,0,1} matrices modulo rows permutation (by symmetry this is the same as the number of {-1,0,1} matrices modulo columns permutation), i.e., the number of equivalence classes where two matrices A and B are equivalent if one of them is the result of permuting the rows of the other.

The programs for A060336, the canonical program `A060336.P3812321491665854337` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060336 has offset 1).

The definition of A060336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060336.P3812321491665854337

`C(3^(n+1)+n+1-1, n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060336

/-- `C(3^(n+1)+n+1-1, n+1)` -/
def P3812321491665854337.Spec : Prop :=
  ∀ n, (P3812321491665854337.a n : ℤ) = A060336 (n + 1)

theorem P3812321491665854337.correct : P3812321491665854337.Spec := by
  intro n
  simp only [A060336, Nat.add_sub_cancel]

end A060336

/-! ## A060336.P1632387394490310664

`A163767(3^(n+1))`
-/

namespace A060336.P1632387394490310664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163767 (3 ^ (n + 1))

end

end A060336.P1632387394490310664

namespace A060336

/-- `A163767(3^(n+1))` -/
def P1632387394490310664.Spec : Prop :=
  ∀ n, P1632387394490310664.a n = A060336 (n + 1)

end A060336

/-! ## A060336.P3975946822227496042

`A355703(3^(n+1)+n)`
-/

namespace A060336.P3975946822227496042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355703 (3 ^ (n + 1) + n)

end

end A060336.P3975946822227496042

namespace A060336

/-- `A355703(3^(n+1)+n)` -/
def P3975946822227496042.Spec : Prop :=
  ∀ n, P3975946822227496042.a n = A060336 (n + 1)

end A060336

/-!
# A060337: Number of labeled acyclic digraphs with n nodes containing exactly n-2 points of in-degree zero.

The programs for A060337, the canonical program `A060337.P807181745929901436` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060337 has offset 3).

The definition of A060337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060337.P55272080982108903

`A253145(n+1)*A270222(n+1)`
-/

namespace A060337.P55272080982108903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1) * A270222 (n + 1)

end

end A060337.P55272080982108903

namespace A060337

/-- `A253145(n+1)*A270222(n+1)` -/
def P55272080982108903.Spec : Prop :=
  ∀ n, P55272080982108903.a n = A060337 (n + 3)

end A060337

/-! ## A060337.P807181745929901436

`A000217(n+2)*A270222(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060337

/-- `A000217(n+2)*A270222(n+1)` -/
def P807181745929901436.Spec : Prop :=
  ∀ n, P807181745929901436.a n = A060337 (n + 3)

theorem P807181745929901436.correct : P807181745929901436.Spec := by
  intro n
  simp only [A060337, Nat.add_sub_cancel]

end A060337

/-! ## A060337.P17323040254579159113

`A052955(2*n+3)*A052955(2*n)*A000217(n+2)`
-/

namespace A060337.P17323040254579159113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 3) * A052955 (2 * n) * A000217 (n + 2)

end

end A060337.P17323040254579159113

namespace A060337

/-- `A052955(2*n+3)*A052955(2*n)*A000217(n+2)` -/
def P17323040254579159113.Spec : Prop :=
  ∀ n, P17323040254579159113.a n = A060337 (n + 3)

end A060337

/-! ## A060337.P6907386687146478588

`A058876(∑[n+2]+4)`
-/

namespace A060337.P6907386687146478588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A060337.P6907386687146478588

namespace A060337

/-- `A058876(∑[n+2]+4)` -/
def P6907386687146478588.Spec : Prop :=
  ∀ n, P6907386687146478588.a n = A060337 (n + 3)

end A060337

/-! ## A060337.P11529163002822769799

`or(A000007(n), A058876(A167614(n+1)))`
-/

namespace A060337.P11529163002822769799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A058876 (A167614 (n + 1)).toNat)

end

end A060337.P11529163002822769799

namespace A060337

/-- `or(A000007(n), A058876(A167614(n+1)))` -/
def P11529163002822769799.Spec : Prop :=
  ∀ n, P11529163002822769799.a n = A060337 (n + 3)

end A060337

/-!
# A060338: Triangle T(n,k) of coefficients of Meixner polynomials of degree n, k=0..n.

The programs for A060338, there is no canonical definition to state claims against.
-/

/-! ## A060338.P9606477631903695541

`A060524(∑[2*n]%comp[∑[n]])`
-/

namespace A060338.P9606477631903695541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060338.P9606477631903695541

/-! ## A060338.P12473847072133635231

`A060524(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060338.P12473847072133635231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060338.P12473847072133635231

/-! ## A060338.P9257884374810838478

`or(char[1], A060524(A061579(n)))`
-/

namespace A060338.P9257884374810838478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060524 (A061579 n).toNat)

end

end A060338.P9257884374810838478

/-! ## A060338.P8584543920789306308

`gcd(A000038(n), A060524(A061579(n)))`
-/

namespace A060338.P8584543920789306308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060524 (A061579 n).toNat)

end

end A060338.P8584543920789306308

/-! ## A060338.P3916028321105638074

`A007318(gcd(n, n+1))*A060524(A061579(n))`
-/

namespace A060338.P3916028321105638074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A060524 (A061579 n).toNat

end

end A060338.P3916028321105638074

/-! ## A060338.P1008925202336102976

`A007318(A014963(2*(n+1)))*A060524(A061579(n))`
-/

namespace A060338.P1008925202336102976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A060524 (A061579 n).toNat

end

end A060338.P1008925202336102976

/-! ## A060338.P7160394940055346897

`A060524(A061579(n))%A022112(n)`
-/

namespace A060338.P7160394940055346897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060524 (A061579 n).toNat) (A022112 n)

end

end A060338.P7160394940055346897

/-!
# A060339: Primes that are each the sum of two, three, and four consecutive composite numbers.

The programs for A060339, there is no canonical definition to state claims against.
-/

/-! ## A060339.P10303319849220550732

`∩[A060327(n+1), A060329(n+1)]`
-/

namespace A060339.P10303319849220550732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060339.P10303319849220550732

/-!
# A060341: Non-adding primes: next term is smallest prime not the sum of any primes so far.

The programs for A060341, there is no canonical definition to state claims against.
-/

/-! ## A060341.P8194451293524619518

`record[p?[A193738(A192110(n+1))]]`
-/

namespace A060341.P8194451293524619518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A192110 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060341.P8194451293524619518

/-! ## A060341.P15669446149349280090

`record[p?[A195663(A289873(n+2))]]`
-/

namespace A060341.P15669446149349280090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (A289873 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060341.P15669446149349280090

/-! ## A060341.P5369347259559532213

`eq[A007318(A239931(n+2)), A239938(n+1)]`
-/

namespace A060341.P5369347259559532213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A239931 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060341.P5369347259559532213

/-!
# A060343: Smallest prime which is the sum of n composite numbers.

The programs for A060343, the canonical program `A060343.P12469655398525747036` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060343 has offset 2).

The definition of A060343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060343.P3853661037929303582

`A118753(n+3)`
-/

namespace A060343.P3853661037929303582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (n + 3)

end

end A060343.P3853661037929303582

namespace A060343

/-- `A118753(n+3)` -/
def P3853661037929303582.Spec : Prop :=
  ∀ n, P3853661037929303582.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P12469655398525747036

`A151800(4*(n+3))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060343

/-- `A151800(4*(n+3))` -/
def P12469655398525747036.Spec : Prop :=
  ∀ n, P12469655398525747036.a n = A060343 (n + 2)

theorem P12469655398525747036.correct : P12469655398525747036.Spec := by
  intro n
  simp only [A060343, Nat.add_sub_cancel]

end A060343

/-! ## A060343.P13961844506537290852

`A060264(2*(n+3))`
-/

namespace A060343.P13961844506537290852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * (n + 3))

end

end A060343.P13961844506537290852

namespace A060343

/-- `A060264(2*(n+3))` -/
def P13961844506537290852.Spec : Prop :=
  ∀ n, P13961844506537290852.a n = A060343 (n + 2)

theorem P13961844506537290852.correct : P13961844506537290852.Spec := by
  intro n
  simp only [A060343, Nat.add_sub_cancel, A060343.P13961844506537290852.a, A060343.P12469655398525747036.a, A060264, A060264.P4854329161308632623.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060343

/-! ## A060343.P12118704458056946067

`p?[A060264(n+6+n)]`
-/

namespace A060343.P12118704458056946067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 6 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060343.P12118704458056946067

namespace A060343

/-- `p?[A060264(n+6+n)]` -/
def P12118704458056946067.Spec : Prop :=
  ∀ n, P12118704458056946067.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P7344216362194013841

`A007918(4*(n+3))`
-/

namespace A060343.P7344216362194013841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (4 * (n + 3))

end

end A060343.P7344216362194013841

namespace A060343

/-- `A007918(4*(n+3))` -/
def P7344216362194013841.Spec : Prop :=
  ∀ n, P7344216362194013841.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P13841774518616659839

`A066169(4*(n+3))`
-/

namespace A060343.P13841774518616659839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (4 * (n + 3))

end

end A060343.P13841774518616659839

namespace A060343

/-- `A066169(4*(n+3))` -/
def P13841774518616659839.Spec : Prop :=
  ∀ n, P13841774518616659839.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P8153595428772175331

`A266620(4*(n+3))`
-/

namespace A060343.P8153595428772175331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (4 * (n + 3))

end

end A060343.P8153595428772175331

namespace A060343

/-- `A266620(4*(n+3))` -/
def P8153595428772175331.Spec : Prop :=
  ∀ n, P8153595428772175331.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P7386874037688438577

`A079778(A004766(n+2))`
-/

namespace A060343.P7386874037688438577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079778 (A004766 (n + 2)).toNat

end

end A060343.P7386874037688438577

namespace A060343

/-- `A079778(A004766(n+2))` -/
def P7386874037688438577.Spec : Prop :=
  ∀ n, P7386874037688438577.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P16814684421488937014

`A000040(A036234(4*(n+3)))`
-/

namespace A060343.P16814684421488937014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (4 * (n + 3))).toNat

end

end A060343.P16814684421488937014

namespace A060343

/-- `A000040(A036234(4*(n+3)))` -/
def P16814684421488937014.Spec : Prop :=
  ∀ n, P16814684421488937014.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P17616730578300546698

`filter[A118753(n), A266444(#)]`
-/

namespace A060343.P17616730578300546698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A060343.P17616730578300546698

namespace A060343

/-- `filter[A118753(n), A266444(#)]` -/
def P17616730578300546698.Spec : Prop :=
  ∀ n, P17616730578300546698.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P10334691509751318640

`filter[A060264(2*n), A266444(#)]`
-/

namespace A060343.P10334691509751318640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A060343.P10334691509751318640

namespace A060343

/-- `filter[A060264(2*n), A266444(#)]` -/
def P10334691509751318640.Spec : Prop :=
  ∀ n, P10334691509751318640.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P15108100418686115395

`A308052(8*(n+3))`
-/

namespace A060343.P15108100418686115395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (8 * (n + 3))

end

end A060343.P15108100418686115395

namespace A060343

/-- `A308052(8*(n+3))` -/
def P15108100418686115395.Spec : Prop :=
  ∀ n, P15108100418686115395.a n = A060343 (n + 2)

end A060343

/-! ## A060343.P10815514340677997151

`A159477(4*(n+3))`
-/

namespace A060343.P10815514340677997151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (4 * (n + 3))

end

end A060343.P10815514340677997151

namespace A060343

/-- `A159477(4*(n+3))` -/
def P10815514340677997151.Spec : Prop :=
  ∀ n, P10815514340677997151.a n = A060343 (n + 2)

end A060343

/-!
# A060344: For n >= 2, let N_n denote the set of all unipotent upper-triangular real n X n matrices A such that for every k=1,2,...,n-1 the minor of A with rows 1,2,...,k and columns n-k+1,...,n is nonzero. a(n) is the number of connected components of N_n.

The programs for A060344, there is no canonical definition to state claims against.
-/

/-! ## A060344.P13226706551490331450

`Δ[A060866(Δ[A272268(n+1)])]`
-/

namespace A060344.P13226706551490331450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060344.P13226706551490331450

/-! ## A060344.P5328738009157420669

`Δ[A088580(Δ[A272268(n+1)])]`
-/

namespace A060344.P5328738009157420669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060344.P5328738009157420669

/-!
# A060347: Denominators of sequence arising from study of Calabi-Yau manifolds.

The programs for A060347, there is no canonical definition to state claims against.
-/

/-! ## A060347.P5327863569021211750

`lcm(n+1, 5^A006530((2*n)!))`
-/

namespace A060347.P5327863569021211750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A006530 (Nat.factorial (2 * n)) : ℤ)))

end

end A060347.P5327863569021211750

/-!
# A060348: a(n) = n^n * (n^2 - 1)/24.

The programs for A060348, the canonical program `A060348.P16219828790535863918` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060348 has offset 3).

The definition of A060348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060348.P16219828790535863918

`(n+3)^(n+3)*((n+3)²-1)/24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060348

/-- `(n+3)^(n+3)*((n+3)²-1)/24` -/
def P16219828790535863918.Spec : Prop :=
  ∀ n, P16219828790535863918.a n = (A060348 (n + 3) : ℚ)

end A060348

/-!
# A060350: The sum over all subsets S of [n] of the squares of the number of permutations with descent set = S.

The programs for A060350, there is no canonical definition to state claims against.
-/

/-! ## A060350.P9606470953954857280

`A137782(2*n)/A000984(n)`
-/

namespace A060350.P9606470953954857280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137782 (2 * n) : ℚ) / (A000984 n : ℚ)

end

end A060350.P9606470953954857280

/-! ## A060350.P288161530611506373

`A262372(∑[n+2])`
-/

namespace A060350.P288161530611506373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060350.P288161530611506373

/-! ## A060350.P18438144739002048738

`abs(record[Δ[A262372(n)]])`
-/

namespace A060350.P18438144739002048738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A060350.P18438144739002048738

/-! ## A060350.P325400668245308561

`A362745(∑[abs(1-n)])`
-/

namespace A060350.P325400668245308561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060350.P325400668245308561

/-! ## A060350.P5476751959761575962

`A334622(∑[n+3])`
-/

namespace A060350.P5476751959761575962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060350.P5476751959761575962

/-!
# A060351: If the binary expansion of n has k bits, let S be the subset of [k-1] such that i is in S if the i-th bit of n is a 1 (with the first bit being the least significant bit); a(n) is the number of permutations of [k] with descent set S.

The programs for A060351, there is no canonical definition to state claims against.
-/

/-! ## A060351.P8800057654543018027

`A335845(A209861(n))`
-/

namespace A060351.P8800057654543018027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335845 (A209861 n).toNat

end

end A060351.P8800057654543018027

/-! ## A060351.P17885948407588203706

`A360308(A233279(n))`
-/

namespace A060351.P17885948407588203706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360308 (A233279 n).toNat

end

end A060351.P17885948407588203706

/-! ## A060351.P3576581090676103429

`A360308(A154435(n))`
-/

namespace A060351.P3576581090676103429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360308 (A154435 n).toNat

end

end A060351.P3576581090676103429

/-! ## A060351.P8753957997901508786

`A263848(A123753(abs(1-n)))`
-/

namespace A060351.P8753957997901508786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (A123753 |1 - (n : ℤ)|.toNat).toNat

end

end A060351.P8753957997901508786

/-! ## A060351.P4066418513719772763

`A263848(A123753(n)-A070941(n))`
-/

namespace A060351.P4066418513719772763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (A123753 n - A070941 n).toNat

end

end A060351.P4066418513719772763

/-! ## A060351.P7234538416128398253

`A263848(∑[A070941(n)]-A070941(n))`
-/

namespace A060351.P7234538416128398253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (∑ j ∈ Finset.range (n + 1), f1 j - A070941 n).toNat

end

end A060351.P7234538416128398253

/-! ## A060351.P17213844592216255715

`A263848(A003314(n+1)-A000523(2*n+1))`
-/

namespace A060351.P17213844592216255715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263848 (A003314 (n + 1) - A000523 (2 * n + 1)).toNat

end

end A060351.P17213844592216255715

/-!
# A060352: a(n) = n*3^n - 1.

The programs for A060352, the canonical program `A060352.P6117980345836579755` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060352 has offset 1).

The definition of A060352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*3^(n+1)-1` (program `A060352.P6117980345836579755`, by `A060352.P6117980345836579755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060352.P6117980345836579755

`(n+1)*3^(n+1)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060352

/-- `(n+1)*3^(n+1)-1` -/
def P6117980345836579755.Spec : Prop :=
  ∀ n, P6117980345836579755.a n = A060352 (n + 1)

theorem P6117980345836579755.correct : P6117980345836579755.Spec := by
  intro n
  simp only [A060352, Nat.add_sub_cancel]

end A060352

/-! ## A060352.P15784516198132434910

`∑[ogf((2+3x-9x^2)/(1-6x+9x^2))]`
-/

namespace A060352.P15784516198132434910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -9] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060352.P15784516198132434910

namespace A060352

/-- `∑[ogf((2+3x-9x^2)/(1-6x+9x^2))]` -/
def P15784516198132434910.Spec : Prop :=
  ∀ n, P15784516198132434910.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P1531632855628351356

`floor((n+1)*∑[3*a(n-1)]+n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A060352.P1531632855628351356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A060352.P1531632855628351356

namespace A060352

/-- `floor((n+1)*∑[3*a(n-1)]+n)` -/
def P1531632855628351356.Spec : Prop :=
  ∀ n, (P1531632855628351356.a n : ℤ) = A060352 (n + 1)

end A060352

/-! ## A060352.P17853963833609666597

`Δ[A088581(n)-n]`
-/

namespace A060352.P17853963833609666597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088581 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060352.P17853963833609666597

namespace A060352

/-- `Δ[A088581(n)-n]` -/
def P17853963833609666597.Spec : Prop :=
  ∀ n, P17853963833609666597.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P11965232612779472031

`Δ[A289399(n)-n]`
-/

namespace A060352.P11965232612779472031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289399 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060352.P11965232612779472031

namespace A060352

/-- `Δ[A289399(n)-n]` -/
def P11965232612779472031.Spec : Prop :=
  ∀ n, P11965232612779472031.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P3033784542066422265

`abs(1-A036290(n+1))`
-/

namespace A060352.P3033784542066422265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A036290 (n + 1)|

end

end A060352.P3033784542066422265

namespace A060352

/-- `abs(1-A036290(n+1))` -/
def P3033784542066422265.Spec : Prop :=
  ∀ n, P3033784542066422265.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P14675349712270136678

`abs(A050914(n+1)-2)`
-/

namespace A060352.P14675349712270136678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050914 (n + 1) - 2|

end

end A060352.P14675349712270136678

namespace A060352

/-- `abs(A050914(n+1)-2)` -/
def P14675349712270136678.Spec : Prop :=
  ∀ n, P14675349712270136678.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P3694322085086123552

`Δ[∑[n*A000244(n)]-(n+1)]`
-/

namespace A060352.P3694322085086123552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060352.P3694322085086123552

namespace A060352

/-- `Δ[∑[n*A000244(n)]-(n+1)]` -/
def P3694322085086123552.Spec : Prop :=
  ∀ n, P3694322085086123552.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P7090264757133535724

`abs(1-(A024023(n+1)+1)*(n+1))`
-/

namespace A060352.P7090264757133535724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A024023 (n + 1) + 1) * (n + 1 : ℤ)|

end

end A060352.P7090264757133535724

namespace A060352

/-- `abs(1-(A024023(n+1)+1)*(n+1))` -/
def P7090264757133535724.Spec : Prop :=
  ∀ n, P7090264757133535724.a n = A060352 (n + 1)

end A060352

/-! ## A060352.P1059093938469196677

`(A050917(n+1)-A000051(n+1))/A000079(n+1)`
-/

namespace A060352.P1059093938469196677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050917 (n + 1) - A000051 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A060352.P1059093938469196677

namespace A060352

/-- `(A050917(n+1)-A000051(n+1))/A000079(n+1)` -/
def P1059093938469196677.Spec : Prop :=
  ∀ n, P1059093938469196677.a n = (A060352 (n + 1) : ℚ)

end A060352

/-! ## A060352.P16982001290610790455

`(A128785(n+1)-A036289(n+1))/A036289(n+1)`
-/

namespace A060352.P16982001290610790455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128785 (n + 1) - A036289 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A060352.P16982001290610790455

namespace A060352

/-- `(A128785(n+1)-A036289(n+1))/A036289(n+1)` -/
def P16982001290610790455.Spec : Prop :=
  ∀ n, P16982001290610790455.a n = (A060352 (n + 1) : ℚ)

end A060352

/-! ## A060352.P2337457480494205192

`(A128792(n+1)-A007758(n+1))/A007758(n+1)`
-/

namespace A060352.P2337457480494205192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128792 (n + 1) - A007758 (n + 1) : ℚ) / (A007758 (n + 1) : ℚ)

end

end A060352.P2337457480494205192

namespace A060352

/-- `(A128792(n+1)-A007758(n+1))/A007758(n+1)` -/
def P2337457480494205192.Spec : Prop :=
  ∀ n, P2337457480494205192.a n = (A060352 (n + 1) : ℚ)

end A060352

/-! ## A060352.P6200603439771697404

`(A158749(n+1)-A000244(n+1))/A000244(n+1)`
-/

namespace A060352.P6200603439771697404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158749 (n + 1) - A000244 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A060352.P6200603439771697404

namespace A060352

/-- `(A158749(n+1)-A000244(n+1))/A000244(n+1)` -/
def P6200603439771697404.Spec : Prop :=
  ∀ n, P6200603439771697404.a n = (A060352 (n + 1) : ℚ)

end A060352

/-!
# A060353: Primes of the form k*3^k - 1.

The programs for A060353, there is no canonical definition to state claims against.
-/

/-! ## A060353.P3819945344265443363

`A060352(A006553(n+1))`
-/

namespace A060353.P3819945344265443363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060352 (A006553 (n + 1)).toNat

end

end A060353.P3819945344265443363

/-!
# A060354: The n-th n-gonal number: a(n) = n*(n^2 - 3*n + 4)/2.

The programs for A060354, the canonical program `A060354.P5541652509067826457` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060354 has offset 0).

The definition of A060354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²-3*n+4)/2` (program `A060354.P15948244313168428647`, by `A060354.P15948244313168428647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060354.P11098035586995765594

`(n*(n-2)²+n²)/2`
-/

namespace A060354.P11098035586995765594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 2) ^ 2 + (n ^ 2 : ℤ) : ℚ) / 2

end

end A060354.P11098035586995765594

namespace A060354

/-- `(n*(n-2)²+n²)/2` -/
def P11098035586995765594.Spec : Prop :=
  ∀ n, P11098035586995765594.a n = (A060354 n : ℚ)

theorem P11098035586995765594.correct : P11098035586995765594.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A060354, Nat.add_sub_cancel, A060354.P11098035586995765594.a, A060354.P5541652509067826457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A060354, Nat.add_sub_cancel, A060354.P11098035586995765594.a, A060354.P5541652509067826457.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060354

/-! ## A060354.P15948244313168428647

`n*(n²-3*n+4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060354.P15948244313168428647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 4) : ℚ) / 2

end

end A060354.P15948244313168428647

namespace A060354

/-- `n*(n²-3*n+4)/2` -/
def P15948244313168428647.Spec : Prop :=
  ∀ n, P15948244313168428647.a n = (A060354 n : ℚ)

theorem P15948244313168428647.correct : P15948244313168428647.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A060354, Nat.add_sub_cancel, A060354.P15948244313168428647.a, A060354.P5541652509067826457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A060354, Nat.add_sub_cancel, A060354.P15948244313168428647.a, A060354.P5541652509067826457.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060354

/-! ## A060354.P5541652509067826457

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060354

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5541652509067826457.Spec : Prop :=
  ∀ n, P5541652509067826457.a n = A060354 n

theorem P5541652509067826457.correct : P5541652509067826457.Spec := by
  intro n
  simp only [A060354]

end A060354

/-! ## A060354.P2448447005413064589

`3*C(n, 3)+n`
-/

namespace A060354.P2448447005413064589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 3 + n

end

end A060354.P2448447005413064589

namespace A060354

/-- `3*C(n, 3)+n` -/
def P2448447005413064589.Spec : Prop :=
  ∀ n, (P2448447005413064589.a n : ℤ) = A060354 n

end A060354

/-! ## A060354.P17647736076503882515

`n-(2-n)*C(n, 2)`
-/

namespace A060354.P17647736076503882515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 - (n : ℤ)) * (Nat.choose n 2 : ℤ)

end

end A060354.P17647736076503882515

namespace A060354

/-- `n-(2-n)*C(n, 2)` -/
def P17647736076503882515.Spec : Prop :=
  ∀ n, P17647736076503882515.a n = A060354 n

end A060354

/-! ## A060354.P9035046674918599299

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A060354.P9035046674918599299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060354.P9035046674918599299

namespace A060354

/-- `∑[∑[a(n-1)+3]]` -/
def P9035046674918599299.Spec : Prop :=
  ∀ n, (P9035046674918599299.a n : ℤ) = A060354 n

end A060354

/-! ## A060354.P1335661529466479764

`lcm(n-2, lcm(n, C(n, 2)))+n`
-/

namespace A060354.P1335661529466479764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (Nat.lcm n (Nat.choose n 2) : ℤ) + n

end

end A060354.P1335661529466479764

namespace A060354

/-- `lcm(n-2, lcm(n, C(n, 2)))+n` -/
def P1335661529466479764.Spec : Prop :=
  ∀ n, (P1335661529466479764.a n : ℤ) = A060354 n

end A060354

/-! ## A060354.P16810990834913001808

`n*∑[(2*n-1)%(n+1)]`
-/

namespace A060354.P16810990834913001808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060354.P16810990834913001808

namespace A060354

/-- `n*∑[(2*n-1)%(n+1)]` -/
def P16810990834913001808.Spec : Prop :=
  ∀ n, P16810990834913001808.a n = A060354 n

end A060354

/-! ## A060354.P9405260741781439781

`∑[a(n-1)-3*(2-n)]` with `a(0)=0, a(1)=1`
-/

namespace A060354.P9405260741781439781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - 3 * (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060354.P9405260741781439781

namespace A060354

/-- `∑[a(n-1)-3*(2-n)]` -/
def P9405260741781439781.Spec : Prop :=
  ∀ n, P9405260741781439781.a n = A060354 n

end A060354

/-! ## A060354.P14123463049968371809

`n-∑[∑[a(n-1)-3]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A060354.P14123463049968371809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060354.P14123463049968371809

namespace A060354

/-- `n-∑[∑[a(n-1)-3]]` -/
def P14123463049968371809.Spec : Prop :=
  ∀ n, P14123463049968371809.a n = A060354 n

end A060354

/-! ## A060354.P15703302310859987607

`∑[∑[ogf((1-2x+x^2+3x^3)/(1-2x+x^2))]]-1`
-/

namespace A060354.P15703302310859987607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060354.P15703302310859987607

namespace A060354

/-- `∑[∑[ogf((1-2x+x^2+3x^3)/(1-2x+x^2))]]-1` -/
def P15703302310859987607.Spec : Prop :=
  ∀ n, P15703302310859987607.a n = A060354 n

end A060354

/-! ## A060354.P15778342758332373268

`a(n-1)+C(n, 2)+(2-n)²` with `a(0)=0`
-/

namespace A060354.P15778342758332373268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((Nat.choose n 2 : ℤ) + (2 - (n : ℤ)) ^ 2)

end

end A060354.P15778342758332373268

namespace A060354

/-- `a(n-1)+C(n, 2)+(2-n)²` -/
def P15778342758332373268.Spec : Prop :=
  ∀ n, P15778342758332373268.a n = A060354 n

end A060354

/-! ## A060354.P17492257117861214374

`Δ[A341703(n)/2]`
-/

namespace A060354.P17492257117861214374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341703 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060354.P17492257117861214374

namespace A060354

/-- `Δ[A341703(n)/2]` -/
def P17492257117861214374.Spec : Prop :=
  ∀ n, P17492257117861214374.a n = (A060354 n : ℚ)

end A060354

/-! ## A060354.P12548048787352880486

`A158498(n+1)-1`
-/

namespace A060354.P12548048787352880486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158498 (n + 1) - 1

end

end A060354.P12548048787352880486

namespace A060354

/-- `A158498(n+1)-1` -/
def P12548048787352880486.Spec : Prop :=
  ∀ n, P12548048787352880486.a n = A060354 n

end A060354

/-! ## A060354.P9071859870224301673

`A007531(n)/2+n`
-/

namespace A060354.P9071859870224301673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 n : ℚ) / 2 + (n : ℚ)

end

end A060354.P9071859870224301673

namespace A060354

/-- `A007531(n)/2+n` -/
def P9071859870224301673.Spec : Prop :=
  ∀ n, P9071859870224301673.a n = (A060354 n : ℚ)

end A060354

/-! ## A060354.P10774401861379191965

`A280058(n)/4+n`
-/

namespace A060354.P10774401861379191965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 n : ℚ) / 4 + (n : ℚ)

end

end A060354.P10774401861379191965

namespace A060354

/-- `A280058(n)/4+n` -/
def P10774401861379191965.Spec : Prop :=
  ∀ n, P10774401861379191965.a n = (A060354 n : ℚ)

end A060354

/-! ## A060354.P6807026264088291745

`∑[n]+A162607(n)-n`
-/

namespace A060354.P6807026264088291745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A162607 n - (n : ℤ))

end

end A060354.P6807026264088291745

namespace A060354

/-- `∑[n]+A162607(n)-n` -/
def P6807026264088291745.Spec : Prop :=
  ∀ n, P6807026264088291745.a n = A060354 n

end A060354

/-! ## A060354.P10318638203721221305

`n*(A089071(n+1)-n)`
-/

namespace A060354.P10318638203721221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A089071 (n + 1) - (n : ℤ))

end

end A060354.P10318638203721221305

namespace A060354

/-- `n*(A089071(n+1)-n)` -/
def P10318638203721221305.Spec : Prop :=
  ∀ n, P10318638203721221305.a n = A060354 n

end A060354

/-! ## A060354.P8818458070899639832

`n*(A152948(n+1)-n)`
-/

namespace A060354.P8818458070899639832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152948 (n + 1) - (n : ℤ))

end

end A060354.P8818458070899639832

namespace A060354

/-- `n*(A152948(n+1)-n)` -/
def P8818458070899639832.Spec : Prop :=
  ∀ n, P8818458070899639832.a n = A060354 n

end A060354

/-! ## A060354.P3415743497775112006

`(n-2)*A161680(n)+n`
-/

namespace A060354.P3415743497775112006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A161680 n + (n : ℤ)

end

end A060354.P3415743497775112006

namespace A060354

/-- `(n-2)*A161680(n)+n` -/
def P3415743497775112006.Spec : Prop :=
  ∀ n, P3415743497775112006.a n = A060354 n

end A060354

/-!
# A060355: Numbers k such that k and k+1 are powerful numbers.

The programs for A060355, there is no canonical definition to state claims against.
-/

/-! ## A060355.P13531777403371764251

`A078326(n+1)-1`
-/

namespace A060355.P13531777403371764251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078326 (n + 1) - 1

end

end A060355.P13531777403371764251

/-! ## A060355.P9916674806543988563

`A115140(A078316(n+1))+A078326(n+1)`
-/

namespace A060355.P9916674806543988563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (A078316 (n + 1)).toNat + A078326 (n + 1)

end

end A060355.P9916674806543988563

/-! ## A060355.P14219231593074897756

`A117569(A078330(n+1))+A078326(n+1)`
-/

namespace A060355.P14219231593074897756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A078330 (n + 1)).toNat + A078326 (n + 1)

end

end A060355.P14219231593074897756

/-! ## A060355.P1124359779331110971

`A114327(A184636(n+2))+A078326(n+1)`
-/

namespace A060355.P1124359779331110971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A184636 (n + 2)).toNat + A078326 (n + 1)

end

end A060355.P1124359779331110971

/-! ## A060355.P960746038576453590

`A133639(p?[A118538(n+1)])+A078326(n+1)`
-/

namespace A060355.P960746038576453590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A078326 (n + 1)

end

end A060355.P960746038576453590

/-!
# A060356: Expansion of e.g.f.: -LambertW(-x/(1+x)).

The programs for A060356, there is no canonical definition to state claims against.
-/

/-! ## A060356.P13225739597568013288

`A254382(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A060356.P13225739597568013288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A254382 n - (n : ℤ) * a (n - 1)

end

end A060356.P13225739597568013288

/-! ## A060356.P6144920975327117165

`n*A108919(A028310(n))`
-/

namespace A060356.P6144920975327117165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108919 (A028310 n).toNat

end

end A060356.P6144920975327117165

/-! ## A060356.P324950566102050661

`n*A108919(A000007(n)+n)`
-/

namespace A060356.P324950566102050661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108919 (A000007 n + (n : ℤ)).toNat

end

end A060356.P324950566102050661

/-! ## A060356.P4591914129579730298

`ceil(sin(n)²)*A231602(A152947(n+1))`
-/

namespace A060356.P4591914129579730298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A231602 (A152947 (n + 1)).toNat

end

end A060356.P4591914129579730298

/-! ## A060356.P124112984386661076

`A231602(A152947(n+1)+A000007(n))`
-/

namespace A060356.P124112984386661076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231602 (A152947 (n + 1) + A000007 n).toNat

end

end A060356.P124112984386661076

/-! ## A060356.P9198179377548362365

`A178489(n)*A231602(A152947(n+1))`
-/

namespace A060356.P9198179377548362365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A231602 (A152947 (n + 1)).toNat

end

end A060356.P9198179377548362365

/-! ## A060356.P8966356497279967671

`A231602(A152947(n+1))%A000165(n)`
-/

namespace A060356.P8966356497279967671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231602 (A152947 (n + 1)).toNat) (A000165 n)

end

end A060356.P8966356497279967671

/-! ## A060356.P9294991516203431392

`A231602(A152947(n+1)+1-A178489(n))`
-/

namespace A060356.P9294991516203431392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231602 (A152947 (n + 1) + (1 - A178489 n)).toNat

end

end A060356.P9294991516203431392

/-!
# A060357: a(n) = smallest prime > lcm(1..n).

The programs for A060357, the canonical program `A060357.P5151139434586093012` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060357 has offset 0).

The definition of A060357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060357.P5151139434586093012

`A151800(A003418(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060357

/-- `A151800(A003418(n))` -/
def P5151139434586093012.Spec : Prop :=
  ∀ n, P5151139434586093012.a n = A060357 n

theorem P5151139434586093012.correct : P5151139434586093012.Spec := by
  intro n
  simp only [A060357]

end A060357

/-! ## A060357.P885800654811979367

`A060361(n)+A003418(n)`
-/

namespace A060357.P885800654811979367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + A003418 n

end

end A060357.P885800654811979367

namespace A060357

/-- `A060361(n)+A003418(n)` -/
def P885800654811979367.Spec : Prop :=
  ∀ n, P885800654811979367.a n = A060357 n

theorem P885800654811979367.correct : P885800654811979367.Spec := by
  intro n
  simp only [A060357, Nat.add_sub_cancel, A060357.P885800654811979367.a, A060357.P5151139434586093012.a, A003418, A003418.P6976248655893080794.a, A060361, A060361.P4009678370881410838.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060357

/-! ## A060357.P4804422925057076158

`A060361(n)+A075059(n)-1`
-/

namespace A060357.P4804422925057076158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + (A075059 n - 1)

end

end A060357.P4804422925057076158

namespace A060357

/-- `A060361(n)+A075059(n)-1` -/
def P4804422925057076158.Spec : Prop :=
  ∀ n, P4804422925057076158.a n = A060357 n

theorem P4804422925057076158.correct : P4804422925057076158.Spec := by
  intro n
  simp only [A060357, Nat.add_sub_cancel, A060357.P4804422925057076158.a, A060357.P5151139434586093012.a, A003418, A003418.P6976248655893080794.a, A060361, A060361.P4009678370881410838.a, A075059, A075059.P13005941669399506084.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060357

/-! ## A060357.P9363082426029801676

`A060361(n)+∏[A014963(∏{p}[n, #])]`
-/

namespace A060357.P9363082426029801676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060357.P9363082426029801676

namespace A060357

/-- `A060361(n)+∏[A014963(∏{p}[n, #])]` -/
def P9363082426029801676.Spec : Prop :=
  ∀ n, P9363082426029801676.a n = A060357 n

end A060357

/-! ## A060357.P2333187550750095547

`A060361(n)+∑[A119944(abs(1-n))]`
-/

namespace A060357.P2333187550750095547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060357.P2333187550750095547

namespace A060357

/-- `A060361(n)+∑[A119944(abs(1-n))]` -/
def P2333187550750095547.Spec : Prop :=
  ∀ n, P2333187550750095547.a n = A060357 n

end A060357

/-! ## A060357.P10874712462038314788

`A060361(n)+∏[A014963(A257088(n))]`
-/

namespace A060357.P10874712462038314788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060357.P10874712462038314788

namespace A060357

/-- `A060361(n)+∏[A014963(A257088(n))]` -/
def P10874712462038314788.Spec : Prop :=
  ∀ n, P10874712462038314788.a n = A060357 n

end A060357

/-! ## A060357.P15597495283074969232

`A060361(n)+A000793(n)*A225558(n)`
-/

namespace A060357.P15597495283074969232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + A000793 n * A225558 n

end

end A060357.P15597495283074969232

namespace A060357

/-- `A060361(n)+A000793(n)*A225558(n)` -/
def P15597495283074969232.Spec : Prop :=
  ∀ n, P15597495283074969232.a n = A060357 n

end A060357

/-! ## A060357.P9781315885486887069

`A060361(n)+A001405(n)*A263673(n)`
-/

namespace A060357.P9781315885486887069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + A001405 n * A263673 n

end

end A060357.P9781315885486887069

namespace A060357

/-- `A060361(n)+A001405(n)*A263673(n)` -/
def P9781315885486887069.Spec : Prop :=
  ∀ n, P9781315885486887069.a n = A060357 n

end A060357

/-! ## A060357.P13928187443793069852

`A060361(n)+lcm(A056040(n), A067391(n+1))`
-/

namespace A060357.P13928187443793069852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 n + (Int.lcm (A056040 n) (A067391 (n + 1)) : ℤ)

end

end A060357.P13928187443793069852

namespace A060357

/-- `A060361(n)+lcm(A056040(n), A067391(n+1))` -/
def P13928187443793069852.Spec : Prop :=
  ∀ n, P13928187443793069852.a n = A060357 n

end A060357

/-! ## A060357.P2107930487559424293

`A060361(n)+∏[A014963(n+1)]/A014963(n+1)`
-/

namespace A060357.P2107930487559424293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060361 n : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A060357.P2107930487559424293

namespace A060357

/-- `A060361(n)+∏[A014963(n+1)]/A014963(n+1)` -/
def P2107930487559424293.Spec : Prop :=
  ∀ n, P2107930487559424293.a n = (A060357 n : ℚ)

end A060357

/-! ## A060357.P7568956780076863892

`A120108(A161680(n))+A060361(n)`
-/

namespace A060357.P7568956780076863892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A161680 n).toNat + A060361 n

end

end A060357.P7568956780076863892

namespace A060357

/-- `A120108(A161680(n))+A060361(n)` -/
def P7568956780076863892.Spec : Prop :=
  ∀ n, P7568956780076863892.a n = A060357 n

end A060357

/-! ## A060357.P8284658061500580224

`A093919(A099392(n+1))+A060361(n)`
-/

namespace A060357.P8284658061500580224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A099392 (n + 1)).toNat + A060361 n

end

end A060357.P8284658061500580224

namespace A060357

/-- `A093919(A099392(n+1))+A060361(n)` -/
def P8284658061500580224.Spec : Prop :=
  ∀ n, P8284658061500580224.a n = A060357 n

end A060357

/-! ## A060357.P4544123644717794365

`A093919(A179865(n+1))+A060361(n)`
-/

namespace A060357.P4544123644717794365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A179865 (n + 1)).toNat + A060361 n

end

end A060357.P4544123644717794365

namespace A060357

/-- `A093919(A179865(n+1))+A060361(n)` -/
def P4544123644717794365.Spec : Prop :=
  ∀ n, P4544123644717794365.a n = A060357 n

end A060357

/-!
# A060358: a(n) = largest prime < lcm(1..n).

The programs for A060358, there is no canonical definition to state claims against.
-/

/-! ## A060358.P16524638107855249796

`A003418(n+3)-A060360(n+3)`
-/

namespace A060358.P16524638107855249796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 3) - A060360 (n + 3)

end

end A060358.P16524638107855249796

/-! ## A060358.P9751445742414564769

`A060357(n+3)-A060359(n+3)`
-/

namespace A060358.P9751445742414564769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (n + 3) - A060359 (n + 3)

end

end A060358.P9751445742414564769

/-! ## A060358.P8269294805251662326

`Δ[A173185(n+2)]-A060360(n+3)`
-/

namespace A060358.P8269294805251662326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060360 (n + 3)

end

end A060358.P8269294805251662326

/-! ## A060358.P14053143453480182489

`Δ[A173185(n+2)]+A060360(n+3)/A134824(n+2)`
-/

namespace A060358.P14053143453480182489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A060360 (n + 3) : ℚ) / (A134824 (n + 2) : ℚ)

end

end A060358.P14053143453480182489

/-! ## A060358.P15604668907788997760

`A120108(A179865(n+3))-A060360(n+3)`
-/

namespace A060358.P15604668907788997760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A179865 (n + 3)).toNat - A060360 (n + 3)

end

end A060358.P15604668907788997760

/-!
# A060359: a(n) = (smallest prime > k) - (largest prime < k), where k = lcm(1..n).

The programs for A060359, there is no canonical definition to state claims against.
-/

/-! ## A060359.P5926530031365402225

`A060361(n+3)+A060360(n+3)`
-/

namespace A060359.P5926530031365402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (n + 3) + A060360 (n + 3)

end

end A060359.P5926530031365402225

/-! ## A060359.P3841223479533256373

`A060357(n+3)-A060358(n+3)`
-/

namespace A060359.P3841223479533256373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (n + 3) - A060358 (n + 3)

end

end A060359.P3841223479533256373

/-! ## A060359.P1077857240480490876

`A060357(A009056(n+1))%A060358(n+3)`
-/

namespace A060359.P1077857240480490876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060357 (A009056 (n + 1)).toNat) (A060358 (n + 3))

end

end A060359.P1077857240480490876

/-! ## A060359.P4848091936055272195

`A060357(A171463(n+1))%A060358(n+3)`
-/

namespace A060359.P4848091936055272195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060357 (A171463 (n + 1)).toNat) (A060358 (n + 3))

end

end A060359.P4848091936055272195

/-! ## A060359.P10847722066882793732

`A166597(A070198(n+2))`
-/

namespace A060359.P10847722066882793732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A070198 (n + 2)).toNat

end

end A060359.P10847722066882793732

/-!
# A060360: a(n) = k - (largest prime < k), where k = lcm(1..n).

The programs for A060360, there is no canonical definition to state claims against.
-/

/-! ## A060360.P15914991370097951373

`A058022(A025528(n+3)+1)`
-/

namespace A060360.P15914991370097951373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058022 (A025528 (n + 3) + 1).toNat

end

end A060360.P15914991370097951373

/-! ## A060360.P9058602320995144395

`A060359(n+3)-A060361(n+3)`
-/

namespace A060360.P9058602320995144395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060359 (n + 3) - A060361 (n + 3)

end

end A060360.P9058602320995144395

/-! ## A060360.P9010993002919181864

`A003418(n+3)-A060358(n+3)`
-/

namespace A060360.P9010993002919181864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 3) - A060358 (n + 3)

end

end A060360.P9010993002919181864

/-! ## A060360.P15400115991305783918

`A254078(n+2)+2-A060358(n+3)`
-/

namespace A060360.P15400115991305783918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254078 (n + 2) + (2 - A060358 (n + 3))

end

end A060360.P15400115991305783918

/-! ## A060360.P9402794916891308648

`A014963(A003418(n+3)%A060358(n+3))`
-/

namespace A060360.P9402794916891308648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A003418 (n + 3)) (A060358 (n + 3))).toNat

end

end A060360.P9402794916891308648

/-! ## A060360.P11733302009801572718

`A056040(n)-A060358(n+3)%A056040(n)`
-/

namespace A060360.P11733302009801572718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - Int.tmod (A060358 (n + 3)) (A056040 n)

end

end A060360.P11733302009801572718

/-!
# A060361: a(n) = { Smallest prime > k } - k, where k = lcm(1..n).

The programs for A060361, the canonical program `A060361.P4009678370881410838` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060361 has offset 0).

The definition of A060361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060361.P4009678370881410838

`A060357(n)-A003418(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060361

/-- `A060357(n)-A003418(n)` -/
def P4009678370881410838.Spec : Prop :=
  ∀ n, P4009678370881410838.a n = A060361 n

theorem P4009678370881410838.correct : P4009678370881410838.Spec := by
  intro n
  simp only [A060361]

end A060361

/-! ## A060361.P14029430954121130755

`A060357(n)+1-A075059(n)`
-/

namespace A060361.P14029430954121130755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n + (1 - A075059 n)

end

end A060361.P14029430954121130755

namespace A060361

/-- `A060357(n)+1-A075059(n)` -/
def P14029430954121130755.Spec : Prop :=
  ∀ n, P14029430954121130755.a n = A060361 n

theorem P14029430954121130755.correct : P14029430954121130755.Spec := by
  intro n
  simp only [A060361, Nat.add_sub_cancel, A060361.P14029430954121130755.a, A060361.P4009678370881410838.a, A003418, A003418.P6976248655893080794.a, A060357, A060357.P5151139434586093012.a, A075059, A075059.P13005941669399506084.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060361

/-! ## A060361.P2383994174047948714

`A060357(n)-∏[A014963(∏{p}[n, #])]`
-/

namespace A060361.P2383994174047948714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060361.P2383994174047948714

namespace A060361

/-- `A060357(n)-∏[A014963(∏{p}[n, #])]` -/
def P2383994174047948714.Spec : Prop :=
  ∀ n, P2383994174047948714.a n = A060361 n

end A060361

/-! ## A060361.P15993685089362969911

`A060357(n)-∑[A119944(abs(1-n))]`
-/

namespace A060361.P15993685089362969911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060361.P15993685089362969911

namespace A060361

/-- `A060357(n)-∑[A119944(abs(1-n))]` -/
def P15993685089362969911.Spec : Prop :=
  ∀ n, P15993685089362969911.a n = A060361 n

end A060361

/-! ## A060361.P14239072088827740913

`A029579(A060357(n)%A056040(n))`
-/

namespace A060361.P14239072088827740913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A060357 n) (A056040 n)).toNat

end

end A060361.P14239072088827740913

namespace A060361

/-- `A029579(A060357(n)%A056040(n))` -/
def P14239072088827740913.Spec : Prop :=
  ∀ n, P14239072088827740913.a n = A060361 n

end A060361

/-! ## A060361.P13658332069944496061

`A060357(n)-∏[A014963(A257088(n))]`
-/

namespace A060361.P13658332069944496061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060361.P13658332069944496061

namespace A060361

/-- `A060357(n)-∏[A014963(A257088(n))]` -/
def P13658332069944496061.Spec : Prop :=
  ∀ n, P13658332069944496061.a n = A060361 n

end A060361

/-! ## A060361.P6051201658083942630

`A060357(n)-A000793(n)*A225558(n)`
-/

namespace A060361.P6051201658083942630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A000793 n * A225558 n

end

end A060361.P6051201658083942630

namespace A060361

/-- `A060357(n)-A000793(n)*A225558(n)` -/
def P6051201658083942630.Spec : Prop :=
  ∀ n, P6051201658083942630.a n = A060361 n

end A060361

/-! ## A060361.P6679205369319033723

`A060357(n)-∏[A014963(n+1)]/A014963(n+1)`
-/

namespace A060361.P6679205369319033723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060357 n : ℚ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A060361.P6679205369319033723

namespace A060361

/-- `A060357(n)-∏[A014963(n+1)]/A014963(n+1)` -/
def P6679205369319033723.Spec : Prop :=
  ∀ n, P6679205369319033723.a n = (A060361 n : ℚ)

end A060361

/-! ## A060361.P8467128125106602997

`A060357(n)-A120108(A161680(n))`
-/

namespace A060361.P8467128125106602997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A120108 (A161680 n).toNat

end

end A060361.P8467128125106602997

namespace A060361

/-- `A060357(n)-A120108(A161680(n))` -/
def P8467128125106602997.Spec : Prop :=
  ∀ n, P8467128125106602997.a n = A060361 n

end A060361

/-! ## A060361.P5488877444778508580

`A060357(n)-A093919(A099392(n+1))`
-/

namespace A060361.P5488877444778508580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A093919 (A099392 (n + 1)).toNat

end

end A060361.P5488877444778508580

namespace A060361

/-- `A060357(n)-A093919(A099392(n+1))` -/
def P5488877444778508580.Spec : Prop :=
  ∀ n, P5488877444778508580.a n = A060361 n

end A060361

/-! ## A060361.P11739177308034020386

`A060357(n)-A093919(A179865(n+1))`
-/

namespace A060361.P11739177308034020386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A093919 (A179865 (n + 1)).toNat

end

end A060361.P11739177308034020386

namespace A060361

/-- `A060357(n)-A093919(A179865(n+1))` -/
def P11739177308034020386.Spec : Prop :=
  ∀ n, P11739177308034020386.a n = A060361 n

end A060361

/-!
# A060367: Average order of an element in a cyclic group of order n rounded down.

The programs for A060367, the canonical program `A060367.P9155873147261738328` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060367 has offset 1).

The definition of A060367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060367.P9155873147261738328

`floor(A057660(n+1)/(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060367

/-- `floor(A057660(n+1)/(n+1))` -/
def P9155873147261738328.Spec : Prop :=
  ∀ n, P9155873147261738328.a n = A060367 (n + 1)

theorem P9155873147261738328.correct : P9155873147261738328.Spec := by
  intro n
  simp only [A060367, Nat.add_sub_cancel]

end A060367

/-! ## A060367.P7479372330939851269

`floor(A065827(n+1)/((n+1)*A065764(n+1)))`
-/

namespace A060367.P7479372330939851269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065827 (n + 1) : ℚ) / ((n + 1 : ℤ) * A065764 (n + 1) : ℚ)⌋

end

end A060367.P7479372330939851269

namespace A060367

/-- `floor(A065827(n+1)/((n+1)*A065764(n+1)))` -/
def P7479372330939851269.Spec : Prop :=
  ∀ n, P7479372330939851269.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P12522486311849208128

`floor(A001157((n+1)²)/((n+1)*A000203((n+1)²)))`
-/

namespace A060367.P12522486311849208128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001157 ((n + 1) ^ 2) : ℚ) / ((n + 1 : ℤ) * A000203 ((n + 1) ^ 2) : ℚ)⌋

end

end A060367.P12522486311849208128

namespace A060367

/-- `floor(A001157((n+1)²)/((n+1)*A000203((n+1)²)))` -/
def P12522486311849208128.Spec : Prop :=
  ∀ n, P12522486311849208128.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P1176005898744605781

`floor(∑[A292302(n+1)]/(n+1))`
-/

namespace A060367.P1176005898744605781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P1176005898744605781

namespace A060367

/-- `floor(∑[A292302(n+1)]/(n+1))` -/
def P1176005898744605781.Spec : Prop :=
  ∀ n, P1176005898744605781.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P14133788797096180276

`floor(∑{d}[n+1, A002618(#)/(n+1)])`
-/

namespace A060367.P14133788797096180276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (A002618 d : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P14133788797096180276

namespace A060367

/-- `floor(∑{d}[n+1, A002618(#)/(n+1)])` -/
def P14133788797096180276.Spec : Prop :=
  ∀ n, P14133788797096180276.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P14693756943906511599

`floor(2*A057661(n+1)*acot(n+1))`
-/

namespace A060367.P14693756943906511599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A057661 (n + 1) : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A060367.P14693756943906511599

namespace A060367

/-- `floor(2*A057661(n+1)*acot(n+1))` -/
def P14693756943906511599.Spec : Prop :=
  ∀ n, P14693756943906511599.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P7882496549994156456

`floor(∑{d}[n+1, A000010(#²)/(n+1)])`
-/

namespace A060367.P7882496549994156456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (A000010 (d ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P7882496549994156456

namespace A060367

/-- `floor(∑{d}[n+1, A000010(#²)/(n+1)])` -/
def P7882496549994156456.Spec : Prop :=
  ∀ n, P7882496549994156456.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P15468316347774037196

`floor(A004273(A057661(n+1))/(n+1))`
-/

namespace A060367.P15468316347774037196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 (A057661 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P15468316347774037196

namespace A060367

/-- `floor(A004273(A057661(n+1))/(n+1))` -/
def P15468316347774037196.Spec : Prop :=
  ∀ n, P15468316347774037196.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P11286530151305909174

`floor(A055210((n+1)²)/(n+1))`
-/

namespace A060367.P11286530151305909174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055210 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P11286530151305909174

namespace A060367

/-- `floor(A055210((n+1)²)/(n+1))` -/
def P11286530151305909174.Spec : Prop :=
  ∀ n, P11286530151305909174.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P13002713275789771814

`floor(A061020((n+1)²)/(n+1))`
-/

namespace A060367.P13002713275789771814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061020 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P13002713275789771814

namespace A060367

/-- `floor(A061020((n+1)²)/(n+1))` -/
def P13002713275789771814.Spec : Prop :=
  ∀ n, P13002713275789771814.a n = A060367 (n + 1)

end A060367

/-! ## A060367.P11849640824299007632

`floor(A206369((n+1)²)/(n+1))`
-/

namespace A060367.P11849640824299007632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206369 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P11849640824299007632

namespace A060367

/-- `floor(A206369((n+1)²)/(n+1))` -/
def P11849640824299007632.Spec : Prop :=
  ∀ n, P11849640824299007632.a n = A060367 (n + 1)

end A060367

/-!
# A060368: Number of irreducible representations of the symmetric group S_n that have even degree.

The programs for A060368, there is no canonical definition to state claims against.
-/

/-! ## A060368.P12734129353237518905

`A000041(n+1)-A059867(n+1)`
-/

namespace A060368.P12734129353237518905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A059867 (n + 1)

end

end A060368.P12734129353237518905

/-! ## A060368.P15954937896368466

`A000065(n+1)+1-A059867(n+1)`
-/

namespace A060368.P15954937896368466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A059867 (n + 1))

end

end A060368.P15954937896368466

/-! ## A060368.P4276885830082925072

`∑[A002865(n+1)]+1-A059867(n+1)`
-/

namespace A060368.P4276885830082925072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A059867 (n + 1))

end

end A060368.P4276885830082925072

/-! ## A060368.P5650481544061773742

`A060840(n+1)+A061569(n+1)-A059867(n+1)`
-/

namespace A060368.P5650481544061773742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060840 (n + 1) + (A061569 (n + 1) - A059867 (n + 1))

end

end A060368.P5650481544061773742

/-! ## A060368.P5592454575467071925

`A045923(n+1)+A272090(n+1)-A059867(n+1)`
-/

namespace A060368.P5592454575467071925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045923 (n + 1) + (A272090 (n + 1) - A059867 (n + 1))

end

end A060368.P5592454575467071925

/-! ## A060368.P10431033197169025977

`Δ[A000070(n)]-A059867(n+1)`
-/

namespace A060368.P10431033197169025977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059867 (n + 1)

end

end A060368.P10431033197169025977

/-! ## A060368.P12564587165466181925

`record[A035363(n)]-A059867(n+1)`
-/

namespace A060368.P12564587165466181925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059867 (n + 1)

end

end A060368.P12564587165466181925

/-!
# A060370: Ratios (p-1)/d, where p is a prime and d is the number of digits of the periodic part of the decimal expansion of 1/p.

The programs for A060370, there is no canonical definition to state claims against.
-/

/-! ## A060370.P4322188938352413328

`A006093(n+1)/A048595(n+1)`
-/

namespace A060370.P4322188938352413328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P4322188938352413328

/-! ## A060370.P12216603961425487198

`(A000040(n+1)-1)/A048595(n+1)`
-/

namespace A060370.P12216603961425487198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P12216603961425487198

/-! ## A060370.P10747783896521607163

`(A008578(n+2)-1)/A048595(n+1)`
-/

namespace A060370.P10747783896521607163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) - 1 : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P10747783896521607163

/-! ## A060370.P8522574439237993048

`record[A000010(n+1)]/A048595(n+1)`
-/

namespace A060370.P8522574439237993048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P8522574439237993048

/-! ## A060370.P7739906089371488336

`A000010(A000040(n+1))/A048595(n+1)`
-/

namespace A060370.P7739906089371488336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000040 (n + 1)).toNat : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P7739906089371488336

/-! ## A060370.P15022037797327832490

`(A006005(n+1)-A001222(A006005(n+1)))/A048595(n+1)`
-/

namespace A060370.P15022037797327832490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - A001222 (A006005 (n + 1)).toNat : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P15022037797327832490

/-! ## A060370.P8272347924643602908

`eq[1, A001222(n+1)]/A048595(n+1)`
-/

namespace A060370.P8272347924643602908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A048595 (n + 1) : ℚ)

end

end A060370.P8272347924643602908

/-! ## A060370.P6175600887921492247

`A006093(n+1)/A007732(A000040(n+1))`
-/

namespace A060370.P6175600887921492247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A007732 (A000040 (n + 1)).toNat : ℚ)

end

end A060370.P6175600887921492247

/-! ## A060370.P18225243539893359637

`A006093(n+1)/A007732(p?[A003277(n+1)])`
-/

namespace A060370.P18225243539893359637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A007732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A060370.P18225243539893359637

/-! ## A060370.P1308861314620790331

`A006093(n+1)/A007732(A006093(n+1)+1)`
-/

namespace A060370.P1308861314620790331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A007732 (A006093 (n + 1) + 1).toNat : ℚ)

end

end A060370.P1308861314620790331

/-! ## A060370.P2071115263759982544

`A006093(n+1)/A007732(A100484(n+1))`
-/

namespace A060370.P2071115263759982544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A007732 (A100484 (n + 1)).toNat : ℚ)

end

end A060370.P2071115263759982544

/-! ## A060370.P3056473215201400283

`A006093(n+1)/A051626(A001748(n+1))`
-/

namespace A060370.P3056473215201400283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A051626 (A001748 (n + 1)).toNat : ℚ)

end

end A060370.P3056473215201400283

/-!
# A060371: a(n) = (prime(n) - 1)! + 1.

The programs for A060371, there is no canonical definition to state claims against.
-/

/-! ## A060371.P15730446536231861305

`eq[1, ∑{e}[n+1, #]]!+1`
-/

namespace A060371.P15730446536231861305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A060371.P15730446536231861305

/-! ## A060371.P532411611639938496

`lt[n, ∑{p}[n+1, #]]!+1`
-/

namespace A060371.P532411611639938496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) + 1

end

end A060371.P532411611639938496

/-! ## A060371.P385913589177222477

`(p?[xor(1, n)+1]-1)!+1`
-/

namespace A060371.P385913589177222477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1).toNat + 1

end

end A060371.P385913589177222477

/-! ## A060371.P8280951707739007301

`(p?[n%3+n]-1)!+1`
-/

namespace A060371.P8280951707739007301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1).toNat + 1

end

end A060371.P8280951707739007301

/-! ## A060371.P14593610937068646347

`eq[n+2, ∑{d}[n+1, #]]!+1`
-/

namespace A060371.P14593610937068646347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A060371.P14593610937068646347

/-!
# A060372: p(n), positive part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

The programs for A060372, the canonical program `A060372.P4864824408191301632` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060372 has offset 0).

The definition of A060372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060372.P7217060100187654871

`A060373(n)+n`
-/

namespace A060372.P7217060100187654871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + (n : ℤ)

end

end A060372.P7217060100187654871

namespace A060372

/-- `A060373(n)+n` -/
def P7217060100187654871.Spec : Prop :=
  ∀ n, P7217060100187654871.a n = A060372 n

theorem P7217060100187654871.correct : P7217060100187654871.Spec := by
  intro n
  simp only [A060372, Nat.add_sub_cancel, A060372.P7217060100187654871.a, A060372.P4864824408191301632.a, A060373, A060373.P1941735290763042490.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, A168237, A168237.P12346762420407185560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060372

/-! ## A060372.P2096870659431757443

`(A060374(n)+n)/2`
-/

namespace A060372.P2096870659431757443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060374 n + (n : ℤ) : ℚ) / 2

end

end A060372.P2096870659431757443

namespace A060372

/-- `(A060374(n)+n)/2` -/
def P2096870659431757443.Spec : Prop :=
  ∀ n, P2096870659431757443.a n = (A060372 n : ℚ)

theorem P2096870659431757443.correct : P2096870659431757443.Spec := by
  intro n
  simp only [A060372, Nat.add_sub_cancel, A060372.P2096870659431757443.a, A060372.P4864824408191301632.a, A060374, A060374.P11457074353475961309.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A060373, A060373.P1941735290763042490.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, A168237, A168237.P12346762420407185560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060372

/-! ## A060372.P10801554517572348742

`A004488(A060374(n)+n)`
-/

namespace A060372.P10801554517572348742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A060374 n + (n : ℤ)).toNat

end

end A060372.P10801554517572348742

namespace A060372

/-- `A004488(A060374(n)+n)` -/
def P10801554517572348742.Spec : Prop :=
  ∀ n, P10801554517572348742.a n = A060372 n

end A060372

/-! ## A060372.P5432150877403483198

`A060374(n)-A060373(n)`
-/

namespace A060372.P5432150877403483198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n - A060373 n

end

end A060372.P5432150877403483198

namespace A060372

/-- `A060374(n)-A060373(n)` -/
def P5432150877403483198.Spec : Prop :=
  ∀ n, P5432150877403483198.a n = A060372 n

theorem P5432150877403483198.correct : P5432150877403483198.Spec := by
  intro n
  simp only [A060372, Nat.add_sub_cancel, A060372.P5432150877403483198.a, A060372.P4864824408191301632.a, A060373, A060373.P1941735290763042490.a, A060374, A060374.P11457074353475961309.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, A168237, A168237.P12346762420407185560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060372

/-! ## A060372.P13143250815177026362

`2*A060374(n)-A117967(n)`
-/

namespace A060372.P13143250815177026362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060374 n - A117967 n

end

end A060372.P13143250815177026362

namespace A060372

/-- `2*A060374(n)-A117967(n)` -/
def P13143250815177026362.Spec : Prop :=
  ∀ n, P13143250815177026362.a n = A060372 n

end A060372

/-! ## A060372.P4578502913513089296

`A117967(n)-2*A060373(n)`
-/

namespace A060372.P4578502913513089296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - 2 * A060373 n

end

end A060372.P4578502913513089296

namespace A060372

/-- `A117967(n)-2*A060373(n)` -/
def P4578502913513089296.Spec : Prop :=
  ∀ n, P4578502913513089296.a n = A060372 n

end A060372

/-! ## A060372.P1976471547476874855

`A300222(A117967(n)+n)/2`
-/

namespace A060372.P1976471547476874855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300222 (A117967 n + (n : ℤ)).toNat : ℚ) / 2

end

end A060372.P1976471547476874855

namespace A060372

/-- `A300222(A117967(n)+n)/2` -/
def P1976471547476874855.Spec : Prop :=
  ∀ n, P1976471547476874855.a n = (A060372 n : ℚ)

end A060372

/-! ## A060372.P4864824408191301632

`A117967(n)-A300222(A117967(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060372

/-- `A117967(n)-A300222(A117967(n))` -/
def P4864824408191301632.Spec : Prop :=
  ∀ n, P4864824408191301632.a n = A060372 n

theorem P4864824408191301632.correct : P4864824408191301632.Spec := by
  intro n
  simp only [A060372]

end A060372

/-! ## A060372.P15415793064450119944

`A338246(A338246(n)-A060373(n))`
-/

namespace A060372.P15415793064450119944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A338246 n - A060373 n).toNat

end

end A060372.P15415793064450119944

namespace A060372

/-- `A338246(A338246(n)-A060373(n))` -/
def P15415793064450119944.Spec : Prop :=
  ∀ n, P15415793064450119944.a n = A060372 n

end A060372

/-! ## A060372.P15301931827488181683

`A338245(A338247(n)-2*A060373(n))`
-/

namespace A060372.P15301931827488181683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 (A338247 n - 2 * A060373 n).toNat

end

end A060372.P15301931827488181683

namespace A060372

/-- `A338245(A338247(n)-2*A060373(n))` -/
def P15301931827488181683.Spec : Prop :=
  ∀ n, P15301931827488181683.a n = A060372 n

end A060372

/-! ## A060372.P16996079772768383197

`A060374(A117967(n)+n-A060374(n))`
-/

namespace A060372.P16996079772768383197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (A117967 n + ((n : ℤ) - A060374 n)).toNat

end

end A060372.P16996079772768383197

namespace A060372

/-- `A060374(A117967(n)+n-A060374(n))` -/
def P16996079772768383197.Spec : Prop :=
  ∀ n, P16996079772768383197.a n = A060372 n

end A060372

/-! ## A060372.P509670684654408582

`A338246(A060374(n))+n-A338246(n)`
-/

namespace A060372.P509670684654408582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A060374 n).toNat + ((n : ℤ) - A338246 n)

end

end A060372.P509670684654408582

namespace A060372

/-- `A338246(A060374(n))+n-A338246(n)` -/
def P509670684654408582.Spec : Prop :=
  ∀ n, P509670684654408582.a n = A060372 n

end A060372

/-! ## A060372.P6544541608205307329

`A338245(n)+n-A338245(A060374(n))`
-/

namespace A060372.P6544541608205307329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 n + ((n : ℤ) - A338245 (A060374 n).toNat)

end

end A060372.P6544541608205307329

namespace A060372

/-- `A338245(n)+n-A338245(A060374(n))` -/
def P6544541608205307329.Spec : Prop :=
  ∀ n, P6544541608205307329.a n = A060372 n

end A060372

/-! ## A060372.P7668219544862639195

`A338247(n)+n-A338247(A060374(n))`
-/

namespace A060372.P7668219544862639195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n + ((n : ℤ) - A338247 (A060374 n).toNat)

end

end A060372.P7668219544862639195

namespace A060372

/-- `A338247(n)+n-A338247(A060374(n))` -/
def P7668219544862639195.Spec : Prop :=
  ∀ n, P7668219544862639195.a n = A060372 n

end A060372

/-! ## A060372.P10960302498847210627

`A060374(n-(A060374(n)-A117967(n)))`
-/

namespace A060372.P10960302498847210627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 ((n : ℤ) - (A060374 n - A117967 n)).toNat

end

end A060372.P10960302498847210627

namespace A060372

/-- `A060374(n-(A060374(n)-A117967(n)))` -/
def P10960302498847210627.Spec : Prop :=
  ∀ n, P10960302498847210627.a n = A060372 n

end A060372

/-! ## A060372.P36743264641991965

`A117967(A117967(n)-A060373(n)-A060373(n))`
-/

namespace A060372.P36743264641991965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A117967 n - A060373 n - A060373 n).toNat

end

end A060372.P36743264641991965

namespace A060372

/-- `A117967(A117967(n)-A060373(n)-A060373(n))` -/
def P36743264641991965.Spec : Prop :=
  ∀ n, P36743264641991965.a n = A060372 n

end A060372

/-! ## A060372.P14826767656233570593

`A005836(A343228(n)+1)`
-/

namespace A060372.P14826767656233570593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343228 n + 1).toNat

end

end A060372.P14826767656233570593

namespace A060372

/-- `A005836(A343228(n)+1)` -/
def P14826767656233570593.Spec : Prop :=
  ∀ n, P14826767656233570593.a n = A060372 n

end A060372

/-! ## A060372.P11408075792872135377

`A003278(A343228(n)+1)-1`
-/

namespace A060372.P11408075792872135377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A343228 n + 1).toNat - 1

end

end A060372.P11408075792872135377

namespace A060372

/-- `A003278(A343228(n)+1)-1` -/
def P11408075792872135377.Spec : Prop :=
  ∀ n, P11408075792872135377.a n = A060372 n

end A060372

/-! ## A060372.P1344622220976529933

`A005823(A343228(n)+1)/2`
-/

namespace A060372.P1344622220976529933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A343228 n + 1).toNat : ℚ) / 2

end

end A060372.P1344622220976529933

namespace A060372

/-- `A005823(A343228(n)+1)/2` -/
def P1344622220976529933.Spec : Prop :=
  ∀ n, P1344622220976529933.a n = (A060372 n : ℚ)

end A060372

/-! ## A060372.P3640076207813613218

`A005836(A343229(n)+1)+n`
-/

namespace A060372.P3640076207813613218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343229 n + 1).toNat + (n : ℤ)

end

end A060372.P3640076207813613218

namespace A060372

/-- `A005836(A343229(n)+1)+n` -/
def P3640076207813613218.Spec : Prop :=
  ∀ n, P3640076207813613218.a n = A060372 n

end A060372

/-!
# A060373: q(n), negative part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

The programs for A060373, the canonical program `A060373.P1941735290763042490` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060373 has offset 0).

The definition of A060373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060373.P1941735290763042490

`A060372(n)-n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060373

/-- `A060372(n)-n` -/
def P1941735290763042490.Spec : Prop :=
  ∀ n, P1941735290763042490.a n = A060373 n

theorem P1941735290763042490.correct : P1941735290763042490.Spec := by
  intro n
  simp only [A060373]

end A060373

/-! ## A060373.P12147523130864895464

`(A060374(n)-n)/2`
-/

namespace A060373.P12147523130864895464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060374 n - (n : ℤ) : ℚ) / 2

end

end A060373.P12147523130864895464

namespace A060373

/-- `(A060374(n)-n)/2` -/
def P12147523130864895464.Spec : Prop :=
  ∀ n, P12147523130864895464.a n = (A060373 n : ℚ)

theorem P12147523130864895464.correct : P12147523130864895464.Spec := by
  intro n
  simp only [A060373, Nat.add_sub_cancel, A060373.P12147523130864895464.a, A060373.P1941735290763042490.a, A060372, A060372.P4864824408191301632.a, A060374, A060374.P11457074353475961309.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060373

/-! ## A060373.P10141940174349516965

`A004488(A060374(n)-n)`
-/

namespace A060373.P10141940174349516965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A060374 n - (n : ℤ)).toNat

end

end A060373.P10141940174349516965

namespace A060373

/-- `A004488(A060374(n)-n)` -/
def P10141940174349516965.Spec : Prop :=
  ∀ n, P10141940174349516965.a n = A060373 n

end A060373

/-! ## A060373.P17212635669329922196

`A060372(n)%A028310(n)`
-/

namespace A060373.P17212635669329922196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060372 n) (A028310 n)

end

end A060373.P17212635669329922196

namespace A060373

/-- `A060372(n)%A028310(n)` -/
def P17212635669329922196.Spec : Prop :=
  ∀ n, P17212635669329922196.a n = A060373 n

end A060373

/-! ## A060373.P5355227403384886896

`(A060372(n)+1)%A000027(n+1)`
-/

namespace A060373.P5355227403384886896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060372 n + 1) (A000027 (n + 1))

end

end A060373.P5355227403384886896

namespace A060373

/-- `(A060372(n)+1)%A000027(n+1)` -/
def P5355227403384886896.Spec : Prop :=
  ∀ n, P5355227403384886896.a n = A060373 n

end A060373

/-! ## A060373.P1599628826689469622

`(A117967(n)-n)/3`
-/

namespace A060373.P1599628826689469622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117967 n - (n : ℤ) : ℚ) / 3

end

end A060373.P1599628826689469622

namespace A060373

/-- `(A117967(n)-n)/3` -/
def P1599628826689469622.Spec : Prop :=
  ∀ n, P1599628826689469622.a n = (A060373 n : ℚ)

end A060373

/-! ## A060373.P4150501848767864649

`A300222(A117967(n))/2`
-/

namespace A060373.P4150501848767864649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300222 (A117967 n).toNat : ℚ) / 2

end

end A060373.P4150501848767864649

namespace A060373

/-- `A300222(A117967(n))/2` -/
def P4150501848767864649.Spec : Prop :=
  ∀ n, P4150501848767864649.a n = (A060373 n : ℚ)

end A060373

/-! ## A060373.P7391803328466959468

`A117967(n)-A060374(n)`
-/

namespace A060373.P7391803328466959468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A060374 n

end

end A060373.P7391803328466959468

namespace A060373

/-- `A117967(n)-A060374(n)` -/
def P7391803328466959468.Spec : Prop :=
  ∀ n, P7391803328466959468.a n = A060373 n

end A060373

/-! ## A060373.P1887775331544800599

`A338246(A060374(n))-A338246(n)`
-/

namespace A060373.P1887775331544800599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A060374 n).toNat - A338246 n

end

end A060373.P1887775331544800599

namespace A060373

/-- `A338246(A060374(n))-A338246(n)` -/
def P1887775331544800599.Spec : Prop :=
  ∀ n, P1887775331544800599.a n = A060373 n

end A060373

/-! ## A060373.P5313161844283303301

`A338245(n)-A338245(A060374(n))`
-/

namespace A060373.P5313161844283303301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 n - A338245 (A060374 n).toNat

end

end A060373.P5313161844283303301

namespace A060373

/-- `A338245(n)-A338245(A060374(n))` -/
def P5313161844283303301.Spec : Prop :=
  ∀ n, P5313161844283303301.a n = A060373 n

end A060373

/-! ## A060373.P16705784209640920017

`A338247(n)-A338247(A060374(n))`
-/

namespace A060373.P16705784209640920017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n - A338247 (A060374 n).toNat

end

end A060373.P16705784209640920017

namespace A060373

/-- `A338247(n)-A338247(A060374(n))` -/
def P16705784209640920017.Spec : Prop :=
  ∀ n, P16705784209640920017.a n = A060373 n

end A060373

/-! ## A060373.P18333732023916866418

`A005836(A343229(n)+1)`
-/

namespace A060373.P18333732023916866418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343229 n + 1).toNat

end

end A060373.P18333732023916866418

namespace A060373

/-- `A005836(A343229(n)+1)` -/
def P18333732023916866418.Spec : Prop :=
  ∀ n, P18333732023916866418.a n = A060373 n

end A060373

/-! ## A060373.P12613253802718327418

`A343317(n)-A338246(n)`
-/

namespace A060373.P12613253802718327418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 n - A338246 n

end

end A060373.P12613253802718327418

namespace A060373

/-- `A343317(n)-A338246(n)` -/
def P12613253802718327418.Spec : Prop :=
  ∀ n, P12613253802718327418.a n = A060373 n

end A060373

/-! ## A060373.P5109753719404311435

`A005823(A343229(n)+1)/2`
-/

namespace A060373.P5109753719404311435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (A343229 n + 1).toNat : ℚ) / 2

end

end A060373.P5109753719404311435

namespace A060373

/-- `A005823(A343229(n)+1)/2` -/
def P5109753719404311435.Spec : Prop :=
  ∀ n, P5109753719404311435.a n = (A060373 n : ℚ)

end A060373

/-! ## A060373.P2652132681298354086

`A005836(A343228(n)+1)-n`
-/

namespace A060373.P2652132681298354086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343228 n + 1).toNat - (n : ℤ)

end

end A060373.P2652132681298354086

namespace A060373

/-- `A005836(A343228(n)+1)-n` -/
def P2652132681298354086.Spec : Prop :=
  ∀ n, P2652132681298354086.a n = A060373 n

end A060373

/-! ## A060373.P2118552324810607020

`A374362(A338242(n))`
-/

namespace A060373.P2118552324810607020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A338242 n).toNat

end

end A060373.P2118552324810607020

namespace A060373

/-- `A374362(A338242(n))` -/
def P2118552324810607020.Spec : Prop :=
  ∀ n, P2118552324810607020.a n = A060373 n

end A060373

/-! ## A060373.P16910146801908629149

`A338242(n)-A374363(n)`
-/

namespace A060373.P16910146801908629149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 n - A374363 n

end

end A060373.P16910146801908629149

namespace A060373

/-- `A338242(n)-A374363(n)` -/
def P16910146801908629149.Spec : Prop :=
  ∀ n, P16910146801908629149.a n = A060373 n

end A060373

/-! ## A060373.P13301708012854849957

`A374362(A338243(n+1))`
-/

namespace A060373.P13301708012854849957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A338243 (n + 1)).toNat

end

end A060373.P13301708012854849957

namespace A060373

/-- `A374362(A338243(n+1))` -/
def P13301708012854849957.Spec : Prop :=
  ∀ n, P13301708012854849957.a n = A060373 n

end A060373

/-! ## A060373.P11784113409856894692

`A374362(A117967(n))`
-/

namespace A060373.P11784113409856894692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374362 (A117967 n).toNat

end

end A060373.P11784113409856894692

namespace A060373

/-- `A374362(A117967(n))` -/
def P11784113409856894692.Spec : Prop :=
  ∀ n, P11784113409856894692.a n = A060373 n

end A060373

/-! ## A060373.P11322445304966372424

`A244042(A117967(n)+n)`
-/

namespace A060373.P11322445304966372424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A117967 n + (n : ℤ)).toNat

end

end A060373.P11322445304966372424

namespace A060373

/-- `A244042(A117967(n)+n)` -/
def P11322445304966372424.Spec : Prop :=
  ∀ n, P11322445304966372424.a n = A060373 n

end A060373

/-!
# A060374: a(n)=p+q, where n=p-q and p, q, p+q are in A005836 (integers written without 2 in base 3).

The programs for A060374, the canonical program `A060374.P11457074353475961309` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060374 has offset 0).

The definition of A060374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060374.P11457074353475961309

`2*A060373(n)+n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060374

/-- `2*A060373(n)+n` -/
def P11457074353475961309.Spec : Prop :=
  ∀ n, P11457074353475961309.a n = A060374 n

theorem P11457074353475961309.correct : P11457074353475961309.Spec := by
  intro n
  simp only [A060374]

end A060374

/-! ## A060374.P8840735042942778938

`2*A060372(n)-n`
-/

namespace A060374.P8840735042942778938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060372 n - (n : ℤ)

end

end A060374.P8840735042942778938

namespace A060374

/-- `2*A060372(n)-n` -/
def P8840735042942778938.Spec : Prop :=
  ∀ n, P8840735042942778938.a n = A060374 n

theorem P8840735042942778938.correct : P8840735042942778938.Spec := by
  intro n
  simp only [A060374, Nat.add_sub_cancel, A060374.P8840735042942778938.a, A060374.P11457074353475961309.a, A060372, A060372.P4864824408191301632.a, A060373, A060373.P1941735290763042490.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060374

/-! ## A060374.P18009707522522869822

`A005843(A060373(n))+n`
-/

namespace A060374.P18009707522522869822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A060373 n).toNat + (n : ℤ)

end

end A060374.P18009707522522869822

namespace A060374

/-- `A005843(A060373(n))+n` -/
def P18009707522522869822.Spec : Prop :=
  ∀ n, P18009707522522869822.a n = A060374 n

end A060374

/-! ## A060374.P2636260178253557135

`A060373(n)+A060372(n)`
-/

namespace A060374.P2636260178253557135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + A060372 n

end

end A060374.P2636260178253557135

namespace A060374

/-- `A060373(n)+A060372(n)` -/
def P2636260178253557135.Spec : Prop :=
  ∀ n, P2636260178253557135.a n = A060374 n

theorem P2636260178253557135.correct : P2636260178253557135.Spec := by
  intro n
  simp only [A060374, Nat.add_sub_cancel, A060374.P2636260178253557135.a, A060374.P11457074353475961309.a, A060372, A060372.P4864824408191301632.a, A060373, A060373.P1941735290763042490.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060374

/-! ## A060374.P8704010938957770300

`A001489(n)+2*A060372(n)`
-/

namespace A060374.P8704010938957770300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A060372 n

end

end A060374.P8704010938957770300

namespace A060374

/-- `A001489(n)+2*A060372(n)` -/
def P8704010938957770300.Spec : Prop :=
  ∀ n, P8704010938957770300.a n = A060374 n

theorem P8704010938957770300.correct : P8704010938957770300.Spec := by
  intro n
  simp only [A060374, Nat.add_sub_cancel, A060374.P8704010938957770300.a, A060374.P11457074353475961309.a, A001489, A001489.P15233530513763566776.a, A060372, A060372.P4864824408191301632.a, A060373, A060373.P1941735290763042490.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060374

/-! ## A060374.P17029882308217018712

`A060372(A060372(n)-n)+A060372(n)`
-/

namespace A060374.P17029882308217018712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A060372 n - (n : ℤ)).toNat + A060372 n

end

end A060374.P17029882308217018712

namespace A060374

/-- `A060372(A060372(n)-n)+A060372(n)` -/
def P17029882308217018712.Spec : Prop :=
  ∀ n, P17029882308217018712.a n = A060374 n

end A060374

/-! ## A060374.P2086497652797667587

`A060372(n)-A001489(A060372(n)-n)`
-/

namespace A060374.P2086497652797667587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - A001489 (A060372 n - (n : ℤ)).toNat

end

end A060374.P2086497652797667587

namespace A060374

/-- `A060372(n)-A001489(A060372(n)-n)` -/
def P2086497652797667587.Spec : Prop :=
  ∀ n, P2086497652797667587.a n = A060374 n

end A060374

/-! ## A060374.P17795254053744996295

`A060372(n)-(A028310(n)-A060372(A028310(n)))`
-/

namespace A060374.P17795254053744996295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - (A028310 n - A060372 (A028310 n).toNat)

end

end A060374.P17795254053744996295

namespace A060374

/-- `A060372(n)-(A028310(n)-A060372(A028310(n)))` -/
def P17795254053744996295.Spec : Prop :=
  ∀ n, P17795254053744996295.a n = A060374 n

end A060374

/-! ## A060374.P5020811045077530091

`A300222(A117967(n))+n`
-/

namespace A060374.P5020811045077530091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A117967 n).toNat + (n : ℤ)

end

end A060374.P5020811045077530091

namespace A060374

/-- `A300222(A117967(n))+n` -/
def P5020811045077530091.Spec : Prop :=
  ∀ n, P5020811045077530091.a n = A060374 n

end A060374

/-! ## A060374.P1619099571320134666

`A117967(n)-A060373(n)`
-/

namespace A060374.P1619099571320134666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A060373 n

end

end A060374.P1619099571320134666

namespace A060374

/-- `A117967(n)-A060373(n)` -/
def P1619099571320134666.Spec : Prop :=
  ∀ n, P1619099571320134666.a n = A060374 n

end A060374

/-! ## A060374.P2322760003208460840

`A338246(A338246(n)+A060373(n))`
-/

namespace A060374.P2322760003208460840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A338246 n + A060373 n).toNat

end

end A060374.P2322760003208460840

namespace A060374

/-- `A338246(A338246(n)+A060373(n))` -/
def P2322760003208460840.Spec : Prop :=
  ∀ n, P2322760003208460840.a n = A060374 n

end A060374

/-! ## A060374.P17319986937504065746

`A338247(A338245(n)-A060373(n))`
-/

namespace A060374.P17319986937504065746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (A338245 n - A060373 n).toNat

end

end A060374.P17319986937504065746

namespace A060374

/-- `A338247(A338245(n)-A060373(n))` -/
def P17319986937504065746.Spec : Prop :=
  ∀ n, P17319986937504065746.a n = A060374 n

end A060374

/-! ## A060374.P3647211925666604594

`A060373(n)-A001489(A060373(n)+n)`
-/

namespace A060374.P3647211925666604594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n - A001489 (A060373 n + (n : ℤ)).toNat

end

end A060374.P3647211925666604594

namespace A060374

/-- `A060373(n)-A001489(A060373(n)+n)` -/
def P3647211925666604594.Spec : Prop :=
  ∀ n, P3647211925666604594.a n = A060374 n

end A060374

/-! ## A060374.P8117653953422777943

`A060372(A060372(n)-(n-A060372(n)))`
-/

namespace A060374.P8117653953422777943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A060372 n - ((n : ℤ) - A060372 n)).toNat

end

end A060374.P8117653953422777943

namespace A060374

/-- `A060372(A060372(n)-(n-A060372(n)))` -/
def P8117653953422777943.Spec : Prop :=
  ∀ n, P8117653953422777943.a n = A060374 n

end A060374

/-! ## A060374.P18184083511903460856

`A060372(A343317(n))`
-/

namespace A060374.P18184083511903460856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A343317 n).toNat

end

end A060374.P18184083511903460856

namespace A060374

/-- `A060372(A343317(n))` -/
def P18184083511903460856.Spec : Prop :=
  ∀ n, P18184083511903460856.a n = A060374 n

end A060374

/-! ## A060374.P8535241280385912801

`A005836(A343231(n)+1)`
-/

namespace A060374.P8535241280385912801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A343231 n + 1).toNat

end

end A060374.P8535241280385912801

namespace A060374

/-- `A005836(A343231(n)+1)` -/
def P8535241280385912801.Spec : Prop :=
  ∀ n, P8535241280385912801.a n = A060374 n

end A060374

/-! ## A060374.P7361228337833462540

`A008344(A343317(n)+1)`
-/

namespace A060374.P7361228337833462540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (A343317 n + 1).toNat

end

end A060374.P7361228337833462540

namespace A060374

/-- `A008344(A343317(n)+1)` -/
def P7361228337833462540.Spec : Prop :=
  ∀ n, P7361228337833462540.a n = A060374 n

end A060374

/-! ## A060374.P14486873546399831304

`A003278(A343231(n)+1)-1`
-/

namespace A060374.P14486873546399831304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A343231 n + 1).toNat - 1

end

end A060374.P14486873546399831304

namespace A060374

/-- `A003278(A343231(n)+1)-1` -/
def P14486873546399831304.Spec : Prop :=
  ∀ n, P14486873546399831304.a n = A060374 n

end A060374

/-! ## A060374.P11422183942051408353

`A005823(A343229(n)+1)+n`
-/

namespace A060374.P11422183942051408353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A343229 n + 1).toNat + (n : ℤ)

end

end A060374.P11422183942051408353

namespace A060374

/-- `A005823(A343229(n)+1)+n` -/
def P11422183942051408353.Spec : Prop :=
  ∀ n, P11422183942051408353.a n = A060374 n

end A060374

/-! ## A060374.P12398174660954878568

`A005823(A343228(n)+1)-n`
-/

namespace A060374.P12398174660954878568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A343228 n + 1).toNat - (n : ℤ)

end

end A060374.P12398174660954878568

namespace A060374

/-- `A005823(A343228(n)+1)-n` -/
def P12398174660954878568.Spec : Prop :=
  ∀ n, P12398174660954878568.a n = A060374 n

end A060374

/-!
# A060375: a(n) = (n+2)^(n+3) - n^(n+1).

The programs for A060375, the canonical program `A060375.P7635127481408880474` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060375 has offset 0).

The definition of A060375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^(n+3)-n^(n+1)` (program `A060375.P7635127481408880474`, by `A060375.P7635127481408880474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060375.P7635127481408880474

`(n+2)^(n+3)-n^(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060375

/-- `(n+2)^(n+3)-n^(n+1)` -/
def P7635127481408880474.Spec : Prop :=
  ∀ n, P7635127481408880474.a n = A060375 n

theorem P7635127481408880474.correct : P7635127481408880474.Spec := by
  intro n
  simp only [A060375]

end A060375

/-! ## A060375.P5163531752082606402

`Δ[A258388(n+1)]`
-/

namespace A060375.P5163531752082606402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P5163531752082606402

namespace A060375

/-- `Δ[A258388(n+1)]` -/
def P5163531752082606402.Spec : Prop :=
  ∀ n, P5163531752082606402.a n = A060375 n

theorem P5163531752082606402.correct : P5163531752082606402.Spec := by
  intro n
  simp only [A060375, Nat.add_sub_cancel, A060375.P5163531752082606402.f1, A060375.P5163531752082606402.a, A060375.P7635127481408880474.a, A258388, A258388.P8551760635502559725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060375

/-! ## A060375.P13920512632073608009

`record[Δ[A065440(A052938(n))]]`
-/

namespace A060375.P13920512632073608009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060375.P13920512632073608009

namespace A060375

/-- `record[Δ[A065440(A052938(n))]]` -/
def P13920512632073608009.Spec : Prop :=
  ∀ n, P13920512632073608009.a n = A060375 n

end A060375

/-! ## A060375.P9983479179771139053

`Δ[record[A258388(A008612(n))]]`
-/

namespace A060375.P9983479179771139053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258388 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P9983479179771139053

namespace A060375

/-- `Δ[record[A258388(A008612(n))]]` -/
def P9983479179771139053.Spec : Prop :=
  ∀ n, P9983479179771139053.a n = A060375 n

end A060375

/-! ## A060375.P17123504629850505415

`abs(A110567(n+2)-A110567(n))`
-/

namespace A060375.P17123504629850505415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110567 (n + 2) - A110567 n|

end

end A060375.P17123504629850505415

namespace A060375

/-- `abs(A110567(n+2)-A110567(n))` -/
def P17123504629850505415.Spec : Prop :=
  ∀ n, P17123504629850505415.a n = A060375 n

end A060375

/-! ## A060375.P601593586739420039

`Δ[A007778(n+1)+A007778(n)]`
-/

namespace A060375.P601593586739420039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) + A007778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P601593586739420039

namespace A060375

/-- `Δ[A007778(n+1)+A007778(n)]` -/
def P601593586739420039.Spec : Prop :=
  ∀ n, P601593586739420039.a n = A060375 n

theorem P601593586739420039.correct : P601593586739420039.Spec := by
  intro n
  simp only [A060375, Nat.add_sub_cancel, A060375.P601593586739420039.f1, A060375.P601593586739420039.a, A060375.P7635127481408880474.a, A007778, A007778.P16810824566142427032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060375

/-! ## A060375.P5020890119279077888

`Δ[A110567(n+1)+A110567(n)]`
-/

namespace A060375.P5020890119279077888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110567 (n + 1) + A110567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P5020890119279077888

namespace A060375

/-- `Δ[A110567(n+1)+A110567(n)]` -/
def P5020890119279077888.Spec : Prop :=
  ∀ n, P5020890119279077888.a n = A060375 n

theorem P5020890119279077888.correct : P5020890119279077888.Spec := by
  intro n
  simp only [A060375, Nat.add_sub_cancel, A060375.P5020890119279077888.f1, A060375.P5020890119279077888.a, A060375.P7635127481408880474.a, A110567, A110567.P2741788888723200647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060375

/-! ## A060375.P52096287530766916

`Δ[A322406(n+1)+A014293(n)]`
-/

namespace A060375.P52096287530766916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322406 (n + 1) + A014293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P52096287530766916

namespace A060375

/-- `Δ[A322406(n+1)+A014293(n)]` -/
def P52096287530766916.Spec : Prop :=
  ∀ n, P52096287530766916.a n = A060375 n

theorem P52096287530766916.correct : P52096287530766916.Spec := by
  intro n
  simp only [A060375, Nat.add_sub_cancel, A060375.P52096287530766916.f1, A060375.P52096287530766916.a, A060375.P7635127481408880474.a, A014293, A014293.P337674095265761513.a, A322406, A322406.P3130492305728550951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060375

/-! ## A060375.P12043462097704955593

`Δ[A345360(n)+A322406(n+1)]`
-/

namespace A060375.P12043462097704955593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345360 n + A322406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060375.P12043462097704955593

namespace A060375

/-- `Δ[A345360(n)+A322406(n+1)]` -/
def P12043462097704955593.Spec : Prop :=
  ∀ n, P12043462097704955593.a n = A060375 n

theorem P12043462097704955593.correct : P12043462097704955593.Spec := by
  intro n
  simp only [A060375, Nat.add_sub_cancel, A060375.P12043462097704955593.f1, A060375.P12043462097704955593.a, A060375.P7635127481408880474.a, A322406, A322406.P3130492305728550951.a, A345360, A345360.P9024215343825180112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060375

/-!
# A060376: If 10^n can be written as x*y where the digits of x and y are all nonzero, then let a(n) = smallest such x, otherwise a(n) = -1.

The programs for A060376, there is no canonical definition to state claims against.
-/

/-! ## A060376.P10726262394598009499

`or(A060391(n)%5, A000079(n))`
-/

namespace A060376.P10726262394598009499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A060391 n) 5) (A000079 n)

end

end A060376.P10726262394598009499

/-!
# A060378: Even-odd sieve.

The programs for A060378, there is no canonical definition to state claims against.
-/

/-! ## A060378.P16588666435804357283

`∑[A179651(A026531(n)+1)]`
-/

namespace A060378.P16588666435804357283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (A026531 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060378.P16588666435804357283

/-! ## A060378.P6908433101179912552

`A336643(((n+4)²+n)*2^(n-2)-3)+A219608(n+1)`
-/

namespace A060378.P6908433101179912552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (SequenceMachineLib.roundAway (((n + 4) ^ 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 3)).toNat + A219608 (n + 1)

end

end A060378.P6908433101179912552

/-! ## A060378.P13644468760578993721

`eq[A049501(n), A160163(A001316(n))]`
-/

namespace A060378.P13644468760578993721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160163 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060378.P13644468760578993721

/-! ## A060378.P11120022896254640316

`A219608(n+1)+A096669(A108467(n))`
-/

namespace A060378.P11120022896254640316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1) + A096669 (A108467 n).toNat

end

end A060378.P11120022896254640316

/-! ## A060378.P9192993758418499685

`∑[A296078(A032275(n+1))]`
-/

namespace A060378.P9192993758418499685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (A032275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060378.P9192993758418499685

/-!
# A060379: Number of self-avoiding polygons on the 2-dimensional square lattice with perimeter 2n with at most 4 horizontal edges in each vertical cross-section.

The programs for A060379, there is no canonical definition to state claims against.
-/

/-! ## A060379.P1388122738018776943

`A004719(A002931(n+2))`
-/

namespace A060379.P1388122738018776943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A002931 (n + 2)).toNat

end

end A060379.P1388122738018776943

/-! ## A060379.P10934276171622446685

`A002931(A028430(n+2))`
-/

namespace A060379.P10934276171622446685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (A028430 (n + 2)).toNat

end

end A060379.P10934276171622446685

/-! ## A060379.P4573272692381382782

`A002931(A119764((n+2)²))`
-/

namespace A060379.P4573272692381382782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002931 (A119764 ((n + 2) ^ 2)).toNat

end

end A060379.P4573272692381382782

/-!
# A060380: Let f(m) = smallest prime that divides k^2 + k + m for k = 0,1,2,...; sequence gives smallest m >= 2 such that f(m) is the n-th prime, or -1 if no such m exists.

The programs for A060380, there is no canonical definition to state claims against.
-/

/-! ## A060380.P4798715809192960679

`A060392(n+1)+2*C(n, n²)`
-/

namespace A060380.P4798715809192960679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060392 (n + 1) + (2 * Nat.choose n (n ^ 2) : ℤ)

end

end A060380.P4798715809192960679

/-! ## A060380.P16041121468869817765

`or(A121373(n)+1, A060392(n+1))`
-/

namespace A060380.P16041121468869817765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121373 n + 1) (A060392 (n + 1))

end

end A060380.P16041121468869817765

/-! ## A060380.P12401780213136543256

`or(gcd(2, A005666(n)), A060392(n+1))`
-/

namespace A060380.P12401780213136543256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 2 (A005666 n) : ℤ) (A060392 (n + 1))

end

end A060380.P12401780213136543256

/-! ## A060380.P2727585991855159671

`A060392(n+1)+A000122(∑[∑{d}[n+1, #]])`
-/

namespace A060380.P2727585991855159671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060392 (n + 1) + A000122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060380.P2727585991855159671

/-! ## A060380.P6306168199332116206

`or(A014963(4*C(n, 2)+2), A060392(n+1))`
-/

namespace A060380.P6306168199332116206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (4 * Nat.choose n 2 + 2)) (A060392 (n + 1))

end

end A060380.P6306168199332116206

/-!
# A060381: a(n) = prime(n)*prime(n+1)*...*prime(2*n-1), where prime(i) is the i-th prime.

The programs for A060381, there is no canonical definition to state claims against.
-/

/-! ## A060381.P11203178147333272848

`A019565(A006516(n))`
-/

namespace A060381.P11203178147333272848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A006516 n).toNat

end

end A060381.P11203178147333272848

/-! ## A060381.P1450341173474452440

`A096334(A004273(n²))`
-/

namespace A060381.P1450341173474452440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A004273 (n ^ 2)).toNat

end

end A060381.P1450341173474452440

/-! ## A060381.P16544880951915087248

`A096334(A163985(n²))`
-/

namespace A060381.P16544880951915087248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A163985 (n ^ 2)).toNat

end

end A060381.P16544880951915087248

/-! ## A060381.P11931898485870432177

`record[A096334(A213037(n))]`
-/

namespace A060381.P11931898485870432177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A213037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060381.P11931898485870432177

/-! ## A060381.P7918008968286829570

`A096334(A132209(n)-2*n)`
-/

namespace A060381.P7918008968286829570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (A132209 n - (2 * n : ℤ)).toNat

end

end A060381.P7918008968286829570

/-!
# A060383: a(1) = a(2) = 1; for n >2, a(n) = smallest prime factor of n-th Fibonacci number.

The programs for A060383, there is no canonical definition to state claims against.
-/

/-! ## A060383.P3600831959932472978

`A020639(A000045(n+1))`
-/

namespace A060383.P3600831959932472978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000045 (n + 1)).toNat

end

end A060383.P3600831959932472978

/-! ## A060383.P4359016835521898432

`A133021(eq[1, A133021(n+1)]+2)`
-/

namespace A060383.P4359016835521898432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A060383.P4359016835521898432

/-! ## A060383.P17456442342306983401

`A133021(lt[A133021(n+1), 2]+2)`
-/

namespace A060383.P17456442342306983401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A060383.P17456442342306983401

/-! ## A060383.P12278853133832756854

`A133021(record[n+3-A133021(n+1)])`
-/

namespace A060383.P12278853133832756854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A133021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060383.P12278853133832756854

/-! ## A060383.P4457499048954001888

`A133021(record[(n+1)/A133021(n+1)+1])`
-/

namespace A060383.P4457499048954001888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A133021 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A060383.P4457499048954001888

/-!
# A060384: Number of decimal digits in n-th Fibonacci number.

The programs for A060384, there is no canonical definition to state claims against.
-/

/-! ## A060384.P13481307048618477215

`∑[char[A072354(n+2)]]+1`
-/

namespace A060384.P13481307048618477215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060384.P13481307048618477215

/-! ## A060384.P9276261451080892279

`∑[char[A164018(2*n+1)]]`
-/

namespace A060384.P9276261451080892279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164018 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060384.P9276261451080892279

/-! ## A060384.P5439967469920757749

`∑{digits}[A000045(n), (#%2)!]`
-/

namespace A060384.P5439967469920757749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A060384.P5439967469920757749

/-! ## A060384.P10731924165032598432

`∑{digits}[A000045(n), A014620(#)]`
-/

namespace A060384.P10731924165032598432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014620 x).sum

end

end A060384.P10731924165032598432

/-! ## A060384.P17821976659901658415

`∑{digits}[A000045(n), A015130(#)]`
-/

namespace A060384.P17821976659901658415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A060384.P17821976659901658415

/-! ## A060384.P5705515752177998232

`∑{digits}[A000045(n), A036370(#)]`
-/

namespace A060384.P5705515752177998232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A060384.P5705515752177998232

/-! ## A060384.P10648296258356417421

`∑{digits}[A000045(n), A055642(#)]`
-/

namespace A060384.P10648296258356417421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A060384.P10648296258356417421

/-! ## A060384.P537923812284708946

`∑{digits}[A000045(n), A105591(#)]`
-/

namespace A060384.P537923812284708946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A105591 x).sum

end

end A060384.P537923812284708946

/-! ## A060384.P11033035259272558704

`∑{digits}[A000045(n), A212389(#)]`
-/

namespace A060384.P11033035259272558704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A212389 x).sum

end

end A060384.P11033035259272558704

/-! ## A060384.P10436624371006525099

`∑{digits}[A000045(n), A228710(#)]`
-/

namespace A060384.P10436624371006525099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A228710 x).sum

end

end A060384.P10436624371006525099

/-! ## A060384.P7422732361083458781

`∑{digits}[A000045(n), A027052(#²)]`
-/

namespace A060384.P7422732361083458781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A027052 (x ^ 2)).sum

end

end A060384.P7422732361083458781

/-! ## A060384.P3009029496347279700

`∑{digits}[A141325(n), A014577(#²)]`
-/

namespace A060384.P3009029496347279700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014577 (x ^ 2)).sum

end

end A060384.P3009029496347279700

/-! ## A060384.P16534664119189808121

`∑{digits}[A000045(n), A011856(#)+1]`
-/

namespace A060384.P16534664119189808121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011856 x + 1).sum

end

end A060384.P16534664119189808121

/-! ## A060384.P6787967216646403383

`∑{digits}[A000045(n), A025437(#)+1]`
-/

namespace A060384.P6787967216646403383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025437 x + 1).sum

end

end A060384.P6787967216646403383

/-! ## A060384.P4259195720272841511

`∑{digits}[A000045(n), A133707(#+1)]`
-/

namespace A060384.P4259195720272841511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A133707 (x + 1)).sum

end

end A060384.P4259195720272841511

/-! ## A060384.P16973698184978645683

`∑{digits}[A000045(n), A059841(2*#)]`
-/

namespace A060384.P16973698184978645683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059841 (2 * x)).sum

end

end A060384.P16973698184978645683

/-! ## A060384.P15187310228803628128

`∑{digits}[A103609(2*n), A014802(#)]`
-/

namespace A060384.P15187310228803628128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014802 x).sum

end

end A060384.P15187310228803628128

/-! ## A060384.P16014626184075776497

`∑{digits}[A103609(2*n), A015130(#)]`
-/

namespace A060384.P16014626184075776497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A060384.P16014626184075776497

/-! ## A060384.P16546882920853692416

`∑{digits}[A103609(2*n), A065648(#)]`
-/

namespace A060384.P16546882920853692416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065648 x).sum

end

end A060384.P16546882920853692416

/-! ## A060384.P18334854180010496049

`∑{digits}[A000045(n), A211096(2*#)]`
-/

namespace A060384.P18334854180010496049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A211096 (2 * x)).sum

end

end A060384.P18334854180010496049

/-!
# A060385: Largest prime factor of n-th Fibonacci number.

The programs for A060385, there is no canonical definition to state claims against.
-/

/-! ## A060385.P14360575664716076320

`A006530(A061446(n+3))`
-/

namespace A060385.P14360575664716076320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061446 (n + 3)).toNat

end

end A060385.P14360575664716076320

/-! ## A060385.P13585787229208240942

`A006530(A280690(n+3))`
-/

namespace A060385.P13585787229208240942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A280690 (n + 3)).toNat

end

end A060385.P13585787229208240942

/-! ## A060385.P2831917130121747052

`A006530(ratio[A035105(n+2)])`
-/

namespace A060385.P2831917130121747052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A060385.P2831917130121747052

/-! ## A060385.P943648462120390720

`p?[A088387(A061446(n+1))]`
-/

namespace A060385.P943648462120390720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A061446 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060385.P943648462120390720

/-! ## A060385.P10917841582238696082

`A006530(Δ[ceil(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A060385.P10917841582238696082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A060385.P10917841582238696082

/-!
# A060386: In base ten, we try to get the digits 0,1,2,3,...,9,0,1,2,3,... in order only using primes and each time choosing the smallest prime that will give the desired digit.

The programs for A060386, there is no canonical definition to state claims against.
-/

/-! ## A060386.P6624866375465630443

`A062584(A010879(n)*A060398(3*(n+1)))`
-/

namespace A060386.P6624866375465630443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A010879 n * A060398 (3 * (n + 1))).toNat

end

end A060386.P6624866375465630443

/-!
# A060387: Numbers k such that x^4 + y^4 = k * z^4 is solvable in nonzero integers x,y,z.

The programs for A060387, there is no canonical definition to state claims against.
-/

/-! ## A060387.P1169145951065431269

`∪[A003336(n+1), A209431(n+1)]`
-/

namespace A060387.P1169145951065431269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060387.P1169145951065431269

/-! ## A060387.P3500237938723235138

`∪[A003336(n+1), A206399(A357631(n+2))]`
-/

namespace A060387.P3500237938723235138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206399 (A357631 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060387.P3500237938723235138

/-!
# A060389: a(1)=p_1, a(2)=p_1 + p_1*p_2, a(3)=p_1 + p_1*p_2 + p_1*p_2*p_3, ... where p_i is the i-th prime.

The programs for A060389, there is no canonical definition to state claims against.
-/

/-! ## A060389.P15678863235432081250

`A084737(n+3)-2`
-/

namespace A060389.P15678863235432081250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084737 (n + 3) - 2

end

end A060389.P15678863235432081250

/-! ## A060389.P323680034055948747

`A002110(n-1)*A286624(n)+a(n-3)` with `a(0)=2, a(1)=8, a(2)=38`
-/

namespace A060389.P323680034055948747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 38] fun n a =>
  A002110 (n - 1) * A286624 n + a (n - 3)

end

end A060389.P323680034055948747

/-! ## A060389.P12909694565664820919

`∑[∏[p?[comp[n²]]]]`
-/

namespace A060389.P12909694565664820919
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060389.P12909694565664820919

/-! ## A060389.P13339328317384623945

`∑[∏[p?[xor(1, n)]]]-1`
-/

namespace A060389.P13339328317384623945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A060389.P13339328317384623945

/-! ## A060389.P14655354784871014432

`∑[∏[record[∑{p}[n+2, #]]]]`
-/

namespace A060389.P14655354784871014432
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060389.P14655354784871014432

/-! ## A060389.P17720617087188110972

`∑[A002110(n+1)]`
-/

namespace A060389.P17720617087188110972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060389.P17720617087188110972

/-! ## A060389.P1005867901489395431

`∑[A231209(n)]+1`
-/

namespace A060389.P1005867901489395431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060389.P1005867901489395431

/-! ## A060389.P8784834818384558741

`A217723(n+1)+1`
-/

namespace A060389.P8784834818384558741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217723 (n + 1) + 1

end

end A060389.P8784834818384558741

/-! ## A060389.P370125799536618392

`A143293(n+1)-1`
-/

namespace A060389.P370125799536618392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 (n + 1) - 1

end

end A060389.P370125799536618392

/-! ## A060389.P8787645531738378412

`∑[∑[A061720(n)]+1]`
-/

namespace A060389.P8787645531738378412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060389.P8787645531738378412

/-!
# A060390: Fibonacci sieve: using Fibonacci numbers, strike out every 2nd, 3rd, 5th, 8th, 13th, 21st, 34th... of those remaining.

The programs for A060390, there is no canonical definition to state claims against.
-/

/-! ## A060390.P12579295669139135641

`A108362(A104177(n+1))`
-/

namespace A060390.P12579295669139135641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (A104177 (n + 1)).toNat

end

end A060390.P12579295669139135641

/-! ## A060390.P5306515398952265980

`A000045(A104177(n+1)-1)`
-/

namespace A060390.P5306515398952265980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A104177 (n + 1) - 1).toNat

end

end A060390.P5306515398952265980

/-! ## A060390.P9127915881912071826

`A212804(or(1, A104177(n+1)))`
-/

namespace A060390.P9127915881912071826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Int.lor 1 (A104177 (n + 1))).toNat

end

end A060390.P9127915881912071826

/-! ## A060390.P8919761049876397148

`A000045(xor(1, A104177(n+1)))`
-/

namespace A060390.P8919761049876397148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 (A104177 (n + 1))).toNat

end

end A060390.P8919761049876397148

/-! ## A060390.P14883222831586747098

`A212804(A104177(comp[2*n]-n))`
-/

namespace A060390.P14883222831586747098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A104177 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A060390.P14883222831586747098

/-!
# A060391: If 10^n can be written as x*y where the digits of x and y are all nonzero, then let a(n) = largest such y, otherwise a(n) = -1.

The programs for A060391, there is no canonical definition to state claims against.
-/

/-! ## A060391.P18378613388860802909

`or(A060376(n)%2, A000351(n))`
-/

namespace A060391.P18378613388860802909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A060376 n) 2) (A000351 n)

end

end A060391.P18378613388860802909

/-!
# A060392: Let f(m) = smallest prime that divides k^2 + k + m for k = 0,1,2,...; sequence gives smallest m >= 0 such that f(m) is the n-th prime.

The programs for A060392, there is no canonical definition to state claims against.
-/

/-! ## A060392.P3157284953398716767

`n^a(floor(acot(n)))*A060380(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A060392.P3157284953398716767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℝ) ^ (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat) * (A060380 (n + 1) : ℝ)

end

end A060392.P3157284953398716767

/-! ## A060392.P10511087004419409636

`A060380(n+1)%A024028(n)`
-/

namespace A060392.P10511087004419409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060380 (n + 1)) (A024028 n)

end

end A060392.P10511087004419409636

/-! ## A060392.P17459861804004571359

`and(A060380(n+1), A134824(n))`
-/

namespace A060392.P17459861804004571359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060380 (n + 1)) (A134824 n)

end

end A060392.P17459861804004571359

/-! ## A060392.P2186421393690697902

`and(A060380(n+1), A260196(n))`
-/

namespace A060392.P2186421393690697902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060380 (n + 1)) (A260196 n)

end

end A060392.P2186421393690697902

/-! ## A060392.P631657247534677766

`and(A060380(n+1), A267938(n))`
-/

namespace A060392.P631657247534677766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060380 (n + 1)) (A267938 n)

end

end A060392.P631657247534677766

/-!
# A060393: Values of k associated with A060380.

The programs for A060393, there is no canonical definition to state claims against.
-/

/-! ## A060393.P13102569401126971995

`A060394(n+1)%n!`
-/

namespace A060393.P13102569401126971995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060394 (n + 1)) (Nat.factorial n : ℤ)

end

end A060393.P13102569401126971995

/-! ## A060393.P5815119579712931904

`A060394(floor(n-atan(n))+3)`
-/

namespace A060393.P5815119579712931904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 3).toNat

end

end A060393.P5815119579712931904

/-! ## A060393.P16979236226351409412

`A060394(round(acot(n)+n)+1)`
-/

namespace A060393.P16979236226351409412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

end

end A060393.P16979236226351409412

/-! ## A060393.P2434680839548505367

`A060394(C(2, n+1)+n+1)`
-/

namespace A060393.P2434680839548505367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (Nat.choose 2 (n + 1) + (n + 1))

end

end A060393.P2434680839548505367

/-! ## A060393.P14067101511866728119

`A060394(xor(2, ceil(atan(n)))+n+1)`
-/

namespace A060393.P14067101511866728119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (Int.xor 2 ⌈Real.arctan (n : ℝ)⌉ + (n + 1 : ℤ)).toNat

end

end A060393.P14067101511866728119

/-! ## A060393.P3157223874789216374

`A060394(A233583(n+1)+1)`
-/

namespace A060393.P3157223874789216374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (A233583 (n + 1) + 1).toNat

end

end A060393.P3157223874789216374

/-! ## A060393.P1198038450961892758

`A060394(n+1)*A157928(n)`
-/

namespace A060393.P1198038450961892758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (n + 1) * A157928 n

end

end A060393.P1198038450961892758

/-! ## A060393.P17093990167184209762

`A060394(A004275(n)+3-n)`
-/

namespace A060393.P17093990167184209762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060394 (A004275 n + (3 - (n : ℤ))).toNat

end

end A060393.P17093990167184209762

/-! ## A060393.P13059123144157246523

`and(A005666(n), A060394(n+1))`
-/

namespace A060393.P13059123144157246523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005666 n) (A060394 (n + 1))

end

end A060393.P13059123144157246523

/-! ## A060393.P15555088216411680399

`and(A010737(n), A060394(n+1))`
-/

namespace A060393.P15555088216411680399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A060394 (n + 1))

end

end A060393.P15555088216411680399

/-!
# A060394: Values of k associated with A060392.

The programs for A060394, there is no canonical definition to state claims against.
-/

/-! ## A060394.P4624007105401895783

`A060393(n+1)+char[n^6]`
-/

namespace A060394.P4624007105401895783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060393 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060394.P4624007105401895783

/-! ## A060394.P11539320415774595937

`or(A010057(n), A060393(n+1))`
-/

namespace A060394.P11539320415774595937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A060393 (n + 1))

end

end A060394.P11539320415774595937

/-! ## A060394.P11361965067959785438

`or(A036987(n), A060393(n+1))`
-/

namespace A060394.P11361965067959785438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A060393 (n + 1))

end

end A060394.P11361965067959785438

/-! ## A060394.P5242206473961653431

`or(Δ[A072643(n)], A060393(n+1))`
-/

namespace A060394.P5242206473961653431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A060393 (n + 1))

end

end A060394.P5242206473961653431

/-! ## A060394.P17660551410860104960

`or(char[A000225(n)], A060393(n+1))`
-/

namespace A060394.P17660551410860104960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A060393 (n + 1))

end

end A060394.P17660551410860104960

/-! ## A060394.P5179042806383921250

`or(char[A000578(n)], A060393(n+1))`
-/

namespace A060394.P5179042806383921250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A060393 (n + 1))

end

end A060394.P5179042806383921250

/-! ## A060394.P4376887564117570303

`or(char[A002412(n)], A060393(n+1))`
-/

namespace A060394.P4376887564117570303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A060393 (n + 1))

end

end A060394.P4376887564117570303

/-! ## A060394.P15355512179570513144

`xor(A019590(n+1), A060393(n+1))`
-/

namespace A060394.P15355512179570513144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A060393 (n + 1))

end

end A060394.P15355512179570513144

/-! ## A060394.P14357390211623657320

`gcd(A000045(C(2, n²)), A060393(n+1))`
-/

namespace A060394.P14357390211623657320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (Nat.choose 2 (n ^ 2))) (A060393 (n + 1))

end

end A060394.P14357390211623657320

/-! ## A060394.P2241564571606471689

`gcd(A008683(A006501(n)), A060393(n+1))`
-/

namespace A060394.P2241564571606471689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A006501 n).toNat) (A060393 (n + 1))

end

end A060394.P2241564571606471689

/-!
# A060395: Smallest prime that divides k^2 + k + n for k = 0, 1, 2, ....

The programs for A060395, there is no canonical definition to state claims against.
-/

/-! ## A060395.P3212616635817037364

`A020639(lcm(n+6, (n+2)*or(1, n)))`
-/

namespace A060395.P3212616635817037364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lcm (n + 6) ((n + 2) * Nat.lor 1 n))

end

end A060395.P3212616635817037364

/-! ## A060395.P15046436453992584412

`A020639(lcm(n+6, A132411(n+1)))`
-/

namespace A060395.P15046436453992584412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (n + 6 : ℤ) (A132411 (n + 1)))

end

end A060395.P15046436453992584412

/-! ## A060395.P6428375605518306984

`A020639((n+6)*A081350(n+1))`
-/

namespace A060395.P6428375605518306984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 6 : ℤ) * A081350 (n + 1)).toNat

end

end A060395.P6428375605518306984

/-! ## A060395.P3235218892259000828

`A020639(A000096(2*(n+2))*A093178(n))`
-/

namespace A060395.P3235218892259000828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000096 (2 * (n + 2)) * A093178 n).toNat

end

end A060395.P3235218892259000828

/-! ## A060395.P13079790439958013782

`A020639(A000040(n+1)*A035106(2*n+1))`
-/

namespace A060395.P13079790439958013782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) * A035106 (2 * n + 1)).toNat

end

end A060395.P13079790439958013782

/-!
# A060396: Values of k associated with A060395.

The programs for A060396, there is no canonical definition to state claims against.
-/

/-! ## A060396.P1585230656642621812

`A060398(A057979(n))+A003982(2*n²)`
-/

namespace A060396.P1585230656642621812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A057979 n).toNat + A003982 (2 * n ^ 2)

end

end A060396.P1585230656642621812

/-! ## A060396.P3456457850170694920

`A060398(A057979(n))+A000007(n²)`
-/

namespace A060396.P3456457850170694920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A057979 n).toNat + A000007 (n ^ 2)

end

end A060396.P3456457850170694920

/-! ## A060396.P16347274040584558389

`A060398(xor(A000007(n²), A057979(n)))`
-/

namespace A060396.P16347274040584558389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (Int.xor (A000007 (n ^ 2)) (A057979 n)).toNat

end

end A060396.P16347274040584558389

/-! ## A060396.P15197483990399505907

`A060398(A057979(n))-A057427(A130250(n²))+1`
-/

namespace A060396.P15197483990399505907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A057979 n).toNat - A057427 (A130250 (n ^ 2)).toNat + 1

end

end A060396.P15197483990399505907

/-! ## A060396.P5960221611230626336

`A060398(A057979(n))+A004016(2*n²)`
-/

namespace A060396.P5960221611230626336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A057979 n).toNat + A004016 (2 * n ^ 2)

end

end A060396.P5960221611230626336

/-! ## A060396.P2653873691639430761

`C(A060398(A057979(n)), A330834(n²+1)-2)`
-/

namespace A060396.P2653873691639430761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060398 (A057979 n).toNat).toNat (A330834 (n ^ 2 + 1) - 2).toNat

end

end A060396.P2653873691639430761

/-!
# A060397: Smallest prime that divides k^2 + k + 2n + 1 for k = 0,1,2,....

The programs for A060397, there is no canonical definition to state claims against.
-/

/-! ## A060397.P3298470486685097829

`filter[A060395(n), A137161(#)]`
-/

namespace A060397.P3298470486685097829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A060397.P3298470486685097829

/-! ## A060397.P12503400758033103584

`filter[A060395(n), A162549(#)]`
-/

namespace A060397.P12503400758033103584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162549 (f1 j).toNat = 1) n)

end

end A060397.P12503400758033103584

/-! ## A060397.P11911587028280494434

`A097449(A060395(2*n+1))`
-/

namespace A060397.P11911587028280494434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A060395 (2 * n + 1)).toNat

end

end A060397.P11911587028280494434

/-! ## A060397.P1586896402305085983

`A000196(A060395(2*n+1)²)`
-/

namespace A060397.P1586896402305085983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P1586896402305085983

/-! ## A060397.P10742345477335242955

`A008472(A060395(2*n+1)²)`
-/

namespace A060397.P10742345477335242955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P10742345477335242955

/-! ## A060397.P4887835871636128164

`A033677(A060395(2*n+1)²)`
-/

namespace A060397.P4887835871636128164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P4887835871636128164

/-! ## A060397.P16916093721200828589

`A048146(A060395(2*n+1)²)`
-/

namespace A060397.P16916093721200828589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P16916093721200828589

/-! ## A060397.P5790080433080289192

`A073890(A060395(2*n+1)²)`
-/

namespace A060397.P5790080433080289192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073890 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P5790080433080289192

/-! ## A060397.P9871130547330719418

`A083346(A060395(2*n+1)²)`
-/

namespace A060397.P9871130547330719418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P9871130547330719418

/-! ## A060397.P16163538257204131638

`A099636(A060395(2*n+1)²)`
-/

namespace A060397.P16163538257204131638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P16163538257204131638

/-! ## A060397.P9249884184231811003

`A006530(A060395(2*n+1)^2)`
-/

namespace A060397.P9249884184231811003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P9249884184231811003

/-! ## A060397.P6289872962384610942

`A020639(A060395(2*n+1)^2)`
-/

namespace A060397.P6289872962384610942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P6289872962384610942

/-! ## A060397.P592695451242521800

`filter[A060395(2*n+1), A089829(#)]`
-/

namespace A060397.P592695451242521800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A060397.P592695451242521800

/-! ## A060397.P2060612215588281286

`filter[A060395(2*n+1), A089939(#)]`
-/

namespace A060397.P2060612215588281286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A060397.P2060612215588281286

/-! ## A060397.P14834502362518525014

`A197862(A060395(record[(n+1)/2^val(n+1, 2)]))`
-/

namespace A060397.P14834502362518525014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197862 (A060395 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A060397.P14834502362518525014

/-! ## A060397.P9012417408203079305

`A109814(A060395(2*n+1)*A060395(2*n+1))`
-/

namespace A060397.P9012417408203079305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A060395 (2 * n + 1) * A060395 (2 * n + 1)).toNat

end

end A060397.P9012417408203079305

/-! ## A060397.P480026811337478756

`A060395(2*n+1)-A010816(A060395(2*n+1)²)`
-/

namespace A060397.P480026811337478756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (2 * n + 1) - A010816 (A060395 (2 * n + 1) ^ 2).toNat

end

end A060397.P480026811337478756

/-! ## A060397.P17064728625207939963

`A060395(2*n+1)+A000007(A003959(3*n+5))`
-/

namespace A060397.P17064728625207939963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (2 * n + 1) + A000007 (A003959 (3 * n + 5)).toNat

end

end A060397.P17064728625207939963

/-! ## A060397.P17257056415388105306

`A060395(2*n+1)*A359374(A329369(3*n))`
-/

namespace A060397.P17257056415388105306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (2 * n + 1) * A359374 (A329369 (3 * n)).toNat

end

end A060397.P17257056415388105306

/-!
# A060398: Values of k associated with A060397.

The programs for A060398, there is no canonical definition to state claims against.
-/

/-! ## A060398.P1052084049503046869

`A060396(2*n+1)+A010054(A141883(n+1))`
-/

namespace A060398.P1052084049503046869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + A010054 (A141883 (n + 1)).toNat

end

end A060398.P1052084049503046869

/-! ## A060398.P3662355164566896855

`A060396(2*n+1)*A318827(A282322(2*n+5))`
-/

namespace A060398.P3662355164566896855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) * A318827 (A282322 (2 * n + 5)).toNat

end

end A060398.P3662355164566896855

/-! ## A060398.P10367615698751313830

`A060396(2*A003056(∑[n])+1)`
-/

namespace A060398.P10367615698751313830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * A003056 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A060398.P10367615698751313830

/-! ## A060398.P4674932010649606770

`A060396(A051162(∑[n]+n)+1)`
-/

namespace A060398.P4674932010649606770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (A051162 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1).toNat

end

end A060398.P4674932010649606770

/-! ## A060398.P8318794281923519947

`A060396(2*n+1)+A010054(A167614(n+5))`
-/

namespace A060398.P8318794281923519947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + A010054 (A167614 (n + 5)).toNat

end

end A060398.P8318794281923519947

/-! ## A060398.P16228181862197556519

`A060396(2*n+1)+A060396(A060378(3*n+2))`
-/

namespace A060398.P16228181862197556519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + A060396 (A060378 (3 * n + 2)).toNat

end

end A060398.P16228181862197556519

/-! ## A060398.P16565045878822447546

`A060396(2*n+1)+A010054(A097443(3*n+4))`
-/

namespace A060398.P16565045878822447546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + A010054 (A097443 (3 * n + 4)).toNat

end

end A060398.P16565045878822447546

/-! ## A060398.P14482255796406786790

`A060396(2*n+1)+and(A060396(2*n), A179362(2*(n+1)))`
-/

namespace A060398.P14482255796406786790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + Int.land (A060396 (2 * n)) (A179362 (2 * (n + 1)))

end

end A060398.P14482255796406786790

/-! ## A060398.P8418436858145754377

`A060396(2*n+1)+and(A036447(2*n+1), A060396(2*n))`
-/

namespace A060398.P8418436858145754377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n + 1) + Int.land (A036447 (2 * n + 1)) (A060396 (2 * n))

end

end A060398.P8418436858145754377

/-!
# A060399: In base ten, we try to get the digits 1,2,3,...,9,0,1,2,3,... in order only using a sequence of increasing primes and each time choosing the smallest prime that will give the desired digit.

The programs for A060399, there is no canonical definition to state claims against.
-/

/-! ## A060399.P6873581645671409053

`p?[A001043(n+1)-A117446(A096796(n))]`
-/

namespace A060399.P6873581645671409053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A117446 (A096796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060399.P6873581645671409053

/-! ## A060399.P5714490667586092004

`A030665(n+1)-A249421(A364463(n))`
-/

namespace A060399.P5714490667586092004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (n + 1) - A249421 (A364463 n).toNat

end

end A060399.P5714490667586092004

