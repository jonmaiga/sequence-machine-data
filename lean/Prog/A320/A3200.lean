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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A320000: Square array A(n, k) read by descending antidiagonals: A(1, 1) = 2, A(1, k) = 1 for k > 1, and for n > 1, A(n, k) = Sum_{d|n, d>=k} A010051(1+d)*[Sum_{i=0..valuation(n,1+d)} A((n/d)/((1+d)^i), 1+d)].

The programs for A320000, there is no canonical definition to state claims against.
-/

/-! ## A320000.P13545334671980297516

`A010874(A178335(n+1)^A344612(n))`
-/

namespace A320000.P13545334671980297516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (SequenceMachineLib.roundAway ((A178335 (n + 1) : ℚ) ^ (A344612 n : ℤ))).toNat

end

end A320000.P13545334671980297516

/-! ## A320000.P14841799032663765665

`A007814(A304961(n)+A249648(3*n+4))`
-/

namespace A320000.P14841799032663765665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A304961 n + A249648 (3 * n + 4)).toNat

end

end A320000.P14841799032663765665

/-! ## A320000.P8452901726138477206

`C(A033761(A140690(3*(n+1))), A132393(n))`
-/

namespace A320000.P8452901726138477206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033761 (A140690 (3 * (n + 1))).toNat).toNat (A132393 n).toNat

end

end A320000.P8452901726138477206

/-! ## A320000.P606576864820259623

`and(A001222(A227270(2*(n+2))), A227245(n+2))`
-/

namespace A320000.P606576864820259623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A227270 (2 * (n + 2))).toNat) (A227245 (n + 2))

end

end A320000.P606576864820259623

/-!
# A320001: Number of proper divisors of n of the form 6*k + 1.

The programs for A320001, the canonical program `A320001.P12998613339711541630` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320001 has offset 1).

The definition of A320001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320001.P14453547074135739457

`A320015(n+1)-A320005(n+1)`
-/

namespace A320001.P14453547074135739457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) - A320005 (n + 1)

end

end A320001.P14453547074135739457

namespace A320001

/-- `A320015(n+1)-A320005(n+1)` -/
def P14453547074135739457.Spec : Prop :=
  ∀ n, P14453547074135739457.a n = A320001 (n + 1)

theorem P14453547074135739457.correct : P14453547074135739457.Spec := by
  intro n
  simp only [A320001, Nat.add_sub_cancel, A320001.P14453547074135739457.a, A320001.P12998613339711541630.a, A079979, A079979.P15116196827675478457.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A320005, A320005.P17788538960493926001.f1, A320005.P17788538960493926001.a, A320015, A320015.P7908202895752596579.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A319995, A319995.P426129462257340288.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, A232991, A232991.P9120970127003175138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320001

/-! ## A320001.P15694843061470582554

`A007814(A319991(n+1))`
-/

namespace A320001.P15694843061470582554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319991 (n + 1)).toNat

end

end A320001.P15694843061470582554

namespace A320001

/-- `A007814(A319991(n+1))` -/
def P15694843061470582554.Spec : Prop :=
  ∀ n, P15694843061470582554.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P12998613339711541630

`A279060(n+1)-A079979(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A320001

/-- `A279060(n+1)-A079979(n)` -/
def P12998613339711541630.Spec : Prop :=
  ∀ n, P12998613339711541630.a n = A320001 (n + 1)

theorem P12998613339711541630.correct : P12998613339711541630.Spec := by
  intro n
  simp only [A320001, Nat.add_sub_cancel]

end A320001

/-! ## A320001.P14589110724240486285

`∑{d}[n+1, A157658(#)*A279060((n+1)/#)]`
-/

namespace A320001.P14589110724240486285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A279060 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320001.P14589110724240486285

namespace A320001

/-- `∑{d}[n+1, A157658(#)*A279060((n+1)/#)]` -/
def P14589110724240486285.Spec : Prop :=
  ∀ n, P14589110724240486285.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P5747395797585545445

`∑{d}[n+1, A057427(#-1)*A079979((n+1)/#-1)]`
-/

namespace A320001.P5747395797585545445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A079979 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320001.P5747395797585545445

namespace A320001

/-- `∑{d}[n+1, A057427(#-1)*A079979((n+1)/#-1)]` -/
def P5747395797585545445.Spec : Prop :=
  ∀ n, P5747395797585545445.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P1168574698680700166

`A001222(gcd(A140513(n), A319991(n+1)))`
-/

namespace A320001.P1168574698680700166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A140513 n) (A319991 (n + 1)))

end

end A320001.P1168574698680700166

namespace A320001

/-- `A001222(gcd(A140513(n), A319991(n+1)))` -/
def P1168574698680700166.Spec : Prop :=
  ∀ n, P1168574698680700166.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P11276954861655862466

`A035218(n+1)-(A320005(n+1)+A232991(n))`
-/

namespace A320001.P11276954861655862466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - (A320005 (n + 1) + A232991 n)

end

end A320001.P11276954861655862466

namespace A320001

/-- `A035218(n+1)-(A320005(n+1)+A232991(n))` -/
def P11276954861655862466.Spec : Prop :=
  ∀ n, P11276954861655862466.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P17006848990212196124

`A279060(n+1)-A232991(n+4)*A232991(n)`
-/

namespace A320001.P17006848990212196124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) - A232991 (n + 4) * A232991 n

end

end A320001.P17006848990212196124

namespace A320001

/-- `A279060(n+1)-A232991(n+4)*A232991(n)` -/
def P17006848990212196124.Spec : Prop :=
  ∀ n, P17006848990212196124.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P9427999483734339402

`val(A293214(n+1)/(A319990(n+1)*A319992(n+1)), 2)`
-/

namespace A320001.P9427999483734339402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A293214 (n + 1) : ℚ) / (A319990 (n + 1) * A319992 (n + 1) : ℚ))).toNat 2

end

end A320001.P9427999483734339402

namespace A320001

/-- `val(A293214(n+1)/(A319990(n+1)*A319992(n+1)), 2)` -/
def P9427999483734339402.Spec : Prop :=
  ∀ n, (P9427999483734339402.a n : ℤ) = A320001 (n + 1)

end A320001

/-! ## A320001.P5996039917630412981

`A293895(A394497(n+1))`
-/

namespace A320001.P5996039917630412981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A394497 (n + 1)).toNat

end

end A320001.P5996039917630412981

namespace A320001

/-- `A293895(A394497(n+1))` -/
def P5996039917630412981.Spec : Prop :=
  ∀ n, P5996039917630412981.a n = A320001 (n + 1)

end A320001

/-! ## A320001.P3611517379902061419

`∑{d}[n+1, A000035(lcm(#%(n+1), A070871(#)))]`
-/

namespace A320001.P3611517379902061419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (Int.lcm ((d % (n + 1) : ℕ) : ℤ) (A070871 d))

end

end A320001.P3611517379902061419

namespace A320001

/-- `∑{d}[n+1, A000035(lcm(#%(n+1), A070871(#)))]` -/
def P3611517379902061419.Spec : Prop :=
  ∀ n, P3611517379902061419.a n = A320001 (n + 1)

end A320001

/-!
# A320002: a(0) = 1; for n > 0, a(n) = A002828(n) * a(n-A002828(n)), where A002828(n) is the least number of squares that add up to n.

The programs for A320002, there is no canonical definition to state claims against.
-/

/-! ## A320002.P9027279765737196919

`A002828(n)*a(n-A002828(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320002.P9027279765737196919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002828 n * a ((n : ℤ) - A002828 n).toNat

end

end A320002.P9027279765737196919

/-! ## A320002.P16812535501472472670

`a(A255131(n))*A002828(n)` with `a(0)=1`
-/

namespace A320002.P16812535501472472670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A255131 n).toNat * A002828 n

end

end A320002.P16812535501472472670

/-! ## A320002.P3561102779910644513

`A000792(A062399(n)-A188009(n+1))`
-/

namespace A320002.P3561102779910644513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A062399 n - A188009 (n + 1)).toNat

end

end A320002.P3561102779910644513

/-! ## A320002.P2368193586591924964

`A008619(eq[A008620(n), A319100(n+1)])`
-/

namespace A320002.P2368193586591924964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320002.P2368193586591924964

/-!
# A320003: Number of proper divisors of n of the form 6*k + 3.

The programs for A320003, the canonical program `A320003.P14814290166151194418` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320003 has offset 1).

The definition of A320003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320003.P1271398245827238548

`A007814(A319990(n+1))`
-/

namespace A320003.P1271398245827238548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319990 (n + 1)).toNat

end

end A320003.P1271398245827238548

namespace A320003

/-- `A007814(A319990(n+1))` -/
def P1271398245827238548.Spec : Prop :=
  ∀ n, P1271398245827238548.a n = A320003 (n + 1)

end A320003

/-! ## A320003.P14814290166151194418

`A091954(n+1)-A320015(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A320003

/-- `A091954(n+1)-A320015(n+1)` -/
def P14814290166151194418.Spec : Prop :=
  ∀ n, P14814290166151194418.a n = A320003 (n + 1)

theorem P14814290166151194418.correct : P14814290166151194418.Spec := by
  intro n
  simp only [A320003, Nat.add_sub_cancel]

end A320003

/-! ## A320003.P4581955384676079129

`A091954(n+1)-A091954(A079707(n+1))`
-/

namespace A320003.P4581955384676079129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A091954 (A079707 (n + 1)).toNat

end

end A320003.P4581955384676079129

namespace A320003

/-- `A091954(n+1)-A091954(A079707(n+1))` -/
def P4581955384676079129.Spec : Prop :=
  ∀ n, P4581955384676079129.a n = A320003 (n + 1)

end A320003

/-! ## A320003.P16639731257867699979

`val(A293214(n+1)/(A319991(n+1)*A319992(n+1)), 2)`
-/

namespace A320003.P16639731257867699979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A293214 (n + 1) : ℚ) / (A319991 (n + 1) * A319992 (n + 1) : ℚ))).toNat 2

end

end A320003.P16639731257867699979

namespace A320003

/-- `val(A293214(n+1)/(A319991(n+1)*A319992(n+1)), 2)` -/
def P16639731257867699979.Spec : Prop :=
  ∀ n, (P16639731257867699979.a n : ℤ) = A320003 (n + 1)

end A320003

/-! ## A320003.P15668136137666983290

`A320015(A003961(n+1))-A320015(n+1)`
-/

namespace A320003.P15668136137666983290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (A003961 (n + 1)).toNat - A320015 (n + 1)

end

end A320003.P15668136137666983290

namespace A320003

/-- `A320015(A003961(n+1))-A320015(n+1)` -/
def P15668136137666983290.Spec : Prop :=
  ∀ n, P15668136137666983290.a n = A320003 (n + 1)

end A320003

/-! ## A320003.P13602073595942505684

`A320015(A064988(n+1))-A320015(n+1)`
-/

namespace A320003.P13602073595942505684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (A064988 (n + 1)).toNat - A320015 (n + 1)

end

end A320003.P13602073595942505684

namespace A320003

/-- `A320015(A064988(n+1))-A320015(n+1)` -/
def P13602073595942505684.Spec : Prop :=
  ∀ n, P13602073595942505684.a n = A320003 (n + 1)

end A320003

/-! ## A320003.P1212166938630407570

`log2(gcd(A000079(n), A319990(n+1)))`
-/

namespace A320003.P1212166938630407570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A319990 (n + 1)) : ℝ)

end

end A320003.P1212166938630407570

namespace A320003

/-- `log2(gcd(A000079(n), A319990(n+1)))` -/
def P1212166938630407570.Spec : Prop :=
  ∀ n, P1212166938630407570.a n = (A320003 (n + 1) : ℝ)

end A320003

/-!
# A320005: Number of proper divisors of n of the form 6*k + 5.

The programs for A320005, the canonical program `A320005.P17788538960493926001` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320005 has offset 1).

The definition of A320005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320005.P13208487719051160956

`A320015(n+1)-A320001(n+1)`
-/

namespace A320005.P13208487719051160956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (n + 1) - A320001 (n + 1)

end

end A320005.P13208487719051160956

namespace A320005

/-- `A320015(n+1)-A320001(n+1)` -/
def P13208487719051160956.Spec : Prop :=
  ∀ n, P13208487719051160956.a n = A320005 (n + 1)

theorem P13208487719051160956.correct : P13208487719051160956.Spec := by
  intro n
  simp only [A320005, Nat.add_sub_cancel, A320005.P13208487719051160956.a, A320005.P17788538960493926001.f1, A320005.P17788538960493926001.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A319995, A319995.P426129462257340288.a, A320001, A320001.P12998613339711541630.a, A320015, A320015.P7908202895752596579.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, A079979, A079979.P15116196827675478457.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A232991, A232991.P9120970127003175138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320005

/-! ## A320005.P4865483972401462896

`A007814(A319992(n+1))`
-/

namespace A320005.P4865483972401462896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319992 (n + 1)).toNat

end

end A320005.P4865483972401462896

namespace A320005

/-- `A007814(A319992(n+1))` -/
def P4865483972401462896.Spec : Prop :=
  ∀ n, P4865483972401462896.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P17788538960493926001

`∑{d}[n+1, A157658(#)*A319995((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320005

/-- `∑{d}[n+1, A157658(#)*A319995((n+1)/#)]` -/
def P17788538960493926001.Spec : Prop :=
  ∀ n, P17788538960493926001.a n = A320005 (n + 1)

theorem P17788538960493926001.correct : P17788538960493926001.Spec := by
  intro n
  simp only [A320005, Nat.add_sub_cancel]

end A320005

/-! ## A320005.P2580273497134728609

`A293896(A165998(n)/A006519(n+1))`
-/

namespace A320005.P2580273497134728609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (SequenceMachineLib.roundAway ((A165998 n : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A320005.P2580273497134728609

namespace A320005

/-- `A293896(A165998(n)/A006519(n+1))` -/
def P2580273497134728609.Spec : Prop :=
  ∀ n, P2580273497134728609.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P7413318707188063134

`A035218(n+1)-(A320001(n+1)+A232991(n))`
-/

namespace A320005.P7413318707188063134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - (A320001 (n + 1) + A232991 n)

end

end A320005.P7413318707188063134

namespace A320005

/-- `A035218(n+1)-(A320001(n+1)+A232991(n))` -/
def P7413318707188063134.Spec : Prop :=
  ∀ n, P7413318707188063134.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P2509474364721977667

`A293896(A394497(n+1))`
-/

namespace A320005.P2509474364721977667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (A394497 (n + 1)).toNat

end

end A320005.P2509474364721977667

namespace A320005

/-- `A293896(A394497(n+1))` -/
def P2509474364721977667.Spec : Prop :=
  ∀ n, P2509474364721977667.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P3191296248601914285

`A029137(gcd(A011782(n), A319992(n+1)))`
-/

namespace A320005.P3191296248601914285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029137 (Int.gcd (A011782 n) (A319992 (n + 1)))

end

end A320005.P3191296248601914285

namespace A320005

/-- `A029137(gcd(A011782(n), A319992(n+1)))` -/
def P3191296248601914285.Spec : Prop :=
  ∀ n, P3191296248601914285.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P18064639876380938474

`A342004(A126759(A334085(n+1))²²)`
-/

namespace A320005.P18064639876380938474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 ((A126759 (A334085 (n + 1)).toNat ^ 2) ^ 2).toNat

end

end A320005.P18064639876380938474

namespace A320005

/-- `A342004(A126759(A334085(n+1))²²)` -/
def P18064639876380938474.Spec : Prop :=
  ∀ n, P18064639876380938474.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P15319912092216851219

`A000035(A293898(n+1)^A057237(n+1))`
-/

namespace A320005.P15319912092216851219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A293898 (n + 1) : ℚ) ^ (A057237 (n + 1) : ℤ))).toNat

end

end A320005.P15319912092216851219

namespace A320005

/-- `A000035(A293898(n+1)^A057237(n+1))` -/
def P15319912092216851219.Spec : Prop :=
  ∀ n, P15319912092216851219.a n = A320005 (n + 1)

end A320005

/-! ## A320005.P7802945069269706630

`and(A023394(n+1), A293898(n+1))`
-/

namespace A320005.P7802945069269706630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023394 (n + 1)) (A293898 (n + 1))

end

end A320005.P7802945069269706630

namespace A320005

/-- `and(A023394(n+1), A293898(n+1))` -/
def P7802945069269706630.Spec : Prop :=
  ∀ n, P7802945069269706630.a n = A320005 (n + 1)

end A320005

/-!
# A320006: a(n) = 1 if n encodes a nonnegative combinatorial game (in a style of A106486), otherwise 0; Characteristic function of A126001.

The programs for A320006, the canonical program `A320006.P15226924278135813898` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320006 has offset 0).

The definition of A320006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320006.P15226924278135813898

`char[and(n, -35)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A320006

/-- `char[and(n, -35)]` -/
def P15226924278135813898.Spec : Prop :=
  ∀ n, (P15226924278135813898.a n : ℤ) = A320006 n

theorem P15226924278135813898.correct : P15226924278135813898.Spec := by
  intro n
  simp only [A320006]

end A320006

/-!
# A320008: a(0) = 1; for n > 0, a(n) = A000120(n) * a(n-A000120(n)), where A000120(n) is the binary weight of n.

The programs for A320008, the canonical program `A320008.P3203933991130046563` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320008 has offset 0).

The definition of A320008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n)*a(n-A000120(n))` (program `A320008.P3203933991130046563`, by `A320008.P3203933991130046563.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320008.P3203933991130046563

`A000120(n)*a(n-A000120(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320008

/-- `A000120(n)*a(n-A000120(n))` -/
def P3203933991130046563.Spec : Prop :=
  ∀ n, P3203933991130046563.a n = A320008 n

theorem P3203933991130046563.correct : P3203933991130046563.Spec := by
  intro n
  simp only [A320008]

end A320008

/-! ## A320008.P12412101116886234913

`a(A011371(n))*A000120(n)` with `a(0)=1`
-/

namespace A320008.P12412101116886234913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A011371 n).toNat * A000120 n

end

end A320008.P12412101116886234913

namespace A320008

/-- `a(A011371(n))*A000120(n)` -/
def P12412101116886234913.Spec : Prop :=
  ∀ n, P12412101116886234913.a n = A320008 n

theorem P12412101116886234913.correct : P12412101116886234913.Spec := by
  intro n
  simp only [A320008, Nat.add_sub_cancel, A320008.P12412101116886234913.a, A320008.P3203933991130046563.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320008

/-! ## A320008.P8930234288643652105

`(A070939(n)-A023416(n))*a(A011371(n))` with `a(0)=1`
-/

namespace A320008.P8930234288643652105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A070939 n - A023416 n) * a (A011371 n).toNat

end

end A320008.P8930234288643652105

namespace A320008

/-- `(A070939(n)-A023416(n))*a(A011371(n))` -/
def P8930234288643652105.Spec : Prop :=
  ∀ n, P8930234288643652105.a n = A320008 n

theorem P8930234288643652105.correct : P8930234288643652105.Spec := by
  intro n
  simp only [A320008, Nat.add_sub_cancel, A320008.P8930234288643652105.a, A320008.P3203933991130046563.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A023416, A023416.P8124303482289229133.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320008

/-!
# A320009: a(0) = 1; for n > 0, a(n) = A000005(n) * a(n-A000005(n)), where A000005(n) gives the number of divisors of n.

The programs for A320009, the canonical program `A320009.P8165997606206648601` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320009 has offset 0).

The definition of A320009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n)*a(n-A000005(n))` (program `A320009.P8165997606206648601`, by `A320009.P8165997606206648601.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320009.P8165997606206648601

`A000005(n)*a(n-A000005(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320009

/-- `A000005(n)*a(n-A000005(n))` -/
def P8165997606206648601.Spec : Prop :=
  ∀ n, P8165997606206648601.a n = A320009 n

theorem P8165997606206648601.correct : P8165997606206648601.Spec := by
  intro n
  simp only [A320009]

end A320009

/-! ## A320009.P15601804377378516860

`a(A049820(n))*A000005(n)` with `a(0)=1`
-/

namespace A320009.P15601804377378516860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A049820 n).toNat * A000005 n

end

end A320009.P15601804377378516860

namespace A320009

/-- `a(A049820(n))*A000005(n)` -/
def P15601804377378516860.Spec : Prop :=
  ∀ n, P15601804377378516860.a n = A320009 n

end A320009

/-! ## A320009.P8259387588540358041

`a(A049820(n))*A277692(2*n+1)` with `a(0)=1`
-/

namespace A320009.P8259387588540358041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A049820 n).toNat * A277692 (2 * n + 1)

end

end A320009.P8259387588540358041

namespace A320009

/-- `a(A049820(n))*A277692(2*n+1)` -/
def P8259387588540358041.Spec : Prop :=
  ∀ n, P8259387588540358041.a n = A320009 n

end A320009

/-! ## A320009.P2828019906800635505

`a(A049820(n))*A005555(A032741(n))` with `a(0)=1`
-/

namespace A320009.P2828019906800635505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A049820 n).toNat * A005555 (A032741 n).toNat

end

end A320009.P2828019906800635505

namespace A320009

/-- `a(A049820(n))*A005555(A032741(n))` -/
def P2828019906800635505.Spec : Prop :=
  ∀ n, P2828019906800635505.a n = A320009 n

end A320009

/-!
# A320011: Filter sequence combined from those proper divisors d of n for which +1 == d (mod 3); Restricted growth sequence transform of A319991.

The programs for A320011, there is no canonical definition to state claims against.
-/

/-! ## A320011.P8781311791988950363

`A001221(A006567(n+1)*A319991(n+1))`
-/

namespace A320011.P8781311791988950363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006567 (n + 1) * A319991 (n + 1)).toNat

end

end A320011.P8781311791988950363

/-! ## A320011.P623266769275018327

`A001221(A020627(n+1)*A319991(n+1))`
-/

namespace A320011.P623266769275018327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020627 (n + 1) * A319991 (n + 1)).toNat

end

end A320011.P623266769275018327

/-! ## A320011.P11380517066143785234

`A001221(A098414(n+1)*A319991(n+1))`
-/

namespace A320011.P11380517066143785234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A098414 (n + 1) * A319991 (n + 1)).toNat

end

end A320011.P11380517066143785234

/-! ## A320011.P9217252114135057242

`A001221(A048986(2*n+5)*A319991(n+1))`
-/

namespace A320011.P9217252114135057242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048986 (2 * n + 5) * A319991 (n + 1)).toNat

end

end A320011.P9217252114135057242

/-! ## A320011.P10598091977075607377

`A007720(A319991(n+1))`
-/

namespace A320011.P10598091977075607377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007720 (A319991 (n + 1)).toNat

end

end A320011.P10598091977075607377

/-!
# A320012: Filter sequence combined from those proper divisors d of n for which 2 == d (mod 3); Restricted growth sequence transform of A319992.

The programs for A320012, there is no canonical definition to state claims against.
-/

/-! ## A320012.P12082064718313169953

`A242443(A319992(n+1))`
-/

namespace A320012.P12082064718313169953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242443 (A319992 (n + 1)).toNat

end

end A320012.P12082064718313169953

/-! ## A320012.P394559827271888205

`A167970(A319992(n+1)+8)`
-/

namespace A320012.P394559827271888205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (A319992 (n + 1) + 8).toNat

end

end A320012.P394559827271888205

/-! ## A320012.P1527822387064120215

`A327891(or(5, A319992(n+1)))`
-/

namespace A320012.P1527822387064120215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327891 (Int.lor 5 (A319992 (n + 1))).toNat

end

end A320012.P1527822387064120215

/-! ## A320012.P6048909342226768751

`A048679(A000120(A319992(n+1)²))`
-/

namespace A320012.P6048909342226768751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A000120 (A319992 (n + 1) ^ 2).toNat).toNat

end

end A320012.P6048909342226768751

/-! ## A320012.P18250377861551059923

`A069010(A000040(A319992(n+1))²)`
-/

namespace A320012.P18250377861551059923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A000040 (A319992 (n + 1)).toNat ^ 2).toNat

end

end A320012.P18250377861551059923

/-!
# A320013: Filter sequence constructed from the binary expansions of those proper divisors of n that are not multiples of 3.

The programs for A320013, there is no canonical definition to state claims against.
-/

/-! ## A320013.P7486871657010477337

`A001222(A147044(n+1)+A005843(n)+1)`
-/

namespace A320013.P7486871657010477337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A147044 (n + 1) + (A005843 n + 1)).toNat

end

end A320013.P7486871657010477337

/-! ## A320013.P8328478794399911555

`A305788(A305801(n+1)%A305785(2*(n+2)))`
-/

namespace A320013.P8328478794399911555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305788 (Int.tmod (A305801 (n + 1)) (A305785 (2 * (n + 2)))).toNat

end

end A320013.P8328478794399911555

/-! ## A320013.P17069584408075053538

`A350388(A337183(3*(n+2)))+A337176(3*n+1)`
-/

namespace A320013.P17069584408075053538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A337183 (3 * (n + 2))).toNat + A337176 (3 * n + 1)

end

end A320013.P17069584408075053538

/-! ## A320013.P9867176141463317813

`A350388(A337213(2*n+3))+A337176(3*n+1)`
-/

namespace A320013.P9867176141463317813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A337213 (2 * n + 3)).toNat + A337176 (3 * n + 1)

end

end A320013.P9867176141463317813

/-!
# A320015: Number of proper divisors of n that are either of the form 6*k+1 or 6*k + 5.

The programs for A320015, the canonical program `A320015.P7908202895752596579` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320015 has offset 1).

The definition of A320015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320001, A320005, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320015.P7908202895752596579

`A320001(n+1)+A320005(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320015

/-- `A320001(n+1)+A320005(n+1)` -/
def P7908202895752596579.Spec : Prop :=
  ∀ n, P7908202895752596579.a n = A320015 (n + 1)

theorem P7908202895752596579.correct : P7908202895752596579.Spec := by
  intro n
  simp only [A320015, Nat.add_sub_cancel]

end A320015

/-! ## A320015.P2005894508073702109

`A091954(A079707(n+1))`
-/

namespace A320015.P2005894508073702109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A079707 (n + 1)).toNat

end

end A320015.P2005894508073702109

namespace A320015

/-- `A091954(A079707(n+1))` -/
def P2005894508073702109.Spec : Prop :=
  ∀ n, P2005894508073702109.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P1985808271633779808

`A035218(n+1)-A232991(n)`
-/

namespace A320015.P1985808271633779808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - A232991 n

end

end A320015.P1985808271633779808

namespace A320015

/-- `A035218(n+1)-A232991(n)` -/
def P1985808271633779808.Spec : Prop :=
  ∀ n, P1985808271633779808.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P16148128998611042398

`A035218(n+1)-A354354(n+1)`
-/

namespace A320015.P16148128998611042398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - A354354 (n + 1)

end

end A320015.P16148128998611042398

namespace A320015

/-- `A035218(n+1)-A354354(n+1)` -/
def P16148128998611042398.Spec : Prop :=
  ∀ n, P16148128998611042398.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P8474333471272382272

`A091954(n+1)-A320003(n+1)`
-/

namespace A320015.P8474333471272382272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A320003 (n + 1)

end

end A320015.P8474333471272382272

namespace A320015

/-- `A091954(n+1)-A320003(n+1)` -/
def P8474333471272382272.Spec : Prop :=
  ∀ n, P8474333471272382272.a n = A320015 (n + 1)

theorem P8474333471272382272.correct : P8474333471272382272.Spec := by
  intro n
  simp only [A320015, Nat.add_sub_cancel, A320015.P8474333471272382272.a, A320015.P7908202895752596579.a, A091954, A091954.P3013811461556753393.a, A320001, A320001.P12998613339711541630.a, A320003, A320003.P14814290166151194418.a, A320005, A320005.P17788538960493926001.f1, A320005.P17788538960493926001.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A079979, A079979.P15116196827675478457.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A319995, A319995.P426129462257340288.a, A035218, A035218.P251444375763395184.f1, A035218.P251444375763395184.a, A232991, A232991.P9120970127003175138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320015

/-! ## A320015.P16095862623742629212

`A035218(n+1)-char[2*A007494(n)]`
-/

namespace A320015.P16095862623742629212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007494 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320015.P16095862623742629212

namespace A320015

/-- `A035218(n+1)-char[2*A007494(n)]` -/
def P16095862623742629212.Spec : Prop :=
  ∀ n, P16095862623742629212.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P6418496338552837126

`∑{d}[n+1, A035218(#)*A157658((n+1)/#)]`
-/

namespace A320015.P6418496338552837126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035218 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320015.P6418496338552837126

namespace A320015

/-- `∑{d}[n+1, A035218(#)*A157658((n+1)/#)]` -/
def P6418496338552837126.Spec : Prop :=
  ∀ n, P6418496338552837126.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P8699860493985019479

`∑{d}[n+1, A057427(#-1)*A232991((n+1)/#-1)]`
-/

namespace A320015.P8699860493985019479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320015.P8699860493985019479

namespace A320015

/-- `∑{d}[n+1, A057427(#-1)*A232991((n+1)/#-1)]` -/
def P8699860493985019479.Spec : Prop :=
  ∀ n, P8699860493985019479.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P17754310101459978053

`A279060(n+1)+A319995(n+1)-A232991(n)`
-/

namespace A320015.P17754310101459978053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) + (A319995 (n + 1) - A232991 n)

end

end A320015.P17754310101459978053

namespace A320015

/-- `A279060(n+1)+A319995(n+1)-A232991(n)` -/
def P17754310101459978053.Spec : Prop :=
  ∀ n, P17754310101459978053.a n = A320015 (n + 1)

end A320015

/-! ## A320015.P8865640826806931513

`val(A319991(n+1)*A319992(n+1), 2)`
-/

namespace A320015.P8865640826806931513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319991 (n + 1) * A319992 (n + 1)).toNat 2

end

end A320015.P8865640826806931513

namespace A320015

/-- `val(A319991(n+1)*A319992(n+1), 2)` -/
def P8865640826806931513.Spec : Prop :=
  ∀ n, (P8865640826806931513.a n : ℤ) = A320015 (n + 1)

end A320015

/-! ## A320015.P11169338889648677123

`val(A293214(n+1)/A319990(n+1), 2)`
-/

namespace A320015.P11169338889648677123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A293214 (n + 1) : ℚ) / (A319990 (n + 1) : ℚ))).toNat 2

end

end A320015.P11169338889648677123

namespace A320015

/-- `val(A293214(n+1)/A319990(n+1), 2)` -/
def P11169338889648677123.Spec : Prop :=
  ∀ n, (P11169338889648677123.a n : ℤ) = A320015 (n + 1)

end A320015

/-! ## A320015.P15239054379886002357

`∑{d}[n+1, and(1, A247354(#%(n+1)))]`
-/

namespace A320015.P15239054379886002357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A247354 (d % (n + 1)))

end

end A320015.P15239054379886002357

namespace A320015

/-- `∑{d}[n+1, and(1, A247354(#%(n+1)))]` -/
def P15239054379886002357.Spec : Prop :=
  ∀ n, P15239054379886002357.a n = A320015 (n + 1)

end A320015

/-!
# A320016: a(1) = a(2) = 1; for n > 2, a(n) = A000005(n) * a(A000005(n)), where A000005(n) gives the number of divisors of n.

The programs for A320016, the canonical program `A320016.P14904774801927462785` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320016 has offset 1).

The definition of A320016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*a(A000005(n+1)-1)` (program `A320016.P14904774801927462785`, by `A320016.P14904774801927462785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320016.P14904774801927462785

`A000005(n+1)*a(A000005(n+1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320016

/-- `A000005(n+1)*a(A000005(n+1)-1)` -/
def P14904774801927462785.Spec : Prop :=
  ∀ n, P14904774801927462785.a n = A320016 (n + 1)

theorem P14904774801927462785.correct : P14904774801927462785.Spec := by
  intro n
  simp only [A320016, Nat.add_sub_cancel]

end A320016

/-! ## A320016.P17323051166244969309

`a(A032741(n+1))*Δ[A006218(n)]` with `a(0)=1, a(1)=1`
-/

namespace A320016.P17323051166244969309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A320016.P17323051166244969309

namespace A320016

/-- `a(A032741(n+1))*Δ[A006218(n)]` -/
def P17323051166244969309.Spec : Prop :=
  ∀ n, P17323051166244969309.a n = A320016 (n + 1)

end A320016

/-! ## A320016.P14698520622026852277

`a(A032741(n+1))*Δ[A054519(n)]` with `a(0)=1, a(1)=1`
-/

namespace A320016.P14698520622026852277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A320016.P14698520622026852277

namespace A320016

/-- `a(A032741(n+1))*Δ[A054519(n)]` -/
def P14698520622026852277.Spec : Prop :=
  ∀ n, P14698520622026852277.a n = A320016 (n + 1)

end A320016

/-! ## A320016.P8675148292035983197

`a(A032741(n+1))*A000005(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A320016.P8675148292035983197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * A000005 (n + 1)

end

end A320016.P8675148292035983197

namespace A320016

/-- `a(A032741(n+1))*A000005(n+1)` -/
def P8675148292035983197.Spec : Prop :=
  ∀ n, P8675148292035983197.a n = A320016 (n + 1)

theorem P8675148292035983197.correct : P8675148292035983197.Spec := by
  intro n
  simp only [A320016, Nat.add_sub_cancel, A320016.P8675148292035983197.a, A320016.P14904774801927462785.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320016

/-! ## A320016.P5142482370269922704

`a(A032741(n+1))*A183063(2*(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A320016.P5142482370269922704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * A183063 (2 * (n + 1))

end

end A320016.P5142482370269922704

namespace A320016

/-- `a(A032741(n+1))*A183063(2*(n+1))` -/
def P5142482370269922704.Spec : Prop :=
  ∀ n, P5142482370269922704.a n = A320016 (n + 1)

end A320016

/-! ## A320016.P9076089798228081762

`a(A032741(n+1))*A096737(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A320016.P9076089798228081762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * A096737 (n + 1)

end

end A320016.P9076089798228081762

namespace A320016

/-- `a(A032741(n+1))*A096737(n+1)` -/
def P9076089798228081762.Spec : Prop :=
  ∀ n, P9076089798228081762.a n = A320016 (n + 1)

end A320016

/-! ## A320016.P17508864679281036145

`a(A032741(n+1))*A000120(A100587(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A320016.P17508864679281036145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * A000120 (A100587 (n + 1)).toNat

end

end A320016.P17508864679281036145

namespace A320016

/-- `a(A032741(n+1))*A000120(A100587(n+1))` -/
def P17508864679281036145.Spec : Prop :=
  ∀ n, P17508864679281036145.a n = A320016 (n + 1)

end A320016

/-! ## A320016.P11303726184007393961

`a(A032741(n+1))*A114896(∑[n])` with `a(0)=1, a(1)=1`
-/

namespace A320016.P11303726184007393961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * A114896 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320016.P11303726184007393961

namespace A320016

/-- `a(A032741(n+1))*A114896(∑[n])` -/
def P11303726184007393961.Spec : Prop :=
  ∀ n, P11303726184007393961.a n = A320016 (n + 1)

end A320016

/-!
# A320017: a(1) = 1; for n > 1, a(n) = Product_{d|n} A019565(d)^[moebius(d) = +1].

The programs for A320017, there is no canonical definition to state claims against.
-/

/-! ## A320017.P17142395835934617656

`A319352(∏{p}[A062981(n+1), #])`
-/

namespace A320017.P17142395835934617656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319352 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A320017.P17142395835934617656

/-! ## A320017.P16458702257768163901

`A141056(∑{e}[A328340(n+1), #])`
-/

namespace A320017.P16458702257768163901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A320017.P16458702257768163901

/-! ## A320017.P3656286070558513349

`A300834(∏{p}[n+1, #]^A136400(n))`
-/

namespace A320017.P3656286070558513349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300834 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A320017.P3656286070558513349

/-! ## A320017.P3915716284258622070

`A300834(∏{p}[n+1, #]^A139337(n))`
-/

namespace A320017.P3915716284258622070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300834 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A320017.P3915716284258622070

/-!
# A320018: Restricted growth sequence transform of A320017.

The programs for A320018, there is no canonical definition to state claims against.
-/

/-! ## A320018.P16945050929130612996

`A335286(A183092(n+1))+A001221(n+1)`
-/

namespace A320018.P16945050929130612996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335286 (A183092 (n + 1)).toNat + A001221 (n + 1)

end

end A320018.P16945050929130612996

/-! ## A320018.P1966481613056715720

`∑{e}[A087475(A063698(n+1)), #]`
-/

namespace A320018.P1966481613056715720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A063698 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A320018.P1966481613056715720

/-! ## A320018.P11240931935685110293

`A001222(A063698(n+1)²+4)`
-/

namespace A320018.P11240931935685110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063698 (n + 1) ^ 2 + 4).toNat

end

end A320018.P11240931935685110293

/-! ## A320018.P7255763335337557451

`A327162(∏{p}[n+1, #]%A319902(n+1))`
-/

namespace A320018.P7255763335337557451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A319902 (n + 1))).toNat

end

end A320018.P7255763335337557451

/-! ## A320018.P15392875989851835473

`A258154(2*n+1)+A026409(A305979(n+1))`
-/

namespace A320018.P15392875989851835473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258154 (2 * n + 1) + A026409 (A305979 (n + 1)).toNat

end

end A320018.P15392875989851835473

/-!
# A320019: Coefficients of polynomials related to the number of divisors, triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A320019, there is no canonical definition to state claims against.
-/

/-! ## A320019.P13818387030669084646

`A249856(A257565(n))+A122542(n)`
-/

namespace A320019.P13818387030669084646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A257565 n).toNat + A122542 n

end

end A320019.P13818387030669084646

/-! ## A320019.P5612445295477114241

`A141343(n)-A249856(A257565(n))`
-/

namespace A320019.P5612445295477114241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141343 n - A249856 (A257565 n).toNat

end

end A320019.P5612445295477114241

/-! ## A320019.P17082332745620372956

`A266213(A061579(n))+A249856(A257565(n))`
-/

namespace A320019.P17082332745620372956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A061579 n).toNat + A249856 (A257565 n).toNat

end

end A320019.P17082332745620372956

/-! ## A320019.P10043268891804831568

`A266213(A038722(n+2))+A249856(A257565(n))`
-/

namespace A320019.P10043268891804831568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A038722 (n + 2)).toNat + A249856 (A257565 n).toNat

end

end A320019.P10043268891804831568

/-! ## A320019.P5728599750453293962

`A035607(n)+A249856(A257565(n))-A128966(n)`
-/

namespace A320019.P5728599750453293962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A249856 (A257565 n).toNat - A128966 n)

end

end A320019.P5728599750453293962

/-!
# A320020: Numbers whose Collatz trajectory always alternates between a halving and a tripling step until a power of 2 is reached.

The programs for A320020, there is no canonical definition to state claims against.
-/

/-! ## A320020.P12347289418770055434

`lt[A213181(n+1), 2]+1`
-/

namespace A320020.P12347289418770055434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320020.P12347289418770055434

/-! ## A320020.P4854809929743253942

`lt[A160541(A026741(n+1)), 2]+1`
-/

namespace A320020.P4854809929743253942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A026741 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320020.P4854809929743253942

/-! ## A320020.P18091162528333178933

`eq[A006667(n+1), A221469(n+1)]+1`
-/

namespace A320020.P18091162528333178933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320020.P18091162528333178933

/-! ## A320020.P17204940926110457727

`lt[A346965(n+1)+A011765(n+1), 2]+1`
-/

namespace A320020.P17204940926110457727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A011765 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320020.P17204940926110457727

/-! ## A320020.P17148547854950276871

`record[A094759(n+1)/A133494(A213181(n+1))]`
-/

namespace A320020.P17148547854950276871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094759 (n + 1) : ℚ) / (A133494 (A213181 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320020.P17148547854950276871

/-!
# A320024: The odd part of those numbers which divide the sum of their divisors (A007691).

The programs for A320024, there is no canonical definition to state claims against.
-/

/-! ## A320024.P7816987399841307368

`A000265(A007691(n+1))`
-/

namespace A320024.P7816987399841307368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007691 (n + 1)).toNat

end

end A320024.P7816987399841307368

/-! ## A320024.P4410259556574882742

`A007691(n+1)/A000079(A134665(n+1))`
-/

namespace A320024.P4410259556574882742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007691 (n + 1) : ℚ) / (A000079 (A134665 (n + 1)).toNat : ℚ)

end

end A320024.P4410259556574882742

/-! ## A320024.P8994290318613883748

`A007691(n+1)/A000079(val(A007691(n+1), 2))`
-/

namespace A320024.P8994290318613883748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007691 (n + 1) : ℚ) / (A000079 (SequenceMachineLib.valuation (A007691 (n + 1)).toNat 2) : ℚ)

end

end A320024.P8994290318613883748

/-! ## A320024.P8477854933350837090

`A007691(n+1)/gcd(A000079(n), A007691(n+1))`
-/

namespace A320024.P8477854933350837090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007691 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A007691 (n + 1)) : ℚ)

end

end A320024.P8477854933350837090

/-! ## A320024.P8024542581704780168

`lcm(A000079(n), A007691(n+1))/A000079(n)`
-/

namespace A320024.P8024542581704780168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A007691 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A320024.P8024542581704780168

/-!
# A320025: Row sums of A319935.

The programs for A320025, there is no canonical definition to state claims against.
-/

/-! ## A320025.P7776803574168870303

`A131883((n+1)!)`
-/

namespace A320025.P7776803574168870303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (Nat.factorial (n + 1))

end

end A320025.P7776803574168870303

/-! ## A320025.P16033008543191581450

`A131883(∏[n+1])`
-/

namespace A320025.P16033008543191581450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A320025.P16033008543191581450

/-!
# A320026: Odd squarefree numbers k for which m >= 0 can be found such that k*2^m divides sigma(k*2^m).

The programs for A320026, there is no canonical definition to state claims against.
-/

/-! ## A320026.P9878545001078637876

`record[A246674(A334892(n))]`
-/

namespace A320026.P9878545001078637876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A334892 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320026.P9878545001078637876

/-! ## A320026.P8703725683009506347

`record[A115873(A219326(n+1)+1)]`
-/

namespace A320026.P8703725683009506347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A219326 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320026.P8703725683009506347

/-! ## A320026.P16283108028608629952

`A108346(A018095(n))`
-/

namespace A320026.P16283108028608629952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (A018095 n).toNat

end

end A320026.P16283108028608629952

/-!
# A320028: a(n) is the first prime encountered when running the Collatz algorithm (halving and tripling steps) on the number n.

The programs for A320028, there is no canonical definition to state claims against.
-/

/-! ## A320028.P10357098505145987308

`p?[Δ[A280408(n+1)]+2]`
-/

namespace A320028.P10357098505145987308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320028.P10357098505145987308

/-! ## A320028.P6763730173159098609

`A280408(∑[A078350(n+1)]+2)`
-/

namespace A320028.P6763730173159098609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280408 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A320028.P6763730173159098609

/-! ## A320028.P1861322139955438311

`A384874(n+2)%A217923(n+1)`
-/

namespace A320028.P1861322139955438311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384874 (n + 2)) (A217923 (n + 1))

end

end A320028.P1861322139955438311

/-! ## A320028.P12915123650248027711

`A004438(A384874(n+2))`
-/

namespace A320028.P12915123650248027711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A384874 (n + 2)).toNat

end

end A320028.P12915123650248027711

/-! ## A320028.P13890851235664296599

`A071773(A384874(n+2)²)`
-/

namespace A320028.P13890851235664296599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A384874 (n + 2) ^ 2).toNat

end

end A320028.P13890851235664296599

/-!
# A320030: Automaton sum similar to A102376 but using mod 3 instead of mod 2.

The programs for A320030, there is no canonical definition to state claims against.
-/

/-! ## A320030.P4375984778969178429

`A051638(82*n)`
-/

namespace A320030.P4375984778969178429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 (82 * n)

end

end A320030.P4375984778969178429

/-! ## A320030.P15324926157072092292

`A002131(A006047(n)²)`
-/

namespace A320030.P15324926157072092292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A006047 n ^ 2).toNat

end

end A320030.P15324926157072092292

/-! ## A320030.P17063710575835171700

`A327625(A006047(n)²)`
-/

namespace A320030.P17063710575835171700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (A006047 n ^ 2).toNat

end

end A320030.P17063710575835171700

/-! ## A320030.P7621126650431292201

`A002131(A006047(n)^2)`
-/

namespace A320030.P7621126650431292201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A006047 n ^ 2).toNat

end

end A320030.P7621126650431292201

/-! ## A320030.P14495639506667291079

`A002131(A006047(82*n))`
-/

namespace A320030.P14495639506667291079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A006047 (82 * n)).toNat

end

end A320030.P14495639506667291079

/-! ## A320030.P4780686191159163833

`abs(A186690(A006047(n)²))`
-/

namespace A320030.P4780686191159163833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186690 (A006047 n ^ 2).toNat|

end

end A320030.P4780686191159163833

/-! ## A320030.P4195536386842578143

`∑{d}[A006047(n), A070732(#)]`
-/

namespace A320030.P4195536386842578143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070732 d

end

end A320030.P4195536386842578143

/-! ## A320030.P4981651358234756916

`A054785(A006047(n)²)/2`
-/

namespace A320030.P4981651358234756916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (A006047 n ^ 2).toNat : ℚ) / 2

end

end A320030.P4981651358234756916

/-! ## A320030.P7158037883197836781

`∑{d}[A006047(n)², A026741(#)]`
-/

namespace A320030.P7158037883197836781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d

end

end A320030.P7158037883197836781

/-! ## A320030.P6442259694891670756

`A002131(A000005(A101278(n))²)`
-/

namespace A320030.P6442259694891670756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A000005 (A101278 n).toNat ^ 2).toNat

end

end A320030.P6442259694891670756

/-!
# A320031: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of the e.g.f. exp(x)/(1 - k*x).

The programs for A320031, the canonical program `A320031.P3421283970520536321` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320031 has offset 0).

The definition of A320031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320031.P3421283970520536321

`col(n)*(row(n)-col(n))*T(n-1,k-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A320031

/-- `col(n)*(row(n)-col(n))*T(n-1,k-1)+1` -/
def P3421283970520536321.Spec : Prop :=
  ∀ n, P3421283970520536321.a n = A320031 n

theorem P3421283970520536321.correct : P3421283970520536321.Spec := by
  intro n
  simp only [A320031]

end A320031

/-! ## A320031.P3452402120534473164

`or(A128198(n), A185284(A185282(n)))`
-/

namespace A320031.P3452402120534473164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128198 n) (A185284 (A185282 n).toNat)

end

end A320031.P3452402120534473164

namespace A320031

/-- `or(A128198(n), A185284(A185282(n)))` -/
def P3452402120534473164.Spec : Prop :=
  ∀ n, P3452402120534473164.a n = A320031 n

end A320031

/-! ## A320031.P7688664339619134022

`or(A128198(n), A185284(2*n))`
-/

namespace A320031.P7688664339619134022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128198 n) (A185284 (2 * n))

end

end A320031.P7688664339619134022

namespace A320031

/-- `or(A128198(n), A185284(2*n))` -/
def P7688664339619134022.Spec : Prop :=
  ∀ n, P7688664339619134022.a n = A320031 n

end A320031

/-! ## A320031.P6080569264415712218

`A048266(A128198(n))`
-/

namespace A320031.P6080569264415712218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A128198 n).toNat

end

end A320031.P6080569264415712218

namespace A320031

/-- `A048266(A128198(n))` -/
def P6080569264415712218.Spec : Prop :=
  ∀ n, P6080569264415712218.a n = A320031 n

end A320031

/-! ## A320031.P5555791547794524073

`A128198(A236836(n))`
-/

namespace A320031.P5555791547794524073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128198 (A236836 n).toNat

end

end A320031.P5555791547794524073

namespace A320031

/-- `A128198(A236836(n))` -/
def P5555791547794524073.Spec : Prop :=
  ∀ n, P5555791547794524073.a n = A320031 n

end A320031

/-!
# A320032: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of the e.g.f. exp(-x)/(1 - k*x).

The programs for A320032, there is no canonical definition to state claims against.
-/

/-! ## A320032.P5808114676094683137

`A192174(A192174(n)²²²)+A004247(n)`
-/

namespace A320032.P5808114676094683137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 (((A192174 n ^ 2) ^ 2) ^ 2).toNat + A004247 n

end

end A320032.P5808114676094683137

/-! ## A320032.P14519579167409011753

`A033999(A182002(n+1))+A004247(n)`
-/

namespace A320032.P14519579167409011753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A182002 (n + 1)).toNat + A004247 n

end

end A320032.P14519579167409011753

/-! ## A320032.P578948905244397693

`A329329(n+1)-A010673(A182002(n+1))`
-/

namespace A320032.P578948905244397693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329329 (n + 1) - A010673 (A182002 (n + 1)).toNat

end

end A320032.P578948905244397693

/-! ## A320032.P2748839113092739466

`A352362(n)-A305936(A356101(2*n+1))`
-/

namespace A320032.P2748839113092739466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352362 n - A305936 (A356101 (2 * n + 1)).toNat

end

end A320032.P2748839113092739466

/-!
# A320035: Indices (starting at 0) of integers in the increasing sequence S of nonnegative numbers that are representable in base 3/2 with digits {0, H=1/2, 1}.

The programs for A320035, there is no canonical definition to state claims against.
-/

/-! ## A320035.P5977562639249206505

`A320272(2*n+1)`
-/

namespace A320035.P5977562639249206505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320272 (2 * n + 1)

end

end A320035.P5977562639249206505

/-! ## A320035.P7941630500751373407

`record[A320272(A000265(n+1))]`
-/

namespace A320035.P7941630500751373407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320272 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320035.P7941630500751373407

/-! ## A320035.P4950761076833273202

`A320274(A265316(n+1))`
-/

namespace A320035.P4950761076833273202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320274 (A265316 (n + 1)).toNat

end

end A320035.P4950761076833273202

/-!
# A320037: Write n in binary, then modify each run of 0's by appending one 1, and modify each run of 1's by appending one 0. a(n) is the decimal equivalent of the result.

The programs for A320037, there is no canonical definition to state claims against.
-/

/-! ## A320037.P8602565223076701245

`A320039(n+1)+A320262(n+1)-A175046(n+1)`
-/

namespace A320037.P8602565223076701245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320039 (n + 1) + (A320262 (n + 1) - A175046 (n + 1))

end

end A320037.P8602565223076701245

/-! ## A320037.P915774283903563375

`or(A320039(n+1)-A320263(n+1), A320262(n+1))`
-/

namespace A320037.P915774283903563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320039 (n + 1) - A320263 (n + 1)) (A320262 (n + 1))

end

end A320037.P915774283903563375

/-! ## A320037.P14574872031288149260

`A320039(n+1)-A320263(A229763(n+1))`
-/

namespace A320037.P14574872031288149260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320039 (n + 1) - A320263 (A229763 (n + 1)).toNat

end

end A320037.P14574872031288149260

/-! ## A320037.P3210815246856916268

`and(A320038(A341522(n)), A320039(n+1))`
-/

namespace A320037.P3210815246856916268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320038 (A341522 n).toNat) (A320039 (n + 1))

end

end A320037.P3210815246856916268

/-! ## A320037.P10462013168950735669

`A006257(A175046(n+1))-A059841(n)`
-/

namespace A320037.P10462013168950735669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A175046 (n + 1)).toNat - A059841 n

end

end A320037.P10462013168950735669

/-! ## A320037.P3316537693444183764

`xor(A229763(A320263(n+1)), A320039(n+1))`
-/

namespace A320037.P3316537693444183764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A229763 (A320263 (n + 1)).toNat) (A320039 (n + 1))

end

end A320037.P3316537693444183764

/-! ## A320037.P6997849810950336274

`A320039(n+1)-A229762(A320262(n+1))`
-/

namespace A320037.P6997849810950336274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320039 (n + 1) - A229762 (A320262 (n + 1)).toNat

end

end A320037.P6997849810950336274

/-! ## A320037.P12989595393614446497

`A320039(n+1)-A229763(A175046(n+1))`
-/

namespace A320037.P12989595393614446497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320039 (n + 1) - A229763 (A175046 (n + 1)).toNat

end

end A320037.P12989595393614446497

/-!
# A320038: Write n in binary, then modify each run of 0's by prepending one 1, and modify each run of 1's by prepending one 0. a(n) is the decimal equivalent of the result.

The programs for A320038, there is no canonical definition to state claims against.
-/

/-! ## A320038.P1847718920387959027

`floor(A175046(n+1)/2)`
-/

namespace A320038.P1847718920387959027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175046 (n + 1) : ℚ) / 2⌋

end

end A320038.P1847718920387959027

/-! ## A320038.P9360604633770774961

`A319408(n+1)+∑[and(1, n)]`
-/

namespace A320038.P9360604633770774961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A320038.P9360604633770774961

/-! ## A320038.P6843563449695118091

`A319408(n+1)+A110654(n)`
-/

namespace A320038.P6843563449695118091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (n + 1) + A110654 n

end

end A320038.P6843563449695118091

/-! ## A320038.P6857237512461234085

`(A175046(n+1)-A059841(n))/2`
-/

namespace A320038.P6857237512461234085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175046 (n + 1) - A059841 n : ℚ) / 2

end

end A320038.P6857237512461234085

/-! ## A320038.P6925841676168830080

`A319408(n+1)+∑[A028242(a(n-1))]` with `a(0)=0`
-/

namespace A320038.P6925841676168830080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A028242 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320038.P6925841676168830080

/-! ## A320038.P18361430507539139252

`A319408(n+1)+∑[A160850(a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A320038.P18361430507539139252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A160850 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320038.P18361430507539139252

/-! ## A320038.P4756677883434885432

`A320261(n+1)+A320263(n+1)-A175046(n+1)`
-/

namespace A320038.P4756677883434885432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320261 (n + 1) + (A320263 (n + 1) - A175046 (n + 1))

end

end A320038.P4756677883434885432

/-! ## A320038.P12239216489125750208

`A269170(A320263(n+1))`
-/

namespace A320038.P12239216489125750208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A320263 (n + 1)).toNat

end

end A320038.P12239216489125750208

/-! ## A320038.P11214054144921620575

`A269170(A320262(n+1)/2)`
-/

namespace A320038.P11214054144921620575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (SequenceMachineLib.roundAway ((A320262 (n + 1) : ℚ) / 2)).toNat

end

end A320038.P11214054144921620575

/-! ## A320038.P2606087449661646553

`A227351(A048680(A003714(A227352(n+1))))`
-/

namespace A320038.P2606087449661646553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 (A048680 (A003714 (A227352 (n + 1)).toNat).toNat).toNat

end

end A320038.P2606087449661646553

/-!
# A320039: Write n in binary, then modify each run of 0's and each run of 1's by appending a 1. a(n) is the decimal equivalent of the result.

The programs for A320039, there is no canonical definition to state claims against.
-/

/-! ## A320039.P9658322028675260817

`or(A175046(n+1), A320037(n+1))`
-/

namespace A320039.P9658322028675260817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175046 (n + 1)) (A320037 (n + 1))

end

end A320039.P9658322028675260817

/-! ## A320039.P6766564028138027722

`or(A320037(n+1), A320263(n+1))`
-/

namespace A320039.P6766564028138027722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320037 (n + 1)) (A320263 (n + 1))

end

end A320039.P6766564028138027722

/-! ## A320039.P6070181981753837489

`A175046(n+1)+A320037(n+1)-A320262(n+1)`
-/

namespace A320039.P6070181981753837489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) + (A320037 (n + 1) - A320262 (n + 1))

end

end A320039.P6070181981753837489

/-! ## A320039.P4914398213063151621

`A175046(n+1)+A320037(n+1)%A320263(n+1)`
-/

namespace A320039.P4914398213063151621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) + Int.tmod (A320037 (n + 1)) (A320263 (n + 1))

end

end A320039.P4914398213063151621

/-! ## A320039.P9900641734651142194

`or(A175048(A175047(n+1)), A320037(n+1))`
-/

namespace A320039.P9900641734651142194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175048 (A175047 (n + 1)).toNat) (A320037 (n + 1))

end

end A320039.P9900641734651142194

/-! ## A320039.P15066400290518113923

`A006257(A320261(n+1))`
-/

namespace A320039.P15066400290518113923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A320261 (n + 1)).toNat

end

end A320039.P15066400290518113923

/-! ## A320039.P12302931438162929492

`A269170(A320037(n+1))`
-/

namespace A320039.P12302931438162929492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A320037 (n + 1)).toNat

end

end A320039.P12302931438162929492

/-!
# A320040: Consider the Cantor matrix of rational numbers. This sequence reads the numerator, then the denominator as one moves through the matrix along alternate up and down antidiagonals.

The programs for A320040, there is no canonical definition to state claims against.
-/

/-! ## A320040.P18388960904136163317

`A319571(n)+1`
-/

namespace A320040.P18388960904136163317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 n + 1

end

end A320040.P18388960904136163317

/-! ## A320040.P11874651085535902391

`A005496(A319571(n))`
-/

namespace A320040.P11874651085535902391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A319571 n).toNat

end

end A320040.P11874651085535902391

/-! ## A320040.P11725305122707627252

`A175213(A319571(n)²)`
-/

namespace A320040.P11725305122707627252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A319571 n ^ 2).toNat

end

end A320040.P11725305122707627252

/-! ## A320040.P15681905593417355848

`A260056(A319571(n)²)`
-/

namespace A320040.P15681905593417355848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A319571 n ^ 2).toNat

end

end A320040.P15681905593417355848

/-! ## A320040.P14087246898999965639

`A008619(2*A319571(n))`
-/

namespace A320040.P14087246898999965639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A319571 n).toNat

end

end A320040.P14087246898999965639

/-! ## A320040.P3516560096470795456

`A028242(2*A319571(n))`
-/

namespace A320040.P3516560096470795456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A319571 n).toNat

end

end A320040.P3516560096470795456

/-! ## A320040.P1462248922650381231

`A000005(2^A319571(n))`
-/

namespace A320040.P1462248922650381231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319571 n : ℤ))).toNat

end

end A320040.P1462248922650381231

/-! ## A320040.P6602099114989652543

`A001222(2*2^A319571(n))`
-/

namespace A320040.P6602099114989652543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A319571 n : ℤ))).toNat

end

end A320040.P6602099114989652543

/-! ## A320040.P4463533530101181147

`A001222(lcm(3, 2^A319571(n)))`
-/

namespace A320040.P4463533530101181147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319571 n : ℤ))))

end

end A320040.P4463533530101181147

/-!
# A320042: a(n) = a(floor(n/2)) + (-1)^(n*(n+1)/2) with a(1)=0.

The programs for A320042, the canonical program `A320042.P13296018025758099294` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320042 has offset 1).

The definition of A320042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320042.P10293088816907096905

`a(floor((n+1)/2)-1)+(-1)^((n+1)*(n+2)/2)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A320042.P10293088816907096905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, -1, 1, 0] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + (-1 : ℝ) ^ (((n + 1) * (n + 2) : ℚ) / 2 : ℝ)

end

end A320042.P10293088816907096905

namespace A320042

/-- `a(floor((n+1)/2)-1)+(-1)^((n+1)*(n+2)/2)` -/
def P10293088816907096905.Spec : Prop :=
  ∀ n, P10293088816907096905.a n = (A320042 (n + 1) : ℝ)

end A320042

/-! ## A320042.P13296018025758099294

`2*A092339(n+1)-A000523(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A320042

/-- `2*A092339(n+1)-A000523(n+1)` -/
def P13296018025758099294.Spec : Prop :=
  ∀ n, P13296018025758099294.a n = A320042 (n + 1)

theorem P13296018025758099294.correct : P13296018025758099294.Spec := by
  intro n
  simp only [A320042, Nat.add_sub_cancel]

end A320042

/-! ## A320042.P15920597773247744155

`A227185(n+1)-A005811(n+1)`
-/

namespace A320042.P15920597773247744155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (n + 1) - A005811 (n + 1)

end

end A320042.P15920597773247744155

namespace A320042

/-- `A227185(n+1)-A005811(n+1)` -/
def P15920597773247744155.Spec : Prop :=
  ∀ n, P15920597773247744155.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P8349672024881979734

`A092339(n+1)+1-A005811(n+1)`
-/

namespace A320042.P8349672024881979734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (n + 1) + (1 - A005811 (n + 1))

end

end A320042.P8349672024881979734

namespace A320042

/-- `A092339(n+1)+1-A005811(n+1)` -/
def P8349672024881979734.Spec : Prop :=
  ∀ n, P8349672024881979734.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P592791714483634144

`A227185(n+1)+1-A088748(n+1)`
-/

namespace A320042.P592791714483634144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (n + 1) + (1 - A088748 (n + 1))

end

end A320042.P592791714483634144

namespace A320042

/-- `A227185(n+1)+1-A088748(n+1)` -/
def P592791714483634144.Spec : Prop :=
  ∀ n, P592791714483634144.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P17048993512909076053

`A092339(n+1)-A000523(A090079(n+1))`
-/

namespace A320042.P17048993512909076053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (n + 1) - A000523 (A090079 (n + 1)).toNat

end

end A320042.P17048993512909076053

namespace A320042

/-- `A092339(n+1)-A000523(A090079(n+1))` -/
def P17048993512909076053.Spec : Prop :=
  ∀ n, P17048993512909076053.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P11332868329153461867

`A092339(n+1)+A227185(n+1)-A029837(n+2)`
-/

namespace A320042.P11332868329153461867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (n + 1) + (A227185 (n + 1) - A029837 (n + 2))

end

end A320042.P11332868329153461867

namespace A320042

/-- `A092339(n+1)+A227185(n+1)-A029837(n+2)` -/
def P11332868329153461867.Spec : Prop :=
  ∀ n, P11332868329153461867.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P6975858858196215298

`A165316(n+1)-A297030(n+1)`
-/

namespace A320042.P6975858858196215298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165316 (n + 1) - A297030 (n + 1)

end

end A320042.P6975858858196215298

namespace A320042

/-- `A165316(n+1)-A297030(n+1)` -/
def P6975858858196215298.Spec : Prop :=
  ∀ n, P6975858858196215298.a n = A320042 (n + 1)

theorem P6975858858196215298.correct : P6975858858196215298.Spec := by
  intro n
  simp only [A320042, Nat.add_sub_cancel, A320042.P6975858858196215298.a, A320042.P13296018025758099294.a, A000523, A000523.P3314682526375882520.a, A092339, A092339.P11324540201180238684.a, A165316, A165316.P17245115861618815472.a, A297030, A297030.P9397117529336368470.f1, A297030.P9397117529336368470.a, A003188, A003188.P10544524695508875182.a, A014707, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, A080791, A080791.P6131873509789506769.a, A342892, A342892.P15545724852766789726.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A086483, A086483.P15878786577644316813.f1, A086483.P15878786577644316813.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A320042

/-! ## A320042.P1451401063106000963

`A080791(A003188(n+1))+1-A005811(n+1)`
-/

namespace A320042.P1451401063106000963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003188 (n + 1)).toNat + (1 - A005811 (n + 1))

end

end A320042.P1451401063106000963

namespace A320042

/-- `A080791(A003188(n+1))+1-A005811(n+1)` -/
def P1451401063106000963.Spec : Prop :=
  ∀ n, P1451401063106000963.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P7164796108691782806

`A005811(A129594(n+1))-A005811(n+1)`
-/

namespace A320042.P7164796108691782806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A129594 (n + 1)).toNat - A005811 (n + 1)

end

end A320042.P7164796108691782806

namespace A320042

/-- `A005811(A129594(n+1))-A005811(n+1)` -/
def P7164796108691782806.Spec : Prop :=
  ∀ n, P7164796108691782806.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P2433079683204132024

`A005811(A165199(n+1))-A005811(n+1)`
-/

namespace A320042.P2433079683204132024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A165199 (n + 1)).toNat - A005811 (n + 1)

end

end A320042.P2433079683204132024

namespace A320042

/-- `A005811(A165199(n+1))-A005811(n+1)` -/
def P2433079683204132024.Spec : Prop :=
  ∀ n, P2433079683204132024.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P8647513940566619947

`A227739(A173318(n+1))-A005811(n+1)`
-/

namespace A320042.P8647513940566619947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (A173318 (n + 1)).toNat - A005811 (n + 1)

end

end A320042.P8647513940566619947

namespace A320042

/-- `A227739(A173318(n+1))-A005811(n+1)` -/
def P8647513940566619947.Spec : Prop :=
  ∀ n, P8647513940566619947.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P8230387027392339216

`A227185(n+1)-A227185(A129594(n+1))`
-/

namespace A320042.P8230387027392339216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (n + 1) - A227185 (A129594 (n + 1)).toNat

end

end A320042.P8230387027392339216

namespace A320042

/-- `A227185(n+1)-A227185(A129594(n+1))` -/
def P8230387027392339216.Spec : Prop :=
  ∀ n, P8230387027392339216.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P8134691258928708087

`A227185(n+1)-A227185(A165199(n+1))`
-/

namespace A320042.P8134691258928708087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (n + 1) - A227185 (A165199 (n + 1)).toNat

end

end A320042.P8134691258928708087

namespace A320042

/-- `A227185(n+1)-A227185(A165199(n+1))` -/
def P8134691258928708087.Spec : Prop :=
  ∀ n, P8134691258928708087.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P4900584931518160250

`A286298(A129594(n+1))-A286298(n+1)`
-/

namespace A320042.P4900584931518160250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286298 (A129594 (n + 1)).toNat - A286298 (n + 1)

end

end A320042.P4900584931518160250

namespace A320042

/-- `A286298(A129594(n+1))-A286298(n+1)` -/
def P4900584931518160250.Spec : Prop :=
  ∀ n, P4900584931518160250.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P1499512729081518186

`A070941(n+1)-A070941(A090079(n+1)²)`
-/

namespace A320042.P1499512729081518186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (n + 1) - A070941 (A090079 (n + 1) ^ 2).toNat

end

end A320042.P1499512729081518186

namespace A320042

/-- `A070941(n+1)-A070941(A090079(n+1)²)` -/
def P1499512729081518186.Spec : Prop :=
  ∀ n, P1499512729081518186.a n = A320042 (n + 1)

end A320042

/-! ## A320042.P5350541186450810570

`A257541(A243353(n+1))`
-/

namespace A320042.P5350541186450810570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A243353 (n + 1)).toNat

end

end A320042.P5350541186450810570

namespace A320042

/-- `A257541(A243353(n+1))` -/
def P5350541186450810570.Spec : Prop :=
  ∀ n, P5350541186450810570.a n = A320042 (n + 1)

end A320042

/-!
# A320045: Smallest k such that (Z/kZ)* is isomorphic to (Z/nZ)*.

The programs for A320045, there is no canonical definition to state claims against.
-/

/-! ## A320045.P4507921082450054723

`A296233(A289626(n+1))`
-/

namespace A320045.P4507921082450054723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296233 (A289626 (n + 1)).toNat

end

end A320045.P4507921082450054723

/-! ## A320045.P6086408025068561693

`A331179(A289625(n+1))`
-/

namespace A320045.P6086408025068561693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331179 (A289625 (n + 1)).toNat

end

end A320045.P6086408025068561693

/-! ## A320045.P3341820788042360321

`A008479(2*A289625(n+1))`
-/

namespace A320045.P3341820788042360321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (2 * A289625 (n + 1)).toNat

end

end A320045.P3341820788042360321

/-! ## A320045.P13597917569613142921

`A029931(A289625(n+1)-A104194(n+1))`
-/

namespace A320045.P13597917569613142921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A289625 (n + 1) - A104194 (n + 1)).toNat

end

end A320045.P13597917569613142921

/-! ## A320045.P2302444770999048450

`A004273(A289626(n+1))-A289618(A289625(n+1))`
-/

namespace A320045.P2302444770999048450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A289626 (n + 1)).toNat - A289618 (A289625 (n + 1)).toNat

end

end A320045.P2302444770999048450

/-!
# A320047: Consider coefficients U(m,l,k) defined by the identity Sum_{k=1..l} Sum_{j=0..m} A302971(m,j)/A304042(m,j) * k^j * (T-k)^j = Sum_{k=0..m} (-1)^(m-k) * U(m,l,k) * T^k that holds for all positive integers l,m,T. This sequence gives 2-column table read by rows, where n-th row lists coefficients U(1,n,k) for k = 0, 1 and n >= 1.

The programs for A320047, the canonical program `A320047.P10898305299064663734` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320047 has offset 1).

The definition of A320047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320047.P10898305299064663734

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=5, a(1)=6, a(2)=28, a(3)=18, a(4)=81, a(5)=36, a(6)=176, a(7)=60`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A320047

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P10898305299064663734.Spec : Prop :=
  ∀ n, P10898305299064663734.a n = A320047 (n + 1)

theorem P10898305299064663734.correct : P10898305299064663734.Spec := by
  intro n
  simp only [A320047, Nat.add_sub_cancel]

end A320047

/-! ## A320047.P2236730349208348998

`∑[floor(n/2)+1]*A247617(A141310(n))`
-/

namespace A320047.P2236730349208348998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A247617 (A141310 n).toNat

end

end A320047.P2236730349208348998

namespace A320047

/-- `∑[floor(n/2)+1]*A247617(A141310(n))` -/
def P2236730349208348998.Spec : Prop :=
  ∀ n, P2236730349208348998.a n = A320047 (n + 1)

end A320047

/-! ## A320047.P1031354628896185688

`∑[A008619(n)]*A005408(A057979(n+5))`
-/

namespace A320047.P1031354628896185688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005408 (A057979 (n + 5)).toNat

end

end A320047.P1031354628896185688

namespace A320047

/-- `∑[A008619(n)]*A005408(A057979(n+5))` -/
def P1031354628896185688.Spec : Prop :=
  ∀ n, P1031354628896185688.a n = A320047 (n + 1)

end A320047

/-! ## A320047.P18435293462603014124

`A002620(n+2)*A005408(A057979(n+5))`
-/

namespace A320047.P18435293462603014124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) * A005408 (A057979 (n + 5)).toNat

end

end A320047.P18435293462603014124

namespace A320047

/-- `A002620(n+2)*A005408(A057979(n+5))` -/
def P18435293462603014124.Spec : Prop :=
  ∀ n, P18435293462603014124.a n = A320047 (n + 1)

end A320047

/-! ## A320047.P12105714472710173535

`∑[A008619(n)]*A008619(A266449(n+6))`
-/

namespace A320047.P12105714472710173535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (A266449 (n + 6)).toNat

end

end A320047.P12105714472710173535

namespace A320047

/-- `∑[A008619(n)]*A008619(A266449(n+6))` -/
def P12105714472710173535.Spec : Prop :=
  ∀ n, P12105714472710173535.a n = A320047 (n + 1)

end A320047

/-! ## A320047.P5847975653630734028

`A002620(n+2)*A008619(A266449(n+6))`
-/

namespace A320047.P5847975653630734028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) * A008619 (A266449 (n + 6)).toNat

end

end A320047.P5847975653630734028

namespace A320047

/-- `A002620(n+2)*A008619(A266449(n+6))` -/
def P5847975653630734028.Spec : Prop :=
  ∀ n, P5847975653630734028.a n = A320047 (n + 1)

end A320047

/-!
# A320048: One half of composite numbers k with the property that the symmetric representation of sigma(k) has two parts.

The programs for A320048, there is no canonical definition to state claims against.
-/

/-! ## A320048.P13331998414792694281

`A244894(n+1)/2`
-/

namespace A320048.P13331998414792694281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244894 (n + 1) : ℚ) / 2

end

end A320048.P13331998414792694281

/-! ## A320048.P5815526517013437804

`eq[2, A237271(2*(n+1))]+1`
-/

namespace A320048.P5815526517013437804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320048.P5815526517013437804

/-! ## A320048.P5654001884658799144

`eq[4, A244971(2*(n+1))]+1`
-/

namespace A320048.P5654001884658799144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320048.P5654001884658799144

/-! ## A320048.P159435877514857450

`eq[2, A237271(floor(acot(n)+n)+n)]`
-/

namespace A320048.P159435877514857450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320048.P159435877514857450

/-! ## A320048.P18152872303258835178

`eq[2, A237271(abs(1-n)+n+1)]`
-/

namespace A320048.P18152872303258835178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320048.P18152872303258835178

/-! ## A320048.P14187949725505478413

`eq[3, a(A237271(n))+(-1)^n]/2` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A320048.P14187949725505478413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (A237271 n).toNat + (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A320048.P14187949725505478413

/-! ## A320048.P8557370943856974261

`A001281(A244894(n+1))`
-/

namespace A320048.P8557370943856974261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A244894 (n + 1)).toNat

end

end A320048.P8557370943856974261

/-! ## A320048.P18424464078939301559

`A004524(A244894(n+1)+1)`
-/

namespace A320048.P18424464078939301559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A244894 (n + 1) + 1).toNat

end

end A320048.P18424464078939301559

/-! ## A320048.P5429181373315356769

`A004526(A244894(n+1)+1)`
-/

namespace A320048.P5429181373315356769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244894 (n + 1) + 1).toNat

end

end A320048.P5429181373315356769

/-! ## A320048.P2789502127152391776

`A020725(eq[2, A237271(2*(n+1))])`
-/

namespace A320048.P2789502127152391776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320048.P2789502127152391776

/-!
# A320049: Expansion of (psi(x) / phi(x))^6 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A320049, there is no canonical definition to state claims against.
-/

/-! ## A320049.P9760711086741847169

`A001940(n)*A033999(n)`
-/

namespace A320049.P9760711086741847169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001940 n * A033999 n

end

end A320049.P9760711086741847169

/-! ## A320049.P7600130572294520242

`A001936(n)/A079006(n)*A001940(n)`
-/

namespace A320049.P7600130572294520242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A001940 n : ℚ)

end

end A320049.P7600130572294520242

/-! ## A320049.P1476408757707511685

`A001935(n)*A001940(n)/A083365(n)`
-/

namespace A320049.P1476408757707511685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n * A001940 n : ℚ) / (A083365 n : ℚ)

end

end A320049.P1476408757707511685

/-! ## A320049.P12652988625780374977

`A001938(n)/A093160(n)*A001940(n)`
-/

namespace A320049.P12652988625780374977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A093160 n : ℚ) * (A001940 n : ℚ)

end

end A320049.P12652988625780374977

/-! ## A320049.P10145486929794776924

`A001937(n)/A187053(n)*A001940(n)`
-/

namespace A320049.P10145486929794776924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A187053 n : ℚ) * (A001940 n : ℚ)

end

end A320049.P10145486929794776924

/-! ## A320049.P12430702496361470843

`A001939(n)/A195861(n)*A001940(n)`
-/

namespace A320049.P12430702496361470843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A195861 n : ℚ) * (A001940 n : ℚ)

end

end A320049.P12430702496361470843

/-!
# A320050: Expansion of (psi(x) / phi(x))^7 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A320050, there is no canonical definition to state claims against.
-/

/-! ## A320050.P15312298930956412116

`A001941(n)*A033999(n)`
-/

namespace A320050.P15312298930956412116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001941 n * A033999 n

end

end A320050.P15312298930956412116

/-! ## A320050.P8283294600350561043

`A001936(n)/A079006(n)*A001941(n)`
-/

namespace A320050.P8283294600350561043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n : ℚ) / (A079006 n : ℚ) * (A001941 n : ℚ)

end

end A320050.P8283294600350561043

/-! ## A320050.P7670080571273481933

`A001935(n)/A083365(n)*A001941(n)`
-/

namespace A320050.P7670080571273481933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A083365 n : ℚ) * (A001941 n : ℚ)

end

end A320050.P7670080571273481933

/-! ## A320050.P7200671741480989854

`A001938(n)/A093160(n)*A001941(n)`
-/

namespace A320050.P7200671741480989854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A093160 n : ℚ) * (A001941 n : ℚ)

end

end A320050.P7200671741480989854

/-! ## A320050.P14755757821933270040

`A001937(n)/A187053(n)*A001941(n)`
-/

namespace A320050.P14755757821933270040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 n : ℚ) / (A187053 n : ℚ) * (A001941 n : ℚ)

end

end A320050.P14755757821933270040

/-! ## A320050.P5716137486735160156

`A001939(n)/A195861(n)*A001941(n)`
-/

namespace A320050.P5716137486735160156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A195861 n : ℚ) * (A001941 n : ℚ)

end

end A320050.P5716137486735160156

/-!
# A320055: Heinz numbers of sum-product knapsack partitions.

The programs for A320055, there is no canonical definition to state claims against.
-/

/-! ## A320055.P8492417084822197285

`lt[A168036(2*n), atan(n)]`
-/

namespace A320055.P8492417084822197285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A320055.P8492417084822197285

/-! ## A320055.P9933219277746507425

`eq[1, round(A129283(n)/(n+1))]`
-/

namespace A320055.P9933219277746507425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129283 n : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320055.P9933219277746507425

/-! ## A320055.P16588329505696157330

`lt[A168036(2*(n+1)), 2]+1`
-/

namespace A320055.P16588329505696157330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320055.P16588329505696157330

/-! ## A320055.P18119784982331389841

`lt[A317846(n+1), n+2]+1`
-/

namespace A320055.P18119784982331389841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317846 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320055.P18119784982331389841

/-! ## A320055.P10646146838334555962

`lt[A003415(n), (n%4+n)/2]`
-/

namespace A320055.P10646146838334555962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 4 + n : ℕ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A320055.P10646146838334555962

/-! ## A320055.P11038703684103192316

`A320056(round(sqrt(n²+1)))+char[1]`
-/

namespace A320055.P11038703684103192316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A320055.P11038703684103192316

/-! ## A320055.P9047769036422841862

`∪[A320056(n+1), A002604(n)]`
-/

namespace A320055.P9047769036422841862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320055.P9047769036422841862

/-! ## A320055.P622178803664082291

`∪[A003064(n), A320056(n+1)]`
-/

namespace A320055.P622178803664082291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320055.P622178803664082291

/-! ## A320055.P7526731832724642670

`∪[A320056(n+1), A007481(n)]`
-/

namespace A320055.P7526731832724642670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320055.P7526731832724642670

/-! ## A320055.P10293761558752982283

`∪[A007484(n), A320056(n+1)]`
-/

namespace A320055.P10293761558752982283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320055.P10293761558752982283

/-!
# A320056: Heinz numbers of product-sum knapsack partitions.

The programs for A320056, there is no canonical definition to state claims against.
-/

/-! ## A320056.P14525234913440763153

`lt[∏{e}[2*n², #]!, 2*n]`
-/

namespace A320056.P14525234913440763153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A320056.P14525234913440763153

/-! ## A320056.P16152905891382024731

`A320055(ceil(cosh(sin(n))+n))`
-/

namespace A320056.P16152905891382024731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A320056.P16152905891382024731

/-! ## A320056.P12656353222212713588

`or(1, A320055(n+2)-1)`
-/

namespace A320056.P12656353222212713588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A320055 (n + 2) - 1)

end

end A320056.P12656353222212713588

/-! ## A320056.P17197012284960030350

`A320055(n+2-floor(acot(n)))`
-/

namespace A320056.P17197012284960030350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A320056.P17197012284960030350

/-! ## A320056.P7975416380799117876

`A320055((n+2)/ceil(acot(n)))`
-/

namespace A320056.P7975416380799117876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A320056.P7975416380799117876

/-! ## A320056.P7407998072802390254

`A320055(C(n+2, ceil(acot(n))))`
-/

namespace A320056.P7407998072802390254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (Nat.choose (n + 2) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat)

end

end A320056.P7407998072802390254

/-! ## A320056.P17638274852717868659

`A320055(ceil(sin(n)²)+n+1)`
-/

namespace A320056.P17638274852717868659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n + 1 : ℤ)).toNat

end

end A320056.P17638274852717868659

/-! ## A320056.P4303497004242443687

`A320055(n+2-C(2, n+2))`
-/

namespace A320056.P4303497004242443687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (n + 2 - Nat.choose 2 (n + 2))

end

end A320056.P4303497004242443687

/-! ## A320056.P17659390515468710118

`∩[2*n+1, A320055(n+1)]`
-/

namespace A320056.P17659390515468710118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320056.P17659390515468710118

/-! ## A320056.P13138959614788183229

`A320055(n+1--1%(n+1))`
-/

namespace A320056.P13138959614788183229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 ((n + 1 : ℤ) - Int.tmod (-1) (n + 1 : ℤ)).toNat

end

end A320056.P13138959614788183229

/-!
# A320057: Heinz numbers of spanning sum-product knapsack partitions.

The programs for A320057, there is no canonical definition to state claims against.
-/

/-! ## A320057.P10536239215983520860

`∩[A320058(n+1), A362622(n+1)]`
-/

namespace A320057.P10536239215983520860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320057.P10536239215983520860

/-! ## A320057.P17131840539434480917

`eq[A015899(n), A082024(A211110(n))]`
-/

namespace A320057.P17131840539434480917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 (A211110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320057.P17131840539434480917

/-! ## A320057.P1536317298211601164

`eq[A082024(A211110(n)), A114099(n)]`
-/

namespace A320057.P1536317298211601164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 (A211110 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320057.P1536317298211601164

/-! ## A320057.P6239957333370330739

`lt[A008620(A094708(n+1)), A126759(n)]`
-/

namespace A320057.P6239957333370330739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A094708 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320057.P6239957333370330739

/-! ## A320057.P10921277962213699528

`lt[A319320(n+1), A001411(A126760(n))]`
-/

namespace A320057.P10921277962213699528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320057.P10921277962213699528

/-!
# A320058: Heinz numbers of spanning product-sum knapsack partitions.

The programs for A320058, there is no canonical definition to state claims against.
-/

/-! ## A320058.P14717986015730206608

`lt[A001838(n+2), A126759(n)^5]`
-/

namespace A320058.P14717986015730206608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P14717986015730206608

/-! ## A320058.P5422475649293904553

`lt[(A247485(n+1)+13)/12, A126759(n)]`
-/

namespace A320058.P5422475649293904553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247485 (n + 1) + 13 : ℚ) / 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A320058.P5422475649293904553

/-! ## A320058.P267437591616240553

`lt[A008611(n), A000292(A126759(n))]`
-/

namespace A320058.P267437591616240553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P267437591616240553

/-! ## A320058.P16499661074832479633

`lt[A133310(n), A002411(A126759(n))]`
-/

namespace A320058.P16499661074832479633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P16499661074832479633

/-! ## A320058.P8291782150251809724

`lt[A065033(n), A212008(A126759(n))]`
-/

namespace A320058.P8291782150251809724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212008 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P8291782150251809724

/-! ## A320058.P621840100038191487

`lt[A008619(A080513(n)), A126759(n)²]`
-/

namespace A320058.P621840100038191487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A080513 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P621840100038191487

/-! ## A320058.P12915727357173284254

`lt[A029742(n+1), A020714(A126759(n))]`
-/

namespace A320058.P12915727357173284254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P12915727357173284254

/-! ## A320058.P5247023847743712391

`lt[A043562(A033075(n+1)), A126759(n)]`
-/

namespace A320058.P5247023847743712391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A033075 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P5247023847743712391

/-! ## A320058.P4856851563022676547

`lt[A057948(n+1), A206399(A126760(n))]`
-/

namespace A320058.P4856851563022676547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206399 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P4856851563022676547

/-! ## A320058.P17194556778967512720

`lt[A329547(n+1), A051927(A126759(n))]`
-/

namespace A320058.P17194556778967512720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320058.P17194556778967512720

/-!
# A320059: Sum of divisors of n^2 that do not divide n.

The programs for A320059, the canonical program `A320059.P12231139820511273363` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320059 has offset 1).

The definition of A320059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320059.P12231139820511273363

`A065764(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320059

/-- `A065764(n+1)-A000203(n+1)` -/
def P12231139820511273363.Spec : Prop :=
  ∀ n, P12231139820511273363.a n = A320059 (n + 1)

theorem P12231139820511273363.correct : P12231139820511273363.Spec := by
  intro n
  simp only [A320059, Nat.add_sub_cancel]

end A320059

/-! ## A320059.P8207187373399775590

`A000203((n+1)²)-A000203(n+1)`
-/

namespace A320059.P8207187373399775590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - A000203 (n + 1)

end

end A320059.P8207187373399775590

namespace A320059

/-- `A000203((n+1)²)-A000203(n+1)` -/
def P8207187373399775590.Spec : Prop :=
  ∀ n, P8207187373399775590.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P3071903016590996807

`A062957(n+1)+n²+n`
-/

namespace A320059.P3071903016590996807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062957 (n + 1) + (n ^ 2 + n : ℤ)

end

end A320059.P3071903016590996807

namespace A320059

/-- `A062957(n+1)+n²+n` -/
def P3071903016590996807.Spec : Prop :=
  ∀ n, P3071903016590996807.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P18060967875638951264

`A334136(n+1)+A086156(n+1)`
-/

namespace A320059.P18060967875638951264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1) + A086156 (n + 1)

end

end A320059.P18060967875638951264

namespace A320059

/-- `A334136(n+1)+A086156(n+1)` -/
def P18060967875638951264.Spec : Prop :=
  ∀ n, P18060967875638951264.a n = A320059 (n + 1)

theorem P18060967875638951264.correct : P18060967875638951264.Spec := by
  intro n
  simp only [A320059, Nat.add_sub_cancel, A320059.P18060967875638951264.a, A320059.P12231139820511273363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065764, A065764.P16236740945723656355.a, A086156, A086156.P763128717936719618.a, A334136, A334136.P7970780228897706429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320059

/-! ## A320059.P446301128576974098

`A239668(n+1)-A023891(n+1)`
-/

namespace A320059.P446301128576974098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239668 (n + 1) - A023891 (n + 1)

end

end A320059.P446301128576974098

namespace A320059

/-- `A239668(n+1)-A023891(n+1)` -/
def P446301128576974098.Spec : Prop :=
  ∀ n, P446301128576974098.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P17831056603602028662

`A065764(n+1)-abs(A143348(n+1))`
-/

namespace A320059.P17831056603602028662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - |A143348 (n + 1)|

end

end A320059.P17831056603602028662

namespace A320059

/-- `A065764(n+1)-abs(A143348(n+1))` -/
def P17831056603602028662.Spec : Prop :=
  ∀ n, P17831056603602028662.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P3150860590004610545

`A065764(n+1)-A245092(2*n+1)`
-/

namespace A320059.P3150860590004610545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - A245092 (2 * n + 1)

end

end A320059.P3150860590004610545

namespace A320059

/-- `A065764(n+1)-A245092(2*n+1)` -/
def P3150860590004610545.Spec : Prop :=
  ∀ n, P3150860590004610545.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P12271640729897830363

`A086156(n+1)+n*A000203(n+1)`
-/

namespace A320059.P12271640729897830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086156 (n + 1) + (n : ℤ) * A000203 (n + 1)

end

end A320059.P12271640729897830363

namespace A320059

/-- `A086156(n+1)+n*A000203(n+1)` -/
def P12271640729897830363.Spec : Prop :=
  ∀ n, P12271640729897830363.a n = A320059 (n + 1)

theorem P12271640729897830363.correct : P12271640729897830363.Spec := by
  intro n
  simp only [A320059, Nat.add_sub_cancel, A320059.P12271640729897830363.a, A320059.P12231139820511273363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065764, A065764.P16236740945723656355.a, A086156, A086156.P763128717936719618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320059

/-! ## A320059.P9876734630933590909

`A000593(n+1)+A065764(n+1)-A054785(n+1)`
-/

namespace A320059.P9876734630933590909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A065764 (n + 1) - A054785 (n + 1))

end

end A320059.P9876734630933590909

namespace A320059

/-- `A000593(n+1)+A065764(n+1)-A054785(n+1)` -/
def P9876734630933590909.Spec : Prop :=
  ∀ n, P9876734630933590909.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P13567515768951691435

`A064987(n+1)+A086156(n+1)-A000203(n+1)`
-/

namespace A320059.P13567515768951691435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) + (A086156 (n + 1) - A000203 (n + 1))

end

end A320059.P13567515768951691435

namespace A320059

/-- `A064987(n+1)+A086156(n+1)-A000203(n+1)` -/
def P13567515768951691435.Spec : Prop :=
  ∀ n, P13567515768951691435.a n = A320059 (n + 1)

theorem P13567515768951691435.correct : P13567515768951691435.Spec := by
  intro n
  simp only [A320059, Nat.add_sub_cancel, A320059.P13567515768951691435.a, A320059.P12231139820511273363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064987, A064987.P14181610018234257040.a, A065764, A065764.P16236740945723656355.a, A086156, A086156.P763128717936719618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A320059

/-! ## A320059.P14972795882299743832

`A350071(n+1)*A350072(n+1)-A000203(n+1)`
-/

namespace A320059.P14972795882299743832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350071 (n + 1) * A350072 (n + 1) - A000203 (n + 1)

end

end A320059.P14972795882299743832

namespace A320059

/-- `A350071(n+1)*A350072(n+1)-A000203(n+1)` -/
def P14972795882299743832.Spec : Prop :=
  ∀ n, P14972795882299743832.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P18176812679173740436

`A065827(n+1)/A057660(n+1)-A000203(n+1)`
-/

namespace A320059.P18176812679173740436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065827 (n + 1) : ℚ) / (A057660 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A320059.P18176812679173740436

namespace A320059

/-- `A065827(n+1)/A057660(n+1)-A000203(n+1)` -/
def P18176812679173740436.Spec : Prop :=
  ∀ n, P18176812679173740436.a n = (A320059 (n + 1) : ℚ)

end A320059

/-! ## A320059.P13453628266864108636

`∑{d}[(n+1)², #]-∑{d}[n+1, #]`
-/

namespace A320059.P13453628266864108636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A320059.P13453628266864108636

namespace A320059

/-- `∑{d}[(n+1)², #]-∑{d}[n+1, #]` -/
def P13453628266864108636.Spec : Prop :=
  ∀ n, P13453628266864108636.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P4910565547948444924

`A000203(∑[2*n+1])-(n+1)-A001065(n+1)`
-/

namespace A320059.P4910565547948444924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ) - A001065 (n + 1)

end

end A320059.P4910565547948444924

namespace A320059

/-- `A000203(∑[2*n+1])-(n+1)-A001065(n+1)` -/
def P4910565547948444924.Spec : Prop :=
  ∀ n, P4910565547948444924.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P6604629784181655192

`A023890((n+1)²)-A023890(n+1)`
-/

namespace A320059.P6604629784181655192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 ((n + 1) ^ 2) - A023890 (n + 1)

end

end A320059.P6604629784181655192

namespace A320059

/-- `A023890((n+1)²)-A023890(n+1)` -/
def P6604629784181655192.Spec : Prop :=
  ∀ n, P6604629784181655192.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P10025085450624419095

`A388994(n+1)-A388994((n+1)²)`
-/

namespace A320059.P10025085450624419095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388994 (n + 1) - A388994 ((n + 1) ^ 2)

end

end A320059.P10025085450624419095

namespace A320059

/-- `A388994(n+1)-A388994((n+1)²)` -/
def P10025085450624419095.Spec : Prop :=
  ∀ n, P10025085450624419095.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P14095511237645687799

`A162296((n+1)²)-A162296(n+1)`
-/

namespace A320059.P14095511237645687799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 ((n + 1) ^ 2) - A162296 (n + 1)

end

end A320059.P14095511237645687799

namespace A320059

/-- `A162296((n+1)²)-A162296(n+1)` -/
def P14095511237645687799.Spec : Prop :=
  ∀ n, P14095511237645687799.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P13148292274616113044

`A326142((n+1)²)-A326142(n+1)`
-/

namespace A320059.P13148292274616113044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 ((n + 1) ^ 2) - A326142 (n + 1)

end

end A320059.P13148292274616113044

namespace A320059

/-- `A326142((n+1)²)-A326142(n+1)` -/
def P13148292274616113044.Spec : Prop :=
  ∀ n, P13148292274616113044.a n = A320059 (n + 1)

end A320059

/-! ## A320059.P18412330678562841656

`A345320((n+1)²)`
-/

namespace A320059.P18412330678562841656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345320 ((n + 1) ^ 2)

end

end A320059.P18412330678562841656

namespace A320059

/-- `A345320((n+1)²)` -/
def P18412330678562841656.Spec : Prop :=
  ∀ n, P18412330678562841656.a n = A320059 (n + 1)

end A320059

/-!
# A320062: Nonprimes with odd digits only.

The programs for A320062, there is no canonical definition to state claims against.
-/

/-! ## A320062.P18082593635501350354

`record[A171435(A014261(n+1))]`
-/

namespace A320062.P18082593635501350354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A014261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320062.P18082593635501350354

/-! ## A320062.P13833170621774931101

`filter[A014261(n+1), A005171(#)]`
-/

namespace A320062.P13833170621774931101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A320062.P13833170621774931101

/-! ## A320062.P7817560942278771799

`filter[A014261(n+1), A292438(#)]`
-/

namespace A320062.P7817560942278771799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A320062.P7817560942278771799

/-! ## A320062.P4697045048206076000

`filter[A275776(2*n+1), A005171(#)]`
-/

namespace A320062.P4697045048206076000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A320062.P4697045048206076000

/-! ## A320062.P10732385293318767605

`filter[A275776(2*n+1), A292438(#)]`
-/

namespace A320062.P10732385293318767605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A320062.P10732385293318767605

/-! ## A320062.P14391618123040971926

`∩[A014076(n+1), A014261(n+1)]`
-/

namespace A320062.P14391618123040971926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P14391618123040971926

/-! ## A320062.P16753075433244360142

`∩[A014261(n+1), A018252(n+1)]`
-/

namespace A320062.P16753075433244360142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P16753075433244360142

/-! ## A320062.P13373694644782438697

`∩[A014076(n+1), A059708(n+1)]`
-/

namespace A320062.P13373694644782438697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P13373694644782438697

/-! ## A320062.P12982300872151190306

`∩[A014261(n+1), A141468(n+1)]`
-/

namespace A320062.P12982300872151190306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P12982300872151190306

/-! ## A320062.P1832328956789456411

`∩[A014261(n+1), A264828(n+1)]`
-/

namespace A320062.P1832328956789456411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P1832328956789456411

/-! ## A320062.P6497753667622613555

`∩[A014261(n+1), A259315(n+1)]`
-/

namespace A320062.P6497753667622613555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P6497753667622613555

/-! ## A320062.P17010989192819938497

`∩[A014261(n+1), A347202(n+1)]`
-/

namespace A320062.P17010989192819938497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P17010989192819938497

/-! ## A320062.P2948663358586164386

`∩[A014261(n+1), A164276(n+1)]`
-/

namespace A320062.P2948663358586164386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P2948663358586164386

/-! ## A320062.P9010798532126682592

`∩[A014261(n+1), A056653(n+1)]`
-/

namespace A320062.P9010798532126682592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P9010798532126682592

/-! ## A320062.P15818320524169523374

`∩[A014261(n+1), A065090(n+1)]`
-/

namespace A320062.P15818320524169523374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320062.P15818320524169523374

/-! ## A320062.P11891835380244964644

`eq[A045843(n), A055671(n)]`
-/

namespace A320062.P11891835380244964644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320062.P11891835380244964644

/-! ## A320062.P16677659821803840995

`eq[A055671(n), A079806(n)]`
-/

namespace A320062.P16677659821803840995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320062.P16677659821803840995

/-! ## A320062.P16511998071304500460

`eq[A055671(n), A196563(n)]`
-/

namespace A320062.P16511998071304500460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320062.P16511998071304500460

/-! ## A320062.P18156156774580651056

`eq[n, A103164(A351744(n))]`
-/

namespace A320062.P18156156774580651056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (A351744 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320062.P18156156774580651056

/-! ## A320062.P1078673533076703695

`eq[A113638(n), A351744(n)]`
-/

namespace A320062.P1078673533076703695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320062.P1078673533076703695

/-!
# A320063: A sequence which changes by one or zero: a(n) = a(n-1-a(a(n-1))) + a(a(a(n-1))) for n > 1, a(n) = n for n < 2.

The programs for A320063, the canonical program `A320063.P1754089844190855022` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320063 has offset 0).

The definition of A320063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(a(n-1)))+a(a(a(n-1)))` (program `A320063.P1754089844190855022`, by `A320063.P1754089844190855022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A320063.P1754089844190855022

`a(n-1-a(a(n-1)))+a(a(a(n-1)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A320063

/-- `a(n-1-a(a(n-1)))+a(a(a(n-1)))` -/
def P1754089844190855022.Spec : Prop :=
  ∀ n, (P1754089844190855022.a n : ℤ) = A320063 n

theorem P1754089844190855022.correct : P1754089844190855022.Spec := by
  intro n
  simp only [A320063]

end A320063

/-! ## A320063.P15488775229875388838

`∑[A112416(∑[A122521(n+1)])]`
-/

namespace A320063.P15488775229875388838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112416 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320063.P15488775229875388838

namespace A320063

/-- `∑[A112416(∑[A122521(n+1)])]` -/
def P15488775229875388838.Spec : Prop :=
  ∀ n, P15488775229875388838.a n = A320063 n

end A320063

/-! ## A320063.P8400889537171817845

`∑[A023971(A027379(5*n+4))]`
-/

namespace A320063.P8400889537171817845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A027379 (5 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320063.P8400889537171817845

namespace A320063

/-- `∑[A023971(A027379(5*n+4))]` -/
def P8400889537171817845.Spec : Prop :=
  ∀ n, P8400889537171817845.a n = A320063 n

end A320063

/-! ## A320063.P10135380502719415399

`∑[A023971(A052905(A016885(n)))]`
-/

namespace A320063.P10135380502719415399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A052905 (A016885 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320063.P10135380502719415399

namespace A320063

/-- `∑[A023971(A052905(A016885(n)))]` -/
def P10135380502719415399.Spec : Prop :=
  ∀ n, P10135380502719415399.a n = A320063 n

end A320063

/-! ## A320063.P8918518377320156015

`∑[A023971(A055998(A016897(n)))]`
-/

namespace A320063.P8918518377320156015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A055998 (A016897 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320063.P8918518377320156015

namespace A320063

/-- `∑[A023971(A055998(A016897(n)))]` -/
def P8918518377320156015.Spec : Prop :=
  ∀ n, P8918518377320156015.a n = A320063 n

end A320063

/-!
# A320064: The number of F_2 graphs on { 1, 2, ..., n } with a unique cycle of weight 1, which corresponds to the number of reflectable bases of the root system of type D_n.

The programs for A320064, there is no canonical definition to state claims against.
-/

/-! ## A320064.P8036712278539362828

`2^(n-1)*A000435(n+1)`
-/

namespace A320064.P8036712278539362828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000435 (n + 1) : ℚ)

end

end A320064.P8036712278539362828

/-! ## A320064.P10820630335424560328

`n*2^(n-1)*A001863(n+1)`
-/

namespace A320064.P10820630335424560328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001863 (n + 1) : ℚ)

end

end A320064.P10820630335424560328

/-! ## A320064.P13834434657392047916

`A000435(n+1)*A011782(n)`
-/

namespace A320064.P13834434657392047916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000435 (n + 1) * A011782 n

end

end A320064.P13834434657392047916

/-! ## A320064.P4801097836410560231

`A000435(n+1)*A131577(n)`
-/

namespace A320064.P4801097836410560231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000435 (n + 1) * A131577 n

end

end A320064.P4801097836410560231

/-! ## A320064.P1873204599923164849

`A000435(n+1)/2*A000079(n)`
-/

namespace A320064.P1873204599923164849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A320064.P1873204599923164849

/-! ## A320064.P8849290074899526798

`n*A001863(n+1)*A011782(n)`
-/

namespace A320064.P8849290074899526798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001863 (n + 1) * A011782 n)

end

end A320064.P8849290074899526798

/-! ## A320064.P16502346268246192859

`(A001580(n)-n²)*A000435(n+1)/2`
-/

namespace A320064.P16502346268246192859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001580 n - (n ^ 2 : ℤ) : ℚ) * ((A000435 (n + 1) : ℚ) / 2)

end

end A320064.P16502346268246192859

/-!
# A320065: a(n) is the smallest integer i such that binomial(2i,i) > n.

The programs for A320065, the canonical program `A320065.P10804250572307599739` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320065 has offset 1).

The definition of A320065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320065.P15773217611946821940

`∑[char[C(2*n, n)-1]]`
-/

namespace A320065.P15773217611946821940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320065.P15773217611946821940

namespace A320065

/-- `∑[char[C(2*n, n)-1]]` -/
def P15773217611946821940.Spec : Prop :=
  ∀ n, (P15773217611946821940.a n : ℤ) = A320065 (n + 1)

end A320065

/-! ## A320065.P17180958083279327169

`ceil(∑[acot(floor(∑[sqrt(gcd(3, n))]))])`
-/

namespace A320065.P17180958083279327169
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 3 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A320065.P17180958083279327169

namespace A320065

/-- `ceil(∑[acot(floor(∑[sqrt(gcd(3, n))]))])` -/
def P17180958083279327169.Spec : Prop :=
  ∀ n, P17180958083279327169.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P2906547764883368299

`floor(2/acot(sqrt(∑[2/(n+5)])))`
-/

namespace A320065.P2906547764883368299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 5 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))⌋

end

end A320065.P2906547764883368299

namespace A320065

/-- `floor(2/acot(sqrt(∑[2/(n+5)])))` -/
def P2906547764883368299.Spec : Prop :=
  ∀ n, P2906547764883368299.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P1906603109460844848

`∑[char[∑[floor((7/2)^n/3)]]]`
-/

namespace A320065.P1906603109460844848
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 2) ^ n / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320065.P1906603109460844848

namespace A320065

/-- `∑[char[∑[floor((7/2)^n/3)]]]` -/
def P1906603109460844848.Spec : Prop :=
  ∀ n, (P1906603109460844848.a n : ℤ) = A320065 (n + 1)

end A320065

/-! ## A320065.P3324927391054113168

`ceil(∑[acot(floor((n+1)*(3-sqrt(3))))])`
-/

namespace A320065.P3324927391054113168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (⌊(n + 1 : ℝ) * (3 - Real.sqrt (3 : ℝ))⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A320065.P3324927391054113168

namespace A320065

/-- `ceil(∑[acot(floor((n+1)*(3-sqrt(3))))])` -/
def P3324927391054113168.Spec : Prop :=
  ∀ n, P3324927391054113168.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P6400865172720413814

`comp[C(2*n, n)-1+n]-n`
-/

namespace A320065.P6400865172720413814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A320065.P6400865172720413814

namespace A320065

/-- `comp[C(2*n, n)-1+n]-n` -/
def P6400865172720413814.Spec : Prop :=
  ∀ n, P6400865172720413814.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P3698094086128616100

`comp[∑[n+1-2*a(n-1)]]-n` with `a(0)=2`
-/

namespace A320065.P3698094086128616100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1 : ℤ) - 2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A320065.P3698094086128616100

namespace A320065

/-- `comp[∑[n+1-2*a(n-1)]]-n` -/
def P3698094086128616100.Spec : Prop :=
  ∀ n, P3698094086128616100.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P7723270682406955058

`comp[∑[n+1-a(n-1)-a(n-1)]]-n` with `a(0)=2`
-/

namespace A320065.P7723270682406955058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1 : ℤ) - f2 (n - 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A320065.P7723270682406955058

namespace A320065

/-- `comp[∑[n+1-a(n-1)-a(n-1)]]-n` -/
def P7723270682406955058.Spec : Prop :=
  ∀ n, P7723270682406955058.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P4755201635344737559

`round(log(A065940(n)))`
-/

namespace A320065.P4755201635344737559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A065940 n : ℝ))

end

end A320065.P4755201635344737559

namespace A320065

/-- `round(log(A065940(n)))` -/
def P4755201635344737559.Spec : Prop :=
  ∀ n, P4755201635344737559.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P9935870273033612595

`round(log2(log2(A103257(n))+2))`
-/

namespace A320065.P9935870273033612595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.logb 2 (A103257 n : ℝ) + 2))

end

end A320065.P9935870273033612595

namespace A320065

/-- `round(log2(log2(A103257(n))+2))` -/
def P9935870273033612595.Spec : Prop :=
  ∀ n, P9935870273033612595.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P11224432810124440731

`∑[char[A030662(n+1)]]+1`
-/

namespace A320065.P11224432810124440731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320065.P11224432810124440731

namespace A320065

/-- `∑[char[A030662(n+1)]]+1` -/
def P11224432810124440731.Spec : Prop :=
  ∀ n, (P11224432810124440731.a n : ℤ) = A320065 (n + 1)

end A320065

/-! ## A320065.P6505411409378803181

`A000193(A065940(n))`
-/

namespace A320065.P6505411409378803181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A065940 n).toNat

end

end A320065.P6505411409378803181

namespace A320065

/-- `A000193(A065940(n))` -/
def P6505411409378803181.Spec : Prop :=
  ∀ n, P6505411409378803181.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P1826634481942964748

`A084558(∑[A043567(n)])`
-/

namespace A320065.P1826634481942964748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320065.P1826634481942964748

namespace A320065

/-- `A084558(∑[A043567(n)])` -/
def P1826634481942964748.Spec : Prop :=
  ∀ n, P1826634481942964748.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P10804250572307599739

`A244160(∑[A267708(n)])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320065

/-- `A244160(∑[A267708(n)])` -/
def P10804250572307599739.Spec : Prop :=
  ∀ n, P10804250572307599739.a n = A320065 (n + 1)

theorem P10804250572307599739.correct : P10804250572307599739.Spec := by
  intro n
  simp only [A320065, Nat.add_sub_cancel]

end A320065

/-! ## A320065.P332689142726986196

`A263297(A344844(n+2))`
-/

namespace A320065.P332689142726986196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A344844 (n + 2)).toNat

end

end A320065.P332689142726986196

namespace A320065

/-- `A263297(A344844(n+2))` -/
def P332689142726986196.Spec : Prop :=
  ∀ n, P332689142726986196.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P1430552072525216037

`A263297(A383174(n+2))`
-/

namespace A320065.P1430552072525216037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A383174 (n + 2)).toNat

end

end A320065.P1430552072525216037

namespace A320065

/-- `A263297(A383174(n+2))` -/
def P1430552072525216037.Spec : Prop :=
  ∀ n, P1430552072525216037.a n = A320065 (n + 1)

end A320065

/-! ## A320065.P7125737066198217726

`∑[char[A026136(A081294(n))+2*n]]+1`
-/

namespace A320065.P7125737066198217726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (A081294 n).toNat + (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320065.P7125737066198217726

namespace A320065

/-- `∑[char[A026136(A081294(n))+2*n]]+1` -/
def P7125737066198217726.Spec : Prop :=
  ∀ n, (P7125737066198217726.a n : ℤ) = A320065 (n + 1)

end A320065

/-! ## A320065.P601106855546136951

`char[A297174(A347633(n+1)+1)]+a(n-1)` with `a(0)=1`
-/

namespace A320065.P601106855546136951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297174 (A347633 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A320065.P601106855546136951

namespace A320065

/-- `char[A297174(A347633(n+1)+1)]+a(n-1)` -/
def P601106855546136951.Spec : Prop :=
  ∀ n, (P601106855546136951.a n : ℤ) = A320065 (n + 1)

end A320065

/-!
# A320066: Numbers k with the property that the symmetric representation of sigma(k) has five parts.

The programs for A320066, there is no canonical definition to state claims against.
-/

/-! ## A320066.P12078359686699412950

`eq[5, A237271(n+1)]+1`
-/

namespace A320066.P12078359686699412950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320066.P12078359686699412950

/-! ## A320066.P1009224229676590803

`eq[5, A237271(A028310(n))]`
-/

namespace A320066.P1009224229676590803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320066.P1009224229676590803

/-! ## A320066.P13448587477917013508

`A020725(eq[5, A237271(n+1)])`
-/

namespace A320066.P13448587477917013508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320066.P13448587477917013508

/-! ## A320066.P447281073411710560

`A065475(eq[5, A237271(n+1)])`
-/

namespace A320066.P447281073411710560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320066.P447281073411710560

/-! ## A320066.P2842761146922855376

`A153152(eq[5, A237271(n+1)])`
-/

namespace A320066.P2842761146922855376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320066.P2842761146922855376

/-! ## A320066.P16641231210891488314

`A181569(eq[5, A237271(n+1)])`
-/

namespace A320066.P16641231210891488314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320066.P16641231210891488314

/-! ## A320066.P7612589597733476213

`eq[5, A237271(A123108(2*n))]`
-/

namespace A320066.P7612589597733476213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320066.P7612589597733476213

/-!
# A320067: Expansion of Product_{k>0} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320067, there is no canonical definition to state claims against.
-/

/-! ## A320067.P41245833615650004

`A250247(A320248(n))`
-/

namespace A320067.P41245833615650004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250247 (A320248 n).toNat

end

end A320067.P41245833615650004

/-! ## A320067.P15163608419382814697

`A320248(n)%A075932(n)`
-/

namespace A320067.P15163608419382814697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320248 n) (A075932 n)

end

end A320067.P15163608419382814697

/-! ## A320067.P10677548963393592309

`A320248(A243836(3*n+1)+n)`
-/

namespace A320067.P10677548963393592309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320248 (A243836 (3 * n + 1) + (n : ℤ)).toNat

end

end A320067.P10677548963393592309

/-! ## A320067.P16864261572139668567

`A320248(n)+C(2, A201463(n+1))`
-/

namespace A320067.P16864261572139668567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320248 n + (Nat.choose 2 (A201463 (n + 1)).toNat : ℤ)

end

end A320067.P16864261572139668567

/-! ## A320067.P15186060783418578835

`A175542(A320247(n))`
-/

namespace A320067.P15186060783418578835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A320247 n).toNat

end

end A320067.P15186060783418578835

/-!
# A320071: Number of length n primitive (=aperiodic or period n) 6-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320071, the canonical program `A320071.P2683966818165125701` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320071 has offset 1).

The definition of A320071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320071.P2683966818165125701

`∑{d}[n+1, A007427(#)*A339686((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320071

/-- `∑{d}[n+1, A007427(#)*A339686((n+1)/#)]` -/
def P2683966818165125701.Spec : Prop :=
  ∀ n, P2683966818165125701.a n = A320071 (n + 1)

theorem P2683966818165125701.correct : P2683966818165125701.Spec := by
  intro n
  simp only [A320071, Nat.add_sub_cancel]

end A320071

/-! ## A320071.P8866559165112124599

`∑{d}[n+1, A008683(#)*A000400((n+1)/#-1)]`
-/

namespace A320071.P8866559165112124599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320071.P8866559165112124599

namespace A320071

/-- `∑{d}[n+1, A008683(#)*A000400((n+1)/#-1)]` -/
def P8866559165112124599.Spec : Prop :=
  ∀ n, P8866559165112124599.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P16810859789115926075

`A054721(n+1)/6`
-/

namespace A320071.P16810859789115926075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 (n + 1) : ℚ) / 6

end

end A320071.P16810859789115926075

namespace A320071

/-- `A054721(n+1)/6` -/
def P16810859789115926075.Spec : Prop :=
  ∀ n, P16810859789115926075.a n = (A320071 (n + 1) : ℚ)

end A320071

/-! ## A320071.P10492219241270437500

`record[A143325(A052905(n))]`
-/

namespace A320071.P10492219241270437500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320071.P10492219241270437500

namespace A320071

/-- `record[A143325(A052905(n))]` -/
def P10492219241270437500.Spec : Prop :=
  ∀ n, P10492219241270437500.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P136541561234640067

`A143325(A052905(n+3))`
-/

namespace A320071.P136541561234640067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 (n + 3)).toNat

end

end A320071.P136541561234640067

namespace A320071

/-- `A143325(A052905(n+3))` -/
def P136541561234640067.Spec : Prop :=
  ∀ n, P136541561234640067.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P8873585918325508181

`record[A143325(A155212(n)+3)]`
-/

namespace A320071.P8873585918325508181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A155212 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320071.P8873585918325508181

namespace A320071

/-- `record[A143325(A155212(n)+3)]` -/
def P8873585918325508181.Spec : Prop :=
  ∀ n, P8873585918325508181.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P9651690650581561779

`record[A143325(abs(1-A046691(n)))]`
-/

namespace A320071.P9651690650581561779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 |1 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320071.P9651690650581561779

namespace A320071

/-- `record[A143325(abs(1-A046691(n)))]` -/
def P9651690650581561779.Spec : Prop :=
  ∀ n, P9651690650581561779.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P3131307881106804604

`A143325(Δ[Δ[A006504(n+1)]])`
-/

namespace A320071.P3131307881106804604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (f1 (n + 1) - f1 n).toNat

end

end A320071.P3131307881106804604

namespace A320071

/-- `A143325(Δ[Δ[A006504(n+1)]])` -/
def P3131307881106804604.Spec : Prop :=
  ∀ n, P3131307881106804604.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P6731308936540069368

`A143325(Δ[A023545(n+2)]-1)`
-/

namespace A320071.P6731308936540069368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (f1 (n + 1) - f1 n - 1).toNat

end

end A320071.P6731308936540069368

namespace A320071

/-- `A143325(Δ[A023545(n+2)]-1)` -/
def P6731308936540069368.Spec : Prop :=
  ∀ n, P6731308936540069368.a n = A320071 (n + 1)

end A320071

/-! ## A320071.P11595266659862533259

`record[A143325(A046691(n+1)-1)]`
-/

namespace A320071.P11595266659862533259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320071.P11595266659862533259

namespace A320071

/-- `record[A143325(A046691(n+1)-1)]` -/
def P11595266659862533259.Spec : Prop :=
  ∀ n, P11595266659862533259.a n = A320071 (n + 1)

end A320071

/-!
# A320072: Number of length n primitive (=aperiodic or period n) 7-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320072, the canonical program `A320072.P6136818762582118294` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320072 has offset 1).

The definition of A320072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320072.P6136818762582118294

`∑{d}[n+1, A007427(#)*A339687((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320072

/-- `∑{d}[n+1, A007427(#)*A339687((n+1)/#)]` -/
def P6136818762582118294.Spec : Prop :=
  ∀ n, P6136818762582118294.a n = A320072 (n + 1)

theorem P6136818762582118294.correct : P6136818762582118294.Spec := by
  intro n
  simp only [A320072, Nat.add_sub_cancel]

end A320072

/-! ## A320072.P17741131334748778345

`∑{d}[n+1, A008683(#)*A000420((n+1)/#-1)]`
-/

namespace A320072.P17741131334748778345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320072.P17741131334748778345

namespace A320072

/-- `∑{d}[n+1, A008683(#)*A000420((n+1)/#-1)]` -/
def P17741131334748778345.Spec : Prop :=
  ∀ n, P17741131334748778345.a n = A320072 (n + 1)

end A320072

/-! ## A320072.P7464707876745986226

`A218124(n+1)/7`
-/

namespace A320072.P7464707876745986226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 (n + 1) : ℚ) / 7

end

end A320072.P7464707876745986226

namespace A320072

/-- `A218124(n+1)/7` -/
def P7464707876745986226.Spec : Prop :=
  ∀ n, P7464707876745986226.a n = (A320072 (n + 1) : ℚ)

end A320072

/-! ## A320072.P5371667987286635485

`A143325(A055999(n+4))`
-/

namespace A320072.P5371667987286635485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A055999 (n + 4)).toNat

end

end A320072.P5371667987286635485

namespace A320072

/-- `A143325(A055999(n+4))` -/
def P5371667987286635485.Spec : Prop :=
  ∀ n, P5371667987286635485.a n = A320072 (n + 1)

end A320072

/-! ## A320072.P1613844520155196463

`A143325(A046691(n+5)-2)`
-/

namespace A320072.P1613844520155196463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A046691 (n + 5) - 2).toNat

end

end A320072.P1613844520155196463

namespace A320072

/-- `A143325(A046691(n+5)-2)` -/
def P1613844520155196463.Spec : Prop :=
  ∀ n, P1613844520155196463.a n = A320072 (n + 1)

end A320072

/-! ## A320072.P18085960774974348574

`A143325(A055998(n+5)-3)`
-/

namespace A320072.P18085960774974348574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A055998 (n + 5) - 3).toNat

end

end A320072.P18085960774974348574

namespace A320072

/-- `A143325(A055998(n+5)-3)` -/
def P18085960774974348574.Spec : Prop :=
  ∀ n, P18085960774974348574.a n = A320072 (n + 1)

end A320072

/-! ## A320072.P423038209151166229

`A143325(A000096(n+6)-5)`
-/

namespace A320072.P423038209151166229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000096 (n + 6) - 5).toNat

end

end A320072.P423038209151166229

namespace A320072

/-- `A143325(A000096(n+6)-5)` -/
def P423038209151166229.Spec : Prop :=
  ∀ n, P423038209151166229.a n = A320072 (n + 1)

end A320072

/-! ## A320072.P13991391514223045756

`A143325(A000217(n+7)-6)`
-/

namespace A320072.P13991391514223045756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000217 (n + 7) - 6).toNat

end

end A320072.P13991391514223045756

namespace A320072

/-- `A143325(A000217(n+7)-6)` -/
def P13991391514223045756.Spec : Prop :=
  ∀ n, P13991391514223045756.a n = A320072 (n + 1)

end A320072

/-!
# A320073: Number of length n primitive (=aperiodic or period n) 8-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320073, the canonical program `A320073.P573126222224900176` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320073 has offset 1).

The definition of A320073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320073.P573126222224900176

`∑{d}[n+1, A007427(#)*A339688((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320073

/-- `∑{d}[n+1, A007427(#)*A339688((n+1)/#)]` -/
def P573126222224900176.Spec : Prop :=
  ∀ n, P573126222224900176.a n = A320073 (n + 1)

theorem P573126222224900176.correct : P573126222224900176.Spec := by
  intro n
  simp only [A320073, Nat.add_sub_cancel]

end A320073

/-! ## A320073.P2429312113540232101

`∑{d}[n+1, A008683(#)*A001018((n+1)/#-1)]`
-/

namespace A320073.P2429312113540232101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A001018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320073.P2429312113540232101

namespace A320073

/-- `∑{d}[n+1, A008683(#)*A001018((n+1)/#-1)]` -/
def P2429312113540232101.Spec : Prop :=
  ∀ n, P2429312113540232101.a n = A320073 (n + 1)

end A320073

/-! ## A320073.P6036430333869056540

`A218125(n+1)/8`
-/

namespace A320073.P6036430333869056540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 (n + 1) : ℚ) / 8

end

end A320073.P6036430333869056540

namespace A320073

/-- `A218125(n+1)/8` -/
def P6036430333869056540.Spec : Prop :=
  ∀ n, P6036430333869056540.a n = (A320073 (n + 1) : ℚ)

end A320073

/-! ## A320073.P2852775540275215000

`A143325(A000124(n+8)-8)`
-/

namespace A320073.P2852775540275215000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000124 (n + 8) - 8).toNat

end

end A320073.P2852775540275215000

namespace A320073

/-- `A143325(A000124(n+8)-8)` -/
def P2852775540275215000.Spec : Prop :=
  ∀ n, P2852775540275215000.a n = A320073 (n + 1)

end A320073

/-! ## A320073.P16875997442010424188

`A143325(n+1+A000217(n+7))`
-/

namespace A320073.P16875997442010424188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 ((n + 1 : ℤ) + A000217 (n + 7)).toNat

end

end A320073.P16875997442010424188

namespace A320073

/-- `A143325(n+1+A000217(n+7))` -/
def P16875997442010424188.Spec : Prop :=
  ∀ n, P16875997442010424188.a n = A320073 (n + 1)

end A320073

/-! ## A320073.P11215431412374901909

`A143325(A184218(n+8)+n+2)`
-/

namespace A320073.P11215431412374901909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A184218 (n + 8) + (n + 2 : ℤ)).toNat

end

end A320073.P11215431412374901909

namespace A320073

/-- `A143325(A184218(n+8)+n+2)` -/
def P11215431412374901909.Spec : Prop :=
  ∀ n, P11215431412374901909.a n = A320073 (n + 1)

end A320073

/-! ## A320073.P13388239409659101446

`A143325(A238531(n+7)+A004275(n+4))`
-/

namespace A320073.P13388239409659101446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A238531 (n + 7) + A004275 (n + 4)).toNat

end

end A320073.P13388239409659101446

namespace A320073

/-- `A143325(A238531(n+7)+A004275(n+4))` -/
def P13388239409659101446.Spec : Prop :=
  ∀ n, P13388239409659101446.a n = A320073 (n + 1)

end A320073

/-!
# A320074: Number of length n primitive (=aperiodic or period n) 9-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320074, the canonical program `A320074.P12082803860178623221` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320074 has offset 1).

The definition of A320074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320074.P12082803860178623221

`∑{d}[n+1, A007427(#)*A339689((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320074

/-- `∑{d}[n+1, A007427(#)*A339689((n+1)/#)]` -/
def P12082803860178623221.Spec : Prop :=
  ∀ n, P12082803860178623221.a n = A320074 (n + 1)

theorem P12082803860178623221.correct : P12082803860178623221.Spec := by
  intro n
  simp only [A320074, Nat.add_sub_cancel]

end A320074

/-! ## A320074.P5329311235804544515

`∑{d}[n+1, A008683(#)*A001019((n+1)/#-1)]`
-/

namespace A320074.P5329311235804544515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A001019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320074.P5329311235804544515

namespace A320074

/-- `∑{d}[n+1, A008683(#)*A001019((n+1)/#-1)]` -/
def P5329311235804544515.Spec : Prop :=
  ∀ n, P5329311235804544515.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P1329031355031309035

`A218126(n+1)/9`
-/

namespace A320074.P1329031355031309035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 (n + 1) : ℚ) / 9

end

end A320074.P1329031355031309035

namespace A320074

/-- `A218126(n+1)/9` -/
def P1329031355031309035.Spec : Prop :=
  ∀ n, P1329031355031309035.a n = (A320074 (n + 1) : ℚ)

end A320074

/-! ## A320074.P1264657626994920688

`A143325(A055998(n+7)-5)`
-/

namespace A320074.P1264657626994920688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A055998 (n + 7) - 5).toNat

end

end A320074.P1264657626994920688

namespace A320074

/-- `A143325(A055998(n+7)-5)` -/
def P1264657626994920688.Spec : Prop :=
  ∀ n, P1264657626994920688.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P9871643610594982133

`A143325(A000124(n+9)-9)`
-/

namespace A320074.P9871643610594982133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000124 (n + 9) - 9).toNat

end

end A320074.P9871643610594982133

namespace A320074

/-- `A143325(A000124(n+9)-9)` -/
def P9871643610594982133.Spec : Prop :=
  ∀ n, P9871643610594982133.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P1032290622321206064

`A143325(A000096(n+7)+n+2)`
-/

namespace A320074.P1032290622321206064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A320074.P1032290622321206064

namespace A320074

/-- `A143325(A000096(n+7)+n+2)` -/
def P1032290622321206064.Spec : Prop :=
  ∀ n, P1032290622321206064.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P4967046091163086959

`A143325(A000217(n+8)+n+1)`
-/

namespace A320074.P4967046091163086959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A320074.P4967046091163086959

namespace A320074

/-- `A143325(A000217(n+8)+n+1)` -/
def P4967046091163086959.Spec : Prop :=
  ∀ n, P4967046091163086959.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P4960650005646513430

`A143325(A167487(n+6)+2*(n+1))`
-/

namespace A320074.P4960650005646513430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A167487 (n + 6) + (2 * (n + 1) : ℤ)).toNat

end

end A320074.P4960650005646513430

namespace A320074

/-- `A143325(A167487(n+6)+2*(n+1))` -/
def P4960650005646513430.Spec : Prop :=
  ∀ n, P4960650005646513430.a n = A320074 (n + 1)

end A320074

/-! ## A320074.P16003157848469291764

`A143325(2*(n+1)+A017053(n+4)+A000124(n))`
-/

namespace A320074.P16003157848469291764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 ((2 * (n + 1) : ℤ) + (A017053 (n + 4) + A000124 n)).toNat

end

end A320074.P16003157848469291764

namespace A320074

/-- `A143325(2*(n+1)+A017053(n+4)+A000124(n))` -/
def P16003157848469291764.Spec : Prop :=
  ∀ n, P16003157848469291764.a n = A320074 (n + 1)

end A320074

/-!
# A320075: Number of length n primitive (=aperiodic or period n) 10-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320075, the canonical program `A320075.P14108991417829388174` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320075 has offset 1).

The definition of A320075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320075.P14128826589273926494

`∑{d}[n+1, A008683(#)*A011557((n+1)/#-1)]`
-/

namespace A320075.P14128826589273926494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A011557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A320075.P14128826589273926494

namespace A320075

/-- `∑{d}[n+1, A008683(#)*A011557((n+1)/#-1)]` -/
def P14128826589273926494.Spec : Prop :=
  ∀ n, P14128826589273926494.a n = A320075 (n + 1)

end A320075

/-! ## A320075.P480675219846118856

`A218127(n+1)/10`
-/

namespace A320075.P480675219846118856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (n + 1) : ℚ) / 10

end

end A320075.P480675219846118856

namespace A320075

/-- `A218127(n+1)/10` -/
def P480675219846118856.Spec : Prop :=
  ∀ n, P480675219846118856.a n = (A320075 (n + 1) : ℚ)

end A320075

/-! ## A320075.P554618758271760951

`record[ratio[A218127(A152271(n))]]`
-/

namespace A320075.P554618758271760951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218127 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320075.P554618758271760951

namespace A320075

/-- `record[ratio[A218127(A152271(n))]]` -/
def P554618758271760951.Spec : Prop :=
  ∀ n, P554618758271760951.a n = (A320075 (n + 1) : ℚ)

end A320075

/-! ## A320075.P10200761868612173835

`record[A218127(A133310(n))/10]`
-/

namespace A320075.P10200761868612173835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (A133310 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320075.P10200761868612173835

namespace A320075

/-- `record[A218127(A133310(n))/10]` -/
def P10200761868612173835.Spec : Prop :=
  ∀ n, P10200761868612173835.a n = (A320075 (n + 1) : ℚ)

end A320075

/-! ## A320075.P14108991417829388174

`∑{d}[n+1, A007427(#)*A113999((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320075

/-- `∑{d}[n+1, A007427(#)*A113999((n+1)/#)]` -/
def P14108991417829388174.Spec : Prop :=
  ∀ n, P14108991417829388174.a n = A320075 (n + 1)

theorem P14108991417829388174.correct : P14108991417829388174.Spec := by
  intro n
  simp only [A320075, Nat.add_sub_cancel]

end A320075

/-! ## A320075.P12844280529521218999

`Δ[∑[A218127(n)]/10]`
-/

namespace A320075.P12844280529521218999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218127 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320075.P12844280529521218999

namespace A320075

/-- `Δ[∑[A218127(n)]/10]` -/
def P12844280529521218999.Spec : Prop :=
  ∀ n, P12844280529521218999.a n = (A320075 (n + 1) : ℚ)

end A320075

/-! ## A320075.P17422374486895318019

`A143325(A056000(n+6)+1)`
-/

namespace A320075.P17422374486895318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A056000 (n + 6) + 1).toNat

end

end A320075.P17422374486895318019

namespace A320075

/-- `A143325(A056000(n+6)+1)` -/
def P17422374486895318019.Spec : Prop :=
  ∀ n, P17422374486895318019.a n = A320075 (n + 1)

end A320075

/-! ## A320075.P17588132216797921118

`A143325(A000217(n+9)+n+1)`
-/

namespace A320075.P17588132216797921118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A320075.P17588132216797921118

namespace A320075

/-- `A143325(A000217(n+9)+n+1)` -/
def P17588132216797921118.Spec : Prop :=
  ∀ n, P17588132216797921118.a n = A320075 (n + 1)

end A320075

/-! ## A320075.P13750231124496132844

`A143325(A184218(n+8)+A016777(n+6))`
-/

namespace A320075.P13750231124496132844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A184218 (n + 8) + A016777 (n + 6)).toNat

end

end A320075.P13750231124496132844

namespace A320075

/-- `A143325(A184218(n+8)+A016777(n+6))` -/
def P13750231124496132844.Spec : Prop :=
  ∀ n, P13750231124496132844.a n = A320075 (n + 1)

end A320075

/-!
# A320078: Expansion of Product_{k>0} theta_3(q^(2*k-1)), where theta_3() is the Jacobi theta function.

The programs for A320078, there is no canonical definition to state claims against.
-/

/-! ## A320078.P1137664019493577756

`abs(A320992(n))`
-/

namespace A320078.P1137664019493577756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320992 n|

end

end A320078.P1137664019493577756

/-! ## A320078.P4065605342654849482

`A033999(n)*A320992(n)`
-/

namespace A320078.P4065605342654849482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A320992 n

end

end A320078.P4065605342654849482

/-! ## A320078.P17509299723281438003

`gcd(A000038(n), A320992(n))`
-/

namespace A320078.P17509299723281438003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A320992 n)

end

end A320078.P17509299723281438003

/-! ## A320078.P14231242310991185309

`lcm(A000034(n), A320992(n))`
-/

namespace A320078.P14231242310991185309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A320992 n)

end

end A320078.P14231242310991185309

/-! ## A320078.P9513083196367107255

`A320098(n)/A320968(n)*A320992(n)`
-/

namespace A320078.P9513083196367107255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320098 n : ℚ) / (A320968 n : ℚ) * (A320992 n : ℚ)

end

end A320078.P9513083196367107255

/-! ## A320078.P16575016609803420418

`A004409(n)/A319553(n)*A320992(n)`
-/

namespace A320078.P16575016609803420418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 n : ℚ) / (A319553 n : ℚ) * (A320992 n : ℚ)

end

end A320078.P16575016609803420418

/-! ## A320078.P12382387239854198965

`A008683(A139899(n+1))^n*A320992(n)`
-/

namespace A320078.P12382387239854198965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139899 (n + 1)).toNat ^ n * A320992 n

end

end A320078.P12382387239854198965

/-!
# A320079: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 + k*log(1 - x)).

The programs for A320079, there is no canonical definition to state claims against.
-/

/-! ## A320079.P18197574999624474396

`A349971(n+1)-A326474(A143632(n))`
-/

namespace A320079.P18197574999624474396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349971 (n + 1) - A326474 (A143632 n).toNat

end

end A320079.P18197574999624474396

/-! ## A320079.P14264453185031429814

`A130573(A396498(n))`
-/

namespace A320079.P14264453185031429814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A396498 n).toNat

end

end A320079.P14264453185031429814

/-! ## A320079.P13959579096726101618

`A294046(n)+A253830(A102480(n))`
-/

namespace A320079.P13959579096726101618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294046 n + A253830 (A102480 n).toNat

end

end A320079.P13959579096726101618

/-! ## A320079.P12753875930960900756

`A349971(n+1)-A034332(A122848(n))`
-/

namespace A320079.P12753875930960900756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349971 (n + 1) - A034332 (A122848 n).toNat

end

end A320079.P12753875930960900756

/-! ## A320079.P6063175837087919961

`A349971(n+1)-A253830(A102480(n))`
-/

namespace A320079.P6063175837087919961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349971 (n + 1) - A253830 (A102480 n).toNat

end

end A320079.P6063175837087919961

/-!
# A320080: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 - k*log(1 + x)).

The programs for A320080, there is no canonical definition to state claims against.
-/

/-! ## A320080.P1728794492367106386

`A322280(n)+A025438(A156953(n))`
-/

namespace A320080.P1728794492367106386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 n + A025438 (A156953 n).toNat

end

end A320080.P1728794492367106386

/-! ## A320080.P10860737015889674661

`A322280(n)+A124762(A351790(n))`
-/

namespace A320080.P10860737015889674661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 n + A124762 (A351790 n).toNat

end

end A320080.P10860737015889674661

/-! ## A320080.P2482549841926846003

`lcm(A098378(A306343(n)), A287316(n))`
-/

namespace A320080.P2482549841926846003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098378 (A306343 n).toNat) (A287316 n)

end

end A320080.P2482549841926846003

/-! ## A320080.P13225601106352050182

`A287316(n)+A091225(A293157(n+4))`
-/

namespace A320080.P13225601106352050182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287316 n + A091225 (A293157 (n + 4)).toNat

end

end A320080.P13225601106352050182

/-! ## A320080.P10596217166553786445

`lcm(A294042(n), A323023(A201811(n+1)))`
-/

namespace A320080.P10596217166553786445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A294042 n) (A323023 (A201811 (n + 1)).toNat)

end

end A320080.P10596217166553786445

/-!
# A320081: Lexicographically earliest sequence of distinct terms such that the cumulative sum [a(1)+a(2)+a(3)+... a(n)] is a multiple of the cumulative sum of the digits used by [a(1)+a(2)+a(3)... +a(n)].

The programs for A320081, there is no canonical definition to state claims against.
-/

/-! ## A320081.P15872063283432978467

`A223081(n+1)%A223087(A193790(n))`
-/

namespace A320081.P15872063283432978467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223081 (n + 1)) (A223087 (A193790 n).toNat)

end

end A320081.P15872063283432978467

/-!
# A320082: Expansion of e.g.f. Sum_{k>=0} log(1 + k*x)^k/k!.

The programs for A320082, there is no canonical definition to state claims against.
-/

/-! ## A320082.P12214531035365149860

`A005097(n+1)-A080099(A138534(n))`
-/

namespace A320082.P12214531035365149860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A080099 (A138534 n).toNat

end

end A320082.P12214531035365149860

/-! ## A320082.P4121721266199063853

`A138529(n+1)-A080099(A138534(n))`
-/

namespace A320082.P4121721266199063853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138529 (n + 1) - A080099 (A138534 n).toNat

end

end A320082.P4121721266199063853

/-!
# A320083: Expansion of e.g.f. Sum_{k>=0} log(1 + k*x)^k.

The programs for A320083, there is no canonical definition to state claims against.
-/

/-! ## A320083.P3803724621115860814

`A220181(n)+A002892(A061396(n))`
-/

namespace A320083.P3803724621115860814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220181 n + A002892 (A061396 n).toNat

end

end A320083.P3803724621115860814

/-!
# A320085: Triangle read by rows, 0 <= k <= n: T(n,k) is the numerator of the derivative of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; denominator is A320086.

The programs for A320085, the canonical program `A320085.P14941602887123033736` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320085 has offset 0).

The definition of A320085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320085.P14941602887123033736

`A141692(n)/gcd(A062383(n), A141692(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A320085

/-- `A141692(n)/gcd(A062383(n), A141692(n))` -/
def P14941602887123033736.Spec : Prop :=
  ∀ n, P14941602887123033736.a n = (A320085 n : ℚ)

end A320085

/-!
# A320087: Number of primitive (=aperiodic) ternary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320087, the canonical program `A320087.P4992698850007107004` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320087 has offset 1).

The definition of A320087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320087.P4992698850007107004

`∑[A034741(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320087

/-- `∑[A034741(n+1)]` -/
def P4992698850007107004.Spec : Prop :=
  ∀ n, P4992698850007107004.a n = A320087 (n + 1)

theorem P4992698850007107004.correct : P4992698850007107004.Spec := by
  intro n
  simp only [A320087, Nat.add_sub_cancel]

end A320087

/-! ## A320087.P1507270960611097711

`∑[2*A056274(n+1)]-1`
-/

namespace A320087.P1507270960611097711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A320087.P1507270960611097711

namespace A320087

/-- `∑[2*A056274(n+1)]-1` -/
def P1507270960611097711.Spec : Prop :=
  ∀ n, P1507270960611097711.a n = A320087 (n + 1)

end A320087

/-! ## A320087.P5174967438942388393

`a(n-1)+(n+1)/3*A027376(n+1)` with `a(0)=1`
-/

namespace A320087.P5174967438942388393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / 3 * (A027376 (n + 1) : ℚ)

end

end A320087.P5174967438942388393

namespace A320087

/-- `a(n-1)+(n+1)/3*A027376(n+1)` -/
def P5174967438942388393.Spec : Prop :=
  ∀ n, P5174967438942388393.a n = (A320087 (n + 1) : ℚ)

end A320087

/-! ## A320087.P815009648609596093

`∑[record[A034741(A117910(n))]]`
-/

namespace A320087.P815009648609596093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034741 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320087.P815009648609596093

namespace A320087

/-- `∑[record[A034741(A117910(n))]]` -/
def P815009648609596093.Spec : Prop :=
  ∀ n, P815009648609596093.a n = A320087 (n + 1)

end A320087

/-! ## A320087.P14873327796898441312

`∑[A054718(n+1)/3]`
-/

namespace A320087.P14873327796898441312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320087.P14873327796898441312

namespace A320087

/-- `∑[A054718(n+1)/3]` -/
def P14873327796898441312.Spec : Prop :=
  ∀ n, P14873327796898441312.a n = (A320087 (n + 1) : ℚ)

end A320087

/-! ## A320087.P13985689352207520517

`∑[record[A034741(A193592(n))]]`
-/

namespace A320087.P13985689352207520517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034741 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320087.P13985689352207520517

namespace A320087

/-- `∑[record[A034741(A193592(n))]]` -/
def P13985689352207520517.Spec : Prop :=
  ∀ n, P13985689352207520517.a n = A320087 (n + 1)

end A320087

/-! ## A320087.P6522079015014048671

`A143327(∑[n+3]+1)`
-/

namespace A320087.P6522079015014048671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320087.P6522079015014048671

namespace A320087

/-- `A143327(∑[n+3]+1)` -/
def P6522079015014048671.Spec : Prop :=
  ∀ n, P6522079015014048671.a n = A320087 (n + 1)

end A320087

/-! ## A320087.P4854792473613075567

`record[A143327(A034856(A126759(n)))]`
-/

namespace A320087.P4854792473613075567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A034856 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320087.P4854792473613075567

namespace A320087

/-- `record[A143327(A034856(A126759(n)))]` -/
def P4854792473613075567.Spec : Prop :=
  ∀ n, P4854792473613075567.a n = A320087 (n + 1)

end A320087

/-!
# A320088: Number of primitive (=aperiodic) 4-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320088, the canonical program `A320088.P9801896306864635147` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320088 has offset 1).

The definition of A320088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320088.P9801896306864635147

`∑[A295505(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A320088

/-- `∑[A295505(n+1)]` -/
def P9801896306864635147.Spec : Prop :=
  ∀ n, P9801896306864635147.a n = A320088 (n + 1)

theorem P9801896306864635147.correct : P9801896306864635147.Spec := by
  intro n
  simp only [A320088, Nat.add_sub_cancel]

end A320088

/-! ## A320088.P8342189100072394210

`∑[A054719(n+1)/4]`
-/

namespace A320088.P8342189100072394210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320088.P8342189100072394210

namespace A320088

/-- `∑[A054719(n+1)/4]` -/
def P8342189100072394210.Spec : Prop :=
  ∀ n, P8342189100072394210.a n = (A320088 (n + 1) : ℚ)

end A320088

/-! ## A320088.P6337832583923446351

`a(n-1)+(n+1)/2*A027377(n+1)/2` with `a(0)=1`
-/

namespace A320088.P6337832583923446351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / 2 * ((A027377 (n + 1) : ℚ) / 2)

end

end A320088.P6337832583923446351

namespace A320088

/-- `a(n-1)+(n+1)/2*A027377(n+1)/2` -/
def P6337832583923446351.Spec : Prop :=
  ∀ n, P6337832583923446351.a n = (A320088 (n + 1) : ℚ)

end A320088

/-! ## A320088.P4659302891695488714

`∑[record[A295505(A133310(n))]]`
-/

namespace A320088.P4659302891695488714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295505 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320088.P4659302891695488714

namespace A320088

/-- `∑[record[A295505(A133310(n))]]` -/
def P4659302891695488714.Spec : Prop :=
  ∀ n, P4659302891695488714.a n = A320088 (n + 1)

end A320088

/-! ## A320088.P501957148899272237

`∑[(n+1)*A027377(n+1)]/4`
-/

namespace A320088.P501957148899272237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027377 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A320088.P501957148899272237

namespace A320088

/-- `∑[(n+1)*A027377(n+1)]/4` -/
def P501957148899272237.Spec : Prop :=
  ∀ n, P501957148899272237.a n = (A320088 (n + 1) : ℚ)

end A320088

/-! ## A320088.P11240974584807311841

`A143327(A055998(n+2))`
-/

namespace A320088.P11240974584807311841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A055998 (n + 2)).toNat

end

end A320088.P11240974584807311841

namespace A320088

/-- `A143327(A055998(n+2))` -/
def P11240974584807311841.Spec : Prop :=
  ∀ n, P11240974584807311841.a n = A320088 (n + 1)

end A320088

/-! ## A320088.P3256100472266370622

`A143327(A155212(n)+5)`
-/

namespace A320088.P3256100472266370622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A155212 n + 5).toNat

end

end A320088.P3256100472266370622

namespace A320088

/-- `A143327(A155212(n)+5)` -/
def P3256100472266370622.Spec : Prop :=
  ∀ n, P3256100472266370622.a n = A320088 (n + 1)

end A320088

/-! ## A320088.P8705302730762249617

`A143327(A052905(n+1)+2)`
-/

namespace A320088.P8705302730762249617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A052905 (n + 1) + 2).toNat

end

end A320088.P8705302730762249617

namespace A320088

/-- `A143327(A052905(n+1)+2)` -/
def P8705302730762249617.Spec : Prop :=
  ∀ n, P8705302730762249617.a n = A320088 (n + 1)

end A320088

/-! ## A320088.P7078495347188236511

`A143327(A000217(n+4)-3)`
-/

namespace A320088.P7078495347188236511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 4) - 3).toNat

end

end A320088.P7078495347188236511

namespace A320088

/-- `A143327(A000217(n+4)-3)` -/
def P7078495347188236511.Spec : Prop :=
  ∀ n, P7078495347188236511.a n = A320088 (n + 1)

end A320088

/-! ## A320088.P8876045947659788027

`A143327(eq[2, A129713(n)]+1)`
-/

namespace A320088.P8876045947659788027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320088.P8876045947659788027

namespace A320088

/-- `A143327(eq[2, A129713(n)]+1)` -/
def P8876045947659788027.Spec : Prop :=
  ∀ n, P8876045947659788027.a n = A320088 (n + 1)

end A320088

/-!
# A320089: Number of primitive (=aperiodic) 5-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320089, the canonical program `A320089.P17205569349605145303` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320089 has offset 1).

The definition of A320089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320089.P17205569349605145303

`∑[A295506(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320089

/-- `∑[A295506(n+1)]` -/
def P17205569349605145303.Spec : Prop :=
  ∀ n, P17205569349605145303.a n = A320089 (n + 1)

theorem P17205569349605145303.correct : P17205569349605145303.Spec := by
  intro n
  simp only [A320089, Nat.add_sub_cancel]

end A320089

/-! ## A320089.P7674958942811349148

`∑[A054720(n+1)/5]`
-/

namespace A320089.P7674958942811349148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320089.P7674958942811349148

namespace A320089

/-- `∑[A054720(n+1)/5]` -/
def P7674958942811349148.Spec : Prop :=
  ∀ n, P7674958942811349148.a n = (A320089 (n + 1) : ℚ)

end A320089

/-! ## A320089.P15050295489737252780

`∑{d}[n+1, A007427(#)*A339685((n+1)/#)]+a(n-1)` with `a(0)=1`
-/

namespace A320089.P15050295489737252780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + a (n - 1)

end

end A320089.P15050295489737252780

namespace A320089

/-- `∑{d}[n+1, A007427(#)*A339685((n+1)/#)]+a(n-1)` -/
def P15050295489737252780.Spec : Prop :=
  ∀ n, P15050295489737252780.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P2900047313045275409

`∑{d}[n+1, A008683(#)*A000351((n+1)/#-1)]+a(n-1)` with `a(0)=1`
-/

namespace A320089.P2900047313045275409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat + a (n - 1)

end

end A320089.P2900047313045275409

namespace A320089

/-- `∑{d}[n+1, A008683(#)*A000351((n+1)/#-1)]+a(n-1)` -/
def P2900047313045275409.Spec : Prop :=
  ∀ n, P2900047313045275409.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P179938065352772458

`A143327(A046691(n+3))`
-/

namespace A320089.P179938065352772458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A046691 (n + 3)).toNat

end

end A320089.P179938065352772458

namespace A320089

/-- `A143327(A046691(n+3))` -/
def P179938065352772458.Spec : Prop :=
  ∀ n, P179938065352772458.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P18246289276107545464

`A143327(Δ[A023545(n+1)])`
-/

namespace A320089.P18246289276107545464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (f1 (n + 1) - f1 n).toNat

end

end A320089.P18246289276107545464

namespace A320089

/-- `A143327(Δ[A023545(n+1)])` -/
def P18246289276107545464.Spec : Prop :=
  ∀ n, P18246289276107545464.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P12498578309310603226

`∑[A143325(Δ[A023545(n+1)])]`
-/

namespace A320089.P12498578309310603226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320089.P12498578309310603226

namespace A320089

/-- `∑[A143325(Δ[A023545(n+1)])]` -/
def P12498578309310603226.Spec : Prop :=
  ∀ n, P12498578309310603226.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P5855855760378998016

`∑[record[A143325(A052905(n)+1)]]`
-/

namespace A320089.P5855855760378998016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320089.P5855855760378998016

namespace A320089

/-- `∑[record[A143325(A052905(n)+1)]]` -/
def P5855855760378998016.Spec : Prop :=
  ∀ n, P5855855760378998016.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P4961283419223279341

`record[A143327(A046691(A133310(n)))]`
-/

namespace A320089.P4961283419223279341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A046691 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320089.P4961283419223279341

namespace A320089

/-- `record[A143327(A046691(A133310(n)))]` -/
def P4961283419223279341.Spec : Prop :=
  ∀ n, P4961283419223279341.a n = A320089 (n + 1)

end A320089

/-! ## A320089.P13228666149515039541

`record[A143327(A038722(A167499(n)))]`
-/

namespace A320089.P13228666149515039541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320089.P13228666149515039541

namespace A320089

/-- `record[A143327(A038722(A167499(n)))]` -/
def P13228666149515039541.Spec : Prop :=
  ∀ n, P13228666149515039541.a n = A320089 (n + 1)

end A320089

/-!
# A320090: Number of primitive (=aperiodic) 6-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320090, the canonical program `A320090.P3982417970067129547` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320090 has offset 1).

The definition of A320090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320090.P3982417970067129547

`∑[A320071(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320090

/-- `∑[A320071(n+1)]` -/
def P3982417970067129547.Spec : Prop :=
  ∀ n, P3982417970067129547.a n = A320090 (n + 1)

theorem P3982417970067129547.correct : P3982417970067129547.Spec := by
  intro n
  simp only [A320090, Nat.add_sub_cancel]

end A320090

/-! ## A320090.P8876309969048379534

`∑[A054721(n+1)/6]`
-/

namespace A320090.P8876309969048379534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054721 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320090.P8876309969048379534

namespace A320090

/-- `∑[A054721(n+1)/6]` -/
def P8876309969048379534.Spec : Prop :=
  ∀ n, P8876309969048379534.a n = (A320090 (n + 1) : ℚ)

end A320090

/-! ## A320090.P7381446692774773037

`A143327(A052905(n+3))`
-/

namespace A320090.P7381446692774773037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A052905 (n + 3)).toNat

end

end A320090.P7381446692774773037

namespace A320090

/-- `A143327(A052905(n+3))` -/
def P7381446692774773037.Spec : Prop :=
  ∀ n, P7381446692774773037.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P4548772581447955977

`∑[record[A143325(A052905(n))]]`
-/

namespace A320090.P4548772581447955977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320090.P4548772581447955977

namespace A320090

/-- `∑[record[A143325(A052905(n))]]` -/
def P4548772581447955977.Spec : Prop :=
  ∀ n, P4548772581447955977.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P14151984185711830363

`A143327(A000217(n+6)-5)`
-/

namespace A320090.P14151984185711830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 6) - 5).toNat

end

end A320090.P14151984185711830363

namespace A320090

/-- `A143327(A000217(n+6)-5)` -/
def P14151984185711830363.Spec : Prop :=
  ∀ n, P14151984185711830363.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P12487537955248252852

`A143327(eq[5, A129713(n)]+1)`
-/

namespace A320090.P12487537955248252852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320090.P12487537955248252852

namespace A320090

/-- `A143327(eq[5, A129713(n)]+1)` -/
def P12487537955248252852.Spec : Prop :=
  ∀ n, P12487537955248252852.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P17016781655032330680

`A143327(Δ[Δ[A006504(n+1)]])`
-/

namespace A320090.P17016781655032330680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (f1 (n + 1) - f1 n).toNat

end

end A320090.P17016781655032330680

namespace A320090

/-- `A143327(Δ[Δ[A006504(n+1)]])` -/
def P17016781655032330680.Spec : Prop :=
  ∀ n, P17016781655032330680.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P16953864335496093379

`A143327(Δ[A023545(n+2)]-1)`
-/

namespace A320090.P16953864335496093379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (f1 (n + 1) - f1 n - 1).toNat

end

end A320090.P16953864335496093379

namespace A320090

/-- `A143327(Δ[A023545(n+2)]-1)` -/
def P16953864335496093379.Spec : Prop :=
  ∀ n, P16953864335496093379.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P6507484219976293447

`∑[A143325(A000124(n+6)-6)]`
-/

namespace A320090.P6507484219976293447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000124 (n + 6) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320090.P6507484219976293447

namespace A320090

/-- `∑[A143325(A000124(n+6)-6)]` -/
def P6507484219976293447.Spec : Prop :=
  ∀ n, P6507484219976293447.a n = A320090 (n + 1)

end A320090

/-! ## A320090.P16762807521119110046

`A143327(A046691(n+3)+n+5)`
-/

namespace A320090.P16762807521119110046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A046691 (n + 3) + (n + 5 : ℤ)).toNat

end

end A320090.P16762807521119110046

namespace A320090

/-- `A143327(A046691(n+3)+n+5)` -/
def P16762807521119110046.Spec : Prop :=
  ∀ n, P16762807521119110046.a n = A320090 (n + 1)

end A320090

/-!
# A320091: Number of primitive (=aperiodic) 7-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320091, the canonical program `A320091.P8454268686105646961` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320091 has offset 1).

The definition of A320091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320091.P8454268686105646961

`∑[A320072(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320091

/-- `∑[A320072(n+1)]` -/
def P8454268686105646961.Spec : Prop :=
  ∀ n, P8454268686105646961.a n = A320091 (n + 1)

theorem P8454268686105646961.correct : P8454268686105646961.Spec := by
  intro n
  simp only [A320091, Nat.add_sub_cancel]

end A320091

/-! ## A320091.P2505321147505729951

`∑[A218124(n+1)/7]`
-/

namespace A320091.P2505321147505729951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320091.P2505321147505729951

namespace A320091

/-- `∑[A218124(n+1)/7]` -/
def P2505321147505729951.Spec : Prop :=
  ∀ n, P2505321147505729951.a n = (A320091 (n + 1) : ℚ)

end A320091

/-! ## A320091.P15113797955848149569

`A143327(A055999(n+4))`
-/

namespace A320091.P15113797955848149569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A055999 (n + 4)).toNat

end

end A320091.P15113797955848149569

namespace A320091

/-- `A143327(A055999(n+4))` -/
def P15113797955848149569.Spec : Prop :=
  ∀ n, P15113797955848149569.a n = A320091 (n + 1)

end A320091

/-! ## A320091.P2679143364412184022

`A143327(A167614(n+6)-9)`
-/

namespace A320091.P2679143364412184022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A167614 (n + 6) - 9).toNat

end

end A320091.P2679143364412184022

namespace A320091

/-- `A143327(A167614(n+6)-9)` -/
def P2679143364412184022.Spec : Prop :=
  ∀ n, P2679143364412184022.a n = A320091 (n + 1)

end A320091

/-! ## A320091.P15424018465702835844

`A143327(A000217(n+6)-A001489(n+1))`
-/

namespace A320091.P15424018465702835844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 6) - A001489 (n + 1)).toNat

end

end A320091.P15424018465702835844

namespace A320091

/-- `A143327(A000217(n+6)-A001489(n+1))` -/
def P15424018465702835844.Spec : Prop :=
  ∀ n, P15424018465702835844.a n = A320091 (n + 1)

end A320091

/-! ## A320091.P4059092205966760793

`A143327(A028347(n+6)-A000217(n+4))`
-/

namespace A320091.P4059092205966760793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A028347 (n + 6) - A000217 (n + 4)).toNat

end

end A320091.P4059092205966760793

namespace A320091

/-- `A143327(A028347(n+6)-A000217(n+4))` -/
def P4059092205966760793.Spec : Prop :=
  ∀ n, P4059092205966760793.a n = A320091 (n + 1)

end A320091

/-!
# A320092: Number of primitive (=aperiodic) 8-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320092, the canonical program `A320092.P5508118192219672210` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320092 has offset 1).

The definition of A320092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320092.P5508118192219672210

`∑[A320073(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320092

/-- `∑[A320073(n+1)]` -/
def P5508118192219672210.Spec : Prop :=
  ∀ n, P5508118192219672210.a n = A320092 (n + 1)

theorem P5508118192219672210.correct : P5508118192219672210.Spec := by
  intro n
  simp only [A320092, Nat.add_sub_cancel]

end A320092

/-! ## A320092.P17076191079923790200

`∑[record[A320073(A117910(n))]]`
-/

namespace A320092.P17076191079923790200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320073 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P17076191079923790200

namespace A320092

/-- `∑[record[A320073(A117910(n))]]` -/
def P17076191079923790200.Spec : Prop :=
  ∀ n, P17076191079923790200.a n = A320092 (n + 1)

end A320092

/-! ## A320092.P7989333487455547870

`∑[record[A320073(A263275(n))]]`
-/

namespace A320092.P7989333487455547870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320073 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P7989333487455547870

namespace A320092

/-- `∑[record[A320073(A263275(n))]]` -/
def P7989333487455547870.Spec : Prop :=
  ∀ n, P7989333487455547870.a n = A320092 (n + 1)

end A320092

/-! ## A320092.P13155172778653507313

`∑[∑{d}[n+1, A008683(#)*A001018((n+1)/#-1)]]`
-/

namespace A320092.P13155172778653507313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A001018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P13155172778653507313

namespace A320092

/-- `∑[∑{d}[n+1, A008683(#)*A001018((n+1)/#-1)]]` -/
def P13155172778653507313.Spec : Prop :=
  ∀ n, P13155172778653507313.a n = A320092 (n + 1)

end A320092

/-! ## A320092.P14581374329227075125

`∑[A218125(n+1)/8]`
-/

namespace A320092.P14581374329227075125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218125 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P14581374329227075125

namespace A320092

/-- `∑[A218125(n+1)/8]` -/
def P14581374329227075125.Spec : Prop :=
  ∀ n, P14581374329227075125.a n = (A320092 (n + 1) : ℚ)

end A320092

/-! ## A320092.P9553427459988368822

`A143327(A000217(n+8)-7)`
-/

namespace A320092.P9553427459988368822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 8) - 7).toNat

end

end A320092.P9553427459988368822

namespace A320092

/-- `A143327(A000217(n+8)-7)` -/
def P9553427459988368822.Spec : Prop :=
  ∀ n, P9553427459988368822.a n = A320092 (n + 1)

end A320092

/-! ## A320092.P15830871074567343819

`A143327(eq[8, A004736(n+1)]+1)`
-/

namespace A320092.P15830871074567343819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320092.P15830871074567343819

namespace A320092

/-- `A143327(eq[8, A004736(n+1)]+1)` -/
def P15830871074567343819.Spec : Prop :=
  ∀ n, P15830871074567343819.a n = A320092 (n + 1)

end A320092

/-! ## A320092.P15268648220939776109

`∑[A143325(A000217(n+7)+n+1)]`
-/

namespace A320092.P15268648220939776109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320092.P15268648220939776109

namespace A320092

/-- `∑[A143325(A000217(n+7)+n+1)]` -/
def P15268648220939776109.Spec : Prop :=
  ∀ n, P15268648220939776109.a n = A320092 (n + 1)

end A320092

/-!
# A320093: Number of primitive (=aperiodic) 9-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320093, the canonical program `A320093.P7933028962227537936` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320093 has offset 1).

The definition of A320093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320093.P7933028962227537936

`∑[A320074(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320093

/-- `∑[A320074(n+1)]` -/
def P7933028962227537936.Spec : Prop :=
  ∀ n, P7933028962227537936.a n = A320093 (n + 1)

theorem P7933028962227537936.correct : P7933028962227537936.Spec := by
  intro n
  simp only [A320093, Nat.add_sub_cancel]

end A320093

/-! ## A320093.P15010937940302736325

`∑[record[A320074(A117910(n))]]`
-/

namespace A320093.P15010937940302736325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320074 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P15010937940302736325

namespace A320093

/-- `∑[record[A320074(A117910(n))]]` -/
def P15010937940302736325.Spec : Prop :=
  ∀ n, P15010937940302736325.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P8920212118237984536

`∑[record[A320074(A126759(n))]]`
-/

namespace A320093.P8920212118237984536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320074 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P8920212118237984536

namespace A320093

/-- `∑[record[A320074(A126759(n))]]` -/
def P8920212118237984536.Spec : Prop :=
  ∀ n, P8920212118237984536.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P15575810717699742468

`∑[record[A320074(A195663(n))]]`
-/

namespace A320093.P15575810717699742468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320074 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P15575810717699742468

namespace A320093

/-- `∑[record[A320074(A195663(n))]]` -/
def P15575810717699742468.Spec : Prop :=
  ∀ n, P15575810717699742468.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P11788332617092068696

`a(n-1)+lcm(A070747(n), A320074(n+1))` with `a(0)=1`
-/

namespace A320093.P11788332617092068696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A070747 n) (A320074 (n + 1))

end

end A320093.P11788332617092068696

namespace A320093

/-- `a(n-1)+lcm(A070747(n), A320074(n+1))` -/
def P11788332617092068696.Spec : Prop :=
  ∀ n, (P11788332617092068696.a n : ℤ) = A320093 (n + 1)

end A320093

/-! ## A320093.P17479705497979798112

`∑[∑{d}[n+1, A008683(#)*A001019((n+1)/#-1)]]`
-/

namespace A320093.P17479705497979798112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A001019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P17479705497979798112

namespace A320093

/-- `∑[∑{d}[n+1, A008683(#)*A001019((n+1)/#-1)]]` -/
def P17479705497979798112.Spec : Prop :=
  ∀ n, P17479705497979798112.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P6312639926996456080

`∑[A218126(n+1)/9]`
-/

namespace A320093.P6312639926996456080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218126 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320093.P6312639926996456080

namespace A320093

/-- `∑[A218126(n+1)/9]` -/
def P6312639926996456080.Spec : Prop :=
  ∀ n, P6312639926996456080.a n = (A320093 (n + 1) : ℚ)

end A320093

/-! ## A320093.P8985052879040130375

`A143327(A155212(n+5))`
-/

namespace A320093.P8985052879040130375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A155212 (n + 5)).toNat

end

end A320093.P8985052879040130375

namespace A320093

/-- `A143327(A155212(n+5))` -/
def P8985052879040130375.Spec : Prop :=
  ∀ n, P8985052879040130375.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P14329489160335790936

`A143327(A000217(n+8)+n+1)`
-/

namespace A320093.P14329489160335790936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A320093.P14329489160335790936

namespace A320093

/-- `A143327(A000217(n+8)+n+1)` -/
def P14329489160335790936.Spec : Prop :=
  ∀ n, P14329489160335790936.a n = A320093 (n + 1)

end A320093

/-! ## A320093.P13719245969881074937

`A143327(2*(n+1)+A017053(n+4)+A000124(n))`
-/

namespace A320093.P13719245969881074937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 ((2 * (n + 1) : ℤ) + (A017053 (n + 4) + A000124 n)).toNat

end

end A320093.P13719245969881074937

namespace A320093

/-- `A143327(2*(n+1)+A017053(n+4)+A000124(n))` -/
def P13719245969881074937.Spec : Prop :=
  ∀ n, P13719245969881074937.a n = A320093 (n + 1)

end A320093

/-!
# A320094: Number of primitive (=aperiodic) 10-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320094, the canonical program `A320094.P14857963571908275776` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320094 has offset 1).

The definition of A320094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320094.P14857963571908275776

`∑[A320075(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A320094

/-- `∑[A320075(n+1)]` -/
def P14857963571908275776.Spec : Prop :=
  ∀ n, P14857963571908275776.a n = A320094 (n + 1)

theorem P14857963571908275776.correct : P14857963571908275776.Spec := by
  intro n
  simp only [A320094, Nat.add_sub_cancel]

end A320094

/-! ## A320094.P1507848412857329749

`∑[A218127(n+1)/10]`
-/

namespace A320094.P1507848412857329749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218127 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P1507848412857329749

namespace A320094

/-- `∑[A218127(n+1)/10]` -/
def P1507848412857329749.Spec : Prop :=
  ∀ n, P1507848412857329749.a n = (A320094 (n + 1) : ℚ)

end A320094

/-! ## A320094.P16187371969238816932

`∑[record[A320075(A137734(n))]]`
-/

namespace A320094.P16187371969238816932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P16187371969238816932

namespace A320094

/-- `∑[record[A320075(A137734(n))]]` -/
def P16187371969238816932.Spec : Prop :=
  ∀ n, P16187371969238816932.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P4974520829214948647

`∑[record[A320075(A193738(n))]]`
-/

namespace A320094.P4974520829214948647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P4974520829214948647

namespace A320094

/-- `∑[record[A320075(A193738(n))]]` -/
def P4974520829214948647.Spec : Prop :=
  ∀ n, P4974520829214948647.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P15594274305267814844

`∑[record[A320075(A195663(n))]]`
-/

namespace A320094.P15594274305267814844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P15594274305267814844

namespace A320094

/-- `∑[record[A320075(A195663(n))]]` -/
def P15594274305267814844.Spec : Prop :=
  ∀ n, P15594274305267814844.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P12929350506812260784

`∑[record[A320075(A263275(n))]]`
-/

namespace A320094.P12929350506812260784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P12929350506812260784

namespace A320094

/-- `∑[record[A320075(A263275(n))]]` -/
def P12929350506812260784.Spec : Prop :=
  ∀ n, P12929350506812260784.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P5062218683544940886

`a(n-1)+A057427(n)*A320075(n+1)` with `a(0)=1`
-/

namespace A320094.P5062218683544940886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A320075 (n + 1)

end

end A320094.P5062218683544940886

namespace A320094

/-- `a(n-1)+A057427(n)*A320075(n+1)` -/
def P5062218683544940886.Spec : Prop :=
  ∀ n, P5062218683544940886.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P12152959293304789912

`A143327(A000217(n+9)+n+1)`
-/

namespace A320094.P12152959293304789912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A320094.P12152959293304789912

namespace A320094

/-- `A143327(A000217(n+9)+n+1)` -/
def P12152959293304789912.Spec : Prop :=
  ∀ n, P12152959293304789912.a n = A320094 (n + 1)

end A320094

/-! ## A320094.P2910200773046775161

`∑[record[A320075(A290097(n))]]`
-/

namespace A320094.P2910200773046775161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320075 (A290097 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320094.P2910200773046775161

namespace A320094

/-- `∑[record[A320075(A290097(n))]]` -/
def P2910200773046775161.Spec : Prop :=
  ∀ n, P2910200773046775161.a n = A320094 (n + 1)

end A320094

/-!
# A320095: Number of primitive (=aperiodic) n-ary words with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A320095, there is no canonical definition to state claims against.
-/

/-! ## A320095.P13852288019056830271

`A143327((n+1)²+n²)`
-/

namespace A320095.P13852288019056830271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 ((n + 1) ^ 2 + n ^ 2)

end

end A320095.P13852288019056830271

/-! ## A320095.P1037688315849465716

`record[A143327(A272267(n+1))]`
-/

namespace A320095.P1037688315849465716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143327 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320095.P1037688315849465716

/-! ## A320095.P4000681828484224705

`record[A003982(n)*A143327(n+1)]`
-/

namespace A320095.P4000681828484224705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A143327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320095.P4000681828484224705

/-! ## A320095.P13795836604619587621

`A014963(10*(n+1))*A143327(A001844(n))`
-/

namespace A320095.P13795836604619587621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A143327 (A001844 n).toNat

end

end A320095.P13795836604619587621

/-! ## A320095.P11052109262641564600

`A007318(C(n+2, 2))*A143327(A001844(n))`
-/

namespace A320095.P11052109262641564600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A143327 (A001844 n).toNat

end

end A320095.P11052109262641564600

/-!
# A320096: a(n) = Sum_{k=1..n} (-1)^(n-k) * Stirling1(n,k) * k! * k^n, with a(0)=1.

The programs for A320096, there is no canonical definition to state claims against.
-/

/-! ## A320096.P16001242554255856806

`A241818(Δ[(n-1)^3])`
-/

namespace A320096.P16001242554255856806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241818 (f1 (n + 1) - f1 n).toNat

end

end A320096.P16001242554255856806

/-!
# A320098: Expansion of Product_{k>0} 1/theta_3(q^(2*k-1)), where theta_3() is the Jacobi theta function.

The programs for A320098, there is no canonical definition to state claims against.
-/

/-! ## A320098.P2999967404992799165

`A033999(n)*A320968(n)`
-/

namespace A320098.P2999967404992799165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A320968 n

end

end A320098.P2999967404992799165

/-! ## A320098.P2978998093799323352

`ratio[A057077(n)]*A320968(n)`
-/

namespace A320098.P2978998093799323352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A320968 n : ℚ)

end

end A320098.P2978998093799323352

/-! ## A320098.P4274951613223071981

`A320968(n)/A033999(n+2)`
-/

namespace A320098.P4274951613223071981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320968 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A320098.P4274951613223071981

/-! ## A320098.P18187185834730032438

`A057077(2*n)*A320968(n)`
-/

namespace A320098.P18187185834730032438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A320968 n

end

end A320098.P18187185834730032438

/-! ## A320098.P7453253939558733656

`∑[A320068(n)]%2*A320968(n)`
-/

namespace A320098.P7453253939558733656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 * A320968 n

end

end A320098.P7453253939558733656

/-! ## A320098.P12121739518091104489

`A152163(Δ[A008619(n)])*A320968(n)`
-/

namespace A320098.P12121739518091104489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (f1 (n + 1) - f1 n).toNat * A320968 n

end

end A320098.P12121739518091104489

/-!
# A320099: Number of no-leaf subgraphs of the 5 X n grid.

The programs for A320099, there is no canonical definition to state claims against.
-/

/-! ## A320099.P13445360520765626897

`record[A320101(A047996(n)+10)]`
-/

namespace A320099.P13445360520765626897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320101 (A047996 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320099.P13445360520765626897

