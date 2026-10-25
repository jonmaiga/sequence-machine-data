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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
# A096300: Number of positive integers <= n with no prime factor > log(n).

The programs for A096300, there is no canonical definition to state claims against.
-/

/-! ## A096300.P16248132699347223206

`A333534(abs(2-n)+3)`
-/

namespace A096300.P16248132699347223206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333534 (|2 - (n : ℤ)| + 3).toNat

end

end A096300.P16248132699347223206

/-!
# A096301: Product of nonzero digits(sum of digits(n^n)).

The programs for A096301, there is no canonical definition to state claims against.
-/

/-! ## A096301.P587199602713241776

`∏{digits}[A066588(n+1), A028310(#)]`
-/

namespace A096301.P587199602713241776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).prod

end

end A096301.P587199602713241776

/-! ## A096301.P5807404562856711459

`∏{digits}[A066588(n+1), A214950(#)]`
-/

namespace A096301.P5807404562856711459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A214950 x).prod

end

end A096301.P5807404562856711459

/-! ## A096301.P11698054624491273421

`∏{digits}[A066588(n+1), A219209(#)]`
-/

namespace A096301.P11698054624491273421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A219209 x).prod

end

end A096301.P11698054624491273421

/-! ## A096301.P250167618403619755

`A051801(A066588(n+1))`
-/

namespace A096301.P250167618403619755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A066588 (n + 1)).toNat

end

end A096301.P250167618403619755

/-! ## A096301.P6822769982350549819

`A007954(A066588(n+1)%A232776(n+1))`
-/

namespace A096301.P6822769982350549819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.tmod (A066588 (n + 1)) (A232776 (n + 1))).toNat

end

end A096301.P6822769982350549819

/-!
# A096302: Number of combinations of two natural numbers that together have n digits.

The programs for A096302, the canonical program `A096302.P7819595748364529016` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096302 has offset 2).

The definition of A096302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096302.P7819595748364529016

`81*(n+1)*10^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096302

/-- `81*(n+1)*10^n` -/
def P7819595748364529016.Spec : Prop :=
  ∀ n, (P7819595748364529016.a n : ℤ) = A096302 (n + 2)

theorem P7819595748364529016.correct : P7819595748364529016.Spec := by
  intro n
  simp only [A096302, Nat.add_sub_cancel]

end A096302

/-! ## A096302.P12495631471327597195

`Δ[9*A033713(n+1)]`
-/

namespace A096302.P12495631471327597195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A033713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096302.P12495631471327597195

namespace A096302

/-- `Δ[9*A033713(n+1)]` -/
def P12495631471327597195.Spec : Prop :=
  ∀ n, P12495631471327597195.a n = A096302 (n + 2)

end A096302

/-! ## A096302.P3482208622528599569

`Δ[9*A033714(n+1)]`
-/

namespace A096302.P3482208622528599569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A033714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096302.P3482208622528599569

namespace A096302

/-- `Δ[9*A033714(n+1)]` -/
def P3482208622528599569.Spec : Prop :=
  ∀ n, P3482208622528599569.a n = A096302 (n + 2)

end A096302

/-! ## A096302.P7870127302785096194

`Δ[(9*n-1)*A011557(n)]`
-/

namespace A096302.P7870127302785096194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((9 * n : ℤ) - 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096302.P7870127302785096194

namespace A096302

/-- `Δ[(9*n-1)*A011557(n)]` -/
def P7870127302785096194.Spec : Prop :=
  ∀ n, P7870127302785096194.a n = A096302 (n + 2)

theorem P7870127302785096194.correct : P7870127302785096194.Spec := by
  intro n
  simp only [A096302, Nat.add_sub_cancel, A096302.P7870127302785096194.f1, A096302.P7870127302785096194.a, A096302.P7819595748364529016.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096302

/-!
# A096303: Number of iterations of n -> n + (number of 1's in binary representation of n) needed for the trajectory of n to join the trajectory of A010062.

The programs for A096303, there is no canonical definition to state claims against.
-/

/-! ## A096303.P9490957062456965375

`A100073(A128563(n))%A007318(2*(n+1))`
-/

namespace A096303.P9490957062456965375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100073 (A128563 n).toNat) (A007318 (2 * (n + 1)))

end

end A096303.P9490957062456965375

/-! ## A096303.P17977300501403201069

`A033106(round((n+4)*2^(n-3)))%A218534(n+1)`
-/

namespace A096303.P17977300501403201069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033106 (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat) (A218534 (n + 1))

end

end A096303.P17977300501403201069

/-! ## A096303.P4262502252423203070

`and(A001222(A136751(n)), A277141(n))`
-/

namespace A096303.P4262502252423203070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A136751 n).toNat) (A277141 n)

end

end A096303.P4262502252423203070

/-! ## A096303.P1983361129751888202

`A290519(2*n)%A290496(A290528(n))`
-/

namespace A096303.P1983361129751888202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290519 (2 * n)) (A290496 (A290528 n).toNat)

end

end A096303.P1983361129751888202

/-! ## A096303.P17964922238487523036

`A290520(2*n)%A290496(A290528(n))`
-/

namespace A096303.P17964922238487523036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290520 (2 * n)) (A290496 (A290528 n).toNat)

end

end A096303.P17964922238487523036

/-!
# A096304: Numbers k such that 3k does not divide (6k-4)!/((3k-2)!*(3k-1)!).

The programs for A096304, the canonical program `A096304.P11476468655270838725` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096304 has offset 1).

The definition of A096304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096304.P6255617935820886595

`record[A371265(n+1)]`
-/

namespace A096304.P6255617935820886595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096304.P6255617935820886595

namespace A096304

/-- `record[A371265(n+1)]` -/
def P6255617935820886595.Spec : Prop :=
  ∀ n, P6255617935820886595.a n = A096304 (n + 1)

end A096304

/-! ## A096304.P18156258910326327100

`A370662(n+1)+1`
-/

namespace A096304.P18156258910326327100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1) + 1

end

end A096304.P18156258910326327100

namespace A096304

/-- `A370662(n+1)+1` -/
def P18156258910326327100.Spec : Prop :=
  ∀ n, P18156258910326327100.a n = A096304 (n + 1)

end A096304

/-! ## A096304.P11476468655270838725

`lt[0, A039969(n)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096304

/-- `lt[0, A039969(n)]+1` -/
def P11476468655270838725.Spec : Prop :=
  ∀ n, (P11476468655270838725.a n : ℤ) = A096304 (n + 1)

theorem P11476468655270838725.correct : P11476468655270838725.Spec := by
  intro n
  simp only [A096304, Nat.add_sub_cancel]

end A096304

/-! ## A096304.P1551961046364355838

`lt[A067397(n), 1]+1`
-/

namespace A096304.P1551961046364355838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096304.P1551961046364355838

namespace A096304

/-- `lt[A067397(n), 1]+1` -/
def P1551961046364355838.Spec : Prop :=
  ∀ n, (P1551961046364355838.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P15927364373901871852

`lt[A060373(n), 2]+1`
-/

namespace A096304.P15927364373901871852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096304.P15927364373901871852

namespace A096304

/-- `lt[A060373(n), 2]+1` -/
def P15927364373901871852.Spec : Prop :=
  ∀ n, (P15927364373901871852.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P35394017670195735

`lt[A353158(n), 2]+1`
-/

namespace A096304.P35394017670195735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096304.P35394017670195735

namespace A096304

/-- `lt[A353158(n), 2]+1` -/
def P35394017670195735.Spec : Prop :=
  ∀ n, (P35394017670195735.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P15168536906568203312

`(A356447(n+1)+1)/3`
-/

namespace A096304.P15168536906568203312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356447 (n + 1) + 1 : ℚ) / 3

end

end A096304.P15168536906568203312

namespace A096304

/-- `(A356447(n+1)+1)/3` -/
def P15168536906568203312.Spec : Prop :=
  ∀ n, P15168536906568203312.a n = (A096304 (n + 1) : ℚ)

theorem P15168536906568203312.correct : P15168536906568203312.Spec := by
  intro n
  simp only [A096304, Nat.add_sub_cancel, A096304.P15168536906568203312.a, A096304.P11476468655270838725.f1, A096304.P11476468655270838725.f2, A096304.P11476468655270838725.a, A039969, A039969.P8110063093682145486.a, A356447, A356447.P15206919094827022873.a, A006996, A006996.P11406583703129461400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096304

/-! ## A096304.P4176587345242275317

`lt[A330267(n+2), 2]+1`
-/

namespace A096304.P4176587345242275317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330267 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096304.P4176587345242275317

namespace A096304

/-- `lt[A330267(n+2), 2]+1` -/
def P4176587345242275317.Spec : Prop :=
  ∀ n, (P4176587345242275317.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P10733871062586485766

`record[A128173(2*n)/2]+1`
-/

namespace A096304.P10733871062586485766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128173 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A096304.P10733871062586485766

namespace A096304

/-- `record[A128173(2*n)/2]+1` -/
def P10733871062586485766.Spec : Prop :=
  ∀ n, P10733871062586485766.a n = (A096304 (n + 1) : ℚ)

end A096304

/-! ## A096304.P15259272535752575754

`eq[A101825(n), A117592(n)]`
-/

namespace A096304.P15259272535752575754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096304.P15259272535752575754

namespace A096304

/-- `eq[A101825(n), A117592(n)]` -/
def P15259272535752575754.Spec : Prop :=
  ∀ n, (P15259272535752575754.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P1047767188734573377

`eq[A101825(n), A289816(n)]`
-/

namespace A096304.P1047767188734573377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096304.P1047767188734573377

namespace A096304

/-- `eq[A101825(n), A289816(n)]` -/
def P1047767188734573377.Spec : Prop :=
  ∀ n, (P1047767188734573377.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P12456442413811075266

`eq[A101825(n), A290092(n)]`
-/

namespace A096304.P12456442413811075266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096304.P12456442413811075266

namespace A096304

/-- `eq[A101825(n), A290092(n)]` -/
def P12456442413811075266.Spec : Prop :=
  ∀ n, (P12456442413811075266.a n : ℤ) = A096304 (n + 1)

end A096304

/-! ## A096304.P7341093629342375659

`eq[A190592(n), A289816(n)]`
-/

namespace A096304.P7341093629342375659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096304.P7341093629342375659

namespace A096304

/-- `eq[A190592(n), A289816(n)]` -/
def P7341093629342375659.Spec : Prop :=
  ∀ n, (P7341093629342375659.a n : ℤ) = A096304 (n + 1)

end A096304

/-!
# A096305: Numbers k such that 7^k + 4 is prime.

The programs for A096305, there is no canonical definition to state claims against.
-/

/-! ## A096305.P13670566341660197203

`eq[0, A029288(A013601(n))]`
-/

namespace A096305.P13670566341660197203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029288 (A013601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096305.P13670566341660197203

/-! ## A096305.P822329578566132615

`eq[4, A013601(A028310(n))]`
-/

namespace A096305.P822329578566132615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096305.P822329578566132615

/-! ## A096305.P8593361379761908145

`eq[A013601(n), A123932(n)]`
-/

namespace A096305.P8593361379761908145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096305.P8593361379761908145

/-! ## A096305.P15864115606627921997

`eq[4, A013601(A233583(n+1))]`
-/

namespace A096305.P15864115606627921997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096305.P15864115606627921997

/-! ## A096305.P641755335903719434

`eq[A013601(n), A141248(n+1)]`
-/

namespace A096305.P641755335903719434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096305.P641755335903719434

/-!
# A096307: E.g.f.: exp(x)/(1-x)^6.

The programs for A096307, the canonical program `A096307.P5551978902379094167` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096307 has offset 0).

The definition of A096307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096307.P5551978902379094167

`(n+6)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096307

/-- `(n+6)*a(n-1)-(n-1)*a(n-2)` -/
def P5551978902379094167.Spec : Prop :=
  ∀ n, P5551978902379094167.a n = A096307 n

theorem P5551978902379094167.correct : P5551978902379094167.Spec := by
  intro n
  simp only [A096307]

end A096307

/-! ## A096307.P11564504023349474570

`Δ[A095177(n)/5]`
-/

namespace A096307.P11564504023349474570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095177 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096307.P11564504023349474570

namespace A096307

/-- `Δ[A095177(n)/5]` -/
def P11564504023349474570.Spec : Prop :=
  ∀ n, P11564504023349474570.a n = (A096307 n : ℚ)

end A096307

/-! ## A096307.P12563733269945624267

`Δ[Δ[A095000(n)/4]]/5`
-/

namespace A096307.P12563733269945624267
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095000 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 5

end

end A096307.P12563733269945624267

namespace A096307

/-- `Δ[Δ[A095000(n)/4]]/5` -/
def P12563733269945624267.Spec : Prop :=
  ∀ n, P12563733269945624267.a n = (A096307 n : ℚ)

end A096307

/-! ## A096307.P2099697674550398631

`A143409(eq[5, A002262(n)])`
-/

namespace A096307.P2099697674550398631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096307.P2099697674550398631

namespace A096307

/-- `A143409(eq[5, A002262(n)])` -/
def P2099697674550398631.Spec : Prop :=
  ∀ n, P2099697674550398631.a n = A096307 n

end A096307

/-! ## A096307.P15339221295069918036

`A143409(eq[32, A059268(n)])`
-/

namespace A096307.P15339221295069918036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096307.P15339221295069918036

namespace A096307

/-- `A143409(eq[32, A059268(n)])` -/
def P15339221295069918036.Spec : Prop :=
  ∀ n, P15339221295069918036.a n = A096307 n

end A096307

/-! ## A096307.P7880607981680211801

`A143409(eq[6, A002260(n+1)])`
-/

namespace A096307.P7880607981680211801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096307.P7880607981680211801

namespace A096307

/-- `A143409(eq[6, A002260(n+1)])` -/
def P7880607981680211801.Spec : Prop :=
  ∀ n, P7880607981680211801.a n = A096307 n

end A096307

/-!
# A096308: a(n) = Sum_{d divides n} (-1)^(n-d)*Stirling1(n,d).

The programs for A096308, there is no canonical definition to state claims against.
-/

/-! ## A096308.P5085581026247898353

`A227114(Δ[record[A346096(n+1)]])`
-/

namespace A096308.P5085581026247898353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227114 (f1 (n + 1) - f1 n).toNat

end

end A096308.P5085581026247898353

/-!
# A096309: a(1)=1; for n > 1, a(n) is the number of levels in the "stacked" prime number factorization of n (prime number factorization of the exponents if necessary and so on ...).

The programs for A096309, there is no canonical definition to state claims against.
-/

/-! ## A096309.P5543805493552917436

`A185102(char[1-n²]+n+1)`
-/

namespace A096309.P5543805493552917436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1)

end

end A096309.P5543805493552917436

/-! ## A096309.P13335517260921552077

`A082091(A072411(n+1))`
-/

namespace A096309.P13335517260921552077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A072411 (n + 1)).toNat

end

end A096309.P13335517260921552077

/-! ## A096309.P10562171081617267008

`A185102(A308993(n+1))+1`
-/

namespace A096309.P10562171081617267008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (A308993 (n + 1)).toNat + 1

end

end A096309.P10562171081617267008

/-! ## A096309.P12063955211451923784

`A185102(n+1)+A000007(n)`
-/

namespace A096309.P12063955211451923784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (n + 1) + A000007 n

end

end A096309.P12063955211451923784

/-! ## A096309.P10994051013446522224

`gcd(A008662(n), A185102(n+1))`
-/

namespace A096309.P10994051013446522224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008662 n) (A185102 (n + 1))

end

end A096309.P10994051013446522224

/-! ## A096309.P4533326570924417119

`or(char[A185096(n)], A185102(n+1))`
-/

namespace A096309.P4533326570924417119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A185102 (n + 1))

end

end A096309.P4533326570924417119

/-! ## A096309.P484615515306680494

`or(char[A185101(n)], A185102(n+1))`
-/

namespace A096309.P484615515306680494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185101 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A185102 (n + 1))

end

end A096309.P484615515306680494

/-! ## A096309.P2801264392146083560

`or(char[A185136(n)], A185102(n+1))`
-/

namespace A096309.P2801264392146083560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185136 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A185102 (n + 1))

end

end A096309.P2801264392146083560

/-! ## A096309.P16748349280070702968

`or(char[A185143(n)], A185102(n+1))`
-/

namespace A096309.P16748349280070702968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185143 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A185102 (n + 1))

end

end A096309.P16748349280070702968

/-! ## A096309.P3253390448445688647

`or(char[A185132(n+1)], A185102(n+1))`
-/

namespace A096309.P3253390448445688647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A185102 (n + 1))

end

end A096309.P3253390448445688647

/-! ## A096309.P12346191625248815073

`A185102(n+1)-A309464(a(n-1))` with `a(0)=1`
-/

namespace A096309.P12346191625248815073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185102 (n + 1) - A309464 (a (n - 1)).toNat

end

end A096309.P12346191625248815073

/-! ## A096309.P596088840948882263

`A185102(n+1)/A007318(a(n-1))` with `a(0)=1`
-/

namespace A096309.P596088840948882263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A185102 (n + 1) : ℚ) / (A007318 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ)

end

end A096309.P596088840948882263

/-! ## A096309.P14751101164817613906

`A185102(n+1)^A001222(A185091(n+2))`
-/

namespace A096309.P14751101164817613906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185102 (n + 1) : ℚ) ^ (A001222 (A185091 (n + 2)).toNat : ℤ)

end

end A096309.P14751101164817613906

/-! ## A096309.P11130764627518394664

`A185102(n+1)*A205003(A001222(a(n-1))+1)` with `a(0)=1`
-/

namespace A096309.P11130764627518394664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185102 (n + 1) * A205003 (A001222 (a (n - 1)).toNat + 1).toNat

end

end A096309.P11130764627518394664

/-! ## A096309.P18178782869435869219

`gcd(A185102(n+1)+A004046(n), A004046(n))`
-/

namespace A096309.P18178782869435869219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185102 (n + 1) + A004046 n) (A004046 n)

end

end A096309.P18178782869435869219

/-! ## A096309.P7181732593481945349

`A157754(gcd(A152761(n), A157754(n+1)))+1`
-/

namespace A096309.P7181732593481945349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.gcd (A152761 n) (A157754 (n + 1))) + 1

end

end A096309.P7181732593481945349

/-! ## A096309.P10806972672987835813

`A060130(A072411((n+1)²)²)`
-/

namespace A096309.P10806972672987835813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A072411 ((n + 1) ^ 2) ^ 2).toNat

end

end A096309.P10806972672987835813

/-!
# A096310: Number of non-isomorphic positions reached for the first time in exactly n quarter-turns exactly on a 3 X 3 X 3 Rubik's Cube.

The programs for A096310, there is no canonical definition to state claims against.
-/

/-! ## A096310.P1002895484813946932

`A341915(∏[(2*n)^floor(atan(n))])-floor(log(cosh(∑{e}[n+1, #])))`
-/

namespace A096310.P1002895484813946932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat - ⌊Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))⌋

end

end A096310.P1002895484813946932

/-! ## A096310.P11762523424188542984

`A341915(∏[(2*n)^floor(atan(n))])-A064911(n+1)`
-/

namespace A096310.P11762523424188542984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat - A064911 (n + 1)

end

end A096310.P11762523424188542984

/-!
# A096311: Numbers whose number of divisors equals the largest digit.

The programs for A096311, the canonical program `A096311.P16491752530489229289` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096311 has offset 1).

The definition of A096311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096311.P16491752530489229289

`eq[A032741(n)+1, A054055(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A096311

/-- `eq[A032741(n)+1, A054055(n)]` -/
def P16491752530489229289.Spec : Prop :=
  ∀ n, (P16491752530489229289.a n : ℤ) = A096311 (n + 1)

theorem P16491752530489229289.correct : P16491752530489229289.Spec := by
  intro n
  simp only [A096311, Nat.add_sub_cancel]

end A096311

/-! ## A096311.P10486700162840978963

`eq[A000005(n+1), A054055(n+1)]+1`
-/

namespace A096311.P10486700162840978963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096311.P10486700162840978963

namespace A096311

/-- `eq[A000005(n+1), A054055(n+1)]+1` -/
def P10486700162840978963.Spec : Prop :=
  ∀ n, (P10486700162840978963.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P10602962989795738616

`eq[A000005(A028310(n)), A054055(n)]`
-/

namespace A096311.P10602962989795738616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P10602962989795738616

namespace A096311

/-- `eq[A000005(A028310(n)), A054055(n)]` -/
def P10602962989795738616.Spec : Prop :=
  ∀ n, (P10602962989795738616.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P14833942093414742391

`eq[A008729(A032741(n)), A054055(n)]`
-/

namespace A096311.P14833942093414742391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008729 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P14833942093414742391

namespace A096311

/-- `eq[A008729(A032741(n)), A054055(n)]` -/
def P14833942093414742391.Spec : Prop :=
  ∀ n, (P14833942093414742391.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P10488410708318379370

`eq[A054055(n), A174571(A145154(n))]`
-/

namespace A096311.P10488410708318379370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P10488410708318379370

namespace A096311

/-- `eq[A054055(n), A174571(A145154(n))]` -/
def P10488410708318379370.Spec : Prop :=
  ∀ n, (P10488410708318379370.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P5708366416559680562

`eq[A004185(n)%10, A000005(A028310(n))]`
-/

namespace A096311.P5708366416559680562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P5708366416559680562

namespace A096311

/-- `eq[A004185(n)%10, A000005(A028310(n))]` -/
def P5708366416559680562.Spec : Prop :=
  ∀ n, (P5708366416559680562.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P3572928537628367649

`eq[A047842(n)%10, A000005(A028310(n))]`
-/

namespace A096311.P3572928537628367649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P3572928537628367649

namespace A096311

/-- `eq[A047842(n)%10, A000005(A028310(n))]` -/
def P3572928537628367649.Spec : Prop :=
  ∀ n, (P3572928537628367649.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P12973743918321084403

`eq[A000005(A000007(n)+n), A054055(n)]`
-/

namespace A096311.P12973743918321084403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P12973743918321084403

namespace A096311

/-- `eq[A000005(A000007(n)+n), A054055(n)]` -/
def P12973743918321084403.Spec : Prop :=
  ∀ n, (P12973743918321084403.a n : ℤ) = A096311 (n + 1)

end A096311

/-! ## A096311.P18350163100800579055

`eq[A000005(A065033(2*n)), A054055(n)]`
-/

namespace A096311.P18350163100800579055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096311.P18350163100800579055

namespace A096311

/-- `eq[A000005(A065033(2*n)), A054055(n)]` -/
def P18350163100800579055.Spec : Prop :=
  ∀ n, (P18350163100800579055.a n : ℤ) = A096311 (n + 1)

end A096311

/-!
# A096312: Numbers n such that number of prime divisors (counting multiplicity) = largest digit.

The programs for A096312, the canonical program `A096312.P4145322118158638396` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096312 has offset 1).

The definition of A096312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096312.P4145322118158638396

`eq[A001222(abs(1-n)+1), A054055(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A096312

/-- `eq[A001222(abs(1-n)+1), A054055(n)]` -/
def P4145322118158638396.Spec : Prop :=
  ∀ n, (P4145322118158638396.a n : ℤ) = A096312 (n + 1)

theorem P4145322118158638396.correct : P4145322118158638396.Spec := by
  intro n
  simp only [A096312, Nat.add_sub_cancel]

end A096312

/-! ## A096312.P9250694144535968490

`eq[A001222(n+1), A054055(n+1)]+1`
-/

namespace A096312.P9250694144535968490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096312.P9250694144535968490

namespace A096312

/-- `eq[A001222(n+1), A054055(n+1)]+1` -/
def P9250694144535968490.Spec : Prop :=
  ∀ n, (P9250694144535968490.a n : ℤ) = A096312 (n + 1)

end A096312

/-! ## A096312.P14543322850713271068

`eq[A004185(n)%10, A001222(abs(1-n)+1)]`
-/

namespace A096312.P14543322850713271068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096312.P14543322850713271068

namespace A096312

/-- `eq[A004185(n)%10, A001222(abs(1-n)+1)]` -/
def P14543322850713271068.Spec : Prop :=
  ∀ n, (P14543322850713271068.a n : ℤ) = A096312 (n + 1)

end A096312

/-! ## A096312.P391049274168019561

`eq[A054055(n)+2, A001222(A008458(n))]`
-/

namespace A096312.P391049274168019561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096312.P391049274168019561

namespace A096312

/-- `eq[A054055(n)+2, A001222(A008458(n))]` -/
def P391049274168019561.Spec : Prop :=
  ∀ n, (P391049274168019561.a n : ℤ) = A096312 (n + 1)

end A096312

/-! ## A096312.P15625927412667137362

`eq[A054055(n)+2, A001222(A008574(n))]`
-/

namespace A096312.P15625927412667137362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096312.P15625927412667137362

namespace A096312

/-- `eq[A054055(n)+2, A001222(A008574(n))]` -/
def P15625927412667137362.Spec : Prop :=
  ∀ n, (P15625927412667137362.a n : ℤ) = A096312 (n + 1)

end A096312

/-!
# A096313: a(n) = determinant of n X n matrix m(i,j) = Product_{k=1..i} k+j.

The programs for A096313, the canonical program `A096313.P13862714613683682245` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096313 has offset 0).

The definition of A096313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096313.P13862714613683682245

`(n+1)*A000178(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096313

/-- `(n+1)*A000178(n)` -/
def P13862714613683682245.Spec : Prop :=
  ∀ n, P13862714613683682245.a n = A096313 n

theorem P13862714613683682245.correct : P13862714613683682245.Spec := by
  intro n
  simp only [A096313]

end A096313

/-! ## A096313.P12798435344585669691

`(n+1)*∏[n!]`
-/

namespace A096313.P12798435344585669691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A096313.P12798435344585669691

namespace A096313

/-- `(n+1)*∏[n!]` -/
def P12798435344585669691.Spec : Prop :=
  ∀ n, (P12798435344585669691.a n : ℤ) = A096313 n

end A096313

/-! ## A096313.P14546167344672242800

`(n+1)*exp(∑[log(n!)])`
-/

namespace A096313.P14546167344672242800
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096313.P14546167344672242800

namespace A096313

/-- `(n+1)*exp(∑[log(n!)])` -/
def P14546167344672242800.Spec : Prop :=
  ∀ n, P14546167344672242800.a n = (A096313 n : ℝ)

end A096313

/-! ## A096313.P1673148537467989080

`(n+1)*2^∑[log2(n!)]`
-/

namespace A096313.P1673148537467989080
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096313.P1673148537467989080

namespace A096313

/-- `(n+1)*2^∑[log2(n!)]` -/
def P1673148537467989080.Spec : Prop :=
  ∀ n, P1673148537467989080.a n = (A096313 n : ℝ)

end A096313

/-! ## A096313.P9048991073582185157

`(n+1)!*a(n-1)/n` with `a(0)=1`
-/

namespace A096313.P9048991073582185157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (n + 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A096313.P9048991073582185157

namespace A096313

/-- `(n+1)!*a(n-1)/n` -/
def P9048991073582185157.Spec : Prop :=
  ∀ n, P9048991073582185157.a n = (A096313 n : ℚ)

end A096313

/-!
# A096314: a(n) = Sum_{1<=k<=n, gcd(n,k)=1} (-1)^(n-k)*Stirling1(n,k).

The programs for A096314, there is no canonical definition to state claims against.
-/

/-! ## A096314.P15039607015851869616

`A064664(A060909(n))%A031296(n+3)`
-/

namespace A096314.P15039607015851869616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064664 (A060909 n).toNat) (A031296 (n + 3))

end

end A096314.P15039607015851869616

/-! ## A096314.P12330537953957477695

`xor(A332466(n+1), A365046(A000757(n)))`
-/

namespace A096314.P12330537953957477695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A332466 (n + 1)) (A365046 (A000757 n).toNat)

end

end A096314.P12330537953957477695

/-!
# A096315: Dimensions n such that the integer lattice Z^n contains n+1 equidistant points (i.e., the vertices of a regular n-simplex).

The programs for A096315, there is no canonical definition to state claims against.
-/

/-! ## A096315.P17626686373096825845

`lt[A263765(n+1), A330557(A007401(a(n-2)+1))]` with `a(0)=1, a(1)=4`
-/

namespace A096315.P17626686373096825845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A330557 (A007401 (f2 (n - 2) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096315.P17626686373096825845

/-! ## A096315.P15505492971966043202

`eq[char[A334736(n+1)], A151933(n)]`
-/

namespace A096315.P15505492971966043202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334736 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A096315.P15505492971966043202

/-! ## A096315.P10330916970357880887

`eq[8%A101412(n+1), A151933(n)]`
-/

namespace A096315.P10330916970357880887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A101412 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096315.P10330916970357880887

/-! ## A096315.P12251783164617092808

`lt[A059129(A345182(n+1)), A345262(n)]`
-/

namespace A096315.P12251783164617092808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A345182 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096315.P12251783164617092808

/-! ## A096315.P5400331099500392426

`lt[A320887(A349417(n)), A008833(2*(n+1))]`
-/

namespace A096315.P5400331099500392426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (A349417 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096315.P5400331099500392426

/-!
# A096316: Given the number wheel 0,1,2,3,4,5,6,7,8,9 then starting with 2, the next number is a prime p number of positions from the previous number found, for p=2,3,...

The programs for A096316, the canonical program `A096316.P161007698799923944` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096316 has offset 0).

The definition of A096316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096316.P161007698799923944

`A036439(n+2)%10`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096316

/-- `A036439(n+2)%10` -/
def P161007698799923944.Spec : Prop :=
  ∀ n, P161007698799923944.a n = A096316 n

theorem P161007698799923944.correct : P161007698799923944.Spec := by
  intro n
  simp only [A096316]

end A096316

/-! ## A096316.P4730875934538011436

`A175965(n+3)%10`
-/

namespace A096316.P4730875934538011436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175965 (n + 3)) 10

end

end A096316.P4730875934538011436

namespace A096316

/-- `A175965(n+3)%10` -/
def P4730875934538011436.Spec : Prop :=
  ∀ n, P4730875934538011436.a n = A096316 n

end A096316

/-! ## A096316.P18187901638934500909

`∑[A171021(n+1)]%10`
-/

namespace A096316.P18187901638934500909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A096316.P18187901638934500909

namespace A096316

/-- `∑[A171021(n+1)]%10` -/
def P18187901638934500909.Spec : Prop :=
  ∀ n, P18187901638934500909.a n = A096316 n

end A096316

/-! ## A096316.P5027593084292711854

`(A007504(n+1)+2)%10`
-/

namespace A096316.P5027593084292711854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1) + 2) 10

end

end A096316.P5027593084292711854

namespace A096316

/-- `(A007504(n+1)+2)%10` -/
def P5027593084292711854.Spec : Prop :=
  ∀ n, P5027593084292711854.a n = A096316 n

end A096316

/-! ## A096316.P4914775391280500834

`∑[A039915(n+1)+1]%10`
-/

namespace A096316.P4914775391280500834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A096316.P4914775391280500834

namespace A096316

/-- `∑[A039915(n+1)+1]%10` -/
def P4914775391280500834.Spec : Prop :=
  ∀ n, P4914775391280500834.a n = A096316 n

end A096316

/-! ## A096316.P17310538413286972883

`(∑[A000040(n+1)]+2)%10`
-/

namespace A096316.P17310538413286972883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P17310538413286972883

namespace A096316

/-- `(∑[A000040(n+1)]+2)%10` -/
def P17310538413286972883.Spec : Prop :=
  ∀ n, P17310538413286972883.a n = A096316 n

end A096316

/-! ## A096316.P6808573586848785768

`(∑[A007652(n+1)]+2)%10`
-/

namespace A096316.P6808573586848785768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P6808573586848785768

namespace A096316

/-- `(∑[A007652(n+1)]+2)%10` -/
def P6808573586848785768.Spec : Prop :=
  ∀ n, P6808573586848785768.a n = A096316 n

end A096316

/-! ## A096316.P2989525889613216028

`(∑[record[A006530(n+2)]]+2)%10`
-/

namespace A096316.P2989525889613216028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P2989525889613216028

namespace A096316

/-- `(∑[record[A006530(n+2)]]+2)%10` -/
def P2989525889613216028.Spec : Prop :=
  ∀ n, P2989525889613216028.a n = A096316 n

end A096316

/-! ## A096316.P2401099319344979995

`(∑[record[A014963(n+2)]]+2)%10`
-/

namespace A096316.P2401099319344979995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P2401099319344979995

namespace A096316

/-- `(∑[record[A014963(n+2)]]+2)%10` -/
def P2401099319344979995.Spec : Prop :=
  ∀ n, P2401099319344979995.a n = A096316 n

end A096316

/-! ## A096316.P1289080131148433282

`(∑[record[A020639(n+2)]]+2)%10`
-/

namespace A096316.P1289080131148433282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P1289080131148433282

namespace A096316

/-- `(∑[record[A020639(n+2)]]+2)%10` -/
def P1289080131148433282.Spec : Prop :=
  ∀ n, P1289080131148433282.a n = A096316 n

end A096316

/-! ## A096316.P16019542774472052004

`(∑[record[A000010(n+1)+1]]+2)%10`
-/

namespace A096316.P16019542774472052004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) 10

end

end A096316.P16019542774472052004

namespace A096316

/-- `(∑[record[A000010(n+1)+1]]+2)%10` -/
def P16019542774472052004.Spec : Prop :=
  ∀ n, P16019542774472052004.a n = A096316 n

end A096316

/-! ## A096316.P17564068666460710983

`A010879(A101306(n+1)+2)`
-/

namespace A096316.P17564068666460710983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A101306 (n + 1) + 2).toNat

end

end A096316.P17564068666460710983

namespace A096316

/-- `A010879(A101306(n+1)+2)` -/
def P17564068666460710983.Spec : Prop :=
  ∀ n, P17564068666460710983.a n = A096316 n

end A096316

/-! ## A096316.P645872813962675275

`A010879(A291933(n+1)+2)`
-/

namespace A096316.P645872813962675275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A291933 (n + 1) + 2).toNat

end

end A096316.P645872813962675275

namespace A096316

/-- `A010879(A291933(n+1)+2)` -/
def P645872813962675275.Spec : Prop :=
  ∀ n, P645872813962675275.a n = A096316 n

end A096316

/-! ## A096316.P14560313682150294199

`A010879(∑[A007652(n+1)]+2)`
-/

namespace A096316.P14560313682150294199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A096316.P14560313682150294199

namespace A096316

/-- `A010879(∑[A007652(n+1)]+2)` -/
def P14560313682150294199.Spec : Prop :=
  ∀ n, P14560313682150294199.a n = A096316 n

end A096316

/-! ## A096316.P11765707339088603722

`A010879(∑[A110923(n+1)]+2)`
-/

namespace A096316.P11765707339088603722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A096316.P11765707339088603722

namespace A096316

/-- `A010879(∑[A110923(n+1)]+2)` -/
def P11765707339088603722.Spec : Prop :=
  ∀ n, P11765707339088603722.a n = A096316 n

end A096316

/-! ## A096316.P10299856315382881750

`A010879(∑[A137589(n+1)]+2)`
-/

namespace A096316.P10299856315382881750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A096316.P10299856315382881750

namespace A096316

/-- `A010879(∑[A137589(n+1)]+2)` -/
def P10299856315382881750.Spec : Prop :=
  ∀ n, P10299856315382881750.a n = A096316 n

end A096316

/-! ## A096316.P5290792217446501166

`A010879(∑[A138840(n+1)]+2)`
-/

namespace A096316.P5290792217446501166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A096316.P5290792217446501166

namespace A096316

/-- `A010879(∑[A138840(n+1)]+2)` -/
def P5290792217446501166.Spec : Prop :=
  ∀ n, P5290792217446501166.a n = A096316 n

end A096316

/-!
# A096317: a(n) is the minimal product of the smallest prime factor of each composite number in a prime gap of 2n.

The programs for A096317, there is no canonical definition to state claims against.
-/

/-! ## A096317.P9811623436346332820

`∏[A069930(∑[A346295(n)])]`
-/

namespace A096317.P9811623436346332820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096317.P9811623436346332820

/-! ## A096317.P17015635794524562147

`∏[A096014(record[A056040(n)])]`
-/

namespace A096317.P17015635794524562147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096317.P17015635794524562147

/-!
# A096318: a(n) is the prime the precedes the first occurrence of a prime gap of 2n where the product of the smallest prime factor of each composite number in the gap is minimal.

The programs for A096318, there is no canonical definition to state claims against.
-/

/-! ## A096318.P1087272685700475716

`A093074(A192371(n+1)+A001850(n))`
-/

namespace A096318.P1087272685700475716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A192371 (n + 1) + A001850 n).toNat

end

end A096318.P1087272685700475716

/-!
# A096319: Final digit of the sum of the first n primes.

The programs for A096319, the canonical program `A096319.P6503528609690428362` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096319 has offset 0).

The definition of A096319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096319.P10021931200234704354

`A007504(n)%10`
-/

namespace A096319.P10021931200234704354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 10

end

end A096319.P10021931200234704354

namespace A096319

/-- `A007504(n)%10` -/
def P10021931200234704354.Spec : Prop :=
  ∀ n, P10021931200234704354.a n = A096319 n

end A096319

/-! ## A096319.P615673044676552171

`∑[A182986(n+1)]%10`
-/

namespace A096319.P615673044676552171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A096319.P615673044676552171

namespace A096319

/-- `∑[A182986(n+1)]%10` -/
def P615673044676552171.Spec : Prop :=
  ∀ n, P615673044676552171.a n = A096319 n

end A096319

/-! ## A096319.P6440213731983642155

`(A227547(n+1)-3)%10`
-/

namespace A096319.P6440213731983642155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227547 (n + 1) - 3) 10

end

end A096319.P6440213731983642155

namespace A096319

/-- `(A227547(n+1)-3)%10` -/
def P6440213731983642155.Spec : Prop :=
  ∀ n, P6440213731983642155.a n = A096319 n

end A096319

/-! ## A096319.P1424053298177001399

`∑[record[A008472(n+1)]]%10`
-/

namespace A096319.P1424053298177001399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A096319.P1424053298177001399

namespace A096319

/-- `∑[record[A008472(n+1)]]%10` -/
def P1424053298177001399.Spec : Prop :=
  ∀ n, P1424053298177001399.a n = A096319 n

end A096319

/-! ## A096319.P6503528609690428362

`∑[A000040(n-and(2, a(n-1)²))]%10` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096319

/-- `∑[A000040(n-and(2, a(n-1)²))]%10` -/
def P6503528609690428362.Spec : Prop :=
  ∀ n, P6503528609690428362.a n = A096319 n

theorem P6503528609690428362.correct : P6503528609690428362.Spec := by
  intro n
  simp only [A096319]

end A096319

/-! ## A096319.P14600216555740277977

`A010879(∑[A007652(n+1)]-A007652(n+1))`
-/

namespace A096319.P14600216555740277977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j - A007652 (n + 1)).toNat

end

end A096319.P14600216555740277977

namespace A096319

/-- `A010879(∑[A007652(n+1)]-A007652(n+1))` -/
def P14600216555740277977.Spec : Prop :=
  ∀ n, P14600216555740277977.a n = A096319 n

end A096319

/-! ## A096319.P6264595408931463606

`A066911(A000040(n+1))%10`
-/

namespace A096319.P6264595408931463606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066911 (A000040 (n + 1)).toNat) 10

end

end A096319.P6264595408931463606

namespace A096319

/-- `A066911(A000040(n+1))%10` -/
def P6264595408931463606.Spec : Prop :=
  ∀ n, P6264595408931463606.a n = A096319 n

end A096319

/-! ## A096319.P16447378667145863820

`A291933(n+1)-A000040(n+1)`
-/

namespace A096319.P16447378667145863820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291933 (n + 1) - A000040 (n + 1)

end

end A096319.P16447378667145863820

namespace A096319

/-- `A291933(n+1)-A000040(n+1)` -/
def P16447378667145863820.Spec : Prop :=
  ∀ n, P16447378667145863820.a n = A096319 n

end A096319

/-! ## A096319.P1292516522861814885

`A010879(∑[A137589(n+1)]-A137589(n+1))`
-/

namespace A096319.P1292516522861814885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j - A137589 (n + 1)).toNat

end

end A096319.P1292516522861814885

namespace A096319

/-- `A010879(∑[A137589(n+1)]-A137589(n+1))` -/
def P1292516522861814885.Spec : Prop :=
  ∀ n, P1292516522861814885.a n = A096319 n

end A096319

/-! ## A096319.P2717906281177305717

`A010879(∑[A138840(n+1)]-A138840(n+1))`
-/

namespace A096319.P2717906281177305717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j - A138840 (n + 1)).toNat

end

end A096319.P2717906281177305717

namespace A096319

/-- `A010879(∑[A138840(n+1)]-A138840(n+1))` -/
def P2717906281177305717.Spec : Prop :=
  ∀ n, P2717906281177305717.a n = A096319 n

end A096319

/-! ## A096319.P1817309837390880092

`A010879(∑[A110923(n+1)]-A110923(n+1))`
-/

namespace A096319.P1817309837390880092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f1 j - A110923 (n + 1)).toNat

end

end A096319.P1817309837390880092

namespace A096319

/-- `A010879(∑[A110923(n+1)]-A110923(n+1))` -/
def P1817309837390880092.Spec : Prop :=
  ∀ n, P1817309837390880092.a n = A096319 n

end A096319

/-!
# A096320: a(n) = (n^2+n+4)/2, modulo 10.

The programs for A096320, the canonical program `A096320.P14643457856809854486` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096320 has offset 0).

The definition of A096320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096320.P14643457856809854486

`((n²+n+4)/2)%10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096320

/-- `((n²+n+4)/2)%10` -/
def P14643457856809854486.Spec : Prop :=
  ∀ n, P14643457856809854486.a n = A096320 n

theorem P14643457856809854486.correct : P14643457856809854486.Spec := by
  intro n
  simp only [A096320]

end A096320

/-!
# A096321: a(n) = prime(2^prime(n)).

The programs for A096321, there is no canonical definition to state claims against.
-/

/-! ## A096321.P9380306192113796125

`A033844(A000040(n+1))`
-/

namespace A096321.P9380306192113796125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A000040 (n + 1)).toNat

end

end A096321.P9380306192113796125

/-! ## A096321.P10569114192844102795

`A033844(p?[comp[n²]])`
-/

namespace A096321.P10569114192844102795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096321.P10569114192844102795

/-! ## A096321.P16440674158028639684

`A033844(log2(record[2^∑{p}[n+2, #]]))`
-/

namespace A096321.P16440674158028639684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A096321.P16440674158028639684

/-! ## A096321.P9322967585247275245

`A033844(val(record[2^∑{p}[n+2, #]], 2))`
-/

namespace A096321.P9322967585247275245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2)

end

end A096321.P9322967585247275245

/-! ## A096321.P6325624032444131863

`A033844(A030291(n+1))`
-/

namespace A096321.P6325624032444131863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A030291 (n + 1)).toNat

end

end A096321.P6325624032444131863

/-!
# A096322: Limiting sequence formed by rows of A094504 read backwards: rightmost floor(n/2)+1 terms of row n in table A094504.

The programs for A096322, there is no canonical definition to state claims against.
-/

/-! ## A096322.P15686172822696849581

`record[A094504(∑[A008624(n)])]`
-/

namespace A096322.P15686172822696849581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096322.P15686172822696849581

/-! ## A096322.P9041011508503203620

`record[A094504(A087327(n+1))]`
-/

namespace A096322.P9041011508503203620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094504 (A087327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096322.P9041011508503203620

/-! ## A096322.P6303630704728402216

`A094504(A000217(n+7)+8)`
-/

namespace A096322.P6303630704728402216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094504 (A000217 (n + 7) + 8).toNat

end

end A096322.P6303630704728402216

/-! ## A096322.P1320691390074919536

`A094504(A179865(2*n+1)-n)`
-/

namespace A096322.P1320691390074919536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094504 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A096322.P1320691390074919536

/-!
# A096324: a(n) = prime(3^prime(n)).

The programs for A096324, there is no canonical definition to state claims against.
-/

/-! ## A096324.P10427354593466631171

`A038833(A000040(n+1))`
-/

namespace A096324.P10427354593466631171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A000040 (n + 1)).toNat

end

end A096324.P10427354593466631171

/-! ## A096324.P8566316752631140628

`A038833(A181325(n))`
-/

namespace A096324.P8566316752631140628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A181325 n).toNat

end

end A096324.P8566316752631140628

/-! ## A096324.P12979687494847011059

`A038833(A390240(n))`
-/

namespace A096324.P12979687494847011059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A390240 n).toNat

end

end A096324.P12979687494847011059

/-! ## A096324.P1359303339862301985

`A038833(A030291(n+1))`
-/

namespace A096324.P1359303339862301985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A030291 (n + 1)).toNat

end

end A096324.P1359303339862301985

/-! ## A096324.P16324008824615419538

`A038833(A030475(n+1))`
-/

namespace A096324.P16324008824615419538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A030475 (n + 1)).toNat

end

end A096324.P16324008824615419538

/-!
# A096325: a(n) = prime(4^prime(n)).

The programs for A096325, there is no canonical definition to state claims against.
-/

/-! ## A096325.P14627805098230788866

`A119772(p?[comp[n²]])`
-/

namespace A096325.P14627805098230788866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096325.P14627805098230788866

/-! ## A096325.P18107862010649189223

`A033844(2*p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A096325.P18107862010649189223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096325.P18107862010649189223

/-! ## A096325.P12168185849377177578

`A119772(A000040(n+1))`
-/

namespace A096325.P12168185849377177578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (A000040 (n + 1)).toNat

end

end A096325.P12168185849377177578

/-! ## A096325.P15076805289261358751

`A033844(A100484(n+1))`
-/

namespace A096325.P15076805289261358751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A100484 (n + 1)).toNat

end

end A096325.P15076805289261358751

/-! ## A096325.P9126746644825059625

`A033844(A363134(n+1))`
-/

namespace A096325.P9126746644825059625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A363134 (n + 1)).toNat

end

end A096325.P9126746644825059625

/-!
# A096326: a(n) = prime(5^prime(n)).

The programs for A096326, there is no canonical definition to state claims against.
-/

/-! ## A096326.P10563604204036775217

`A055680(A000040(n+1))`
-/

namespace A096326.P10563604204036775217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055680 (A000040 (n + 1)).toNat

end

end A096326.P10563604204036775217

/-! ## A096326.P4848594363818219657

`A055680(p?[comp[n²]])`
-/

namespace A096326.P4848594363818219657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055680 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096326.P4848594363818219657

/-! ## A096326.P7064216084301748263

`A055680(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A096326.P7064216084301748263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055680 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A096326.P7064216084301748263

/-! ## A096326.P2120182209867084662

`A055680(Δ[A007504(n)])`
-/

namespace A096326.P2120182209867084662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055680 (f1 (n + 1) - f1 n).toNat

end

end A096326.P2120182209867084662

/-!
# A096327: Prime(p^2) where p = prime(n).

The programs for A096327, there is no canonical definition to state claims against.
-/

/-! ## A096327.P12501356678599754696

`A011757(p?[xor(1, n)+1])`
-/

namespace A096327.P12501356678599754696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096327.P12501356678599754696

/-! ## A096327.P11426447479782638782

`A011757(p?[a(n-1)+2])` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A096327.P11426447479782638782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096327.P11426447479782638782

/-! ## A096327.P13104021619966047631

`A011757(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A096327.P13104021619966047631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096327.P13104021619966047631

/-! ## A096327.P13249211795384323088

`A011757(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A096327.P13249211795384323088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096327.P13249211795384323088

/-! ## A096327.P17469933850392373930

`A011757(Δ[A007504(n)])`
-/

namespace A096327.P17469933850392373930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (f1 (n + 1) - f1 n).toNat

end

end A096327.P17469933850392373930

/-!
# A096328: Prime(p^3) where p = prime(n).

The programs for A096328, there is no canonical definition to state claims against.
-/

/-! ## A096328.P11385185573999322746

`A055875(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A096328.P11385185573999322746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096328.P11385185573999322746

/-! ## A096328.P16643587070254368382

`A055875(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A096328.P16643587070254368382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096328.P16643587070254368382

/-! ## A096328.P1814474045129198301

`A055875(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A096328.P1814474045129198301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096328.P1814474045129198301

/-! ## A096328.P16552211677234314499

`A055875(Δ[A007504(n)])`
-/

namespace A096328.P16552211677234314499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (n + 1) - f1 n).toNat

end

end A096328.P16552211677234314499

/-! ## A096328.P14589160344646311072

`A055875(record[A051698(n)])`
-/

namespace A096328.P14589160344646311072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096328.P14589160344646311072

/-! ## A096328.P5427800523242618503

`A055875(A000040(n+1))`
-/

namespace A096328.P5427800523242618503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A000040 (n + 1)).toNat

end

end A096328.P5427800523242618503

/-! ## A096328.P7712155886500070413

`A055875(A008578(n+2))`
-/

namespace A096328.P7712155886500070413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A008578 (n + 2)).toNat

end

end A096328.P7712155886500070413

/-! ## A096328.P17798495776195054737

`A055875(A182986(n+2))`
-/

namespace A096328.P17798495776195054737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A182986 (n + 2)).toNat

end

end A096328.P17798495776195054737

/-! ## A096328.P9925153579540100316

`A055875(A324050(n+2))`
-/

namespace A096328.P9925153579540100316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A324050 (n + 2)).toNat

end

end A096328.P9925153579540100316

/-! ## A096328.P15058387871397724002

`A055875(eq[1, A032741(n)])`
-/

namespace A096328.P15058387871397724002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096328.P15058387871397724002

/-! ## A096328.P5880143342474942884

`A055875(eq[1, A105700(n)])`
-/

namespace A096328.P5880143342474942884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096328.P5880143342474942884

/-! ## A096328.P17567388767742639442

`A055875(eq[2, A005128(n)])`
-/

namespace A096328.P17567388767742639442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096328.P17567388767742639442

/-! ## A096328.P15164227675618612234

`A055875(record[A006530(n+2)])`
-/

namespace A096328.P15164227675618612234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096328.P15164227675618612234

/-! ## A096328.P9574762996466985950

`A055875(record[A014963(n+2)])`
-/

namespace A096328.P9574762996466985950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096328.P9574762996466985950

/-! ## A096328.P3413757365936144993

`A055875(record[A020639(n+2)])`
-/

namespace A096328.P3413757365936144993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096328.P3413757365936144993

/-! ## A096328.P4285795357710012067

`A055875(record[A000010(n+1)+1])`
-/

namespace A096328.P4285795357710012067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096328.P4285795357710012067

/-! ## A096328.P9815953297980648846

`A055875(A007504(n+1)-A007504(n))`
-/

namespace A096328.P9815953297980648846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (A007504 (n + 1) - A007504 n).toNat

end

end A096328.P9815953297980648846

/-! ## A096328.P12451416126387434821

`A055875(A030078(n+1)/A001248(n+1))`
-/

namespace A096328.P12451416126387434821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055875 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat

end

end A096328.P12451416126387434821

/-!
# A096332: Number of connected planar graphs on n labeled nodes.

The programs for A096332, there is no canonical definition to state claims against.
-/

/-! ## A096332.P11337905698896145634

`A364464(∑[floor(n*ϕ*n)])`
-/

namespace A096332.P11337905698896145634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364464 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096332.P11337905698896145634

/-!
# A096333: Prime numbers that are 2 less than a prime-indexed odd triangular number or 1 more than a prime-indexed even triangular number.

The programs for A096333, there is no canonical definition to state claims against.
-/

/-! ## A096333.P5339872719295696056

`p?[A000096(A089026(n+1))-A292576(n+1)]`
-/

namespace A096333.P5339872719295696056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A089026 (n + 1)).toNat - A292576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096333.P5339872719295696056

/-! ## A096333.P16240084391602094105

`∪[A231988(n+1), A357219(n+1)]`
-/

namespace A096333.P16240084391602094105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096333.P16240084391602094105

/-! ## A096333.P14625908123028564947

`p?[A097062(∑[A138383(n)])]`
-/

namespace A096333.P14625908123028564947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096333.P14625908123028564947

/-! ## A096333.P10981267484960877423

`p?[A097062(A034953(n+1))]`
-/

namespace A096333.P10981267484960877423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A034953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096333.P10981267484960877423

/-! ## A096333.P2785669299531040055

`p?[A316963(A147846(n+1))]`
-/

namespace A096333.P2785669299531040055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316963 (A147846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096333.P2785669299531040055

/-!
# A096334: Triangle read by rows: T(n,k) = prime(n)#/prime(k)#, 0<=k<=n.

The programs for A096334, there is no canonical definition to state claims against.
-/

/-! ## A096334.P7049803756651012210

`A019565(∏[char[∑[n+1]]+1]-2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A096334.P7049803756651012210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A096334.P7049803756651012210

/-! ## A096334.P7885030702187975089

`A019565(A173787(n))`
-/

namespace A096334.P7885030702187975089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A173787 n).toNat

end

end A096334.P7885030702187975089

/-! ## A096334.P8112132370258173069

`A277330(ceil(acot(n))*A173787(n))`
-/

namespace A096334.P8112132370258173069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A173787 n).toNat

end

end A096334.P8112132370258173069

/-! ## A096334.P1043867900928175997

`A277330(A173787(n)/ceil(acot(n)))`
-/

namespace A096334.P1043867900928175997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (SequenceMachineLib.roundAway ((A173787 n : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A096334.P1043867900928175997

/-! ## A096334.P1277517209079518845

`A277330(A173787(n)^ceil(acot(n)))`
-/

namespace A096334.P1277517209079518845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (SequenceMachineLib.roundAway ((A173787 n : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ))).toNat

end

end A096334.P1277517209079518845

/-! ## A096334.P11149777720601360805

`A277330(lcm((-1)^n, A173787(n)))`
-/

namespace A096334.P11149777720601360805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (Int.lcm ((-1) ^ n) (A173787 n))

end

end A096334.P11149777720601360805

/-! ## A096334.P17891620318066956705

`A277330(A173787(n)%(8*n+6)²)`
-/

namespace A096334.P17891620318066956705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (Int.tmod (A173787 n) ((8 * n + 6) ^ 2 : ℤ)).toNat

end

end A096334.P17891620318066956705

/-! ## A096334.P212174850033375710

`A019565(A137688(n)-A059268(n))`
-/

namespace A096334.P212174850033375710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A137688 n - A059268 n).toNat

end

end A096334.P212174850033375710

/-! ## A096334.P16890629942506681351

`A019565(A130321(n)-A176224(n))`
-/

namespace A096334.P16890629942506681351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A130321 n - A176224 n).toNat

end

end A096334.P16890629942506681351

/-! ## A096334.P448222160443977800

`A277330(A137688(n)-A059268(n))`
-/

namespace A096334.P448222160443977800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A137688 n - A059268 n).toNat

end

end A096334.P448222160443977800

/-! ## A096334.P6651218261225450067

`or(A000007(n), A277330(A173787(n)))`
-/

namespace A096334.P6651218261225450067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A277330 (A173787 n).toNat)

end

end A096334.P6651218261225450067

/-! ## A096334.P6101768097465754318

`A019565((A130321(n)-1)*A059268(n))`
-/

namespace A096334.P6101768097465754318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((A130321 n - 1) * A059268 n).toNat

end

end A096334.P6101768097465754318

/-! ## A096334.P10287225269598435230

`A277330(A173787(n))+char[A000108(n+8)]`
-/

namespace A096334.P10287225269598435230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A173787 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A096334.P10287225269598435230

/-! ## A096334.P11461097481077439107

`A007318(C(2, n)+1)*A277330(A173787(n))`
-/

namespace A096334.P11461097481077439107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A277330 (A173787 n).toNat

end

end A096334.P11461097481077439107

/-! ## A096334.P5275255525552237156

`A277330(A173787(n))/A000108(C(2, n+2))`
-/

namespace A096334.P5275255525552237156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 (A173787 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A096334.P5275255525552237156

/-! ## A096334.P17720194969122906294

`A277330(A173787(n))/A000032(gcd(n, n+1))`
-/

namespace A096334.P17720194969122906294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277330 (A173787 n).toNat : ℚ) / (A000032 (Nat.gcd n (n + 1)) : ℚ)

end

end A096334.P17720194969122906294

/-! ## A096334.P17399993422965352092

`A019565(A048967(A099627(n)))`
-/

namespace A096334.P17399993422965352092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A048967 (A099627 n).toNat).toNat

end

end A096334.P17399993422965352092

/-! ## A096334.P14212333543328478510

`A014963(10*10*(n+1))*A277330(A173787(n))`
-/

namespace A096334.P14212333543328478510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (10 * (n + 1))) * A277330 (A173787 n).toNat

end

end A096334.P14212333543328478510

/-!
# A096335: Number of iterations of n -> n + tau(n) needed for the trajectory of n to join the trajectory of A064491, or -1 if the two trajectories never merge.

The programs for A096335, there is no canonical definition to state claims against.
-/

/-! ## A096335.P14953611700647986047

`A039999(A108696(n+3)+A033484(n))`
-/

namespace A096335.P14953611700647986047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (A108696 (n + 3) + A033484 n).toNat

end

end A096335.P14953611700647986047

/-! ## A096335.P6225220630460789829

`A007814(A112483(n+3)-A185356(n))`
-/

namespace A096335.P6225220630460789829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A112483 (n + 3) - A185356 n).toNat

end

end A096335.P6225220630460789829

/-! ## A096335.P12651364488962452775

`A105637(A230928(n+1))%A007913(n+1)`
-/

namespace A096335.P12651364488962452775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105637 (A230928 (n + 1)).toNat) (A007913 (n + 1))

end

end A096335.P12651364488962452775

/-! ## A096335.P15039262292465415907

`A320703(A229794(n+1))%A063987(n+2)`
-/

namespace A096335.P15039262292465415907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320703 (A229794 (n + 1)).toNat) (A063987 (n + 2))

end

end A096335.P15039262292465415907

/-! ## A096335.P16311537397014377835

`and(A027750(A389064(n+3)), A156042(n+3))`
-/

namespace A096335.P16311537397014377835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027750 (A389064 (n + 3)).toNat) (A156042 (n + 3))

end

end A096335.P16311537397014377835

/-!
# A096336: Spin(2n+1) and Spin(2n+2) have torsion index 2^a(n).

The programs for A096336, there is no canonical definition to state claims against.
-/

/-! ## A096336.P8771732964544416760

`A002264(lt[A136020(n+2), A344330(n+4)])`
-/

namespace A096336.P8771732964544416760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344330 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096336.P8771732964544416760

/-! ## A096336.P2826385711539911376

`1-A081604((∑[A002487(n)]+1)²)+n`
-/

namespace A096336.P2826385711539911376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081604 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2).toNat + (n : ℤ)

end

end A096336.P2826385711539911376

/-! ## A096336.P1045468856848523565

`∑[A005171(A008619(A293760(n+1)))]`
-/

namespace A096336.P1045468856848523565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A008619 (A293760 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096336.P1045468856848523565

/-! ## A096336.P4470165437437321282

`A000523(A251706(n)+A039822(n))`
-/

namespace A096336.P4470165437437321282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A251706 n + A039822 n).toNat

end

end A096336.P4470165437437321282

/-!
# A096337: Number of those nonnegative integer solutions of the congruence x_1+2x_2+...+(n-1)x_{n-1} = 0 (mod n) which are indecomposable, that is, are not nonnegative linear combinations of other nonnegative integer solutions.

The programs for A096337, there is no canonical definition to state claims against.
-/

/-! ## A096337.P3070723008683922940

`A002956(n+1)-1`
-/

namespace A096337.P3070723008683922940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002956 (n + 1) - 1

end

end A096337.P3070723008683922940

/-! ## A096337.P12102254290532438467

`abs(A002956(A008619(2*n))-1)`
-/

namespace A096337.P12102254290532438467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002956 (A008619 (2 * n)).toNat - 1|

end

end A096337.P12102254290532438467

/-! ## A096337.P8381449722505733276

`A057428(n+1)+A002956(n+1)`
-/

namespace A096337.P8381449722505733276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002956 (n + 1)

end

end A096337.P8381449722505733276

/-! ## A096337.P5587878829062527989

`A260196(n+2)+A002956(n+1)`
-/

namespace A096337.P5587878829062527989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A002956 (n + 1)

end

end A096337.P5587878829062527989

/-! ## A096337.P3615394174715907874

`A033999(2*n+1)+A002956(n+1)`
-/

namespace A096337.P3615394174715907874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002956 (n + 1)

end

end A096337.P3615394174715907874

/-!
# A096338: a(n) = (2/(n-1))*a(n-1) + ((n+5)/(n-1))*a(n-2) with a(0)=0 and a(1)=1.

The programs for A096338, the canonical program `A096338.P16121698530532459035` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096338 has offset 0).

The definition of A096338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096338.P16121698530532459035

`2/(n-1)*a(n-1)+(n+5)/(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096338

/-- `2/(n-1)*a(n-1)+(n+5)/(n-1)*a(n-2)` -/
def P16121698530532459035.Spec : Prop :=
  ∀ n, P16121698530532459035.a n = (A096338 n : ℚ)

end A096338

/-! ## A096338.P6053737536910857811

`∑[C(ceil(n/2)+2, 3)]`
-/

namespace A096338.P6053737536910857811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(n : ℚ) / 2⌉ + 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096338.P6053737536910857811

namespace A096338

/-- `∑[C(ceil(n/2)+2, 3)]` -/
def P6053737536910857811.Spec : Prop :=
  ∀ n, (P6053737536910857811.a n : ℤ) = A096338 n

end A096338

/-! ## A096338.P18063884232180563601

`∑[∑[∑[∑[∑[(-1)^(n+1)*∑[n]]]]]]`
-/

namespace A096338.P18063884232180563601
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * ((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096338.P18063884232180563601

namespace A096338

/-- `∑[∑[∑[∑[∑[(-1)^(n+1)*∑[n]]]]]]` -/
def P18063884232180563601.Spec : Prop :=
  ∀ n, P18063884232180563601.a n = A096338 n

end A096338

/-! ## A096338.P9116560247023825803

`∑[∑[a(n-2)²]+a(n-2)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A096338.P9116560247023825803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A096338.P9116560247023825803

namespace A096338

/-- `∑[∑[a(n-2)²]+a(n-2)]+a(n-2)` -/
def P9116560247023825803.Spec : Prop :=
  ∀ n, (P9116560247023825803.a n : ℤ) = A096338 n

end A096338

/-! ## A096338.P16721030158233549514

`∑[∑[floor(a(n-2))]+a(n-2)]+a(n-2)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096338.P16721030158233549514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A096338.P16721030158233549514

namespace A096338

/-- `∑[∑[floor(a(n-2))]+a(n-2)]+a(n-2)` -/
def P16721030158233549514.Spec : Prop :=
  ∀ n, (P16721030158233549514.a n : ℤ) = A096338 n

end A096338

/-! ## A096338.P9801772786493582485

`∑[∑[a(n-2)+1]+a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A096338.P9801772786493582485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A096338.P9801772786493582485

namespace A096338

/-- `∑[∑[a(n-2)+1]+a(n-2)]-a(n-1)` -/
def P9801772786493582485.Spec : Prop :=
  ∀ n, P9801772786493582485.a n = A096338 n

end A096338

/-! ## A096338.P5846971500137986609

`∑[A058187(abs(1-n))]-1`
-/

namespace A096338.P5846971500137986609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096338.P5846971500137986609

namespace A096338

/-- `∑[A058187(abs(1-n))]-1` -/
def P5846971500137986609.Spec : Prop :=
  ∀ n, P5846971500137986609.a n = A096338 n

end A096338

/-! ## A096338.P1897478476409199211

`A006918(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A096338.P1897478476409199211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006918 n + a (n - 2)

end

end A096338.P1897478476409199211

namespace A096338

/-- `A006918(n)+a(n-2)` -/
def P1897478476409199211.Spec : Prop :=
  ∀ n, P1897478476409199211.a n = A096338 n

end A096338

/-! ## A096338.P8397622895458576698

`A002624(n)-∑[C(floor(n/2)+3, 3)]`
-/

namespace A096338.P8397622895458576698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096338.P8397622895458576698

namespace A096338

/-- `A002624(n)-∑[C(floor(n/2)+3, 3)]` -/
def P8397622895458576698.Spec : Prop :=
  ∀ n, P8397622895458576698.a n = A096338 n

end A096338

/-! ## A096338.P4238998907355344777

`(A001753(n)-A005995(n))/2`
-/

namespace A096338.P4238998907355344777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001753 n - A005995 n : ℚ) / 2

end

end A096338.P4238998907355344777

namespace A096338

/-- `(A001753(n)-A005995(n))/2` -/
def P4238998907355344777.Spec : Prop :=
  ∀ n, P4238998907355344777.a n = (A096338 n : ℚ)

end A096338

/-! ## A096338.P1068620584153182482

`A093039(n+1)-A189976(n+8)`
-/

namespace A096338.P1068620584153182482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093039 (n + 1) - A189976 (n + 8)

end

end A096338.P1068620584153182482

namespace A096338

/-- `A093039(n+1)-A189976(n+8)` -/
def P1068620584153182482.Spec : Prop :=
  ∀ n, P1068620584153182482.a n = A096338 n

end A096338

/-! ## A096338.P8726672014360322192

`∑[A190718(2*n)]-A190718(2*n)`
-/

namespace A096338.P8726672014360322192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A190718 (2 * n)

end

end A096338.P8726672014360322192

namespace A096338

/-- `∑[A190718(2*n)]-A190718(2*n)` -/
def P8726672014360322192.Spec : Prop :=
  ∀ n, P8726672014360322192.a n = A096338 n

end A096338

/-! ## A096338.P904694021526534493

`A189375(2*n)-A189375(2*n+1)/2`
-/

namespace A096338.P904694021526534493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189375 (2 * n) : ℚ) - (A189375 (2 * n + 1) : ℚ) / 2

end

end A096338.P904694021526534493

namespace A096338

/-- `A189375(2*n)-A189375(2*n+1)/2` -/
def P904694021526534493.Spec : Prop :=
  ∀ n, P904694021526534493.a n = (A096338 n : ℚ)

end A096338

/-! ## A096338.P3631711301399975613

`A081283(n)+A000292(A002265(2*n))`
-/

namespace A096338.P3631711301399975613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081283 n + A000292 (A002265 (2 * n)).toNat

end

end A096338.P3631711301399975613

namespace A096338

/-- `A081283(n)+A000292(A002265(2*n))` -/
def P3631711301399975613.Spec : Prop :=
  ∀ n, P3631711301399975613.a n = A096338 n

end A096338

/-! ## A096338.P4415670893620939653

`A271917(A074133(n+2))`
-/

namespace A096338.P4415670893620939653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271917 (A074133 (n + 2)).toNat

end

end A096338.P4415670893620939653

namespace A096338

/-- `A271917(A074133(n+2))` -/
def P4415670893620939653.Spec : Prop :=
  ∀ n, P4415670893620939653.a n = A096338 n

end A096338

/-! ## A096338.P11145133962680375154

`A271917(A080827(n+2))`
-/

namespace A096338.P11145133962680375154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271917 (A080827 (n + 2)).toNat

end

end A096338.P11145133962680375154

namespace A096338

/-- `A271917(A080827(n+2))` -/
def P11145133962680375154.Spec : Prop :=
  ∀ n, P11145133962680375154.a n = A096338 n

end A096338

/-!
# A096341: E.g.f.: exp(x)/(1-x)^7.

The programs for A096341, the canonical program `A096341.P9323409446152751513` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096341 has offset 0).

The definition of A096341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096341.P9323409446152751513

`(n+7)*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096341

/-- `(n+7)*a(n-1)-(n-1)*a(n-2)` -/
def P9323409446152751513.Spec : Prop :=
  ∀ n, P9323409446152751513.a n = A096341 n

theorem P9323409446152751513.correct : P9323409446152751513.Spec := by
  intro n
  simp only [A096341]

end A096341

/-! ## A096341.P14615961037689100702

`A096307(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A096341.P14615961037689100702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096307 n + (n : ℤ) * a (n - 1)

end

end A096341.P14615961037689100702

namespace A096341

/-- `A096307(n)+n*a(n-1)` -/
def P14615961037689100702.Spec : Prop :=
  ∀ n, P14615961037689100702.a n = A096341 n

end A096341

/-! ## A096341.P5296683543290587954

`Δ[A096307(n)/6]`
-/

namespace A096341.P5296683543290587954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096307 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096341.P5296683543290587954

namespace A096341

/-- `Δ[A096307(n)/6]` -/
def P5296683543290587954.Spec : Prop :=
  ∀ n, P5296683543290587954.a n = (A096341 n : ℚ)

end A096341

/-! ## A096341.P3945033342614654849

`Δ[Δ[A095177(n)/5]]/6`
-/

namespace A096341.P3945033342614654849
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095177 n : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 6

end

end A096341.P3945033342614654849

namespace A096341

/-- `Δ[Δ[A095177(n)/5]]/6` -/
def P3945033342614654849.Spec : Prop :=
  ∀ n, P3945033342614654849.a n = (A096341 n : ℚ)

end A096341

/-! ## A096341.P7775446663250804194

`A143409(eq[6, A002262(n)])`
-/

namespace A096341.P7775446663250804194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096341.P7775446663250804194

namespace A096341

/-- `A143409(eq[6, A002262(n)])` -/
def P7775446663250804194.Spec : Prop :=
  ∀ n, P7775446663250804194.a n = A096341 n

end A096341

/-! ## A096341.P5263315670675267808

`A143409(eq[64, A059268(n)])`
-/

namespace A096341.P5263315670675267808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096341.P5263315670675267808

namespace A096341

/-- `A143409(eq[64, A059268(n)])` -/
def P5263315670675267808.Spec : Prop :=
  ∀ n, P5263315670675267808.a n = A096341 n

end A096341

/-! ## A096341.P7797957204885571003

`A143409(eq[7, A002260(n+1)])`
-/

namespace A096341.P7797957204885571003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096341.P7797957204885571003

namespace A096341

/-- `A143409(eq[7, A002260(n+1)])` -/
def P7797957204885571003.Spec : Prop :=
  ∀ n, P7797957204885571003.a n = A096341 n

end A096341

/-!
# A096342: Primes of the form p*q + p + q, where p and q are two successive primes.

The programs for A096342, there is no canonical definition to state claims against.
-/

/-! ## A096342.P169081782897586504

`∩[A126199(n+1), A391078(n+1)]`
-/

namespace A096342.P169081782897586504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096342.P169081782897586504

/-! ## A096342.P12908784698614869963

`A341529(A126148(n+1))+A126148(n+1)`
-/

namespace A096342.P12908784698614869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (A126148 (n + 1)).toNat + A126148 (n + 1)

end

end A096342.P12908784698614869963

/-! ## A096342.P17810745537611922706

`A341528(A126148(n+1))+A162358(n+1)`
-/

namespace A096342.P17810745537611922706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (A126148 (n + 1)).toNat + A162358 (n + 1)

end

end A096342.P17810745537611922706

/-! ## A096342.P3071250516790480081

`A341528(A126148(n+1))+A007918(A126148(n+1)+1)`
-/

namespace A096342.P3071250516790480081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (A126148 (n + 1)).toNat + A007918 (A126148 (n + 1) + 1).toNat

end

end A096342.P3071250516790480081

/-! ## A096342.P12240139934094769991

`p?[A126199(n+1)]`
-/

namespace A096342.P12240139934094769991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096342.P12240139934094769991

/-!
# A096344: Number of 1's in binary expansion(sum of digits(n^n)).

The programs for A096344, there is no canonical definition to state claims against.
-/

/-! ## A096344.P14709823013300965242

`∑{d}[A066588(n+1), A297115(#)]`
-/

namespace A096344.P14709823013300965242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A096344.P14709823013300965242

/-! ## A096344.P10061879447678090085

`A000120(A066588(n+1))`
-/

namespace A096344.P10061879447678090085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066588 (n + 1)).toNat

end

end A096344.P10061879447678090085

/-! ## A096344.P6878192357747315175

`A048881(A066588(n+1)-1)+1`
-/

namespace A096344.P6878192357747315175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A066588 (n + 1) - 1).toNat + 1

end

end A096344.P6878192357747315175

/-! ## A096344.P3576621298322473087

`A048881(2*A066588(n+1))`
-/

namespace A096344.P3576621298322473087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A066588 (n + 1)).toNat

end

end A096344.P3576621298322473087

/-! ## A096344.P7587307835804977682

`A358371(A066588(n+1)+1)`
-/

namespace A096344.P7587307835804977682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A066588 (n + 1) + 1).toNat

end

end A096344.P7587307835804977682

/-!
# A096345: Primes of the form p*q - p - q, where p and q are two successive primes.

The programs for A096345, there is no canonical definition to state claims against.
-/

/-! ## A096345.P415857849694288550

`∩[A037165(n+1), A390933(n+1)]`
-/

namespace A096345.P415857849694288550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096345.P415857849694288550

/-! ## A096345.P7668830330794521601

`p?[A037165(n+1)]`
-/

namespace A096345.P7668830330794521601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096345.P7668830330794521601

/-! ## A096345.P16130274189917055117

`p?[A083553(n+1)-1]`
-/

namespace A096345.P16130274189917055117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083553 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096345.P16130274189917055117

/-! ## A096345.P15076319876815280649

`p?[A006094(n+1)-A001043(n+1)]`
-/

namespace A096345.P15076319876815280649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096345.P15076319876815280649

/-! ## A096345.P7470160424039551135

`p?[A037167(n+1)-A000040(n+1)]`
-/

namespace A096345.P7470160424039551135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096345.P7470160424039551135

/-!
# A096346: Complement of A004128.

The programs for A096346, the canonical program `A096346.P12832613855831610869` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096346 has offset 0).

The definition of A096346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096346.P12832613855831610869

`comp[a(floor(n/3))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096346

/-- `comp[a(floor(n/3))+n]` -/
def P12832613855831610869.Spec : Prop :=
  ∀ n, (P12832613855831610869.a n : ℤ) = A096346 n

theorem P12832613855831610869.correct : P12832613855831610869.Spec := by
  intro n
  simp only [A096346]

end A096346

/-! ## A096346.P12749237177068798209

`Δ[A029714(n)]+n`
-/

namespace A096346.P12749237177068798209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A096346.P12749237177068798209

namespace A096346

/-- `Δ[A029714(n)]+n` -/
def P12749237177068798209.Spec : Prop :=
  ∀ n, P12749237177068798209.a n = A096346 n

end A096346

/-! ## A096346.P12466833856745918663

`3*A120503(n+1)+n`
-/

namespace A096346.P12466833856745918663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120503 (n + 1) + (n : ℤ)

end

end A096346.P12466833856745918663

namespace A096346

/-- `3*A120503(n+1)+n` -/
def P12466833856745918663.Spec : Prop :=
  ∀ n, P12466833856745918663.a n = A096346 n

end A096346

/-! ## A096346.P12754805208640202015

`A008585(A120503(n+1))+n`
-/

namespace A096346.P12754805208640202015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A120503 (n + 1)).toNat + (n : ℤ)

end

end A096346.P12754805208640202015

namespace A096346

/-- `A008585(A120503(n+1))+n` -/
def P12754805208640202015.Spec : Prop :=
  ∀ n, P12754805208640202015.a n = A096346 n

end A096346

/-! ## A096346.P5283071115942308334

`A080579(n+2)-2`
-/

namespace A096346.P5283071115942308334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 2) - 2

end

end A096346.P5283071115942308334

namespace A096346

/-- `A080579(n+2)-2` -/
def P5283071115942308334.Spec : Prop :=
  ∀ n, P5283071115942308334.a n = A096346 n

end A096346

/-! ## A096346.P4307575705719743990

`A007844(n+1)+n`
-/

namespace A096346.P4307575705719743990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (n + 1) + (n : ℤ)

end

end A096346.P4307575705719743990

namespace A096346

/-- `A007844(n+1)+n` -/
def P4307575705719743990.Spec : Prop :=
  ∀ n, P4307575705719743990.a n = A096346 n

end A096346

/-! ## A096346.P11437515410455091035

`∑[A000029(Δ[A007844(n)])]`
-/

namespace A096346.P11437515410455091035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096346.P11437515410455091035

namespace A096346

/-- `∑[A000029(Δ[A007844(n)])]` -/
def P11437515410455091035.Spec : Prop :=
  ∀ n, P11437515410455091035.a n = A096346 n

end A096346

/-! ## A096346.P6501143605286814326

`∑[A000031(Δ[A007844(n)])]`
-/

namespace A096346.P6501143605286814326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096346.P6501143605286814326

namespace A096346

/-- `∑[A000031(Δ[A007844(n)])]` -/
def P6501143605286814326.Spec : Prop :=
  ∀ n, P6501143605286814326.a n = A096346 n

end A096346

/-! ## A096346.P3126645434272506958

`∑[A001972(Δ[A007844(n)])]`
-/

namespace A096346.P3126645434272506958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096346.P3126645434272506958

namespace A096346

/-- `∑[A001972(Δ[A007844(n)])]` -/
def P3126645434272506958.Spec : Prop :=
  ∀ n, P3126645434272506958.a n = A096346 n

end A096346

/-! ## A096346.P3791071014256912341

`∑[A008739(Δ[A007844(n)])]`
-/

namespace A096346.P3791071014256912341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096346.P3791071014256912341

namespace A096346

/-- `∑[A008739(Δ[A007844(n)])]` -/
def P3791071014256912341.Spec : Prop :=
  ∀ n, P3791071014256912341.a n = A096346 n

end A096346

/-! ## A096346.P8150622212587899961

`comp[round(a(n-1)+val(n, 3))]` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A096346.P8150622212587899961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A096346.P8150622212587899961

namespace A096346

/-- `comp[round(a(n-1)+val(n, 3))]` -/
def P8150622212587899961.Spec : Prop :=
  ∀ n, (P8150622212587899961.a n : ℤ) = A096346 n

end A096346

/-! ## A096346.P12674843914119218110

`comp[A004128(n)]`
-/

namespace A096346.P12674843914119218110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A096346.P12674843914119218110

namespace A096346

/-- `comp[A004128(n)]` -/
def P12674843914119218110.Spec : Prop :=
  ∀ n, (P12674843914119218110.a n : ℤ) = A096346 n

end A096346

/-! ## A096346.P16983882036268478636

`eq[A120525(n+1)+1, 1]`
-/

namespace A096346.P16983882036268478636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A096346.P16983882036268478636

namespace A096346

/-- `eq[A120525(n+1)+1, 1]` -/
def P16983882036268478636.Spec : Prop :=
  ∀ n, (P16983882036268478636.a n : ℤ) = A096346 n

end A096346

/-! ## A096346.P14099831643082887650

`eq[1, Δ[A080579(n+1)]]`
-/

namespace A096346.P14099831643082887650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096346.P14099831643082887650

namespace A096346

/-- `eq[1, Δ[A080579(n+1)]]` -/
def P14099831643082887650.Spec : Prop :=
  ∀ n, (P14099831643082887650.a n : ℤ) = A096346 n

end A096346

/-! ## A096346.P14780585252326586223

`A023444(A080579(n+2))`
-/

namespace A096346.P14780585252326586223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080579 (n + 2)).toNat

end

end A096346.P14780585252326586223

namespace A096346

/-- `A023444(A080579(n+2))` -/
def P14780585252326586223.Spec : Prop :=
  ∀ n, P14780585252326586223.a n = A096346 n

end A096346

/-! ## A096346.P14561100794366022139

`comp[A054861(n)]`
-/

namespace A096346.P14561100794366022139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A096346.P14561100794366022139

namespace A096346

/-- `comp[A054861(n)]` -/
def P14561100794366022139.Spec : Prop :=
  ∀ n, (P14561100794366022139.a n : ℤ) = A096346 n

end A096346

/-! ## A096346.P4268350026122147540

`eq[2, A296150(eq[2, A296150(n+1)])]`
-/

namespace A096346.P4268350026122147540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096346.P4268350026122147540

namespace A096346

/-- `eq[2, A296150(eq[2, A296150(n+1)])]` -/
def P4268350026122147540.Spec : Prop :=
  ∀ n, (P4268350026122147540.a n : ℤ) = A096346 n

end A096346

/-!
# A096347: Least number with n preimages (or immediate predecessors) under f(n) = n + (product of nonzero digits of n).

The programs for A096347, there is no canonical definition to state claims against.
-/

/-! ## A096347.P3839437857099239997

`A320536(record[A038281(n)])`
-/

namespace A096347.P3839437857099239997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096347.P3839437857099239997

/-!
# A096351: Number of meaningfully different ways to design a neutral single-elimination tournament with n teams.

The programs for A096351, the canonical program `A096351.P17769226119472261959` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096351 has offset 1).

The definition of A096351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096351.P17769226119472261959

`(n+1)!/2^A268289(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096351

/-- `(n+1)!/2^A268289(n)` -/
def P17769226119472261959.Spec : Prop :=
  ∀ n, P17769226119472261959.a n = (A096351 (n + 1) : ℚ)

end A096351

/-! ## A096351.P17174418426471548937

`(n+1)!/A000079(A268289(n))`
-/

namespace A096351.P17174418426471548937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A096351.P17174418426471548937

namespace A096351

/-- `(n+1)!/A000079(A268289(n))` -/
def P17174418426471548937.Spec : Prop :=
  ∀ n, P17174418426471548937.a n = (A096351 (n + 1) : ℚ)

end A096351

/-! ## A096351.P1811083729448411777

`record[A094587(n)]/A000079(A268289(n))`
-/

namespace A096351.P1811083729448411777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A096351.P1811083729448411777

namespace A096351

/-- `record[A094587(n)]/A000079(A268289(n))` -/
def P1811083729448411777.Spec : Prop :=
  ∀ n, P1811083729448411777.a n = (A096351 (n + 1) : ℚ)

end A096351

/-! ## A096351.P3061428245884644803

`A000142(n+1)/A000079(A268289(n))`
-/

namespace A096351.P3061428245884644803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A096351.P3061428245884644803

namespace A096351

/-- `A000142(n+1)/A000079(A268289(n))` -/
def P3061428245884644803.Spec : Prop :=
  ∀ n, P3061428245884644803.a n = (A096351 (n + 1) : ℚ)

end A096351

/-! ## A096351.P9436062784418914350

`∏[A000027(n+1)]/A000079(A268289(n))`
-/

namespace A096351.P9436062784418914350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A096351.P9436062784418914350

namespace A096351

/-- `∏[A000027(n+1)]/A000079(A268289(n))` -/
def P9436062784418914350.Spec : Prop :=
  ∀ n, P9436062784418914350.a n = (A096351 (n + 1) : ℚ)

end A096351

/-! ## A096351.P226982197584094750

`record[A173333(n+1)]/A000079(A268289(n))`
-/

namespace A096351.P226982197584094750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000079 (A268289 n).toNat : ℚ)

end

end A096351.P226982197584094750

namespace A096351

/-- `record[A173333(n+1)]/A000079(A268289(n))` -/
def P226982197584094750.Spec : Prop :=
  ∀ n, P226982197584094750.a n = (A096351 (n + 1) : ℚ)

end A096351

/-!
# A096353: Integer part of the logarithmic integral of the logarithmic integral of 10^n.

The programs for A096353, there is no canonical definition to state claims against.
-/

/-! ## A096353.P15826112680256303633

`A047783(A057754(n+1))`
-/

namespace A096353.P15826112680256303633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A057754 (n + 1)).toNat

end

end A096353.P15826112680256303633

/-!
# A096354: Integer part of the fourth nesting of the logarithmic integral of 10^n.

The programs for A096354, there is no canonical definition to state claims against.
-/

/-! ## A096354.P12935532460152934062

`A047783(or(2, A096358(n+1)))`
-/

namespace A096354.P12935532460152934062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (Int.lor 2 (A096358 (n + 1))).toNat

end

end A096354.P12935532460152934062

/-! ## A096354.P6871858027647233048

`A047783(A096358(n+1)+A004526(n))`
-/

namespace A096354.P6871858027647233048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A096358 (n + 1) + A004526 n).toNat

end

end A096354.P6871858027647233048

/-! ## A096354.P8172755835567674465

`A047783(A096358(n+1)+A066882(n))`
-/

namespace A096354.P8172755835567674465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A096358 (n + 1) + A066882 n).toNat

end

end A096354.P8172755835567674465

/-!
# A096356: Smallest number which can be expressed as the sum of its proper divisors in exactly n ways.

The programs for A096356, there is no canonical definition to state claims against.
-/

/-! ## A096356.P7366923946430108532

`A371030(a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A096356.P7366923946430108532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A371030 (a (n - 1)).toNat

end

end A096356.P7366923946430108532

/-!
# A096357: Lcm[{ad(n)}], i.e. the least common multiple of the anti-divisors of n.

The programs for A096357, there is no canonical definition to state claims against.
-/

/-! ## A096357.P2596868683733588248

`A091507(n+3)-A186733(A262616(n))`
-/

namespace A096357.P2596868683733588248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091507 (n + 3) - A186733 (A262616 n).toNat

end

end A096357.P2596868683733588248

/-! ## A096357.P5012358573737754743

`A091507(n+3)/A000188(A000108(n))`
-/

namespace A096357.P5012358573737754743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A000188 (A000108 n).toNat : ℚ)

end

end A096357.P5012358573737754743

/-! ## A096357.P7150458103504464347

`A091507(n+3)/A167965(A055491(n+1))`
-/

namespace A096357.P7150458103504464347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A167965 (A055491 (n + 1)).toNat : ℚ)

end

end A096357.P7150458103504464347

/-! ## A096357.P1029286406475345397

`A091507(n+3)/A333254(A333244(n+1))`
-/

namespace A096357.P1029286406475345397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A333254 (A333244 (n + 1)).toNat : ℚ)

end

end A096357.P1029286406475345397

/-! ## A096357.P3003856570790077169

`A091507(n+3)/A230093(A060492(n+3))`
-/

namespace A096357.P3003856570790077169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A230093 (A060492 (n + 3)).toNat : ℚ)

end

end A096357.P3003856570790077169

/-!
# A096358: Integer part of the third nesting of the logarithmic integral of 10^n.

The programs for A096358, there is no canonical definition to state claims against.
-/

/-! ## A096358.P13312456254066022737

`A047783(A096353(n+1)+1)`
-/

namespace A096358.P13312456254066022737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (A096353 (n + 1) + 1).toNat

end

end A096358.P13312456254066022737

/-!
# A096359: Numbers formed by the second nesting of pi(10^n).

The programs for A096359, there is no canonical definition to state claims against.
-/

/-! ## A096359.P314112682695464670

`A000720(A006880(n+1))`
-/

namespace A096359.P314112682695464670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006880 (n + 1)).toNat

end

end A096359.P314112682695464670

/-! ## A096359.P17750411395291079390

`A000720(or(2, A037052(n)))`
-/

namespace A096359.P17750411395291079390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor 2 (A037052 n)).toNat

end

end A096359.P17750411395291079390

/-!
# A096360: Divisors of perfect numbers (A000396), sorted.

The programs for A096360, there is no canonical definition to state claims against.
-/

/-! ## A096360.P13078244903060510549

`∪[2^n, A341622(n+1)]`
-/

namespace A096360.P13078244903060510549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096360.P13078244903060510549

/-! ## A096360.P4463123880586836789

`∪[A341622(n+1), A000079(n)]`
-/

namespace A096360.P4463123880586836789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096360.P4463123880586836789

/-! ## A096360.P2271736299462050275

`∪[A341622(n+1), Δ[A000225(n)]]`
-/

namespace A096360.P2271736299462050275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096360.P2271736299462050275

/-! ## A096360.P38305449120368708

`∪[A341622(n+1), record[A029930(n)]]`
-/

namespace A096360.P38305449120368708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096360.P38305449120368708

/-! ## A096360.P9074434065674749182

`∪[A341622(n+1), A317306(n+1)]`
-/

namespace A096360.P9074434065674749182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096360.P9074434065674749182

/-!
# A096361: Total number of triangles in all polyiamonds with n triangles.

The programs for A096361, there is no canonical definition to state claims against.
-/

/-! ## A096361.P10127507718665120696

`(n+1)*A000577(n+1)`
-/

namespace A096361.P10127507718665120696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000577 (n + 1)

end

end A096361.P10127507718665120696

/-! ## A096361.P5770127390750008853

`A000577(n+1)*A387051(n)`
-/

namespace A096361.P5770127390750008853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) * A387051 n

end

end A096361.P5770127390750008853

/-! ## A096361.P5405309106061910222

`(n+1)*(A119532(n+1)-Δ[A173271(n)])`
-/

namespace A096361.P5405309106061910222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A119532 (n + 1) - (f1 (n + 1) - f1 n))

end

end A096361.P5405309106061910222

/-! ## A096361.P16056695184358544066

`(n+1)*(A030224(n+1)+A030223(n+1))`
-/

namespace A096361.P16056695184358544066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A030224 (n + 1) + A030223 (n + 1))

end

end A096361.P16056695184358544066

/-! ## A096361.P9903441621069864802

`(n+1)*(A070765(n+1)+A070764(n+1))`
-/

namespace A096361.P9903441621069864802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070765 (n + 1) + A070764 (n + 1))

end

end A096361.P9903441621069864802

/-!
# A096362: Order in which prime factors first occur in the Lucas sequence.

The programs for A096362, there is no canonical definition to state claims against.
-/

/-! ## A096362.P1273643654677056310

`p?[A016240(n)*A058036(n)]`
-/

namespace A096362.P1273643654677056310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A058036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096362.P1273643654677056310

/-! ## A096362.P9419503346641983029

`p?[A058036(n)-A181340(n+1)]`
-/

namespace A096362.P9419503346641983029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058036 n - A181340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096362.P9419503346641983029

/-! ## A096362.P9303520249751679880

`p?[A058036(n)*A059196(n+1)]`
-/

namespace A096362.P9303520249751679880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058036 n * A059196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096362.P9303520249751679880

/-! ## A096362.P2683125444588683439

`p?[A058036(n)]%A058052(n+2)`
-/

namespace A096362.P2683125444588683439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A058052 (n + 2))

end

end A096362.P2683125444588683439

/-! ## A096362.P6764930627622948920

`p?[A058036(n)%A000203(A022112(n))]`
-/

namespace A096362.P6764930627622948920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058036 n) (A000203 (A022112 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096362.P6764930627622948920

/-!
# A096363: Length of repeating cycle of the final n digits in the Fibonacci sequence.

The programs for A096363, the canonical program `A096363.P15742733776789124469` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096363 has offset 1).

The definition of A096363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096363.P7846189018141138131

`3*A216099(n+2)`
-/

namespace A096363.P7846189018141138131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A216099 (n + 2)

end

end A096363.P7846189018141138131

namespace A096363

/-- `3*A216099(n+2)` -/
def P7846189018141138131.Spec : Prop :=
  ∀ n, P7846189018141138131.a n = A096363 (n + 1)

end A096363

/-! ## A096363.P15742733776789124469

`5*A114307(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096363

/-- `5*A114307(n+1)` -/
def P15742733776789124469.Spec : Prop :=
  ∀ n, P15742733776789124469.a n = A096363 (n + 1)

theorem P15742733776789124469.correct : P15742733776789124469.Spec := by
  intro n
  simp only [A096363, Nat.add_sub_cancel]

end A096363

/-! ## A096363.P4974988061106326072

`5*lcm(12, 10^n)`
-/

namespace A096363.P4974988061106326072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lcm 12 (10 ^ n)

end

end A096363.P4974988061106326072

namespace A096363

/-- `5*lcm(12, 10^n)` -/
def P4974988061106326072.Spec : Prop :=
  ∀ n, (P4974988061106326072.a n : ℤ) = A096363 (n + 1)

end A096363

/-! ## A096363.P15472494019343483565

`lcm(4, Δ[A126109(n)])`
-/

namespace A096363.P15472494019343483565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (f1 (n + 1) - f1 n)

end

end A096363.P15472494019343483565

namespace A096363

/-- `lcm(4, Δ[A126109(n)])` -/
def P15472494019343483565.Spec : Prop :=
  ∀ n, (P15472494019343483565.a n : ℤ) = A096363 (n + 1)

end A096363

/-! ## A096363.P5491766624852062345

`lcm(12, Δ[A002279(n)])`
-/

namespace A096363.P5491766624852062345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (f1 (n + 1) - f1 n)

end

end A096363.P5491766624852062345

namespace A096363

/-- `lcm(12, Δ[A002279(n)])` -/
def P5491766624852062345.Spec : Prop :=
  ∀ n, (P5491766624852062345.a n : ℤ) = A096363 (n + 1)

end A096363

/-! ## A096363.P1230178871704915448

`lcm(20, Δ[A246057(n)])`
-/

namespace A096363.P1230178871704915448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 20 (f1 (n + 1) - f1 n)

end

end A096363.P1230178871704915448

namespace A096363

/-- `lcm(20, Δ[A246057(n)])` -/
def P1230178871704915448.Spec : Prop :=
  ∀ n, (P1230178871704915448.a n : ℤ) = A096363 (n + 1)

end A096363

/-! ## A096363.P12858385723700278157

`3*A216164(n+3)`
-/

namespace A096363.P12858385723700278157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A216164 (n + 3)

end

end A096363.P12858385723700278157

namespace A096363

/-- `3*A216164(n+3)` -/
def P12858385723700278157.Spec : Prop :=
  ∀ n, P12858385723700278157.a n = A096363 (n + 1)

end A096363

/-!
# A096364: Number of ways to generate a Coxeter element of the reflection group of the root system B_n with certain restrictions on generators: (3n-4)*(n-2)^(n-2) - (n-1)^(n-1).

The programs for A096364, the canonical program `A096364.P6771774350481292813` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096364 has offset 1).

The definition of A096364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096364.P6771774350481292813

`(3*(n+1)-4)*(n-1)^(n-1)-n^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096364

/-- `(3*(n+1)-4)*(n-1)^(n-1)-n^n` -/
def P6771774350481292813.Spec : Prop :=
  ∀ n, P6771774350481292813.a n = (A096364 (n + 1) : ℚ)

end A096364

/-!
# A096365: Maximum number of iterations of the RUNS transform needed to reduce any binary sequence of length n to a sequence of length 1.

The programs for A096365, there is no canonical definition to state claims against.
-/

/-! ## A096365.P18059745265526651691

`floor(log2(A284521(2*n+1)))`
-/

namespace A096365.P18059745265526651691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A284521 (2 * n + 1)).toNat

end

end A096365.P18059745265526651691

/-! ## A096365.P17711758431270163951

`round(log2(A213706(2*n+1)))`
-/

namespace A096365.P17711758431270163951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A213706 (2 * n + 1) : ℝ))

end

end A096365.P17711758431270163951

/-! ## A096365.P11869132675356303168

`round(log2(A329110(2*n+1)))`
-/

namespace A096365.P11869132675356303168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A329110 (2 * n + 1) : ℝ))

end

end A096365.P11869132675356303168

/-! ## A096365.P7735625530516359750

`A319412(n+1)%∑[n+1]`
-/

namespace A096365.P7735625530516359750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319412 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096365.P7735625530516359750

/-! ## A096365.P14778394167116391478

`round(log2(∑[A159077(2*n+1)]))`
-/

namespace A096365.P14778394167116391478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A096365.P14778394167116391478

/-! ## A096365.P14116334600230255810

`A087156(A319412(n+1))`
-/

namespace A096365.P14116334600230255810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A319412 (n + 1)).toNat

end

end A096365.P14116334600230255810

/-! ## A096365.P1575783454297088781

`A319412(n+1)-A000007(n)`
-/

namespace A096365.P1575783454297088781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319412 (n + 1) - A000007 n

end

end A096365.P1575783454297088781

/-! ## A096365.P4472994700461992574

`A319412(n+1)-A151878(n)`
-/

namespace A096365.P4472994700461992574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319412 (n + 1) - A151878 n

end

end A096365.P4472994700461992574

/-! ## A096365.P9291253282842813542

`A319412(n+1)-A151909(n)`
-/

namespace A096365.P9291253282842813542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319412 (n + 1) - A151909 n

end

end A096365.P9291253282842813542

/-! ## A096365.P8672678504825389965

`A319412(n+1)-A151933(n)`
-/

namespace A096365.P8672678504825389965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319412 (n + 1) - A151933 n

end

end A096365.P8672678504825389965

/-!
# A096366: Known primitive friendly integers.

The programs for A096366, there is no canonical definition to state claims against.
-/

/-! ## A096366.P16535338692563257568

`∩[A074902(n+1), A345914(n+1)]`
-/

namespace A096366.P16535338692563257568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096366.P16535338692563257568

/-! ## A096366.P12885092318295254796

`A074902(A342951(n+1))`
-/

namespace A096366.P12885092318295254796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (A342951 (n + 1)).toNat

end

end A096366.P12885092318295254796

/-!
# A096367: Number of winning paths of length n+1 across an n X n Hex board.

The programs for A096367, the canonical program `A096367.P9143124297708682896` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096367 has offset 3).

The definition of A096367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096367.P9143124297708682896

`(n+1)*(n+4)*2^n-2^(n+2)+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096367

/-- `(n+1)*(n+4)*2^n-2^(n+2)+2` -/
def P9143124297708682896.Spec : Prop :=
  ∀ n, P9143124297708682896.a n = A096367 (n + 3)

theorem P9143124297708682896.correct : P9143124297708682896.Spec := by
  intro n
  simp only [A096367, Nat.add_sub_cancel]

end A096367

/-! ## A096367.P844396136722273892

`or(2, n*A196410(n+5))`
-/

namespace A096367.P844396136722273892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) * A196410 (n + 5))

end

end A096367.P844396136722273892

namespace A096367

/-- `or(2, n*A196410(n+5))` -/
def P844396136722273892.Spec : Prop :=
  ∀ n, P844396136722273892.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P10713339537230280020

`∑[A176027(n+1)-2^n]`
-/

namespace A096367.P10713339537230280020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P10713339537230280020

namespace A096367

/-- `∑[A176027(n+1)-2^n]` -/
def P10713339537230280020.Spec : Prop :=
  ∀ n, P10713339537230280020.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P2039838482659530310

`∑[2^n*A046691(n+1)]`
-/

namespace A096367.P2039838482659530310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A046691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P2039838482659530310

namespace A096367

/-- `∑[2^n*A046691(n+1)]` -/
def P2039838482659530310.Spec : Prop :=
  ∀ n, P2039838482659530310.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P18236993643854069227

`∑[(∑[n+3]-1)*A000079(n)]`
-/

namespace A096367.P18236993643854069227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P18236993643854069227

namespace A096367

/-- `∑[(∑[n+3]-1)*A000079(n)]` -/
def P18236993643854069227.Spec : Prop :=
  ∀ n, P18236993643854069227.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P12379774165195762753

`∑[(∑[n+3]-1)*Δ[A000225(n)]]`
-/

namespace A096367.P12379774165195762753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P12379774165195762753

namespace A096367

/-- `∑[(∑[n+3]-1)*Δ[A000225(n)]]` -/
def P12379774165195762753.Spec : Prop :=
  ∀ n, P12379774165195762753.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P5709219651484035255

`∑[(∑[n+3]-1)*A016116(2*n)]`
-/

namespace A096367.P5709219651484035255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P5709219651484035255

namespace A096367

/-- `∑[(∑[n+3]-1)*A016116(2*n)]` -/
def P5709219651484035255.Spec : Prop :=
  ∀ n, P5709219651484035255.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P11244986772997708956

`∑[(∑[n+3]-1)*A060546(2*n)]`
-/

namespace A096367.P11244986772997708956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * A060546 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P11244986772997708956

namespace A096367

/-- `∑[(∑[n+3]-1)*A060546(2*n)]` -/
def P11244986772997708956.Spec : Prop :=
  ∀ n, P11244986772997708956.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P13902485110111997103

`2*(∑[(∑[n+3]-1)*A131577(n)]+1)`
-/

namespace A096367.P13902485110111997103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096367.P13902485110111997103

namespace A096367

/-- `2*(∑[(∑[n+3]-1)*A131577(n)]+1)` -/
def P13902485110111997103.Spec : Prop :=
  ∀ n, P13902485110111997103.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P379755913715987003

`∑[(∑[n]+3*n+2)*A011782(n+1)]`
-/

namespace A096367.P379755913715987003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + (3 * n + 2) : ℕ) : ℤ) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P379755913715987003

namespace A096367

/-- `∑[(∑[n]+3*n+2)*A011782(n+1)]` -/
def P379755913715987003.Spec : Prop :=
  ∀ n, P379755913715987003.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P10503857492670737442

`∑[A001793(n+2)-A007283(n)]`
-/

namespace A096367.P10503857492670737442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 2) - A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096367.P10503857492670737442

namespace A096367

/-- `∑[A001793(n+2)-A007283(n)]` -/
def P10503857492670737442.Spec : Prop :=
  ∀ n, P10503857492670737442.a n = A096367 (n + 3)

end A096367

/-! ## A096367.P3502458333962178364

`2*(A001815(n+1)+A000337(n+1))`
-/

namespace A096367.P3502458333962178364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001815 (n + 1) + A000337 (n + 1))

end

end A096367.P3502458333962178364

namespace A096367

/-- `2*(A001815(n+1)+A000337(n+1))` -/
def P3502458333962178364.Spec : Prop :=
  ∀ n, P3502458333962178364.a n = A096367 (n + 3)

end A096367

/-!
# A096368: Number of unlabeled regular tournaments with 2n+1 nodes.

The programs for A096368, there is no canonical definition to state claims against.
-/

/-! ## A096368.P17078378745271243520

`A255599(Δ[n²])`
-/

namespace A096368.P17078378745271243520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A096368.P17078378745271243520

/-! ## A096368.P6968009111732867274

`or(1, A255599(2*n+1))`
-/

namespace A096368.P6968009111732867274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255599 (2 * n + 1))

end

end A096368.P6968009111732867274

/-! ## A096368.P7757645296848966648

`∏{d}[2*n+1, A255599(#)]`
-/

namespace A096368.P7757645296848966648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A255599 d

end

end A096368.P7757645296848966648

/-! ## A096368.P16719818265000186075

`∏{e}[A002023(n), A255599(#)]`
-/

namespace A096368.P16719818265000186075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255599 (Nat.factorization (f1 n).natAbs p)

end

end A096368.P16719818265000186075

/-!
# A096370: a(n) is one greater than the number of repeated applications of the Reverse and Add (RA) transform applied to the binary representation of n that are required to reach a palindrome, or a(n)=0 if a palindrome is never reached.

The programs for A096370, there is no canonical definition to state claims against.
-/

/-! ## A096370.P3021562863175006223

`A066057(n+1)+1`
-/

namespace A096370.P3021562863175006223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (n + 1) + 1

end

end A096370.P3021562863175006223

/-! ## A096370.P2338153680913265664

`1-Δ[a(n-1)-A066057(n)]` with `a(0)=0`
-/

namespace A096370.P2338153680913265664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A066057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A096370.P2338153680913265664

/-! ## A096370.P2413516427191252725

`1-Δ[A001489(∑[A066057(n)])]`
-/

namespace A096370.P2413516427191252725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A096370.P2413516427191252725

/-! ## A096370.P51168974055772478

`∑[Δ[A066057(n)]^A178334(n)]`
-/

namespace A096370.P51168974055772478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096370.P51168974055772478

/-! ## A096370.P3805897619413037694

`∑[1-Δ[A004273(n)-n-A066057(n)]]`
-/

namespace A096370.P3805897619413037694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (n : ℤ) - A066057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096370.P3805897619413037694

/-!
# A096371: Arithmetic derivative of n-th partition number.

The programs for A096371, there is no canonical definition to state claims against.
-/

/-! ## A096371.P14228999762782945625

`A003415(A000041(n))`
-/

namespace A096371.P14228999762782945625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000041 n).toNat

end

end A096371.P14228999762782945625

/-! ## A096371.P6426919429922090634

`∑{d}[A000041(n), A300251(#)]`
-/

namespace A096371.P6426919429922090634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A096371.P6426919429922090634

/-! ## A096371.P1755479954885579263

`∑{d}[A213598(n), A300251(#)]`
-/

namespace A096371.P1755479954885579263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A096371.P1755479954885579263

/-! ## A096371.P10460636501160851308

`∑{d}[sqrt(A001255(n)), A300251(#)]`
-/

namespace A096371.P10460636501160851308
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A096371.P10460636501160851308

/-! ## A096371.P11706544294578131996

`∑{d}[∑[A002865(n)], A300251(#)]`
-/

namespace A096371.P11706544294578131996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A096371.P11706544294578131996

/-!
# A096373: Number of partitions of n such that the least part occurs exactly twice.

The programs for A096373, there is no canonical definition to state claims against.
-/

/-! ## A096373.P4929011642560505227

`Δ[A324368(n+3)]`
-/

namespace A096373.P4929011642560505227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324368 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096373.P4929011642560505227

/-! ## A096373.P9965228522772846757

`∑[A053445(n)]-A053445(n+2)`
-/

namespace A096373.P9965228522772846757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053445 (n + 2)

end

end A096373.P9965228522772846757

/-! ## A096373.P892295876094225478

`A117989(n+1)-A238589(n+1)`
-/

namespace A096373.P892295876094225478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - A238589 (n + 1)

end

end A096373.P892295876094225478

/-! ## A096373.P15085002557644113008

`A238594(n+1)-A002865(n+2)`
-/

namespace A096373.P15085002557644113008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238594 (n + 1) - A002865 (n + 2)

end

end A096373.P15085002557644113008

/-! ## A096373.P16426759375315509333

`A002865(n+2)-A053445(n+2)`
-/

namespace A096373.P16426759375315509333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2) - A053445 (n + 2)

end

end A096373.P16426759375315509333

/-! ## A096373.P1170864708409039581

`A117989(n+3)-A000041(n+1)`
-/

namespace A096373.P1170864708409039581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 3) - A000041 (n + 1)

end

end A096373.P1170864708409039581

/-! ## A096373.P6387093945042091375

`A187219(n+2)-A053445(n+2)`
-/

namespace A096373.P6387093945042091375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) - A053445 (n + 2)

end

end A096373.P6387093945042091375

/-! ## A096373.P4401640409853710383

`A238594(n+1)-Δ[Δ[A000070(n)]]`
-/

namespace A096373.P4401640409853710383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238594 (n + 1) - (f1 (n + 1) - f1 n)

end

end A096373.P4401640409853710383

/-! ## A096373.P3560305623728306548

`A002865(n+1)-(A072380(n+1)+A072380(n))`
-/

namespace A096373.P3560305623728306548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - (A072380 (n + 1) + A072380 n)

end

end A096373.P3560305623728306548

/-! ## A096373.P11795222660666773254

`A002865(n+1)+A162934(n+6)-A162932(n+6)`
-/

namespace A096373.P11795222660666773254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A162934 (n + 6) - A162932 (n + 6))

end

end A096373.P11795222660666773254

/-!
# A096374: Number of partitions of n such that the least part occurs with even multiplicity.

The programs for A096374, there is no canonical definition to state claims against.
-/

/-! ## A096374.P1109979205199193277

`record[A035363(n)]-A096375(n+1)`
-/

namespace A096374.P1109979205199193277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096375 (n + 1)

end

end A096374.P1109979205199193277

/-! ## A096374.P4951350454719516754

`record[A035444(n)]-A096375(n+1)`
-/

namespace A096374.P4951350454719516754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096375 (n + 1)

end

end A096374.P4951350454719516754

/-! ## A096374.P8722841425545867130

`A000041(n+1)-A096375(n+1)`
-/

namespace A096374.P8722841425545867130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A096375 (n + 1)

end

end A096374.P8722841425545867130

/-! ## A096374.P17470753552853921247

`1-(A096375(n+1)-A000065(n+1))`
-/

namespace A096374.P17470753552853921247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A096375 (n + 1) - A000065 (n + 1))

end

end A096374.P17470753552853921247

/-! ## A096374.P4764118229371760094

`A035363(2*(n+1))-A096375(n+1)`
-/

namespace A096374.P4764118229371760094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A096375 (n + 1)

end

end A096374.P4764118229371760094

/-!
# A096375: Number of partitions of n such that the least part occurs with odd multiplicity.

The programs for A096375, there is no canonical definition to state claims against.
-/

/-! ## A096375.P7219592706087336150

`record[A035363(n)]-A096374(n+1)`
-/

namespace A096375.P7219592706087336150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096374 (n + 1)

end

end A096375.P7219592706087336150

/-! ## A096375.P14450314308037747712

`record[A035444(n)]-A096374(n+1)`
-/

namespace A096375.P14450314308037747712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096374 (n + 1)

end

end A096375.P14450314308037747712

/-! ## A096375.P10354363082705608085

`record[A114099(n)]-A096374(n+1)`
-/

namespace A096375.P10354363082705608085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096374 (n + 1)

end

end A096375.P10354363082705608085

/-! ## A096375.P14356765981931052878

`A000041(n+1)-A096374(n+1)`
-/

namespace A096375.P14356765981931052878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A096374 (n + 1)

end

end A096375.P14356765981931052878

/-! ## A096375.P2992241680889063514

`A000065(n+1)+1-A096374(n+1)`
-/

namespace A096375.P2992241680889063514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A096374 (n + 1))

end

end A096375.P2992241680889063514

/-!
# A096376: a(n) = n + (n-1)^2 + (n+1)^2.

The programs for A096376, the canonical program `A096376.P11198902843790965061` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096376 has offset 0).

The definition of A096376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n-1)²+(n+1)²` (program `A096376.P11198902843790965061`, by `A096376.P11198902843790965061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096376.P2271915719249570708

`2*n²+n+2`
-/

namespace A096376.P2271915719249570708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n + 2

end

end A096376.P2271915719249570708

namespace A096376

/-- `2*n²+n+2` -/
def P2271915719249570708.Spec : Prop :=
  ∀ n, (P2271915719249570708.a n : ℤ) = A096376 n

theorem P2271915719249570708.correct : P2271915719249570708.Spec := by
  intro n
  simp only [A096376, Nat.add_sub_cancel, A096376.P2271915719249570708.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A096376

/-! ## A096376.P11198902843790965061

`n+(n-1)²+(n+1)²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096376

/-- `n+(n-1)²+(n+1)²` -/
def P11198902843790965061.Spec : Prop :=
  ∀ n, P11198902843790965061.a n = A096376 n

theorem P11198902843790965061.correct : P11198902843790965061.Spec := by
  intro n
  simp only [A096376]

end A096376

/-! ## A096376.P2756130496312296655

`∑[record[xor(3, abs(1-n))]]`
-/

namespace A096376.P2756130496312296655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096376.P2756130496312296655

namespace A096376

/-- `∑[record[xor(3, abs(1-n))]]` -/
def P2756130496312296655.Spec : Prop :=
  ∀ n, P2756130496312296655.a n = A096376 n

end A096376

/-! ## A096376.P16854061836895780665

`∑[a(n-1)+4]` with `a(0)=2, a(1)=3`
-/

namespace A096376.P16854061836895780665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096376.P16854061836895780665

namespace A096376

/-- `∑[a(n-1)+4]` -/
def P16854061836895780665.Spec : Prop :=
  ∀ n, (P16854061836895780665.a n : ℤ) = A096376 n

end A096376

/-! ## A096376.P18399476830081695708

`∑[ogf((2-x+3x^2)/(1-2x+x^2))]`
-/

namespace A096376.P18399476830081695708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096376.P18399476830081695708

namespace A096376

/-- `∑[ogf((2-x+3x^2)/(1-2x+x^2))]` -/
def P18399476830081695708.Spec : Prop :=
  ∀ n, P18399476830081695708.a n = A096376 n

end A096376

/-! ## A096376.P7489632279897150454

`ogf((2-x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A096376.P7489632279897150454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 3] [1, -3, 3, -1] n

end

end A096376.P7489632279897150454

namespace A096376

/-- `ogf((2-x+3x^2)/(1-3x+3x^2-x^3))` -/
def P7489632279897150454.Spec : Prop :=
  ∀ n, P7489632279897150454.a n = A096376 n

end A096376

/-! ## A096376.P12365452784511725652

`round(2/acot(n)²+n+1)`
-/

namespace A096376.P12365452784511725652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n + 1 : ℝ))

end

end A096376.P12365452784511725652

namespace A096376

/-- `round(2/acot(n)²+n+1)` -/
def P12365452784511725652.Spec : Prop :=
  ∀ n, P12365452784511725652.a n = A096376 n

end A096376

/-! ## A096376.P12137876586617255011

`ceil((2*n+1)/tanh(acot(n)))`
-/

namespace A096376.P12137876586617255011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.tanh (SequenceMachineLib.acot (n : ℝ))⌉

end

end A096376.P12137876586617255011

namespace A096376

/-- `ceil((2*n+1)/tanh(acot(n)))` -/
def P12137876586617255011.Spec : Prop :=
  ∀ n, P12137876586617255011.a n = A096376 n

end A096376

/-! ## A096376.P5169002511445088051

`floor((2*n+1)/acot(n)+ϕ)`
-/

namespace A096376.P5169002511445088051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio⌋

end

end A096376.P5169002511445088051

namespace A096376

/-- `floor((2*n+1)/acot(n)+ϕ)` -/
def P5169002511445088051.Spec : Prop :=
  ∀ n, P5169002511445088051.a n = A096376 n

end A096376

/-! ## A096376.P9731572379617406573

`ceil(n/acot(2*n+1)+ϕ)`
-/

namespace A096376.P9731572379617406573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (2 * n + 1 : ℝ) + Real.goldenRatio⌉

end

end A096376.P9731572379617406573

namespace A096376

/-- `ceil(n/acot(2*n+1)+ϕ)` -/
def P9731572379617406573.Spec : Prop :=
  ∀ n, P9731572379617406573.a n = A096376 n

end A096376

/-! ## A096376.P16065894985397754267

`round((2*n+1)*(acot(n)+n))`
-/

namespace A096376.P16065894985397754267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) * (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

end

end A096376.P16065894985397754267

namespace A096376

/-- `round((2*n+1)*(acot(n)+n))` -/
def P16065894985397754267.Spec : Prop :=
  ∀ n, P16065894985397754267.a n = A096376 n

end A096376

/-! ## A096376.P12748241770819271884

`(6-∑[a(n-1)-8])/2` with `a(0)=2`
-/

namespace A096376.P12748241770819271884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A096376.P12748241770819271884

namespace A096376

/-- `(6-∑[a(n-1)-8])/2` -/
def P12748241770819271884.Spec : Prop :=
  ∀ n, P12748241770819271884.a n = (A096376 n : ℚ)

end A096376

/-! ## A096376.P10593227544837902011

`floor(4*n+a(n-1)-1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A096376.P10593227544837902011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) + (a (n - 1) - 1)

end

end A096376.P10593227544837902011

namespace A096376

/-- `floor(4*n+a(n-1)-1)` -/
def P10593227544837902011.Spec : Prop :=
  ∀ n, P10593227544837902011.a n = A096376 n

theorem P10593227544837902011.correct : P10593227544837902011.Spec := by
  intro n
  induction n with
  | zero => simp [A096376, A096376.P10593227544837902011.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096376, Nat.add_sub_cancel, A096376.P10593227544837902011.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096376

/-! ## A096376.P13111662602434630716

`floor(4*n-(1-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A096376.P13111662602434630716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) - (1 - a (n - 1))

end

end A096376.P13111662602434630716

namespace A096376

/-- `floor(4*n-(1-a(n-1)))` -/
def P13111662602434630716.Spec : Prop :=
  ∀ n, P13111662602434630716.a n = A096376 n

theorem P13111662602434630716.correct : P13111662602434630716.Spec := by
  intro n
  induction n with
  | zero => simp [A096376, A096376.P13111662602434630716.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A096376, Nat.add_sub_cancel, A096376.P13111662602434630716.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A096376

/-! ## A096376.P12325343972139012903

`abs(or(2, (n+1)*2*n)-n)`
-/

namespace A096376.P12325343972139012903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 ((n + 1) * (2 * n)) : ℤ) - (n : ℤ)|

end

end A096376.P12325343972139012903

namespace A096376

/-- `abs(or(2, (n+1)*2*n)-n)` -/
def P12325343972139012903.Spec : Prop :=
  ∀ n, P12325343972139012903.a n = A096376 n

end A096376

/-! ## A096376.P9807719458616922450

`abs(xor(2, (n+1)*2*n)-n)`
-/

namespace A096376.P9807719458616922450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 2 ((n + 1) * (2 * n)) : ℤ) - (n : ℤ)|

end

end A096376.P9807719458616922450

namespace A096376

/-- `abs(xor(2, (n+1)*2*n)-n)` -/
def P9807719458616922450.Spec : Prop :=
  ∀ n, P9807719458616922450.a n = A096376 n

end A096376

/-! ## A096376.P8292839385999501124

`ceil(2*n+C(2*n, 2)+ϕ)`
-/

namespace A096376.P8292839385999501124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + ((Nat.choose (2 * n) 2 : ℝ) + Real.goldenRatio)⌉

end

end A096376.P8292839385999501124

namespace A096376

/-- `ceil(2*n+C(2*n, 2)+ϕ)` -/
def P8292839385999501124.Spec : Prop :=
  ∀ n, P8292839385999501124.a n = A096376 n

end A096376

/-! ## A096376.P7823783133028892611

`round(2*n+C(2*n, 2)+ϕ)`
-/

namespace A096376.P7823783133028892611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) + ((Nat.choose (2 * n) 2 : ℝ) + Real.goldenRatio))

end

end A096376.P7823783133028892611

namespace A096376

/-- `round(2*n+C(2*n, 2)+ϕ)` -/
def P7823783133028892611.Spec : Prop :=
  ∀ n, P7823783133028892611.a n = A096376 n

end A096376

/-! ## A096376.P16430355183683321371

`floor(n-∑[a(n-1)-4])` with `a(0)=-2, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A096376.P16430355183683321371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096376.P16430355183683321371

namespace A096376

/-- `floor(n-∑[a(n-1)-4])` -/
def P16430355183683321371.Spec : Prop :=
  ∀ n, P16430355183683321371.a n = A096376 n

end A096376

/-! ## A096376.P8828776760959713290

`2*(C(2*n+1, 2)/2+1)`
-/

namespace A096376.P8828776760959713290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (2 * n + 1) 2 : ℚ) / 2 + 1)

end

end A096376.P8828776760959713290

namespace A096376

/-- `2*(C(2*n+1, 2)/2+1)` -/
def P8828776760959713290.Spec : Prop :=
  ∀ n, P8828776760959713290.a n = (A096376 n : ℚ)

theorem P8828776760959713290.correct : P8828776760959713290.Spec := by
  intro n
  simp only [A096376, Nat.add_sub_cancel, A096376.P8828776760959713290.a, A096376.P11198902843790965061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096376

/-!
# A096377: Floor of area of triangle with consecutive prime sides.

The programs for A096377, there is no canonical definition to state claims against.
-/

/-! ## A096377.P13548027533231268178

`A338267(n+1)-A011739(A017246(n))`
-/

namespace A096377.P13548027533231268178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338267 (n + 1) - A011739 (A017246 n).toNat

end

end A096377.P13548027533231268178

/-! ## A096377.P2139776559701537264

`A338267(n+1)-A360071(A167614(n+1))`
-/

namespace A096377.P2139776559701537264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338267 (n + 1) - A360071 (A167614 (n + 1)).toNat

end

end A096377.P2139776559701537264

/-! ## A096377.P9514613306344311637

`A338267(n+1)-A349394(A230823(n))`
-/

namespace A096377.P9514613306344311637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338267 (n + 1) - A349394 (A230823 n).toNat

end

end A096377.P9514613306344311637

/-! ## A096377.P14267644848061237913

`A338267(n+1)-A056594(A000256(n+3))`
-/

namespace A096377.P14267644848061237913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338267 (n + 1) - A056594 (A000256 (n + 3)).toNat

end

end A096377.P14267644848061237913

/-! ## A096377.P17070807989058151872

`A338267(n+1)+A056594(A000256(n+3)+2)`
-/

namespace A096377.P17070807989058151872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338267 (n + 1) + A056594 (A000256 (n + 3) + 2).toNat

end

end A096377.P17070807989058151872

/-!
# A096378: Floor of area of triangle with consecutive integer sides.

The programs for A096378, the canonical program `A096378.P5854947830026486063` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096378 has offset 1).

The definition of A096378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096378.P5854947830026486063

`floor((n+2)*sqrt(3*(n+4)*n)/4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096378

/-- `floor((n+2)*sqrt(3*(n+4)*n)/4)` -/
def P5854947830026486063.Spec : Prop :=
  ∀ n, P5854947830026486063.a n = A096378 (n + 1)

theorem P5854947830026486063.correct : P5854947830026486063.Spec := by
  intro n
  simp only [A096378, Nat.add_sub_cancel]

end A096378

/-! ## A096378.P11801725453694020073

`A000217(A187829(n+1))-A096791(n)`
-/

namespace A096378.P11801725453694020073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A187829 (n + 1)).toNat - A096791 n

end

end A096378.P11801725453694020073

namespace A096378

/-- `A000217(A187829(n+1))-A096791(n)` -/
def P11801725453694020073.Spec : Prop :=
  ∀ n, P11801725453694020073.a n = A096378 (n + 1)

end A096378

/-! ## A096378.P9947978963042309864

`ceil(3/7*(n+1)²+n)-A023532(A183978(n+1))`
-/

namespace A096378.P9947978963042309864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 7 * ((n + 1) ^ 2 : ℚ) + (n : ℚ)⌉ - A023532 (A183978 (n + 1)).toNat

end

end A096378.P9947978963042309864

namespace A096378

/-- `ceil(3/7*(n+1)²+n)-A023532(A183978(n+1))` -/
def P9947978963042309864.Spec : Prop :=
  ∀ n, P9947978963042309864.a n = A096378 (n + 1)

end A096378

/-! ## A096378.P13522425561544635060

`A184009(n+1)-A023532(A183981(n+1))`
-/

namespace A096378.P13522425561544635060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184009 (n + 1) - A023532 (A183981 (n + 1)).toNat

end

end A096378.P13522425561544635060

namespace A096378

/-- `A184009(n+1)-A023532(A183981(n+1))` -/
def P13522425561544635060.Spec : Prop :=
  ∀ n, P13522425561544635060.a n = A096378 (n + 1)

end A096378

/-! ## A096378.P5705512632990974824

`A184009(n+1)-A023532(A183977(n+1))`
-/

namespace A096378.P5705512632990974824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184009 (n + 1) - A023532 (A183977 (n + 1)).toNat

end

end A096378.P5705512632990974824

namespace A096378

/-- `A184009(n+1)-A023532(A183977(n+1))` -/
def P5705512632990974824.Spec : Prop :=
  ∀ n, P5705512632990974824.a n = A096378 (n + 1)

end A096378

/-!
# A096379: a(n) = prime(n) + prime(n+1) - prime(n+2).

The programs for A096379, the canonical program `A096379.P11420595779051591420` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096379 has offset 1).

The definition of A096379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096379.P7809812019265348157

`A000040(n+1)-A001223(n+2)`
-/

namespace A096379.P7809812019265348157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001223 (n + 2)

end

end A096379.P7809812019265348157

namespace A096379

/-- `A000040(n+1)-A001223(n+2)` -/
def P7809812019265348157.Spec : Prop :=
  ∀ n, P7809812019265348157.a n = A096379 (n + 1)

theorem P7809812019265348157.correct : P7809812019265348157.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P7809812019265348157.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P11420595779051591420

`A001043(n+1)-A000040(n+3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096379

/-- `A001043(n+1)-A000040(n+3)` -/
def P11420595779051591420.Spec : Prop :=
  ∀ n, P11420595779051591420.a n = A096379 (n + 1)

theorem P11420595779051591420.correct : P11420595779051591420.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel]

end A096379

/-! ## A096379.P6521263809431472165

`∑[A375087(n+1)]`
-/

namespace A096379.P6521263809431472165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096379.P6521263809431472165

namespace A096379

/-- `∑[A375087(n+1)]` -/
def P6521263809431472165.Spec : Prop :=
  ∀ n, P6521263809431472165.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P12673973608256544851

`A166448(n+2)-A007504(n)`
-/

namespace A096379.P12673973608256544851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 2) - A007504 n

end

end A096379.P12673973608256544851

namespace A096379

/-- `A166448(n+2)-A007504(n)` -/
def P12673973608256544851.Spec : Prop :=
  ∀ n, P12673973608256544851.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P13363379022884002976

`Δ[A061802(n)]-A215848(n+1)`
-/

namespace A096379.P13363379022884002976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215848 (n + 1)

end

end A096379.P13363379022884002976

namespace A096379

/-- `Δ[A061802(n)]-A215848(n+1)` -/
def P13363379022884002976.Spec : Prop :=
  ∀ n, P13363379022884002976.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P6660061237332851863

`Δ[A007504(n)]-A001223(n+2)`
-/

namespace A096379.P6660061237332851863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001223 (n + 2)

end

end A096379.P6660061237332851863

namespace A096379

/-- `Δ[A007504(n)]-A001223(n+2)` -/
def P6660061237332851863.Spec : Prop :=
  ∀ n, P6660061237332851863.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P10634127540971721499

`A065091(n+1)-A031131(n+1)`
-/

namespace A096379.P10634127540971721499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A031131 (n + 1)

end

end A096379.P10634127540971721499

namespace A096379

/-- `A065091(n+1)-A031131(n+1)` -/
def P10634127540971721499.Spec : Prop :=
  ∀ n, P10634127540971721499.a n = A096379 (n + 1)

theorem P10634127540971721499.correct : P10634127540971721499.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P10634127540971721499.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A031131, A031131.P2453725465626413076.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P761401077268339364

`A062234(n+1)-A036263(n+1)`
-/

namespace A096379.P761401077268339364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A036263 (n + 1)

end

end A096379.P761401077268339364

namespace A096379

/-- `A062234(n+1)-A036263(n+1)` -/
def P761401077268339364.Spec : Prop :=
  ∀ n, P761401077268339364.a n = A096379 (n + 1)

theorem P761401077268339364.correct : P761401077268339364.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P761401077268339364.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A036263, A036263.P14888342997651084870.a, A062234, A062234.P8592873382335253705.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P18160708505346917286

`A111071(n+1)-A037165(n+1)`
-/

namespace A096379.P18160708505346917286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) - A037165 (n + 1)

end

end A096379.P18160708505346917286

namespace A096379

/-- `A111071(n+1)-A037165(n+1)` -/
def P18160708505346917286.Spec : Prop :=
  ∀ n, P18160708505346917286.a n = A096379 (n + 1)

theorem P18160708505346917286.correct : P18160708505346917286.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P18160708505346917286.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A037165, A037165.P11474511069064839000.a, A111071, A111071.P17768111592594357772.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P4187060701953950818

`A006093(n+1)-A176246(n+1)`
-/

namespace A096379.P4187060701953950818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A176246 (n + 1)

end

end A096379.P4187060701953950818

namespace A096379

/-- `A006093(n+1)-A176246(n+1)` -/
def P4187060701953950818.Spec : Prop :=
  ∀ n, P4187060701953950818.a n = A096379 (n + 1)

theorem P4187060701953950818.correct : P4187060701953950818.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P4187060701953950818.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006093, A006093.P2906174024863549003.a, A176246, A176246.P14955082673946823167.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P5335298549644295702

`A100484(n+1)-A093667(n+1)`
-/

namespace A096379.P5335298549644295702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A093667 (n + 1)

end

end A096379.P5335298549644295702

namespace A096379

/-- `A100484(n+1)-A093667(n+1)` -/
def P5335298549644295702.Spec : Prop :=
  ∀ n, P5335298549644295702.a n = A096379 (n + 1)

theorem P5335298549644295702.correct : P5335298549644295702.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P5335298549644295702.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A093667, A093667.P7930936676327328865.a, A100484, A100484.P9678625670825099636.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P13468247326116811229

`A001043(n+1)-A215848(n+1)`
-/

namespace A096379.P13468247326116811229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A215848 (n + 1)

end

end A096379.P13468247326116811229

namespace A096379

/-- `A001043(n+1)-A215848(n+1)` -/
def P13468247326116811229.Spec : Prop :=
  ∀ n, P13468247326116811229.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P11462255929829906763

`A215848(n+1)-A191472(n+1)`
-/

namespace A096379.P11462255929829906763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A191472 (n + 1)

end

end A096379.P11462255929829906763

namespace A096379

/-- `A215848(n+1)-A191472(n+1)` -/
def P11462255929829906763.Spec : Prop :=
  ∀ n, P11462255929829906763.a n = A096379 (n + 1)

theorem P11462255929829906763.correct : P11462255929829906763.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P11462255929829906763.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A191472, A191472.P13543047471222290453.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P10840856866828225567

`A126199(n+1)-A292926(n+1)`
-/

namespace A096379.P10840856866828225567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A292926 (n + 1)

end

end A096379.P10840856866828225567

namespace A096379

/-- `A126199(n+1)-A292926(n+1)` -/
def P10840856866828225567.Spec : Prop :=
  ∀ n, P10840856866828225567.a n = A096379 (n + 1)

theorem P10840856866828225567.correct : P10840856866828225567.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P10840856866828225567.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A126199, A126199.P3423459806366818693.a, A292926, A292926.P9248577169796954627.a, A006094, A006094.P10257567645245129766.a, A180617, A180617.P4406684303062301047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P7720408183129359096

`A062234(n+2)-A001223(n+1)`
-/

namespace A096379.P7720408183129359096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 2) - A001223 (n + 1)

end

end A096379.P7720408183129359096

namespace A096379

/-- `A062234(n+2)-A001223(n+1)` -/
def P7720408183129359096.Spec : Prop :=
  ∀ n, P7720408183129359096.a n = A096379 (n + 1)

theorem P7720408183129359096.correct : P7720408183129359096.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P7720408183129359096.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A062234, A062234.P8592873382335253705.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P2537122858947915958

`A364411(n+1)%A024675(n+1)`
-/

namespace A096379.P2537122858947915958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364411 (n + 1)) (A024675 (n + 1))

end

end A096379.P2537122858947915958

namespace A096379

/-- `A364411(n+1)%A024675(n+1)` -/
def P2537122858947915958.Spec : Prop :=
  ∀ n, P2537122858947915958.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P1610745031543169963

`∑[A054541(n+1)]-A001223(n+2)`
-/

namespace A096379.P1610745031543169963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001223 (n + 2)

end

end A096379.P1610745031543169963

namespace A096379

/-- `∑[A054541(n+1)]-A001223(n+2)` -/
def P1610745031543169963.Spec : Prop :=
  ∀ n, P1610745031543169963.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P16913035288530823330

`Δ[A166448(n+1)]-A001223(n+1)`
-/

namespace A096379.P16913035288530823330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001223 (n + 1)

end

end A096379.P16913035288530823330

namespace A096379

/-- `Δ[A166448(n+1)]-A001223(n+1)` -/
def P16913035288530823330.Spec : Prop :=
  ∀ n, P16913035288530823330.a n = A096379 (n + 1)

end A096379

/-! ## A096379.P16775840003294856412

`A000040(n+1)-(A176246(n+1)+1)`
-/

namespace A096379.P16775840003294856412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A176246 (n + 1) + 1)

end

end A096379.P16775840003294856412

namespace A096379

/-- `A000040(n+1)-(A176246(n+1)+1)` -/
def P16775840003294856412.Spec : Prop :=
  ∀ n, P16775840003294856412.a n = A096379 (n + 1)

theorem P16775840003294856412.correct : P16775840003294856412.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P16775840003294856412.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A176246, A176246.P14955082673946823167.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-! ## A096379.P9022516550383388982

`A008864(n+1)-(A176246(n+1)+2)`
-/

namespace A096379.P9022516550383388982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A176246 (n + 1) + 2)

end

end A096379.P9022516550383388982

namespace A096379

/-- `A008864(n+1)-(A176246(n+1)+2)` -/
def P9022516550383388982.Spec : Prop :=
  ∀ n, P9022516550383388982.a n = A096379 (n + 1)

theorem P9022516550383388982.correct : P9022516550383388982.Spec := by
  intro n
  simp only [A096379, Nat.add_sub_cancel, A096379.P9022516550383388982.a, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A008864, A008864.P9177617808325052279.a, A176246, A176246.P14955082673946823167.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096379

/-!
# A096380: Differences between the sum of the first three primes and the fourth prime in consecutive prime quadruples.

The programs for A096380, the canonical program `A096380.P13338104757938133789` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096380 has offset 1).

The definition of A096380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096380.P13338104757938133789

`A034961(n+1)-p?[a(n-1)+2]` with `a(0)=7`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096380

/-- `A034961(n+1)-p?[a(n-1)+2]` -/
def P13338104757938133789.Spec : Prop :=
  ∀ n, P13338104757938133789.a n = A096380 (n + 1)

theorem P13338104757938133789.correct : P13338104757938133789.Spec := by
  intro n
  simp only [A096380, Nat.add_sub_cancel]

end A096380

/-! ## A096380.P13499631797232549833

`A034963(n+1)%(2*p?[a(n-1)+2])` with `a(0)=7`
-/

namespace A096380.P13499631797232549833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034963 (n + 1)) (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A096380.P13499631797232549833

namespace A096380

/-- `A034963(n+1)%(2*p?[a(n-1)+2])` -/
def P13499631797232549833.Spec : Prop :=
  ∀ n, P13499631797232549833.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P6155276525210929993

`A166448(n+3)-A007504(n)`
-/

namespace A096380.P6155276525210929993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 3) - A007504 n

end

end A096380.P6155276525210929993

namespace A096380

/-- `A166448(n+3)-A007504(n)` -/
def P6155276525210929993.Spec : Prop :=
  ∀ n, P6155276525210929993.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P13296509410057060556

`A100484(n+1)-A261470(n+1)`
-/

namespace A096380.P13296509410057060556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A261470 (n + 1)

end

end A096380.P13296509410057060556

namespace A096380

/-- `A100484(n+1)-A261470(n+1)` -/
def P13296509410057060556.Spec : Prop :=
  ∀ n, P13296509410057060556.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P10946655097411054022

`A001043(n+1)-A001223(n+3)`
-/

namespace A096380.P10946655097411054022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A001223 (n + 3)

end

end A096380.P10946655097411054022

namespace A096380

/-- `A001043(n+1)-A001223(n+3)` -/
def P10946655097411054022.Spec : Prop :=
  ∀ n, P10946655097411054022.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P4892577223427551395

`2*A034961(n+1)-A034963(n+1)`
-/

namespace A096380.P4892577223427551395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034961 (n + 1) - A034963 (n + 1)

end

end A096380.P4892577223427551395

namespace A096380

/-- `2*A034961(n+1)-A034963(n+1)` -/
def P4892577223427551395.Spec : Prop :=
  ∀ n, P4892577223427551395.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P4517068716753150151

`2*A000040(n+1)-A261470(n+1)`
-/

namespace A096380.P4517068716753150151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A261470 (n + 1)

end

end A096380.P4517068716753150151

namespace A096380

/-- `2*A000040(n+1)-A261470(n+1)` -/
def P4517068716753150151.Spec : Prop :=
  ∀ n, P4517068716753150151.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P9308448474564509598

`A024675(n+1)+A024675(n+1)-A031165(n+1)`
-/

namespace A096380.P9308448474564509598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + (A024675 (n + 1) - A031165 (n + 1))

end

end A096380.P9308448474564509598

namespace A096380

/-- `A024675(n+1)+A024675(n+1)-A031165(n+1)` -/
def P9308448474564509598.Spec : Prop :=
  ∀ n, P9308448474564509598.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P7391734281991315431

`A000040(n+1)+A210497(n+1)-A136612(n+1)`
-/

namespace A096380.P7391734281991315431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A210497 (n + 1) - A136612 (n + 1))

end

end A096380.P7391734281991315431

namespace A096380

/-- `A000040(n+1)+A210497(n+1)-A136612(n+1)` -/
def P7391734281991315431.Spec : Prop :=
  ∀ n, P7391734281991315431.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P12500102060218767239

`A000040(n+1)+A024675(n+1)-A375097(n+2)`
-/

namespace A096380.P12500102060218767239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A024675 (n + 1) - A375097 (n + 2))

end

end A096380.P12500102060218767239

namespace A096380

/-- `A000040(n+1)+A024675(n+1)-A375097(n+2)` -/
def P12500102060218767239.Spec : Prop :=
  ∀ n, P12500102060218767239.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P11114845713368538072

`A096379(n+2)+p?[ceil(2/acot(n))]`
-/

namespace A096380.P11114845713368538072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096380.P11114845713368538072

namespace A096380

/-- `A096379(n+2)+p?[ceil(2/acot(n))]` -/
def P11114845713368538072.Spec : Prop :=
  ∀ n, P11114845713368538072.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P3879345389852092086

`Δ[A061802(n)-A215848(n+1)]`
-/

namespace A096380.P3879345389852092086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n - A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096380.P3879345389852092086

namespace A096380

/-- `Δ[A061802(n)-A215848(n+1)]` -/
def P3879345389852092086.Spec : Prop :=
  ∀ n, P3879345389852092086.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P17281909578170948011

`∑[A062234(n+3)]-A007504(n)`
-/

namespace A096380.P17281909578170948011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007504 n

end

end A096380.P17281909578170948011

namespace A096380

/-- `∑[A062234(n+3)]-A007504(n)` -/
def P17281909578170948011.Spec : Prop :=
  ∀ n, P17281909578170948011.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P286463331336238043

`A096379(n+2)+A000040(n+1)`
-/

namespace A096380.P286463331336238043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2) + A000040 (n + 1)

end

end A096380.P286463331336238043

namespace A096380

/-- `A096379(n+2)+A000040(n+1)` -/
def P286463331336238043.Spec : Prop :=
  ∀ n, P286463331336238043.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P1031847474776857897

`A096379(n+2)+A008578(n+2)`
-/

namespace A096380.P1031847474776857897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 2) + A008578 (n + 2)

end

end A096380.P1031847474776857897

namespace A096380

/-- `A096379(n+2)+A008578(n+2)` -/
def P1031847474776857897.Spec : Prop :=
  ∀ n, P1031847474776857897.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P8182541259202516150

`A048448(n+2)-A031131(n+2)`
-/

namespace A096380.P8182541259202516150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) - A031131 (n + 2)

end

end A096380.P8182541259202516150

namespace A096380

/-- `A048448(n+2)-A031131(n+2)` -/
def P8182541259202516150.Spec : Prop :=
  ∀ n, P8182541259202516150.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P11491942684349833848

`A096379(n+1)+A096379(n+2)+A001223(n+2)`
-/

namespace A096380.P11491942684349833848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + (A096379 (n + 2) + A001223 (n + 2))

end

end A096380.P11491942684349833848

namespace A096380

/-- `A096379(n+1)+A096379(n+2)+A001223(n+2)` -/
def P11491942684349833848.Spec : Prop :=
  ∀ n, P11491942684349833848.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P4546236644008661567

`A024675(n+1)+A096379(n+2)-A305748(n+1)`
-/

namespace A096380.P4546236644008661567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + (A096379 (n + 2) - A305748 (n + 1))

end

end A096380.P4546236644008661567

namespace A096380

/-- `A024675(n+1)+A096379(n+2)-A305748(n+1)` -/
def P4546236644008661567.Spec : Prop :=
  ∀ n, P4546236644008661567.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P14175374701984290047

`A034961(n+1)+A001043(n+2)-A034961(n+2)`
-/

namespace A096380.P14175374701984290047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + (A001043 (n + 2) - A034961 (n + 2))

end

end A096380.P14175374701984290047

namespace A096380

/-- `A034961(n+1)+A001043(n+2)-A034961(n+2)` -/
def P14175374701984290047.Spec : Prop :=
  ∀ n, P14175374701984290047.a n = A096380 (n + 1)

end A096380

/-! ## A096380.P12562467015510376316

`A000040(n+2)+A000040(n+2)-A136612(n+1)`
-/

namespace A096380.P12562467015510376316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A000040 (n + 2) - A136612 (n + 1))

end

end A096380.P12562467015510376316

namespace A096380

/-- `A000040(n+2)+A000040(n+2)-A136612(n+1)` -/
def P12562467015510376316.Spec : Prop :=
  ∀ n, P12562467015510376316.a n = A096380 (n + 1)

end A096380

/-!
# A096382: Consider a Pythagorean triangle with sides a = u^2-v^2, b = 2uv, c = u^2+v^2. The sequence is the area of the triangle when v = 2, u = 3, 4, 5, ...

The programs for A096382, the canonical program `A096382.P13222923210308492109` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096382 has offset 3).

The definition of A096382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096382.P13222923210308492109

`(n+1)*(n+3)*2*(n+5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096382

/-- `(n+1)*(n+3)*2*(n+5)` -/
def P13222923210308492109.Spec : Prop :=
  ∀ n, (P13222923210308492109.a n : ℤ) = A096382 (n + 3)

theorem P13222923210308492109.correct : P13222923210308492109.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel]

end A096382

/-! ## A096382.P1105978053708567373

`Δ[2*(2-C(n+3, 2))²]`
-/

namespace A096382.P1105978053708567373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (Nat.choose (n + 3) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P1105978053708567373

namespace A096382

/-- `Δ[2*(2-C(n+3, 2))²]` -/
def P1105978053708567373.Spec : Prop :=
  ∀ n, P1105978053708567373.a n = A096382 (n + 3)

theorem P1105978053708567373.correct : P1105978053708567373.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel, A096382.P1105978053708567373.f1, A096382.P1105978053708567373.a, A096382.P13222923210308492109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096382

/-! ## A096382.P3190405375721115620

`Δ[2*(C(n+2, 2)+n)²]`
-/

namespace A096382.P3190405375721115620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 2) 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A096382.P3190405375721115620

namespace A096382

/-- `Δ[2*(C(n+2, 2)+n)²]` -/
def P3190405375721115620.Spec : Prop :=
  ∀ n, P3190405375721115620.a n = A096382 (n + 3)

theorem P3190405375721115620.correct : P3190405375721115620.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel, A096382.P3190405375721115620.f1, A096382.P3190405375721115620.a, A096382.P13222923210308492109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096382

/-! ## A096382.P9640899733573216274

`Δ[C((n+2)²+n-1, 2)]-(n+3)`
-/

namespace A096382.P9640899733573216274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 3 : ℤ)

end

end A096382.P9640899733573216274

namespace A096382

/-- `Δ[C((n+2)²+n-1, 2)]-(n+3)` -/
def P9640899733573216274.Spec : Prop :=
  ∀ n, P9640899733573216274.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P14496014138515862636

`A086113(n+2)-6`
-/

namespace A096382.P14496014138515862636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086113 (n + 2) - 6

end

end A096382.P14496014138515862636

namespace A096382

/-- `A086113(n+2)-6` -/
def P14496014138515862636.Spec : Prop :=
  ∀ n, P14496014138515862636.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P13131841644281903896

`∑[3*A090288(n+1)]`
-/

namespace A096382.P13131841644281903896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096382.P13131841644281903896

namespace A096382

/-- `∑[3*A090288(n+1)]` -/
def P13131841644281903896.Spec : Prop :=
  ∀ n, P13131841644281903896.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P9934117465899407626

`Δ[n*A393327(n+1)]`
-/

namespace A096382.P9934117465899407626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A393327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P9934117465899407626

namespace A096382

/-- `Δ[n*A393327(n+1)]` -/
def P9934117465899407626.Spec : Prop :=
  ∀ n, P9934117465899407626.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P16292525112001320775

`Δ[2*Δ[A074742(n)]²]`
-/

namespace A096382.P16292525112001320775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P16292525112001320775

namespace A096382

/-- `Δ[2*Δ[A074742(n)]²]` -/
def P16292525112001320775.Spec : Prop :=
  ∀ n, P16292525112001320775.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P13680143105098769006

`Δ[2*A034856(n+1)²]`
-/

namespace A096382.P13680143105098769006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034856 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P13680143105098769006

namespace A096382

/-- `Δ[2*A034856(n+1)²]` -/
def P13680143105098769006.Spec : Prop :=
  ∀ n, P13680143105098769006.a n = A096382 (n + 3)

theorem P13680143105098769006.correct : P13680143105098769006.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel, A096382.P13680143105098769006.f1, A096382.P13680143105098769006.a, A096382.P13222923210308492109.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096382

/-! ## A096382.P4960218140638031842

`Δ[A028552(n+1)*A055998(n)]`
-/

namespace A096382.P4960218140638031842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) * A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P4960218140638031842

namespace A096382

/-- `Δ[A028552(n+1)*A055998(n)]` -/
def P4960218140638031842.Spec : Prop :=
  ∀ n, P4960218140638031842.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P4006753179431016201

`A020742(n)*A028347(n+3)-A028347(n+3)`
-/

namespace A096382.P4006753179431016201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n * A028347 (n + 3) - A028347 (n + 3)

end

end A096382.P4006753179431016201

namespace A096382

/-- `A020742(n)*A028347(n+3)-A028347(n+3)` -/
def P4006753179431016201.Spec : Prop :=
  ∀ n, P4006753179431016201.a n = A096382 (n + 3)

theorem P4006753179431016201.correct : P4006753179431016201.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel, A096382.P4006753179431016201.a, A096382.P13222923210308492109.a, A020742, A020742.P7099883194858047647.a, A028347, A028347.P8641798902418417454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096382

/-! ## A096382.P649319926604839344

`A370912(n+1)+A370912(n+1)+A000007(n+1)`
-/

namespace A096382.P649319926604839344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 (n + 1) + (A370912 (n + 1) + A000007 (n + 1))

end

end A096382.P649319926604839344

namespace A096382

/-- `A370912(n+1)+A370912(n+1)+A000007(n+1)` -/
def P649319926604839344.Spec : Prop :=
  ∀ n, P649319926604839344.a n = A096382 (n + 3)

theorem P649319926604839344.correct : P649319926604839344.Spec := by
  intro n
  simp only [A096382, Nat.add_sub_cancel, A096382.P649319926604839344.a, A096382.P13222923210308492109.a, A000007, A000007.P6599383543502402472.a, A370912, A370912.P13249200892205574452.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096382

/-! ## A096382.P4557131262934386629

`∑[A017593(∑[n+2])]`
-/

namespace A096382.P4557131262934386629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096382.P4557131262934386629

namespace A096382

/-- `∑[A017593(∑[n+2])]` -/
def P4557131262934386629.Spec : Prop :=
  ∀ n, P4557131262934386629.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P484229484614684344

`Δ[A127316(∑[n+2])]`
-/

namespace A096382.P484229484614684344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127316 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P484229484614684344

namespace A096382

/-- `Δ[A127316(∑[n+2])]` -/
def P484229484614684344.Spec : Prop :=
  ∀ n, P484229484614684344.a n = A096382 (n + 3)

end A096382

/-! ## A096382.P9501002851566234645

`Δ[A271624(∑[n+2])]`
-/

namespace A096382.P9501002851566234645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271624 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096382.P9501002851566234645

namespace A096382

/-- `Δ[A271624(∑[n+2])]` -/
def P9501002851566234645.Spec : Prop :=
  ∀ n, P9501002851566234645.a n = A096382 (n + 3)

end A096382

/-!
# A096383: Area of the Pythagorean triangle a = u^2 - v^2 (cf. A096382) when v = 3, u = 4, 5, 6, ...

The programs for A096383, the canonical program `A096383.P16244338656312416484` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096383 has offset 4).

The definition of A096383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096383.P16244338656312416484

`(n+1)*3*(n+4)*(n+7)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096383

/-- `(n+1)*3*(n+4)*(n+7)` -/
def P16244338656312416484.Spec : Prop :=
  ∀ n, (P16244338656312416484.a n : ℤ) = A096383 (n + 4)

theorem P16244338656312416484.correct : P16244338656312416484.Spec := by
  intro n
  simp only [A096383, Nat.add_sub_cancel]

end A096383

/-! ## A096383.P8578233837538878284

`Δ[A000217(n+6)*A045943(n)]`
-/

namespace A096383.P8578233837538878284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 6) * A045943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P8578233837538878284

namespace A096383

/-- `Δ[A000217(n+6)*A045943(n)]` -/
def P8578233837538878284.Spec : Prop :=
  ∀ n, P8578233837538878284.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P11822791788528482653

`Δ[∑[A008585(n)]*A000217(n+6)]`
-/

namespace A096383.P11822791788528482653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000217 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P11822791788528482653

namespace A096383

/-- `Δ[∑[A008585(n)]*A000217(n+6)]` -/
def P11822791788528482653.Spec : Prop :=
  ∀ n, P11822791788528482653.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P7477958164824185110

`Δ[A055998(n+1)*A151542(n)]`
-/

namespace A096383.P7477958164824185110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 1) * A151542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P7477958164824185110

namespace A096383

/-- `Δ[A055998(n+1)*A151542(n)]` -/
def P7477958164824185110.Spec : Prop :=
  ∀ n, P7477958164824185110.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P688186142757274600

`Δ[A045943(n)*A253145(n+5)]`
-/

namespace A096383.P688186142757274600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n * A253145 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P688186142757274600

namespace A096383

/-- `Δ[A045943(n)*A253145(n+5)]` -/
def P688186142757274600.Spec : Prop :=
  ∀ n, P688186142757274600.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P15342483374640453661

`Δ[6*A000217(A052905(n))]`
-/

namespace A096383.P15342483374640453661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000217 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P15342483374640453661

namespace A096383

/-- `Δ[6*A000217(A052905(n))]` -/
def P15342483374640453661.Spec : Prop :=
  ∀ n, P15342483374640453661.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P9179486768246349849

`∑[A019557(A000096(n+2))]`
-/

namespace A096383.P9179486768246349849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 (A000096 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096383.P9179486768246349849

namespace A096383

/-- `∑[A019557(A000096(n+2))]` -/
def P9179486768246349849.Spec : Prop :=
  ∀ n, P9179486768246349849.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P8184300061374216828

`Δ[A298125(∑[n+3])]`
-/

namespace A096383.P8184300061374216828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P8184300061374216828

namespace A096383

/-- `Δ[A298125(∑[n+3])]` -/
def P8184300061374216828.Spec : Prop :=
  ∀ n, P8184300061374216828.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P12502337709495944709

`Δ[A003215(A046691(n+1)-1)]`
-/

namespace A096383.P12502337709495944709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P12502337709495944709

namespace A096383

/-- `Δ[A003215(A046691(n+1)-1)]` -/
def P12502337709495944709.Spec : Prop :=
  ∀ n, P12502337709495944709.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P4722076637295070263

`Δ[A003215(A034856(n+2)-3)]`
-/

namespace A096383.P4722076637295070263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P4722076637295070263

namespace A096383

/-- `Δ[A003215(A034856(n+2)-3)]` -/
def P4722076637295070263.Spec : Prop :=
  ∀ n, P4722076637295070263.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P17405241179462586015

`Δ[A003215(A000096(n+2)-4)]`
-/

namespace A096383.P17405241179462586015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A000096 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P17405241179462586015

namespace A096383

/-- `Δ[A003215(A000096(n+2)-4)]` -/
def P17405241179462586015.Spec : Prop :=
  ∀ n, P17405241179462586015.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P13331193957248910371

`Δ[A003215(A005843(n)+C(n+2, 2))]`
-/

namespace A096383.P13331193957248910371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A005843 n + (Nat.choose (n + 2) 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096383.P13331193957248910371

namespace A096383

/-- `Δ[A003215(A005843(n)+C(n+2, 2))]` -/
def P13331193957248910371.Spec : Prop :=
  ∀ n, P13331193957248910371.a n = A096383 (n + 4)

end A096383

/-! ## A096383.P14462218165806246704

`A008458(A000096(n+4))/(n+1)^-1`
-/

namespace A096383.P14462218165806246704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A000096 (n + 4)).toNat : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A096383.P14462218165806246704

namespace A096383

/-- `A008458(A000096(n+4))/(n+1)^-1` -/
def P14462218165806246704.Spec : Prop :=
  ∀ n, P14462218165806246704.a n = (A096383 (n + 4) : ℚ)

end A096383

/-!
# A096385: a(n) = smallest prime p with p^n mod n = 1.

The programs for A096385, there is no canonical definition to state claims against.
-/

/-! ## A096385.P1526684779485440312

`A050921(A163457(2*(n+2))%A096267(2*(n+1)))`
-/

namespace A096385.P1526684779485440312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (Int.tmod (A163457 (2 * (n + 2))) (A096267 (2 * (n + 1)))).toNat

end

end A096385.P1526684779485440312

/-!
# A096386: Number of numbers <= n which are divisible by 2 or 3.

The programs for A096386, the canonical program `A096386.P3974301576997464818` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096386 has offset 0).

The definition of A096386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096386.P3974301576997464818

`floor(n/2)+floor((n+3)/6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A096386

/-- `floor(n/2)+floor((n+3)/6)` -/
def P3974301576997464818.Spec : Prop :=
  ∀ n, P3974301576997464818.a n = A096386 n

theorem P3974301576997464818.correct : P3974301576997464818.Spec := by
  intro n
  simp only [A096386]

end A096386

/-! ## A096386.P14346944791010778815

`round(comp[or(2, n)]/3)`
-/

namespace A096386.P14346944791010778815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 3)

end

end A096386.P14346944791010778815

namespace A096386

/-- `round(comp[or(2, n)]/3)` -/
def P14346944791010778815.Spec : Prop :=
  ∀ n, P14346944791010778815.a n = A096386 n

end A096386

/-! ## A096386.P5769472782071752592

`∑[char[∑[gcd(2, ∑[n])]]]`
-/

namespace A096386.P5769472782071752592
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P5769472782071752592

namespace A096386

/-- `∑[char[∑[gcd(2, ∑[n])]]]` -/
def P5769472782071752592.Spec : Prop :=
  ∀ n, (P5769472782071752592.a n : ℤ) = A096386 n

end A096386

/-! ## A096386.P14654200623076603799

`floor(or(3, 6*n)/9)`
-/

namespace A096386.P14654200623076603799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (6 * n) : ℚ) / 9⌋

end

end A096386.P14654200623076603799

namespace A096386

/-- `floor(or(3, 6*n)/9)` -/
def P14654200623076603799.Spec : Prop :=
  ∀ n, P14654200623076603799.a n = A096386 n

end A096386

/-! ## A096386.P3751267132986782811

`floor((or(1, n)+n)/3)`
-/

namespace A096386.P3751267132986782811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n + n : ℚ) / 3⌋

end

end A096386.P3751267132986782811

namespace A096386

/-- `floor((or(1, n)+n)/3)` -/
def P3751267132986782811.Spec : Prop :=
  ∀ n, P3751267132986782811.a n = A096386 n

end A096386

/-! ## A096386.P9626538850048504447

`∑[dr(lcm(6, n²))%2]`
-/

namespace A096386.P9626538850048504447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lcm 6 (n ^ 2) : ℤ) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P9626538850048504447

namespace A096386

/-- `∑[dr(lcm(6, n²))%2]` -/
def P9626538850048504447.Spec : Prop :=
  ∀ n, (P9626538850048504447.a n : ℤ) = A096386 n

end A096386

/-! ## A096386.P16234112460102076841

`round(record[and(n, -3)/3])`
-/

namespace A096386.P16234112460102076841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-3) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A096386.P16234112460102076841

namespace A096386

/-- `round(record[and(n, -3)/3])` -/
def P16234112460102076841.Spec : Prop :=
  ∀ n, P16234112460102076841.a n = A096386 n

end A096386

/-! ## A096386.P10400893483377162864

`ceil(n-or(1, n+1)/3)`
-/

namespace A096386.P10400893483377162864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Nat.lor 1 (n + 1) : ℚ) / 3⌉

end

end A096386.P10400893483377162864

namespace A096386

/-- `ceil(n-or(1, n+1)/3)` -/
def P10400893483377162864.Spec : Prop :=
  ∀ n, P10400893483377162864.a n = A096386 n

end A096386

/-! ## A096386.P17151372010808870251

`floor(n-or(1, n-1)/3)`
-/

namespace A096386.P17151372010808870251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (Int.lor 1 ((n : ℤ) - 1) : ℚ) / 3⌋

end

end A096386.P17151372010808870251

namespace A096386

/-- `floor(n-or(1, n-1)/3)` -/
def P17151372010808870251.Spec : Prop :=
  ∀ n, P17151372010808870251.a n = A096386 n

end A096386

/-! ## A096386.P3114838164917712206

`round((or(1, n)+n-1)/3)`
-/

namespace A096386.P3114838164917712206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1) : ℚ) / 3)

end

end A096386.P3114838164917712206

namespace A096386

/-- `round((or(1, n)+n-1)/3)` -/
def P3114838164917712206.Spec : Prop :=
  ∀ n, P3114838164917712206.a n = A096386 n

end A096386

/-! ## A096386.P788896151377269149

`round((2*n-and(1, n))/3)`
-/

namespace A096386.P788896151377269149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 3)

end

end A096386.P788896151377269149

namespace A096386

/-- `round((2*n-and(1, n))/3)` -/
def P788896151377269149.Spec : Prop :=
  ∀ n, P788896151377269149.a n = A096386 n

end A096386

/-! ## A096386.P1484423102729662750

`∑[char[∑[3-a(n-2)]]]` with `a(0)=2, a(1)=1`
-/

namespace A096386.P1484423102729662750
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P1484423102729662750

namespace A096386

/-- `∑[char[∑[3-a(n-2)]]]` -/
def P1484423102729662750.Spec : Prop :=
  ∀ n, (P1484423102729662750.a n : ℤ) = A096386 n

end A096386

/-! ## A096386.P11368661348264701191

`floor(∑[4-a(n-1)]/3)` with `a(0)=1, a(1)=1`
-/

namespace A096386.P11368661348264701191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A096386.P11368661348264701191

namespace A096386

/-- `floor(∑[4-a(n-1)]/3)` -/
def P11368661348264701191.Spec : Prop :=
  ∀ n, P11368661348264701191.a n = A096386 n

end A096386

/-! ## A096386.P320366026039269373

`round(n-1-or(1, n-3)/3)`
-/

namespace A096386.P320366026039269373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) - (Int.lor 1 ((n : ℤ) - 3) : ℚ) / 3)

end

end A096386.P320366026039269373

namespace A096386

/-- `round(n-1-or(1, n-3)/3)` -/
def P320366026039269373.Spec : Prop :=
  ∀ n, P320366026039269373.a n = A096386 n

end A096386

/-! ## A096386.P11036917872973683086

`floor(n-1-a(n-3)/2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A096386.P11036917872973683086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) - (a (n - 3) : ℚ) / 2⌋

end

end A096386.P11036917872973683086

namespace A096386

/-- `floor(n-1-a(n-3)/2)` -/
def P11036917872973683086.Spec : Prop :=
  ∀ n, P11036917872973683086.a n = A096386 n

end A096386

/-! ## A096386.P2016055873157844271

`round((2*n+1-gcd(n-1, 2*n))/3)`
-/

namespace A096386.P2016055873157844271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 1 : ℤ) - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) : ℚ) / 3)

end

end A096386.P2016055873157844271

namespace A096386

/-- `round((2*n+1-gcd(n-1, 2*n))/3)` -/
def P2016055873157844271.Spec : Prop :=
  ∀ n, P2016055873157844271.a n = A096386 n

end A096386

/-! ## A096386.P13401599088947034738

`Δ[A171662(abs(1-n))]`
-/

namespace A096386.P13401599088947034738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171662 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096386.P13401599088947034738

namespace A096386

/-- `Δ[A171662(abs(1-n))]` -/
def P13401599088947034738.Spec : Prop :=
  ∀ n, P13401599088947034738.a n = A096386 n

end A096386

/-! ## A096386.P6080488644253612316

`∑[1-A163811(n)²]`
-/

namespace A096386.P6080488644253612316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163811 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P6080488644253612316

namespace A096386

/-- `∑[1-A163811(n)²]` -/
def P6080488644253612316.Spec : Prop :=
  ∀ n, P6080488644253612316.a n = A096386 n

end A096386

/-! ## A096386.P7224298313704769720

`∑[char[A047229(n+2)]]`
-/

namespace A096386.P7224298313704769720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P7224298313704769720

namespace A096386

/-- `∑[char[A047229(n+2)]]` -/
def P7224298313704769720.Spec : Prop :=
  ∀ n, (P7224298313704769720.a n : ℤ) = A096386 n

end A096386

/-! ## A096386.P9637593137179481750

`∑[char[A239492(n+2)]]`
-/

namespace A096386.P9637593137179481750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096386.P9637593137179481750

namespace A096386

/-- `∑[char[A239492(n+2)]]` -/
def P9637593137179481750.Spec : Prop :=
  ∀ n, (P9637593137179481750.a n : ℤ) = A096386 n

end A096386

/-!
# A096393: Least primitive root of n-th Mersenne prime.

The programs for A096393, there is no canonical definition to state claims against.
-/

/-! ## A096393.P11063896841425116995

`p?[A070469(A182222(n))]`
-/

namespace A096393.P11063896841425116995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070469 (A182222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096393.P11063896841425116995

/-!
# A096396: a(n) = #{ 0 <= i <= n: K(n, i) = +1 } where K(n, i) is the Kronecker symbol.

The programs for A096396, there is no canonical definition to state claims against.
-/

/-! ## A096396.P5484956693590222737

`A071961(n)+A096397(n)`
-/

namespace A096396.P5484956693590222737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071961 n + A096397 n

end

end A096396.P5484956693590222737

/-! ## A096396.P759053587787377757

`A384710(n)-A096397(n)`
-/

namespace A096396.P759053587787377757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n - A096397 n

end

end A096396.P759053587787377757

/-!
# A096397: a(n) = #{ 0 <= i <= n : K(n, i) = -1 } where K(n, i) is the Kronecker symbol.

The programs for A096397, there is no canonical definition to state claims against.
-/

/-! ## A096397.P213076661777367562

`A096396(n)-A071961(n)`
-/

namespace A096397.P213076661777367562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n - A071961 n

end

end A096397.P213076661777367562

/-! ## A096397.P13517804976534386977

`A384710(n)-A096396(n)`
-/

namespace A096397.P13517804976534386977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n - A096396 n

end

end A096397.P13517804976534386977

/-! ## A096397.P2917462381453784671

`A014081(A000078(n)*A001840(n))`
-/

namespace A096397.P2917462381453784671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A000078 n * A001840 n).toNat

end

end A096397.P2917462381453784671

/-! ## A096397.P2575136033709482861

`A379679(A255940(n+1)+A114324(n))`
-/

namespace A096397.P2575136033709482861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A255940 (n + 1) + A114324 n).toNat

end

end A096397.P2575136033709482861

/-! ## A096397.P13367508897676106096

`A228469(n)%A001222(A343742(n+1))`
-/

namespace A096397.P13367508897676106096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228469 n) (A001222 (A343742 (n + 1)).toNat)

end

end A096397.P13367508897676106096

/-!
# A096398: Nonnegative numbers k such that 0 = #{ 0 <= i <= k : K(k, i) = -1 } where K(k, i) is the Kronecker symbol.

The programs for A096398, there is no canonical definition to state claims against.
-/

/-! ## A096398.P14782153634054488273

`∪[n², ∑[n!!²]]`
-/

namespace A096398.P14782153634054488273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A096398.P14782153634054488273

/-! ## A096398.P5789003753722865228

`∪[a(n-1)², n²]` with `a(0)=2, a(1)=6`
-/

namespace A096398.P5789003753722865228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A096398.P5789003753722865228

/-! ## A096398.P10255956967926796039

`∪[n², ((n+1)!+1)!]`
-/

namespace A096398.P10255956967926796039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A096398.P10255956967926796039

/-! ## A096398.P15324415333082106888

`floor(((comp[2*(n+3)]+1)/2)²)`
-/

namespace A096398.P15324415333082106888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℚ) / 2) ^ 2⌋

end

end A096398.P15324415333082106888

/-! ## A096398.P14195862577856248737

`∪[C(2, n²)+(n+1)², n²]`
-/

namespace A096398.P14195862577856248737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2) + (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A096398.P14195862577856248737

/-! ## A096398.P2898591687937295823

`eq[0, A096397(n)]`
-/

namespace A096398.P2898591687937295823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096398.P2898591687937295823

/-! ## A096398.P7011886435309085598

`∪[A347535(n+1), n²]`
-/

namespace A096398.P7011886435309085598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347535 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A096398.P7011886435309085598

/-! ## A096398.P2747288716766999818

`A002620(comp[2*(n+3)]+1)`
-/

namespace A096398.P2747288716766999818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A096398.P2747288716766999818

/-! ## A096398.P17068980600699284485

`∪[A292125(2*(n+1)), n²]`
-/

namespace A096398.P17068980600699284485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292125 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A096398.P17068980600699284485

/-!
# A096399: Numbers k such that both k and k+1 are abundant.

The programs for A096399, there is no canonical definition to state claims against.
-/

/-! ## A096399.P16757982579150130318

`A005101(A169822(n+1))`
-/

namespace A096399.P16757982579150130318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A169822 (n + 1)).toNat

end

end A096399.P16757982579150130318

/-! ## A096399.P16064693809570352284

`A317049(n+1)+1`
-/

namespace A096399.P16064693809570352284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317049 (n + 1) + 1

end

end A096399.P16064693809570352284

/-! ## A096399.P5595584508104875572

`A103289(A008619(2*n)+2)`
-/

namespace A096399.P5595584508104875572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A008619 (2 * n) + 2).toNat

end

end A096399.P5595584508104875572

/-! ## A096399.P17603204727334392197

`A103289(A052938(2*n)+2)`
-/

namespace A096399.P17603204727334392197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A052938 (2 * n) + 2).toNat

end

end A096399.P17603204727334392197

/-! ## A096399.P7597838692697325076

`record[A103289(A052938(n+1))]`
-/

namespace A096399.P7597838692697325076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096399.P7597838692697325076

/-! ## A096399.P3540860261989911380

`A103289(A026741(A167614(n+1)-A000217(n)))`
-/

namespace A096399.P3540860261989911380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A026741 (A167614 (n + 1) - A000217 n).toNat).toNat

end

end A096399.P3540860261989911380

/-! ## A096399.P1104593044447155725

`A103289(A126759(A007310(n+2)))`
-/

namespace A096399.P1104593044447155725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A126759 (A007310 (n + 2)).toNat).toNat

end

end A096399.P1104593044447155725

/-! ## A096399.P2974309120630827990

`A103289(A125115(A303741(n+1))+n+1)`
-/

namespace A096399.P2974309120630827990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A125115 (A303741 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A096399.P2974309120630827990

/-! ## A096399.P17675598802624181248

`record[A103289(A262672(n))]`
-/

namespace A096399.P17675598802624181248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096399.P17675598802624181248

/-! ## A096399.P2476739097655737708

`gcd(A007814(A099019(n+2)), A103289(n+3))`
-/

namespace A096399.P2476739097655737708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A099019 (n + 2)).toNat) (A103289 (n + 3))

end

end A096399.P2476739097655737708

/-! ## A096399.P17966904129746186769

`∩[A103289(n+1), A383390(n+1)]`
-/

namespace A096399.P17966904129746186769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096399.P17966904129746186769

/-! ## A096399.P13605161414127011565

`A103289(A169803(∑[n])+2+n)`
-/

namespace A096399.P13605161414127011565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103289 (A169803 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 + (n : ℤ)).toNat

end

end A096399.P13605161414127011565

