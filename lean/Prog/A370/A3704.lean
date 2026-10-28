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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A370406: Primitive terms of A370348.

The programs for A370406, there is no canonical definition to state claims against.
-/

/-! ## A370406.P15069253479583557073

`filter[A093839(2*(n+1)), A354868(#)]`
-/

namespace A370406.P15069253479583557073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093839 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A370406.P15069253479583557073

/-!
# A370407: Total sum over all j in [n] of the number of partitions of [j*(n-j)] into (n-j) sets of size j.

The programs for A370407, there is no canonical definition to state claims against.
-/

/-! ## A370407.P16723364746391372104

`A370365(n)+A370368(n)`
-/

namespace A370407.P16723364746391372104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370365 n + A370368 n

end

end A370407.P16723364746391372104

/-! ## A370407.P2882211153124836611

`A324749(A299106(n))+A000720(n+1)`
-/

namespace A370407.P2882211153124836611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 (A299106 n).toNat + A000720 (n + 1)

end

end A370407.P2882211153124836611

/-! ## A370407.P12323461577227821364

`A319760(A000045(n))+A064065(2*n)`
-/

namespace A370407.P12323461577227821364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319760 (A000045 n).toNat + A064065 (2 * n)

end

end A370407.P12323461577227821364

/-!
# A370408: Lexicographically earliest sequence of positive integers such that no three equal terms appear at distinct indices that are the side lengths of a triangle.

The programs for A370408, there is no canonical definition to state claims against.
-/

/-! ## A370408.P11510145640942450546

`gcd(A008620(n), A025881(A299286(n)))`
-/

namespace A370408.P11510145640942450546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008620 n) (A025881 (A299286 n).toNat)

end

end A370408.P11510145640942450546

/-! ## A370408.P12754373370882607995

`gcd(A000203(A210979(2*n+1)), A008615(2*(n+1)))`
-/

namespace A370408.P12754373370882607995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A210979 (2 * n + 1)).toNat) (A008615 (2 * (n + 1)))

end

end A370408.P12754373370882607995

/-! ## A370408.P510694935515637597

`gcd(A000120(A077947(n)), A005717(n+1))`
-/

namespace A370408.P510694935515637597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A077947 n).toNat) (A005717 (n + 1))

end

end A370408.P510694935515637597

/-! ## A370408.P1643963663441111664

`gcd(A048103(n+1)-n, A269303(3*(n+1)))`
-/

namespace A370408.P1643963663441111664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048103 (n + 1) - (n : ℤ)) (A269303 (3 * (n + 1)))

end

end A370408.P1643963663441111664

/-! ## A370408.P4987676660160725910

`gcd(A160384(A329774(n)), A269303(3*(n+1)))`
-/

namespace A370408.P4987676660160725910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160384 (A329774 n).toNat) (A269303 (3 * (n + 1)))

end

end A370408.P4987676660160725910

/-!
# A370409: Numbers k = m * s, where s is composite and squarefree, rad(m) divides s, and 1 < m <= s, where rad() = A007947().

The programs for A370409, there is no canonical definition to state claims against.
-/

/-! ## A370409.P1493853986873188837

`∩[A342973(n+1), A390538(n+1)]`
-/

namespace A370409.P1493853986873188837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370409.P1493853986873188837

/-! ## A370409.P5410993713013163713

`A342973(A128870(n+1))`
-/

namespace A370409.P5410993713013163713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (A128870 (n + 1)).toNat

end

end A370409.P5410993713013163713

/-! ## A370409.P16501208034560727206

`A342973(A106000(n+1))`
-/

namespace A370409.P16501208034560727206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (A106000 (n + 1)).toNat

end

end A370409.P16501208034560727206

/-! ## A370409.P12642335238266408851

`A342973(A064704(n+1))`
-/

namespace A370409.P12642335238266408851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (A064704 (n + 1)).toNat

end

end A370409.P12642335238266408851

/-! ## A370409.P3375730849069096475

`A342973(A083136(n+1))`
-/

namespace A370409.P3375730849069096475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (A083136 (n + 1)).toNat

end

end A370409.P3375730849069096475

/-!
# A370410: Number of length-n binary strings that are the concatenation of two nonempty palindromes.

The programs for A370410, the canonical program `A370410.P7118795628727837074` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370410 has offset 1).

The definition of A370410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007055, A056458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370410.P7118795628727837074

`A007055(n+1)-A056458(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370410

/-- `A007055(n+1)-A056458(n+1)` -/
def P7118795628727837074.Spec : Prop :=
  ∀ n, P7118795628727837074.a n = A370410 (n + 1)

theorem P7118795628727837074.correct : P7118795628727837074.Spec := by
  intro n
  simp only [A370410, Nat.add_sub_cancel]

end A370410

/-! ## A370410.P9171447564918435275

`2*A180249(n+1)-A056458(n+1)`
-/

namespace A370410.P9171447564918435275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180249 (n + 1) - A056458 (n + 1)

end

end A370410.P9171447564918435275

namespace A370410

/-- `2*A180249(n+1)-A056458(n+1)` -/
def P9171447564918435275.Spec : Prop :=
  ∀ n, P9171447564918435275.a n = A370410 (n + 1)

end A370410

/-!
# A370412: Square array T(n, k) = numerator( zeta_r(2*n) * sqrt(A003658(k + 2)) / Pi^(4*n) ), read by antidiagonals, where zeta_r is the Dedekind zeta-function over r and r is the real quadratic field with discriminant A003658(k + 2).

The programs for A370412, there is no canonical definition to state claims against.
-/

/-! ## A370412.P1746464305587008840

`A028422(A061256(2*n+1))*A320784(n)`
-/

namespace A370412.P1746464305587008840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A061256 (2 * n + 1)).toNat * A320784 n

end

end A370412.P1746464305587008840

/-!
# A370416: a(n) = numerator(N(1/2, n, 1)) where N(a, n, x) is the n-th Nørlund polynomial.

The programs for A370416, there is no canonical definition to state claims against.
-/

/-! ## A370416.P16358439618052274886

`A054346(n²*A389977(n+1))`
-/

namespace A370416.P16358439618052274886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054346 ((n ^ 2 : ℤ) * A389977 (n + 1)).toNat

end

end A370416.P16358439618052274886

/-!
# A370417: a(n) = denominator(N(1/2, n, 1)) where N(a, n, x) is the n-th Nørlund polynomial.

The programs for A370417, there is no canonical definition to state claims against.
-/

/-! ## A370417.P15943385362151042064

`gcd(A242225(3*n+1), A242225(n))`
-/

namespace A370417.P15943385362151042064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242225 (3 * n + 1)) (A242225 n)

end

end A370417.P15943385362151042064

/-! ## A370417.P6540361130479883024

`A157818(n)/A091255(A000142(n))`
-/

namespace A370417.P6540361130479883024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157818 n : ℚ) / (A091255 (A000142 n).toNat : ℚ)

end

end A370417.P6540361130479883024

/-! ## A370417.P7743154282657566910

`gcd(A157818(n), A242225(A065091(n+1)))`
-/

namespace A370417.P7743154282657566910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157818 n) (A242225 (A065091 (n + 1)).toNat)

end

end A370417.P7743154282657566910

/-! ## A370417.P13999360851801650646

`A000027(A000302(n)*A287215(2*n+1))`
-/

namespace A370417.P13999360851801650646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000302 n * A287215 (2 * n + 1)).toNat

end

end A370417.P13999360851801650646

/-!
# A370418: Triangle read by rows. T(n, k) = (n - k)! * (n + k)!.

The programs for A370418, the canonical program `A370418.P3381546809616888720` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370418 has offset 0).

The definition of A370418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))!*(row(n)+col(n))!` (program `A370418.P3381546809616888720`, by `A370418.P3381546809616888720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370418.P3381546809616888720

`(row(n)-col(n))!*(row(n)+col(n))!`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370418

/-- `(row(n)-col(n))!*(row(n)+col(n))!` -/
def P3381546809616888720.Spec : Prop :=
  ∀ n, (P3381546809616888720.a n : ℤ) = A370418 n

theorem P3381546809616888720.correct : P3381546809616888720.Spec := by
  intro n
  simp only [A370418]

end A370418

/-! ## A370418.P18312025595933328677

`A119502(n)*A143084(n)`
-/

namespace A370418.P18312025595933328677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A143084 n

end

end A370418.P18312025595933328677

namespace A370418

/-- `A119502(n)*A143084(n)` -/
def P18312025595933328677.Spec : Prop :=
  ∀ n, P18312025595933328677.a n = A370418 n

theorem P18312025595933328677.correct : P18312025595933328677.Spec := by
  intro n
  simp only [A370418, Nat.add_sub_cancel, A370418.P18312025595933328677.a, A370418.P3381546809616888720.a, A119502, A119502.P14623475535698746152.a, A143084, A143084.P832692363427462180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370418

/-! ## A370418.P1882072685036029363

`(A003056(n)!/A007318(n))²*A063007(n)`
-/

namespace A370418.P1882072685036029363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A003056 n).toNat : ℚ) / (A007318 n : ℚ)) ^ 2 * (A063007 n : ℚ)

end

end A370418.P1882072685036029363

namespace A370418

/-- `(A003056(n)!/A007318(n))²*A063007(n)` -/
def P1882072685036029363.Spec : Prop :=
  ∀ n, P1882072685036029363.a n = (A370418 n : ℚ)

end A370418

/-! ## A370418.P3036784579764779135

`(A077012(n+1)/A074909(n))²*A063007(n)`
-/

namespace A370418.P3036784579764779135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A077012 (n + 1) : ℚ) / (A074909 n : ℚ)) ^ 2 * (A063007 n : ℚ)

end

end A370418.P3036784579764779135

namespace A370418

/-- `(A077012(n+1)/A074909(n))²*A063007(n)` -/
def P3036784579764779135.Spec : Prop :=
  ∀ n, P3036784579764779135.a n = (A370418 n : ℚ)

end A370418

/-! ## A370418.P13888172547599758402

`(A119502(A112367(n))*A119502(n))²*A063007(n)`
-/

namespace A370418.P13888172547599758402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119502 (A112367 n).toNat * A119502 n) ^ 2 * A063007 n

end

end A370418.P13888172547599758402

namespace A370418

/-- `(A119502(A112367(n))*A119502(n))²*A063007(n)` -/
def P13888172547599758402.Spec : Prop :=
  ∀ n, P13888172547599758402.a n = A370418 n

end A370418

/-! ## A370418.P8171400952394395950

`(A233543(A061579(n))*A233543(n))²*A063007(n)`
-/

namespace A370418.P8171400952394395950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233543 (A061579 n).toNat * A233543 n) ^ 2 * A063007 n

end

end A370418.P8171400952394395950

namespace A370418

/-- `(A233543(A061579(n))*A233543(n))²*A063007(n)` -/
def P8171400952394395950.Spec : Prop :=
  ∀ n, P8171400952394395950.a n = A370418 n

end A370418

/-!
# A370419: A(n, k) = 2^n*Pochhammer(k/2, n). Square array read by ascending antidiagonals.

The programs for A370419, there is no canonical definition to state claims against.
-/

/-! ## A370419.P8634862204139623146

`A111106(n)+A016389(A196912(n+1))`
-/

namespace A370419.P8634862204139623146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111106 n + A016389 (A196912 (n + 1)).toNat

end

end A370419.P8634862204139623146

/-! ## A370419.P3213603451953919384

`A227837(A124734(n+1)/A057200(n+1)%2)+A111106(n)`
-/

namespace A370419.P3213603451953919384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227837 (SequenceMachineLib.roundAway ((A124734 (n + 1) : ℚ) / (Int.tmod (A057200 (n + 1)) 2 : ℚ))).toNat + A111106 n

end

end A370419.P3213603451953919384

/-! ## A370419.P9053704124843196750

`A089854(A111106(n))`
-/

namespace A370419.P9053704124843196750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A111106 n).toNat

end

end A370419.P9053704124843196750

/-! ## A370419.P11522364818634942206

`A123580(A113081(n))`
-/

namespace A370419.P11522364818634942206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A113081 n).toNat

end

end A370419.P11522364818634942206

/-! ## A370419.P7252503344831341873

`A118766(A253286(n))`
-/

namespace A370419.P7252503344831341873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A253286 n).toNat

end

end A370419.P7252503344831341873

/-!
# A370421: Integers k such that all groups of order k have strictly fewer than k subgroups.

The programs for A370421, there is no canonical definition to state claims against.
-/

/-! ## A370421.P17932967734794348571

`lt[A018216(n+1), n+1]+1`
-/

namespace A370421.P17932967734794348571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018216 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A370421.P17932967734794348571

/-! ## A370421.P6926061337150770711

`lt[A018216(A028310(n)), n]`
-/

namespace A370421.P6926061337150770711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018216 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370421.P6926061337150770711

/-! ## A370421.P516926992854296114

`lt[A330997(n+1), A369912(2*(n+1))]+1`
-/

namespace A370421.P516926992854296114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369912 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370421.P516926992854296114

/-! ## A370421.P5464976102890114963

`lt[A006512(A140185(2*n)), A140141(n+1)]`
-/

namespace A370421.P5464976102890114963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A140185 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370421.P5464976102890114963

/-! ## A370421.P11167304109261421085

`lt[A000001(n²), A001840(n)]`
-/

namespace A370421.P11167304109261421085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370421.P11167304109261421085

/-!
# A370422: Integers k such that all groups of order k have at most k subgroups.

The programs for A370422, there is no canonical definition to state claims against.
-/

/-! ## A370422.P18115475270544126827

`lt[A356230(n+1), A006530(n+1)]+1`
-/

namespace A370422.P18115475270544126827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370422.P18115475270544126827

/-! ## A370422.P8564543362846304732

`lt[∑{d}[n+1, #]-∏{p}[n+1, #+1], A325368(n+1)]+1`
-/

namespace A370422.P8564543362846304732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1

end

end A370422.P8564543362846304732

/-! ## A370422.P17604578785225617411

`lt[A140157(A140185(2*n)), A108571(n+1)]`
-/

namespace A370422.P17604578785225617411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140157 (A140185 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370422.P17604578785225617411

/-! ## A370422.P16784765452954274267

`lt[A000001(n²), A088822(n+1)]`
-/

namespace A370422.P16784765452954274267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370422.P16784765452954274267

/-!
# A370423: Integers k such that the maximum number of subgroups of a group of order k is exactly k.

The programs for A370423, there is no canonical definition to state claims against.
-/

/-! ## A370423.P4579404892026113722

`and(-3, n^n)+n`
-/

namespace A370423.P4579404892026113722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (n ^ n : ℤ) + (n : ℤ)

end

end A370423.P4579404892026113722

/-!
# A370425: Integers of the form (2^x + 1) / (2^y + 1).

The programs for A370425, there is no canonical definition to state claims against.
-/

/-! ## A370425.P421260432132411723

`record[A000265(A140690(n+1)+1)]`
-/

namespace A370425.P421260432132411723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A140690 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370425.P421260432132411723

/-! ## A370425.P8867525027061764845

`eq[(-1)^n, A361477(n)]+1`
-/

namespace A370425.P8867525027061764845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A370425.P8867525027061764845

/-! ## A370425.P7582952114446106247

`record[gcd(n, A132226(n+1))]`
-/

namespace A370425.P7582952114446106247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A132226 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370425.P7582952114446106247

/-!
# A370426: Number of permutations of [n] having exactly two adjacent 2-cycles.

The programs for A370426, the canonical program `A370426.P12320453225586363138` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370426 has offset 0).

The definition of A370426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370426.P12320453225586363138

`1/2*∑{#}[floor(n/2)-2, (-1)^#*(n-#-2)!/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370426

/-- `1/2*∑{#}[floor(n/2)-2, (-1)^#*(n-#-2)!/#!]` -/
def P12320453225586363138.Spec : Prop :=
  ∀ n, P12320453225586363138.a n = (A370426 n : ℚ)

end A370426

/-!
# A370427: a(n) is the least k >= 0 such that n OR k is a binary palindrome (where OR denotes the bitwise OR operator).

The programs for A370427, the canonical program `A370427.P3544381458467413037` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370427 has offset 0).

The definition of A370427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370427.P3544381458467413037

`A175298(n)-n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A370427

/-- `A175298(n)-n` -/
def P3544381458467413037.Spec : Prop :=
  ∀ n, P3544381458467413037.a n = A370427 n

theorem P3544381458467413037.correct : P3544381458467413037.Spec := by
  intro n
  simp only [A370427]

end A370427

/-! ## A370427.P11600269698422664718

`or(n, A030101(n))-n`
-/

namespace A370427.P11600269698422664718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A030101 n) - (n : ℤ)

end

end A370427.P11600269698422664718

namespace A370427

/-- `or(n, A030101(n))-n` -/
def P11600269698422664718.Spec : Prop :=
  ∀ n, P11600269698422664718.a n = A370427 n

end A370427

/-! ## A370427.P2310523460240295625

`or(n, A175919(n))-n`
-/

namespace A370427.P2310523460240295625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A175919 n) - (n : ℤ)

end

end A370427.P2310523460240295625

namespace A370427

/-- `or(n, A175919(n))-n` -/
def P2310523460240295625.Spec : Prop :=
  ∀ n, P2310523460240295625.a n = A370427 n

end A370427

/-! ## A370427.P4200108238003775199

`A175298(n)%A028310(n)`
-/

namespace A370427.P4200108238003775199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175298 n) (A028310 n)

end

end A370427.P4200108238003775199

namespace A370427

/-- `A175298(n)%A028310(n)` -/
def P4200108238003775199.Spec : Prop :=
  ∀ n, P4200108238003775199.a n = A370427 n

end A370427

/-! ## A370427.P17091808219070674850

`and(A030101(n), A035327(n))`
-/

namespace A370427.P17091808219070674850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030101 n) (A035327 n)

end

end A370427.P17091808219070674850

namespace A370427

/-- `and(A030101(n), A035327(n))` -/
def P17091808219070674850.Spec : Prop :=
  ∀ n, P17091808219070674850.a n = A370427 n

end A370427

/-! ## A370427.P1790810707122185020

`and(A035327(n), A048701(n))`
-/

namespace A370427.P1790810707122185020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A048701 n)

end

end A370427.P1790810707122185020

namespace A370427

/-- `and(A035327(n), A048701(n))` -/
def P1790810707122185020.Spec : Prop :=
  ∀ n, P1790810707122185020.a n = A370427 n

end A370427

/-! ## A370427.P13892645136511289579

`and(A030101(n), A175918(n))`
-/

namespace A370427.P13892645136511289579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030101 n) (A175918 n)

end

end A370427.P13892645136511289579

namespace A370427

/-- `and(A030101(n), A175918(n))` -/
def P13892645136511289579.Spec : Prop :=
  ∀ n, P13892645136511289579.a n = A370427 n

end A370427

/-! ## A370427.P11525809506654412408

`and(A030101(n), A175919(n))`
-/

namespace A370427.P11525809506654412408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030101 n) (A175919 n)

end

end A370427.P11525809506654412408

namespace A370427

/-- `and(A030101(n), A175919(n))` -/
def P11525809506654412408.Spec : Prop :=
  ∀ n, P11525809506654412408.a n = A370427 n

end A370427

/-! ## A370427.P3724531957410567068

`and(A035327(n), A175298(n))`
-/

namespace A370427.P3724531957410567068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A175298 n)

end

end A370427.P3724531957410567068

namespace A370427

/-- `and(A035327(n), A175298(n))` -/
def P3724531957410567068.Spec : Prop :=
  ∀ n, P3724531957410567068.a n = A370427 n

end A370427

/-! ## A370427.P12068190883618108726

`and(A035327(n), A175919(n))`
-/

namespace A370427.P12068190883618108726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A175919 n)

end

end A370427.P12068190883618108726

namespace A370427

/-- `and(A035327(n), A175919(n))` -/
def P12068190883618108726.Spec : Prop :=
  ∀ n, P12068190883618108726.a n = A370427 n

end A370427

/-! ## A370427.P18286744466641842110

`and(A048701(n), A175918(n))`
-/

namespace A370427.P18286744466641842110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175918 n)

end

end A370427.P18286744466641842110

namespace A370427

/-- `and(A048701(n), A175918(n))` -/
def P18286744466641842110.Spec : Prop :=
  ∀ n, P18286744466641842110.a n = A370427 n

end A370427

/-! ## A370427.P381742488263132475

`and(A048701(n), A175919(n))`
-/

namespace A370427.P381742488263132475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048701 n) (A175919 n)

end

end A370427.P381742488263132475

namespace A370427

/-- `and(A048701(n), A175919(n))` -/
def P381742488263132475.Spec : Prop :=
  ∀ n, P381742488263132475.a n = A370427 n

end A370427

/-! ## A370427.P11487626519051719983

`and(A035327(n), A264618(n))`
-/

namespace A370427.P11487626519051719983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035327 n) (A264618 n)

end

end A370427.P11487626519051719983

namespace A370427

/-- `and(A035327(n), A264618(n))` -/
def P11487626519051719983.Spec : Prop :=
  ∀ n, P11487626519051719983.a n = A370427 n

end A370427

/-! ## A370427.P16801049858302155438

`and(A175918(n), A264618(n))`
-/

namespace A370427.P16801049858302155438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175918 n) (A264618 n)

end

end A370427.P16801049858302155438

namespace A370427

/-- `and(A175918(n), A264618(n))` -/
def P16801049858302155438.Spec : Prop :=
  ∀ n, P16801049858302155438.a n = A370427 n

end A370427

/-! ## A370427.P11722944650066531714

`and(A175918(n), A264619(n))`
-/

namespace A370427.P11722944650066531714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175918 n) (A264619 n)

end

end A370427.P11722944650066531714

namespace A370427

/-- `and(A175918(n), A264619(n))` -/
def P11722944650066531714.Spec : Prop :=
  ∀ n, P11722944650066531714.a n = A370427 n

end A370427

/-! ## A370427.P13680367187626542098

`and(A175919(n), A264618(n))`
-/

namespace A370427.P13680367187626542098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175919 n) (A264618 n)

end

end A370427.P13680367187626542098

namespace A370427

/-- `and(A175919(n), A264618(n))` -/
def P13680367187626542098.Spec : Prop :=
  ∀ n, P13680367187626542098.a n = A370427 n

end A370427

/-! ## A370427.P13646651523388832476

`and(A175919(n), A264619(n))`
-/

namespace A370427.P13646651523388832476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175919 n) (A264619 n)

end

end A370427.P13646651523388832476

namespace A370427

/-- `and(A175919(n), A264619(n))` -/
def P13646651523388832476.Spec : Prop :=
  ∀ n, P13646651523388832476.a n = A370427 n

end A370427

/-! ## A370427.P12782351466425464594

`and(A145341(n+1), A175919(n))`
-/

namespace A370427.P12782351466425464594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A175919 n)

end

end A370427.P12782351466425464594

namespace A370427

/-- `and(A145341(n+1), A175919(n))` -/
def P12782351466425464594.Spec : Prop :=
  ∀ n, P12782351466425464594.a n = A370427 n

end A370427

/-! ## A370427.P1760726070858816640

`A003817(n)-(A175917(n)+n)`
-/

namespace A370427.P1760726070858816640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - (A175917 n + (n : ℤ))

end

end A370427.P1760726070858816640

namespace A370427

/-- `A003817(n)-(A175917(n)+n)` -/
def P1760726070858816640.Spec : Prop :=
  ∀ n, P1760726070858816640.a n = A370427 n

theorem P1760726070858816640.correct : P1760726070858816640.Spec := by
  intro n
  simp only [A370427, Nat.add_sub_cancel, A370427.P1760726070858816640.a, A370427.P3544381458467413037.a, A003817, A003817.P16251594020616633079.a, A175298, A175298.P14996771315134995194.a, A175917, A175917.P5961217577201396990.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A370427

/-! ## A370427.P5006443135117609196

`and(A003817(n)-n, A030101(n))`
-/

namespace A370427.P5006443135117609196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n - (n : ℤ)) (A030101 n)

end

end A370427.P5006443135117609196

namespace A370427

/-- `and(A003817(n)-n, A030101(n))` -/
def P5006443135117609196.Spec : Prop :=
  ∀ n, P5006443135117609196.a n = A370427 n

end A370427

/-!
# A370429: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, n OR a(n) is a binary palindrome (where OR denotes the bitwise OR operator).

The programs for A370429, there is no canonical definition to state claims against.
-/

/-! ## A370429.P13025126015711883384

`xor(A118766(n), A341642(A001333(n)))`
-/

namespace A370429.P13025126015711883384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118766 n) (A341642 (A001333 n).toNat)

end

end A370429.P13025126015711883384

/-! ## A370429.P4372167024762369625

`xor(A087087(n), A338651(A114537(3*n+4)))`
-/

namespace A370429.P4372167024762369625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087087 n) (A338651 (A114537 (3 * n + 4)).toNat)

end

end A370429.P4372167024762369625

/-!
# A370430: Expansion of e.g.f. C(x,k) satisfying C(x,k) = cosh( x*cosh(k*x*C(x,k)) ), as a triangle read by rows.

The programs for A370430, there is no canonical definition to state claims against.
-/

/-! ## A370430.P5215639027063963053

`A370432(∑[char[∑[n]]]²-(n+1))`
-/

namespace A370430.P5215639027063963053
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370432 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A370430.P5215639027063963053

/-! ## A370430.P15704139862057632391

`abs(A370330(n))`
-/

namespace A370430.P15704139862057632391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A370330 n|

end

end A370430.P15704139862057632391

/-! ## A370430.P2803567504169082970

`abs(A370332(A061579(n)))`
-/

namespace A370430.P2803567504169082970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A370332 (A061579 n).toNat|

end

end A370430.P2803567504169082970

/-! ## A370430.P7106853850715684372

`gcd(A000038(n), A370330(n))`
-/

namespace A370430.P7106853850715684372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A370330 n)

end

end A370430.P7106853850715684372

/-! ## A370430.P696760033415178993

`lcm(A006466(n), A370330(n))`
-/

namespace A370430.P696760033415178993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A370330 n)

end

end A370430.P696760033415178993

/-!
# A370431: Expansion of e.g.f. S(x,k) satisfying S(x,k) = sinh( x*cosh(k*x*sqrt(1 + S(x,k)^2)) ), as a triangle read by rows.

The programs for A370431, there is no canonical definition to state claims against.
-/

/-! ## A370431.P4859588609297652075

`A370433(∑[2*n]%comp[∑[n]])`
-/

namespace A370431.P4859588609297652075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370433 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A370431.P4859588609297652075

/-! ## A370431.P10895185840382824995

`A370433(∑[char[∑[n]]]²-n-1)`
-/

namespace A370431.P10895185840382824995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370433 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A370431.P10895185840382824995

/-! ## A370431.P4710152948302527535

`gcd(A000038(n), A370433(A061579(n)))`
-/

namespace A370431.P4710152948302527535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A370433 (A061579 n).toNat)

end

end A370431.P4710152948302527535

/-! ## A370431.P651832515190105776

`or(A000007(n), A370433(A061579(n)))`
-/

namespace A370431.P651832515190105776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370433 (A061579 n).toNat)

end

end A370431.P651832515190105776

/-! ## A370431.P8796141472740420688

`or(A010054(n), A370433(A061579(n)))`
-/

namespace A370431.P8796141472740420688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A370433 (A061579 n).toNat)

end

end A370431.P8796141472740420688

/-!
# A370432: Expansion of e.g.f. D(x,k) satisfying D(x,k) = cosh( k*x*cosh(x*D(x,k)) ), as a triangle read by rows.

The programs for A370432, there is no canonical definition to state claims against.
-/

/-! ## A370432.P16355235802065226250

`A370430(∑[2*n]%comp[∑[n]])`
-/

namespace A370432.P16355235802065226250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370430 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A370432.P16355235802065226250

/-! ## A370432.P6447605374278222381

`A370430(∑[char[∑[n]]]²-(n+1))`
-/

namespace A370432.P6447605374278222381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370430 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A370432.P6447605374278222381

/-! ## A370432.P10099556397067068231

`abs(A370332(n))`
-/

namespace A370432.P10099556397067068231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A370332 n|

end

end A370432.P10099556397067068231

/-! ## A370432.P12263779383097720941

`abs(A370330(A061579(n)))`
-/

namespace A370432.P12263779383097720941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A370330 (A061579 n).toNat|

end

end A370432.P12263779383097720941

/-! ## A370432.P14660124325259039695

`gcd(A000038(n), A370332(n))`
-/

namespace A370432.P14660124325259039695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A370332 n)

end

end A370432.P14660124325259039695

/-!
# A370433: Expansion of e.g.f. T(x,k) satisfying T(x,k) = (1/k) * sinh( k*x*cosh(x*sqrt(1 + k^2*T(x,k)^2)) ), as a triangle read by rows.

The programs for A370433, there is no canonical definition to state claims against.
-/

/-! ## A370433.P2454516767493361419

`A370431(∑[2*n]%comp[∑[n]])`
-/

namespace A370433.P2454516767493361419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370431 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A370433.P2454516767493361419

/-! ## A370433.P6239344974379452693

`A370431(∑[char[∑[n]]]²-n-1)`
-/

namespace A370433.P6239344974379452693
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370431 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A370433.P6239344974379452693

/-! ## A370433.P4275759837203829678

`gcd(A000038(n), A370431(A061579(n)))`
-/

namespace A370433.P4275759837203829678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A370431 (A061579 n).toNat)

end

end A370433.P4275759837203829678

/-! ## A370433.P12889409516117206857

`lcm(A106400(n), A370431(A061579(n)))`
-/

namespace A370433.P12889409516117206857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A370431 (A061579 n).toNat)

end

end A370433.P12889409516117206857

/-! ## A370433.P17605044424651595543

`or(A000007(n), A370431(A061579(n)))`
-/

namespace A370433.P17605044424651595543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370431 (A061579 n).toNat)

end

end A370433.P17605044424651595543

/-! ## A370433.P2778535736088120575

`or(A010054(n), A370431(A061579(n)))`
-/

namespace A370433.P2778535736088120575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A370431 (A061579 n).toNat)

end

end A370433.P2778535736088120575

/-!
# A370434: Expansion of Product_{n>=1} (1 - 4^(n-1)*x^n) * (1 + 4^(n-1)*x^n)^2.

The programs for A370434, there is no canonical definition to state claims against.
-/

/-! ## A370434.P17385475874507252839

`A304878(n)+A111854(A374686(3*n))`
-/

namespace A370434.P17385475874507252839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304878 n + A111854 (A374686 (3 * n)).toNat

end

end A370434.P17385475874507252839

/-! ## A370434.P3968458920791250564

`A286610(A090127(A002202(A090129(A002202(n+1)))))`
-/

namespace A370434.P3968458920791250564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (A090127 (A002202 (A090129 (A002202 (n + 1)).toNat).toNat).toNat).toNat

end

end A370434.P3968458920791250564

/-!
# A370435: Expansion of Product_{n>=1} (1 - 5^(n-1)*x^n) * (1 + 5^(n-1)*x^n)^2.

The programs for A370435, there is no canonical definition to state claims against.
-/

/-! ## A370435.P15386289568161825553

`A374685(C(n², 2)/2+2)`
-/

namespace A370435.P15386289568161825553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 2 + 2)).toNat

end

end A370435.P15386289568161825553

/-!
# A370439: Expansion of g.f. A(x) satisfying A(x) = A( x*A(x)^2 + 3*x*A(x)^3 )^(1/3).

The programs for A370439, there is no canonical definition to state claims against.
-/

/-! ## A370439.P9526245370999320288

`A165413(A077235(n))+A030297(n)`
-/

namespace A370439.P9526245370999320288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A077235 n).toNat + A030297 n

end

end A370439.P9526245370999320288

/-! ## A370439.P2867506306986664102

`A064553(A309651(n+1)+A119751(n+1))`
-/

namespace A370439.P2867506306986664102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A309651 (n + 1) + A119751 (n + 1)).toNat

end

end A370439.P2867506306986664102

/-!
# A370440: Expansion of g.f. A(x) satisfying A(x) = A( x^3 + 3*x^2*A(x)^2 )^(1/3), with A(0)=0, A'(0)=1.

The programs for A370440, there is no canonical definition to state claims against.
-/

/-! ## A370440.P15984769648288507892

`A108408(A352045(n))`
-/

namespace A370440.P15984769648288507892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108408 (A352045 n).toNat

end

end A370440.P15984769648288507892

/-! ## A370440.P9689304933637839570

`A317709(A360749(n))`
-/

namespace A370440.P9689304933637839570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (A360749 n).toNat

end

end A370440.P9689304933637839570

/-! ## A370440.P7065028299857820999

`A356851(A003426(n+1))`
-/

namespace A370440.P7065028299857820999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356851 (A003426 (n + 1)).toNat

end

end A370440.P7065028299857820999

/-! ## A370440.P5938212900775376170

`A335471(n)-A029837(A275755(n+1))`
-/

namespace A370440.P5938212900775376170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335471 n - A029837 (A275755 (n + 1)).toNat

end

end A370440.P5938212900775376170

/-!
# A370441: Expansion of g.f. A(x) satisfying A(x) = A( x^3 + 3*A(x)^4 )^(1/3), with A(0)=0, A'(0)=1.

The programs for A370441, there is no canonical definition to state claims against.
-/

/-! ## A370441.P6229761525204786660

`A065033(2*A200740(n))`
-/

namespace A370441.P6229761525204786660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A200740 n).toNat

end

end A370441.P6229761525204786660

/-! ## A370441.P7973692941362274938

`A110654(2*A200740(n))`
-/

namespace A370441.P7973692941362274938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A200740 n).toNat

end

end A370441.P7973692941362274938

/-!
# A370442: Expansion of g.f. A(q) satisfying -2 = Product_{n>=0} (1 - 3*q^n*A(q)).

The programs for A370442, there is no canonical definition to state claims against.
-/

/-! ## A370442.P14979699481705896218

`A137285(A051354(n+1))`
-/

namespace A370442.P14979699481705896218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (A051354 (n + 1)).toNat

end

end A370442.P14979699481705896218

/-!
# A370443: Expansion of g.f. A(q) satisfying -3 = Product_{n>=0} (1 - 4*q^n*A(q)).

The programs for A370443, there is no canonical definition to state claims against.
-/

/-! ## A370443.P16208672212685443086

`3*A070987(a(n-1))` with `a(0)=1`
-/

namespace A370443.P16208672212685443086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A070987 (a (n - 1)).toNat

end

end A370443.P16208672212685443086

/-!
# A370445: Expansion of g.f. A(q) satisfying -5 = Product_{n>=0} (1 - 6*q^n*A(q)).

The programs for A370445, there is no canonical definition to state claims against.
-/

/-! ## A370445.P7319227109787655266

`A122282(n!*∑[1/n!]-n)*A154638(n)`
-/

namespace A370445.P7319227109787655266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ))).toNat * A154638 n

end

end A370445.P7319227109787655266

/-!
# A370446: Expansion of g.f. A(x) satisfying A(x)^3 + x^4/A(x)^3 = A(x^3) + x^4/A(x^3) - 3*x^2.

The programs for A370446, there is no canonical definition to state claims against.
-/

/-! ## A370446.P13326079431663705199

`A077219(A316473(n+1)+A039301(n))`
-/

namespace A370446.P13326079431663705199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077219 (A316473 (n + 1) + A039301 n).toNat

end

end A370446.P13326079431663705199

/-! ## A370446.P2444425934438461452

`A061598(A148712(n))`
-/

namespace A370446.P2444425934438461452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061598 (A148712 n).toNat

end

end A370446.P2444425934438461452

/-! ## A370446.P12726816683187866253

`A214701(A186996(n))`
-/

namespace A370446.P12726816683187866253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A186996 n).toNat

end

end A370446.P12726816683187866253

/-!
# A370447: Palindromic prime numbers that consist only of the digits {0,1,6,8,9} and which remain palindromic primes when their digits are rotated by 180 degrees.

The programs for A370447, there is no canonical definition to state claims against.
-/

/-! ## A370447.P4333572434445024222

`∪[A068188(n+1), A317179(n+1)]`
-/

namespace A370447.P4333572434445024222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370447.P4333572434445024222

/-! ## A370447.P4282171942397719514

`∩[A002385(n+1), A080788(n+1)]`
-/

namespace A370447.P4282171942397719514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370447.P4282171942397719514

/-! ## A370447.P11526412354727497414

`∩[A002385(n+1), A080789(n+1)]`
-/

namespace A370447.P11526412354727497414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370447.P11526412354727497414

/-!
# A370448: Numerator of probability to directly sort n uniform random values in [0,1] with perfect strategy.

The programs for A370448, there is no canonical definition to state claims against.
-/

/-! ## A370448.P14373815000937259261

`A370450(∑[n])`
-/

namespace A370448.P14373815000937259261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370448.P14373815000937259261

/-!
# A370449: Denominator of probability to directly sort n uniform random values in [0,1] with perfect strategy.

The programs for A370449, there is no canonical definition to state claims against.
-/

/-! ## A370449.P963191859327328735

`A370451(∑[n])`
-/

namespace A370449.P963191859327328735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370449.P963191859327328735

/-!
# A370450: Numerator triangle of PDF coefficients for probability A370448/A370449 read by rows.

The programs for A370450, there is no canonical definition to state claims against.
-/

/-! ## A370450.P10095609235965036932

`A144149(A093637(n))`
-/

namespace A370450.P10095609235965036932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144149 (A093637 n).toNat

end

end A370450.P10095609235965036932

/-! ## A370450.P10657663850288310142

`A144149(A032289(n+1))`
-/

namespace A370450.P10657663850288310142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144149 (A032289 (n + 1)).toNat

end

end A370450.P10657663850288310142

/-! ## A370450.P784987315626769555

`A299966(A006169(n+1))`
-/

namespace A370450.P784987315626769555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299966 (A006169 (n + 1)).toNat

end

end A370450.P784987315626769555

/-!
# A370451: Denominator triangle of PDF coefficients for probability A370448/A370449 read by rows.

The programs for A370451, there is no canonical definition to state claims against.
-/

/-! ## A370451.P4578349041228241977

`A370449(lcm(A087061(n), A277120(2*n+3)))`
-/

namespace A370451.P4578349041228241977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370449 (Int.lcm (A087061 n) (A277120 (2 * n + 3)))

end

end A370451.P4578349041228241977

/-! ## A370451.P2771413475805352159

`A272465(A173424(n))`
-/

namespace A370451.P2771413475805352159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272465 (A173424 n).toNat

end

end A370451.P2771413475805352159

/-! ## A370451.P11684856243433274250

`A332295(A087061(n)^A087061(n))`
-/

namespace A370451.P11684856243433274250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 (SequenceMachineLib.roundAway ((A087061 n : ℚ) ^ (A087061 n : ℤ))).toNat

end

end A370451.P11684856243433274250

/-! ## A370451.P9802868997732183336

`A332295(A344838(n)^A344838(n))`
-/

namespace A370451.P9802868997732183336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 (SequenceMachineLib.roundAway ((A344838 n : ℚ) ^ (A344838 n : ℤ))).toNat

end

end A370451.P9802868997732183336

/-! ## A370451.P465207535532087984

`A038168(A303800(n+1)/A072704(n+1))`
-/

namespace A370451.P465207535532087984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038168 (SequenceMachineLib.roundAway ((A303800 (n + 1) : ℚ) / (A072704 (n + 1) : ℚ))).toNat

end

end A370451.P465207535532087984

/-!
# A370452: Prime powers of the form 2*p^k-1, where p is prime and k >= 1.

The programs for A370452, there is no canonical definition to state claims against.
-/

/-! ## A370452.P4841254710265474321

`∩[2*n+1, A380101(n+1)]`
-/

namespace A370452.P4841254710265474321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370452.P4841254710265474321

/-! ## A370452.P15058717319012158322

`filter[A380101(n+1), A000035(#)]`
-/

namespace A370452.P15058717319012158322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A370452.P15058717319012158322

/-! ## A370452.P9203978311208700664

`filter[A145388(n+1), A302777(#)]`
-/

namespace A370452.P9203978311208700664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A370452.P9203978311208700664

/-! ## A370452.P9595018793794303875

`filter[A380101(n+1), A174275(#)]`
-/

namespace A370452.P9595018793794303875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A370452.P9595018793794303875

/-! ## A370452.P14820922369041762721

`filter[A380101(n+1), A260390(#)]`
-/

namespace A370452.P14820922369041762721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A370452.P14820922369041762721

/-! ## A370452.P539667832377750644

`filter[A380101(n+1), A266070(#)]`
-/

namespace A370452.P539667832377750644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A370452.P539667832377750644

/-! ## A370452.P4789074240890061952

`filter[A380101(n+1), A266719(#)]`
-/

namespace A370452.P4789074240890061952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A370452.P4789074240890061952

/-! ## A370452.P11010440195706519611

`filter[A380101(n+1), A296066(#)]`
-/

namespace A370452.P11010440195706519611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A370452.P11010440195706519611

/-! ## A370452.P3510111728819020434

`filter[A380101(n+1), A353498(#)]`
-/

namespace A370452.P3510111728819020434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353498 (f1 j).toNat = 1) n)

end

end A370452.P3510111728819020434

/-! ## A370452.P5175080184421566673

`filter[A380101(n+1), A353673(#)]`
-/

namespace A370452.P5175080184421566673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A370452.P5175080184421566673

/-!
# A370453: Twin prime pair sums that equal a twin prime pair product plus 1 (divided by 36).

The programs for A370453, there is no canonical definition to state claims against.
-/

/-! ## A370453.P8040252785292309799

`A152787(n+1)²`
-/

namespace A370453.P8040252785292309799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152787 (n + 1) ^ 2

end

end A370453.P8040252785292309799

/-! ## A370453.P16403285259820338028

`(A047976(n+1)+1)²`
-/

namespace A370453.P16403285259820338028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047976 (n + 1) + 1) ^ 2

end

end A370453.P16403285259820338028

/-! ## A370453.P1424143841236164346

`(1-A047977(n+1))²`
-/

namespace A370453.P1424143841236164346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A047977 (n + 1)) ^ 2

end

end A370453.P1424143841236164346

/-! ## A370453.P983539589867890394

`2*(A047978(n+1)+1)`
-/

namespace A370453.P983539589867890394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047978 (n + 1) + 1)

end

end A370453.P983539589867890394

/-! ## A370453.P18130942178245356248

`2*(A047979(n+1)-1)`
-/

namespace A370453.P18130942178245356248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047979 (n + 1) - 1)

end

end A370453.P18130942178245356248

/-! ## A370453.P13483955525274746872

`A047979(n+1)+A047978(n+1)`
-/

namespace A370453.P13483955525274746872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047979 (n + 1) + A047978 (n + 1)

end

end A370453.P13483955525274746872

/-! ## A370453.P12652736586655370821

`∩[A037072(n+1), A075369(n+1)]`
-/

namespace A370453.P12652736586655370821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370453.P12652736586655370821

/-! ## A370453.P12202570503731431649

`∩[A075369(n+1), A119767(n+1)]`
-/

namespace A370453.P12202570503731431649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370453.P12202570503731431649

/-! ## A370453.P10565893833593876619

`∩[A014574(n+1), A152786(n+1)]²`
-/

namespace A370453.P10565893833593876619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A370453.P10565893833593876619

/-! ## A370453.P16163382213643647961

`∩[A152786(n+1), A217259(n+1)]²`
-/

namespace A370453.P16163382213643647961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A370453.P16163382213643647961

/-! ## A370453.P5121165827156426001

`∩[A056853(n+1), A152786(n+1)]²`
-/

namespace A370453.P5121165827156426001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A370453.P5121165827156426001

/-!
# A370454: a(n) = 1 + ceiling((log q)/(log p)), where p = A020639(s) and q = A119288(s) is the second smallest distinct prime factor of squarefree composite s = A120944(n).

The programs for A370454, the canonical program `A370454.P29262213832927034` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370454 has offset 1).

The definition of A370454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370454.P29262213832927034

`A280363(A394049(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A370454

/-- `A280363(A394049(n+1))` -/
def P29262213832927034.Spec : Prop :=
  ∀ n, P29262213832927034.a n = A370454 (n + 1)

theorem P29262213832927034.correct : P29262213832927034.Spec := by
  intro n
  simp only [A370454, Nat.add_sub_cancel]

end A370454

/-!
# A370455: a(n) = greatest m such that 2^m divides prime(n+1)*prime(n+2) - prime(n)*prime(n+3).

The programs for A370455, there is no canonical definition to state claims against.
-/

/-! ## A370455.P13773705083855185089

`val(A141079(n+1), 2)`
-/

namespace A370455.P13773705083855185089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A141079 (n + 1)).toNat 2

end

end A370455.P13773705083855185089

/-! ## A370455.P12398889763762461318

`val(abs(A117301(n+1)), 2)`
-/

namespace A370455.P12398889763762461318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A117301 (n + 1)|.toNat 2

end

end A370455.P12398889763762461318

/-! ## A370455.P16026034941574505580

`A007814(A141079(n+1))`
-/

namespace A370455.P16026034941574505580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A141079 (n + 1)).toNat

end

end A370455.P16026034941574505580

/-! ## A370455.P11893446326282795869

`A007814(gcd(2^n, A117301(n+1)))`
-/

namespace A370455.P11893446326282795869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (2 ^ n : ℤ) (A117301 (n + 1)))

end

end A370455.P11893446326282795869

/-! ## A370455.P18234150163844230503

`val(lcm(A000034(n), A117301(n+1)), 2)`
-/

namespace A370455.P18234150163844230503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A000034 n) (A117301 (n + 1))) 2

end

end A370455.P18234150163844230503

/-! ## A370455.P18423581060806781040

`A023416(gcd(A000079(n), A117301(n+1)))`
-/

namespace A370455.P18423581060806781040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.gcd (A000079 n) (A117301 (n + 1)))

end

end A370455.P18423581060806781040

/-!
# A370456: a(0) = 1, a(n) = (1/2) * Sum_{j=1..n} (1-(-1)^j-(-2)^j) * binomial(n,j) * a(n-j) for n > 0.

The programs for A370456, there is no canonical definition to state claims against.
-/

/-! ## A370456.P4232659106766417256

`A032109(n)+A004526(A005649(n))`
-/

namespace A370456.P4232659106766417256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n + A004526 (A005649 n).toNat

end

end A370456.P4232659106766417256

/-! ## A370456.P3077206686902331151

`A065033(A005649(n)+A000670(n))`
-/

namespace A370456.P3077206686902331151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005649 n + A000670 n).toNat

end

end A370456.P3077206686902331151

/-!
# A370457: a(n) = n - A368887(n) is the neutron number of the nuclide with the lowest energy among the isobars of mass number n.

The programs for A370457, there is no canonical definition to state claims against.
-/

/-! ## A370457.P13705504376689472369

`n+1-A368887(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370457.P13705504376689472369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A368887 (n + 1)

end

end A370457.P13705504376689472369

/-! ## A370457.P5792343357267972787

`A152467(A140823(3*n+2)+A014499(n+1))`
-/

namespace A370457.P5792343357267972787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A140823 (3 * n + 2) + A014499 (n + 1)).toNat

end

end A370457.P5792343357267972787

/-! ## A370457.P6794334356106992925

`n+1-ceil(A239218(3*n+2)/6)`
-/

namespace A370457.P6794334356106992925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(A239218 (3 * n + 2) : ℚ) / 6⌉

end

end A370457.P6794334356106992925

/-! ## A370457.P13770407649849681359

`A059995(A231014(3*(n+1))+4)`
-/

namespace A370457.P13770407649849681359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A231014 (3 * (n + 1)) + 4).toNat

end

end A370457.P13770407649849681359

/-!
# A370458: Partial products of A051179.

The programs for A370458, there is no canonical definition to state claims against.
-/

/-! ## A370458.P8010922772679685131

`∏[2^2^n-1]`
-/

namespace A370458.P8010922772679685131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A370458.P8010922772679685131

/-! ## A370458.P3614383169665477722

`A100735(∑[2^n])`
-/

namespace A370458.P3614383169665477722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A370458.P3614383169665477722

/-! ## A370458.P12588221892155251078

`A100737(A000225(n))`
-/

namespace A370458.P12588221892155251078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100737 (A000225 n).toNat

end

end A370458.P12588221892155251078

/-! ## A370458.P3555911586823184394

`A133468(n+1)-A048707(n+1)`
-/

namespace A370458.P3555911586823184394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133468 (n + 1) - A048707 (n + 1)

end

end A370458.P3555911586823184394

/-!
# A370459: Number of unicursal stars with n vertices.

The programs for A370459, there is no canonical definition to state claims against.
-/

/-! ## A370459.P7161824246452961417

`(A231091(n+3)+A370769(n+3))/2`
-/

namespace A370459.P7161824246452961417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231091 (n + 3) + A370769 (n + 3) : ℚ) / 2

end

end A370459.P7161824246452961417

/-! ## A370459.P6965344884955552174

`A025428(A204066(n))`
-/

namespace A370459.P6965344884955552174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A204066 n).toNat

end

end A370459.P6965344884955552174

/-! ## A370459.P1056716832188242131

`A088183(A113829(n+1))`
-/

namespace A370459.P1056716832188242131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (A113829 (n + 1)).toNat

end

end A370459.P1056716832188242131

/-!
# A370460: Neutron numbers with no beta-stable isotones of odd mass number.

The programs for A370460, there is no canonical definition to state claims against.
-/

/-! ## A370460.P12729952228378302802

`comp[A370457(2*n+1)]`
-/

namespace A370460.P12729952228378302802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A370460.P12729952228378302802

/-!
# A370461: Minimum diameter of a Cayley digraph on the cyclic group Z_n with two generators.

The programs for A370461, there is no canonical definition to state claims against.
-/

/-! ## A370461.P4901687217217964096

`A001462(n+1)-A033630(A198708(n+1))`
-/

namespace A370461.P4901687217217964096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1) - A033630 (A198708 (n + 1)).toNat

end

end A370461.P4901687217217964096

/-! ## A370461.P15445404609451549458

`A001462(n+1)-A300385(A348386(3*(n+1)))`
-/

namespace A370461.P15445404609451549458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1) - A300385 (A348386 (3 * (n + 1))).toNat

end

end A370461.P15445404609451549458

/-! ## A370461.P11533822932636141242

`A371355(A175489(n+1))`
-/

namespace A370461.P11533822932636141242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (A175489 (n + 1)).toNat

end

end A370461.P11533822932636141242

/-!
# A370462: E.g.f. satisfies A(x) = log(1 + x)/(1 - A(x))^2.

The programs for A370462, there is no canonical definition to state claims against.
-/

/-! ## A370462.P7460355547326363128

`A323246(A135079(n))-1`
-/

namespace A370462.P7460355547326363128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323246 (A135079 n).toNat - 1

end

end A370462.P7460355547326363128

/-!
# A370463: E.g.f. satisfies A(x) = log(1 + x)/(1 - A(x))^3.

The programs for A370463, there is no canonical definition to state claims against.
-/

/-! ## A370463.P12130989287906319579

`A130363(10*(a(n-1)+10))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A370463.P12130989287906319579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A130363 (10 * (a (n - 1) + 10)).toNat

end

end A370463.P12130989287906319579

/-!
# A370469: Triangle read by columns where T(n,k) is the number of points in Z^n such that |x1| + ... + |xn| = k, |x1|, ..., |xn| > 0.

The programs for A370469, there is no canonical definition to state claims against.
-/

/-! ## A370469.P11389438124439401063

`T(n-1,k)+2*T(n-1,k-1)` with `a(0)=2`
-/

namespace A370469.P11389438124439401063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n

end

end A370469.P11389438124439401063

/-! ## A370469.P6933481246457179590

`T(n-2,k)+2*(T(n-2,k-1)+T(n-1,k-1))` with `a(0)=2, a(1)=2`
-/

namespace A370469.P6933481246457179590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  SequenceMachineLib.triUp2 a n + 2 * (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n)

end

end A370469.P6933481246457179590

/-! ## A370469.P1858531936006840062

`3*T(n-1,k)-2*(T(n-1,k)-T(n-1,k-1))` with `a(0)=2`
-/

namespace A370469.P1858531936006840062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * SequenceMachineLib.triUp a n - 2 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n)

end

end A370469.P1858531936006840062

/-! ## A370469.P3620998233703310995

`2^(col(n)+1)*C(row(n), col(n))`
-/

namespace A370469.P3620998233703310995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A370469.P3620998233703310995

/-! ## A370469.P1967506030232461817

`2*2^col(n)*C(row(n), col(n))`
-/

namespace A370469.P1967506030232461817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A370469.P1967506030232461817

/-! ## A370469.P17013780744207213561

`2*A013609(n)`
-/

namespace A370469.P17013780744207213561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n

end

end A370469.P17013780744207213561

/-! ## A370469.P4954306117094775454

`abs(2*A303872(n))`
-/

namespace A370469.P4954306117094775454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A303872 n|

end

end A370469.P4954306117094775454

/-! ## A370469.P1096106023736007705

`lcm(2, A210196(n+1))`
-/

namespace A370469.P1096106023736007705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A210196 (n + 1))

end

end A370469.P1096106023736007705

/-! ## A370469.P2322364491847271305

`2/3*A120909(n+1)`
-/

namespace A370469.P2322364491847271305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A120909 (n + 1) : ℚ)

end

end A370469.P2322364491847271305

/-! ## A370469.P5211906757195562376

`2*A038207(∑[2*n]%comp[∑[n]])`
-/

namespace A370469.P5211906757195562376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A370469.P5211906757195562376

/-!
# A370471: G.f. satisfies A(x) = 1 + x * A(x)^(1/2) * (1 + A(x)^(5/2)).

The programs for A370471, there is no canonical definition to state claims against.
-/

/-! ## A370471.P8877991711669280961

`A057365(A000172(n)+A000005(n+1))`
-/

namespace A370471.P8877991711669280961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A000172 n + A000005 (n + 1)).toNat

end

end A370471.P8877991711669280961

/-! ## A370471.P6533825569052932342

`A057365(A000172(n))+A001055(n+1)`
-/

namespace A370471.P6533825569052932342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A000172 n).toNat + A001055 (n + 1)

end

end A370471.P6533825569052932342

/-!
# A370472: G.f. satisfies A(x) = 1 + x * A(x) * (1 - A(x) + A(x)^2 - A(x)^3 + A(x)^4).

The programs for A370472, there is no canonical definition to state claims against.
-/

/-! ## A370472.P1790828000275641044

`A110656(A168598(n+1))`
-/

namespace A370472.P1790828000275641044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A168598 (n + 1)).toNat

end

end A370472.P1790828000275641044

/-! ## A370472.P14730755185647028560

`A322912(A135565(n+1))`
-/

namespace A370472.P14730755185647028560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322912 (A135565 (n + 1)).toNat

end

end A370472.P14730755185647028560

/-!
# A370473: G.f. satisfies A(x) = 1 + x * A(x)^2 * (1 - A(x) + A(x)^2 - A(x)^3 + A(x)^4).

The programs for A370473, there is no canonical definition to state claims against.
-/

/-! ## A370473.P8884187770012142735

`A057366(A027307(n))+A000046(n)`
-/

namespace A370473.P8884187770012142735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A027307 n).toNat + A000046 n

end

end A370473.P8884187770012142735

/-! ## A370473.P8045953988099453750

`A367017(n)+A212618(A001710(n))`
-/

namespace A370473.P8045953988099453750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367017 n + A212618 (A001710 n).toNat

end

end A370473.P8045953988099453750

/-!
# A370474: G.f. A(x) satisfies A(x) = 1 + x * A(x)^(3/2) * (1 + A(x)^(3/2)).

The programs for A370474, there is no canonical definition to state claims against.
-/

/-! ## A370474.P3507537889552063262

`record[A265313(∑[n+3])]`
-/

namespace A370474.P3507537889552063262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265313 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370474.P3507537889552063262

/-!
# A370475: G.f. satisfies A(x) = 1 + x * A(x)^(3/2) * (1 + A(x)^(5/2)).

The programs for A370475, there is no canonical definition to state claims against.
-/

/-! ## A370475.P10000355331322008413

`∑[ceil(9^(n-1))]-A272619(ceil(11^n/10))`
-/

namespace A370475.P10000355331322008413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272619 ⌈(11 ^ n : ℚ) / 10⌉.toNat

end

end A370475.P10000355331322008413

/-!
# A370476: G.f. satisfies A(x) = 1 + x * A(x)^3 * (1 - A(x) + A(x)^2 - A(x)^3 + A(x)^4).

The programs for A370476, there is no canonical definition to state claims against.
-/

/-! ## A370476.P10432950315583489698

`A219764(A352514(n)+A001147(n)+1)`
-/

namespace A370476.P10432950315583489698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (A352514 n + A001147 n + 1).toNat

end

end A370476.P10432950315583489698

/-!
# A370477: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^(3/2) )^2.

The programs for A370477, the canonical program `A370477.P17615523648201337073` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370477 has offset 0).

The definition of A370477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370477.P17615523648201337073

`A000588(n)+A071718(n)-A000245(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A370477

/-- `A000588(n)+A071718(n)-A000245(n)` -/
def P17615523648201337073.Spec : Prop :=
  ∀ n, P17615523648201337073.a n = A370477 n

theorem P17615523648201337073.correct : P17615523648201337073.Spec := by
  intro n
  simp only [A370477]

end A370477

/-! ## A370477.P17281333000870398164

`Δ[A071736(n)-A026012(n)]`
-/

namespace A370477.P17281333000870398164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P17281333000870398164

namespace A370477

/-- `Δ[A071736(n)-A026012(n)]` -/
def P17281333000870398164.Spec : Prop :=
  ∀ n, P17281333000870398164.a n = A370477 n

end A370477

/-! ## A370477.P7826134200252280547

`Δ[A071736(n)]-A033434(n)`
-/

namespace A370477.P7826134200252280547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033434 n

end

end A370477.P7826134200252280547

namespace A370477

/-- `Δ[A071736(n)]-A033434(n)` -/
def P7826134200252280547.Spec : Prop :=
  ∀ n, P7826134200252280547.a n = A370477 n

end A370477

/-! ## A370477.P16429769030274374382

`A071757(n)/A036453(n+1)`
-/

namespace A370477.P16429769030274374382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071757 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A370477.P16429769030274374382

namespace A370477

/-- `A071757(n)/A036453(n+1)` -/
def P16429769030274374382.Spec : Prop :=
  ∀ n, P16429769030274374382.a n = (A370477 n : ℚ)

end A370477

/-! ## A370477.P1836321003817331580

`Δ[Δ[A071724(n)-A000108(n)]]`
-/

namespace A370477.P1836321003817331580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P1836321003817331580

namespace A370477

/-- `Δ[Δ[A071724(n)-A000108(n)]]` -/
def P1836321003817331580.Spec : Prop :=
  ∀ n, P1836321003817331580.a n = A370477 n

end A370477

/-! ## A370477.P1008828346067026385

`Δ[A071736(n)-Δ[A000245(n)]]`
-/

namespace A370477.P1008828346067026385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P1008828346067026385

namespace A370477

/-- `Δ[A071736(n)-Δ[A000245(n)]]` -/
def P1008828346067026385.Spec : Prop :=
  ∀ n, P1008828346067026385.a n = A370477 n

end A370477

/-! ## A370477.P13339440830901661926

`Δ[Δ[A071738(n)-A120588(n)]]`
-/

namespace A370477.P13339440830901661926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n - A120588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P13339440830901661926

namespace A370477

/-- `Δ[Δ[A071738(n)-A120588(n)]]` -/
def P13339440830901661926.Spec : Prop :=
  ∀ n, P13339440830901661926.a n = A370477 n

end A370477

/-! ## A370477.P9214973477379533943

`Δ[A071725(n)+A036453(n+1)]`
-/

namespace A370477.P9214973477379533943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P9214973477379533943

namespace A370477

/-- `Δ[A071725(n)+A036453(n+1)]` -/
def P9214973477379533943.Spec : Prop :=
  ∀ n, P9214973477379533943.a n = A370477 n

end A370477

/-! ## A370477.P14219393945510759928

`Δ[A071725(n)+A014963(A001316(n))]`
-/

namespace A370477.P14219393945510759928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + A014963 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P14219393945510759928

namespace A370477

/-- `Δ[A071725(n)+A014963(A001316(n))]` -/
def P14219393945510759928.Spec : Prop :=
  ∀ n, P14219393945510759928.a n = A370477 n

end A370477

/-! ## A370477.P16627622034710352973

`A033434(n)+A071724(n)-A000245(n+1)`
-/

namespace A370477.P16627622034710352973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n + (A071724 n - A000245 (n + 1))

end

end A370477.P16627622034710352973

namespace A370477

/-- `A033434(n)+A071724(n)-A000245(n+1)` -/
def P16627622034710352973.Spec : Prop :=
  ∀ n, P16627622034710352973.a n = A370477 n

end A370477

/-! ## A370477.P10444520277165889438

`A071724(n)+A071740(n)-A000108(n+1)`
-/

namespace A370477.P10444520277165889438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + (A071740 n - A000108 (n + 1))

end

end A370477.P10444520277165889438

namespace A370477

/-- `A071724(n)+A071740(n)-A000108(n+1)` -/
def P10444520277165889438.Spec : Prop :=
  ∀ n, P10444520277165889438.a n = A370477 n

end A370477

/-! ## A370477.P13869773338524418419

`A033434(n)+A071724(n)-A071724(n+1)`
-/

namespace A370477.P13869773338524418419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n + (A071724 n - A071724 (n + 1))

end

end A370477.P13869773338524418419

namespace A370477

/-- `A033434(n)+A071724(n)-A071724(n+1)` -/
def P13869773338524418419.Spec : Prop :=
  ∀ n, P13869773338524418419.a n = A370477 n

end A370477

/-! ## A370477.P2800947934130797627

`A071721(n)+A071723(n)-A099376(n+1)`
-/

namespace A370477.P2800947934130797627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + (A071723 n - A099376 (n + 1))

end

end A370477.P2800947934130797627

namespace A370477

/-- `A071721(n)+A071723(n)-A099376(n+1)` -/
def P2800947934130797627.Spec : Prop :=
  ∀ n, P2800947934130797627.a n = A370477 n

end A370477

/-! ## A370477.P3960135828565297991

`A026012(n+1)+A071721(n)-A071721(n+1)`
-/

namespace A370477.P3960135828565297991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) + (A071721 n - A071721 (n + 1))

end

end A370477.P3960135828565297991

namespace A370477

/-- `A026012(n+1)+A071721(n)-A071721(n+1)` -/
def P3960135828565297991.Spec : Prop :=
  ∀ n, P3960135828565297991.a n = A370477 n

end A370477

/-! ## A370477.P17797868050414390024

`Δ[A071725(n)%A001700(n)]`
-/

namespace A370477.P17797868050414390024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071725 n) (A001700 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370477.P17797868050414390024

namespace A370477

/-- `Δ[A071725(n)%A001700(n)]` -/
def P17797868050414390024.Spec : Prop :=
  ∀ n, P17797868050414390024.a n = A370477 n

end A370477

/-!
# A370478: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/3) / (1-x))^(3/2) )^3.

The programs for A370478, there is no canonical definition to state claims against.
-/

/-! ## A370478.P1425257709145585628

`A394217(A268429(n+2))`
-/

namespace A370478.P1425257709145585628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394217 (A268429 (n + 2)).toNat

end

end A370478.P1425257709145585628

/-! ## A370478.P2450842631836047109

`A225354(A049159(n+1))`
-/

namespace A370478.P2450842631836047109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225354 (A049159 (n + 1)).toNat

end

end A370478.P2450842631836047109

/-!
# A370479: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^2 )^2.

The programs for A370479, the canonical program `A370479.P11927598021809457386` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370479 has offset 0).

The definition of A370479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370479.P2661682529918015442

`A073151(∑[n]+n)`
-/

namespace A370479.P2661682529918015442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073151 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A370479.P2661682529918015442

namespace A370479

/-- `A073151(∑[n]+n)` -/
def P2661682529918015442.Spec : Prop :=
  ∀ n, P2661682529918015442.a n = A370479 n

end A370479

/-! ## A370479.P3044393891453556679

`A110190(n)+A006319(n)`
-/

namespace A370479.P3044393891453556679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A006319 n

end

end A370479.P3044393891453556679

namespace A370479

/-- `A110190(n)+A006319(n)` -/
def P3044393891453556679.Spec : Prop :=
  ∀ n, P3044393891453556679.a n = A370479 n

end A370479

/-! ## A370479.P4052760389526344576

`record[A073151(n)/A080247(n)]`
-/

namespace A370479.P4052760389526344576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073151 n : ℚ) / (A080247 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370479.P4052760389526344576

namespace A370479

/-- `record[A073151(n)/A080247(n)]` -/
def P4052760389526344576.Spec : Prop :=
  ∀ n, P4052760389526344576.a n = (A370479 n : ℚ)

end A370479

/-! ## A370479.P5519608832360741515

`record[A073151(n)/A132372(n)]`
-/

namespace A370479.P5519608832360741515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073151 n : ℚ) / (A132372 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370479.P5519608832360741515

namespace A370479

/-- `record[A073151(n)/A132372(n)]` -/
def P5519608832360741515.Spec : Prop :=
  ∀ n, P5519608832360741515.a n = (A370479 n : ℚ)

end A370479

/-! ## A370479.P11927598021809457386

`A110190(n)+A080247(A133263(n)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370479

/-- `A110190(n)+A080247(A133263(n)-1)` -/
def P11927598021809457386.Spec : Prop :=
  ∀ n, P11927598021809457386.a n = A370479 n

theorem P11927598021809457386.correct : P11927598021809457386.Spec := by
  intro n
  simp only [A370479]

end A370479

/-! ## A370479.P8911691056698973691

`A110190(n)+A080247(A253145(n)-n)`
-/

namespace A370479.P8911691056698973691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A080247 (A253145 n - (n : ℤ)).toNat

end

end A370479.P8911691056698973691

namespace A370479

/-- `A110190(n)+A080247(A253145(n)-n)` -/
def P8911691056698973691.Spec : Prop :=
  ∀ n, P8911691056698973691.a n = A370479 n

end A370479

/-! ## A370479.P10406750218762190084

`A110190(n)+Δ[A106579(A027379(n)-n)]`
-/

namespace A370479.P10406750218762190084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A027379 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + (f1 (n + 1) - f1 n)

end

end A370479.P10406750218762190084

namespace A370479

/-- `A110190(n)+Δ[A106579(A027379(n)-n)]` -/
def P10406750218762190084.Spec : Prop :=
  ∀ n, P10406750218762190084.a n = A370479 n

end A370479

/-! ## A370479.P1854637905210753884

`A110190(n)+A033877(A161680(n)+A004277(n))`
-/

namespace A370479.P1854637905210753884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A033877 (A161680 n + A004277 n).toNat

end

end A370479.P1854637905210753884

namespace A370479

/-- `A110190(n)+A033877(A161680(n)+A004277(n))` -/
def P1854637905210753884.Spec : Prop :=
  ∀ n, P1854637905210753884.a n = A370479 n

end A370479

/-! ## A370479.P6704103354835120439

`record[A073151(n)/A080245(n)]`
-/

namespace A370479.P6704103354835120439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073151 n : ℚ) / (A080245 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370479.P6704103354835120439

namespace A370479

/-- `record[A073151(n)/A080245(n)]` -/
def P6704103354835120439.Spec : Prop :=
  ∀ n, P6704103354835120439.a n = (A370479 n : ℚ)

end A370479

/-!
# A370480: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/3) / (1-x))^2 )^3.

The programs for A370480, there is no canonical definition to state claims against.
-/

/-! ## A370480.P17165197352100035755

`A360144(n)+A109054(A000088(n))`
-/

namespace A370480.P17165197352100035755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360144 n + A109054 (A000088 n).toNat

end

end A370480.P17165197352100035755

/-! ## A370480.P16806675710234447316

`A111588(n+1)+A057366(A014827(n+1))`
-/

namespace A370480.P16806675710234447316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111588 (n + 1) + A057366 (A014827 (n + 1)).toNat

end

end A370480.P16806675710234447316

/-!
# A370481: a(0) = 33, a(n) = 3*a(n-1) + 2*n + 1 for n >= 1.

The programs for A370481, the canonical program `A370481.P11317446144277989618` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370481 has offset 0).

The definition of A370481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*n+1` (program `A370481.P11317446144277989618`, by `A370481.P11317446144277989618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370481.P2974849954242439861

`35*3^n-n-2`
-/

namespace A370481.P2974849954242439861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * 3 ^ n : ℤ) - (n : ℤ) - 2

end

end A370481.P2974849954242439861

namespace A370481

/-- `35*3^n-n-2` -/
def P2974849954242439861.Spec : Prop :=
  ∀ n, P2974849954242439861.a n = A370481 n

theorem P2974849954242439861.correct : P2974849954242439861.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A370481, Nat.add_sub_cancel, A370481.P2974849954242439861.a, A370481.P11317446144277989618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A370481, Nat.add_sub_cancel, A370481.P2974849954242439861.a, A370481.P11317446144277989618.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A370481

/-! ## A370481.P6407920168148734829

`ogf((33-63x+32x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A370481.P6407920168148734829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [33, -63, 32] [1, -5, 7, -3] n

end

end A370481.P6407920168148734829

namespace A370481

/-- `ogf((33-63x+32x^2)/(1-5x+7x^2-3x^3))` -/
def P6407920168148734829.Spec : Prop :=
  ∀ n, P6407920168148734829.a n = A370481 n

end A370481

/-! ## A370481.P11317446144277989618

`3*a(n-1)+2*n+1` with `a(0)=33`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370481

/-- `3*a(n-1)+2*n+1` -/
def P11317446144277989618.Spec : Prop :=
  ∀ n, (P11317446144277989618.a n : ℤ) = A370481 n

theorem P11317446144277989618.correct : P11317446144277989618.Spec := by
  intro n
  simp only [A370481]

end A370481

/-!
# A370482: Characteristic function of primes plus characteristic function of even numbers.

The programs for A370482, the canonical program `A370482.P9499058320465952393` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370482 has offset 0).

The definition of A370482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370482.P4646444156395273899

`char[A007918(n)]+log2(gcd(2, n))`
-/

namespace A370482.P4646444156395273899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A370482.P4646444156395273899

namespace A370482

/-- `char[A007918(n)]+log2(gcd(2, n))` -/
def P4646444156395273899.Spec : Prop :=
  ∀ n, P4646444156395273899.a n = (A370482 n : ℝ)

end A370482

/-! ## A370482.P9499058320465952393

`A059841(n)+∑{p}[n, val(#, n)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A370482

/-- `A059841(n)+∑{p}[n, val(#, n)]` -/
def P9499058320465952393.Spec : Prop :=
  ∀ n, P9499058320465952393.a n = A370482 n

theorem P9499058320465952393.correct : P9499058320465952393.Spec := by
  intro n
  simp only [A370482]

end A370482

/-! ## A370482.P13998364515195680676

`char[A006530(n+2)]+and(1, n+1)`
-/

namespace A370482.P13998364515195680676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.land 1 (n + 1)

end

end A370482.P13998364515195680676

namespace A370482

/-- `char[A006530(n+2)]+and(1, n+1)` -/
def P13998364515195680676.Spec : Prop :=
  ∀ n, (P13998364515195680676.a n : ℤ) = A370482 n

end A370482

/-! ## A370482.P16783647843154540857

`A109613(n)-A113638(n)`
-/

namespace A370482.P16783647843154540857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A113638 n

end

end A370482.P16783647843154540857

namespace A370482

/-- `A109613(n)-A113638(n)` -/
def P16783647843154540857.Spec : Prop :=
  ∀ n, P16783647843154540857.a n = A370482 n

end A370482

/-! ## A370482.P1329786589232343371

`A059841(n)+char[A151800(n)]`
-/

namespace A370482.P1329786589232343371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A370482.P1329786589232343371

namespace A370482

/-- `A059841(n)+char[A151800(n)]` -/
def P1329786589232343371.Spec : Prop :=
  ∀ n, P1329786589232343371.a n = A370482 n

end A370482

/-! ## A370482.P14359349445541088255

`A059841(n)+char[A000040(n+1)]`
-/

namespace A370482.P14359349445541088255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A370482.P14359349445541088255

namespace A370482

/-- `A059841(n)+char[A000040(n+1)]` -/
def P14359349445541088255.Spec : Prop :=
  ∀ n, P14359349445541088255.a n = A370482 n

end A370482

/-! ## A370482.P1527217292949532716

`char[A000040(n+1)]+char[A005843(n)]`
-/

namespace A370482.P1527217292949532716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A370482.P1527217292949532716

namespace A370482

/-- `char[A000040(n+1)]+char[A005843(n)]` -/
def P1527217292949532716.Spec : Prop :=
  ∀ n, (P1527217292949532716.a n : ℤ) = A370482 n

end A370482

/-! ## A370482.P10773394787377789512

`A063524(A003415(n))+A000035(n+1)`
-/

namespace A370482.P10773394787377789512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A003415 n).toNat + A000035 (n + 1)

end

end A370482.P10773394787377789512

namespace A370482

/-- `A063524(A003415(n))+A000035(n+1)` -/
def P10773394787377789512.Spec : Prop :=
  ∀ n, P10773394787377789512.a n = A370482 n

end A370482

/-!
# A370485: Number of permutations of [n] with the property that no subsequence k(k+1)(k+2) or (k+2)(k+1)k occurs but k(k+1) or (k+1)k occurs.

The programs for A370485, there is no canonical definition to state claims against.
-/

/-! ## A370485.P6726391754104940384

`A095816(n)-A002464(n)`
-/

namespace A370485.P6726391754104940384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095816 n - A002464 n

end

end A370485.P6726391754104940384

/-! ## A370485.P1326380582677900115

`A095816(n)-A346462(A000217(n))`
-/

namespace A370485.P1326380582677900115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095816 n - A346462 (A000217 n).toNat

end

end A370485.P1326380582677900115

/-! ## A370485.P13512275871764022760

`A340106(∑[n]+n)-A346462(A000217(n))`
-/

namespace A370485.P13512275871764022760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340106 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A346462 (A000217 n).toNat

end

end A370485.P13512275871764022760

/-!
# A370486: Terms in A116260 that are not of the form 10^d-1.

The programs for A370486, there is no canonical definition to state claims against.
-/

/-! ## A370486.P7075052022635147468

`A106497(n+1)-2`
-/

namespace A370486.P7075052022635147468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106497 (n + 1) - 2

end

end A370486.P7075052022635147468

/-!
# A370487: Number of partitions of [3n] into 3 sets of size n having at least one set of consecutive numbers whose maximum (if n>0) is a multiple of n.

The programs for A370487, the canonical program `A370487.P3496478294062338609` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370487 has offset 0).

The definition of A370487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370487.P3496478294062338609

`abs(2-A029651(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370487

/-- `abs(2-A029651(n))` -/
def P3496478294062338609.Spec : Prop :=
  ∀ n, P3496478294062338609.a n = A370487 n

theorem P3496478294062338609.correct : P3496478294062338609.Spec := by
  intro n
  simp only [A370487]

end A370487

/-! ## A370487.P3493679478163270166

`3*A088218(n)-2`
-/

namespace A370487.P3493679478163270166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088218 n - 2

end

end A370487.P3493679478163270166

namespace A370487

/-- `3*A088218(n)-2` -/
def P3493679478163270166.Spec : Prop :=
  ∀ n, P3493679478163270166.a n = A370487 n

end A370487

/-! ## A370487.P2341378408721605382

`3*A260878(n)-5`
-/

namespace A370487.P2341378408721605382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A260878 n - 5

end

end A370487.P2341378408721605382

namespace A370487

/-- `3*A260878(n)-5` -/
def P2341378408721605382.Spec : Prop :=
  ∀ n, P2341378408721605382.a n = A370487 n

end A370487

/-! ## A370487.P4356795547749926628

`abs(2-A050168(2*n))`
-/

namespace A370487.P4356795547749926628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A050168 (2 * n)|

end

end A370487.P4356795547749926628

namespace A370487

/-- `abs(2-A050168(2*n))` -/
def P4356795547749926628.Spec : Prop :=
  ∀ n, P4356795547749926628.a n = A370487 n

end A370487

/-! ## A370487.P12595772549845919960

`A131060(2*n²)`
-/

namespace A370487.P12595772549845919960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 (2 * n ^ 2)

end

end A370487.P12595772549845919960

namespace A370487

/-- `A131060(2*n²)` -/
def P12595772549845919960.Spec : Prop :=
  ∀ n, P12595772549845919960.a n = A370487 n

end A370487

/-!
# A370492: Numbers k such that A006530(k) = A071178(k).

The programs for A370492, there is no canonical definition to state claims against.
-/

/-! ## A370492.P15492287120616861789

`eq[A006530(n+1), A071178(n+1)]+1`
-/

namespace A370492.P15492287120616861789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A370492.P15492287120616861789

/-! ## A370492.P12597277884873045011

`A065475(eq[A006530(n+1), A071178(n+1)])`
-/

namespace A370492.P12597277884873045011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370492.P12597277884873045011

/-! ## A370492.P209475792760250111

`A020725(eq[(n+1)/A052126(n+1), A071178(n+1)])`
-/

namespace A370492.P209475792760250111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370492.P209475792760250111

/-! ## A370492.P5799373884566224792

`A020725(eq[A253560(n+1)/(n+1), A071178(n+1)])`
-/

namespace A370492.P5799373884566224792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370492.P5799373884566224792

/-! ## A370492.P13650013300492008390

`A020725(eq[(n+1)/(n+1-A171462(n+1)), A071178(n+1)])`
-/

namespace A370492.P13650013300492008390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A171462 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370492.P13650013300492008390

/-!
# A370493: Numbers k such that A006530(k) = A051903(k).

The programs for A370493, there is no canonical definition to state claims against.
-/

/-! ## A370493.P6525972255290028427

`eq[A006530(n+1), A051903(n+1)]+1`
-/

namespace A370493.P6525972255290028427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A370493.P6525972255290028427

/-! ## A370493.P15261670249303975675

`A020725(eq[A006530(n+1), A051903(n+1)])`
-/

namespace A370493.P15261670249303975675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370493.P15261670249303975675

/-! ## A370493.P4189753692659369619

`A020725(eq[(n+1)/A052126(n+1), A051903(n+1)])`
-/

namespace A370493.P4189753692659369619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370493.P4189753692659369619

/-! ## A370493.P919744768874131138

`A020725(eq[A253560(n+1)/(n+1), A051903(n+1)])`
-/

namespace A370493.P919744768874131138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370493.P919744768874131138

/-! ## A370493.P15281469398978035080

`A020725(eq[(n+1)/(n+1-A171462(n+1)), A051903(n+1)])`
-/

namespace A370493.P15281469398978035080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A171462 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A370493.P15281469398978035080

/-!
# A370494: Oblong numbers of the form (k-1)*k where k is the product of an odd number of distinct primes.

The programs for A370494, the canonical program `A370494.P10899196163276954018` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370494 has offset 1).

The definition of A370494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370494.P10899196163276954018

`A002378(A030059(n+1)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A370494

/-- `A002378(A030059(n+1)-1)` -/
def P10899196163276954018.Spec : Prop :=
  ∀ n, P10899196163276954018.a n = A370494 (n + 1)

theorem P10899196163276954018.correct : P10899196163276954018.Spec := by
  intro n
  simp only [A370494, Nat.add_sub_cancel]

end A370494

/-! ## A370494.P814281185701771435

`A077438(n+1)-A030059(n+1)`
-/

namespace A370494.P814281185701771435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1) - A030059 (n + 1)

end

end A370494.P814281185701771435

namespace A370494

/-- `A077438(n+1)-A030059(n+1)` -/
def P814281185701771435.Spec : Prop :=
  ∀ n, P814281185701771435.a n = A370494 (n + 1)

end A370494

/-! ## A370494.P13465747355196285972

`record[-((n+1)*∏{p}[n+2, -#])]`
-/

namespace A370494.P13465747355196285972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370494.P13465747355196285972

namespace A370494

/-- `record[-((n+1)*∏{p}[n+2, -#])]` -/
def P13465747355196285972.Spec : Prop :=
  ∀ n, P13465747355196285972.a n = A370494 (n + 1)

end A370494

/-! ## A370494.P5876689416735888794

`A103505(A030059(n+1))`
-/

namespace A370494.P5876689416735888794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A030059 (n + 1)).toNat

end

end A370494.P5876689416735888794

namespace A370494

/-- `A103505(A030059(n+1))` -/
def P5876689416735888794.Spec : Prop :=
  ∀ n, P5876689416735888794.a n = A370494 (n + 1)

end A370494

/-! ## A370494.P2096250632733627844

`A090705(2*(n+1))²-A090705(2*(n+1))`
-/

namespace A370494.P2096250632733627844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * (n + 1)) ^ 2 - A090705 (2 * (n + 1))

end

end A370494.P2096250632733627844

namespace A370494

/-- `A090705(2*(n+1))²-A090705(2*(n+1))` -/
def P2096250632733627844.Spec : Prop :=
  ∀ n, P2096250632733627844.a n = A370494 (n + 1)

end A370494

/-! ## A370494.P9875780906987021564

`A076998(A077438(n+1))`
-/

namespace A370494.P9875780906987021564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (A077438 (n + 1)).toNat

end

end A370494.P9875780906987021564

namespace A370494

/-- `A076998(A077438(n+1))` -/
def P9875780906987021564.Spec : Prop :=
  ∀ n, P9875780906987021564.a n = A370494 (n + 1)

end A370494

/-!
# A370495: Oblong numbers of the form (k-1)*k where k is the product of an even number of distinct primes.

The programs for A370495, the canonical program `A370495.P17576673129975267883` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370495 has offset 1).

The definition of A370495 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370495.P17576673129975267883

`A002378(A030229(n+1)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A370495

/-- `A002378(A030229(n+1)-1)` -/
def P17576673129975267883.Spec : Prop :=
  ∀ n, P17576673129975267883.a n = A370495 (n + 1)

theorem P17576673129975267883.correct : P17576673129975267883.Spec := by
  intro n
  simp only [A370495, Nat.add_sub_cancel]

end A370495

/-! ## A370495.P5240193869141220050

`A077448(n+1)-A030229(n+1)`
-/

namespace A370495.P5240193869141220050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077448 (n + 1) - A030229 (n + 1)

end

end A370495.P5240193869141220050

namespace A370495

/-- `A077448(n+1)-A030229(n+1)` -/
def P5240193869141220050.Spec : Prop :=
  ∀ n, P5240193869141220050.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P17098181446405882706

`record[A080304(n+1)²-A080304(n+1)]`
-/

namespace A370495.P17098181446405882706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (n + 1) ^ 2 - A080304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P17098181446405882706

namespace A370495

/-- `record[A080304(n+1)²-A080304(n+1)]` -/
def P17098181446405882706.Spec : Prop :=
  ∀ n, P17098181446405882706.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P9029306438718939939

`record[n*A055615(n+1)]`
-/

namespace A370495.P9029306438718939939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P9029306438718939939

namespace A370495

/-- `record[n*A055615(n+1)]` -/
def P9029306438718939939.Spec : Prop :=
  ∀ n, P9029306438718939939.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P965133762583369169

`record[n*A378997(n+1)]`
-/

namespace A370495.P965133762583369169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P965133762583369169

namespace A370495

/-- `record[n*A378997(n+1)]` -/
def P965133762583369169.Spec : Prop :=
  ∀ n, P965133762583369169.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P15749932113109199372

`record[n*∏{p}[n+1, -#]]`
-/

namespace A370495.P15749932113109199372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P15749932113109199372

namespace A370495

/-- `record[n*∏{p}[n+1, -#]]` -/
def P15749932113109199372.Spec : Prop :=
  ∀ n, P15749932113109199372.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P11724622305861198737

`record[∏{p}[n+1, -#²]-(n+1)]`
-/

namespace A370495.P11724622305861198737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p ^ 2 : ℤ)) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P11724622305861198737

namespace A370495

/-- `record[∏{p}[n+1, -#²]-(n+1)]` -/
def P11724622305861198737.Spec : Prop :=
  ∀ n, P11724622305861198737.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P15504191505162541592

`record[n*A062953(n+1)]`
-/

namespace A370495.P15504191505162541592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370495.P15504191505162541592

namespace A370495

/-- `record[n*A062953(n+1)]` -/
def P15504191505162541592.Spec : Prop :=
  ∀ n, P15504191505162541592.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P13051112859027056897

`A090705(2*n+1)²-A090705(2*n+1)`
-/

namespace A370495.P13051112859027056897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (2 * n + 1) ^ 2 - A090705 (2 * n + 1)

end

end A370495.P13051112859027056897

namespace A370495

/-- `A090705(2*n+1)²-A090705(2*n+1)` -/
def P13051112859027056897.Spec : Prop :=
  ∀ n, P13051112859027056897.a n = A370495 (n + 1)

end A370495

/-! ## A370495.P3678531787132813243

`A076998(A077448(n+1))`
-/

namespace A370495.P3678531787132813243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (A077448 (n + 1)).toNat

end

end A370495.P3678531787132813243

namespace A370495

/-- `A076998(A077448(n+1))` -/
def P3678531787132813243.Spec : Prop :=
  ∀ n, P3678531787132813243.a n = A370495 (n + 1)

end A370495

/-!
# A370498: Number of paths from (0, 0) to (2n, 2n) in an n X n grid using only steps north, northeast and east (i.e., steps (1, 0), (1, 1), and (0, 1)) and that do not pass through diagonal points with odd coordinates.

The programs for A370498, the canonical program `A370498.P12293528714486297196` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370498 has offset 0).

The definition of A370498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370498.P12293528714486297196

`ceil(2/3*A138462(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A370498

/-- `ceil(2/3*A138462(n))` -/
def P12293528714486297196.Spec : Prop :=
  ∀ n, P12293528714486297196.a n = A370498 n

theorem P12293528714486297196.correct : P12293528714486297196.Spec := by
  intro n
  simp only [A370498]

end A370498

/-! ## A370498.P16969066524025800305

`A109771(Δ[n²])/3`
-/

namespace A370498.P16969066524025800305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109771 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A370498.P16969066524025800305

namespace A370498

/-- `A109771(Δ[n²])/3` -/
def P16969066524025800305.Spec : Prop :=
  ∀ n, P16969066524025800305.a n = (A370498 n : ℚ)

end A370498

/-! ## A370498.P5453091052893305445

`(A329684(n+2)+1)/3*A138462(n)`
-/

namespace A370498.P5453091052893305445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329684 (n + 2) + 1 : ℚ) / 3 * (A138462 n : ℚ)

end

end A370498.P5453091052893305445

namespace A370498

/-- `(A329684(n+2)+1)/3*A138462(n)` -/
def P5453091052893305445.Spec : Prop :=
  ∀ n, P5453091052893305445.a n = (A370498 n : ℚ)

end A370498

/-! ## A370498.P308144542663286156

`A080243(2*n)+floor(A080243(2*n)/3)`
-/

namespace A370498.P308144542663286156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080243 (2 * n) + ⌊(A080243 (2 * n) : ℚ) / 3⌋

end

end A370498.P308144542663286156

namespace A370498

/-- `A080243(2*n)+floor(A080243(2*n)/3)` -/
def P308144542663286156.Spec : Prop :=
  ∀ n, P308144542663286156.a n = A370498 n

end A370498

/-! ## A370498.P4498725754383215602

`A006318(2*n)²/A238113(2*n)`
-/

namespace A370498.P4498725754383215602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 (2 * n) ^ 2 : ℚ) / (A238113 (2 * n) : ℚ)

end

end A370498.P4498725754383215602

namespace A370498

/-- `A006318(2*n)²/A238113(2*n)` -/
def P4498725754383215602.Spec : Prop :=
  ∀ n, P4498725754383215602.a n = (A370498 n : ℚ)

end A370498

