import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C050
import Seq.B000.C051
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A401000: Number of free left-handed polymarquises with n cells.

The programs for A401000, there is no canonical definition to state claims against.
-/

/-! ## A401000.P4689205771580674745

`A390330(lcm(a(n-1), n))-1` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A401000.P4689205771580674745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  A390330 (Int.lcm (a (n - 1)) (n : ℤ)) - 1

end

end A401000.P4689205771580674745

/-!
# A401002: Pythagorean primes p = x^2 + y^2 with integers x > y > 0 for which one Pell-type recurrence step (x, y) -> (2*x + y, x) gives another Pythagorean prime q = (2*x + y)^2 + x^2.

The programs for A401002, there is no canonical definition to state claims against.
-/

/-! ## A401002.P7281469083249528619

`A093413(A074339(n+1))`
-/

namespace A401002.P7281469083249528619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A074339 (n + 1)).toNat

end

end A401002.P7281469083249528619

/-!
# A401003: Sum of two squares obtained from the n-th Pythagorean prime by one Pell-type recurrence step: a(n) = (2*x + y)^2 + x^2, where x > y > 0 are integers and x^2 + y^2 = A002144(n).

The programs for A401003, there is no canonical definition to state claims against.
-/

/-! ## A401003.P5495022570999495814

`(2*A002330(n+2)+A002331(n+2))²+A002330(n+2)²`
-/

namespace A401003.P5495022570999495814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002330 (n + 2) + A002331 (n + 2)) ^ 2 + A002330 (n + 2) ^ 2

end

end A401003.P5495022570999495814

/-! ## A401003.P5147955608211600730

`A401004(1+n)/A080109(n+1)`
-/

namespace A401003.P5147955608211600730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (1 + n) : ℚ) / (A080109 (n + 1) : ℚ)

end

end A401003.P5147955608211600730

/-! ## A401003.P7413303722636269180

`A401004(n+1)/A002144(n+1)²`
-/

namespace A401003.P7413303722636269180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / (A002144 (n + 1) ^ 2 : ℚ)

end

end A401003.P7413303722636269180

/-! ## A401003.P2826352560395444784

`A401004(n+1)/(A055131(n)/3)²`
-/

namespace A401003.P2826352560395444784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / ((A055131 n : ℚ) / 3) ^ 2

end

end A401003.P2826352560395444784

/-! ## A401003.P7491285187328164711

`A401004(n+1)/(A152676(n+1)+A002314(n+1))²`
-/

namespace A401003.P7491285187328164711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401004 (n + 1) : ℚ) / ((A152676 (n + 1) + A002314 (n + 1)) ^ 2 : ℚ)

end

end A401003.P7491285187328164711

/-!
# A401004: Square roots of the central entries in a six-square 3 X 3 magic-square construction from Pythagorean primes using a Pell-type recurrence.

The programs for A401004, there is no canonical definition to state claims against.
-/

/-! ## A401004.P2644609200185116423

`A002144(n+1)²*A401003(n+1)`
-/

namespace A401004.P2644609200185116423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 2 * A401003 (n + 1)

end

end A401004.P2644609200185116423

/-! ## A401004.P2678108300751232267

`A080109(n+1)*A401003(n+1)`
-/

namespace A401004.P2678108300751232267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080109 (n + 1) * A401003 (n + 1)

end

end A401004.P2678108300751232267

/-! ## A401004.P4835348270474562892

`A002313(n+2)*A002313(n+2)*A401003(n+1)`
-/

namespace A401004.P4835348270474562892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A002313 (n + 2) * A401003 (n + 1)

end

end A401004.P4835348270474562892

/-!
# A401006: a(1)=1; for n >= 2, a(n) = n if n is prime; otherwise, a(n) is the decimal concatenation of n/p followed by p, where p is the largest prime factor of n.

The programs for A401006, there is no canonical definition to state claims against.
-/

/-! ## A401006.P15011796512673120068

`A037276(n+1)%Δ[Δ[A118285(n+1)]]`
-/

namespace A401006.P15011796512673120068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118285 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (n + 1)) (f1 (n + 1) - f1 n)

end

end A401006.P15011796512673120068

/-! ## A401006.P6179396165512208014

`A037276(A032559(n+1))%A029925(n)`
-/

namespace A401006.P6179396165512208014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (A032559 (n + 1)).toNat) (A029925 n)

end

end A401006.P6179396165512208014

/-! ## A401006.P1516068429616134649

`A037276(n+1)%A049058(A099089(n))`
-/

namespace A401006.P1516068429616134649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (n + 1)) (A049058 (A099089 n).toNat)

end

end A401006.P1516068429616134649

/-!
# A401008: a(n) = the number of odd non-divisors of n in 1..n.

The programs for A401008, the canonical program `A401008.P3884751415526295586` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401008 has offset 1).

The definition of A401008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401008.P12053481493114813733

`A049820(n+1)-A401009(n+1)`
-/

namespace A401008.P12053481493114813733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A401009 (n + 1)

end

end A401008.P12053481493114813733

namespace A401008

/-- `A049820(n+1)-A401009(n+1)` -/
def P12053481493114813733.Spec : Prop :=
  ∀ n, P12053481493114813733.a n = A401008 (n + 1)

theorem P12053481493114813733.correct : P12053481493114813733.Spec := by
  intro n
  simp only [A401008, Nat.add_sub_cancel, A401008.P12053481493114813733.a, A401008.P3884751415526295586.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A049820, A049820.P9428372222244335888.a, A065033, A065033.P13150710762287634520.a, A401009, A401009.P808647470638771537.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401008

/-! ## A401008.P3884751415526295586

`A065033(n+1)-A001227(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401008

/-- `A065033(n+1)-A001227(n+1)` -/
def P3884751415526295586.Spec : Prop :=
  ∀ n, P3884751415526295586.a n = A401008 (n + 1)

theorem P3884751415526295586.correct : P3884751415526295586.Spec := by
  intro n
  simp only [A401008, Nat.add_sub_cancel]

end A401008

/-! ## A401008.P4381901163590178296

`1+floor(n/2)-∑{d}[n+1, #%2]`
-/

namespace A401008.P4381901163590178296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2⌋ - ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A401008.P4381901163590178296

namespace A401008

/-- `1+floor(n/2)-∑{d}[n+1, #%2]` -/
def P4381901163590178296.Spec : Prop :=
  ∀ n, P4381901163590178296.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P11654277696910585603

`round(or(1, n)/2)-∑{d}[n+1, val(#²+1, 2)]`
-/

namespace A401008.P11654277696910585603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / 2) - ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2 + 1) 2 : ℕ) : ℤ)

end

end A401008.P11654277696910585603

namespace A401008

/-- `round(or(1, n)/2)-∑{d}[n+1, val(#²+1, 2)]` -/
def P11654277696910585603.Spec : Prop :=
  ∀ n, P11654277696910585603.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P5853064112469820751

`floor(n/2)-A069283(n+1)`
-/

namespace A401008.P5853064112469820751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A069283 (n + 1)

end

end A401008.P5853064112469820751

namespace A401008

/-- `floor(n/2)-A069283(n+1)` -/
def P5853064112469820751.Spec : Prop :=
  ∀ n, P5853064112469820751.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P334970468839573193

`ceil(n/2)-A091954(n+1)`
-/

namespace A401008.P334970468839573193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A091954 (n + 1)

end

end A401008.P334970468839573193

namespace A401008

/-- `ceil(n/2)-A091954(n+1)` -/
def P334970468839573193.Spec : Prop :=
  ∀ n, P334970468839573193.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P7332043812980031841

`floor(n/2)+1-A001227(n+1)`
-/

namespace A401008.P7332043812980031841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1 - A001227 (n + 1)

end

end A401008.P7332043812980031841

namespace A401008

/-- `floor(n/2)+1-A001227(n+1)` -/
def P7332043812980031841.Spec : Prop :=
  ∀ n, P7332043812980031841.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P442949790318390619

`1+floor(n/2)-A000005((n+1)/2^val(n+1, 2))`
-/

namespace A401008.P442949790318390619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2⌋ - A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A401008.P442949790318390619

namespace A401008

/-- `1+floor(n/2)-A000005((n+1)/2^val(n+1, 2))` -/
def P442949790318390619.Spec : Prop :=
  ∀ n, P442949790318390619.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P14202637006524616308

`A347286(n+1)-A110654(n)`
-/

namespace A401008.P14202637006524616308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (n + 1) - A110654 n

end

end A401008.P14202637006524616308

namespace A401008

/-- `A347286(n+1)-A110654(n)` -/
def P14202637006524616308.Spec : Prop :=
  ∀ n, P14202637006524616308.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P1628139158564513371

`A347286(n+1)%A065033(n)`
-/

namespace A401008.P1628139158564513371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347286 (n + 1)) (A065033 n)

end

end A401008.P1628139158564513371

namespace A401008

/-- `A347286(n+1)%A065033(n)` -/
def P1628139158564513371.Spec : Prop :=
  ∀ n, P1628139158564513371.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P998077876078578963

`A088922(n+1)-A069930(n+1)`
-/

namespace A401008.P998077876078578963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) - A069930 (n + 1)

end

end A401008.P998077876078578963

namespace A401008

/-- `A088922(n+1)-A069930(n+1)` -/
def P998077876078578963.Spec : Prop :=
  ∀ n, P998077876078578963.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P1185645001292330363

`A234306(n+1)-A003165(n+1)`
-/

namespace A401008.P1185645001292330363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234306 (n + 1) - A003165 (n + 1)

end

end A401008.P1185645001292330363

namespace A401008

/-- `A234306(n+1)-A003165(n+1)` -/
def P1185645001292330363.Spec : Prop :=
  ∀ n, P1185645001292330363.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P13303999307169144504

`A140106(n+1)-A111775(n+1)`
-/

namespace A401008.P13303999307169144504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) - A111775 (n + 1)

end

end A401008.P13303999307169144504

namespace A401008

/-- `A140106(n+1)-A111775(n+1)` -/
def P13303999307169144504.Spec : Prop :=
  ∀ n, P13303999307169144504.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P7135737489657608168

`A361003(n+1)-A066660(n+1)`
-/

namespace A401008.P7135737489657608168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361003 (n + 1) - A066660 (n + 1)

end

end A401008.P7135737489657608168

namespace A401008

/-- `A361003(n+1)-A066660(n+1)` -/
def P7135737489657608168.Spec : Prop :=
  ∀ n, P7135737489657608168.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P6012089498156251217

`A183063(n+1)+A049820(n+1)-A004526(n+1)`
-/

namespace A401008.P6012089498156251217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A049820 (n + 1) - A004526 (n + 1)

end

end A401008.P6012089498156251217

namespace A401008

/-- `A183063(n+1)+A049820(n+1)-A004526(n+1)` -/
def P6012089498156251217.Spec : Prop :=
  ∀ n, P6012089498156251217.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P4949787271247974365

`A003165(2*(n+1))-A003165(n+1)`
-/

namespace A401008.P4949787271247974365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (2 * (n + 1)) - A003165 (n + 1)

end

end A401008.P4949787271247974365

namespace A401008

/-- `A003165(2*(n+1))-A003165(n+1)` -/
def P4949787271247974365.Spec : Prop :=
  ∀ n, P4949787271247974365.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P15473457844874396418

`A401009(2*(n+1))-A401009(n+1)`
-/

namespace A401008.P15473457844874396418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401009 (2 * (n + 1)) - A401009 (n + 1)

end

end A401008.P15473457844874396418

namespace A401008

/-- `A401009(2*(n+1))-A401009(n+1)` -/
def P15473457844874396418.Spec : Prop :=
  ∀ n, P15473457844874396418.a n = A401008 (n + 1)

end A401008

/-! ## A401008.P110101287354582532

`(n+1-A086374(n+1))/2`
-/

namespace A401008.P110101287354582532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A086374 (n + 1) : ℚ) / 2

end

end A401008.P110101287354582532

namespace A401008

/-- `(n+1-A086374(n+1))/2` -/
def P110101287354582532.Spec : Prop :=
  ∀ n, P110101287354582532.a n = (A401008 (n + 1) : ℚ)

end A401008

/-!
# A401009: a(n) = the number of even non-divisors of n in 1..n.

The programs for A401009, the canonical program `A401009.P808647470638771537` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401009 has offset 1).

The definition of A401009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401009.P808647470638771537

`A049820(n+1)-A401008(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401009

/-- `A049820(n+1)-A401008(n+1)` -/
def P808647470638771537.Spec : Prop :=
  ∀ n, P808647470638771537.a n = A401009 (n + 1)

theorem P808647470638771537.correct : P808647470638771537.Spec := by
  intro n
  simp only [A401009, Nat.add_sub_cancel]

end A401009

/-! ## A401009.P9789977449157073131

`A004526(n+1)-A183063(n+1)`
-/

namespace A401009.P9789977449157073131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A183063 (n + 1)

end

end A401009.P9789977449157073131

namespace A401009

/-- `A004526(n+1)-A183063(n+1)` -/
def P9789977449157073131.Spec : Prop :=
  ∀ n, P9789977449157073131.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P8784922056892352187

`ceil(n/2)-∑{d}[n+1, log2(gcd(2, #))]`
-/

namespace A401009.P8784922056892352187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ : ℝ) - ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A401009.P8784922056892352187

namespace A401009

/-- `ceil(n/2)-∑{d}[n+1, log2(gcd(2, #))]` -/
def P8784922056892352187.Spec : Prop :=
  ∀ n, P8784922056892352187.a n = (A401009 (n + 1) : ℝ)

end A401009

/-! ## A401009.P8324116904207440948

`ceil(n/2)-A183063(n+1)`
-/

namespace A401009.P8324116904207440948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - A183063 (n + 1)

end

end A401009.P8324116904207440948

namespace A401009

/-- `ceil(n/2)-A183063(n+1)` -/
def P8324116904207440948.Spec : Prop :=
  ∀ n, P8324116904207440948.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P7994440630522484044

`row(n+C(1+floor(n/2), 2))-A368684(n+1)`
-/

namespace A401009.P7994440630522484044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (n + Nat.choose (1 + ⌊(n : ℚ) / 2⌋).toNat 2) : ℤ) - A368684 (n + 1)

end

end A401009.P7994440630522484044

namespace A401009

/-- `row(n+C(1+floor(n/2), 2))-A368684(n+1)` -/
def P7994440630522484044.Spec : Prop :=
  ∀ n, P7994440630522484044.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P13856891197804413919

`A049820(n+1)+A001227(n+1)-A008619(n)`
-/

namespace A401009.P13856891197804413919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001227 (n + 1) - A008619 n

end

end A401009.P13856891197804413919

namespace A401009

/-- `A049820(n+1)+A001227(n+1)-A008619(n)` -/
def P13856891197804413919.Spec : Prop :=
  ∀ n, P13856891197804413919.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P12689956694763346524

`A048272(n+1)+A004526(n+1)-A001227(n+1)`
-/

namespace A401009.P12689956694763346524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + A004526 (n + 1) - A001227 (n + 1)

end

end A401009.P12689956694763346524

namespace A401009

/-- `A048272(n+1)+A004526(n+1)-A001227(n+1)` -/
def P12689956694763346524.Spec : Prop :=
  ∀ n, P12689956694763346524.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P12637143157176366507

`A049820(n+1)+A001227(n+1)-A065033(n+1)`
-/

namespace A401009.P12637143157176366507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001227 (n + 1) - A065033 (n + 1)

end

end A401009.P12637143157176366507

namespace A401009

/-- `A049820(n+1)+A001227(n+1)-A065033(n+1)` -/
def P12637143157176366507.Spec : Prop :=
  ∀ n, P12637143157176366507.a n = A401009 (n + 1)

theorem P12637143157176366507.correct : P12637143157176366507.Spec := by
  intro n
  simp only [A401009, Nat.add_sub_cancel, A401009.P12637143157176366507.a, A401009.P808647470638771537.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A049820, A049820.P9428372222244335888.a, A065033, A065033.P13150710762287634520.a, A401008, A401008.P3884751415526295586.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401009

/-! ## A401009.P4013976105536711518

`A004526(n)-A032741(A057979(n+2))`
-/

namespace A401009.P4013976105536711518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A032741 (A057979 (n + 2)).toNat

end

end A401009.P4013976105536711518

namespace A401009

/-- `A004526(n)-A032741(A057979(n+2))` -/
def P4013976105536711518.Spec : Prop :=
  ∀ n, P4013976105536711518.a n = A401009 (n + 1)

end A401009

/-! ## A401009.P18130285218624958283

`A048272(2*(n+1))+floor((n+1)/2)`
-/

namespace A401009.P18130285218624958283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (2 * (n + 1)) + ⌊(n + 1 : ℚ) / 2⌋

end

end A401009.P18130285218624958283

namespace A401009

/-- `A048272(2*(n+1))+floor((n+1)/2)` -/
def P18130285218624958283.Spec : Prop :=
  ∀ n, P18130285218624958283.a n = A401009 (n + 1)

end A401009

/-!
# A401013: Maximum number of distinct prime divisors of n+k greater than k, over all integers k >= 0.

The programs for A401013, there is no canonical definition to state claims against.
-/

/-! ## A401013.P2173919108687239329

`max(A001221(n+1), A401014(n+1))`
-/

namespace A401013.P2173919108687239329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A001221 (n + 1)) (A401014 (n + 1))

end

end A401013.P2173919108687239329

/-!
# A401014: Maximum number of distinct prime divisors of n+k greater than k, over all integers k >= 1.

The programs for A401014, there is no canonical definition to state claims against.
-/

/-! ## A401014.P14177661081704746490

`A043537(A087712(n+2))`
-/

namespace A401014.P14177661081704746490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A087712 (n + 2)).toNat

end

end A401014.P14177661081704746490

/-! ## A401014.P14147831274625686464

`A043537(A127668(n+2))`
-/

namespace A401014.P14147831274625686464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A127668 (n + 2)).toNat

end

end A401014.P14147831274625686464

/-! ## A401014.P52990901529287969

`A001221(A099378(2*n+3)^3)`
-/

namespace A401014.P52990901529287969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A099378 (2 * n + 3) ^ 3).toNat

end

end A401014.P52990901529287969

/-! ## A401014.P15128130412036571438

`A001221(gcd(A318203(2*n+1), A326836(2*(n+1)))+n+1)`
-/

namespace A401014.P15128130412036571438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A318203 (2 * n + 1)) (A326836 (2 * (n + 1))) + n + 1)

end

end A401014.P15128130412036571438

/-! ## A401014.P8678924469386810886

`A001221((n+1)*A373820(3*(n+1))+1)`
-/

namespace A401014.P8678924469386810886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A373820 (3 * (n + 1)) + 1).toNat

end

end A401014.P8678924469386810886

/-!
# A401015: Digital roots of A006527(n), the number of unit tetrahedra in a regular tetrahedron subdivided into a tetrahedral-octahedral lattice.

The programs for A401015, the canonical program `A401015.P7410585718763402089` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401015 has offset 0).

The definition of A401015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401015.P7410585718763402089

`1+((n^3+2*n)/3-1)%9`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401015

/-- `1+((n^3+2*n)/3-1)%9` -/
def P7410585718763402089.Spec : Prop :=
  ∀ n, P7410585718763402089.a n = A401015 n

theorem P7410585718763402089.correct : P7410585718763402089.Spec := by
  intro n
  simp only [A401015]

end A401015

/-!
# A401016: Period 4: repeat [1, 3, 2, 4].

The programs for A401016, the canonical program `A401016.P10902171059879580111` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401016 has offset 0).

The definition of A401016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401016.P10902171059879580111

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401016

/-- `a(n-4)` -/
def P10902171059879580111.Spec : Prop :=
  ∀ n, (P10902171059879580111.a n : ℤ) = A401016 n

theorem P10902171059879580111.correct : P10902171059879580111.Spec := by
  intro n
  simp only [A401016]

end A401016

/-!
# A401017: Sprague-Grundy values of the take-away game in which a player may remove between 1 and floor(sqrt(n)) stones from a pile of n stones.

The programs for A401017, there is no canonical definition to state claims against.
-/

/-! ## A401017.P12252709923957331736

`A025480(A199474(n+1))`
-/

namespace A401017.P12252709923957331736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A199474 (n + 1)).toNat

end

end A401017.P12252709923957331736

/-! ## A401017.P6700395929508017343

`A110962(2*A199474(n+1))`
-/

namespace A401017.P6700395929508017343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * A199474 (n + 1)).toNat

end

end A401017.P6700395929508017343

/-! ## A401017.P16163226432953396573

`A065339(A003598(n+2))`
-/

namespace A401017.P16163226432953396573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003598 (n + 2)).toNat

end

end A401017.P16163226432953396573

/-! ## A401017.P14585182050956775104

`A046080(A107710(n+2))`
-/

namespace A401017.P14585182050956775104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A107710 (n + 2)).toNat

end

end A401017.P14585182050956775104

/-! ## A401017.P1883133098703683966

`A321201(2*n+3)%(A076834(n+1)+1)`
-/

namespace A401017.P1883133098703683966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321201 (2 * n + 3)) (A076834 (n + 1) + 1)

end

end A401017.P1883133098703683966

/-!
# A401018: Half the number of changes in the cyclic column words of the Gosper-Lafitte triangle.

The programs for A401018, there is no canonical definition to state claims against.
-/

/-! ## A401018.P1668246156075035008

`A037824(A000593(3*(n+1))²+4)`
-/

namespace A401018.P1668246156075035008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A000593 (3 * (n + 1)) ^ 2 + 4).toNat

end

end A401018.P1668246156075035008

/-! ## A401018.P16428962365359869115

`A370303(A178547(∑{d}[n+1, #*and(1, #)]))`
-/

namespace A401018.P16428962365359869115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370303 (A178547 (∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d)).toNat

end

end A401018.P16428962365359869115

/-! ## A401018.P14396523368478655035

`ceil(A336363(n+1)%A279090(2*(n+2))/2)`
-/

namespace A401018.P14396523368478655035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A336363 (n + 1)) (A279090 (2 * (n + 2))) : ℚ) / 2⌉

end

end A401018.P14396523368478655035

/-! ## A401018.P7414000525464004822

`col(A000005(A321283(((n+1)/2^val(n+1, 2)+1)/2)))`
-/

namespace A401018.P7414000525464004822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A000005 (A321283 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat).toNat).toNat

end

end A401018.P7414000525464004822

/-! ## A401018.P14406786017477827594

`A211666(C(A136655(n+1), A023416(n)))`
-/

namespace A401018.P14406786017477827594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (Nat.choose (A136655 (n + 1)).toNat (A023416 n).toNat)

end

end A401018.P14406786017477827594

/-!
# A401020: a(n) is the least prime p such that there are exactly n numbers k such that A175508(k) = p.

The programs for A401020, there is no canonical definition to state claims against.
-/

/-! ## A401020.P1917541448084246763

`A227828(A041811(n+1))`
-/

namespace A401020.P1917541448084246763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227828 (A041811 (n + 1)).toNat

end

end A401020.P1917541448084246763

/-!
# A401022: Largest 3-smooth divisor of n*(n+1).

The programs for A401022, the canonical program `A401022.P16118425534443193509` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401022 has offset 1).

The definition of A401022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401022.P6768020743559926942

`2^val((n+1)*(n+2), 2)*3^val((n+1)*(n+2), 3)`
-/

namespace A401022.P6768020743559926942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2 * 3 ^ SequenceMachineLib.valuation ((n + 1) * (n + 2)) 3

end

end A401022.P6768020743559926942

namespace A401022

/-- `2^val((n+1)*(n+2), 2)*3^val((n+1)*(n+2), 3)` -/
def P6768020743559926942.Spec : Prop :=
  ∀ n, (P6768020743559926942.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P16118425534443193509

`A065331(n+1)*A065331(n+2)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401022

/-- `A065331(n+1)*A065331(n+2)` -/
def P16118425534443193509.Spec : Prop :=
  ∀ n, P16118425534443193509.a n = A401022 (n + 1)

theorem P16118425534443193509.correct : P16118425534443193509.Spec := by
  intro n
  simp only [A401022, Nat.add_sub_cancel]

end A401022

/-! ## A401022.P5794116699033027402

`A065331((n+1)*(n+2))`
-/

namespace A401022.P5794116699033027402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 ((n + 1) * (n + 2))

end

end A401022.P5794116699033027402

namespace A401022

/-- `A065331((n+1)*(n+2))` -/
def P5794116699033027402.Spec : Prop :=
  ∀ n, P5794116699033027402.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P8069818484528314985

`gcd(A157056(n+1), A249227(n+1))`
-/

namespace A401022.P8069818484528314985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157056 (n + 1)) (A249227 (n + 1))

end

end A401022.P8069818484528314985

namespace A401022

/-- `gcd(A157056(n+1), A249227(n+1))` -/
def P8069818484528314985.Spec : Prop :=
  ∀ n, (P8069818484528314985.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P5742567411211596510

`A003586(A322026((n+1)*(n+2)))`
-/

namespace A401022.P5742567411211596510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A322026 ((n + 1) * (n + 2))).toNat

end

end A401022.P5742567411211596510

namespace A401022

/-- `A003586(A322026((n+1)*(n+2)))` -/
def P5742567411211596510.Spec : Prop :=
  ∀ n, P5742567411211596510.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P8453191176437644635

`A118381(n+2)/(A060818(n)*A060828(n))`
-/

namespace A401022.P8453191176437644635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118381 (n + 2) : ℚ) / (A060818 n * A060828 n : ℚ)

end

end A401022.P8453191176437644635

namespace A401022

/-- `A118381(n+2)/(A060818(n)*A060828(n))` -/
def P8453191176437644635.Spec : Prop :=
  ∀ n, P8453191176437644635.a n = (A401022 (n + 1) : ℚ)

end A401022

/-! ## A401022.P3430108839551934844

`gcd((n+1)*(n+2), 6^(n+1))`
-/

namespace A401022.P3430108839551934844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (n + 2)) (6 ^ (n + 1))

end

end A401022.P3430108839551934844

namespace A401022

/-- `gcd((n+1)*(n+2), 6^(n+1))` -/
def P3430108839551934844.Spec : Prop :=
  ∀ n, (P3430108839551934844.a n : ℤ) = A401022 (n + 1)

end A401022

/-! ## A401022.P4983299216625799933

`A284255(2*∑[n+1])`
-/

namespace A401022.P4983299216625799933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A401022.P4983299216625799933

namespace A401022

/-- `A284255(2*∑[n+1])` -/
def P4983299216625799933.Spec : Prop :=
  ∀ n, P4983299216625799933.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P12061965534667983868

`A066262(A066262((n+1)*(n+2)))`
-/

namespace A401022.P12061965534667983868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066262 (A066262 ((n + 1) * (n + 2))).toNat

end

end A401022.P12061965534667983868

namespace A401022

/-- `A066262(A066262((n+1)*(n+2)))` -/
def P12061965534667983868.Spec : Prop :=
  ∀ n, P12061965534667983868.a n = A401022 (n + 1)

end A401022

/-! ## A401022.P6364654587325675369

`A355582(A132739((n+1)*(n+2)))`
-/

namespace A401022.P6364654587325675369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A132739 ((n + 1) * (n + 2))).toNat

end

end A401022.P6364654587325675369

namespace A401022

/-- `A355582(A132739((n+1)*(n+2)))` -/
def P6364654587325675369.Spec : Prop :=
  ∀ n, P6364654587325675369.a n = A401022 (n + 1)

end A401022

/-!
# A401024: Primes p such that A075255(k) = p for some k.

The programs for A401024, there is no canonical definition to state claims against.
-/

/-! ## A401024.P8371037602840916520

`record[A051698(A254636(n+1))]`
-/

namespace A401024.P8371037602840916520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A254636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401024.P8371037602840916520

/-! ## A401024.P15954582347628522663

`record[A007918((A400110(n+1)+n)%A261416(n))]`
-/

namespace A401024.P15954582347628522663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A400110 (n + 1) + (n : ℤ)) (A261416 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401024.P15954582347628522663

/-! ## A401024.P10849462260783289511

`A000040(lt[A389554(3*n+4), A055396(2*n+3)])`
-/

namespace A401024.P10849462260783289511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389554 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401024.P10849462260783289511

/-! ## A401024.P5086898765791154350

`A000040(lt[A359901(3*n+4), A014462(3*(n+1))])`
-/

namespace A401024.P5086898765791154350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401024.P5086898765791154350

/-! ## A401024.P10312048942761713105

`record[A151800(n)/A328966(n+4)]`
-/

namespace A401024.P10312048942761713105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 n : ℚ) / (A328966 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401024.P10312048942761713105

/-!
# A401025: Maximum absolute difference between consecutive terms of n/gcd(n,k), k = 1..n-1.

The programs for A401025, there is no canonical definition to state claims against.
-/

/-! ## A401025.P7166420164131771557

`A000005(A000079(n))-A365521(n+1)`
-/

namespace A401025.P7166420164131771557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat - A365521 (n + 1)

end

end A401025.P7166420164131771557

/-! ## A401025.P11589430889665798486

`n+1-A088387(A077168(n))`
-/

namespace A401025.P11589430889665798486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A088387 (A077168 n).toNat

end

end A401025.P11589430889665798486

/-! ## A401025.P10362460426605606388

`A373749(A066717(n))+A331176(n+1)`
-/

namespace A401025.P10362460426605606388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373749 (A066717 n).toNat + A331176 (n + 1)

end

end A401025.P10362460426605606388

/-! ## A401025.P18137938849095166047

`A001511(A000079(n))-A088387(n+1)`
-/

namespace A401025.P18137938849095166047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000079 n).toNat - A088387 (n + 1)

end

end A401025.P18137938849095166047

/-! ## A401025.P11750678551222595713

`A091222(A000079(n+1))-A088387(n+1)`
-/

namespace A401025.P11750678551222595713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A000079 (n + 1)).toNat - A088387 (n + 1)

end

end A401025.P11750678551222595713

/-!
# A401030: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = NAND(T(n-1,k-1), T(n-1,k)) for 0 < k < n, where NAND is the Boolean logic gate.

The programs for A401030, the canonical program `A401030.P17939284489485883793` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401030 has offset 0).

The definition of A401030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401030.P17939284489485883793

`1-T(n-1,k)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401030

/-- `1-T(n-1,k)*T(n-1,k-1)` -/
def P17939284489485883793.Spec : Prop :=
  ∀ n, P17939284489485883793.a n = A401030 n

theorem P17939284489485883793.correct : P17939284489485883793.Spec := by
  intro n
  simp only [A401030]

end A401030

/-! ## A401030.P12996873618916859243

`(1-T(n-1,k))^T(n-1,k-1)` with `a(0)=1`
-/

namespace A401030.P12996873618916859243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (1 - SequenceMachineLib.triUp a n) ^ (SequenceMachineLib.triUpLeft a n)

end

end A401030.P12996873618916859243

namespace A401030

/-- `(1-T(n-1,k))^T(n-1,k-1)` -/
def P12996873618916859243.Spec : Prop :=
  ∀ n, P12996873618916859243.a n = (A401030 n : ℝ)

end A401030

/-! ## A401030.P14217552301258393752

`1-lcm(T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P14217552301258393752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.lcm (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n) : ℤ)

end

end A401030.P14217552301258393752

namespace A401030

/-- `1-lcm(T(n-1,k), T(n-1,k-1))` -/
def P14217552301258393752.Spec : Prop :=
  ∀ n, P14217552301258393752.a n = A401030 n

end A401030

/-! ## A401030.P10539579712135694091

`C(1-T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P10539579712135694091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (1 - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)).toNat (SequenceMachineLib.triUpLeft a n)

end

end A401030.P10539579712135694091

namespace A401030

/-- `C(1-T(n-1,k), T(n-1,k-1))` -/
def P10539579712135694091.Spec : Prop :=
  ∀ n, (P10539579712135694091.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P14769191137691633692

`1-and(T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P14769191137691633692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A401030.P14769191137691633692

namespace A401030

/-- `1-and(T(n-1,k), T(n-1,k-1))` -/
def P14769191137691633692.Spec : Prop :=
  ∀ n, P14769191137691633692.a n = A401030 n

end A401030

/-! ## A401030.P6860019019548781517

`xor(1, T(n-1,k)*T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P6860019019548781517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n)

end

end A401030.P6860019019548781517

namespace A401030

/-- `xor(1, T(n-1,k)*T(n-1,k-1))` -/
def P6860019019548781517.Spec : Prop :=
  ∀ n, (P6860019019548781517.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P13661669228173041048

`xor(1, T(n-1,k))^T(n-1,k-1)` with `a(0)=1`
-/

namespace A401030.P13661669228173041048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (SequenceMachineLib.triUp a n) ^ SequenceMachineLib.triUpLeft a n

end

end A401030.P13661669228173041048

namespace A401030

/-- `xor(1, T(n-1,k))^T(n-1,k-1)` -/
def P13661669228173041048.Spec : Prop :=
  ∀ n, (P13661669228173041048.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P1967890853138402231

`C(xor(T(n-1,k), T(n-1,k-1)), T(n-1,k))` with `a(0)=1`
-/

namespace A401030.P1967890853138402231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Nat.xor (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)) (SequenceMachineLib.triUp a n)

end

end A401030.P1967890853138402231

namespace A401030

/-- `C(xor(T(n-1,k), T(n-1,k-1)), T(n-1,k))` -/
def P1967890853138402231.Spec : Prop :=
  ∀ n, (P1967890853138402231.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P13449321050116746477

`and(1, (T(n-1,k)+T(n-1,k-1))!)` with `a(0)=1`
-/

namespace A401030.P13449321050116746477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (Nat.factorial (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n))

end

end A401030.P13449321050116746477

namespace A401030

/-- `and(1, (T(n-1,k)+T(n-1,k-1))!)` -/
def P13449321050116746477.Spec : Prop :=
  ∀ n, (P13449321050116746477.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P17173784911409421760

`1-col(T(n-1,k)+T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P17173784911409421760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (SequenceMachineLib.triCol (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n).toNat : ℤ)

end

end A401030.P17173784911409421760

namespace A401030

/-- `1-col(T(n-1,k)+T(n-1,k-1))` -/
def P17173784911409421760.Spec : Prop :=
  ∀ n, P17173784911409421760.a n = A401030 n

end A401030

/-! ## A401030.P12184523990665218909

`xor(1, col(T(n-1,k)+T(n-1,k-1)))` with `a(0)=1`
-/

namespace A401030.P12184523990665218909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (SequenceMachineLib.triCol (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n))

end

end A401030.P12184523990665218909

namespace A401030

/-- `xor(1, col(T(n-1,k)+T(n-1,k-1)))` -/
def P12184523990665218909.Spec : Prop :=
  ∀ n, (P12184523990665218909.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P1713653967260617662

`T(1-T(n-1,k-1), T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A401030.P1713653967260617662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a (1 - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A401030.P1713653967260617662

namespace A401030

/-- `T(1-T(n-1,k-1), T(n-1,k))` -/
def P1713653967260617662.Spec : Prop :=
  ∀ n, (P1713653967260617662.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P1842633753446312903

`row(2-(T(n-1,k)+T(n-1,k-1)))` with `a(0)=1, a(1)=1`
-/

namespace A401030.P1842633753446312903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triRow (2 - (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n : ℤ)).toNat

end

end A401030.P1842633753446312903

namespace A401030

/-- `row(2-(T(n-1,k)+T(n-1,k-1)))` -/
def P1842633753446312903.Spec : Prop :=
  ∀ n, (P1842633753446312903.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P4591515980608715154

`T(1, T(n-1,k-1)+T(n-1,k))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A401030.P4591515980608715154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n : ℤ)

end

end A401030.P4591515980608715154

namespace A401030

/-- `T(1, T(n-1,k-1)+T(n-1,k))` -/
def P4591515980608715154.Spec : Prop :=
  ∀ n, (P4591515980608715154.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P12767273967057644087

`T(T(n-1,k+1), 2*T(n-1,k)*T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P12767273967057644087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n : ℤ)

end

end A401030.P12767273967057644087

namespace A401030

/-- `T(T(n-1,k+1), 2*T(n-1,k)*T(n-1,k-1))` -/
def P12767273967057644087.Spec : Prop :=
  ∀ n, (P12767273967057644087.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P9406547613494287406

`T(T(n-1,k-1), 2*T(n-1,k)*T(n-1,k-1))` with `a(0)=1`
-/

namespace A401030.P9406547613494287406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n : ℤ)

end

end A401030.P9406547613494287406

namespace A401030

/-- `T(T(n-1,k-1), 2*T(n-1,k)*T(n-1,k-1))` -/
def P9406547613494287406.Spec : Prop :=
  ∀ n, (P9406547613494287406.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P1234877987209957376

`1-floor((T(n-1,k)+T(n-1,k-1))/2)` with `a(0)=1`
-/

namespace A401030.P1234877987209957376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n : ℚ) / 2⌋

end

end A401030.P1234877987209957376

namespace A401030

/-- `1-floor((T(n-1,k)+T(n-1,k-1))/2)` -/
def P1234877987209957376.Spec : Prop :=
  ∀ n, P1234877987209957376.a n = A401030 n

end A401030

/-! ## A401030.P13205367860504878788

`T(T(T(T(n-1,k+1), 2), T(n-1,k-1)), T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A401030.P13205367860504878788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) 2 : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A401030.P13205367860504878788

namespace A401030

/-- `T(T(T(T(n-1,k+1), 2), T(n-1,k-1)), T(n-1,k))` -/
def P13205367860504878788.Spec : Prop :=
  ∀ n, (P13205367860504878788.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P3242055006363378758

`T(T(T(T(n-1,k), 2), T(n-1,k-1)), T(n-1,k))` with `a(0)=1, a(1)=1`
-/

namespace A401030.P3242055006363378758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) 2 : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A401030.P3242055006363378758

namespace A401030

/-- `T(T(T(T(n-1,k), 2), T(n-1,k-1)), T(n-1,k))` -/
def P3242055006363378758.Spec : Prop :=
  ∀ n, (P3242055006363378758.a n : ℤ) = A401030 n

end A401030

/-! ## A401030.P10395755257995696901

`1-T(row(n)-1, col(n)-T(n-1,k))` with `a(0)=1`
-/

namespace A401030.P10395755257995696901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triUp a n)

end

end A401030.P10395755257995696901

namespace A401030

/-- `1-T(row(n)-1, col(n)-T(n-1,k))` -/
def P10395755257995696901.Spec : Prop :=
  ∀ n, P10395755257995696901.a n = A401030 n

end A401030

/-!
# A401031: Number of compositions of n using 1's and 2's such that the number of 1's and 2's differ by 0 or 1.

The programs for A401031, the canonical program `A401031.P18122269830751302283` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401031 has offset 0).

The definition of A401031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401031.P18122269830751302283

`A001405(floor((1+2*n)/3))`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401031

/-- `A001405(floor((1+2*n)/3))` -/
def P18122269830751302283.Spec : Prop :=
  ∀ n, P18122269830751302283.a n = A401031 n

theorem P18122269830751302283.correct : P18122269830751302283.Spec := by
  intro n
  simp only [A401031]

end A401031

/-! ## A401031.P9294329370441284172

`A210736(∑[char[∑[n%3]]])`
-/

namespace A401031.P9294329370441284172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401031.P9294329370441284172

namespace A401031

/-- `A210736(∑[char[∑[n%3]]])` -/
def P9294329370441284172.Spec : Prop :=
  ∀ n, P9294329370441284172.a n = A401031 n

end A401031

/-! ## A401031.P16787714217434838083

`A001405(∑[dr(3*n)%2])`
-/

namespace A401031.P16787714217434838083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401031.P16787714217434838083

namespace A401031

/-- `A001405(∑[dr(3*n)%2])` -/
def P16787714217434838083.Spec : Prop :=
  ∀ n, P16787714217434838083.a n = A401031 n

end A401031

/-! ## A401031.P5315288245938992619

`A001405(∑[and(1, dr(3*n))])`
-/

namespace A401031.P5315288245938992619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (3 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401031.P5315288245938992619

namespace A401031

/-- `A001405(∑[and(1, dr(3*n))])` -/
def P5315288245938992619.Spec : Prop :=
  ∀ n, P5315288245938992619.a n = A401031 n

end A401031

/-! ## A401031.P4271526784427000508

`A014495(floor((2*n+1)/3))+1`
-/

namespace A401031.P4271526784427000508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 ⌊(2 * n + 1 : ℚ) / 3⌋.toNat + 1

end

end A401031.P4271526784427000508

namespace A401031

/-- `A014495(floor((2*n+1)/3))+1` -/
def P4271526784427000508.Spec : Prop :=
  ∀ n, P4271526784427000508.a n = A401031 n

theorem P4271526784427000508.correct : P4271526784427000508.Spec := by
  intro n
  simp only [A401031, Nat.add_sub_cancel, A401031.P4271526784427000508.a, A401031.P18122269830751302283.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401031

/-! ## A401031.P17401014786967102446

`A210736(A322042(n+2))`
-/

namespace A401031.P17401014786967102446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A322042 (n + 2)).toNat

end

end A401031.P17401014786967102446

namespace A401031

/-- `A210736(A322042(n+2))` -/
def P17401014786967102446.Spec : Prop :=
  ∀ n, P17401014786967102446.a n = A401031 n

end A401031

/-! ## A401031.P16471640415141830596

`A007318(C(floor((2*n+1)/3), 2)+n)`
-/

namespace A401031.P16471640415141830596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose ⌊(2 * n + 1 : ℚ) / 3⌋.toNat 2 + n)

end

end A401031.P16471640415141830596

namespace A401031

/-- `A007318(C(floor((2*n+1)/3), 2)+n)` -/
def P16471640415141830596.Spec : Prop :=
  ∀ n, P16471640415141830596.a n = A401031 n

end A401031

/-! ## A401031.P11947574654327900811

`A007318(∑[A092942(n)])`
-/

namespace A401031.P11947574654327900811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A401031.P11947574654327900811

namespace A401031

/-- `A007318(∑[A092942(n)])` -/
def P11947574654327900811.Spec : Prop :=
  ∀ n, P11947574654327900811.a n = A401031 n

end A401031

/-! ## A401031.P1949099910066297899

`A129570(A251599(n+1))`
-/

namespace A401031.P1949099910066297899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129570 (A251599 (n + 1)).toNat

end

end A401031.P1949099910066297899

namespace A401031

/-- `A129570(A251599(n+1))` -/
def P1949099910066297899.Spec : Prop :=
  ∀ n, P1949099910066297899.a n = A401031 n

end A401031

/-! ## A401031.P2664326729397129933

`A194005(A111097(n+1))`
-/

namespace A401031.P2664326729397129933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A111097 (n + 1)).toNat

end

end A401031.P2664326729397129933

namespace A401031

/-- `A194005(A111097(n+1))` -/
def P2664326729397129933.Spec : Prop :=
  ∀ n, P2664326729397129933.a n = A401031 n

end A401031

/-! ## A401031.P17297711693880422754

`A194005(A389142(n+1))`
-/

namespace A401031.P17297711693880422754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A389142 (n + 1)).toNat

end

end A401031.P17297711693880422754

namespace A401031

/-- `A194005(A389142(n+1))` -/
def P17297711693880422754.Spec : Prop :=
  ∀ n, P17297711693880422754.a n = A401031 n

end A401031

/-! ## A401031.P2889104488829860945

`A052553(A171452(n+1))`
-/

namespace A401031.P2889104488829860945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A171452 (n + 1)).toNat

end

end A401031.P2889104488829860945

namespace A401031

/-- `A052553(A171452(n+1))` -/
def P2889104488829860945.Spec : Prop :=
  ∀ n, P2889104488829860945.a n = A401031 n

end A401031

/-! ## A401031.P15787410839900837770

`A046854(A024401(n+1))`
-/

namespace A401031.P15787410839900837770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A024401 (n + 1)).toNat

end

end A401031.P15787410839900837770

namespace A401031

/-- `A046854(A024401(n+1))` -/
def P15787410839900837770.Spec : Prop :=
  ∀ n, P15787410839900837770.a n = A401031 n

end A401031

/-! ## A401031.P11123572601500080407

`A152828(A143978(n+1))`
-/

namespace A401031.P11123572601500080407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 (A143978 (n + 1)).toNat

end

end A401031.P11123572601500080407

namespace A401031

/-- `A152828(A143978(n+1))` -/
def P11123572601500080407.Spec : Prop :=
  ∀ n, P11123572601500080407.a n = A401031 n

end A401031

/-!
# A401033: Let m = prime(n), then a(n) is the smallest prime p for which (p^m-(q-p)^m)/(2*p-q) is prime where q is the next prime after p; or -1 if no such prime exists.

The programs for A401033, there is no canonical definition to state claims against.
-/

/-! ## A401033.P14003536091869996052

`A295510(A249768(n+1))`
-/

namespace A401033.P14003536091869996052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295510 (A249768 (n + 1)).toNat

end

end A401033.P14003536091869996052

/-! ## A401033.P13986792478359735896

`A020639(2+A196317(n+1))`
-/

namespace A401033.P13986792478359735896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 + A196317 (n + 1)).toNat

end

end A401033.P13986792478359735896

/-! ## A401033.P1907465144315027386

`A355240(A117401(lcm(2, n)))-1`
-/

namespace A401033.P1907465144315027386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355240 (A117401 (Nat.lcm 2 n)).toNat - 1

end

end A401033.P1907465144315027386

/-! ## A401033.P12344698853966291884

`A014546(∑{d}[A054772(n+1), #])`
-/

namespace A401033.P12344698853966291884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014546 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A401033.P12344698853966291884

/-! ## A401033.P8252592433654602162

`A039650(ceil(A077636(n+1)/2)^n)`
-/

namespace A401033.P8252592433654602162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (⌈(A077636 (n + 1) : ℚ) / 2⌉ ^ n).toNat

end

end A401033.P8252592433654602162

/-!
# A401034: a(n) = n + x + y where x and y are the coordinates of n in the square spiral.

The programs for A401034, the canonical program `A401034.P16809251032672177720` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401034 has offset 1).

The definition of A401034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401034.P14854403763803228033

`n+1+A180714(n)`
-/

namespace A401034.P14854403763803228033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A180714 n

end

end A401034.P14854403763803228033

namespace A401034

/-- `n+1+A180714(n)` -/
def P14854403763803228033.Spec : Prop :=
  ∀ n, P14854403763803228033.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P16809251032672177720

`n+1+A174344(n+1)+A274923(n+1)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401034

/-- `n+1+A174344(n+1)+A274923(n+1)` -/
def P16809251032672177720.Spec : Prop :=
  ∀ n, P16809251032672177720.a n = A401034 (n + 1)

theorem P16809251032672177720.correct : P16809251032672177720.Spec := by
  intro n
  simp only [A401034, Nat.add_sub_cancel]

end A401034

/-! ## A401034.P17678944860378713483

`2*∑[round(sqrt(n))%2]+1`
-/

namespace A401034.P17678944860378713483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A401034.P17678944860378713483

namespace A401034

/-- `2*∑[round(sqrt(n))%2]+1` -/
def P17678944860378713483.Spec : Prop :=
  ∀ n, P17678944860378713483.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P14342820229556818310

`1+A180714(n)+n`
-/

namespace A401034.P14342820229556818310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A180714 n + (n : ℤ)

end

end A401034.P14342820229556818310

namespace A401034

/-- `1+A180714(n)+n` -/
def P14342820229556818310.Spec : Prop :=
  ∀ n, P14342820229556818310.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P12178476947754775662

`∑[A062157(A000194(n))+1]`
-/

namespace A401034.P12178476947754775662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000194 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401034.P12178476947754775662

namespace A401034

/-- `∑[A062157(A000194(n))+1]` -/
def P12178476947754775662.Spec : Prop :=
  ∀ n, P12178476947754775662.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P17496086069946935974

`A359217(2*n)+1+n`
-/

namespace A401034.P17496086069946935974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359217 (2 * n) + 1 + (n : ℤ)

end

end A401034.P17496086069946935974

namespace A401034

/-- `A359217(2*n)+1+n` -/
def P17496086069946935974.Spec : Prop :=
  ∀ n, P17496086069946935974.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P14744433359477890876

`A174344(A316884(n+1))+n+1`
-/

namespace A401034.P14744433359477890876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A316884 (n + 1)).toNat + (n + 1 : ℤ)

end

end A401034.P14744433359477890876

namespace A401034

/-- `A174344(A316884(n+1))+n+1` -/
def P14744433359477890876.Spec : Prop :=
  ∀ n, P14744433359477890876.a n = A401034 (n + 1)

end A401034

/-! ## A401034.P8365023254798325392

`∑[A095121(A053187(n))%3]`
-/

namespace A401034.P8365023254798325392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095121 (A053187 n).toNat) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401034.P8365023254798325392

namespace A401034

/-- `∑[A095121(A053187(n))%3]` -/
def P8365023254798325392.Spec : Prop :=
  ∀ n, P8365023254798325392.a n = A401034 (n + 1)

end A401034

/-!
# A401038: a(1)=2, a(n)=(a(n-1)+prime(n))*prime(n) for n > 1.

The programs for A401038, the canonical program `A401038.P13661554946352965378` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401038 has offset 1).

The definition of A401038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401038.P13661554946352965378

`(a(n-1)+A000040(n+1))*A000040(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401038

/-- `(a(n-1)+A000040(n+1))*A000040(n+1)` -/
def P13661554946352965378.Spec : Prop :=
  ∀ n, P13661554946352965378.a n = A401038 (n + 1)

theorem P13661554946352965378.correct : P13661554946352965378.Spec := by
  intro n
  simp only [A401038, Nat.add_sub_cancel]

end A401038

/-! ## A401038.P12439759823672844111

`A098206(n+1)+A070826(n+1)`
-/

namespace A401038.P12439759823672844111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098206 (n + 1) + A070826 (n + 1)

end

end A401038.P12439759823672844111

namespace A401038

/-- `A098206(n+1)+A070826(n+1)` -/
def P12439759823672844111.Spec : Prop :=
  ∀ n, P12439759823672844111.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P551156849237351205

`(A065091(n)+a(n-1))*A000040(n+1)` with `a(0)=2`
-/

namespace A401038.P551156849237351205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A065091 n + a (n - 1)) * A000040 (n + 1)

end

end A401038.P551156849237351205

namespace A401038

/-- `(A065091(n)+a(n-1))*A000040(n+1)` -/
def P551156849237351205.Spec : Prop :=
  ∀ n, P551156849237351205.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P2690489626467157737

`A000040(n+1)*(Δ[A007504(n)]+a(n-1))` with `a(0)=2`
-/

namespace A401038.P2690489626467157737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n + a (n - 1))

end

end A401038.P2690489626467157737

namespace A401038

/-- `A000040(n+1)*(Δ[A007504(n)]+a(n-1))` -/
def P2690489626467157737.Spec : Prop :=
  ∀ n, P2690489626467157737.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P6615603981690052388

`A001248(n+1)+record[A162753(n)]*a(n-1)` with `a(0)=2`
-/

namespace A401038.P6615603981690052388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001248 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * a (n - 1)

end

end A401038.P6615603981690052388

namespace A401038

/-- `A001248(n+1)+record[A162753(n)]*a(n-1)` -/
def P6615603981690052388.Spec : Prop :=
  ∀ n, P6615603981690052388.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P17380900773575593545

`A280076(2+n)+record[A162753(n)]*a(n-1)` with `a(0)=2`
-/

namespace A401038.P17380900773575593545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A280076 (2 + n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * a (n - 1)

end

end A401038.P17380900773575593545

namespace A401038

/-- `A280076(2+n)+record[A162753(n)]*a(n-1)` -/
def P17380900773575593545.Spec : Prop :=
  ∀ n, P17380900773575593545.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P18322478445178666957

`(A008578(n+2)+a(n-1))*A008578(n+2)` with `a(0)=2`
-/

namespace A401038.P18322478445178666957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A008578 (n + 2) + a (n - 1)) * A008578 (n + 2)

end

end A401038.P18322478445178666957

namespace A401038

/-- `(A008578(n+2)+a(n-1))*A008578(n+2)` -/
def P18322478445178666957.Spec : Prop :=
  ∀ n, P18322478445178666957.a n = A401038 (n + 1)

end A401038

/-! ## A401038.P1848769278520809456

`(a(n-1)+A006093(n+1)+1)*(A006093(n+1)+1)` with `a(0)=2`
-/

namespace A401038.P1848769278520809456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (A006093 (n + 1) + 1)) * (A006093 (n + 1) + 1)

end

end A401038.P1848769278520809456

namespace A401038

/-- `(a(n-1)+A006093(n+1)+1)*(A006093(n+1)+1)` -/
def P1848769278520809456.Spec : Prop :=
  ∀ n, P1848769278520809456.a n = A401038 (n + 1)

theorem P1848769278520809456.correct : P1848769278520809456.Spec := by
  intro n
  simp only [A401038, Nat.add_sub_cancel, A401038.P1848769278520809456.a, A401038.P13661554946352965378.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401038

/-! ## A401038.P13575668819719131727

`(a(n-1)+A100484(n+1)/2)*A100484(n+1)/2` with `a(0)=2`
-/

namespace A401038.P13575668819719131727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (A100484 (n + 1) : ℚ) / 2) * ((A100484 (n + 1) : ℚ) / 2)

end

end A401038.P13575668819719131727

namespace A401038

/-- `(a(n-1)+A100484(n+1)/2)*A100484(n+1)/2` -/
def P13575668819719131727.Spec : Prop :=
  ∀ n, P13575668819719131727.a n = (A401038 (n + 1) : ℚ)

end A401038

/-! ## A401038.P5947911437937622564

`(a(n-1)+A001747(n+2)/2)*A001747(n+2)/2` with `a(0)=2`
-/

namespace A401038.P5947911437937622564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (A001747 (n + 2) : ℚ) / 2) * ((A001747 (n + 2) : ℚ) / 2)

end

end A401038.P5947911437937622564

namespace A401038

/-- `(a(n-1)+A001747(n+2)/2)*A001747(n+2)/2` -/
def P5947911437937622564.Spec : Prop :=
  ∀ n, P5947911437937622564.a n = (A401038 (n + 1) : ℚ)

end A401038

/-!
# A401039: Number of partitions of n into consecutive initial prime numbers.

The programs for A401039, there is no canonical definition to state claims against.
-/

/-! ## A401039.P16116818332893395293

`A035386(A187829(n+1))`
-/

namespace A401039.P16116818332893395293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (A187829 (n + 1)).toNat

end

end A401039.P16116818332893395293

/-! ## A401039.P9214092258652344200

`A035386(n+1)%A108374(n+1)`
-/

namespace A401039.P9214092258652344200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035386 (n + 1)) (A108374 (n + 1))

end

end A401039.P9214092258652344200

/-! ## A401039.P12821015375382290577

`A035386(C(n+1, n))%A264959(2*n+2)`
-/

namespace A401039.P12821015375382290577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035386 (Nat.choose (n + 1) n)) (A264959 (2 * n + 2))

end

end A401039.P12821015375382290577

/-! ## A401039.P12485104428318151868

`A035386(n+1)*A082071(A000079(n))`
-/

namespace A401039.P12485104428318151868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035386 (n + 1) * A082071 (A000079 n).toNat

end

end A401039.P12485104428318151868

/-! ## A401039.P16475880783766762412

`∑[A194328(A045896(n))]%A194316(n+1)`
-/

namespace A401039.P16475880783766762412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194328 (A045896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A194316 (n + 1))

end

end A401039.P16475880783766762412

/-!
# A401040: Irregular triangle read by rows: T(n,k) is the number of integers in [1,n] having no prime factor <= prime(k), for n >= 2 and 1 <= k <= pi(n).

The programs for A401040, there is no canonical definition to state claims against.
-/

/-! ## A401040.P9859317960906097259

`A004736(lt[A117425(n), A238628(n+1)])`
-/

namespace A401040.P9859317960906097259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401040.P9859317960906097259

/-! ## A401040.P15447762833979087199

`A122200(lt[A211798(n+2), A182617(n)])`
-/

namespace A401040.P15447762833979087199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401040.P15447762833979087199

/-! ## A401040.P11786364114023318192

`A000005(A020639(3*n+1)^A025672(n+2))`
-/

namespace A401040.P11786364114023318192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A020639 (3 * n + 1) : ℚ) ^ (A025672 (n + 2) : ℤ))).toNat

end

end A401040.P11786364114023318192

/-! ## A401040.P15956059668278922602

`A097849(A119440(n+1))`
-/

namespace A401040.P15956059668278922602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A119440 (n + 1)).toNat

end

end A401040.P15956059668278922602

/-! ## A401040.P17231871438589577886

`A082091(A173279(n+1))`
-/

namespace A401040.P17231871438589577886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A173279 (n + 1)).toNat

end

end A401040.P17231871438589577886

/-!
# A401041: a(n) = Sum_{k=4..n, k composite} (pi(lpf(k)) - 1), where lpf(k) = A020639(k) is the least prime factor of k.

The programs for A401041, there is no canonical definition to state claims against.
-/

/-! ## A401041.P2622199044534407254

`A182843(n+2)-C(A000720(n+1)+1, 2)`
-/

namespace A401041.P2622199044534407254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182843 (n + 2) - (Nat.choose (A000720 (n + 1) + 1).toNat 2 : ℤ)

end

end A401041.P2622199044534407254

/-! ## A401041.P4032051202711020643

`∑[A319689((n+1)²)]-n`
-/

namespace A401041.P4032051202711020643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A401041.P4032051202711020643

/-! ## A401041.P4159711374221067457

`(∑[A319689(A064549(n+1))]-n)%(n+1)`
-/

namespace A401041.P4159711374221067457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (n + 1 : ℤ)

end

end A401041.P4159711374221067457

/-! ## A401041.P16500831816486822994

`∑[A055396(A055396(n+1)^A097974(n+1))]`
-/

namespace A401041.P16500831816486822994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A055396 (n + 1) : ℚ) ^ (A097974 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401041.P16500831816486822994

/-! ## A401041.P8890798135679537529

`∑[A363941(2*(n+1))-1]`
-/

namespace A401041.P8890798135679537529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401041.P8890798135679537529

/-!
# A401045: Sexy roots: Numbers k such that k^2 is the sum of a pair of sexy primes (p,p'=p+6).

The programs for A401045, there is no canonical definition to state claims against.
-/

/-! ## A401045.P17908166425281109449

`sqrt(2*A086776(n+1)+6)`
-/

namespace A401045.P17908166425281109449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A086776 (n + 1) + 6 : ℝ)

end

end A401045.P17908166425281109449

/-! ## A401045.P13365958155208118397

`sqrt(A401046(1+n))`
-/

namespace A401045.P13365958155208118397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A401046 (1 + n) : ℝ)

end

end A401045.P13365958155208118397

/-! ## A401045.P1532962035230628265

`root(A401046(n+1), 2)`
-/

namespace A401045.P1532962035230628265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A401046 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A401045.P1532962035230628265

/-! ## A401045.P2491502729013731631

`ceil(sqrt(2*A086776(n+1)))`
-/

namespace A401045.P2491502729013731631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A086776 (n + 1) : ℝ)⌉

end

end A401045.P2491502729013731631

/-! ## A401045.P12314429099577940430

`row(A136697(n)+A086776(n+1))+1`
-/

namespace A401045.P12314429099577940430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A136697 n + A086776 (n + 1)).toNat + 1

end

end A401045.P12314429099577940430

/-! ## A401045.P15290799914643560650

`row(A086776(n+1)+A014963(n+1))+1`
-/

namespace A401045.P15290799914643560650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A086776 (n + 1) + A014963 (n + 1)).toNat + 1

end

end A401045.P15290799914643560650

/-! ## A401045.P8417323975404630277

`row(A302042(n+1)+A086776(n+1))+1`
-/

namespace A401045.P8417323975404630277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A302042 (n + 1) + A086776 (n + 1)).toNat + 1

end

end A401045.P8417323975404630277

/-! ## A401045.P13618309495398780333

`row(A332251(n+3)+A086776(n+1))+1`
-/

namespace A401045.P13618309495398780333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A332251 (n + 3) + A086776 (n + 1)).toNat + 1

end

end A401045.P13618309495398780333

/-! ## A401045.P2385130187605544885

`row(A376211(n+1)+A086776(n+1))+1`
-/

namespace A401045.P2385130187605544885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A376211 (n + 1) + A086776 (n + 1)).toNat + 1

end

end A401045.P2385130187605544885

/-!
# A401046: Sexy squares: squares that are the sum of two primes differing by 6.

The programs for A401046, there is no canonical definition to state claims against.
-/

/-! ## A401046.P3534575328182608918

`2*A086776(n+1)+6`
-/

namespace A401046.P3534575328182608918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086776 (n + 1) + 6

end

end A401046.P3534575328182608918

/-! ## A401046.P10498630620904214041

`A401045(1+n)²`
-/

namespace A401046.P10498630620904214041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401045 (1 + n) ^ 2

end

end A401046.P10498630620904214041

/-! ## A401046.P5604054912634421287

`A401045(n+1)^2`
-/

namespace A401046.P5604054912634421287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401045 (n + 1) ^ 2

end

end A401046.P5604054912634421287

/-! ## A401046.P1519708259181443152

`2*(A086776(1+n)+3)`
-/

namespace A401046.P1519708259181443152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086776 (1 + n) + 3)

end

end A401046.P1519708259181443152

/-! ## A401046.P13150053190979506892

`A000290(A401045(n+1))`
-/

namespace A401046.P13150053190979506892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A401045 (n + 1)).toNat

end

end A401046.P13150053190979506892

/-!
# A401050: Let p = prime(1+n); a(n) is the number of odd primes q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401050, there is no canonical definition to state claims against.
-/

/-! ## A401050.P7195794872647472544

`char[A400839(A062537(n+1)+1)]`
-/

namespace A401050.P7195794872647472544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400839 (A062537 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401050.P7195794872647472544

/-! ## A401050.P6117889975849973764

`char[A400839(A062537(n+2))]`
-/

namespace A401050.P6117889975849973764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400839 (A062537 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401050.P6117889975849973764

/-! ## A401050.P16242810017297494837

`char[A400839(∑[A362070(2*n+1)%2])]`
-/

namespace A401050.P16242810017297494837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362070 (2 * n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400839 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401050.P16242810017297494837

/-! ## A401050.P10505396328011304855

`and(A302129(n), A401053(n))`
-/

namespace A401050.P10505396328011304855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302129 n) (A401053 n)

end

end A401050.P10505396328011304855

/-! ## A401050.P840811599610989947

`char[A400839(A007318(n))]`
-/

namespace A401050.P840811599610989947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400839 (A007318 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401050.P840811599610989947

/-!
# A401052: Largest such q listed for each prime p (A400842) for which there exists an odd prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401052, there is no canonical definition to state claims against.
-/

/-! ## A401052.P14534451066924974264

`A400838(A400839(n+1))`
-/

namespace A401052.P14534451066924974264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (A400839 (n + 1)).toNat

end

end A401052.P14534451066924974264

/-! ## A401052.P8217401756506669919

`p?[A400838(n+1)]`
-/

namespace A401052.P8217401756506669919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A401052.P8217401756506669919

/-! ## A401052.P17375197490396874431

`filter[A400838(n+1), A011558(#)]`
-/

namespace A401052.P17375197490396874431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A401052.P17375197490396874431

/-! ## A401052.P11015341046443742573

`filter[A400838(n+1), A014306(#)]`
-/

namespace A401052.P11015341046443742573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A401052.P11015341046443742573

/-! ## A401052.P10806208555692642343

`filter[A401062(n+1), A035263(#)]`
-/

namespace A401052.P10806208555692642343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A401052.P10806208555692642343

/-! ## A401052.P328449695559848050

`filter[A401062(n+1), A039982(#)]`
-/

namespace A401052.P328449695559848050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A401052.P328449695559848050

/-! ## A401052.P674789244611104030

`filter[A401062(n+1), A093719(#)]`
-/

namespace A401052.P674789244611104030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A401052.P674789244611104030

/-! ## A401052.P13810655503694857664

`filter[A400838(n+1), A098725(#)]`
-/

namespace A401052.P13810655503694857664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A401052.P13810655503694857664

/-! ## A401052.P13614842831878235566

`filter[A401062(n+1), A105234(#)]`
-/

namespace A401052.P13614842831878235566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A401052.P13614842831878235566

/-! ## A401052.P849254593688477491

`filter[A400838(n+1), A115971(#)]`
-/

namespace A401052.P849254593688477491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A401052.P849254593688477491

/-! ## A401052.P17042631157780703462

`filter[A401062(n+1), A115971(#)]`
-/

namespace A401052.P17042631157780703462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A401052.P17042631157780703462

/-! ## A401052.P5760795302863298607

`filter[A401062(n+1), A127254(#)]`
-/

namespace A401052.P5760795302863298607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A401052.P5760795302863298607

/-! ## A401052.P263338856149799738

`filter[A400838(n+1), A097325(#)]`
-/

namespace A401052.P263338856149799738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A401052.P263338856149799738

/-! ## A401052.P14596898996025216540

`filter[A400838(n+1), A000035(#)]`
-/

namespace A401052.P14596898996025216540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A401052.P14596898996025216540

/-! ## A401052.P13497716220103904235

`filter[A401062(n+1), A000035(#)]`
-/

namespace A401052.P13497716220103904235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A401052.P13497716220103904235

/-! ## A401052.P11456909080920386913

`filter[A400838(n+1), A023532(#)]`
-/

namespace A401052.P11456909080920386913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A401052.P11456909080920386913

/-! ## A401052.P10198624010593463089

`filter[A401062(n+1), A023532(#)]`
-/

namespace A401052.P10198624010593463089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A401052.P10198624010593463089

/-! ## A401052.P14926736071303661078

`filter[A401062(n+1), A080545(#)]`
-/

namespace A401052.P14926736071303661078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A401052.P14926736071303661078

/-! ## A401052.P12713390529822171417

`filter[A401062(n+1), A102863(#)]`
-/

namespace A401052.P12713390529822171417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A401052.P12713390529822171417

/-! ## A401052.P11544575516727901716

`filter[A401062(n+1), A104106(#)]`
-/

namespace A401052.P11544575516727901716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A401052.P11544575516727901716

/-!
# A401053: Let p = prime(1+n); a(n) is the number of primes q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401053, there is no canonical definition to state claims against.
-/

/-! ## A401053.P12492220394279262119

`char[A401059(A007318(n))]`
-/

namespace A401053.P12492220394279262119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401059 (A007318 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401053.P12492220394279262119

/-! ## A401053.P14215565105578516031

`A401050(n)^A004489(A342097(2*(n+2)))`
-/

namespace A401053.P14215565105578516031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401050 n : ℚ) ^ (A004489 (A342097 (2 * (n + 2))).toNat : ℤ)

end

end A401053.P14215565105578516031

/-! ## A401053.P17514331395816654689

`A401050(A304244(3*n+1))+A401050(n)`
-/

namespace A401053.P17514331395816654689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401050 (A304244 (3 * n + 1)).toNat + A401050 n

end

end A401053.P17514331395816654689

/-! ## A401053.P7708548654378324631

`char[A401059(A244319(n+1))]`
-/

namespace A401053.P7708548654378324631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401059 (A244319 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401053.P7708548654378324631

/-! ## A401053.P8156514110117573247

`char[A249756(3*n+2)-A210037(A208520(n+2))]`
-/

namespace A401053.P8156514110117573247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249756 (3 * n + 2) - A210037 (A208520 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401053.P8156514110117573247

/-!
# A401054: a(n) = 2*(product of first n primes) modulo prime(n+1).

The programs for A401054, there is no canonical definition to state claims against.
-/

/-! ## A401054.P12325393121484226915

`A391928(A227547(1+n))`
-/

namespace A401054.P12325393121484226915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A227547 (1 + n)).toNat

end

end A401054.P12325393121484226915

/-! ## A401054.P15455673957435398979

`A391928(A007504(n)+3)`
-/

namespace A401054.P15455673957435398979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A007504 n + 3).toNat

end

end A401054.P15455673957435398979

/-! ## A401054.P15201099199370770915

`A391928(A036439(n+1)+1)`
-/

namespace A401054.P15201099199370770915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A036439 (n + 1) + 1).toNat

end

end A401054.P15201099199370770915

/-! ## A401054.P13906089245119560295

`(2*A002110(n))%A000040(n+1)`
-/

namespace A401054.P13906089245119560295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A002110 n) (A000040 (n + 1))

end

end A401054.P13906089245119560295

/-! ## A401054.P4261615774520217955

`A401066(A001248(n+1))`
-/

namespace A401054.P4261615774520217955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A001248 (n + 1)).toNat

end

end A401054.P4261615774520217955

/-!
# A401056: Let p = prime(1+n); a(n) is the number of primes q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401056, there is no canonical definition to state claims against.
-/

/-! ## A401056.P10458795313823447596

`A306443(3*(n+1))%A323436(A236106(3*n+5))`
-/

namespace A401056.P10458795313823447596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306443 (3 * (n + 1))) (A323436 (A236106 (3 * n + 5)).toNat)

end

end A401056.P10458795313823447596

/-! ## A401056.P12125722578404655299

`A129251(A003278(3*(n+1))+A000045(n))`
-/

namespace A401056.P12125722578404655299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A003278 (3 * (n + 1)) + A000045 n).toNat

end

end A401056.P12125722578404655299

/-!
# A401058: Let p = prime(1+n); a(n) is the number of primes q < p such that ((p#/p) / (q#/q)) == +1 mod p, where p# = A034386(p).

The programs for A401058, there is no canonical definition to state claims against.
-/

/-! ## A401058.P6682693400210170818

`A353672(A353672(n+1)+A241306(2*n+1))`
-/

namespace A401058.P6682693400210170818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353672 (A353672 (n + 1) + A241306 (2 * n + 1)).toNat

end

end A401058.P6682693400210170818

/-! ## A401058.P2220994755645828422

`val(A336317(2*(n+2)), A169841(A068980(3*n+2)))`
-/

namespace A401058.P2220994755645828422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336317 (2 * (n + 2))).toNat (A169841 (A068980 (3 * n + 2)).toNat).toNat

end

end A401058.P2220994755645828422

/-! ## A401058.P11904707617512118273

`A010054(A348613(3*n+2)+A329406(2*(n+2)))`
-/

namespace A401058.P11904707617512118273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A348613 (3 * n + 2) + A329406 (2 * (n + 2))).toNat

end

end A401058.P11904707617512118273

/-! ## A401058.P12179371422045861637

`A117943(A367481(n+2))`
-/

namespace A401058.P12179371422045861637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A367481 (n + 2)).toNat

end

end A401058.P12179371422045861637

/-! ## A401058.P7228319736825801808

`A117943(A082851(n+3)%A359401(2*n+5))`
-/

namespace A401058.P7228319736825801808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (Int.tmod (A082851 (n + 3)) (A359401 (2 * n + 5))).toNat

end

end A401058.P7228319736825801808

/-!
# A401059: Numbers k such that for p = prime(1+k), there is at least one prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401059, there is no canonical definition to state claims against.
-/

/-! ## A401059.P11757860884597643986

`A000720(A400843(n+1))-1`
-/

namespace A401059.P11757860884597643986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400843 (n + 1)).toNat - 1

end

end A401059.P11757860884597643986

/-! ## A401059.P4178066685774012554

`lt[0, A401053(n)]`
-/

namespace A401059.P4178066685774012554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A401059.P4178066685774012554

/-! ## A401059.P10130239869652975814

`A000720(A400843(n+1)-1)`
-/

namespace A401059.P10130239869652975814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400843 (n + 1) - 1).toNat

end

end A401059.P10130239869652975814

/-! ## A401059.P5421884223145639452

`A000720(xor(1, A400843(n+1)))`
-/

namespace A401059.P5421884223145639452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A400843 (n + 1))).toNat

end

end A401059.P5421884223145639452

/-! ## A401059.P14745384012187078186

`A329622(record[A401051(1+n)])`
-/

namespace A401059.P14745384012187078186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401051 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A401059.P14745384012187078186

/-! ## A401059.P8247955949175756928

`A033270(A400843(1+n))`
-/

namespace A401059.P8247955949175756928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A400843 (1 + n)).toNat

end

end A401059.P8247955949175756928

/-! ## A401059.P9644549689234466896

`A033270(record[A401051(n+1)])`
-/

namespace A401059.P9644549689234466896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A401059.P9644549689234466896

/-! ## A401059.P1051339927412683010

`A344616(2*A400843(n+1))`
-/

namespace A401059.P1051339927412683010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (2 * A400843 (n + 1)).toNat

end

end A401059.P1051339927412683010

/-! ## A401059.P18128332440365786379

`A056239(A400843(n+1))-A033999(2*(n+2))`
-/

namespace A401059.P18128332440365786379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A400843 (n + 1)).toNat - A033999 (2 * (n + 2))

end

end A401059.P18128332440365786379

/-!
# A401060: Primes p for which there exists an odd prime q < p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401060, there is no canonical definition to state claims against.
-/

/-! ## A401060.P14925112637425652016

`A000040(lt[1/(n+1), A400837(n)]+1)`
-/

namespace A401060.P14925112637425652016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A401060.P14925112637425652016

/-! ## A401060.P10107043019054560733

`A401061(n+3)+A010052(A106858(3*n+5))`
-/

namespace A401060.P10107043019054560733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 3) + A010052 (A106858 (3 * n + 5)).toNat

end

end A401060.P10107043019054560733

/-! ## A401060.P7190611983145892071

`∩[A342378(n+1), A401061(n+1)]`
-/

namespace A401060.P7190611983145892071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P7190611983145892071

/-! ## A401060.P11444211654321060385

`or(A010051(A270831(n+1)), A401061(n+3))`
-/

namespace A401060.P11444211654321060385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A270831 (n + 1)).toNat) (A401061 (n + 3))

end

end A401060.P11444211654321060385

/-! ## A401060.P13621915434908829667

`∩[A391927(n+1), A401061(n+1)]`
-/

namespace A401060.P13621915434908829667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401060.P13621915434908829667

/-!
# A401061: Primes p for which there exists a prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401061, there is no canonical definition to state claims against.
-/

/-! ## A401061.P15120034745001662970

`A000040(A401065(1+n)+1)`
-/

namespace A401061.P15120034745001662970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A401065 (1 + n) + 1).toNat

end

end A401061.P15120034745001662970

/-! ## A401061.P12597883913057496589

`A008578(A401065(1+n)+2)`
-/

namespace A401061.P12597883913057496589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A401065 (1 + n) + 2).toNat

end

end A401061.P12597883913057496589

/-! ## A401061.P4880324026785656840

`A000040(lt[-1, A400837(n)]+1)`
-/

namespace A401061.P4880324026785656840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A401061.P4880324026785656840

/-! ## A401061.P15588448594446821415

`A006093(A401065(n+1)+1)+1`
-/

namespace A401061.P15588448594446821415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A401065 (n + 1) + 1).toNat + 1

end

end A401061.P15588448594446821415

/-! ## A401061.P2705402270231417181

`A182986(lcm(1+A401065(n+1), A033999(n))+1)`
-/

namespace A401061.P2705402270231417181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (Int.lcm (1 + A401065 (n + 1)) (A033999 n) + 1)

end

end A401061.P2705402270231417181

/-!
# A401062: Largest such q listed for each prime p (A400843) for which there exists a prime q <= p such that 2*((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401062, there is no canonical definition to state claims against.
-/

/-! ## A401062.P7953020132480250254

`A276040(A401051(2*(n+1)))-A401051(2*(n+1))`
-/

namespace A401062.P7953020132480250254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276040 (A401051 (2 * (n + 1))).toNat - A401051 (2 * (n + 1))

end

end A401062.P7953020132480250254

/-! ## A401062.P18116307674736917083

`A195155(A181424(3*(n+1)))*A401051(2*(n+1))`
-/

namespace A401062.P18116307674736917083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195155 (A181424 (3 * (n + 1))).toNat * A401051 (2 * (n + 1))

end

end A401062.P18116307674736917083

/-! ## A401062.P11999749512183854607

`A401051(2*(n+1))%ceil(A049644(A396573(3*n+4))/2)`
-/

namespace A401062.P11999749512183854607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A401051 (2 * (n + 1))) ⌈(A049644 (A396573 (3 * n + 4)).toNat : ℚ) / 2⌉

end

end A401062.P11999749512183854607

/-! ## A401062.P9127643959906054947

`A401051(2*(n+1))%A396614(n+2)`
-/

namespace A401062.P9127643959906054947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A401051 (2 * (n + 1))) (A396614 (n + 2))

end

end A401062.P9127643959906054947

/-! ## A401062.P3687782059774676429

`A020639(A401228(n+1)/A400843(n+1))`
-/

namespace A401062.P3687782059774676429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A401228 (n + 1) : ℚ) / (A400843 (n + 1) : ℚ))).toNat

end

end A401062.P3687782059774676429

/-!
# A401064: Largest such q listed for each prime p (A401061) for which there exists a prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401064, there is no canonical definition to state claims against.
-/

/-! ## A401064.P15051641196816173885

`A000040(1+A400837(A401065(n+1)))`
-/

namespace A401064.P15051641196816173885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A400837 (A401065 (n + 1)).toNat).toNat

end

end A401064.P15051641196816173885

/-!
# A401065: Numbers k such that for p = prime(1+k), there is at least one prime q <= p such that ((p#/p) / (q#/q)) == -1 mod p, where p# = A034386(p).

The programs for A401065, there is no canonical definition to state claims against.
-/

/-! ## A401065.P16256045209855438496

`A000720(A401061(n+1))-1`
-/

namespace A401065.P16256045209855438496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401061 (n + 1)).toNat - 1

end

end A401065.P16256045209855438496

/-! ## A401065.P13115493693751859047

`lt[0, A401056(n)]`
-/

namespace A401065.P13115493693751859047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A401065.P13115493693751859047

/-! ## A401065.P9954831690968307790

`eq[abs(A400266(n)), A400266(n)]`
-/

namespace A401065.P9954831690968307790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400266 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401065.P9954831690968307790

/-! ## A401065.P9918729902730431869

`A000720(A401061(n+1)-1)`
-/

namespace A401065.P9918729902730431869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A401061 (n + 1) - 1).toNat

end

end A401065.P9918729902730431869

/-! ## A401065.P13746655280099620858

`A329622(A401061(n+1))`
-/

namespace A401065.P13746655280099620858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A401061 (n + 1)).toNat

end

end A401065.P13746655280099620858

/-! ## A401065.P8579870680872772241

`A033270(A401061(n+1))`
-/

namespace A401065.P8579870680872772241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A401061 (n + 1)).toNat

end

end A401065.P8579870680872772241

/-!
# A401066: a(n) = A276085(n) mod A006530(n), where A276085 is fully additive with a(p) = p#/p, and A006530(n) is the largest prime dividing n.

The programs for A401066, there is no canonical definition to state claims against.
-/

/-! ## A401066.P9367389379466931953

`A276085(n+1)%A006530(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401066.P9367389379466931953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A006530 (n + 1))

end

end A401066.P9367389379466931953

/-! ## A401066.P6283435831420483888

`∑{d}[n+1, A328768(A014963(#))]%A006530(n+1)`
-/

namespace A401066.P6283435831420483888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A328768 (A014963 d).toNat) (A006530 (n + 1))

end

end A401066.P6283435831420483888

/-! ## A401066.P15889859803137978167

`A276085(A000027(n+1))%A025492(∏{p}[n+1, #])`
-/

namespace A401066.P15889859803137978167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (A000027 (n + 1)).toNat) (A025492 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A401066.P15889859803137978167

/-! ## A401066.P1969466506957301366

`(A346105(n+1)-A346105(A200746(n+1)/(n+1)))%A006530(n+1)`
-/

namespace A401066.P1969466506957301366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346105 (n + 1) - A346105 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat) (A006530 (n + 1))

end

end A401066.P1969466506957301366

/-! ## A401066.P7852294144310678201

`(A328769(n+1)/(n+1))%A006530(n+1)`
-/

namespace A401066.P7852294144310678201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (A006530 (n + 1))

end

end A401066.P7852294144310678201

/-!
# A401068: Numbers k such that A276085(k) is squarefree, where A276085 is fully additive with a(p) = p#/p.

The programs for A401068, there is no canonical definition to state claims against.
-/

/-! ## A401068.P5138671567332127255

`comp[A401069(1+n)-1]+1`
-/

namespace A401068.P5138671567332127255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401069 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A401068.P5138671567332127255

/-! ## A401068.P3030432483695755745

`eq[char[A401069(n+1)], A000007(n)]`
-/

namespace A401068.P3030432483695755745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401069 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A401068.P3030432483695755745

/-! ## A401068.P1926055691807797794

`eq[char[A401069(n+1)], A000038(n)]`
-/

namespace A401068.P1926055691807797794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401069 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A401068.P1926055691807797794

/-! ## A401068.P18217953280892666215

`A377869(n+1)+A395868(n+1)%A382857(n+2)`
-/

namespace A401068.P18217953280892666215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1) + Int.tmod (A395868 (n + 1)) (A382857 (n + 2))

end

end A401068.P18217953280892666215

/-!
# A401069: Numbers k such that A276085(k) is not squarefree, where A276085 is fully additive with a(p) = p#/p.

The programs for A401069, there is no canonical definition to state claims against.
-/

/-! ## A401069.P14833475873537632509

`comp[A401068(1+n)-1]+1`
-/

namespace A401069.P14833475873537632509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401068 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A401069.P14833475873537632509

/-!
# A401073: Number of n X n (0,1)-matrices of rank 2 over the real numbers.

The programs for A401073, the canonical program `A401073.P2485690032411973571` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401073 has offset 0).

The definition of A401073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401073.P2485690032411973571

`(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401073

/-- `(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2` -/
def P2485690032411973571.Spec : Prop :=
  ∀ n, P2485690032411973571.a n = (A401073 n : ℚ)

end A401073

/-! ## A401073.P579701561069241720

`(A134057(n)+A032263(n+1))*A028243(n+1)`
-/

namespace A401073.P579701561069241720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134057 n + A032263 (n + 1)) * A028243 (n + 1)

end

end A401073.P579701561069241720

namespace A401073

/-- `(A134057(n)+A032263(n+1))*A028243(n+1)` -/
def P579701561069241720.Spec : Prop :=
  ∀ n, P579701561069241720.a n = A401073 n

end A401073

/-!
# A401078: a(1)=2, a(2)=3, thereafter a(n) is the sum of the two largest primes <= a(n-1).

The programs for A401078, the canonical program `A401078.P8694535385630549604` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401078 has offset 1).

The definition of A401078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401078.P5343637310916523107

`A151799(a(n-1))+A151799(A151799(a(n-1)))` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A401078.P5343637310916523107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 8] fun n a =>
  A151799 (a (n - 1)).toNat + A151799 (A151799 (a (n - 1)).toNat).toNat

end

end A401078.P5343637310916523107

namespace A401078

/-- `A151799(a(n-1))+A151799(A151799(a(n-1)))` -/
def P5343637310916523107.Spec : Prop :=
  ∀ n, P5343637310916523107.a n = A401078 (n + 1)

end A401078

/-! ## A401078.P8694535385630549604

`A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401078

/-- `A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` -/
def P8694535385630549604.Spec : Prop :=
  ∀ n, P8694535385630549604.a n = A401078 (n + 1)

theorem P8694535385630549604.correct : P8694535385630549604.Spec := by
  intro n
  simp only [A401078, Nat.add_sub_cancel]

end A401078

/-! ## A401078.P9203225504295392614

`A324737(A134810(n+1))+A000010(n+1)`
-/

namespace A401078.P9203225504295392614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324737 (A134810 (n + 1)).toNat + A000010 (n + 1)

end

end A401078.P9203225504295392614

namespace A401078

/-- `A324737(A134810(n+1))+A000010(n+1)` -/
def P9203225504295392614.Spec : Prop :=
  ∀ n, P9203225504295392614.a n = A401078 (n + 1)

end A401078

/-!
# A401080: Numbers k such that binomial(k,2) equals another nontrivial binomial coefficient.

The programs for A401080, there is no canonical definition to state claims against.
-/

/-! ## A401080.P18071354527143246804

`row(A003015(n+2))+1`
-/

namespace A401080.P18071354527143246804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A003015 (n + 2)).toNat + 1

end

end A401080.P18071354527143246804

/-!
# A401083: The total number of exponentially odd divisors of the exponentially odd divisors of n.

The programs for A401083, the canonical program `A401083.P6119846372689473028` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401083 has offset 1).

The definition of A401083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401083.P6119846372689473028

`∏{e}[n+1, A008805(#+1)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401083

/-- `∏{e}[n+1, A008805(#+1)]` -/
def P6119846372689473028.Spec : Prop :=
  ∀ n, P6119846372689473028.a n = A401083 (n + 1)

theorem P6119846372689473028.correct : P6119846372689473028.Spec := by
  intro n
  simp only [A401083, Nat.add_sub_cancel]

end A401083

/-! ## A401083.P5185768659029782403

`A007425((1+n)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A401083.P5185768659029782403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (SequenceMachineLib.roundAway ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A401083.P5185768659029782403

namespace A401083

/-- `A007425((1+n)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P5185768659029782403.Spec : Prop :=
  ∀ n, P5185768659029782403.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P9868155261647186464

`∑{d}[(1+n)/∏{p}[n+1, #^val(n+1, #²)], A000005(#)]`
-/

namespace A401083.P9868155261647186464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000005 d

end

end A401083.P9868155261647186464

namespace A401083

/-- `∑{d}[(1+n)/∏{p}[n+1, #^val(n+1, #²)], A000005(#)]` -/
def P9868155261647186464.Spec : Prop :=
  ∀ n, P9868155261647186464.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P7875998219891613384

`A007425(A019554(1+n))`
-/

namespace A401083.P7875998219891613384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A019554 (1 + n)).toNat

end

end A401083.P7875998219891613384

namespace A401083

/-- `A007425(A019554(1+n))` -/
def P7875998219891613384.Spec : Prop :=
  ∀ n, P7875998219891613384.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P12305964366541335754

`A401086(A350390(n+1))`
-/

namespace A401083.P12305964366541335754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401086 (A350390 (n + 1)).toNat

end

end A401083.P12305964366541335754

namespace A401083

/-- `A401086(A350390(n+1))` -/
def P12305964366541335754.Spec : Prop :=
  ∀ n, P12305964366541335754.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P6709548822090833846

`A388067(A053143(n+1))`
-/

namespace A401083.P6709548822090833846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (A053143 (n + 1)).toNat

end

end A401083.P6709548822090833846

namespace A401083

/-- `A388067(A053143(n+1))` -/
def P6709548822090833846.Spec : Prop :=
  ∀ n, P6709548822090833846.a n = A401083 (n + 1)

end A401083

/-! ## A401083.P3009324388504169308

`A388067(A064549(n+1))`
-/

namespace A401083.P3009324388504169308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (A064549 (n + 1)).toNat

end

end A401083.P3009324388504169308

namespace A401083

/-- `A388067(A064549(n+1))` -/
def P3009324388504169308.Spec : Prop :=
  ∀ n, P3009324388504169308.a n = A401083 (n + 1)

end A401083

/-!
# A401084: The total sum of exponentially odd divisors of the exponentially odd divisors of n.

The programs for A401084, the canonical program `A401084.P11150832154018647509` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401084 has offset 1).

The definition of A401084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401084.P11150832154018647509

`∑{d}[A019554(1+n), A380322(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401084

/-- `∑{d}[A019554(1+n), A380322(#)]` -/
def P11150832154018647509.Spec : Prop :=
  ∀ n, P11150832154018647509.a n = A401084 (n + 1)

theorem P11150832154018647509.correct : P11150832154018647509.Spec := by
  intro n
  simp only [A401084, Nat.add_sub_cancel]

end A401084

/-!
# A401085: The total sum of square divisors of the square divisors of n.

The programs for A401085, the canonical program `A401085.P16377491220029045574` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401085 has offset 1).

The definition of A401085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401085.P13180094657446969120

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A001157(#)]`
-/

namespace A401085.P13180094657446969120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d

end

end A401085.P13180094657446969120

namespace A401085

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A001157(#)]` -/
def P13180094657446969120.Spec : Prop :=
  ∀ n, P13180094657446969120.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P8860703730910570418

`A007433(A000188(1+n))`
-/

namespace A401085.P8860703730910570418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007433 (A000188 (1 + n)).toNat

end

end A401085.P8860703730910570418

namespace A401085

/-- `A007433(A000188(1+n))` -/
def P8860703730910570418.Spec : Prop :=
  ∀ n, P8860703730910570418.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P4703305274600606012

`∑{d}[A000188(1+n), A001157(#)]`
-/

namespace A401085.P4703305274600606012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001157 d

end

end A401085.P4703305274600606012

namespace A401085

/-- `∑{d}[A000188(1+n), A001157(#)]` -/
def P4703305274600606012.Spec : Prop :=
  ∀ n, P4703305274600606012.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P14036267632635099459

`∑{d}[n+1, A061020(#)*A076752((n+1)/#)]`
-/

namespace A401085.P14036267632635099459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P14036267632635099459

namespace A401085

/-- `∑{d}[n+1, A061020(#)*A076752((n+1)/#)]` -/
def P14036267632635099459.Spec : Prop :=
  ∀ n, P14036267632635099459.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P16377491220029045574

`∑{d}[n+1, A008833(#)*A369308((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401085

/-- `∑{d}[n+1, A008833(#)*A369308((n+1)/#)]` -/
def P16377491220029045574.Spec : Prop :=
  ∀ n, P16377491220029045574.a n = A401085 (n + 1)

theorem P16377491220029045574.correct : P16377491220029045574.Spec := by
  intro n
  simp only [A401085, Nat.add_sub_cancel]

end A401085

/-! ## A401085.P4285430729824523597

`∑{d}[n+1, A008836(#)*A383795((n+1)/#)]`
-/

namespace A401085.P4285430729824523597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P4285430729824523597

namespace A401085

/-- `∑{d}[n+1, A008836(#)*A383795((n+1)/#)]` -/
def P4285430729824523597.Spec : Prop :=
  ∀ n, P4285430729824523597.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P1623839916325031162

`∑{d}[n+1, A061019(#)*A332844((n+1)/#)]`
-/

namespace A401085.P1623839916325031162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P1623839916325031162

namespace A401085

/-- `∑{d}[n+1, A061019(#)*A332844((n+1)/#)]` -/
def P1623839916325031162.Spec : Prop :=
  ∀ n, P1623839916325031162.a n = A401085 (n + 1)

end A401085

/-! ## A401085.P11077714008862154644

`∑{d}[n+1, A124315(#)*A358272((n+1)/#)]`
-/

namespace A401085.P11077714008862154644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P11077714008862154644

namespace A401085

/-- `∑{d}[n+1, A124315(#)*A358272((n+1)/#)]` -/
def P11077714008862154644.Spec : Prop :=
  ∀ n, P11077714008862154644.a n = A401085 (n + 1)

end A401085

/-!
# A401086: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a divisor of n.

The programs for A401086, the canonical program `A401086.P7626632577257715344` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401086 has offset 1).

The definition of A401086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401086.P7626632577257715344

`∑{d}[1+n, A369307(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A401086

/-- `∑{d}[1+n, A369307(#)]` -/
def P7626632577257715344.Spec : Prop :=
  ∀ n, P7626632577257715344.a n = A401086 (n + 1)

theorem P7626632577257715344.correct : P7626632577257715344.Spec := by
  intro n
  simp only [A401086, Nat.add_sub_cancel]

end A401086

/-! ## A401086.P13997177107630530717

`∑{d}[n+1, A056671(#)*A401088((n+1)/#)]`
-/

namespace A401086.P13997177107630530717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A401088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401086.P13997177107630530717

namespace A401086

/-- `∑{d}[n+1, A056671(#)*A401088((n+1)/#)]` -/
def P13997177107630530717.Spec : Prop :=
  ∀ n, P13997177107630530717.a n = A401086 (n + 1)

end A401086

/-! ## A401086.P10239161968441167671

`∑{d}[n+1, A295316(#)*A322483((n+1)/#)]`
-/

namespace A401086.P10239161968441167671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401086.P10239161968441167671

namespace A401086

/-- `∑{d}[n+1, A295316(#)*A322483((n+1)/#)]` -/
def P10239161968441167671.Spec : Prop :=
  ∀ n, P10239161968441167671.a n = A401086 (n + 1)

end A401086

/-! ## A401086.P7227719125053938368

`A005361((n+1)*lcm(n+1, ∏{p}[n+1, #²]))`
-/

namespace A401086.P7227719125053938368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 ((n + 1) * Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A401086.P7227719125053938368

namespace A401086

/-- `A005361((n+1)*lcm(n+1, ∏{p}[n+1, #²]))` -/
def P7227719125053938368.Spec : Prop :=
  ∀ n, P7227719125053938368.a n = A401086 (n + 1)

end A401086

/-! ## A401086.P16339908366246174508

`A005361(A304328(n+1)*(n+1)²)`
-/

namespace A401086.P16339908366246174508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A304328 (n + 1) * ((n + 1) ^ 2 : ℤ)).toNat

end

end A401086.P16339908366246174508

namespace A401086

/-- `A005361(A304328(n+1)*(n+1)²)` -/
def P16339908366246174508.Spec : Prop :=
  ∀ n, P16339908366246174508.a n = A401086 (n + 1)

end A401086

/-!
# A401087: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that d_1 * d_2 is a multiple of n.

The programs for A401087, there is no canonical definition to state claims against.
-/

/-! ## A401087.P1541851990346041966

`gcd(A343443(n+1), A360355(n+1))`
-/

namespace A401087.P1541851990346041966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343443 (n + 1)) (A360355 (n + 1))

end

end A401087.P1541851990346041966

/-! ## A401087.P12224439645315625159

`gcd(A324898(n+1), A343443(n+1))`
-/

namespace A401087.P12224439645315625159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324898 (n + 1)) (A343443 (n + 1))

end

end A401087.P12224439645315625159

/-! ## A401087.P4216518268576598899

`gcd(A359085(n+1), A374902(n+1))`
-/

namespace A401087.P4216518268576598899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A359085 (n + 1)) (A374902 (n + 1))

end

end A401087.P4216518268576598899

/-! ## A401087.P15113348217794094861

`A045778(A353357(∏{e}[n+1, C(#+3, 3)])+1)`
-/

namespace A401087.P15113348217794094861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A353357 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3) + 1).toNat

end

end A401087.P15113348217794094861

/-! ## A401087.P15478062396324362603

`A020946(∏{e}[A072087(n+1), A190431(#)])`
-/

namespace A401087.P15478062396324362603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A190431 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A401087.P15478062396324362603

/-!
# A401088: The number of exponentially odd divisors d of n such that n/d is a square.

The programs for A401088, the canonical program `A401088.P7983821779382291902` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401088 has offset 1).

The definition of A401088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401088.P7983821779382291902

`∏{e}[1+n, A007879(#)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401088

/-- `∏{e}[1+n, A007879(#)]` -/
def P7983821779382291902.Spec : Prop :=
  ∀ n, P7983821779382291902.a n = A401088 (n + 1)

theorem P7983821779382291902.correct : P7983821779382291902.Spec := by
  intro n
  simp only [A401088, Nat.add_sub_cancel]

end A401088

/-! ## A401088.P8741050873361997554

`∏{e}[A071975(1+n), #]`
-/

namespace A401088.P8741050873361997554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401088.P8741050873361997554

namespace A401088

/-- `∏{e}[A071975(1+n), #]` -/
def P8741050873361997554.Spec : Prop :=
  ∀ n, (P8741050873361997554.a n : ℤ) = A401088 (n + 1)

end A401088

/-! ## A401088.P3526115780154888831

`∏{e}[n+1, A152271(#)]`
-/

namespace A401088.P3526115780154888831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A152271 (Nat.factorization (f1 n) p)

end

end A401088.P3526115780154888831

namespace A401088

/-- `∏{e}[n+1, A152271(#)]` -/
def P3526115780154888831.Spec : Prop :=
  ∀ n, P3526115780154888831.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P5293331975291360995

`∏{e}[1+n, A248034(#)]`
-/

namespace A401088.P5293331975291360995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A248034 (Nat.factorization (f1 n) p)

end

end A401088.P5293331975291360995

namespace A401088

/-- `∏{e}[1+n, A248034(#)]` -/
def P5293331975291360995.Spec : Prop :=
  ∀ n, P5293331975291360995.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P15692228206838592842

`A005361(A071975(n+1))`
-/

namespace A401088.P15692228206838592842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A071975 (n + 1)).toNat

end

end A401088.P15692228206838592842

namespace A401088

/-- `A005361(A071975(n+1))` -/
def P15692228206838592842.Spec : Prop :=
  ∀ n, P15692228206838592842.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P15811774365694157380

`A325837(A350389(n+1))`
-/

namespace A401088.P15811774365694157380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A350389 (n + 1)).toNat

end

end A401088.P15811774365694157380

namespace A401088

/-- `A325837(A350389(n+1))` -/
def P15811774365694157380.Spec : Prop :=
  ∀ n, P15811774365694157380.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P2578981805791049056

`A325837(A368167(n+1))`
-/

namespace A401088.P2578981805791049056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A368167 (n + 1)).toNat

end

end A401088.P2578981805791049056

namespace A401088

/-- `A325837(A368167(n+1))` -/
def P2578981805791049056.Spec : Prop :=
  ∀ n, P2578981805791049056.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P17313266712030790329

`A046951(n+1)/A367987(n+1)`
-/

namespace A401088.P17313266712030790329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) / (A367987 (n + 1) : ℚ)

end

end A401088.P17313266712030790329

namespace A401088

/-- `A046951(n+1)/A367987(n+1)` -/
def P17313266712030790329.Spec : Prop :=
  ∀ n, P17313266712030790329.a n = (A401088 (n + 1) : ℚ)

end A401088

/-! ## A401088.P16974567978897985237

`∏{e}[(n+1)/A071974(n+1)², A276796(#)]`
-/

namespace A401088.P16974567978897985237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071974 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A276796 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A401088.P16974567978897985237

namespace A401088

/-- `∏{e}[(n+1)/A071974(n+1)², A276796(#)]` -/
def P16974567978897985237.Spec : Prop :=
  ∀ n, P16974567978897985237.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P4147410557572868269

`∑{d}[n+1, A008836(#)*A322483((n+1)/#)]`
-/

namespace A401088.P4147410557572868269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P4147410557572868269

namespace A401088

/-- `∑{d}[n+1, A008836(#)*A322483((n+1)/#)]` -/
def P4147410557572868269.Spec : Prop :=
  ∀ n, P4147410557572868269.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P1686263228000013898

`∑{d}[n+1, A158522(#)*A332730((n+1)/#)]`
-/

namespace A401088.P1686263228000013898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P1686263228000013898

namespace A401088

/-- `∑{d}[n+1, A158522(#)*A332730((n+1)/#)]` -/
def P1686263228000013898.Spec : Prop :=
  ∀ n, P1686263228000013898.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P11702027222030790395

`∑{d}[n+1, A189021(#)*A369308((n+1)/#)]`
-/

namespace A401088.P11702027222030790395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189021 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P11702027222030790395

namespace A401088

/-- `∑{d}[n+1, A189021(#)*A369308((n+1)/#)]` -/
def P11702027222030790395.Spec : Prop :=
  ∀ n, P11702027222030790395.a n = A401088 (n + 1)

end A401088

/-! ## A401088.P293792452500143997

`∑{d}[n+1, A329484(#)*A343443((n+1)/#)]`
-/

namespace A401088.P293792452500143997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329484 d * A343443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401088.P293792452500143997

namespace A401088

/-- `∑{d}[n+1, A329484(#)*A343443((n+1)/#)]` -/
def P293792452500143997.Spec : Prop :=
  ∀ n, P293792452500143997.a n = A401088 (n + 1)

end A401088

/-!
# A401091: Total number of (non-null) connected induced subgraphs in all labeled trees on n vertices.

The programs for A401091, there is no canonical definition to state claims against.
-/

/-! ## A401091.P3360218840753897524

`A401092(n+1)-A000272(1+n)`
-/

namespace A401091.P3360218840753897524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401092 (n + 1) - A000272 (1 + n)

end

end A401091.P3360218840753897524

/-! ## A401091.P18009567768812173527

`A292633(1+n)/(n+1)`
-/

namespace A401091.P18009567768812173527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292633 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A401091.P18009567768812173527

/-!
# A401092: Total number of mutual visibility sets in all labeled trees on n vertices.

The programs for A401092, there is no canonical definition to state claims against.
-/

/-! ## A401092.P15181314822170696461

`A401091(n+1)+A000272(n+1)`
-/

namespace A401092.P15181314822170696461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401091 (n + 1) + A000272 (n + 1)

end

end A401092.P15181314822170696461

/-! ## A401092.P10471983532959787238

`A000272(n+1)+A292633(n+1)/(n+1)`
-/

namespace A401092.P10471983532959787238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000272 (n + 1) : ℚ) + (A292633 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A401092.P10471983532959787238

/-!
# A401093: Number of rooted bicolored trees on n unlabeled vertices in which the black vertices form a nonempty connected subset.

The programs for A401093, there is no canonical definition to state claims against.
-/

/-! ## A401093.P6797343803746470725

`A401095(n+1)-A000081(n+1)`
-/

namespace A401093.P6797343803746470725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401095 (n + 1) - A000081 (n + 1)

end

end A401093.P6797343803746470725

/-! ## A401093.P281753906913275227

`A050296(A098912(n+2))`
-/

namespace A401093.P281753906913275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A098912 (n + 2)).toNat

end

end A401093.P281753906913275227

/-!
# A401094: Number of bicolored trees on n unlabeled vertices in which the black vertices form a nonempty connected subset.

The programs for A401094, there is no canonical definition to state claims against.
-/

/-! ## A401094.P6546844871569481126

`A401096(1+n)-A000055(n+1)`
-/

namespace A401094.P6546844871569481126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401096 (1 + n) - A000055 (n + 1)

end

end A401094.P6546844871569481126

/-! ## A401094.P16889831087313499378

`A087834(A049155(n+1))`
-/

namespace A401094.P16889831087313499378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A049155 (n + 1)).toNat

end

end A401094.P16889831087313499378

/-! ## A401094.P1688330839473712456

`A087834(A049172(n+2))`
-/

namespace A401094.P1688330839473712456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A049172 (n + 2)).toNat

end

end A401094.P1688330839473712456

/-!
# A401095: Number of rooted bicolored trees on n unlabeled vertices in which every path between two black vertices contains no other black vertices.

The programs for A401095, there is no canonical definition to state claims against.
-/

/-! ## A401095.P12586015653084588602

`A401093(n+1)+A000081(n+1)`
-/

namespace A401095.P12586015653084588602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401093 (n + 1) + A000081 (n + 1)

end

end A401095.P12586015653084588602

/-! ## A401095.P2493418886512435483

`A247915(A124431(n))`
-/

namespace A401095.P2493418886512435483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (A124431 n).toNat

end

end A401095.P2493418886512435483

/-!
# A401096: Number of bicolored trees on n unlabeled vertices in which every path between two black vertices contains no other black vertices.

The programs for A401096, there is no canonical definition to state claims against.
-/

/-! ## A401096.P5834585026387810279

`A401094(n+1)+A000055(n+1)`
-/

namespace A401096.P5834585026387810279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401094 (n + 1) + A000055 (n + 1)

end

end A401096.P5834585026387810279

/-! ## A401096.P2208732462713633999

`A319616(n+1)+A081604(A005263(n))`
-/

namespace A401096.P2208732462713633999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 (n + 1) + A081604 (A005263 n).toNat

end

end A401096.P2208732462713633999

/-! ## A401096.P4709937819023688147

`A087834(A049155(n+1))+A000055(n+1)`
-/

namespace A401096.P4709937819023688147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A049155 (n + 1)).toNat + A000055 (n + 1)

end

end A401096.P4709937819023688147

/-!
# A401098: Total number of (non-null) connected induced subgraphs in all connected labeled graphs on n vertices.

The programs for A401098, there is no canonical definition to state claims against.
-/

/-! ## A401098.P11638851394934232029

`A317632(1+n)+A177777(n+1)`
-/

namespace A401098.P11638851394934232029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317632 (1 + n) + A177777 (n + 1)

end

end A401098.P11638851394934232029

