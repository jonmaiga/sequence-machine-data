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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002000: 

The programs for A002000, there is no canonical definition to state claims against.
-/

/-! ## A002000.P5642321684304158393

`A000032(4*3^n)`
-/

namespace A002000.P5642321684304158393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * 3 ^ n)

end

end A002000.P5642321684304158393

/-!
# A002001: a(n) = 3*4^(n-1), n>0; a(0)=1.

The programs for A002001, the canonical program `A002001.P8458891770848107712` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002001 has offset 0).

The definition of A002001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002001.P8458891770848107712

`4*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002001

/-- `4*a(n-1)` -/
def P8458891770848107712.Spec : Prop :=
  ∀ n, (P8458891770848107712.a n : ℤ) = A002001 n

theorem P8458891770848107712.correct : P8458891770848107712.Spec := by
  intro n
  simp only [A002001]

end A002001

/-! ## A002001.P3012051254348397271

`ceil(3*4^(n-1))`
-/

namespace A002001.P3012051254348397271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002001.P3012051254348397271

namespace A002001

/-- `ceil(3*4^(n-1))` -/
def P3012051254348397271.Spec : Prop :=
  ∀ n, P3012051254348397271.a n = A002001 n

end A002001

/-! ## A002001.P10750209827697559064

`A011782(n)*A003945(n)`
-/

namespace A002001.P10750209827697559064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A003945 n

end

end A002001.P10750209827697559064

namespace A002001

/-- `A011782(n)*A003945(n)` -/
def P10750209827697559064.Spec : Prop :=
  ∀ n, P10750209827697559064.a n = A002001 n

end A002001

/-! ## A002001.P13648638180640640329

`ogf((1-x)/(1-4x))`
-/

namespace A002001.P13648638180640640329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4] n

end

end A002001.P13648638180640640329

namespace A002001

/-- `ogf((1-x)/(1-4x))` -/
def P13648638180640640329.Spec : Prop :=
  ∀ n, P13648638180640640329.a n = A002001 n

end A002001

/-! ## A002001.P10556343169808186839

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A002001.P10556343169808186839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A002001.P10556343169808186839

namespace A002001

/-- `abs(∏[-a(n-1)])` -/
def P10556343169808186839.Spec : Prop :=
  ∀ n, P10556343169808186839.a n = A002001 n

end A002001

/-! ## A002001.P17802525459160406539

`round(record[3*(-2)^(n-2)])`
-/

namespace A002001.P17802525459160406539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A002001.P17802525459160406539

namespace A002001

/-- `round(record[3*(-2)^(n-2)])` -/
def P17802525459160406539.Spec : Prop :=
  ∀ n, P17802525459160406539.a n = A002001 n

end A002001

/-! ## A002001.P7157581964683550832

`a(n-1)/(1/2)²` with `a(0)=1, a(1)=3`
-/

namespace A002001.P7157581964683550832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A002001.P7157581964683550832

namespace A002001

/-- `a(n-1)/(1/2)²` -/
def P7157581964683550832.Spec : Prop :=
  ∀ n, P7157581964683550832.a n = (A002001 n : ℚ)

end A002001

/-! ## A002001.P2949297040434690323

`lcm(4^(n-1), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A002001.P2949297040434690323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A002001.P2949297040434690323

namespace A002001

/-- `lcm(4^(n-1), a(n-1))` -/
def P2949297040434690323.Spec : Prop :=
  ∀ n, (P2949297040434690323.a n : ℤ) = A002001 n

end A002001

/-! ## A002001.P13639560349830485786

`floor(a(n-1)/(1-3/4))` with `a(0)=1, a(1)=3`
-/

namespace A002001.P13639560349830485786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A002001.P13639560349830485786

namespace A002001

/-- `floor(a(n-1)/(1-3/4))` -/
def P13639560349830485786.Spec : Prop :=
  ∀ n, P13639560349830485786.a n = A002001 n

end A002001

/-! ## A002001.P130366311908027899

`a(n-1)+a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A002001.P130366311908027899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 1)))

end

end A002001.P130366311908027899

namespace A002001

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)` -/
def P130366311908027899.Spec : Prop :=
  ∀ n, (P130366311908027899.a n : ℤ) = A002001 n

theorem P130366311908027899.correct : P130366311908027899.Spec := by
  intro n
  simp only [A002001, Nat.add_sub_cancel, A002001.P130366311908027899.a, A002001.P8458891770848107712.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002001

/-! ## A002001.P4793555811164050814

`∑[A055841(n)]`
-/

namespace A002001.P4793555811164050814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002001.P4793555811164050814

namespace A002001

/-- `∑[A055841(n)]` -/
def P4793555811164050814.Spec : Prop :=
  ∀ n, P4793555811164050814.a n = A002001 n

end A002001

/-! ## A002001.P15429064980269112448

`Δ[A123166(n)]`
-/

namespace A002001.P15429064980269112448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002001.P15429064980269112448

namespace A002001

/-- `Δ[A123166(n)]` -/
def P15429064980269112448.Spec : Prop :=
  ∀ n, P15429064980269112448.a n = A002001 n

end A002001

/-! ## A002001.P2275323093417321616

`A134683(2*n)`
-/

namespace A002001.P2275323093417321616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (2 * n)

end

end A002001.P2275323093417321616

namespace A002001

/-- `A134683(2*n)` -/
def P2275323093417321616.Spec : Prop :=
  ∀ n, P2275323093417321616.a n = A002001 n

end A002001

/-! ## A002001.P7011485537932523665

`A122391(Δ[n²])`
-/

namespace A002001.P7011485537932523665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002001.P7011485537932523665

namespace A002001

/-- `A122391(Δ[n²])` -/
def P7011485537932523665.Spec : Prop :=
  ∀ n, P7011485537932523665.a n = A002001 n

end A002001

/-! ## A002001.P17753596103731585191

`Δ[A131577(n)²]`
-/

namespace A002001.P17753596103731585191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002001.P17753596103731585191

namespace A002001

/-- `Δ[A131577(n)²]` -/
def P17753596103731585191.Spec : Prop :=
  ∀ n, P17753596103731585191.a n = A002001 n

end A002001

/-! ## A002001.P16486646095613341818

`∑[∑[A056120(n)]]`
-/

namespace A002001.P16486646095613341818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002001.P16486646095613341818

namespace A002001

/-- `∑[∑[A056120(n)]]` -/
def P16486646095613341818.Spec : Prop :=
  ∀ n, P16486646095613341818.a n = A002001 n

end A002001

/-! ## A002001.P16886559258335440546

`record[∑[A279634(n)]]`
-/

namespace A002001.P16886559258335440546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002001.P16886559258335440546

namespace A002001

/-- `record[∑[A279634(n)]]` -/
def P16886559258335440546.Spec : Prop :=
  ∀ n, P16886559258335440546.a n = A002001 n

end A002001

/-! ## A002001.P17934755695075728414

`Δ[A166444(2*n)]`
-/

namespace A002001.P17934755695075728414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002001.P17934755695075728414

namespace A002001

/-- `Δ[A166444(2*n)]` -/
def P17934755695075728414.Spec : Prop :=
  ∀ n, P17934755695075728414.a n = A002001 n

end A002001

/-! ## A002001.P10492468931443621587

`∑[∑[∑[A118265(n)]]]`
-/

namespace A002001.P10492468931443621587
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002001.P10492468931443621587

namespace A002001

/-- `∑[∑[∑[A118265(n)]]]` -/
def P10492468931443621587.Spec : Prop :=
  ∀ n, P10492468931443621587.a n = A002001 n

end A002001

/-! ## A002001.P5175764516377904574

`A098011(2*(n+1))`
-/

namespace A002001.P5175764516377904574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (2 * (n + 1))

end

end A002001.P5175764516377904574

namespace A002001

/-- `A098011(2*(n+1))` -/
def P5175764516377904574.Spec : Prop :=
  ∀ n, P5175764516377904574.a n = A002001 n

end A002001

/-!
# A002002: a(n) = Sum_{k=0..n-1} binomial(n,k+1) * binomial(n+k,k).

The programs for A002002, the canonical program `A002002.P13046393267194405166` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002002 has offset 0).

The definition of A002002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002002.P14423706802656632266

`floor(A110170(n)/2)`
-/

namespace A002002.P14423706802656632266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110170 n : ℚ) / 2⌋

end

end A002002.P14423706802656632266

namespace A002002

/-- `floor(A110170(n)/2)` -/
def P14423706802656632266.Spec : Prop :=
  ∀ n, P14423706802656632266.a n = A002002 n

end A002002

/-! ## A002002.P17727796115984056613

`floor(A247630(2*n)/2)`
-/

namespace A002002.P17727796115984056613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247630 (2 * n) : ℚ) / 2⌋

end

end A002002.P17727796115984056613

namespace A002002

/-- `floor(A247630(2*n)/2)` -/
def P17727796115984056613.Spec : Prop :=
  ∀ n, P17727796115984056613.a n = A002002 n

end A002002

/-! ## A002002.P18399985063157988623

`∑[A104550(abs(1-n)+1)]-4`
-/

namespace A002002.P18399985063157988623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A002002.P18399985063157988623

namespace A002002

/-- `∑[A104550(abs(1-n)+1)]-4` -/
def P18399985063157988623.Spec : Prop :=
  ∀ n, P18399985063157988623.a n = A002002 n

end A002002

/-! ## A002002.P8635888079710270934

`A026003(comp[2*(n+1)])-floor(acot(n))`
-/

namespace A002002.P8635888079710270934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002002.P8635888079710270934

namespace A002002

/-- `A026003(comp[2*(n+1)])-floor(acot(n))` -/
def P8635888079710270934.Spec : Prop :=
  ∀ n, P8635888079710270934.a n = A002002 n

end A002002

/-! ## A002002.P2903815708415889625

`abs((n/round(sqrt(n²+1)))²*A182626(n))`
-/

namespace A002002.P2903815708415889625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)) ^ 2 * (A182626 n : ℚ)|

end

end A002002.P2903815708415889625

namespace A002002

/-- `abs((n/round(sqrt(n²+1)))²*A182626(n))` -/
def P2903815708415889625.Spec : Prop :=
  ∀ n, P2903815708415889625.a n = (A002002 n : ℚ)

end A002002

/-! ## A002002.P11706359944970228122

`A001850(n)-A123164(n)`
-/

namespace A002002.P11706359944970228122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A123164 n

end

end A002002.P11706359944970228122

namespace A002002

/-- `A001850(n)-A123164(n)` -/
def P11706359944970228122.Spec : Prop :=
  ∀ n, P11706359944970228122.a n = A002002 n

theorem P11706359944970228122.correct : P11706359944970228122.Spec := by
  intro n
  simp only [A002002, Nat.add_sub_cancel, A002002.P11706359944970228122.a, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A001850, A001850.P8225243896153059034.a, A003056, A003056.P5318256527314048597.a, A047665, A047665.P11812153229518684916.a, A123164, A123164.P13278900734001591324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002002

/-! ## A002002.P8859734259360624077

`A262607(n)-A006318(n)`
-/

namespace A002002.P8859734259360624077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262607 n - A006318 n

end

end A002002.P8859734259360624077

namespace A002002

/-- `A262607(n)-A006318(n)` -/
def P8859734259360624077.Spec : Prop :=
  ∀ n, P8859734259360624077.a n = A002002 n

end A002002

/-! ## A002002.P7161258884095848659

`Δ[A047665(log2(A011782(n)))]`
-/

namespace A002002.P7161258884095848659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002002.P7161258884095848659

namespace A002002

/-- `Δ[A047665(log2(A011782(n)))]` -/
def P7161258884095848659.Spec : Prop :=
  ∀ n, P7161258884095848659.a n = A002002 n

end A002002

/-! ## A002002.P5156889753630526053

`Δ[A226994(log2(A011782(n)))]`
-/

namespace A002002.P5156889753630526053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002002.P5156889753630526053

namespace A002002

/-- `Δ[A226994(log2(A011782(n)))]` -/
def P5156889753630526053.Spec : Prop :=
  ∀ n, P5156889753630526053.a n = A002002 n

end A002002

/-! ## A002002.P10288942988926123435

`Δ[A047665(A004273(n)-n)]`
-/

namespace A002002.P10288942988926123435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002002.P10288942988926123435

namespace A002002

/-- `Δ[A047665(A004273(n)-n)]` -/
def P10288942988926123435.Spec : Prop :=
  ∀ n, P10288942988926123435.a n = A002002 n

end A002002

/-! ## A002002.P11941081962647338315

`record[A000035(n)*A026003(n)]`
-/

namespace A002002.P11941081962647338315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A026003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002002.P11941081962647338315

namespace A002002

/-- `record[A000035(n)*A026003(n)]` -/
def P11941081962647338315.Spec : Prop :=
  ∀ n, P11941081962647338315.a n = A002002 n

end A002002

/-! ## A002002.P16263093394037037470

`A262607(n)+A086456(n+1)`
-/

namespace A002002.P16263093394037037470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262607 n + A086456 (n + 1)

end

end A002002.P16263093394037037470

namespace A002002

/-- `A262607(n)+A086456(n+1)` -/
def P16263093394037037470.Spec : Prop :=
  ∀ n, P16263093394037037470.a n = A002002 n

end A002002

/-! ## A002002.P5988413073391570034

`A050146(n+1)-A001850(n)`
-/

namespace A002002.P5988413073391570034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A001850 n

end

end A002002.P5988413073391570034

namespace A002002

/-- `A050146(n+1)-A001850(n)` -/
def P5988413073391570034.Spec : Prop :=
  ∀ n, P5988413073391570034.a n = A002002 n

end A002002

/-! ## A002002.P8206587429090193907

`A262607(n)-A155069(n+1)`
-/

namespace A002002.P8206587429090193907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262607 n - A155069 (n + 1)

end

end A002002.P8206587429090193907

namespace A002002

/-- `A262607(n)-A155069(n+1)` -/
def P8206587429090193907.Spec : Prop :=
  ∀ n, P8206587429090193907.a n = A002002 n

end A002002

/-! ## A002002.P11122062800542272845

`A110110(2*n)-A001850(n)`
-/

namespace A002002.P11122062800542272845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n) - A001850 n

end

end A002002.P11122062800542272845

namespace A002002

/-- `A110110(2*n)-A001850(n)` -/
def P11122062800542272845.Spec : Prop :=
  ∀ n, P11122062800542272845.a n = A002002 n

end A002002

/-! ## A002002.P13046393267194405166

`Δ[A047665(A003056(∑[n]-n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002002

/-- `Δ[A047665(A003056(∑[n]-n))]` -/
def P13046393267194405166.Spec : Prop :=
  ∀ n, P13046393267194405166.a n = A002002 n

theorem P13046393267194405166.correct : P13046393267194405166.Spec := by
  intro n
  simp only [A002002]

end A002002

/-! ## A002002.P6643088309491697375

`A062157(n)²/2*A110170(n)`
-/

namespace A002002.P6643088309491697375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 n ^ 2 : ℚ) / 2 * (A110170 n : ℚ)

end

end A002002.P6643088309491697375

namespace A002002

/-- `A062157(n)²/2*A110170(n)` -/
def P6643088309491697375.Spec : Prop :=
  ∀ n, P6643088309491697375.a n = (A002002 n : ℚ)

end A002002

/-! ## A002002.P7509485107391699625

`A050146(n+1)-A026003(2*n)`
-/

namespace A002002.P7509485107391699625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A026003 (2 * n)

end

end A002002.P7509485107391699625

namespace A002002

/-- `A050146(n+1)-A026003(2*n)` -/
def P7509485107391699625.Spec : Prop :=
  ∀ n, P7509485107391699625.a n = A002002 n

end A002002

/-! ## A002002.P4112618197515218561

`A110110(2*n)-A026003(2*n)`
-/

namespace A002002.P4112618197515218561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n) - A026003 (2 * n)

end

end A002002.P4112618197515218561

namespace A002002

/-- `A110110(2*n)-A026003(2*n)` -/
def P4112618197515218561.Spec : Prop :=
  ∀ n, P4112618197515218561.a n = A002002 n

end A002002

/-!
# A002003: a(n) = 2 * Sum_{k=0..n-1} binomial(n-1, k)*binomial(n+k, k).

The programs for A002003, the canonical program `A002003.P14937103929283769724` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002003 has offset 0).

The definition of A002003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047781, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002003.P14937103929283769724

`2*A047781(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A002003

/-- `2*A047781(n)` -/
def P14937103929283769724.Spec : Prop :=
  ∀ n, P14937103929283769724.a n = A002003 n

theorem P14937103929283769724.correct : P14937103929283769724.Spec := by
  intro n
  simp only [A002003]

end A002003

/-! ## A002003.P2352601613305341702

`A236407(n)-n`
-/

namespace A002003.P2352601613305341702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236407 n - (n : ℤ)

end

end A002003.P2352601613305341702

namespace A002003

/-- `A236407(n)-n` -/
def P2352601613305341702.Spec : Prop :=
  ∀ n, P2352601613305341702.a n = A002003 n

theorem P2352601613305341702.correct : P2352601613305341702.Spec := by
  intro n
  simp only [A002003, Nat.add_sub_cancel, A002003.P2352601613305341702.a, A002003.P14937103929283769724.a, A047781, A047781.P7244301787128564813.a, A236407, A236407.P10884246669097330149.a, A123164, A123164.P13278900734001591324.a, A001850, A001850.P8225243896153059034.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A003056, A003056.P5318256527314048597.a, A047665, A047665.P11812153229518684916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002003

/-! ## A002003.P13898867308447283245

`and(-2, A123164(n))`
-/

namespace A002003.P13898867308447283245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A123164 n)

end

end A002003.P13898867308447283245

namespace A002003

/-- `and(-2, A123164(n))` -/
def P13898867308447283245.Spec : Prop :=
  ∀ n, P13898867308447283245.a n = A002003 n

end A002003

/-! ## A002003.P4045843528300769549

`floor(A241023(n)/2)`
-/

namespace A002003.P4045843528300769549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241023 n : ℚ) / 2⌋

end

end A002003.P4045843528300769549

namespace A002003

/-- `floor(A241023(n)/2)` -/
def P4045843528300769549.Spec : Prop :=
  ∀ n, P4045843528300769549.a n = A002003 n

end A002003

/-! ## A002003.P10637982981024643516

`A123164(n)-A000007(n)`
-/

namespace A002003.P10637982981024643516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - A000007 n

end

end A002003.P10637982981024643516

namespace A002003

/-- `A123164(n)-A000007(n)` -/
def P10637982981024643516.Spec : Prop :=
  ∀ n, P10637982981024643516.a n = A002003 n

end A002003

/-! ## A002003.P12673167929912621051

`lcm(A047781(n), A123164(n))`
-/

namespace A002003.P12673167929912621051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047781 n) (A123164 n)

end

end A002003.P12673167929912621051

namespace A002003

/-- `lcm(A047781(n), A123164(n))` -/
def P12673167929912621051.Spec : Prop :=
  ∀ n, (P12673167929912621051.a n : ℤ) = A002003 n

end A002003

/-! ## A002003.P6607991070832277109

`A050147(n+1)-A050146(n)`
-/

namespace A002003.P6607991070832277109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050147 (n + 1) - A050146 n

end

end A002003.P6607991070832277109

namespace A002003

/-- `A050147(n+1)-A050146(n)` -/
def P6607991070832277109.Spec : Prop :=
  ∀ n, P6607991070832277109.a n = A002003 n

theorem P6607991070832277109.correct : P6607991070832277109.Spec := by
  intro n
  simp only [A002003, Nat.add_sub_cancel, A002003.P6607991070832277109.a, A002003.P14937103929283769724.a, A047781, A047781.P7244301787128564813.a, A050146, A050146.P3244852620839180404.a, A050147, A050147.P8341301809192982572.a, A028310, A028310.P18130301328277559831.a, A123164, A123164.P13278900734001591324.a, A155069, A155069.P2113503701719238828.a, A001850, A001850.P8225243896153059034.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A086456, A086456.P993740706458250984.a, A003056, A003056.P5318256527314048597.a, A047665, A047665.P11812153229518684916.a, A063524, A063524.P5631347671191003537.a, A085403, A085403.P17921680985737888414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002003

/-! ## A002003.P17409730103280738562

`A050146(n+1)-A110170(n)`
-/

namespace A002003.P17409730103280738562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A110170 n

end

end A002003.P17409730103280738562

namespace A002003

/-- `A050146(n+1)-A110170(n)` -/
def P17409730103280738562.Spec : Prop :=
  ∀ n, P17409730103280738562.a n = A002003 n

end A002003

/-! ## A002003.P4239724960165523661

`2*(A001850(n)-A176479(n))`
-/

namespace A002003.P4239724960165523661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001850 n - A176479 n)

end

end A002003.P4239724960165523661

namespace A002003

/-- `2*(A001850(n)-A176479(n))` -/
def P4239724960165523661.Spec : Prop :=
  ∀ n, P4239724960165523661.a n = A002003 n

end A002003

/-! ## A002003.P10043333157372974108

`A001850(n)-or(1, A002002(n))`
-/

namespace A002003.P10043333157372974108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - Int.lor 1 (A002002 n)

end

end A002003.P10043333157372974108

namespace A002003

/-- `A001850(n)-or(1, A002002(n))` -/
def P10043333157372974108.Spec : Prop :=
  ∀ n, P10043333157372974108.a n = A002003 n

end A002003

/-! ## A002003.P116860369770778964

`A123164(n)+n-A028310(n)`
-/

namespace A002003.P116860369770778964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + ((n : ℤ) - A028310 n)

end

end A002003.P116860369770778964

namespace A002003

/-- `A123164(n)+n-A028310(n)` -/
def P116860369770778964.Spec : Prop :=
  ∀ n, P116860369770778964.a n = A002003 n

end A002003

/-! ## A002003.P8521840648212250721

`A123164(n)+abs(A280560(n))-2`
-/

namespace A002003.P8521840648212250721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + (|A280560 n| - 2)

end

end A002003.P8521840648212250721

namespace A002003

/-- `A123164(n)+abs(A280560(n))-2` -/
def P8521840648212250721.Spec : Prop :=
  ∀ n, P8521840648212250721.a n = A002003 n

end A002003

/-! ## A002003.P16382411127037136808

`A123164(n)-A039974(2*n+1)`
-/

namespace A002003.P16382411127037136808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - A039974 (2 * n + 1)

end

end A002003.P16382411127037136808

namespace A002003

/-- `A123164(n)-A039974(2*n+1)` -/
def P16382411127037136808.Spec : Prop :=
  ∀ n, P16382411127037136808.a n = A002003 n

end A002003

/-! ## A002003.P15674671250352377278

`A050146(n+1)-A247630(2*n)`
-/

namespace A002003.P15674671250352377278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A247630 (2 * n)

end

end A002003.P15674671250352377278

namespace A002003

/-- `A050146(n+1)-A247630(2*n)` -/
def P15674671250352377278.Spec : Prop :=
  ∀ n, P15674671250352377278.a n = A002003 n

end A002003

/-! ## A002003.P17748870784784540122

`A110110(2*n)-A247630(2*n)`
-/

namespace A002003.P17748870784784540122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n) - A247630 (2 * n)

end

end A002003.P17748870784784540122

namespace A002003

/-- `A110110(2*n)-A247630(2*n)` -/
def P17748870784784540122.Spec : Prop :=
  ∀ n, P17748870784784540122.a n = A002003 n

end A002003

/-! ## A002003.P9034887571724784141

`A110110(A004273(n))-A000007(n)`
-/

namespace A002003.P9034887571724784141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004273 n).toNat - A000007 n

end

end A002003.P9034887571724784141

namespace A002003

/-- `A110110(A004273(n))-A000007(n)` -/
def P9034887571724784141.Spec : Prop :=
  ∀ n, P9034887571724784141.a n = A002003 n

end A002003

/-! ## A002003.P17085816854148167366

`A001221(A001316(n))*A123164(n)`
-/

namespace A002003.P17085816854148167366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A123164 n

end

end A002003.P17085816854148167366

namespace A002003

/-- `A001221(A001316(n))*A123164(n)` -/
def P17085816854148167366.Spec : Prop :=
  ∀ n, P17085816854148167366.a n = A002003 n

end A002003

/-! ## A002003.P5798086110022999204

`A020639(A005893(n))+A123164(n)-2`
-/

namespace A002003.P5798086110022999204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005893 n).toNat + (A123164 n - 2)

end

end A002003.P5798086110022999204

namespace A002003

/-- `A020639(A005893(n))+A123164(n)-2` -/
def P5798086110022999204.Spec : Prop :=
  ∀ n, P5798086110022999204.a n = A002003 n

end A002003

/-! ## A002003.P6105936388259949654

`A000007(n+1)+A047781(n)+A047781(n)`
-/

namespace A002003.P6105936388259949654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A047781 n + A047781 n)

end

end A002003.P6105936388259949654

namespace A002003

/-- `A000007(n+1)+A047781(n)+A047781(n)` -/
def P6105936388259949654.Spec : Prop :=
  ∀ n, P6105936388259949654.a n = A002003 n

theorem P6105936388259949654.correct : P6105936388259949654.Spec := by
  intro n
  simp only [A002003, Nat.add_sub_cancel, A002003.P6105936388259949654.a, A002003.P14937103929283769724.a, A000007, A000007.P6599383543502402472.a, A047781, A047781.P7244301787128564813.a, A123164, A123164.P13278900734001591324.a, A001850, A001850.P8225243896153059034.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A003056, A003056.P5318256527314048597.a, A047665, A047665.P11812153229518684916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002003

/-!
# A002004: Davenport-Schinzel numbers of degree 4 on n symbols.

The programs for A002004, there is no canonical definition to state claims against.
-/

/-! ## A002004.P843450989462927921

`floor(root(A194721(n+1), 7))`
-/

namespace A002004.P843450989462927921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194721 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A002004.P843450989462927921

/-! ## A002004.P12953924362926063182

`floor(A212458(3*n+2)/17)`
-/

namespace A002004.P12953924362926063182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212458 (3 * n + 2) : ℚ) / 17⌋

end

end A002004.P12953924362926063182

/-! ## A002004.P4307450004344108913

`ceil(∑[ratio[A001190(2*n+1)]])`
-/

namespace A002004.P4307450004344108913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A002004.P4307450004344108913

/-! ## A002004.P5000487364443527564

`∑[A084506(A298420(n)²)]`
-/

namespace A002004.P5000487364443527564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A298420 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002004.P5000487364443527564

/-! ## A002004.P13939617313786356531

`3*n+A057354(A198759(n))+1`
-/

namespace A002004.P13939617313786356531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A057354 (A198759 n).toNat + 1)

end

end A002004.P13939617313786356531

/-!
# A002005: Number of rooted planar cubic maps with 2n vertices.

The programs for A002005, the canonical program `A002005.P10141232297701115592` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002005 has offset 0).

The definition of A002005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002005.P14544376785911181523

`A358367(n)/A000217(n+1)`
-/

namespace A002005.P14544376785911181523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358367 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A002005.P14544376785911181523

namespace A002005

/-- `A358367(n)/A000217(n+1)` -/
def P14544376785911181523.Spec : Prop :=
  ∀ n, P14544376785911181523.a n = (A002005 n : ℚ)

end A002005

/-! ## A002005.P10141232297701115592

`2^(2*n+1)*A006882(3*n)/((n+2)!*A006882(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002005

/-- `2^(2*n+1)*A006882(3*n)/((n+2)!*A006882(n))` -/
def P10141232297701115592.Spec : Prop :=
  ∀ n, P10141232297701115592.a n = (A002005 n : ℚ)

end A002005

/-! ## A002005.P13716248677284788355

`A266240(A024206(n+1))`
-/

namespace A002005.P13716248677284788355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A024206 (n + 1)).toNat

end

end A002005.P13716248677284788355

namespace A002005

/-- `A266240(A024206(n+1))` -/
def P13716248677284788355.Spec : Prop :=
  ∀ n, P13716248677284788355.a n = A002005 n

end A002005

/-! ## A002005.P17101053105425885348

`A266240(A002620(n)+n)`
-/

namespace A002005.P17101053105425885348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A002620 n + (n : ℤ)).toNat

end

end A002005.P17101053105425885348

namespace A002005

/-- `A266240(A002620(n)+n)` -/
def P17101053105425885348.Spec : Prop :=
  ∀ n, P17101053105425885348.a n = A002005 n

end A002005

/-! ## A002005.P127451466657592144

`A266240(A087811(n+1)-1)`
-/

namespace A002005.P127451466657592144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A087811 (n + 1) - 1).toNat

end

end A002005.P127451466657592144

namespace A002005

/-- `A266240(A087811(n+1)-1)` -/
def P127451466657592144.Spec : Prop :=
  ∀ n, P127451466657592144.a n = A002005 n

end A002005

/-! ## A002005.P14212033728684030016

`A266240(eq[1, A208753(n+1)])`
-/

namespace A002005.P14212033728684030016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002005.P14212033728684030016

namespace A002005

/-- `A266240(eq[1, A208753(n+1)])` -/
def P14212033728684030016.Spec : Prop :=
  ∀ n, P14212033728684030016.a n = A002005 n

end A002005

/-! ## A002005.P7033561007185579970

`A266240(Δ[A266464(n+1)]-2)`
-/

namespace A002005.P7033561007185579970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (f1 (n + 1) - f1 n - 2).toNat

end

end A002005.P7033561007185579970

namespace A002005

/-- `A266240(Δ[A266464(n+1)]-2)` -/
def P7033561007185579970.Spec : Prop :=
  ∀ n, P7033561007185579970.a n = A002005 n

end A002005

/-! ## A002005.P7919513943689499258

`A266240(record[n/A208753(n+1)])`
-/

namespace A002005.P7919513943689499258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A208753 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A002005.P7919513943689499258

namespace A002005

/-- `A266240(record[n/A208753(n+1)])` -/
def P7919513943689499258.Spec : Prop :=
  ∀ n, P7919513943689499258.a n = A002005 n

end A002005

/-! ## A002005.P1955437030490707696

`record[root(A266240(n), A208753(n+1))]`
-/

namespace A002005.P1955437030490707696
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266240 n : ℝ) ^ (1 / (A208753 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002005.P1955437030490707696

namespace A002005

/-- `record[root(A266240(n), A208753(n+1))]` -/
def P1955437030490707696.Spec : Prop :=
  ∀ n, P1955437030490707696.a n = (A002005 n : ℝ)

end A002005

/-!
# A002006: Almost trivalent maps.

The programs for A002006, there is no canonical definition to state claims against.
-/

/-! ## A002006.P14324434928329364682

`Δ[A002005(n)]-A002005(n)`
-/

namespace A002006.P14324434928329364682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002005 n

end

end A002006.P14324434928329364682

/-! ## A002006.P2854081906013505443

`A002005(n+1)-2*A002005(n)`
-/

namespace A002006.P2854081906013505443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002005 (n + 1) - 2 * A002005 n

end

end A002006.P2854081906013505443

/-!
# A002011: a(n) = 4*(2n+1)!/n!^2.

The programs for A002011, the canonical program `A002011.P2253550494180111135` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002011 has offset 0).

The definition of A002011 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002011.anchor (n : ℕ) : (A002011 n : ℚ) = (4 * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ)` in `Proof.A002.A002011`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002011.P2253550494180111135

`4*(2*n+1)!/n!²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002011

/-- `4*(2*n+1)!/n!²` -/
def P2253550494180111135.Spec : Prop :=
  ∀ n, P2253550494180111135.a n = (A002011 n : ℚ)

end A002011

/-! ## A002011.P14644294192568159349

`(2/n+4)*a(n-1)` with `a(0)=4`
-/

namespace A002011.P14644294192568159349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (2 / (n : ℚ) + 4) * a (n - 1)

end

end A002011.P14644294192568159349

namespace A002011

/-- `(2/n+4)*a(n-1)` -/
def P14644294192568159349.Spec : Prop :=
  ∀ n, P14644294192568159349.a n = (A002011 n : ℚ)

end A002011

/-! ## A002011.P13532618525939735765

`a(n-1)/n*Δ[n*2*n]` with `a(0)=4`
-/

namespace A002011.P13532618525939735765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / (n : ℚ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A002011.P13532618525939735765

namespace A002011

/-- `a(n-1)/n*Δ[n*2*n]` -/
def P13532618525939735765.Spec : Prop :=
  ∀ n, P13532618525939735765.a n = (A002011 n : ℚ)

end A002011

/-! ## A002011.P10559181442188591584

`record[-(n*a(n-1)/floor(n/2))]` with `a(0)=4, a(1)=4`
-/

namespace A002011.P10559181442188591584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  -((n : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002011.P10559181442188591584

namespace A002011

/-- `record[-(n*a(n-1)/floor(n/2))]` -/
def P10559181442188591584.Spec : Prop :=
  ∀ n, P10559181442188591584.a n = (A002011 n : ℚ)

end A002011

/-! ## A002011.P14539002124201479090

`4*(n+1)*∏[4-2/(n+1)]/2`
-/

namespace A002011.P14539002124201479090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2))

end

end A002011.P14539002124201479090

namespace A002011

/-- `4*(n+1)*∏[4-2/(n+1)]/2` -/
def P14539002124201479090.Spec : Prop :=
  ∀ n, P14539002124201479090.a n = (A002011 n : ℚ)

end A002011

/-! ## A002011.P5341797702109221450

`A152548(Δ[n²])`
-/

namespace A002011.P5341797702109221450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002011.P5341797702109221450

namespace A002011

/-- `A152548(Δ[n²])` -/
def P5341797702109221450.Spec : Prop :=
  ∀ n, P5341797702109221450.a n = A002011 n

end A002011

/-! ## A002011.P13130071181658124903

`record[Δ[A056040(n+2)]]`
-/

namespace A002011.P13130071181658124903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002011.P13130071181658124903

namespace A002011

/-- `record[Δ[A056040(n+2)]]` -/
def P13130071181658124903.Spec : Prop :=
  ∀ n, P13130071181658124903.a n = A002011 n

end A002011

/-! ## A002011.P15991467561850575655

`lcm(2, A152548(2*n+1))`
-/

namespace A002011.P15991467561850575655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A152548 (2 * n + 1))

end

end A002011.P15991467561850575655

namespace A002011

/-- `lcm(2, A152548(2*n+1))` -/
def P15991467561850575655.Spec : Prop :=
  ∀ n, (P15991467561850575655.a n : ℤ) = A002011 n

end A002011

/-! ## A002011.P5282243172907475495

`abs(2*A331552(2*n+1))`
-/

namespace A002011.P5282243172907475495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A331552 (2 * n + 1)|

end

end A002011.P5282243172907475495

namespace A002011

/-- `abs(2*A331552(2*n+1))` -/
def P5282243172907475495.Spec : Prop :=
  ∀ n, P5282243172907475495.a n = A002011 n

end A002011

/-! ## A002011.P17162948933385894220

`∑[(n+1)*A028283(n+1)]`
-/

namespace A002011.P17162948933385894220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002011.P17162948933385894220

namespace A002011

/-- `∑[(n+1)*A028283(n+1)]` -/
def P17162948933385894220.Spec : Prop :=
  ∀ n, P17162948933385894220.a n = A002011 n

end A002011

/-! ## A002011.P9582891071723807969

`A038602(n)+A029760(n)`
-/

namespace A002011.P9582891071723807969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038602 n + A029760 n

end

end A002011.P9582891071723807969

namespace A002011

/-- `A038602(n)+A029760(n)` -/
def P9582891071723807969.Spec : Prop :=
  ∀ n, P9582891071723807969.a n = A002011 n

end A002011

/-! ## A002011.P10056826453818794267

`A257589(n)+A033876(n)`
-/

namespace A002011.P10056826453818794267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257589 n + A033876 n

end

end A002011.P10056826453818794267

namespace A002011

/-- `A257589(n)+A033876(n)` -/
def P10056826453818794267.Spec : Prop :=
  ∀ n, P10056826453818794267.a n = A002011 n

end A002011

/-! ## A002011.P1770610182171782910

`lcm(A001700(n), A240530(n))`
-/

namespace A002011.P1770610182171782910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001700 n) (A240530 n)

end

end A002011.P1770610182171782910

namespace A002011

/-- `lcm(A001700(n), A240530(n))` -/
def P1770610182171782910.Spec : Prop :=
  ∀ n, (P1770610182171782910.a n : ℤ) = A002011 n

end A002011

/-! ## A002011.P1824859642253007933

`A001791(n+1)+A000917(n)`
-/

namespace A002011.P1824859642253007933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + A000917 n

end

end A002011.P1824859642253007933

namespace A002011

/-- `A001791(n+1)+A000917(n)` -/
def P1824859642253007933.Spec : Prop :=
  ∀ n, P1824859642253007933.a n = A002011 n

end A002011

/-! ## A002011.P12348832723030212857

`A002457(n+1)-A000984(n+1)`
-/

namespace A002011.P12348832723030212857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A000984 (n + 1)

end

end A002011.P12348832723030212857

namespace A002011

/-- `A002457(n+1)-A000984(n+1)` -/
def P12348832723030212857.Spec : Prop :=
  ∀ n, P12348832723030212857.a n = A002011 n

end A002011

/-! ## A002011.P12497206112131701987

`A005430(n+1)+2*A002457(n)`
-/

namespace A002011.P12497206112131701987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 (n + 1) + 2 * A002457 n

end

end A002011.P12497206112131701987

namespace A002011

/-- `A005430(n+1)+2*A002457(n)` -/
def P12497206112131701987.Spec : Prop :=
  ∀ n, P12497206112131701987.a n = A002011 n

end A002011

/-! ## A002011.P4259516794425820877

`A002457(n+1)-2*A001700(n)`
-/

namespace A002011.P4259516794425820877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - 2 * A001700 n

end

end A002011.P4259516794425820877

namespace A002011

/-- `A002457(n+1)-2*A001700(n)` -/
def P4259516794425820877.Spec : Prop :=
  ∀ n, P4259516794425820877.a n = A002011 n

end A002011

/-! ## A002011.P9566937926542126891

`A088662(2*n+1)+A005430(n+1)`
-/

namespace A002011.P9566937926542126891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088662 (2 * n + 1) + A005430 (n + 1)

end

end A002011.P9566937926542126891

namespace A002011

/-- `A088662(2*n+1)+A005430(n+1)` -/
def P9566937926542126891.Spec : Prop :=
  ∀ n, P9566937926542126891.a n = A002011 n

end A002011

/-! ## A002011.P10082479461232118884

`A305612(2*n+1)+A001405(2*n)`
-/

namespace A002011.P10082479461232118884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 (2 * n + 1) + A001405 (2 * n)

end

end A002011.P10082479461232118884

namespace A002011

/-- `A305612(2*n+1)+A001405(2*n)` -/
def P10082479461232118884.Spec : Prop :=
  ∀ n, P10082479461232118884.a n = A002011 n

end A002011

/-! ## A002011.P14844813806204235644

`A305612(2*n+1)+A063886(2*n)`
-/

namespace A002011.P14844813806204235644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305612 (2 * n + 1) + A063886 (2 * n)

end

end A002011.P14844813806204235644

namespace A002011

/-- `A305612(2*n+1)+A063886(2*n)` -/
def P14844813806204235644.Spec : Prop :=
  ∀ n, P14844813806204235644.a n = A002011 n

end A002011

/-!
# A002012: Number of rooted planar maps with three trivalent vertices and a root vertex of degree 2*n - 1.

The programs for A002012, the canonical program `A002012.P2976292898116930831` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002012 has offset 0).

The definition of A002012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002012.P2976292898116930831

`2*(n+3)*(2*(n+1))!/(3*n!*(n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002012

/-- `2*(n+3)*(2*(n+1))!/(3*n!*(n+1)!)` -/
def P2976292898116930831.Spec : Prop :=
  ∀ n, P2976292898116930831.a n = (A002012 n : ℚ)

end A002012

/-! ## A002012.P16940497337716767658

`4*A328002(2*n)`
-/

namespace A002012.P16940497337716767658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A328002 (2 * n)

end

end A002012.P16940497337716767658

namespace A002012

/-- `4*A328002(2*n)` -/
def P16940497337716767658.Spec : Prop :=
  ∀ n, P16940497337716767658.a n = A002012 n

end A002012

/-! ## A002012.P4484820561935075316

`∑[4*A349427(n+1)]`
-/

namespace A002012.P4484820561935075316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A349427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002012.P4484820561935075316

namespace A002012

/-- `∑[4*A349427(n+1)]` -/
def P4484820561935075316.Spec : Prop :=
  ∀ n, P4484820561935075316.a n = A002012 n

end A002012

/-! ## A002012.P13233137665806626985

`4*A000108(n+1)*C(n+3, 3)`
-/

namespace A002012.P13233137665806626985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000108 (n + 1) * (Nat.choose (n + 3) 3 : ℤ)

end

end A002012.P13233137665806626985

namespace A002012

/-- `4*A000108(n+1)*C(n+3, 3)` -/
def P13233137665806626985.Spec : Prop :=
  ∀ n, P13233137665806626985.a n = A002012 n

end A002012

/-! ## A002012.P8214937330566139564

`A128650(n+3)/(n+1)*∑[∑[n+1]]`
-/

namespace A002012.P8214937330566139564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128650 (n + 3) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A002012.P8214937330566139564

namespace A002012

/-- `A128650(n+3)/(n+1)*∑[∑[n+1]]` -/
def P8214937330566139564.Spec : Prop :=
  ∀ n, P8214937330566139564.a n = (A002012 n : ℚ)

end A002012

/-!
# A002013: Number of filaments with n square cells.

The programs for A002013, there is no canonical definition to state claims against.
-/

/-! ## A002013.P7298619267366282780

`A000267(C(A152536(n), 2))`
-/

namespace A002013.P7298619267366282780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose (A152536 n).toNat 2)

end

end A002013.P7298619267366282780

/-! ## A002013.P2645042764140246309

`A333313(n)+A126314(A184974(n))`
-/

namespace A002013.P2645042764140246309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333313 n + A126314 (A184974 n).toNat

end

end A002013.P2645042764140246309

/-! ## A002013.P4254166311006840363

`A238098(A279785(n)+2)+A004525(A184974(n))`
-/

namespace A002013.P4254166311006840363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238098 (A279785 n + 2).toNat + A004525 (A184974 n).toNat

end

end A002013.P4254166311006840363

/-! ## A002013.P5269065139518543171

`ceil(A281578(2*n+1)/13)-char[8]`
-/

namespace A002013.P5269065139518543171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281578 (2 * n + 1) : ℚ) / 13⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002013.P5269065139518543171

/-! ## A002013.P12085998133146913678

`A335525(ceil(n*a(n-1)/floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A002013.P12085998133146913678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A335525 ⌈(n : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ))⌉.toNat

end

end A002013.P12085998133146913678

/-!
# A002015: a(n) = n^2 reduced mod 100.

The programs for A002015, the canonical program `A002015.P5027003788136931753` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002015 has offset 0).

The definition of A002015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002015.P5027003788136931753

`n²%100`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002015

/-- `n²%100` -/
def P5027003788136931753.Spec : Prop :=
  ∀ n, (P5027003788136931753.a n : ℤ) = A002015 n

theorem P5027003788136931753.correct : P5027003788136931753.Spec := by
  intro n
  simp only [A002015]

end A002015

/-!
# A002016: Number of first n tetrahedral numbers (A000292) that are relatively prime to n.

The programs for A002016, there is no canonical definition to state claims against.
-/

/-! ## A002016.P5560941549398463416

`A333749(or(n, A252788(2*n+1)))`
-/

namespace A002016.P5560941549398463416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (Int.lor (n : ℤ) (A252788 (2 * n + 1))).toNat

end

end A002016.P5560941549398463416

/-! ## A002016.P10707996504069390759

`gcd(A003188(A054841(n+1)), A047855(n))`
-/

namespace A002016.P10707996504069390759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003188 (A054841 (n + 1)).toNat) (A047855 n)

end

end A002016.P10707996504069390759

/-! ## A002016.P3458833107685325503

`A001227(A014963(n+1)*A038207(3*n+1))`
-/

namespace A002016.P3458833107685325503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A014963 (n + 1) * A038207 (3 * n + 1)).toNat

end

end A002016.P3458833107685325503

/-!
# A002017: Expansion of e.g.f. exp(sin(x)).

The programs for A002017, there is no canonical definition to state claims against.
-/

/-! ## A002017.P10699520177228197424

`A009206(n+1)/(n+1)`
-/

namespace A002017.P10699520177228197424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002017.P10699520177228197424

/-! ## A002017.P2046346940799993113

`A012892(n)+A012896(n)-A009206(n)`
-/

namespace A002017.P2046346940799993113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012892 n + (A012896 n - A009206 n)

end

end A002017.P2046346940799993113

/-! ## A002017.P12286607416572818612

`A012887(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A002017.P12286607416572818612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012887 n - (n : ℤ) * a (n - 1)

end

end A002017.P12286607416572818612

/-! ## A002017.P16901646598275848569

`A012887(n)-A009206(n)`
-/

namespace A002017.P16901646598275848569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012887 n - A009206 n

end

end A002017.P16901646598275848569

/-!
# A002018: From a distribution problem.

The programs for A002018, the canonical program `A002018.P16385705312857118487` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002018 has offset 0).

The definition of A002018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002018.P16385705312857118487

`n*(n*a(n-1)-(n-1)*(n-2)/2*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002018

/-- `n*(n*a(n-1)-(n-1)*(n-2)/2*a(n-2))` -/
def P16385705312857118487.Spec : Prop :=
  ∀ n, P16385705312857118487.a n = (A002018 n : ℚ)

end A002018

/-!
# A002019: a(n) = a(n-1) - (n-1)(n-2)a(n-2).

The programs for A002019, the canonical program `A002019.P14403058367921336469` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002019 has offset 0).

The definition of A002019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(n-1)*(n-2)*a(n-2)` (program `A002019.P14403058367921336469`, by `A002019.P14403058367921336469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002019.P14403058367921336469

`a(n-1)-(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002019

/-- `a(n-1)-(n-1)*(n-2)*a(n-2)` -/
def P14403058367921336469.Spec : Prop :=
  ∀ n, P14403058367921336469.a n = A002019 n

theorem P14403058367921336469.correct : P14403058367921336469.Spec := by
  intro n
  simp only [A002019]

end A002019

/-! ## A002019.P10445083189275705098

`A012960(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A002019.P10445083189275705098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012960 n - (n : ℤ) * a (n - 1)

end

end A002019.P10445083189275705098

namespace A002019

/-- `A012960(n)-n*a(n-1)` -/
def P10445083189275705098.Spec : Prop :=
  ∀ n, P10445083189275705098.a n = A002019 n

end A002019

/-!
# A002020: a(n+1) = a(n) - n*(n-1)*a(n-1), with a(n) = 1 for n <= 3.

The programs for A002020, there is no canonical definition to state claims against.
-/

/-! ## A002020.P10586372495708449514

`a(n-1)-(n-1)*(n-2)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A002020.P10586372495708449514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))

end

end A002020.P10586372495708449514

/-!
# A002021: Pile of coconuts problem: (n-1)*(n^n - 1), n even; n^n - n + 1, n odd.

The programs for A002021, the canonical program `A002021.P1304631022166223897` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002021 has offset 1).

The definition of A002021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002021.P1304631022166223897

`1-(n+1)-(-(n+1))^(n+1)+(1+(-1)^(n+1))*(n+1)^(n+2)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002021

/-- `1-(n+1)-(-(n+1))^(n+1)+(1+(-1)^(n+1))*(n+1)^(n+2)/2` -/
def P1304631022166223897.Spec : Prop :=
  ∀ n, P1304631022166223897.a n = (A002021 (n + 1) : ℚ)

end A002021

/-! ## A002021.P15938696212657138351

`n^(n%2)*or(n^(n%2), ∑[xor(1, Δ[n^n])])`
-/

namespace A002021.P15938696212657138351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2) : ℤ) * Int.lor (n ^ (n % 2) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002021.P15938696212657138351

namespace A002021

/-- `n^(n%2)*or(n^(n%2), ∑[xor(1, Δ[n^n])])` -/
def P15938696212657138351.Spec : Prop :=
  ∀ n, P15938696212657138351.a n = A002021 (n + 1)

end A002021

/-! ## A002021.P16361934354386804461

`or(A006091(n+1), A093178(n))*A093178(n)`
-/

namespace A002021.P16361934354386804461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006091 (n + 1)) (A093178 n) * A093178 n

end

end A002021.P16361934354386804461

namespace A002021

/-- `or(A006091(n+1), A093178(n))*A093178(n)` -/
def P16361934354386804461.Spec : Prop :=
  ∀ n, P16361934354386804461.a n = A002021 (n + 1)

end A002021

/-!
# A002022: In the pile of coconuts problem, the number of coconuts that remain to be shared equally at the end of the process.

The programs for A002022, there is no canonical definition to state claims against.
-/

/-! ## A002022.P9664110707996492788

`(n+1)^or(1, n+2)-(n+1)`
-/

namespace A002022.P9664110707996492788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.lor 1 (n + 2) : ℤ) - (n + 1 : ℤ)

end

end A002022.P9664110707996492788

/-! ## A002022.P9420578615088668990

`(n+1)^(gcd(2, n)+n+1)-(n+1)`
-/

namespace A002022.P9420578615088668990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (Nat.gcd 2 n + (n + 1)) : ℤ) - (n + 1 : ℤ)

end

end A002022.P9420578615088668990

/-! ## A002022.P5081060729797701270

`(n+1)^(n+3-and(1, n))-(n+1)`
-/

namespace A002022.P5081060729797701270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 3 : ℤ) - (Nat.land 1 n : ℤ) : ℤ) - (n + 1 : ℚ)

end

end A002022.P5081060729797701270

/-! ## A002022.P18251460925810667162

`(n+1)^∑[2-a(n-1)]-(n+1)` with `a(0)=3, a(1)=0`
-/

namespace A002022.P18251460925810667162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - (n + 1 : ℚ)

end

end A002022.P18251460925810667162

/-! ## A002022.P989743469385144596

`(n+1)^A109613(n+2)-(n+1)`
-/

namespace A002022.P989743469385144596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A109613 (n + 2) : ℤ) - (n + 1 : ℚ)

end

end A002022.P989743469385144596

/-! ## A002022.P9610218004348379202

`(n+1)^A063196(n+3)-(n+1)`
-/

namespace A002022.P9610218004348379202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A063196 (n + 3) : ℤ) - (n + 1 : ℚ)

end

end A002022.P9610218004348379202

/-! ## A002022.P13547094012327246987

`(n+1)^(A014601(n+1)-n)-(n+1)`
-/

namespace A002022.P13547094012327246987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A014601 (n + 1) - (n : ℤ) : ℤ) - (n + 1 : ℚ)

end

end A002022.P13547094012327246987

/-!
# A002023: a(n) = 6*4^n.

The programs for A002023, the canonical program `A002023.P733771793984427241` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002023 has offset 0).

The definition of A002023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n` (program `A002023.P733771793984427241`, by `A002023.P733771793984427241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002023.P733771793984427241

`6*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002023

/-- `6*4^n` -/
def P733771793984427241.Spec : Prop :=
  ∀ n, (P733771793984427241.a n : ℤ) = A002023 n

theorem P733771793984427241.correct : P733771793984427241.Spec := by
  intro n
  simp only [A002023]

end A002023

/-!
# A002024: k appears k times; a(n) = floor(sqrt(2n) + 1/2).

The programs for A002024, the canonical program `A002024.P11700297927830783882` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002024 has offset 1).

The definition of A002024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002024.P12828972124427743158

`round(sqrt(2*(n+1)))`
-/

namespace A002024.P12828972124427743158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

end

end A002024.P12828972124427743158

namespace A002024

/-- `round(sqrt(2*(n+1)))` -/
def P12828972124427743158.Spec : Prop :=
  ∀ n, P12828972124427743158.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P11700297927830783882

`a(n-a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002024

/-- `a(n-a(n-1))+1` -/
def P11700297927830783882.Spec : Prop :=
  ∀ n, (P11700297927830783882.a n : ℤ) = A002024 (n + 1)

theorem P11700297927830783882.correct : P11700297927830783882.Spec := by
  intro n
  simp only [A002024, Nat.add_sub_cancel]

end A002024

/-! ## A002024.P18289303257064807254

`floor((A000196(8*(n+1))+1)/2)`
-/

namespace A002024.P18289303257064807254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000196 (8 * (n + 1)) + 1 : ℚ) / 2⌋

end

end A002024.P18289303257064807254

namespace A002024

/-- `floor((A000196(8*(n+1))+1)/2)` -/
def P18289303257064807254.Spec : Prop :=
  ∀ n, P18289303257064807254.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P11580199494259885142

`A003602(A118413(n+1))`
-/

namespace A002024.P11580199494259885142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A118413 (n + 1)).toNat

end

end A002024.P11580199494259885142

namespace A002024

/-- `A003602(A118413(n+1))` -/
def P11580199494259885142.Spec : Prop :=
  ∀ n, P11580199494259885142.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P10207452309742466261

`A001511(A118416(n+1))`
-/

namespace A002024.P10207452309742466261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A118416 (n + 1)).toNat

end

end A002024.P10207452309742466261

namespace A002024

/-- `A001511(A118416(n+1))` -/
def P10207452309742466261.Spec : Prop :=
  ∀ n, P10207452309742466261.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P13687970042412758615

`1+row(n)`
-/

namespace A002024.P13687970042412758615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triRow n

end

end A002024.P13687970042412758615

namespace A002024

/-- `1+row(n)` -/
def P13687970042412758615.Spec : Prop :=
  ∀ n, (P13687970042412758615.a n : ℤ) = A002024 (n + 1)

end A002024

/-! ## A002024.P11805904472329426786

`1+gcd(T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A002024.P11805904472329426786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A002024.P11805904472329426786

namespace A002024

/-- `1+gcd(T(n-1,k), T(n-1,k-1))` -/
def P11805904472329426786.Spec : Prop :=
  ∀ n, (P11805904472329426786.a n : ℤ) = A002024 (n + 1)

end A002024

/-! ## A002024.P12954933944325714398

`comp[C(n, 2)]-(n+1)`
-/

namespace A002024.P12954933944325714398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A002024.P12954933944325714398

namespace A002024

/-- `comp[C(n, 2)]-(n+1)` -/
def P12954933944325714398.Spec : Prop :=
  ∀ n, P12954933944325714398.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P132715671916712679

`comp[C(n, 2)-1]-n`
-/

namespace A002024.P132715671916712679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A002024.P132715671916712679

namespace A002024

/-- `comp[C(n, 2)-1]-n` -/
def P132715671916712679.Spec : Prop :=
  ∀ n, P132715671916712679.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P1958343952933875667

`∑[C(row(n)-col(n), row(n))]`
-/

namespace A002024.P1958343952933875667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triRow n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002024.P1958343952933875667

namespace A002024

/-- `∑[C(row(n)-col(n), row(n))]` -/
def P1958343952933875667.Spec : Prop :=
  ∀ n, (P1958343952933875667.a n : ℤ) = A002024 (n + 1)

end A002024

/-! ## A002024.P10767046646392176580

`4/2-(1-a(n-a(n-1)))` with `a(0)=1`
-/

namespace A002024.P10767046646392176580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 : ℚ) / 2 - (1 - a (SequenceMachineLib.roundAway ((n : ℚ) - a (n - 1))).toNat)

end

end A002024.P10767046646392176580

namespace A002024

/-- `4/2-(1-a(n-a(n-1)))` -/
def P10767046646392176580.Spec : Prop :=
  ∀ n, P10767046646392176580.a n = (A002024 (n + 1) : ℚ)

end A002024

/-! ## A002024.P8961143372146122653

`2-(1-a(n-a(n-1)))%n` with `a(0)=1`
-/

namespace A002024.P8961143372146122653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod (1 - a ((n : ℤ) - a (n - 1)).toNat) (n : ℤ)

end

end A002024.P8961143372146122653

namespace A002024

/-- `2-(1-a(n-a(n-1)))%n` -/
def P8961143372146122653.Spec : Prop :=
  ∀ n, P8961143372146122653.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P941904819488419622

`1-(floor(n-a(n-a(n-1)))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002024.P941904819488419622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a ((n : ℤ) - a (n - 1)).toNat - (n : ℤ))

end

end A002024.P941904819488419622

namespace A002024

/-- `1-(floor(n-a(n-a(n-1)))-n)` -/
def P941904819488419622.Spec : Prop :=
  ∀ n, P941904819488419622.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P15327460186455644393

`2-(a(a(n-1)-a(n-a(n-1)))-a(n-1))` with `a(0)=1`
-/

namespace A002024.P15327460186455644393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (a (n - 1) - a ((n : ℤ) - a (n - 1)).toNat).toNat - a (n - 1))

end

end A002024.P15327460186455644393

namespace A002024

/-- `2-(a(a(n-1)-a(n-a(n-1)))-a(n-1))` -/
def P15327460186455644393.Spec : Prop :=
  ∀ n, P15327460186455644393.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P7170185334923174483

`log2(A140513(n))`
-/

namespace A002024.P7170185334923174483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A140513 n : ℝ)

end

end A002024.P7170185334923174483

namespace A002024

/-- `log2(A140513(n))` -/
def P7170185334923174483.Spec : Prop :=
  ∀ n, P7170185334923174483.a n = (A002024 (n + 1) : ℝ)

end A002024

/-! ## A002024.P3769447044762570999

`∑[A010054(n)]`
-/

namespace A002024.P3769447044762570999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002024.P3769447044762570999

namespace A002024

/-- `∑[A010054(n)]` -/
def P3769447044762570999.Spec : Prop :=
  ∀ n, P3769447044762570999.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P10430850384832285494

`A003056(n)+1`
-/

namespace A002024.P10430850384832285494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

end

end A002024.P10430850384832285494

namespace A002024

/-- `A003056(n)+1` -/
def P10430850384832285494.Spec : Prop :=
  ∀ n, P10430850384832285494.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P16858289598217659080

`ceil(log2(A173786(n)))`
-/

namespace A002024.P16858289598217659080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A173786 n : ℝ)⌉

end

end A002024.P16858289598217659080

namespace A002024

/-- `ceil(log2(A173786(n)))` -/
def P16858289598217659080.Spec : Prop :=
  ∀ n, P16858289598217659080.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P8457176561191006347

`abs(∑[A010816(n)])`
-/

namespace A002024.P8457176561191006347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A002024.P8457176561191006347

namespace A002024

/-- `abs(∑[A010816(n)])` -/
def P8457176561191006347.Spec : Prop :=
  ∀ n, P8457176561191006347.a n = A002024 (n + 1)

end A002024

/-! ## A002024.P10495414145135822589

`∑[A106459(n)²]`
-/

namespace A002024.P10495414145135822589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002024.P10495414145135822589

namespace A002024

/-- `∑[A106459(n)²]` -/
def P10495414145135822589.Spec : Prop :=
  ∀ n, P10495414145135822589.a n = A002024 (n + 1)

end A002024

/-!
# A002025: Smaller of an amicable pair: (a,b) such that sigma(a) = sigma(b) = a+b, a < b.

The programs for A002025, there is no canonical definition to state claims against.
-/

/-! ## A002025.P14146601498345011403

`A180164(n+1)-A002046(n+1)`
-/

namespace A002025.P14146601498345011403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1) - A002046 (n + 1)

end

end A002025.P14146601498345011403

/-! ## A002025.P3138467906712034938

`A259180(2*n+1)`
-/

namespace A002025.P3138467906712034938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * n + 1)

end

end A002025.P3138467906712034938

/-! ## A002025.P13192619042424926046

`A002046(n+1)-A066539(n+1)`
-/

namespace A002025.P13192619042424926046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A066539 (n + 1)

end

end A002025.P13192619042424926046

/-! ## A002025.P11812811225462450068

`A061469(n+1)*A180326(n+1)`
-/

namespace A002025.P11812811225462450068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061469 (n + 1) * A180326 (n + 1)

end

end A002025.P11812811225462450068

/-! ## A002025.P3223275842755799678

`A180202(n+1)/A002046(n+1)`
-/

namespace A002025.P3223275842755799678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002046 (n + 1) : ℚ)

end

end A002025.P3223275842755799678

/-! ## A002025.P18313205693168244261

`2*A275315(n+1)-A002046(n+1)`
-/

namespace A002025.P18313205693168244261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275315 (n + 1) - A002046 (n + 1)

end

end A002025.P18313205693168244261

/-! ## A002025.P14563049909064017771

`A180164(n+1)-A061469(n+1)*A180327(n+1)`
-/

namespace A002025.P14563049909064017771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1) - A061469 (n + 1) * A180327 (n + 1)

end

end A002025.P14563049909064017771

/-! ## A002025.P6760490340425710167

`A002046(n+1)*A180326(n+1)/A180327(n+1)`
-/

namespace A002025.P6760490340425710167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) * A180326 (n + 1) : ℚ) / (A180327 (n + 1) : ℚ)

end

end A002025.P6760490340425710167

/-! ## A002025.P16810931498816035702

`A275315(n+1)-A162884(n+1)`
-/

namespace A002025.P16810931498816035702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1) - A162884 (n + 1)

end

end A002025.P16810931498816035702

/-! ## A002025.P14439042192338920560

`A002046(n+1)-A162884(n+1)-A162884(n+1)`
-/

namespace A002025.P14439042192338920560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) - A162884 (n + 1) - A162884 (n + 1)

end

end A002025.P14439042192338920560

/-!
# A002026: Generalized ballot numbers (first differences of Motzkin numbers).

The programs for A002026, the canonical program `A002026.P17776616079043433200` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002026 has offset 0).

The definition of A002026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002026.P17776616079043433200

`A001006(n+1)-A001006(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002026

/-- `A001006(n+1)-A001006(n)` -/
def P17776616079043433200.Spec : Prop :=
  ∀ n, P17776616079043433200.a n = A002026 n

theorem P17776616079043433200.correct : P17776616079043433200.Spec := by
  intro n
  simp only [A002026]

end A002026

/-! ## A002026.P16011103702972164096

`A005043(n+2)-A005043(n)`
-/

namespace A002026.P16011103702972164096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2) - A005043 n

end

end A002026.P16011103702972164096

namespace A002026

/-- `A005043(n+2)-A005043(n)` -/
def P16011103702972164096.Spec : Prop :=
  ∀ n, P16011103702972164096.a n = A002026 n

end A002026

/-! ## A002026.P13116924720681860866

`Δ[A001006(n)]`
-/

namespace A002026.P13116924720681860866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P13116924720681860866

namespace A002026

/-- `Δ[A001006(n)]` -/
def P13116924720681860866.Spec : Prop :=
  ∀ n, P13116924720681860866.a n = A002026 n

theorem P13116924720681860866.correct : P13116924720681860866.Spec := by
  intro n
  simp only [A002026, Nat.add_sub_cancel, A002026.P13116924720681860866.f1, A002026.P13116924720681860866.a, A002026.P17776616079043433200.a, SequenceMachineLib.memo_apply]

end A002026

/-! ## A002026.P12916175923703738987

`A105695(n+2)`
-/

namespace A002026.P12916175923703738987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 2)

end

end A002026.P12916175923703738987

namespace A002026

/-- `A105695(n+2)` -/
def P12916175923703738987.Spec : Prop :=
  ∀ n, P12916175923703738987.a n = A002026 n

end A002026

/-! ## A002026.P17255803871920128684

`Δ[Δ[A097332(n)]]`
-/

namespace A002026.P17255803871920128684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P17255803871920128684

namespace A002026

/-- `Δ[Δ[A097332(n)]]` -/
def P17255803871920128684.Spec : Prop :=
  ∀ n, P17255803871920128684.a n = A002026 n

end A002026

/-! ## A002026.P11187774930610825015

`Δ[A086246(n+2)]`
-/

namespace A002026.P11187774930610825015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P11187774930610825015

namespace A002026

/-- `Δ[A086246(n+2)]` -/
def P11187774930610825015.Spec : Prop :=
  ∀ n, P11187774930610825015.a n = A002026 n

end A002026

/-! ## A002026.P6462040487825717508

`Δ[A168049(n+2)]`
-/

namespace A002026.P6462040487825717508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P6462040487825717508

namespace A002026

/-- `Δ[A168049(n+2)]` -/
def P6462040487825717508.Spec : Prop :=
  ∀ n, P6462040487825717508.a n = A002026 n

end A002026

/-! ## A002026.P8466858100245969267

`Δ[abs(A166587(n+1))]`
-/

namespace A002026.P8466858100245969267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P8466858100245969267

namespace A002026

/-- `Δ[abs(A166587(n+1))]` -/
def P8466858100245969267.Spec : Prop :=
  ∀ n, P8466858100245969267.a n = A002026 n

end A002026

/-! ## A002026.P16727802693335133991

`Δ[abs(A168051(n+2))]`
-/

namespace A002026.P16727802693335133991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P16727802693335133991

namespace A002026

/-- `Δ[abs(A168051(n+2))]` -/
def P16727802693335133991.Spec : Prop :=
  ∀ n, P16727802693335133991.a n = A002026 n

end A002026

/-! ## A002026.P9207380467322755465

`Δ[abs(A292440(n+2))]`
-/

namespace A002026.P9207380467322755465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P9207380467322755465

namespace A002026

/-- `Δ[abs(A292440(n+2))]` -/
def P9207380467322755465.Spec : Prop :=
  ∀ n, P9207380467322755465.a n = A002026 n

end A002026

/-! ## A002026.P14335059025142864769

`record[A105695(abs(1-n))]`
-/

namespace A002026.P14335059025142864769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002026.P14335059025142864769

namespace A002026

/-- `record[A105695(abs(1-n))]` -/
def P14335059025142864769.Spec : Prop :=
  ∀ n, P14335059025142864769.a n = A002026 n

end A002026

/-! ## A002026.P2622731498564687983

`Δ[abs(Δ[A099323(n+1)])]`
-/

namespace A002026.P2622731498564687983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P2622731498564687983

namespace A002026

/-- `Δ[abs(Δ[A099323(n+1)])]` -/
def P2622731498564687983.Spec : Prop :=
  ∀ n, P2622731498564687983.a n = A002026 n

end A002026

/-! ## A002026.P15693099014466682883

`Δ[abs(Δ[A366403(n+1)])]`
-/

namespace A002026.P15693099014466682883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P15693099014466682883

namespace A002026

/-- `Δ[abs(Δ[A366403(n+1)])]` -/
def P15693099014466682883.Spec : Prop :=
  ∀ n, P15693099014466682883.a n = A002026 n

end A002026

/-! ## A002026.P6325473426403667791

`A342912(n)-A005043(n)`
-/

namespace A002026.P6325473426403667791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 n - A005043 n

end

end A002026.P6325473426403667791

namespace A002026

/-- `A342912(n)-A005043(n)` -/
def P6325473426403667791.Spec : Prop :=
  ∀ n, P6325473426403667791.a n = A002026 n

end A002026

/-! ## A002026.P12274635141492396960

`Δ[A343386(n)+A107587(n)]`
-/

namespace A002026.P12274635141492396960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n + A107587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P12274635141492396960

namespace A002026

/-- `Δ[A343386(n)+A107587(n)]` -/
def P12274635141492396960.Spec : Prop :=
  ∀ n, P12274635141492396960.a n = A002026 n

end A002026

/-! ## A002026.P6342235840971697681

`Δ[A307573(n)+A307564(n)]`
-/

namespace A002026.P6342235840971697681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307573 n + A307564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P6342235840971697681

namespace A002026

/-- `Δ[A307573(n)+A307564(n)]` -/
def P6342235840971697681.Spec : Prop :=
  ∀ n, P6342235840971697681.a n = A002026 n

end A002026

/-! ## A002026.P12458668414158692028

`Δ[A005043(n+1)+A005043(n)]`
-/

namespace A002026.P12458668414158692028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002026.P12458668414158692028

namespace A002026

/-- `Δ[A005043(n+1)+A005043(n)]` -/
def P12458668414158692028.Spec : Prop :=
  ∀ n, P12458668414158692028.a n = A002026 n

end A002026

/-! ## A002026.P16781968914611883276

`A168051(n+2)+A001006(n+1)`
-/

namespace A002026.P16781968914611883276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) + A001006 (n + 1)

end

end A002026.P16781968914611883276

namespace A002026

/-- `A168051(n+2)+A001006(n+1)` -/
def P16781968914611883276.Spec : Prop :=
  ∀ n, P16781968914611883276.a n = A002026 n

end A002026

/-! ## A002026.P12860983150040823929

`A292440(n+2)+A001006(n+1)`
-/

namespace A002026.P12860983150040823929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A001006 (n + 1)

end

end A002026.P12860983150040823929

namespace A002026

/-- `A292440(n+2)+A001006(n+1)` -/
def P12860983150040823929.Spec : Prop :=
  ∀ n, P12860983150040823929.a n = A002026 n

end A002026

/-! ## A002026.P1183646859462583565

`A168058(n+2)+A005554(n+2)`
-/

namespace A002026.P1183646859462583565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 (n + 2) + A005554 (n + 2)

end

end A002026.P1183646859462583565

namespace A002026

/-- `A168058(n+2)+A005554(n+2)` -/
def P1183646859462583565.Spec : Prop :=
  ∀ n, P1183646859462583565.a n = A002026 n

end A002026

/-!
# A002027: Number of connected graphs on n labeled nodes, each node being colored with one of 2 colors, such that no edge joins nodes of the same color.

The programs for A002027, there is no canonical definition to state claims against.
-/

/-! ## A002027.P12221186482746998693

`A002031(A233583(n+1))-A151933(n)`
-/

namespace A002027.P12221186482746998693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002031 (A233583 (n + 1)).toNat - A151933 n

end

end A002027.P12221186482746998693

/-! ## A002027.P3097371054803571813

`A322279(∑[n+3])`
-/

namespace A002027.P3097371054803571813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002027.P3097371054803571813

/-! ## A002027.P6504100664486030696

`A322279(A141214(n))+and(1, 6*A000040(n+1))`
-/

namespace A002027.P6504100664486030696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A141214 n).toNat + Int.land 1 (6 * A000040 (n + 1))

end

end A002027.P6504100664486030696

/-!
# A002028: Number of connected graphs on n labeled nodes, each node being colored with one of 3 colors, such that no edge joins nodes of the same color.

The programs for A002028, there is no canonical definition to state claims against.
-/

/-! ## A002028.P3799968612819858896

`A322279(∑[n+3]+n+3)`
-/

namespace A002028.P3799968612819858896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A002028.P3799968612819858896

/-! ## A002028.P1102880685321055766

`record[A322279(abs(A046691(n)))]`
-/

namespace A002028.P1102880685321055766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002028.P1102880685321055766

/-! ## A002028.P3048016051997620456

`record[gcd(A067586(n+4), A322279(n))]`
-/

namespace A002028.P3048016051997620456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067586 (n + 4)) (A322279 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002028.P3048016051997620456

/-!
# A002029: Number of connected graphs on n labeled nodes, each node being colored with one of 4 colors, such that no edge joins nodes of the same color.

The programs for A002029, there is no canonical definition to state claims against.
-/

/-! ## A002029.P3873005295973807015

`record[A322279(A052905(n))]`
-/

namespace A002029.P3873005295973807015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002029.P3873005295973807015

/-! ## A002029.P3380953933154287894

`A322279(A052905(n+2))`
-/

namespace A002029.P3380953933154287894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A052905 (n + 2)).toNat

end

end A002029.P3380953933154287894

/-! ## A002029.P13745825090591473497

`A322279(eq[4, A025581(n)])`
-/

namespace A002029.P13745825090591473497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002029.P13745825090591473497

/-! ## A002029.P4095856830787353834

`record[A322279(A055999(n)+1)]`
-/

namespace A002029.P4095856830787353834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002029.P4095856830787353834

/-! ## A002029.P14764051227310592645

`A322279(A046691(n+3)-1)`
-/

namespace A002029.P14764051227310592645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A046691 (n + 3) - 1).toNat

end

end A002029.P14764051227310592645

/-!
# A002030: Number of connected graphs on n labeled nodes, each node being colored with one of 5 colors, such that no edge joins nodes of the same color.

The programs for A002030, there is no canonical definition to state claims against.
-/

/-! ## A002030.P5917397292173245677

`record[A322279(A055999(n))]`
-/

namespace A002030.P5917397292173245677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002030.P5917397292173245677

/-! ## A002030.P3428488538788545062

`A322279(eq[5, A025581(n)])`
-/

namespace A002030.P3428488538788545062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002030.P3428488538788545062

/-! ## A002030.P733905523868862106

`A322279(eq[11, A099375(n)])`
-/

namespace A002030.P733905523868862106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002030.P733905523868862106

/-! ## A002030.P15792918777621346798

`record[A322279(A052905(n)-1)]`
-/

namespace A002030.P15792918777621346798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002030.P15792918777621346798

/-! ## A002030.P7215557914431173246

`record[A322279(A055998(n)+n)]`
-/

namespace A002030.P7215557914431173246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002030.P7215557914431173246

/-!
# A002031: Number of labeled connected digraphs on n nodes where every node has indegree 0 or outdegree 0 and no isolated nodes.

The programs for A002031, there is no canonical definition to state claims against.
-/

/-! ## A002031.P10836247159876705641

`A002027(n+2)`
-/

namespace A002031.P10836247159876705641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002027 (n + 2)

end

end A002031.P10836247159876705641

/-! ## A002031.P8038212982273125933

`∏[record[ratio[A002027(n)]]]`
-/

namespace A002031.P8038212982273125933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002027 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002031.P8038212982273125933

/-! ## A002031.P6617965796987299455

`2*A001832(n+2)`
-/

namespace A002031.P6617965796987299455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001832 (n + 2)

end

end A002031.P6617965796987299455

/-! ## A002031.P13584915683871739328

`record[A002027(A007599(n))]`
-/

namespace A002031.P13584915683871739328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002027 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002031.P13584915683871739328

/-! ## A002031.P12099731095563914696

`record[A002027(A008611(n))]`
-/

namespace A002031.P12099731095563914696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002027 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002031.P12099731095563914696

/-!
# A002032: Number of n-colored connected graphs on n labeled nodes.

The programs for A002032, there is no canonical definition to state claims against.
-/

/-! ## A002032.P3592551109327281069

`n!*A001187(n)`
-/

namespace A002032.P3592551109327281069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001187 n

end

end A002032.P3592551109327281069

/-! ## A002032.P15827923223492742332

`A000142(n)*A001187(n)`
-/

namespace A002032.P15827923223492742332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001187 n

end

end A002032.P15827923223492742332

/-! ## A002032.P12324915682978494815

`A001187(n)*A047920(∑[n])`
-/

namespace A002032.P12324915682978494815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A047920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002032.P12324915682978494815

/-! ## A002032.P10803443635161803235

`A001187(n)*A021009(A000217(n))`
-/

namespace A002032.P10803443635161803235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A021009 (A000217 n).toNat

end

end A002032.P10803443635161803235

/-! ## A002032.P654136972627181877

`A001187(n)*A124795(A000040(n+1))`
-/

namespace A002032.P654136972627181877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A124795 (A000040 (n + 1)).toNat

end

end A002032.P654136972627181877

/-!
# A002033: Number of perfect partitions of n.

The programs for A002033, there is no canonical definition to state claims against.
-/

/-! ## A002033.P15654831141525439892

`Δ[A173382(n)]`
-/

namespace A002033.P15654831141525439892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002033.P15654831141525439892

/-! ## A002033.P17811243111875625877

`A074206(1+n)`
-/

namespace A002033.P17811243111875625877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (1 + n)

end

end A002033.P17811243111875625877

/-! ## A002033.P13409250019387681804

`∑{d}[n+1, A174725(#)]`
-/

namespace A002033.P13409250019387681804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d

end

end A002033.P13409250019387681804

/-! ## A002033.P7186522084755609507

`ceil(A067824(n+1)/2)`
-/

namespace A002033.P7186522084755609507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067824 (n + 1) : ℚ) / 2⌉

end

end A002033.P7186522084755609507

/-! ## A002033.P7854369473515115439

`ceil(A253249(n+1)/4)`
-/

namespace A002033.P7854369473515115439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253249 (n + 1) : ℚ) / 4⌉

end

end A002033.P7854369473515115439

/-! ## A002033.P13042467389285339141

`A050369(n+1)/(n+1)`
-/

namespace A002033.P13042467389285339141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050369 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002033.P13042467389285339141

/-! ## A002033.P5820200061159723521

`∑{d}[n+1, #*A323910((n+1)/#)]`
-/

namespace A002033.P5820200061159723521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002033.P5820200061159723521

/-! ## A002033.P14217749145379208768

`A050324(A101296(n+1))`
-/

namespace A002033.P14217749145379208768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A101296 (n + 1)).toNat

end

end A002033.P14217749145379208768

/-! ## A002033.P1365226416244404354

`A025523(n+1)-A173382(n)`
-/

namespace A002033.P1365226416244404354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - A173382 n

end

end A002033.P1365226416244404354

/-! ## A002033.P4509201803249537943

`A173382(n+1)-A173382(n)`
-/

namespace A002033.P4509201803249537943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 (n + 1) - A173382 n

end

end A002033.P4509201803249537943

/-! ## A002033.P6243252208470403195

`A337256(n+1)/A040002(n)`
-/

namespace A002033.P6243252208470403195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337256 (n + 1) : ℚ) / (A040002 n : ℚ)

end

end A002033.P6243252208470403195

/-! ## A002033.P13828436679174145196

`A174726(n+1)+A174725(n+1)`
-/

namespace A002033.P13828436679174145196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174726 (n + 1) + A174725 (n + 1)

end

end A002033.P13828436679174145196

/-! ## A002033.P5883390484427767614

`A166247(n+1)-A004125(n+1)`
-/

namespace A002033.P5883390484427767614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166247 (n + 1) - A004125 (n + 1)

end

end A002033.P5883390484427767614

/-! ## A002033.P9259589488977631934

`A104725(n+1)-A160086(n+1)`
-/

namespace A002033.P9259589488977631934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (n + 1) - A160086 (n + 1)

end

end A002033.P9259589488977631934

/-! ## A002033.P5396903774331363876

`A008683(n+1)+2*A174726(n+1)`
-/

namespace A002033.P5396903774331363876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2 * A174726 (n + 1)

end

end A002033.P5396903774331363876

/-! ## A002033.P11752289090587827323

`2*A174725(n+1)-A008683(n+1)`
-/

namespace A002033.P11752289090587827323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174725 (n + 1) - A008683 (n + 1)

end

end A002033.P11752289090587827323

/-! ## A002033.P12010886414999010521

`∑{d}[n+1, A008683(#)*A067824((n+1)/#)]`
-/

namespace A002033.P12010886414999010521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002033.P12010886414999010521

/-! ## A002033.P12421101926456007350

`∑{d}[n+1, A046692(#)*A191161((n+1)/#)]`
-/

namespace A002033.P12421101926456007350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002033.P12421101926456007350

/-! ## A002033.P7790158158169806027

`∑{d}[n+1, A007427(#)*A253249((n+1)/#)]`
-/

namespace A002033.P7790158158169806027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002033.P7790158158169806027

/-!
# A002034: Kempner numbers: smallest positive integer m such that n divides m!.

The programs for A002034, there is no canonical definition to state claims against.
-/

/-! ## A002034.P8887455893952802995

`A122416(n+1)-1`
-/

namespace A002034.P8887455893952802995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - 1

end

end A002034.P8887455893952802995

/-! ## A002034.P18193958254904743506

`∑[A029717(C(2, n)+n)]`
-/

namespace A002034.P18193958254904743506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002034.P18193958254904743506

/-! ## A002034.P3876329974960583452

`∑[A029717(gcd(n, C(2, n)))]`
-/

namespace A002034.P3876329974960583452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002034.P3876329974960583452

/-! ## A002034.P16298002256190171591

`A061243(n+1)-(n+1)`
-/

namespace A002034.P16298002256190171591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

end

end A002034.P16298002256190171591

/-! ## A002034.P18146451812481801123

`A029717(n)+a(n-1)` with `a(0)=1`
-/

namespace A002034.P18146451812481801123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029717 n + a (n - 1)

end

end A002034.P18146451812481801123

/-! ## A002034.P14311894853767241604

`∑[A029717(A028310(n))]`
-/

namespace A002034.P14311894853767241604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002034.P14311894853767241604

/-! ## A002034.P17437031033310161710

`A028310(A064760(n+1))`
-/

namespace A002034.P17437031033310161710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064760 (n + 1)).toNat

end

end A002034.P17437031033310161710

/-! ## A002034.P1395114689220869523

`A023443(A122416(n+1))`
-/

namespace A002034.P1395114689220869523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122416 (n + 1)).toNat

end

end A002034.P1395114689220869523

/-! ## A002034.P7080252314715135549

`A064760(n+1)+A000007(n)`
-/

namespace A002034.P7080252314715135549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + A000007 n

end

end A002034.P7080252314715135549

/-! ## A002034.P11788191130511692508

`∏{d}[A064760(n+1), A014963(#)]`
-/

namespace A002034.P11788191130511692508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A002034.P11788191130511692508

/-! ## A002034.P5210991082703125586

`A057108(n+1)+A006530(n+1)`
-/

namespace A002034.P5210991082703125586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1) + A006530 (n + 1)

end

end A002034.P5210991082703125586

/-! ## A002034.P6957243794843429734

`A034699(n+1)-A057110(n+1)`
-/

namespace A002034.P6957243794843429734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A057110 (n + 1)

end

end A002034.P6957243794843429734

/-! ## A002034.P12243305922254336822

`A028310(n+1-A072480(n+1))`
-/

namespace A002034.P12243305922254336822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) - A072480 (n + 1)).toNat

end

end A002034.P12243305922254336822

/-! ## A002034.P12908934169345213519

`A064760(n+1)+A054977(n)-1`
-/

namespace A002034.P12908934169345213519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + (A054977 n - 1)

end

end A002034.P12908934169345213519

/-! ## A002034.P15919925286072065438

`A345931(n+1)*A345932(n+1)`
-/

namespace A002034.P15919925286072065438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) * A345932 (n + 1)

end

end A002034.P15919925286072065438

/-! ## A002034.P3756862788209428603

`n+1-A072480((n+1)%A002822(n+1))`
-/

namespace A002034.P3756862788209428603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A072480 (Int.tmod (n + 1 : ℤ) (A002822 (n + 1))).toNat

end

end A002034.P3756862788209428603

/-! ## A002034.P11319210045570647825

`n+1-A072480(n+1)%A006093(n+1)`
-/

namespace A002034.P11319210045570647825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A072480 (n + 1)) (A006093 (n + 1))

end

end A002034.P11319210045570647825

/-! ## A002034.P14979407518887162494

`Δ[A029716(n+1)]-A029717(n+1)`
-/

namespace A002034.P14979407518887162494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A029717 (n + 1)

end

end A002034.P14979407518887162494

/-! ## A002034.P7939283028559962588

`gcd(A002444(n), A064760(n+1))`
-/

namespace A002034.P7939283028559962588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002444 n) (A064760 (n + 1))

end

end A002034.P7939283028559962588

/-! ## A002034.P9199458868860248975

`A002260(A061243(n+1)+∑[n])`
-/

namespace A002034.P9199458868860248975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A061243 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002034.P9199458868860248975

/-!
# A002035: Numbers that contain primes to odd powers only.

The programs for A002035, the canonical program `A002035.P10680891556500623091` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002035 has offset 1).

The definition of A002035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002035.P13160695003158767213

`record[A331737(n+2)]`
-/

namespace A002035.P13160695003158767213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002035.P13160695003158767213

namespace A002035

/-- `record[A331737(n+2)]` -/
def P13160695003158767213.Spec : Prop :=
  ∀ n, P13160695003158767213.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P10680891556500623091

`eq[1, A295316(n+2)]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A002035

/-- `eq[1, A295316(n+2)]+2` -/
def P10680891556500623091.Spec : Prop :=
  ∀ n, (P10680891556500623091.a n : ℤ) = A002035 (n + 1)

theorem P10680891556500623091.correct : P10680891556500623091.Spec := by
  intro n
  simp only [A002035, Nat.add_sub_cancel]

end A002035

/-! ## A002035.P13818834778354877211

`eq[1, A331738(n+2)]+2`
-/

namespace A002035.P13818834778354877211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P13818834778354877211

namespace A002035

/-- `eq[1, A331738(n+2)]+2` -/
def P13818834778354877211.Spec : Prop :=
  ∀ n, (P13818834778354877211.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P16412943604179572603

`eq[1, A336643(n+2)]+2`
-/

namespace A002035.P16412943604179572603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P16412943604179572603

namespace A002035

/-- `eq[1, A336643(n+2)]+2` -/
def P16412943604179572603.Spec : Prop :=
  ∀ n, (P16412943604179572603.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P8182069872901880855

`eq[1, A351568(n+2)]+2`
-/

namespace A002035.P8182069872901880855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P8182069872901880855

namespace A002035

/-- `eq[1, A351568(n+2)]+2` -/
def P8182069872901880855.Spec : Prop :=
  ∀ n, (P8182069872901880855.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P7295217881957794071

`lt[n, A351569(n+2)]+2`
-/

namespace A002035.P7295217881957794071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A002035.P7295217881957794071

namespace A002035

/-- `lt[n, A351569(n+2)]+2` -/
def P7295217881957794071.Spec : Prop :=
  ∀ n, (P7295217881957794071.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P4852749346591341595

`lt[2, A020639(A226602(n))]`
-/

namespace A002035.P4852749346591341595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002035.P4852749346591341595

namespace A002035

/-- `lt[2, A020639(A226602(n))]` -/
def P4852749346591341595.Spec : Prop :=
  ∀ n, (P4852749346591341595.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P17987700748892869200

`∪[A000040(n+1), A365535(n+1)]`
-/

namespace A002035.P17987700748892869200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002035.P17987700748892869200

namespace A002035

/-- `∪[A000040(n+1), A365535(n+1)]` -/
def P17987700748892869200.Spec : Prop :=
  ∀ n, (P17987700748892869200.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P13056183860905575980

`∪[A030059(n+1), A365535(n+1)]`
-/

namespace A002035.P13056183860905575980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002035.P13056183860905575980

namespace A002035

/-- `∪[A030059(n+1), A365535(n+1)]` -/
def P13056183860905575980.Spec : Prop :=
  ∀ n, (P13056183860905575980.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P5001661107259779069

`∪[A246551(n+1), A365535(n+1)]`
-/

namespace A002035.P5001661107259779069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002035.P5001661107259779069

namespace A002035

/-- `∪[A246551(n+1), A365535(n+1)]` -/
def P5001661107259779069.Spec : Prop :=
  ∀ n, (P5001661107259779069.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P3746367068321875284

`record[A327171(n+2)/A173557(n+2)]`
-/

namespace A002035.P3746367068321875284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 2) : ℚ) / (A173557 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002035.P3746367068321875284

namespace A002035

/-- `record[A327171(n+2)/A173557(n+2)]` -/
def P3746367068321875284.Spec : Prop :=
  ∀ n, P3746367068321875284.a n = (A002035 (n + 1) : ℚ)

end A002035

/-! ## A002035.P12805844391175476838

`eq[A336551(n+2), A336642(n+2)]+2`
-/

namespace A002035.P12805844391175476838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A002035.P12805844391175476838

namespace A002035

/-- `eq[A336551(n+2), A336642(n+2)]+2` -/
def P12805844391175476838.Spec : Prop :=
  ∀ n, (P12805844391175476838.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P3277694718684740466

`eq[A336642(n+2), A336644(n+2)]+2`
-/

namespace A002035.P3277694718684740466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A002035.P3277694718684740466

namespace A002035

/-- `eq[A336642(n+2), A336644(n+2)]+2` -/
def P3277694718684740466.Spec : Prop :=
  ∀ n, (P3277694718684740466.a n : ℤ) = A002035 (n + 1)

end A002035

/-! ## A002035.P3699293799728180102

`A268335(n+2)`
-/

namespace A002035.P3699293799728180102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 2)

end

end A002035.P3699293799728180102

namespace A002035

/-- `A268335(n+2)` -/
def P3699293799728180102.Spec : Prop :=
  ∀ n, P3699293799728180102.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P11356966550925572828

`sqrt(A374458(n+2))`
-/

namespace A002035.P11356966550925572828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374458 (n + 2) : ℝ)

end

end A002035.P11356966550925572828

namespace A002035

/-- `sqrt(A374458(n+2))` -/
def P11356966550925572828.Spec : Prop :=
  ∀ n, P11356966550925572828.a n = (A002035 (n + 1) : ℝ)

end A002035

/-! ## A002035.P14305403453280247901

`Δ[A382664(n+1)]`
-/

namespace A002035.P14305403453280247901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002035.P14305403453280247901

namespace A002035

/-- `Δ[A382664(n+1)]` -/
def P14305403453280247901.Spec : Prop :=
  ∀ n, P14305403453280247901.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P9088211088722452256

`A382664(n+2)-A382664(n+1)`
-/

namespace A002035.P9088211088722452256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382664 (n + 2) - A382664 (n + 1)

end

end A002035.P9088211088722452256

namespace A002035

/-- `A382664(n+2)-A382664(n+1)` -/
def P9088211088722452256.Spec : Prop :=
  ∀ n, P9088211088722452256.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P13775769192173673886

`A367407(n+2)*A367419(n+2)`
-/

namespace A002035.P13775769192173673886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 2) * A367419 (n + 2)

end

end A002035.P13775769192173673886

namespace A002035

/-- `A367407(n+2)*A367419(n+2)` -/
def P13775769192173673886.Spec : Prop :=
  ∀ n, P13775769192173673886.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P6181829169471016640

`A367417(n+2)*A367418(n+2)`
-/

namespace A002035.P6181829169471016640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 2) * A367418 (n + 2)

end

end A002035.P6181829169471016640

namespace A002035

/-- `A367417(n+2)*A367418(n+2)` -/
def P6181829169471016640.Spec : Prop :=
  ∀ n, P6181829169471016640.a n = A002035 (n + 1)

end A002035

/-! ## A002035.P15314495493813393933

`A367406(n+2)/A367417(n+2)`
-/

namespace A002035.P15314495493813393933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367406 (n + 2) : ℚ) / (A367417 (n + 2) : ℚ)

end

end A002035.P15314495493813393933

namespace A002035

/-- `A367406(n+2)/A367417(n+2)` -/
def P15314495493813393933.Spec : Prop :=
  ∀ n, P15314495493813393933.a n = (A002035 (n + 1) : ℚ)

end A002035

/-!
# A002036: Compressed primes: a(n) is the nearest integer to prime(n)/log prime(n).

The programs for A002036, the canonical program `A002036.P16723521533802060613` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002036 has offset 1).

The definition of A002036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002036.P16723521533802060613

`round(A000040(n+1)/log(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002036

/-- `round(A000040(n+1)/log(A000040(n+1)))` -/
def P16723521533802060613.Spec : Prop :=
  ∀ n, P16723521533802060613.a n = A002036 (n + 1)

theorem P16723521533802060613.correct : P16723521533802060613.Spec := by
  intro n
  simp only [A002036, Nat.add_sub_cancel]

end A002036

/-! ## A002036.P6608860212679544735

`1-A064662(n+1)+n`
-/

namespace A002036.P6608860212679544735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064662 (n + 1) + (n : ℤ)

end

end A002036.P6608860212679544735

namespace A002036

/-- `1-A064662(n+1)+n` -/
def P6608860212679544735.Spec : Prop :=
  ∀ n, P6608860212679544735.a n = A002036 (n + 1)

theorem P6608860212679544735.correct : P6608860212679544735.Spec := by
  intro n
  simp only [A002036, Nat.add_sub_cancel, A002036.P6608860212679544735.a, A002036.P16723521533802060613.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A064662, A064662.P1971353401508973041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002036

/-! ## A002036.P865094783243559331

`round(A008578(n+2)/log(A008578(n+2)))`
-/

namespace A002036.P865094783243559331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008578 (n + 2) : ℝ) / Real.log (A008578 (n + 2) : ℝ))

end

end A002036.P865094783243559331

namespace A002036

/-- `round(A008578(n+2)/log(A008578(n+2)))` -/
def P865094783243559331.Spec : Prop :=
  ∀ n, P865094783243559331.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P303327859343587430

`A050499(Δ[A007504(n)])`
-/

namespace A002036.P303327859343587430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (f1 (n + 1) - f1 n).toNat

end

end A002036.P303327859343587430

namespace A002036

/-- `A050499(Δ[A007504(n)])` -/
def P303327859343587430.Spec : Prop :=
  ∀ n, P303327859343587430.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P13139722778055026064

`A050499(A000040(n+1))`
-/

namespace A002036.P13139722778055026064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A000040 (n + 1)).toNat

end

end A002036.P13139722778055026064

namespace A002036

/-- `A050499(A000040(n+1))` -/
def P13139722778055026064.Spec : Prop :=
  ∀ n, P13139722778055026064.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P2400823906252645667

`A050499(A008578(n+2))`
-/

namespace A002036.P2400823906252645667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A008578 (n + 2)).toNat

end

end A002036.P2400823906252645667

namespace A002036

/-- `A050499(A008578(n+2))` -/
def P2400823906252645667.Spec : Prop :=
  ∀ n, P2400823906252645667.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P1614659495461848823

`A050499(A116974(n+2))`
-/

namespace A002036.P1614659495461848823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A116974 (n + 2)).toNat

end

end A002036.P1614659495461848823

namespace A002036

/-- `A050499(A116974(n+2))` -/
def P1614659495461848823.Spec : Prop :=
  ∀ n, P1614659495461848823.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P1968038363221662260

`A050499(A175787(n+2))`
-/

namespace A002036.P1968038363221662260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A175787 (n + 2)).toNat

end

end A002036.P1968038363221662260

namespace A002036

/-- `A050499(A175787(n+2))` -/
def P1968038363221662260.Spec : Prop :=
  ∀ n, P1968038363221662260.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P792435947985359487

`A050499(A182986(n+2))`
-/

namespace A002036.P792435947985359487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A182986 (n + 2)).toNat

end

end A002036.P792435947985359487

namespace A002036

/-- `A050499(A182986(n+2))` -/
def P792435947985359487.Spec : Prop :=
  ∀ n, P792435947985359487.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P12007109718214085168

`A050499(record[A006530(n+2)])`
-/

namespace A002036.P12007109718214085168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002036.P12007109718214085168

namespace A002036

/-- `A050499(record[A006530(n+2)])` -/
def P12007109718214085168.Spec : Prop :=
  ∀ n, P12007109718214085168.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P5413389075401838831

`A050499(record[A014963(n+2)])`
-/

namespace A002036.P5413389075401838831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002036.P5413389075401838831

namespace A002036

/-- `A050499(record[A014963(n+2)])` -/
def P5413389075401838831.Spec : Prop :=
  ∀ n, P5413389075401838831.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P16126213580715365899

`A050499(record[A020639(n+2)])`
-/

namespace A002036.P16126213580715365899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002036.P16126213580715365899

namespace A002036

/-- `A050499(record[A020639(n+2)])` -/
def P16126213580715365899.Spec : Prop :=
  ∀ n, P16126213580715365899.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P8458679509725300154

`A050499(A006093(n+1)+1)`
-/

namespace A002036.P8458679509725300154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A006093 (n + 1) + 1).toNat

end

end A002036.P8458679509725300154

namespace A002036

/-- `A050499(A006093(n+1)+1)` -/
def P8458679509725300154.Spec : Prop :=
  ∀ n, P8458679509725300154.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P3267956044002087197

`A050499(A040976(n+1)+2)`
-/

namespace A002036.P3267956044002087197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A040976 (n + 1) + 2).toNat

end

end A002036.P3267956044002087197

namespace A002036

/-- `A050499(A040976(n+1)+2)` -/
def P3267956044002087197.Spec : Prop :=
  ∀ n, P3267956044002087197.a n = A002036 (n + 1)

end A002036

/-! ## A002036.P16240688536632201112

`A050499(A007504(n+1)-A007504(n))`
-/

namespace A002036.P16240688536632201112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (A007504 (n + 1) - A007504 n).toNat

end

end A002036.P16240688536632201112

namespace A002036

/-- `A050499(A007504(n+1)-A007504(n))` -/
def P16240688536632201112.Spec : Prop :=
  ∀ n, P16240688536632201112.a n = A002036 (n + 1)

end A002036

/-!
# A002037: 

The programs for A002037, there is no canonical definition to state claims against.
-/

/-! ## A002037.P14775821466607768814

`A034386(3^n)`
-/

namespace A002037.P14775821466607768814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (3 ^ n)

end

end A002037.P14775821466607768814

/-!
# A002038: Numbers dividing A002037(i) and larger than A002037(i-1), for some i>0.

The programs for A002038, there is no canonical definition to state claims against.
-/

/-! ## A002038.P12342850395206039977

`A018336(comp[(n²+n)²])`
-/

namespace A002038.P12342850395206039977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A002038.P12342850395206039977

/-! ## A002038.P7588367055981455689

`record[A086297(xor(1, n+1)+1)]`
-/

namespace A002038.P7588367055981455689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (Nat.xor 1 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002038.P7588367055981455689

/-! ## A002038.P8399504590671762947

`record[A086297(A114112(n+1))]`
-/

namespace A002038.P8399504590671762947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (A114112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002038.P8399504590671762947

/-! ## A002038.P6145864303121879573

`record[A086297(A130111(n+1))]`
-/

namespace A002038.P6145864303121879573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (A130111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002038.P6145864303121879573

/-! ## A002038.P6132849511387730229

`record[A086297(A138153(n+1))]`
-/

namespace A002038.P6132849511387730229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (A138153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002038.P6132849511387730229

/-!
# A002039: Convolution inverse of A143348.

The programs for A002039, there is no canonical definition to state claims against.
-/

/-! ## A002039.P660889945279543765

`A235037(A397438(n))`
-/

namespace A002039.P660889945279543765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235037 (A397438 n).toNat

end

end A002039.P660889945279543765

/-! ## A002039.P12303354228258518169

`A305759(A007910(n)+n)`
-/

namespace A002039.P12303354228258518169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A007910 n + (n : ℤ)).toNat

end

end A002039.P12303354228258518169

/-! ## A002039.P14427855475510959462

`A349852(n)+A124480(n+1)`
-/

namespace A002039.P14427855475510959462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349852 n + A124480 (n + 1)

end

end A002039.P14427855475510959462

/-!
# A002040: Related to partitions.

The programs for A002040, there is no canonical definition to state claims against.
-/

/-! ## A002040.P7603273716325825079

`abs(A187566(A000096(n)))`
-/

namespace A002040.P7603273716325825079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187566 (A000096 n).toNat|

end

end A002040.P7603273716325825079

/-! ## A002040.P15669136155687966575

`abs(A187566(Δ[A005581(n)]))`
-/

namespace A002040.P15669136155687966575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187566 (f1 (n + 1) - f1 n).toNat|

end

end A002040.P15669136155687966575

/-! ## A002040.P8991724290843383344

`abs(A187566(record[A061579(n)]))`
-/

namespace A002040.P8991724290843383344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187566 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A002040.P8991724290843383344

/-! ## A002040.P17135433001946478147

`record[gcd(A025581(n), A187566(n))]`
-/

namespace A002040.P17135433001946478147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A187566 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002040.P17135433001946478147

/-! ## A002040.P16204516560245637253

`gcd(A008683(3*(n+1)²), A187566(A000096(n)))`
-/

namespace A002040.P16204516560245637253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (3 * (n + 1) ^ 2)) (A187566 (A000096 n).toNat)

end

end A002040.P16204516560245637253

/-!
# A002041: Expansion of x/((1-x)(1-4x^2)(1-5x)).

The programs for A002041, the canonical program `A002041.P7285945767071957196` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002041 has offset 1).

The definition of A002041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+x^2+24x^3-20x^4))` (program `A002041.P7285945767071957196`, by `A002041.P7285945767071957196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002041.P7285945767071957196

`ogf(1/(1-6x+x^2+24x^3-20x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002041

/-- `ogf(1/(1-6x+x^2+24x^3-20x^4))` -/
def P7285945767071957196.Spec : Prop :=
  ∀ n, P7285945767071957196.a n = A002041 (n + 1)

theorem P7285945767071957196.correct : P7285945767071957196.Spec := by
  intro n
  simp only [A002041, Nat.add_sub_cancel]

end A002041

/-! ## A002041.P4867930291089440602

`∑[5^n+4*a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A002041.P4867930291089440602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 ^ n + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002041.P4867930291089440602

namespace A002041

/-- `∑[5^n+4*a(n-2)]` -/
def P4867930291089440602.Spec : Prop :=
  ∀ n, (P4867930291089440602.a n : ℤ) = A002041 (n + 1)

end A002041

/-! ## A002041.P9435104322194550640

`A016198(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A002041.P9435104322194550640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016198 n - 2 * a (n - 1)

end

end A002041.P9435104322194550640

namespace A002041

/-- `A016198(n)-2*a(n-1)` -/
def P9435104322194550640.Spec : Prop :=
  ∀ n, P9435104322194550640.a n = A002041 (n + 1)

end A002041

/-! ## A002041.P15815154083834778110

`A052992(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A002041.P15815154083834778110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052992 n + 5 * a (n - 1)

end

end A002041.P15815154083834778110

namespace A002041

/-- `A052992(n)+5*a(n-1)` -/
def P15815154083834778110.Spec : Prop :=
  ∀ n, P15815154083834778110.a n = A002041 (n + 1)

end A002041

/-! ## A002041.P8147653720593683024

`∑[A016127(n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A002041.P8147653720593683024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * a (n - 1)

end

end A002041.P8147653720593683024

namespace A002041

/-- `∑[A016127(n)]-2*a(n-1)` -/
def P8147653720593683024.Spec : Prop :=
  ∀ n, P8147653720593683024.a n = A002041 (n + 1)

end A002041

/-!
# A002042: a(n) = 7*4^n.

The programs for A002042, the canonical program `A002042.P9984433680327997589` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002042 has offset 0).

The definition of A002042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*4^n` (program `A002042.P9984433680327997589`, by `A002042.P9984433680327997589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002042.P9984433680327997589

`7*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002042

/-- `7*4^n` -/
def P9984433680327997589.Spec : Prop :=
  ∀ n, (P9984433680327997589.a n : ℤ) = A002042 n

theorem P9984433680327997589.correct : P9984433680327997589.Spec := by
  intro n
  simp only [A002042]

end A002042

/-!
# A002045: MacMahon's solid partitions of n in which 4 is the smallest summand.

The programs for A002045, there is no canonical definition to state claims against.
-/

/-! ## A002045.P14121847857655866653

`A107353(A300003(3*n+2)*A327505(n))`
-/

namespace A002045.P14121847857655866653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A300003 (3 * n + 2) * A327505 n).toNat

end

end A002045.P14121847857655866653

/-! ## A002045.P7694873359373003784

`A068438(A198019(n+1))*A185951(2*n+3)`
-/

namespace A002045.P7694873359373003784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068438 (A198019 (n + 1)).toNat * A185951 (2 * n + 3)

end

end A002045.P7694873359373003784

/-!
# A002046: Larger of an amicable pair with smaller member A002025(n).

The programs for A002046, there is no canonical definition to state claims against.
-/

/-! ## A002046.P11930255867202293356

`A180164(n+1)-A002025(n+1)`
-/

namespace A002046.P11930255867202293356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1) - A002025 (n + 1)

end

end A002046.P11930255867202293356

/-! ## A002046.P14124257789139880635

`A259180(2*(n+1))`
-/

namespace A002046.P14124257789139880635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * (n + 1))

end

end A002046.P14124257789139880635

/-! ## A002046.P6961945913105193675

`A066539(n+1)+A002025(n+1)`
-/

namespace A002046.P6961945913105193675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066539 (n + 1) + A002025 (n + 1)

end

end A002046.P6961945913105193675

/-! ## A002046.P11885352009039401326

`A061469(n+1)*A180327(n+1)`
-/

namespace A002046.P11885352009039401326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061469 (n + 1) * A180327 (n + 1)

end

end A002046.P11885352009039401326

/-! ## A002046.P8267158229556835327

`A180202(n+1)/A002025(n+1)`
-/

namespace A002046.P8267158229556835327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180202 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ)

end

end A002046.P8267158229556835327

/-! ## A002046.P2761690952239590839

`2*A275315(n+1)-A002025(n+1)`
-/

namespace A002046.P2761690952239590839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275315 (n + 1) - A002025 (n + 1)

end

end A002046.P2761690952239590839

/-! ## A002046.P10377941159117184085

`A180164(n+1)-A061469(n+1)*A180326(n+1)`
-/

namespace A002046.P10377941159117184085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180164 (n + 1) - A061469 (n + 1) * A180326 (n + 1)

end

end A002046.P10377941159117184085

/-! ## A002046.P6759994056499663578

`A002025(n+1)/A180326(n+1)*A180327(n+1)`
-/

namespace A002046.P6759994056499663578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) / (A180326 (n + 1) : ℚ) * (A180327 (n + 1) : ℚ)

end

end A002046.P6759994056499663578

/-! ## A002046.P5831278627069180259

`A275315(n+1)+A162884(n+1)`
-/

namespace A002046.P5831278627069180259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1) + A162884 (n + 1)

end

end A002046.P5831278627069180259

/-!
# A002047: Number of 3 X (2n+1) zero-sum arrays with entries -n,...,0,...,n.

The programs for A002047, there is no canonical definition to state claims against.
-/

/-! ## A002047.P17523881888449344718

`A289893(3*n+1)`
-/

namespace A002047.P17523881888449344718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289893 (3 * n + 1)

end

end A002047.P17523881888449344718

/-! ## A002047.P12229792923691850104

`and(-1, A289893(A016777(n)))`
-/

namespace A002047.P12229792923691850104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A289893 (A016777 n).toNat)

end

end A002047.P12229792923691850104

/-! ## A002047.P8018297617347619760

`record[A289893(n+1)^A049347(n)]`
-/

namespace A002047.P8018297617347619760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289893 (n + 1) : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002047.P8018297617347619760

/-! ## A002047.P7337834571561011828

`record[A289893(n+1)^A057078(n)]`
-/

namespace A002047.P7337834571561011828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289893 (n + 1) : ℚ) ^ (A057078 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002047.P7337834571561011828

/-! ## A002047.P1606904031107154856

`A055642(n)*A289893(A016777(n))`
-/

namespace A002047.P1606904031107154856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A289893 (A016777 n).toNat

end

end A002047.P1606904031107154856

/-!
# A002048: Segmented numbers, or prime numbers of measurement.

The programs for A002048, there is no canonical definition to state claims against.
-/

/-! ## A002048.P243397564782774816

`A048202(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002048.P243397564782774816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048202 (n + 1) - a (n - 1)

end

end A002048.P243397564782774816

/-! ## A002048.P8326623085078890717

`A048210(n+1)-A002049(n+1)`
-/

namespace A002048.P8326623085078890717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048210 (n + 1) - A002049 (n + 1)

end

end A002048.P8326623085078890717

/-! ## A002048.P12750771664635534956

`A002049(n+1)+1-A004978(n+1)`
-/

namespace A002048.P12750771664635534956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (1 - A004978 (n + 1))

end

end A002048.P12750771664635534956

/-! ## A002048.P16794312610548775433

`A002049(n+1)-A002049(A028310(n))*A057427(n)`
-/

namespace A002048.P16794312610548775433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) - A002049 (A028310 n).toNat * A057427 n

end

end A002048.P16794312610548775433

/-! ## A002048.P7383101604849847049

`Δ[A004978(n+1)]`
-/

namespace A002048.P7383101604849847049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002048.P7383101604849847049

/-! ## A002048.P14687979820697969278

`A004978(n+2)-A004978(n+1)`
-/

namespace A002048.P14687979820697969278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 2) - A004978 (n + 1)

end

end A002048.P14687979820697969278

/-! ## A002048.P17877946536603876974

`A048203(n+3)-A048202(n+3)`
-/

namespace A002048.P17877946536603876974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048203 (n + 3) - A048202 (n + 3)

end

end A002048.P17877946536603876974

/-! ## A002048.P3958994953078493247

`Δ[A048204(n+1)-A048202(n+2)]`
-/

namespace A002048.P3958994953078493247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 1) - A048202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002048.P3958994953078493247

/-! ## A002048.P10570874665296743699

`Δ[A048205(n+1)-A048203(n+3)]`
-/

namespace A002048.P10570874665296743699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048205 (n + 1) - A048203 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002048.P10570874665296743699

/-! ## A002048.P12084578988080791445

`A002049(n+1)+A048202(n+2)-A002049(n+2)`
-/

namespace A002048.P12084578988080791445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (n + 1) + (A048202 (n + 2) - A002049 (n + 2))

end

end A002048.P12084578988080791445

/-! ## A002048.P320560146178271333

`A048201(∑[n]+1)`
-/

namespace A002048.P320560146178271333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002048.P320560146178271333

/-! ## A002048.P11909264552089655492

`record[A048201(n+2)-A048201(n+1)]`
-/

namespace A002048.P11909264552089655492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (n + 2) - A048201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002048.P11909264552089655492

/-!
# A002049: Prime numbers of measurement.

The programs for A002049, there is no canonical definition to state claims against.
-/

/-! ## A002049.P6749721281617637247

`∑[A002048(n+1)]`
-/

namespace A002049.P6749721281617637247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002049.P6749721281617637247

/-! ## A002049.P9294946334534804320

`A048210(n+1)-A002048(n+1)`
-/

namespace A002049.P9294946334534804320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048210 (n + 1) - A002048 (n + 1)

end

end A002049.P9294946334534804320

/-! ## A002049.P18240066852840492262

`A002048(n+1)+A004978(n+1)-1`
-/

namespace A002049.P18240066852840492262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002048 (n + 1) + (A004978 (n + 1) - 1)

end

end A002049.P18240066852840492262

/-! ## A002049.P12560389899871737112

`A004978(n+2)-1`
-/

namespace A002049.P12560389899871737112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 2) - 1

end

end A002049.P12560389899871737112

/-! ## A002049.P6050400686661231235

`∑[abs(Δ[A004978(n+1)])]`
-/

namespace A002049.P6050400686661231235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002049.P6050400686661231235

/-! ## A002049.P15725846441185639193

`A048204(n+2)+1-A048202(n+3)`
-/

namespace A002049.P15725846441185639193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048204 (n + 2) + (1 - A048202 (n + 3))

end

end A002049.P15725846441185639193

/-! ## A002049.P1377920525361294205

`A001489(n+1)+A004978(n+2)+n`
-/

namespace A002049.P1377920525361294205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A004978 (n + 2) + (n : ℤ))

end

end A002049.P1377920525361294205

/-! ## A002049.P12093387085134124585

`A173702(n+2)-(A173702(n+1)+A002048(n+2))`
-/

namespace A002049.P12093387085134124585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173702 (n + 2) - (A173702 (n + 1) + A002048 (n + 2))

end

end A002049.P12093387085134124585

/-! ## A002049.P17456144107908336049

`∑[A048201(∑[n]+1)]`
-/

namespace A002049.P17456144107908336049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002049.P17456144107908336049

/-! ## A002049.P10302449410019422573

`A048201(∑[n+1])`
-/

namespace A002049.P10302449410019422573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048201 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002049.P10302449410019422573

/-!
# A002050: Number of simplices in barycentric subdivision of n-simplex.

The programs for A002050, there is no canonical definition to state claims against.
-/

/-! ## A002050.P4329059966782184427

`A000629(n)-1`
-/

namespace A002050.P4329059966782184427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n - 1

end

end A002050.P4329059966782184427

/-! ## A002050.P9829264131570222746

`floor(A007047(n)/2)`
-/

namespace A002050.P9829264131570222746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007047 n : ℚ) / 2⌋

end

end A002050.P9829264131570222746

/-! ## A002050.P15810708346005989075

`∑[A162509(n)]-1`
-/

namespace A002050.P15810708346005989075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002050.P15810708346005989075

/-! ## A002050.P8973010617151861271

`A076726(n)-ceil(acot(n))`
-/

namespace A002050.P8973010617151861271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A002050.P8973010617151861271

/-! ## A002050.P14655358025898005027

`A054255(∑[n+1])-1`
-/

namespace A002050.P14655358025898005027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A002050.P14655358025898005027

/-! ## A002050.P3093853139545410773

`A090665(∑[n]+1)-1`
-/

namespace A002050.P3093853139545410773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A002050.P3093853139545410773

/-! ## A002050.P8005253452636987390

`record[A090665(n+1)-1]`
-/

namespace A002050.P8005253452636987390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002050.P8005253452636987390

/-! ## A002050.P1601400262236312529

`A129062(∑[n+1]+1)-1`
-/

namespace A002050.P1601400262236312529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A002050.P1601400262236312529

/-! ## A002050.P4706788707115172208

`A073146(A000096(n))-1`
-/

namespace A002050.P4706788707115172208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (A000096 n).toNat - 1

end

end A002050.P4706788707115172208

/-! ## A002050.P18384023266488859519

`A007047(n)%A000629(n)`
-/

namespace A002050.P18384023266488859519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007047 n) (A000629 n)

end

end A002050.P18384023266488859519

/-!
# A002051: Steffensen's bracket function [n,2].

The programs for A002051, there is no canonical definition to state claims against.
-/

/-! ## A002051.P11251204018873505803

`(A000629(n)-2^n)/2`
-/

namespace A002051.P11251204018873505803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n - (2 ^ n : ℤ) : ℚ) / 2

end

end A002051.P11251204018873505803

/-! ## A002051.P8908488805412134595

`A000670(n)-ceil(2^(n-1))`
-/

namespace A002051.P8908488805412134595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P8908488805412134595

/-! ## A002051.P15392396491090848937

`(A002050(n)+1-2^n)/2`
-/

namespace A002051.P15392396491090848937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002050 n + 1 - (2 ^ n : ℤ) : ℚ) / 2

end

end A002051.P15392396491090848937

/-! ## A002051.P3490055278755629268

`A154921(∑[n])-ceil(2^(n-1))`
-/

namespace A002051.P3490055278755629268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P3490055278755629268

/-! ## A002051.P1973083393364657845

`A052875(n)+1-ceil(2^(n-1))`
-/

namespace A002051.P1973083393364657845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + 1 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P1973083393364657845

/-! ## A002051.P7603585715074413007

`A076726(n)/2-ceil(2^(n-1))`
-/

namespace A002051.P7603585715074413007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A002051.P7603585715074413007

/-! ## A002051.P5283295365951224144

`A226513(∑[n]+n)-ceil(2^(n-1))`
-/

namespace A002051.P5283295365951224144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + n) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P5283295365951224144

/-! ## A002051.P5075063788175237440

`2*A032109(n)-1-ceil(2^(n-1))`
-/

namespace A002051.P5075063788175237440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032109 n - 1 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P5075063788175237440

/-! ## A002051.P10672260438299970277

`∑{d}[n+1, A006936(#)]-ceil(2^(n-1))`
-/

namespace A002051.P10672260438299970277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006936 d - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A002051.P10672260438299970277

/-! ## A002051.P1222967889331644912

`A122101(∑[n])-A011782(n)`
-/

namespace A002051.P1222967889331644912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A011782 n

end

end A002051.P1222967889331644912

/-!
# A002052: Prime determinants of forms with class number 2.

The programs for A002052, there is no canonical definition to state claims against.
-/

/-! ## A002052.P17252081688714564214

`p?[A341649(n+4)]`
-/

namespace A002052.P17252081688714564214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002052.P17252081688714564214

/-! ## A002052.P6201690521180462784

`∩[A002145(n+1), A341649(n+1)]`
-/

namespace A002052.P6201690521180462784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P6201690521180462784

/-! ## A002052.P5168408008352334327

`∩[A045395(n+1), A341649(n+1)]`
-/

namespace A002052.P5168408008352334327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P5168408008352334327

/-! ## A002052.P13365919692900285061

`∩[A004139(n+1), A341649(n+1)]`
-/

namespace A002052.P13365919692900285061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P13365919692900285061

/-! ## A002052.P7324182425836230786

`∩[A006005(n+1), A341649(n+1)]`
-/

namespace A002052.P7324182425836230786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P7324182425836230786

/-! ## A002052.P10496648318597926271

`∩[A341649(n+1), A061345(n)]`
-/

namespace A002052.P10496648318597926271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P10496648318597926271

/-! ## A002052.P15566041548047857383

`filter[A341649(n+3), A322980(#)]`
-/

namespace A002052.P15566041548047857383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A002052.P15566041548047857383

/-! ## A002052.P5575338068386471453

`filter[A341649(n+3), A257531(#)]`
-/

namespace A002052.P5575338068386471453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A002052.P5575338068386471453

/-! ## A002052.P7039751739974033312

`filter[A003172(n+1), A359152(#)]`
-/

namespace A002052.P7039751739974033312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A002052.P7039751739974033312

/-! ## A002052.P12081334436287951851

`∩[A002145(n+1), A003172(n+1)]`
-/

namespace A002052.P12081334436287951851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P12081334436287951851

/-! ## A002052.P1652496993700019867

`∩[A003172(n+1), A085760(n+1)]`
-/

namespace A002052.P1652496993700019867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P1652496993700019867

/-! ## A002052.P8465260586032310391

`∩[A003172(n+1), A094179(n+1)]`
-/

namespace A002052.P8465260586032310391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P8465260586032310391

/-! ## A002052.P17528760794919631842

`∩[A003172(n+1), A197504(n+1)]`
-/

namespace A002052.P17528760794919631842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P17528760794919631842

/-! ## A002052.P6363547686330681543

`∩[A003172(n+1), A309388(n+1)]`
-/

namespace A002052.P6363547686330681543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P6363547686330681543

/-! ## A002052.P16504994874516248695

`∩[A004614(n+1), A341649(n+1)]`
-/

namespace A002052.P16504994874516248695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002052.P16504994874516248695

/-! ## A002052.P11772851741320531153

`filter[A003172(n+1), A354028(#)]`
-/

namespace A002052.P11772851741320531153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A002052.P11772851741320531153

/-! ## A002052.P8099965385763007080

`filter[A003172(n+1), A354033(#)]`
-/

namespace A002052.P8099965385763007080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354033 (f1 j).toNat = 1) n)

end

end A002052.P8099965385763007080

/-! ## A002052.P2447707214211120181

`filter[A341649(n+3), A035263(#)]`
-/

namespace A002052.P2447707214211120181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A002052.P2447707214211120181

/-! ## A002052.P15810084234726350267

`filter[A341649(n+3), A105234(#)]`
-/

namespace A002052.P15810084234726350267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A002052.P15810084234726350267

/-! ## A002052.P16582263902833147158

`filter[A341649(n+3), A152822(#)]`
-/

namespace A002052.P16582263902833147158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A002052.P16582263902833147158

/-!
# A002054: Binomial coefficient C(2n+1, n-1).

The programs for A002054, the canonical program `A002054.P2149703825712078038` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002054 has offset 1).

The definition of A002054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+1)+1, n)` (program `A002054.P2149703825712078038`, by `A002054.P2149703825712078038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002054.P12147104978533058209

`A001405(2*(n+1)+1)-A000108(n+2)`
-/

namespace A002054.P12147104978533058209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * (n + 1) + 1) - A000108 (n + 2)

end

end A002054.P12147104978533058209

namespace A002054

/-- `A001405(2*(n+1)+1)-A000108(n+2)` -/
def P12147104978533058209.Spec : Prop :=
  ∀ n, P12147104978533058209.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P2149703825712078038

`C(2*(n+1)+1, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002054

/-- `C(2*(n+1)+1, n)` -/
def P2149703825712078038.Spec : Prop :=
  ∀ n, (P2149703825712078038.a n : ℤ) = A002054 (n + 1)

theorem P2149703825712078038.correct : P2149703825712078038.Spec := by
  intro n
  simp only [A002054, Nat.add_sub_cancel]

end A002054

/-! ## A002054.P10191527166387067701

`Δ[A371965(n+2)]`
-/

namespace A002054.P10191527166387067701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002054.P10191527166387067701

namespace A002054

/-- `Δ[A371965(n+2)]` -/
def P10191527166387067701.Spec : Prop :=
  ∀ n, P10191527166387067701.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P14120985123877685737

`A116385(2*(n+1))`
-/

namespace A002054.P14120985123877685737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * (n + 1))

end

end A002054.P14120985123877685737

namespace A002054

/-- `A116385(2*(n+1))` -/
def P14120985123877685737.Spec : Prop :=
  ∀ n, P14120985123877685737.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P2877950110053712115

`A116400(2*(n+1))`
-/

namespace A002054.P2877950110053712115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116400 (2 * (n + 1))

end

end A002054.P2877950110053712115

namespace A002054

/-- `A116400(2*(n+1))` -/
def P2877950110053712115.Spec : Prop :=
  ∀ n, P2877950110053712115.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P7245940406128233030

`A037951(2*n+3)`
-/

namespace A002054.P7245940406128233030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * n + 3)

end

end A002054.P7245940406128233030

namespace A002054

/-- `A037951(2*n+3)` -/
def P7245940406128233030.Spec : Prop :=
  ∀ n, P7245940406128233030.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P1619551593482563196

`A037955(2*n+3)`
-/

namespace A002054.P1619551593482563196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 3)

end

end A002054.P1619551593482563196

namespace A002054

/-- `A037955(2*n+3)` -/
def P1619551593482563196.Spec : Prop :=
  ∀ n, P1619551593482563196.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P1187301683658251012

`A276666(n+2)/2`
-/

namespace A002054.P1187301683658251012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276666 (n + 2) : ℚ) / 2

end

end A002054.P1187301683658251012

namespace A002054

/-- `A276666(n+2)/2` -/
def P1187301683658251012.Spec : Prop :=
  ∀ n, P1187301683658251012.a n = (A002054 (n + 1) : ℚ)

end A002054

/-! ## A002054.P6874586639650181148

`A024483(n+3)/2`
-/

namespace A002054.P6874586639650181148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024483 (n + 3) : ℚ) / 2

end

end A002054.P6874586639650181148

namespace A002054

/-- `A024483(n+3)/2` -/
def P6874586639650181148.Spec : Prop :=
  ∀ n, P6874586639650181148.a n = (A002054 (n + 1) : ℚ)

end A002054

/-! ## A002054.P2893574318062179984

`A191529(2*n+5)`
-/

namespace A002054.P2893574318062179984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * n + 5)

end

end A002054.P2893574318062179984

namespace A002054

/-- `A191529(2*n+5)` -/
def P2893574318062179984.Spec : Prop :=
  ∀ n, P2893574318062179984.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P6627107118008830227

`A047182(2*n+3)+1`
-/

namespace A002054.P6627107118008830227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047182 (2 * n + 3) + 1

end

end A002054.P6627107118008830227

namespace A002054

/-- `A047182(2*n+3)+1` -/
def P6627107118008830227.Spec : Prop :=
  ∀ n, P6627107118008830227.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P15080386634909749122

`A116385(Δ[(n+1)²])/2`
-/

namespace A002054.P15080386634909749122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A002054.P15080386634909749122

namespace A002054

/-- `A116385(Δ[(n+1)²])/2` -/
def P15080386634909749122.Spec : Prop :=
  ∀ n, P15080386634909749122.a n = (A002054 (n + 1) : ℚ)

end A002054

/-! ## A002054.P18323034908757380044

`(n+1)/2*A000108(n+2)`
-/

namespace A002054.P18323034908757380044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000108 (n + 2) : ℚ)

end

end A002054.P18323034908757380044

namespace A002054

/-- `(n+1)/2*A000108(n+2)` -/
def P18323034908757380044.Spec : Prop :=
  ∀ n, P18323034908757380044.a n = (A002054 (n + 1) : ℚ)

end A002054

/-! ## A002054.P8613430086713008769

`record[A037955(A026741(n)+2)]`
-/

namespace A002054.P8613430086713008769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A026741 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002054.P8613430086713008769

namespace A002054

/-- `record[A037955(A026741(n)+2)]` -/
def P8613430086713008769.Spec : Prop :=
  ∀ n, P8613430086713008769.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P12013175545261089967

`A265610(n+1)+A001700(n)`
-/

namespace A002054.P12013175545261089967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 (n + 1) + A001700 n

end

end A002054.P12013175545261089967

namespace A002054

/-- `A265610(n+1)+A001700(n)` -/
def P12013175545261089967.Spec : Prop :=
  ∀ n, P12013175545261089967.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P13022695544495965714

`A349695(n+1)+A099376(n)`
-/

namespace A002054.P13022695544495965714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) + A099376 n

end

end A002054.P13022695544495965714

namespace A002054

/-- `A349695(n+1)+A099376(n)` -/
def P13022695544495965714.Spec : Prop :=
  ∀ n, P13022695544495965714.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P1092961905185668704

`A007946(n)-A001791(n+1)`
-/

namespace A002054.P1092961905185668704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 n - A001791 (n + 1)

end

end A002054.P1092961905185668704

namespace A002054

/-- `A007946(n)-A001791(n+1)` -/
def P1092961905185668704.Spec : Prop :=
  ∀ n, P1092961905185668704.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P15125396046231839518

`A214955(n+1)-A099376(n)`
-/

namespace A002054.P15125396046231839518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214955 (n + 1) - A099376 n

end

end A002054.P15125396046231839518

namespace A002054

/-- `A214955(n+1)-A099376(n)` -/
def P15125396046231839518.Spec : Prop :=
  ∀ n, P15125396046231839518.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P11032522835392327494

`A216318(n+2)-A001700(n)`
-/

namespace A002054.P11032522835392327494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216318 (n + 2) - A001700 n

end

end A002054.P11032522835392327494

namespace A002054

/-- `A216318(n+2)-A001700(n)` -/
def P11032522835392327494.Spec : Prop :=
  ∀ n, P11032522835392327494.a n = A002054 (n + 1)

end A002054

/-! ## A002054.P16548255606220223866

`A265610(n+1)+A088218(n+1)`
-/

namespace A002054.P16548255606220223866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 (n + 1) + A088218 (n + 1)

end

end A002054.P16548255606220223866

namespace A002054

/-- `A265610(n+1)+A088218(n+1)` -/
def P16548255606220223866.Spec : Prop :=
  ∀ n, P16548255606220223866.a n = A002054 (n + 1)

end A002054

/-!
# A002055: Number of diagonal dissections of a convex n-gon into n-4 regions.

The programs for A002055, the canonical program `A002055.P3140109373292398109` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002055 has offset 5).

The definition of A002055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002055.P3140109373292398109

`(n+2)*C(2*n+4, n)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002055

/-- `(n+2)*C(2*n+4, n)/2` -/
def P3140109373292398109.Spec : Prop :=
  ∀ n, P3140109373292398109.a n = (A002055 (n + 5) : ℚ)

end A002055

/-! ## A002055.P3923657623588758372

`(n+2)/2*A002694(n+2)`
-/

namespace A002055.P3923657623588758372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002694 (n + 2) : ℚ)

end

end A002055.P3923657623588758372

namespace A002055

/-- `(n+2)/2*A002694(n+2)` -/
def P3923657623588758372.Spec : Prop :=
  ∀ n, P3923657623588758372.a n = (A002055 (n + 5) : ℚ)

end A002055

/-! ## A002055.P6743341208794558895

`A002457(n+1)-A002054(n+2)`
-/

namespace A002055.P6743341208794558895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A002054 (n + 2)

end

end A002055.P6743341208794558895

namespace A002055

/-- `A002457(n+1)-A002054(n+2)` -/
def P6743341208794558895.Spec : Prop :=
  ∀ n, P6743341208794558895.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P1427278764840051963

`A074922(n+2)+A002694(n+2)`
-/

namespace A002055.P1427278764840051963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074922 (n + 2) + A002694 (n + 2)

end

end A002055.P1427278764840051963

namespace A002055

/-- `A074922(n+2)+A002694(n+2)` -/
def P1427278764840051963.Spec : Prop :=
  ∀ n, P1427278764840051963.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P14519679247632102722

`A002057(n)+n*A002054(n+1)`
-/

namespace A002055.P14519679247632102722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (n : ℤ) * A002054 (n + 1)

end

end A002055.P14519679247632102722

namespace A002055

/-- `A002057(n)+n*A002054(n+1)` -/
def P14519679247632102722.Spec : Prop :=
  ∀ n, P14519679247632102722.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P13971727134765515536

`A056040(2*n+3)-A002054(n+2)`
-/

namespace A002055.P13971727134765515536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 3) - A002054 (n + 2)

end

end A002055.P13971727134765515536

namespace A002055

/-- `A056040(2*n+3)-A002054(n+2)` -/
def P13971727134765515536.Spec : Prop :=
  ∀ n, P13971727134765515536.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P13160673646594786392

`A099376(n+1)+A000108(n+2)*∑[n]`
-/

namespace A002055.P13160673646594786392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000108 (n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002055.P13160673646594786392

namespace A002055

/-- `A099376(n+1)+A000108(n+2)*∑[n]` -/
def P13160673646594786392.Spec : Prop :=
  ∀ n, P13160673646594786392.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P13834941108153208721

`A037956(2*(n+2))/(n+1)*A000217(n+1)`
-/

namespace A002055.P13834941108153208721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037956 (2 * (n + 2)) : ℚ) / (n + 1 : ℚ) * (A000217 (n + 1) : ℚ)

end

end A002055.P13834941108153208721

namespace A002055

/-- `A037956(2*(n+2))/(n+1)*A000217(n+1)` -/
def P13834941108153208721.Spec : Prop :=
  ∀ n, P13834941108153208721.a n = (A002055 (n + 5) : ℚ)

end A002055

/-! ## A002055.P7643765441654220589

`A257888(n+3)/4`
-/

namespace A002055.P7643765441654220589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257888 (n + 3) : ℚ) / 4

end

end A002055.P7643765441654220589

namespace A002055

/-- `A257888(n+3)/4` -/
def P7643765441654220589.Spec : Prop :=
  ∀ n, P7643765441654220589.a n = (A002055 (n + 5) : ℚ)

end A002055

/-! ## A002055.P11474037440797793070

`A034267(n+2)-A002457(n+1)`
-/

namespace A002055.P11474037440797793070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034267 (n + 2) - A002457 (n + 1)

end

end A002055.P11474037440797793070

namespace A002055

/-- `A034267(n+2)-A002457(n+1)` -/
def P11474037440797793070.Spec : Prop :=
  ∀ n, P11474037440797793070.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P15785285706586593764

`A049070(n+1)/(n+2)`
-/

namespace A002055.P15785285706586593764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049070 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A002055.P15785285706586593764

namespace A002055

/-- `A049070(n+1)/(n+2)` -/
def P15785285706586593764.Spec : Prop :=
  ∀ n, P15785285706586593764.a n = (A002055 (n + 5) : ℚ)

end A002055

/-! ## A002055.P12457406286679830043

`A126216(∑[n+2]+4)`
-/

namespace A002055.P12457406286679830043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A002055.P12457406286679830043

namespace A002055

/-- `A126216(∑[n+2]+4)` -/
def P12457406286679830043.Spec : Prop :=
  ∀ n, P12457406286679830043.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P18349586461722268019

`A133336(A340266(n+2))`
-/

namespace A002055.P18349586461722268019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (A340266 (n + 2)).toNat

end

end A002055.P18349586461722268019

namespace A002055

/-- `A133336(A340266(n+2))` -/
def P18349586461722268019.Spec : Prop :=
  ∀ n, P18349586461722268019.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P2866770223902645633

`A033282(∑[n+3]+3)`
-/

namespace A002055.P2866770223902645633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002055.P2866770223902645633

namespace A002055

/-- `A033282(∑[n+3]+3)` -/
def P2866770223902645633.Spec : Prop :=
  ∀ n, P2866770223902645633.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P2667117381169797342

`record[A086810(A055998(n))]`
-/

namespace A002055.P2667117381169797342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002055.P2667117381169797342

namespace A002055

/-- `record[A086810(A055998(n))]` -/
def P2667117381169797342.Spec : Prop :=
  ∀ n, P2667117381169797342.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P1668425930460951530

`A086810(A055998(n+2))`
-/

namespace A002055.P1668425930460951530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055998 (n + 2)).toNat

end

end A002055.P1668425930460951530

namespace A002055

/-- `A086810(A055998(n+2))` -/
def P1668425930460951530.Spec : Prop :=
  ∀ n, P1668425930460951530.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P5928506358041879098

`A086810(A155212(n)+5)`
-/

namespace A002055.P5928506358041879098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A155212 n + 5).toNat

end

end A002055.P5928506358041879098

namespace A002055

/-- `A086810(A155212(n)+5)` -/
def P5928506358041879098.Spec : Prop :=
  ∀ n, P5928506358041879098.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P12539168712407214681

`A086810(eq[4, A052509(n)])`
-/

namespace A002055.P12539168712407214681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002055.P12539168712407214681

namespace A002055

/-- `A086810(eq[4, A052509(n)])` -/
def P12539168712407214681.Spec : Prop :=
  ∀ n, P12539168712407214681.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P14135868195079413249

`A086810(Δ[A006503(n+1)])`
-/

namespace A002055.P14135868195079413249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (f1 (n + 1) - f1 n).toNat

end

end A002055.P14135868195079413249

namespace A002055

/-- `A086810(Δ[A006503(n+1)])` -/
def P14135868195079413249.Spec : Prop :=
  ∀ n, P14135868195079413249.a n = A002055 (n + 5)

end A002055

/-! ## A002055.P15105931261634057239

`record[A086810(A055999(n)-n)]`
-/

namespace A002055.P15105931261634057239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055999 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002055.P15105931261634057239

namespace A002055

/-- `record[A086810(A055999(n)-n)]` -/
def P15105931261634057239.Spec : Prop :=
  ∀ n, P15105931261634057239.a n = A002055 (n + 5)

end A002055

/-!
# A002056: Number of diagonal dissections of a convex n-gon into n-5 regions.

The programs for A002056, the canonical program `A002056.P7052034345818053829` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002056 has offset 6).

The definition of A002056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002056.P7052034345818053829

`C(n+3, 3)*C(2*(n+6)-7, n)/(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002056

/-- `C(n+3, 3)*C(2*(n+6)-7, n)/(n+1)` -/
def P7052034345818053829.Spec : Prop :=
  ∀ n, P7052034345818053829.a n = (A002056 (n + 6) : ℚ)

end A002056

/-! ## A002056.P15978595382519149747

`A126216(A052905(n)+9)`
-/

namespace A002056.P15978595382519149747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A052905 n + 9).toNat

end

end A002056.P15978595382519149747

namespace A002056

/-- `A126216(A052905(n)+9)` -/
def P15978595382519149747.Spec : Prop :=
  ∀ n, P15978595382519149747.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P7800162976218149403

`A126216(A167614(n+2)+1)`
-/

namespace A002056.P7800162976218149403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A167614 (n + 2) + 1).toNat

end

end A002056.P7800162976218149403

namespace A002056

/-- `A126216(A167614(n+2)+1)` -/
def P7800162976218149403.Spec : Prop :=
  ∀ n, P7800162976218149403.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P17588811632767383512

`A033282(A000096(n+3))`
-/

namespace A002056.P17588811632767383512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000096 (n + 3)).toNat

end

end A002056.P17588811632767383512

namespace A002056

/-- `A033282(A000096(n+3))` -/
def P17588811632767383512.Spec : Prop :=
  ∀ n, P17588811632767383512.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P14349516312262494917

`A086810(A046691(n+3))`
-/

namespace A002056.P14349516312262494917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A046691 (n + 3)).toNat

end

end A002056.P14349516312262494917

namespace A002056

/-- `A086810(A046691(n+3))` -/
def P14349516312262494917.Spec : Prop :=
  ∀ n, P14349516312262494917.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P11400610365780765848

`A033282(A056000(n)+9)`
-/

namespace A002056.P11400610365780765848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A056000 n + 9).toNat

end

end A002056.P11400610365780765848

namespace A002056

/-- `A033282(A056000(n)+9)` -/
def P11400610365780765848.Spec : Prop :=
  ∀ n, P11400610365780765848.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P15854779716198201435

`A086810(A056115(n)+11)`
-/

namespace A002056.P15854779716198201435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A056115 n + 11).toNat

end

end A002056.P15854779716198201435

namespace A002056

/-- `A086810(A056115(n)+11)` -/
def P15854779716198201435.Spec : Prop :=
  ∀ n, P15854779716198201435.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P15297293136531133991

`record[A086810(A055999(n)+2)]`
-/

namespace A002056.P15297293136531133991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002056.P15297293136531133991

namespace A002056

/-- `record[A086810(A055999(n)+2)]` -/
def P15297293136531133991.Spec : Prop :=
  ∀ n, P15297293136531133991.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P13498352226043131674

`A033282(A034856(n+3)+1)`
-/

namespace A002056.P13498352226043131674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A034856 (n + 3) + 1).toNat

end

end A002056.P13498352226043131674

namespace A002056

/-- `A033282(A034856(n+3)+1)` -/
def P13498352226043131674.Spec : Prop :=
  ∀ n, P13498352226043131674.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P13391885777779559484

`record[A086810(A055998(n+1)-1)]`
-/

namespace A002056.P13391885777779559484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055998 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002056.P13391885777779559484

namespace A002056

/-- `record[A086810(A055998(n+1)-1)]` -/
def P13391885777779559484.Spec : Prop :=
  ∀ n, P13391885777779559484.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P3654936824110019353

`A086810(A000096(n+3)+n+2)`
-/

namespace A002056.P3654936824110019353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A002056.P3654936824110019353

namespace A002056

/-- `A086810(A000096(n+3)+n+2)` -/
def P3654936824110019353.Spec : Prop :=
  ∀ n, P3654936824110019353.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P15857447293170576084

`A033282(A046691(n+3)-(n+2))`
-/

namespace A002056.P15857447293170576084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A046691 (n + 3) - (n + 2 : ℤ)).toNat

end

end A002056.P15857447293170576084

namespace A002056

/-- `A033282(A046691(n+3)-(n+2))` -/
def P15857447293170576084.Spec : Prop :=
  ∀ n, P15857447293170576084.a n = A002056 (n + 6)

end A002056

/-! ## A002056.P16229689452288984760

`A086810(A034856(n+3)+n+3)`
-/

namespace A002056.P16229689452288984760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A034856 (n + 3) + (n + 3 : ℤ)).toNat

end

end A002056.P16229689452288984760

namespace A002056

/-- `A086810(A034856(n+3)+n+3)` -/
def P16229689452288984760.Spec : Prop :=
  ∀ n, P16229689452288984760.a n = A002056 (n + 6)

end A002056

/-!
# A002057: Fourth convolution of Catalan numbers: a(n) = 4*binomial(2*n+3,n)/(n+4).

The programs for A002057, the canonical program `A002057.P16485173035074746318` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002057 has offset 0).

The definition of A002057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002057.P16485173035074746318

`2*(n+1)*A000108(n+2)/(n+4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002057

/-- `2*(n+1)*A000108(n+2)/(n+4)` -/
def P16485173035074746318.Spec : Prop :=
  ∀ n, P16485173035074746318.a n = (A002057 n : ℚ)

end A002057

/-! ## A002057.P13943020892744185510

`4*C(2*n+3, n)/(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002057.P13943020892744185510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (2 * n + 3) n : ℚ) / (n + 4 : ℚ)

end

end A002057.P13943020892744185510

namespace A002057

/-- `4*C(2*n+3, n)/(n+4)` -/
def P13943020892744185510.Spec : Prop :=
  ∀ n, P13943020892744185510.a n = (A002057 n : ℚ)

end A002057

/-! ## A002057.P9445666523797194533

`A099376(n+1)`
-/

namespace A002057.P9445666523797194533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1)

end

end A002057.P9445666523797194533

namespace A002057

/-- `A099376(n+1)` -/
def P9445666523797194533.Spec : Prop :=
  ∀ n, P9445666523797194533.a n = A002057 n

end A002057

/-! ## A002057.P6072053394651884486

`record[abs(A115143(n))]`
-/

namespace A002057.P6072053394651884486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115143 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002057.P6072053394651884486

namespace A002057

/-- `record[abs(A115143(n))]` -/
def P6072053394651884486.Spec : Prop :=
  ∀ n, P6072053394651884486.a n = A002057 n

end A002057

/-! ## A002057.P9265581837126852027

`∑[∑[A370477(n)]]`
-/

namespace A002057.P9265581837126852027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370477 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002057.P9265581837126852027

namespace A002057

/-- `∑[∑[A370477(n)]]` -/
def P9265581837126852027.Spec : Prop :=
  ∀ n, P9265581837126852027.a n = A002057 n

end A002057

/-! ## A002057.P13089985481667593327

`∑[A026016(n+1)]`
-/

namespace A002057.P13089985481667593327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002057.P13089985481667593327

namespace A002057

/-- `∑[A026016(n+1)]` -/
def P13089985481667593327.Spec : Prop :=
  ∀ n, P13089985481667593327.a n = A002057 n

end A002057

/-! ## A002057.P18449265383427395

`∑[A071725(n+1)]`
-/

namespace A002057.P18449265383427395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002057.P18449265383427395

namespace A002057

/-- `∑[A071725(n+1)]` -/
def P18449265383427395.Spec : Prop :=
  ∀ n, P18449265383427395.a n = A002057 n

end A002057

/-! ## A002057.P17042292630326079399

`Δ[A279557(n+1)]`
-/

namespace A002057.P17042292630326079399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002057.P17042292630326079399

namespace A002057

/-- `Δ[A279557(n+1)]` -/
def P17042292630326079399.Spec : Prop :=
  ∀ n, P17042292630326079399.a n = A002057 n

end A002057

/-! ## A002057.P10273950728690711160

`Δ[abs(A104496(n+2))]`
-/

namespace A002057.P10273950728690711160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002057.P10273950728690711160

namespace A002057

/-- `Δ[abs(A104496(n+2))]` -/
def P10273950728690711160.Spec : Prop :=
  ∀ n, P10273950728690711160.a n = A002057 n

end A002057

/-! ## A002057.P13491139400177210280

`record[A099376(abs(1-n))]`
-/

namespace A002057.P13491139400177210280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002057.P13491139400177210280

namespace A002057

/-- `record[A099376(abs(1-n))]` -/
def P13491139400177210280.Spec : Prop :=
  ∀ n, P13491139400177210280.a n = A002057 n

end A002057

/-! ## A002057.P2533703895875179786

`∑[A026021(2*n+1)]`
-/

namespace A002057.P2533703895875179786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002057.P2533703895875179786

namespace A002057

/-- `∑[A026021(2*n+1)]` -/
def P2533703895875179786.Spec : Prop :=
  ∀ n, P2533703895875179786.a n = A002057 n

end A002057

/-! ## A002057.P10028272982217580740

`(n+1)/3*A007054(n+2)`
-/

namespace A002057.P10028272982217580740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A007054 (n + 2) : ℚ)

end

end A002057.P10028272982217580740

namespace A002057

/-- `(n+1)/3*A007054(n+2)` -/
def P10028272982217580740.Spec : Prop :=
  ∀ n, P10028272982217580740.a n = (A002057 n : ℚ)

end A002057

/-! ## A002057.P5198852847736500158

`A026029(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A002057.P5198852847736500158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026029 n + 2 * a (n - 1)

end

end A002057.P5198852847736500158

namespace A002057

/-- `A026029(n)+2*a(n-1)` -/
def P5198852847736500158.Spec : Prop :=
  ∀ n, P5198852847736500158.a n = A002057 n

end A002057

/-! ## A002057.P5405504448140142970

`A071737(n)-A000588(n)`
-/

namespace A002057.P5405504448140142970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071737 n - A000588 n

end

end A002057.P5405504448140142970

namespace A002057

/-- `A071737(n)-A000588(n)` -/
def P5405504448140142970.Spec : Prop :=
  ∀ n, P5405504448140142970.a n = A002057 n

end A002057

/-! ## A002057.P15093827647933749392

`A067324(n)-A000245(n+1)`
-/

namespace A002057.P15093827647933749392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A000245 (n + 1)

end

end A002057.P15093827647933749392

namespace A002057

/-- `A067324(n)-A000245(n+1)` -/
def P15093827647933749392.Spec : Prop :=
  ∀ n, P15093827647933749392.a n = A002057 n

end A002057

/-! ## A002057.P3031641277302760073

`A067324(n)-A071724(n+1)`
-/

namespace A002057.P3031641277302760073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A071724 (n + 1)

end

end A002057.P3031641277302760073

namespace A002057

/-- `A067324(n)-A071724(n+1)` -/
def P3031641277302760073.Spec : Prop :=
  ∀ n, P3031641277302760073.a n = A002057 n

end A002057

/-! ## A002057.P12680575111940594540

`2*A001558(n)-A104629(n)`
-/

namespace A002057.P12680575111940594540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001558 n - A104629 n

end

end A002057.P12680575111940594540

namespace A002057

/-- `2*A001558(n)-A104629(n)` -/
def P12680575111940594540.Spec : Prop :=
  ∀ n, P12680575111940594540.a n = A002057 n

end A002057

/-! ## A002057.P16731881271213683074

`Δ[A000245(n+1)-A014137(n)]`
-/

namespace A002057.P16731881271213683074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002057.P16731881271213683074

namespace A002057

/-- `Δ[A000245(n+1)-A014137(n)]` -/
def P16731881271213683074.Spec : Prop :=
  ∀ n, P16731881271213683074.a n = A002057 n

end A002057

/-! ## A002057.P7109086031660659351

`Δ[A000245(n+1)-A014138(n)]`
-/

namespace A002057.P7109086031660659351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002057.P7109086031660659351

namespace A002057

/-- `Δ[A000245(n+1)-A014138(n)]` -/
def P7109086031660659351.Spec : Prop :=
  ∀ n, P7109086031660659351.a n = A002057 n

end A002057

/-! ## A002057.P17647309290568627119

`Δ[A071724(n+1)-A014137(n)]`
-/

namespace A002057.P17647309290568627119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002057.P17647309290568627119

namespace A002057

/-- `Δ[A071724(n+1)-A014137(n)]` -/
def P17647309290568627119.Spec : Prop :=
  ∀ n, P17647309290568627119.a n = A002057 n

end A002057

/-!
# A002058: Number of internal triangles in all triangulations of an (n+1)-gon.

The programs for A002058, the canonical program `A002058.P5384101461092554470` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002058 has offset 5).

The definition of A002058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002058.P5384101461092554470

`2*A003516(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002058

/-- `2*A003516(n+2)` -/
def P5384101461092554470.Spec : Prop :=
  ∀ n, P5384101461092554470.a n = A002058 (n + 5)

theorem P5384101461092554470.correct : P5384101461092554470.Spec := by
  intro n
  simp only [A002058, Nat.add_sub_cancel]

end A002058

/-! ## A002058.P15907058402110252119

`2*C(2*(n+5)-5, n)`
-/

namespace A002058.P15907058402110252119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((2 * (n + 5) : ℤ) - 5).toNat n

end

end A002058.P15907058402110252119

namespace A002058

/-- `2*C(2*(n+5)-5, n)` -/
def P15907058402110252119.Spec : Prop :=
  ∀ n, (P15907058402110252119.a n : ℤ) = A002058 (n + 5)

end A002058

/-! ## A002058.P15871647988535560723

`2*A037953(2*n+5)`
-/

namespace A002058.P15871647988535560723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037953 (2 * n + 5)

end

end A002058.P15871647988535560723

namespace A002058

/-- `2*A037953(2*n+5)` -/
def P15871647988535560723.Spec : Prop :=
  ∀ n, P15871647988535560723.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P17482266134787766967

`2*A037956(2*n+5)`
-/

namespace A002058.P17482266134787766967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037956 (2 * n + 5)

end

end A002058.P17482266134787766967

namespace A002058

/-- `2*A037956(2*n+5)` -/
def P17482266134787766967.Spec : Prop :=
  ∀ n, P17482266134787766967.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P12887233336578135453

`(n+1)/2*Δ[A114277(n)]`
-/

namespace A002058.P12887233336578135453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A002058.P12887233336578135453

namespace A002058

/-- `(n+1)/2*Δ[A114277(n)]` -/
def P12887233336578135453.Spec : Prop :=
  ∀ n, P12887233336578135453.a n = (A002058 (n + 5) : ℚ)

end A002058

/-! ## A002058.P3257079222022652592

`(n+1)/2*A002057(n+1)`
-/

namespace A002058.P3257079222022652592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002057 (n + 1) : ℚ)

end

end A002058.P3257079222022652592

namespace A002058

/-- `(n+1)/2*A002057(n+1)` -/
def P3257079222022652592.Spec : Prop :=
  ∀ n, P3257079222022652592.a n = (A002058 (n + 5) : ℚ)

end A002058

/-! ## A002058.P4277740998205485631

`(n+1)/2*A099376(n+2)`
-/

namespace A002058.P4277740998205485631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A099376 (n + 2) : ℚ)

end

end A002058.P4277740998205485631

namespace A002058

/-- `(n+1)/2*A099376(n+2)` -/
def P4277740998205485631.Spec : Prop :=
  ∀ n, P4277740998205485631.a n = (A002058 (n + 5) : ℚ)

end A002058

/-! ## A002058.P5681541462660195667

`(n+1)/(n+3)*A002694(n+3)`
-/

namespace A002058.P5681541462660195667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ) * (A002694 (n + 3) : ℚ)

end

end A002058.P5681541462660195667

namespace A002058

/-- `(n+1)/(n+3)*A002694(n+3)` -/
def P5681541462660195667.Spec : Prop :=
  ∀ n, P5681541462660195667.a n = (A002058 (n + 5) : ℚ)

end A002058

/-! ## A002058.P16132679350691557004

`A002694(n+3)-A002057(n+1)`
-/

namespace A002058.P16132679350691557004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 3) - A002057 (n + 1)

end

end A002058.P16132679350691557004

namespace A002058

/-- `A002694(n+3)-A002057(n+1)` -/
def P16132679350691557004.Spec : Prop :=
  ∀ n, P16132679350691557004.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P8987203591496952284

`A003517(n+2)+A002696(n+3)`
-/

namespace A002058.P8987203591496952284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2) + A002696 (n + 3)

end

end A002058.P8987203591496952284

namespace A002058

/-- `A003517(n+2)+A002696(n+3)` -/
def P8987203591496952284.Spec : Prop :=
  ∀ n, P8987203591496952284.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P11732993225733237477

`A265612(n+2)-A002054(n+2)`
-/

namespace A002058.P11732993225733237477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 (n + 2) - A002054 (n + 2)

end

end A002058.P11732993225733237477

namespace A002058

/-- `A265612(n+2)-A002054(n+2)` -/
def P11732993225733237477.Spec : Prop :=
  ∀ n, P11732993225733237477.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P6371320685969729383

`A000984(n+3)-A071721(n+3)`
-/

namespace A002058.P6371320685969729383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 3) - A071721 (n + 3)

end

end A002058.P6371320685969729383

namespace A002058

/-- `A000984(n+3)-A071721(n+3)` -/
def P6371320685969729383.Spec : Prop :=
  ∀ n, P6371320685969729383.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P6925937496307663972

`2*(A006659(n+1)-A000344(n+2))`
-/

namespace A002058.P6925937496307663972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006659 (n + 1) - A000344 (n + 2))

end

end A002058.P6925937496307663972

namespace A002058

/-- `2*(A006659(n+1)-A000344(n+2))` -/
def P6925937496307663972.Spec : Prop :=
  ∀ n, P6925937496307663972.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P18247318529985795636

`2*(A002694(n+3)-A002054(n+2))`
-/

namespace A002058.P18247318529985795636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002694 (n + 3) - A002054 (n + 2))

end

end A002058.P18247318529985795636

namespace A002058

/-- `2*(A002694(n+3)-A002054(n+2))` -/
def P18247318529985795636.Spec : Prop :=
  ∀ n, P18247318529985795636.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P3836237225740374578

`2*(A003442(n+5)-A220881(n+5))`
-/

namespace A002058.P3836237225740374578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003442 (n + 5) - A220881 (n + 5))

end

end A002058.P3836237225740374578

namespace A002058

/-- `2*(A003442(n+5)-A220881(n+5))` -/
def P3836237225740374578.Spec : Prop :=
  ∀ n, P3836237225740374578.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P5755366325411962346

`2*(A006659(n+1)-∑[A026013(n+1)])`
-/

namespace A002058.P5755366325411962346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006659 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002058.P5755366325411962346

namespace A002058

/-- `2*(A006659(n+1)-∑[A026013(n+1)])` -/
def P5755366325411962346.Spec : Prop :=
  ∀ n, P5755366325411962346.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P17668254417452688413

`A003516(n+2)+A002694(n+3)-A002054(n+2)`
-/

namespace A002058.P17668254417452688413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2) + (A002694 (n + 3) - A002054 (n + 2))

end

end A002058.P17668254417452688413

namespace A002058

/-- `A003516(n+2)+A002694(n+3)-A002054(n+2)` -/
def P17668254417452688413.Spec : Prop :=
  ∀ n, P17668254417452688413.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P5829366484905884318

`A006659(n+2)-A024483(n+4)`
-/

namespace A002058.P5829366484905884318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 2) - A024483 (n + 4)

end

end A002058.P5829366484905884318

namespace A002058

/-- `A006659(n+2)-A024483(n+4)` -/
def P5829366484905884318.Spec : Prop :=
  ∀ n, P5829366484905884318.a n = A002058 (n + 5)

end A002058

/-! ## A002058.P6674079049749796343

`A006659(n+2)/2-A002057(n+1)`
-/

namespace A002058.P6674079049749796343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 2) : ℚ) / 2 - (A002057 (n + 1) : ℚ)

end

end A002058.P6674079049749796343

namespace A002058

/-- `A006659(n+2)/2-A002057(n+1)` -/
def P6674079049749796343.Spec : Prop :=
  ∀ n, P6674079049749796343.a n = (A002058 (n + 5) : ℚ)

end A002058

/-!
# A002059: Number of partitions of an n-gon into (n-4) parts.

The programs for A002059, the canonical program `A002059.P17298899108168933046` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002059 has offset 6).

The definition of A002059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002059.P17298899108168933046

`(n+3)*C(2*(n+6)-6, n+6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002059

/-- `(n+3)*C(2*(n+6)-6, n+6)` -/
def P17298899108168933046.Spec : Prop :=
  ∀ n, (P17298899108168933046.a n : ℤ) = A002059 (n + 6)

theorem P17298899108168933046.correct : P17298899108168933046.Spec := by
  intro n
  simp only [A002059, Nat.add_sub_cancel]

end A002059

/-! ## A002059.P3521197572160926616

`(n+3)*A002696(n+3)`
-/

namespace A002059.P3521197572160926616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002696 (n + 3)

end

end A002059.P3521197572160926616

namespace A002059

/-- `(n+3)*A002696(n+3)` -/
def P3521197572160926616.Spec : Prop :=
  ∀ n, P3521197572160926616.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P13363939231261112301

`(n+3)*A037953(2*(n+3))`
-/

namespace A002059.P13363939231261112301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A037953 (2 * (n + 3))

end

end A002059.P13363939231261112301

namespace A002059

/-- `(n+3)*A037953(2*(n+3))` -/
def P13363939231261112301.Spec : Prop :=
  ∀ n, P13363939231261112301.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P6325846147567307496

`(n+3)*A037957(2*(n+3))`
-/

namespace A002059.P6325846147567307496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A037957 (2 * (n + 3))

end

end A002059.P6325846147567307496

namespace A002059

/-- `(n+3)*A037957(2*(n+3))` -/
def P6325846147567307496.Spec : Prop :=
  ∀ n, P6325846147567307496.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P13738611136202520481

`(n+3)*A193635(∑[n+3])`
-/

namespace A002059.P13738611136202520481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A193635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002059.P13738611136202520481

namespace A002059

/-- `(n+3)*A193635(∑[n+3])` -/
def P13738611136202520481.Spec : Prop :=
  ∀ n, P13738611136202520481.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P14508051336557138999

`(n+3)*A094527(A052905(n)+8)`
-/

namespace A002059.P14508051336557138999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A094527 (A052905 n + 8).toNat

end

end A002059.P14508051336557138999

namespace A002059

/-- `(n+3)*A094527(A052905(n)+8)` -/
def P14508051336557138999.Spec : Prop :=
  ∀ n, P14508051336557138999.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P107253317415294206

`(n+3)*A062344(A046691(n+2))`
-/

namespace A002059.P107253317415294206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A062344 (A046691 (n + 2)).toNat

end

end A002059.P107253317415294206

namespace A002059

/-- `(n+3)*A062344(A046691(n+2))` -/
def P107253317415294206.Spec : Prop :=
  ∀ n, P107253317415294206.a n = A002059 (n + 6)

end A002059

/-! ## A002059.P17526046997733224080

`(n+3)*A007318(A059993(n+2))`
-/

namespace A002059.P17526046997733224080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A007318 (A059993 (n + 2)).toNat

end

end A002059.P17526046997733224080

namespace A002059

/-- `(n+3)*A007318(A059993(n+2))` -/
def P17526046997733224080.Spec : Prop :=
  ∀ n, P17526046997733224080.a n = A002059 (n + 6)

end A002059

/-!
# A002060: Number of partitions of an n-gon into (n-5) parts.

The programs for A002060, there is no canonical definition to state claims against.
-/

/-! ## A002060.P1945934962261858507

`A259476(C(n+5, 2))`
-/

namespace A002060.P1945934962261858507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259476 (Nat.choose (n + 5) 2)

end

end A002060.P1945934962261858507

/-! ## A002060.P1463749930270035947

`A259476(A112355(n+2))`
-/

namespace A002060.P1463749930270035947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259476 (A112355 (n + 2)).toNat

end

end A002060.P1463749930270035947

/-! ## A002060.P11636897681479223286

`A259476(A115744(n+2))`
-/

namespace A002060.P11636897681479223286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259476 (A115744 (n + 2)).toNat

end

end A002060.P11636897681479223286

/-!
# A002061: Central polygonal numbers: a(n) = n^2 - n + 1.

The programs for A002061, the canonical program `A002061.P13016590216674735232` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002061 has offset 0).

The definition of A002061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-n+1` (program `A002061.P13016590216674735232`, by `A002061.P13016590216674735232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002061.P5236284354228058246

`(n-1)²+n`
-/

namespace A002061.P5236284354228058246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + (n : ℤ)

end

end A002061.P5236284354228058246

namespace A002061

/-- `(n-1)²+n` -/
def P5236284354228058246.Spec : Prop :=
  ∀ n, P5236284354228058246.a n = A002061 n

theorem P5236284354228058246.correct : P5236284354228058246.Spec := by
  intro n
  simp only [A002061, Nat.add_sub_cancel, A002061.P5236284354228058246.a, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002061

/-! ## A002061.P13016590216674735232

`n²-n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002061

/-- `n²-n+1` -/
def P13016590216674735232.Spec : Prop :=
  ∀ n, P13016590216674735232.a n = A002061 n

theorem P13016590216674735232.correct : P13016590216674735232.Spec := by
  intro n
  simp only [A002061]

end A002061

/-! ## A002061.P8517878926989147057

`sqrt(A058031(n))`
-/

namespace A002061.P8517878926989147057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058031 n : ℝ)

end

end A002061.P8517878926989147057

namespace A002061

/-- `sqrt(A058031(n))` -/
def P8517878926989147057.Spec : Prop :=
  ∀ n, P8517878926989147057.a n = (A002061 n : ℝ)

end A002061

/-! ## A002061.P10124657102731962649

`or(1, n²-n)`
-/

namespace A002061.P10124657102731962649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ))

end

end A002061.P10124657102731962649

namespace A002061

/-- `or(1, n²-n)` -/
def P10124657102731962649.Spec : Prop :=
  ∀ n, P10124657102731962649.a n = A002061 n

end A002061

/-! ## A002061.P12924074703561374911

`xor(1, n²-n)`
-/

namespace A002061.P12924074703561374911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ))

end

end A002061.P12924074703561374911

namespace A002061

/-- `xor(1, n²-n)` -/
def P12924074703561374911.Spec : Prop :=
  ∀ n, P12924074703561374911.a n = A002061 n

end A002061

/-! ## A002061.P5673179553779121597

`round(cot(Δ[atan(n-1)]))`
-/

namespace A002061.P5673179553779121597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f1 (n + 1) - f1 n))

end

end A002061.P5673179553779121597

namespace A002061

/-- `round(cot(Δ[atan(n-1)]))` -/
def P5673179553779121597.Spec : Prop :=
  ∀ n, P5673179553779121597.a n = A002061 n

end A002061

/-! ## A002061.P601131144683250980

`ceil((sin(ϕ²)-n)²)`
-/

namespace A002061.P601131144683250980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (Real.goldenRatio ^ 2) - (n : ℝ)) ^ 2⌉

end

end A002061.P601131144683250980

namespace A002061

/-- `ceil((sin(ϕ²)-n)²)` -/
def P601131144683250980.Spec : Prop :=
  ∀ n, P601131144683250980.a n = A002061 n

end A002061

/-! ## A002061.P11738011411186314012

`abs(or(1, n*(n-1)))`
-/

namespace A002061.P11738011411186314012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) * ((n : ℤ) - 1))|

end

end A002061.P11738011411186314012

namespace A002061

/-- `abs(or(1, n*(n-1)))` -/
def P11738011411186314012.Spec : Prop :=
  ∀ n, P11738011411186314012.a n = A002061 n

end A002061

/-! ## A002061.P18379351581062878487

`abs(xor(1, n*(n-1)))`
-/

namespace A002061.P18379351581062878487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) * ((n : ℤ) - 1))|

end

end A002061.P18379351581062878487

namespace A002061

/-- `abs(xor(1, n*(n-1)))` -/
def P18379351581062878487.Spec : Prop :=
  ∀ n, P18379351581062878487.a n = A002061 n

end A002061

/-! ## A002061.P7508578736994005093

`Δ[2*C(n, 3)+n]`
-/

namespace A002061.P7508578736994005093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A002061.P7508578736994005093

namespace A002061

/-- `Δ[2*C(n, 3)+n]` -/
def P7508578736994005093.Spec : Prop :=
  ∀ n, P7508578736994005093.a n = A002061 n

theorem P7508578736994005093.correct : P7508578736994005093.Spec := by
  intro n
  simp only [A002061, Nat.add_sub_cancel, A002061.P7508578736994005093.f1, A002061.P7508578736994005093.a, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002061

/-! ## A002061.P11517642820960422475

`floor(1/Δ[atan(n-1)])`
-/

namespace A002061.P11517642820960422475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A002061.P11517642820960422475

namespace A002061

/-- `floor(1/Δ[atan(n-1)])` -/
def P11517642820960422475.Spec : Prop :=
  ∀ n, P11517642820960422475.a n = A002061 n

end A002061

/-! ## A002061.P17070339432333143445

`round(1/Δ[atan(n-1)])`
-/

namespace A002061.P17070339432333143445
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (f1 (n + 1) - f1 n))

end

end A002061.P17070339432333143445

namespace A002061

/-- `round(1/Δ[atan(n-1)])` -/
def P17070339432333143445.Spec : Prop :=
  ∀ n, P17070339432333143445.a n = A002061 n

end A002061

/-! ## A002061.P12673877580751640739

`abs(xor(-1, n²)+n)`
-/

namespace A002061.P12673877580751640739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (n ^ 2 : ℤ) + (n : ℤ)|

end

end A002061.P12673877580751640739

namespace A002061

/-- `abs(xor(-1, n²)+n)` -/
def P12673877580751640739.Spec : Prop :=
  ∀ n, P12673877580751640739.a n = A002061 n

end A002061

/-! ## A002061.P4383889910047334592

`-(xor(-1, n²)+n)`
-/

namespace A002061.P4383889910047334592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (n ^ 2 : ℤ) + (n : ℤ))

end

end A002061.P4383889910047334592

namespace A002061

/-- `-(xor(-1, n²)+n)` -/
def P4383889910047334592.Spec : Prop :=
  ∀ n, P4383889910047334592.a n = A002061 n

end A002061

/-! ## A002061.P4239278736499588228

`ceil(n²-(n-cos(1)))`
-/

namespace A002061.P4239278736499588228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - ((n : ℝ) - Real.cos (1 : ℝ))⌉

end

end A002061.P4239278736499588228

namespace A002061

/-- `ceil(n²-(n-cos(1)))` -/
def P4239278736499588228.Spec : Prop :=
  ∀ n, P4239278736499588228.a n = A002061 n

end A002061

/-! ## A002061.P17858304787238581129

`round(n²-(n-cos(1)))`
-/

namespace A002061.P17858304787238581129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) - ((n : ℝ) - Real.cos (1 : ℝ)))

end

end A002061.P17858304787238581129

namespace A002061

/-- `round(n²-(n-cos(1)))` -/
def P17858304787238581129.Spec : Prop :=
  ∀ n, P17858304787238581129.a n = A002061 n

end A002061

/-! ## A002061.P7636422682732213843

`ceil(n²-(n-sin(1)))`
-/

namespace A002061.P7636422682732213843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - ((n : ℝ) - Real.sin (1 : ℝ))⌉

end

end A002061.P7636422682732213843

namespace A002061

/-- `ceil(n²-(n-sin(1)))` -/
def P7636422682732213843.Spec : Prop :=
  ∀ n, P7636422682732213843.a n = A002061 n

end A002061

/-! ## A002061.P18336644611826098949

`floor(n²-(n-tan(1)))`
-/

namespace A002061.P18336644611826098949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) - ((n : ℝ) - Real.tan (1 : ℝ))⌋

end

end A002061.P18336644611826098949

namespace A002061

/-- `floor(n²-(n-tan(1)))` -/
def P18336644611826098949.Spec : Prop :=
  ∀ n, P18336644611826098949.a n = A002061 n

end A002061

/-! ## A002061.P12535500062925936096

`round(n²-(n-sin(1)))`
-/

namespace A002061.P12535500062925936096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) - ((n : ℝ) - Real.sin (1 : ℝ)))

end

end A002061.P12535500062925936096

namespace A002061

/-- `round(n²-(n-sin(1)))` -/
def P12535500062925936096.Spec : Prop :=
  ∀ n, P12535500062925936096.a n = A002061 n

end A002061

/-! ## A002061.P13013689141252956454

`floor(n²-(n-asin(1)))`
-/

namespace A002061.P13013689141252956454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) - ((n : ℝ) - Real.arcsin (1 : ℝ))⌋

end

end A002061.P13013689141252956454

namespace A002061

/-- `floor(n²-(n-asin(1)))` -/
def P13013689141252956454.Spec : Prop :=
  ∀ n, P13013689141252956454.a n = A002061 n

end A002061

/-!
# A002062: a(n) = Fibonacci(n) + n.

The programs for A002062, the canonical program `A002062.P4072436808255348786` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002062 has offset 0).

The definition of A002062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+n` (program `A002062.P4072436808255348786`, by `A002062.P4072436808255348786.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002062.P4072436808255348786

`A000045(n)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002062

/-- `A000045(n)+n` -/
def P4072436808255348786.Spec : Prop :=
  ∀ n, P4072436808255348786.a n = A002062 n

theorem P4072436808255348786.correct : P4072436808255348786.Spec := by
  intro n
  simp only [A002062]

end A002062

/-! ## A002062.P10801433660128103201

`2*a(n-1)-a(n-3)-1` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A002062.P10801433660128103201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 3) - 1

end

end A002062.P10801433660128103201

namespace A002062

/-- `2*a(n-1)-a(n-3)-1` -/
def P10801433660128103201.Spec : Prop :=
  ∀ n, P10801433660128103201.a n = A002062 n

end A002062

/-! ## A002062.P6708888922833274437

`∑[ogf((2x-3x^2)/(1-2x+x^3))]`
-/

namespace A002062.P6708888922833274437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002062.P6708888922833274437

namespace A002062

/-- `∑[ogf((2x-3x^2)/(1-2x+x^3))]` -/
def P6708888922833274437.Spec : Prop :=
  ∀ n, P6708888922833274437.a n = A002062 n

end A002062

/-! ## A002062.P3205205086896712725

`ogf((2x-3x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A002062.P3205205086896712725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -3, 2, 1, -1] n

end

end A002062.P3205205086896712725

namespace A002062

/-- `ogf((2x-3x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P3205205086896712725.Spec : Prop :=
  ∀ n, P3205205086896712725.a n = A002062 n

end A002062

/-! ## A002062.P2077633982552262678

`∑[a(n-1)+a(n-2)-1]` with `a(0)=0, a(1)=2`
-/

namespace A002062.P2077633982552262678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002062.P2077633982552262678

namespace A002062

/-- `∑[a(n-1)+a(n-2)-1]` -/
def P2077633982552262678.Spec : Prop :=
  ∀ n, P2077633982552262678.a n = A002062 n

end A002062

/-! ## A002062.P10159115016001008368

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A002062.P10159115016001008368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002062.P10159115016001008368

namespace A002062

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P10159115016001008368.Spec : Prop :=
  ∀ n, P10159115016001008368.a n = A002062 n

end A002062

/-! ## A002062.P15660386656205045727

`3-n+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A002062.P15660386656205045727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - (n : ℤ) + (a (n - 1) + a (n - 2))

end

end A002062.P15660386656205045727

namespace A002062

/-- `3-n+a(n-1)+a(n-2)` -/
def P15660386656205045727.Spec : Prop :=
  ∀ n, P15660386656205045727.a n = A002062 n

end A002062

/-! ## A002062.P5393982644450680702

`3-(n-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A002062.P5393982644450680702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A002062.P5393982644450680702

namespace A002062

/-- `3-(n-a(n-1)-a(n-2))` -/
def P5393982644450680702.Spec : Prop :=
  ∀ n, P5393982644450680702.a n = A002062 n

end A002062

/-! ## A002062.P2597978920247126447

`∑[1-A152163(n)]`
-/

namespace A002062.P2597978920247126447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002062.P2597978920247126447

namespace A002062

/-- `∑[1-A152163(n)]` -/
def P2597978920247126447.Spec : Prop :=
  ∀ n, P2597978920247126447.a n = A002062 n

end A002062

/-! ## A002062.P10977733117435262825

`abs(A236191(n))+n`
-/

namespace A002062.P10977733117435262825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| + (n : ℤ)

end

end A002062.P10977733117435262825

namespace A002062

/-- `abs(A236191(n))+n` -/
def P10977733117435262825.Spec : Prop :=
  ∀ n, P10977733117435262825.a n = A002062 n

end A002062

/-! ## A002062.P17069978345162826827

`∑[A210673(n)+n]`
-/

namespace A002062.P17069978345162826827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002062.P17069978345162826827

namespace A002062

/-- `∑[A210673(n)+n]` -/
def P17069978345162826827.Spec : Prop :=
  ∀ n, P17069978345162826827.a n = A002062 n

end A002062

/-! ## A002062.P13196504939015965174

`A212804(n+1)+n`
-/

namespace A002062.P13196504939015965174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (n : ℤ)

end

end A002062.P13196504939015965174

namespace A002062

/-- `A212804(n+1)+n` -/
def P13196504939015965174.Spec : Prop :=
  ∀ n, P13196504939015965174.a n = A002062 n

end A002062

/-! ## A002062.P9840381023290115072

`A001611(n)-1+n`
-/

namespace A002062.P9840381023290115072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1 + (n : ℤ)

end

end A002062.P9840381023290115072

namespace A002062

/-- `A001611(n)-1+n` -/
def P9840381023290115072.Spec : Prop :=
  ∀ n, P9840381023290115072.a n = A002062 n

theorem P9840381023290115072.correct : P9840381023290115072.Spec := by
  intro n
  simp only [A002062, Nat.add_sub_cancel, A002062.P9840381023290115072.a, A002062.P4072436808255348786.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002062

/-! ## A002062.P15988926510238398005

`n-A152163(n+2)`
-/

namespace A002062.P15988926510238398005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A152163 (n + 2)

end

end A002062.P15988926510238398005

namespace A002062

/-- `n-A152163(n+2)` -/
def P15988926510238398005.Spec : Prop :=
  ∀ n, P15988926510238398005.a n = A002062 n

end A002062

/-! ## A002062.P13617791917568516831

`A157725(n)-2+n`
-/

namespace A002062.P13617791917568516831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2 + (n : ℤ)

end

end A002062.P13617791917568516831

namespace A002062

/-- `A157725(n)-2+n` -/
def P13617791917568516831.Spec : Prop :=
  ∀ n, P13617791917568516831.a n = A002062 n

theorem P13617791917568516831.correct : P13617791917568516831.Spec := by
  intro n
  simp only [A002062, Nat.add_sub_cancel, A002062.P13617791917568516831.a, A002062.P4072436808255348786.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002062

/-! ## A002062.P14580959012165216514

`A065220(n)+2*n`
-/

namespace A002062.P14580959012165216514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (2 * n : ℤ)

end

end A002062.P14580959012165216514

namespace A002062

/-- `A065220(n)+2*n` -/
def P14580959012165216514.Spec : Prop :=
  ∀ n, P14580959012165216514.a n = A002062 n

theorem P14580959012165216514.correct : P14580959012165216514.Spec := by
  intro n
  simp only [A002062, Nat.add_sub_cancel, A002062.P14580959012165216514.a, A002062.P4072436808255348786.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002062

/-! ## A002062.P5426797921206237783

`A103609(2*n)+n`
-/

namespace A002062.P5426797921206237783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (n : ℤ)

end

end A002062.P5426797921206237783

namespace A002062

/-- `A103609(2*n)+n` -/
def P5426797921206237783.Spec : Prop :=
  ∀ n, P5426797921206237783.a n = A002062 n

end A002062

/-! ## A002062.P15211482149518196145

`A157726(n)-3+n`
-/

namespace A002062.P15211482149518196145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 3 + (n : ℤ)

end

end A002062.P15211482149518196145

namespace A002062

/-- `A157726(n)-3+n` -/
def P15211482149518196145.Spec : Prop :=
  ∀ n, P15211482149518196145.a n = A002062 n

theorem P15211482149518196145.correct : P15211482149518196145.Spec := by
  intro n
  simp only [A002062, Nat.add_sub_cancel, A002062.P15211482149518196145.a, A002062.P4072436808255348786.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002062

/-! ## A002062.P5646688358171061662

`A157727(n)-4+n`
-/

namespace A002062.P5646688358171061662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 4 + (n : ℤ)

end

end A002062.P5646688358171061662

namespace A002062

/-- `A157727(n)-4+n` -/
def P5646688358171061662.Spec : Prop :=
  ∀ n, P5646688358171061662.a n = A002062 n

theorem P5646688358171061662.correct : P5646688358171061662.Spec := by
  intro n
  simp only [A002062, Nat.add_sub_cancel, A002062.P5646688358171061662.a, A002062.P4072436808255348786.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002062

/-!
# A002063: a(n) = 9*4^n.

The programs for A002063, the canonical program `A002063.P1972411913122348718` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002063 has offset 0).

The definition of A002063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^n` (program `A002063.P1972411913122348718`, by `A002063.P1972411913122348718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002063.P1972411913122348718

`9*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002063

/-- `9*4^n` -/
def P1972411913122348718.Spec : Prop :=
  ∀ n, (P1972411913122348718.a n : ℤ) = A002063 n

theorem P1972411913122348718.correct : P1972411913122348718.Spec := by
  intro n
  simp only [A002063]

end A002063

/-!
# A002064: Cullen numbers: a(n) = n*2^n + 1.

The programs for A002064, the canonical program `A002064.P16424863031535762998` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002064 has offset 0).

The definition of A002064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n+1` (program `A002064.P16424863031535762998`, by `A002064.P16424863031535762998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002064.P16424863031535762998

`n*2^n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002064

/-- `n*2^n+1` -/
def P16424863031535762998.Spec : Prop :=
  ∀ n, (P16424863031535762998.a n : ℤ) = A002064 n

theorem P16424863031535762998.correct : P16424863031535762998.Spec := by
  intro n
  simp only [A002064]

end A002064

/-! ## A002064.P9741321710092038985

`A062319(2^n)`
-/

namespace A002064.P9741321710092038985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 (2 ^ n)

end

end A002064.P9741321710092038985

namespace A002064

/-- `A062319(2^n)` -/
def P9741321710092038985.Spec : Prop :=
  ∀ n, P9741321710092038985.a n = A002064 n

end A002064

/-! ## A002064.P2993130600759795013

`or(1, n*2^n)`
-/

namespace A002064.P2993130600759795013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * 2 ^ n)

end

end A002064.P2993130600759795013

namespace A002064

/-- `or(1, n*2^n)` -/
def P2993130600759795013.Spec : Prop :=
  ∀ n, (P2993130600759795013.a n : ℤ) = A002064 n

end A002064

/-! ## A002064.P16507007107439056158

`xor(1, n*2^n)`
-/

namespace A002064.P16507007107439056158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * 2 ^ n)

end

end A002064.P16507007107439056158

namespace A002064

/-- `xor(1, n*2^n)` -/
def P16507007107439056158.Spec : Prop :=
  ∀ n, (P16507007107439056158.a n : ℤ) = A002064 n

end A002064

/-! ## A002064.P3329410176935131614

`∑[ogf((1-2x+2x^2)/(1-4x+4x^2))]`
-/

namespace A002064.P3329410176935131614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P3329410176935131614

namespace A002064

/-- `∑[ogf((1-2x+2x^2)/(1-4x+4x^2))]` -/
def P3329410176935131614.Spec : Prop :=
  ∀ n, P3329410176935131614.a n = A002064 n

end A002064

/-! ## A002064.P11876692003854597256

`ogf((1-2x+2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A002064.P11876692003854597256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 8, -4] n

end

end A002064.P11876692003854597256

namespace A002064

/-- `ogf((1-2x+2x^2)/(1-5x+8x^2-4x^3))` -/
def P11876692003854597256.Spec : Prop :=
  ∀ n, P11876692003854597256.a n = A002064 n

end A002064

/-! ## A002064.P9700541009398042623

`∑[(n+1)*Δ[2*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A002064.P9700541009398042623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P9700541009398042623

namespace A002064

/-- `∑[(n+1)*Δ[2*a(n-1)]]` -/
def P9700541009398042623.Spec : Prop :=
  ∀ n, P9700541009398042623.a n = A002064 n

end A002064

/-! ## A002064.P12586279826560237923

`∑[(n+1)*∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A002064.P12586279826560237923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P12586279826560237923

namespace A002064

/-- `∑[(n+1)*∑[2*a(n-1)]]` -/
def P12586279826560237923.Spec : Prop :=
  ∀ n, (P12586279826560237923.a n : ℤ) = A002064 n

end A002064

/-! ## A002064.P8168410570050206811

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A002064.P8168410570050206811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P8168410570050206811

namespace A002064

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P8168410570050206811.Spec : Prop :=
  ∀ n, P8168410570050206811.a n = A002064 n

end A002064

/-! ## A002064.P569522779759830951

`4*(1/4+a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A002064.P569522779759830951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * ((1 : ℚ) / 4 + (a (n - 1) - a (n - 2)))

end

end A002064.P569522779759830951

namespace A002064

/-- `4*(1/4+a(n-1)-a(n-2))` -/
def P569522779759830951.Spec : Prop :=
  ∀ n, P569522779759830951.a n = (A002064 n : ℚ)

theorem P569522779759830951.correct : P569522779759830951.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002064, Nat.add_sub_cancel, A002064.P569522779759830951.a, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002064, Nat.add_sub_cancel, A002064.P569522779759830951.a, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002064

/-! ## A002064.P2113044698061323023

`4*(a(n-1)-(a(n-2)-1/4))` with `a(0)=1, a(1)=3`
-/

namespace A002064.P2113044698061323023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) - (a (n - 2) - (1 : ℚ) / 4))

end

end A002064.P2113044698061323023

namespace A002064

/-- `4*(a(n-1)-(a(n-2)-1/4))` -/
def P2113044698061323023.Spec : Prop :=
  ∀ n, P2113044698061323023.a n = (A002064 n : ℚ)

theorem P2113044698061323023.correct : P2113044698061323023.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002064, Nat.add_sub_cancel, A002064.P2113044698061323023.a, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002064, Nat.add_sub_cancel, A002064.P2113044698061323023.a, A002064.P16424863031535762998.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002064

/-! ## A002064.P11350701929652046855

`∑[∑[A087447(n)]]`
-/

namespace A002064.P11350701929652046855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P11350701929652046855

namespace A002064

/-- `∑[∑[A087447(n)]]` -/
def P11350701929652046855.Spec : Prop :=
  ∀ n, P11350701929652046855.a n = A002064 n

end A002064

/-! ## A002064.P15036554557008131865

`∑[A057711(n+1)]`
-/

namespace A002064.P15036554557008131865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P15036554557008131865

namespace A002064

/-- `∑[A057711(n+1)]` -/
def P15036554557008131865.Spec : Prop :=
  ∀ n, P15036554557008131865.a n = A002064 n

end A002064

/-! ## A002064.P5838693831573036183

`∑[A129952(n+1)]`
-/

namespace A002064.P5838693831573036183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P5838693831573036183

namespace A002064

/-- `∑[A129952(n+1)]` -/
def P5838693831573036183.Spec : Prop :=
  ∀ n, P5838693831573036183.a n = A002064 n

end A002064

/-! ## A002064.P3366907620541198498

`∑[A262258(2*n+1)]`
-/

namespace A002064.P3366907620541198498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002064.P3366907620541198498

namespace A002064

/-- `∑[A262258(2*n+1)]` -/
def P3366907620541198498.Spec : Prop :=
  ∀ n, P3366907620541198498.a n = A002064 n

end A002064

/-! ## A002064.P686018848436689899

`A048495(n+1)/2`
-/

namespace A002064.P686018848436689899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048495 (n + 1) : ℚ) / 2

end

end A002064.P686018848436689899

namespace A002064

/-- `A048495(n+1)/2` -/
def P686018848436689899.Spec : Prop :=
  ∀ n, P686018848436689899.a n = (A002064 n : ℚ)

theorem P686018848436689899.correct : P686018848436689899.Spec := by
  intro n
  simp only [A002064, Nat.add_sub_cancel, A002064.P686018848436689899.a, A002064.P16424863031535762998.a, A048495, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002064

/-! ## A002064.P11416759005290823827

`(A048477(n)+2)/3`
-/

namespace A002064.P11416759005290823827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048477 n + 2 : ℚ) / 3

end

end A002064.P11416759005290823827

namespace A002064

/-- `(A048477(n)+2)/3` -/
def P11416759005290823827.Spec : Prop :=
  ∀ n, P11416759005290823827.a n = (A002064 n : ℚ)

theorem P11416759005290823827.correct : P11416759005290823827.Spec := by
  intro n
  simp only [A002064, Nat.add_sub_cancel, A002064.P11416759005290823827.a, A002064.P16424863031535762998.a, A048477, A048477.P4668765606070532470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002064

/-! ## A002064.P1436095006222407083

`(A000337(n+1)+1)/2`
-/

namespace A002064.P1436095006222407083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000337 (n + 1) + 1 : ℚ) / 2

end

end A002064.P1436095006222407083

namespace A002064

/-- `(A000337(n+1)+1)/2` -/
def P1436095006222407083.Spec : Prop :=
  ∀ n, P1436095006222407083.a n = (A002064 n : ℚ)

theorem P1436095006222407083.correct : P1436095006222407083.Spec := by
  intro n
  simp only [A002064, Nat.add_sub_cancel, A002064.P1436095006222407083.a, A002064.P16424863031535762998.a, A000337, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002064

/-! ## A002064.P15214237385673281667

`(A163383(n+1)+3)/2`
-/

namespace A002064.P15214237385673281667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163383 (n + 1) + 3 : ℚ) / 2

end

end A002064.P15214237385673281667

namespace A002064

/-- `(A163383(n+1)+3)/2` -/
def P15214237385673281667.Spec : Prop :=
  ∀ n, P15214237385673281667.a n = (A002064 n : ℚ)

theorem P15214237385673281667.correct : P15214237385673281667.Spec := by
  intro n
  simp only [A002064, Nat.add_sub_cancel, A002064.P15214237385673281667.a, A002064.P16424863031535762998.a, A163383, A163383.P5653016590045004014.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002064

/-! ## A002064.P1960693205470318669

`(A188716(n+1)+n+1)/2`
-/

namespace A002064.P1960693205470318669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188716 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A002064.P1960693205470318669

namespace A002064

/-- `(A188716(n+1)+n+1)/2` -/
def P1960693205470318669.Spec : Prop :=
  ∀ n, P1960693205470318669.a n = (A002064 n : ℚ)

theorem P1960693205470318669.correct : P1960693205470318669.Spec := by
  intro n
  simp only [A002064, Nat.add_sub_cancel, A002064.P1960693205470318669.a, A002064.P16424863031535762998.a, A188716, A188716.P341178310088021676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002064

/-!
# A002065: a(n+1) = a(n)^2 + a(n) + 1.

The programs for A002065, the canonical program `A002065.P3667177517846498653` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002065 has offset 0).

The definition of A002065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002065.P3667177517846498653

`a(n-1)²+a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002065

/-- `a(n-1)²+a(n-1)+1` -/
def P3667177517846498653.Spec : Prop :=
  ∀ n, (P3667177517846498653.a n : ℤ) = A002065 n

theorem P3667177517846498653.correct : P3667177517846498653.Spec := by
  intro n
  simp only [A002065]

end A002065

/-! ## A002065.P18365563615721193384

`(A232806(n)-1)/2`
-/

namespace A002065.P18365563615721193384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232806 n - 1 : ℚ) / 2

end

end A002065.P18365563615721193384

namespace A002065

/-- `(A232806(n)-1)/2` -/
def P18365563615721193384.Spec : Prop :=
  ∀ n, P18365563615721193384.a n = (A002065 n : ℚ)

theorem P18365563615721193384.correct : P18365563615721193384.Spec := by
  intro n
  simp only [A002065, Nat.add_sub_cancel, A002065.P18365563615721193384.a, A002065.P3667177517846498653.a, A232806, A232806.P16277909643424588756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002065

/-! ## A002065.P14195198558261084575

`ceil((a(n-1)+1/2)²)` with `a(0)=0`
-/

namespace A002065.P14195198558261084575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A002065.P14195198558261084575

namespace A002065

/-- `ceil((a(n-1)+1/2)²)` -/
def P14195198558261084575.Spec : Prop :=
  ∀ n, P14195198558261084575.a n = A002065 n

end A002065

/-! ## A002065.P6556409499177493942

`2*C(a(n-1)+1, 2)+1` with `a(0)=0`
-/

namespace A002065.P6556409499177493942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.choose (a (n - 1) + 1) 2 + 1

end

end A002065.P6556409499177493942

namespace A002065

/-- `2*C(a(n-1)+1, 2)+1` -/
def P6556409499177493942.Spec : Prop :=
  ∀ n, (P6556409499177493942.a n : ℤ) = A002065 n

end A002065

/-! ## A002065.P5677027075757668554

`(a(n-1)+1)*a(n-1)+1` with `a(0)=0`
-/

namespace A002065.P5677027075757668554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * a (n - 1) + 1

end

end A002065.P5677027075757668554

namespace A002065

/-- `(a(n-1)+1)*a(n-1)+1` -/
def P5677027075757668554.Spec : Prop :=
  ∀ n, (P5677027075757668554.a n : ℤ) = A002065 n

theorem P5677027075757668554.correct : P5677027075757668554.Spec := by
  intro n
  simp only [A002065, Nat.add_sub_cancel, A002065.P5677027075757668554.a, A002065.P3667177517846498653.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002065

/-!
# A002066: a(n) = 10*4^n.

The programs for A002066, the canonical program `A002066.P2943251933023728613` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002066 has offset 0).

The definition of A002066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*4^n` (program `A002066.P2943251933023728613`, by `A002066.P2943251933023728613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002066.P2943251933023728613

`10*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002066

/-- `10*4^n` -/
def P2943251933023728613.Spec : Prop :=
  ∀ n, (P2943251933023728613.a n : ℤ) = A002066 n

theorem P2943251933023728613.correct : P2943251933023728613.Spec := by
  intro n
  simp only [A002066]

end A002066

/-!
# A002067: a(n) = Sum_{k=0..n-1} binomial(2*n,2*k)*a(k)*a(n-k-1).

The programs for A002067, there is no canonical definition to state claims against.
-/

/-! ## A002067.P6004084524289857188

`1/2^n*A026944(n+1)`
-/

namespace A002067.P6004084524289857188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 ^ n : ℚ) * (A026944 (n + 1) : ℚ)

end

end A002067.P6004084524289857188

/-! ## A002067.P225948513358780339

`A092676(n+1)/A092677(n+1)*A007019(n)`
-/

namespace A002067.P225948513358780339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092676 (n + 1) : ℚ) / (A092677 (n + 1) : ℚ) * (A007019 n : ℚ)

end

end A002067.P225948513358780339

/-! ## A002067.P3589091484307485969

`A026944(n+1)/2^n`
-/

namespace A002067.P3589091484307485969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026944 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A002067.P3589091484307485969

/-! ## A002067.P18243227071938464165

`A092676(n+1)/A132467(n)*A000680(n)`
-/

namespace A002067.P18243227071938464165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092676 (n + 1) : ℚ) / (A132467 n : ℚ) * (A000680 n : ℚ)

end

end A002067.P18243227071938464165

/-! ## A002067.P2055684889860610940

`gcd(∏[A092676(n+1)], A026944(n+1))`
-/

namespace A002067.P2055684889860610940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A026944 (n + 1))

end

end A002067.P2055684889860610940

/-!
# A002068: Wilson remainders: a(n) = ((p-1)!+1)/p mod p, where p = prime(n).

The programs for A002068, the canonical program `A002068.P13415145323525649016` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002068 has offset 1).

The definition of A002068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002068.P5938507533124466399

`A301316(A008578(n+2))/Δ[A007504(n)]`
-/

namespace A002068.P5938507533124466399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002068.P5938507533124466399

namespace A002068

/-- `A301316(A008578(n+2))/Δ[A007504(n)]` -/
def P5938507533124466399.Spec : Prop :=
  ∀ n, P5938507533124466399.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P13415145323525649016

`A301316(A008578(n+2))/p?[A014681(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002068

/-- `A301316(A008578(n+2))/p?[A014681(n)]` -/
def P13415145323525649016.Spec : Prop :=
  ∀ n, P13415145323525649016.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P11167839352046632080

`A301316(A008578(n+2))/p?[A080412(n)]`
-/

namespace A002068.P11167839352046632080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P11167839352046632080

namespace A002068

/-- `A301316(A008578(n+2))/p?[A080412(n)]` -/
def P11167839352046632080.Spec : Prop :=
  ∀ n, P11167839352046632080.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P11133862696984733523

`A301316(A008578(n+2))/p?[A344180(n)]`
-/

namespace A002068.P11133862696984733523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P11133862696984733523

namespace A002068

/-- `A301316(A008578(n+2))/p?[A344180(n)]` -/
def P11133862696984733523.Spec : Prop :=
  ∀ n, P11133862696984733523.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P7552605970568285061

`A301316(A000040(n+1))/A000040(n+1)`
-/

namespace A002068.P7552605970568285061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A002068.P7552605970568285061

namespace A002068

/-- `A301316(A000040(n+1))/A000040(n+1)` -/
def P7552605970568285061.Spec : Prop :=
  ∀ n, P7552605970568285061.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P11146131165194560979

`A301316(A008578(n+2))/p?[A004280(n+1)]`
-/

namespace A002068.P11146131165194560979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P11146131165194560979

namespace A002068

/-- `A301316(A008578(n+2))/p?[A004280(n+1)]` -/
def P11146131165194560979.Spec : Prop :=
  ∀ n, P11146131165194560979.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P3827409258416801410

`A301316(record[A006530(n+2)])/A008578(n+2)`
-/

namespace A002068.P3827409258416801410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A002068.P3827409258416801410

namespace A002068

/-- `A301316(record[A006530(n+2)])/A008578(n+2)` -/
def P3827409258416801410.Spec : Prop :=
  ∀ n, P3827409258416801410.a n = (A002068 (n + 1) : ℚ)

end A002068

/-! ## A002068.P11680636472491158186

`(A000040(n+1)-A250406(n+1))%A000040(n+1)`
-/

namespace A002068.P11680636472491158186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) - A250406 (n + 1)) (A000040 (n + 1))

end

end A002068.P11680636472491158186

namespace A002068

/-- `(A000040(n+1)-A250406(n+1))%A000040(n+1)` -/
def P11680636472491158186.Spec : Prop :=
  ∀ n, P11680636472491158186.a n = A002068 (n + 1)

end A002068

/-! ## A002068.P9418449496042024407

`A301316(A008578(n+2))/p?[A057979(n)]`
-/

namespace A002068.P9418449496042024407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301316 (A008578 (n + 2)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A002068.P9418449496042024407

namespace A002068

/-- `A301316(A008578(n+2))/p?[A057979(n)]` -/
def P9418449496042024407.Spec : Prop :=
  ∀ n, P9418449496042024407.a n = (A002068 (n + 1) : ℚ)

end A002068

/-!
# A002069: Palindromic pentagonal numbers.

The programs for A002069, there is no canonical definition to state claims against.
-/

/-! ## A002069.P1120793582145510870

`∩[A000326(n), A002113(n+1)]`
-/

namespace A002069.P1120793582145510870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002069.P1120793582145510870

/-! ## A002069.P13869736784391436198

`record[char[A028386(n+1)]*A000326(n)]`
-/

namespace A002069.P13869736784391436198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028386 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002069.P13869736784391436198

/-! ## A002069.P9167509982375985487

`record[char[A028386(n+1)]*A004163(n)]`
-/

namespace A002069.P9167509982375985487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028386 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002069.P9167509982375985487

/-! ## A002069.P8132305537410113259

`A004163(eq[C(n, 2)+n², A004163(n)])`
-/

namespace A002069.P8132305537410113259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002069.P8132305537410113259

/-! ## A002069.P4412455328428799820

`A004163(eq[C(3*n, 2)/3, A004163(n)])`
-/

namespace A002069.P4412455328428799820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A002069.P4412455328428799820

/-!
# A002070: Coefficient of x^p (p = n-th prime) in x * Product_{k>=1} (1-x^k)^2*(1-x^11k)^2.

The programs for A002070, there is no canonical definition to state claims against.
-/

/-! ## A002070.P511439378298992446

`A006571(A000040(n+1))`
-/

namespace A002070.P511439378298992446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A000040 (n + 1)).toNat

end

end A002070.P511439378298992446

/-! ## A002070.P17264825565185338861

`A006571(A161847(n+1))`
-/

namespace A002070.P17264825565185338861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A161847 (n + 1)).toNat

end

end A002070.P17264825565185338861

/-! ## A002070.P13876510447463456002

`A006571(A008578(n+2))`
-/

namespace A002070.P13876510447463456002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A008578 (n + 2)).toNat

end

end A002070.P13876510447463456002

/-! ## A002070.P5177712259198127496

`A006571(A182986(n+2))`
-/

namespace A002070.P5177712259198127496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (A182986 (n + 2)).toNat

end

end A002070.P5177712259198127496

/-! ## A002070.P128572499322069435

`A006571(record[A084127(n+1)])`
-/

namespace A002070.P128572499322069435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002070.P128572499322069435

/-! ## A002070.P5575506644667112597

`A006571(record[A006530(n+2)])`
-/

namespace A002070.P5575506644667112597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002070.P5575506644667112597

/-! ## A002070.P3798840566936266551

`A006571(record[A014963(n+2)])`
-/

namespace A002070.P3798840566936266551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002070.P3798840566936266551

/-! ## A002070.P95118073796827817

`A006571(record[A020639(n+2)])`
-/

namespace A002070.P95118073796827817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002070.P95118073796827817

/-! ## A002070.P12002618196877095538

`A006571(eq[2, A000005(n+1)]+1)`
-/

namespace A002070.P12002618196877095538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002070.P12002618196877095538

/-! ## A002070.P6904548894611188221

`A006571(eq[n, A000010(n+1)]+1)`
-/

namespace A002070.P6904548894611188221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002070.P6904548894611188221

/-! ## A002070.P9554861897892072830

`A000040(n+1)-A376073(n+1)`
-/

namespace A002070.P9554861897892072830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A376073 (n + 1)

end

end A002070.P9554861897892072830

/-! ## A002070.P12193023375103400174

`A366346(n+1)-A036689(n+1)`
-/

namespace A002070.P12193023375103400174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366346 (n + 1) - A036689 (n + 1)

end

end A002070.P12193023375103400174

/-!
# A002071: Number of pairs of consecutive integers x, x+1 such that all prime factors of both x and x+1 are at most the n-th prime.

The programs for A002071, there is no canonical definition to state claims against.
-/

/-! ## A002071.P10498933007763146122

`∑[A145604(n+1)]`
-/

namespace A002071.P10498933007763146122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002071.P10498933007763146122

/-! ## A002071.P18315466308790191542

`∑[record[A145604(A000174(n))]]`
-/

namespace A002071.P18315466308790191542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002071.P18315466308790191542

/-! ## A002071.P398888776518628447

`∑[record[A145604(A028920(n))]]`
-/

namespace A002071.P398888776518628447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002071.P398888776518628447

/-! ## A002071.P2968471454473475863

`∑[record[A145604(A051340(n))]]`
-/

namespace A002071.P2968471454473475863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002071.P2968471454473475863

/-! ## A002071.P14742614400201370697

`∑[record[A145604(A065648(n))]]`
-/

namespace A002071.P14742614400201370697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002071.P14742614400201370697

/-!
# A002072: a(n) = smallest number m such that for all k > m, either k or k+1 has a prime factor > prime(n).

The programs for A002072, there is no canonical definition to state claims against.
-/

/-! ## A002072.P2741500088145225658

`A117581(n+1)-1`
-/

namespace A002072.P2741500088145225658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117581 (n + 1) - 1

end

end A002072.P2741500088145225658

/-! ## A002072.P11655078628978562559

`A153881(n+2)+A117581(n+1)`
-/

namespace A002072.P11655078628978562559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A117581 (n + 1)

end

end A002072.P11655078628978562559

/-! ## A002072.P12842393951125196533

`A259022(3*n+2)+A117581(n+1)`
-/

namespace A002072.P12842393951125196533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259022 (3 * n + 2) + A117581 (n + 1)

end

end A002072.P12842393951125196533

/-! ## A002072.P18308461040738845780

`A280193(2*n+3)+A117581(n+1)`
-/

namespace A002072.P18308461040738845780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 3) + A117581 (n + 1)

end

end A002072.P18308461040738845780

/-! ## A002072.P6519204952147732636

`xor(-A117581(n+1), A033999(2*n+3))`
-/

namespace A002072.P6519204952147732636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A117581 (n + 1)) (A033999 (2 * n + 3))

end

end A002072.P6519204952147732636

/-!
# A002075: Number of equivalence classes with primitive period n of base 3 necklaces, where necklaces are equivalent under rotation and permutation of symbols.

The programs for A002075, there is no canonical definition to state claims against.
-/

/-! ## A002075.P3352764841950338738

`A056304(n+1)+A000048(n+1)`
-/

namespace A002075.P3352764841950338738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056304 (n + 1) + A000048 (n + 1)

end

end A002075.P3352764841950338738

/-! ## A002075.P17480700195074083831

`A056304(n+1)+A173278(n+1)-A173278(n)`
-/

namespace A002075.P17480700195074083831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056304 (n + 1) + (A173278 (n + 1) - A173278 n)

end

end A002075.P17480700195074083831

/-! ## A002075.P16872753184650427657

`lcm(2, A006575(n+1))-A046209(n+1)`
-/

namespace A002075.P16872753184650427657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A006575 (n + 1)) : ℤ) - A046209 (n + 1)

end

end A002075.P16872753184650427657

/-! ## A002075.P1968167099762316633

`A006575(n+1)+A000007(n)-A046209(n+1)`
-/

namespace A002075.P1968167099762316633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) + (A000007 n - A046209 (n + 1))

end

end A002075.P1968167099762316633

/-! ## A002075.P4349312688611988945

`A006575(n+1)+A046209(n+1)*A057428(n)`
-/

namespace A002075.P4349312688611988945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) + A046209 (n + 1) * A057428 n

end

end A002075.P4349312688611988945

/-! ## A002075.P5777265851656652808

`A056300(n+1)-A056305(n+1)`
-/

namespace A002075.P5777265851656652808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056300 (n + 1) - A056305 (n + 1)

end

end A002075.P5777265851656652808

/-! ## A002075.P5815317492214893568

`A006575(n+1)-A046209(n+1)%A000984(n)`
-/

namespace A002075.P5815317492214893568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) - Int.tmod (A046209 (n + 1)) (A000984 n)

end

end A002075.P5815317492214893568

/-!
# A002076: Number of equivalence classes of base-3 necklaces of length n, where necklaces are considered equivalent under both rotations and permutations of the symbols.

The programs for A002076, there is no canonical definition to state claims against.
-/

/-! ## A002076.P9371237841949462366

`∑{d}[A028310(n), A002075(#)]`
-/

namespace A002076.P9371237841949462366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002075 d

end

end A002076.P9371237841949462366

/-! ## A002076.P9947375065206121638

`2*A056353(n)-A182522(n)`
-/

namespace A002076.P9947375065206121638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056353 n - A182522 n

end

end A002076.P9947375065206121638

/-! ## A002076.P15403874888684998506

`∑{d}[∏{d}[n, -A014963(#)], A002075(#)]`
-/

namespace A002076.P15403874888684998506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-A014963 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002075 d

end

end A002076.P15403874888684998506

/-! ## A002076.P2484984980568087550

`A320743(A028310(n))+A056353(n)`
-/

namespace A002076.P2484984980568087550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320743 (A028310 n).toNat + A056353 n

end

end A002076.P2484984980568087550

/-! ## A002076.P17924648673848101304

`∑{d}[A156354(A000124(n)), A002075(#)]`
-/

namespace A002076.P17924648673848101304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002075 d

end

end A002076.P17924648673848101304

/-!
# A002077: Number of N-equivalence classes of self-dual threshold functions of exactly n variables.

The programs for A002077, there is no canonical definition to state claims against.
-/

/-! ## A002077.P2912843270919770300

`A364345(A291289(3*n+1))-A360199(n+1)`
-/

namespace A002077.P2912843270919770300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 (A291289 (3 * n + 1)).toNat - A360199 (n + 1)

end

end A002077.P2912843270919770300

/-!
# A002078: N-equivalence classes of threshold functions of n or fewer variables.

The programs for A002078, there is no canonical definition to state claims against.
-/

/-! ## A002078.P1388234542276475843

`A392071(2^(n+1)-n)`
-/

namespace A002078.P1388234542276475843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392071 (2 ^ (n + 1) - n)

end

end A002078.P1388234542276475843

/-!
# A002079: Number of N-equivalence classes of threshold functions of exactly n variables.

The programs for A002079, there is no canonical definition to state claims against.
-/

/-! ## A002079.P10470659053828690534

`A000615(n)/2^n`
-/

namespace A002079.P10470659053828690534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000615 n : ℚ) / (2 ^ n : ℚ)

end

end A002079.P10470659053828690534

/-! ## A002079.P16570564388310162327

`floor(A000615(n)/A000079(n))`
-/

namespace A002079.P16570564388310162327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000615 n : ℚ) / (A000079 n : ℚ)⌋

end

end A002079.P16570564388310162327

/-! ## A002079.P11319285096913596673

`floor(A000615(n)/A086066(n))`
-/

namespace A002079.P11319285096913596673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000615 n : ℚ) / (A086066 n : ℚ)⌋

end

end A002079.P11319285096913596673

/-! ## A002079.P9786332875800731952

`floor(A000615(n)/A208849(n))`
-/

namespace A002079.P9786332875800731952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000615 n : ℚ) / (A208849 n : ℚ)⌋

end

end A002079.P9786332875800731952

/-! ## A002079.P15687533759840291313

`floor(A000615(n)/A234591(n))`
-/

namespace A002079.P15687533759840291313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000615 n : ℚ) / (A234591 n : ℚ)⌋

end

end A002079.P15687533759840291313

/-!
# A002080: Number of N-equivalence classes of self-dual threshold functions of n or fewer variables.

The programs for A002080, there is no canonical definition to state claims against.
-/

/-! ## A002080.P5959262195114722179

`A037465(∑[∏[A324963(n)]])`
-/

namespace A002080.P5959262195114722179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324963 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002080.P5959262195114722179

/-! ## A002080.P8802594098184917236

`∑[A320454(∏[A176334(n)])]`
-/

namespace A002080.P8802594098184917236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320454 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002080.P8802594098184917236

/-!
# A002081: Numbers congruent to {2, 4, 8, 16} (mod 20).

The programs for A002081, the canonical program `A002081.P6483890857808447145` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002081 has offset 0).

The definition of A002081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002081.P7875764175134636413

`5*n+1/2*(3+(-1)^n)*(-1)^(n*(n+1)/2)`
-/

namespace A002081.P7875764175134636413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 * n : ℝ) + ((1 : ℚ) / 2 * (3 + (-1) ^ n : ℚ) : ℝ) * (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ)

end

end A002081.P7875764175134636413

namespace A002081

/-- `5*n+1/2*(3+(-1)^n)*(-1)^(n*(n+1)/2)` -/
def P7875764175134636413.Spec : Prop :=
  ∀ n, P7875764175134636413.a n = (A002081 n : ℝ)

end A002081

/-! ## A002081.P6483890857808447145

`2*A235700(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002081

/-- `2*A235700(n+1)` -/
def P6483890857808447145.Spec : Prop :=
  ∀ n, P6483890857808447145.a n = A002081 n

theorem P6483890857808447145.correct : P6483890857808447145.Spec := by
  intro n
  simp only [A002081]

end A002081

/-! ## A002081.P5983921829476411021

`∑[10-a(n-2)]` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A002081.P5983921829476411021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002081.P5983921829476411021

namespace A002081

/-- `∑[10-a(n-2)]` -/
def P5983921829476411021.Spec : Prop :=
  ∀ n, P5983921829476411021.a n = A002081 n

end A002081

/-! ## A002081.P3052059195930679994

`∑[∑[ogf((2+4x^2+4x^3)/(1+x^2))]]`
-/

namespace A002081.P3052059195930679994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 4, 4] [1, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002081.P3052059195930679994

namespace A002081

/-- `∑[∑[ogf((2+4x^2+4x^3)/(1+x^2))]]` -/
def P3052059195930679994.Spec : Prop :=
  ∀ n, P3052059195930679994.a n = A002081 n

end A002081

/-! ## A002081.P16214620601180369138

`ogf((2+4x^2+4x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A002081.P16214620601180369138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 4, 4] [1, -2, 2, -2, 1] n

end

end A002081.P16214620601180369138

namespace A002081

/-- `ogf((2+4x^2+4x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P16214620601180369138.Spec : Prop :=
  ∀ n, P16214620601180369138.a n = A002081 n

end A002081

/-! ## A002081.P14856317919336509106

`2*(A122461(n)+A003485(n))`
-/

namespace A002081.P14856317919336509106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122461 n + A003485 n)

end

end A002081.P14856317919336509106

namespace A002081

/-- `2*(A122461(n)+A003485(n))` -/
def P14856317919336509106.Spec : Prop :=
  ∀ n, P14856317919336509106.a n = A002081 n

end A002081

/-! ## A002081.P11643143122158256721

`2*(A131379(n)+A047215(n))`
-/

namespace A002081.P11643143122158256721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131379 n + A047215 n)

end

end A002081.P11643143122158256721

namespace A002081

/-- `2*(A131379(n)+A047215(n))` -/
def P11643143122158256721.Spec : Prop :=
  ∀ n, P11643143122158256721.a n = A002081 n

end A002081

/-! ## A002081.P8168252039522346560

`A017329(n)%A322171(n+1)`
-/

namespace A002081.P8168252039522346560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017329 n) (A322171 (n + 1))

end

end A002081.P8168252039522346560

namespace A002081

/-- `A017329(n)%A322171(n+1)` -/
def P8168252039522346560.Spec : Prop :=
  ∀ n, P8168252039522346560.a n = A002081 n

end A002081

/-! ## A002081.P17975385683978357936

`2*(A047533(n+1)+A004526(n))`
-/

namespace A002081.P17975385683978357936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047533 (n + 1) + A004526 n)

end

end A002081.P17975385683978357936

namespace A002081

/-- `2*(A047533(n+1)+A004526(n))` -/
def P17975385683978357936.Spec : Prop :=
  ∀ n, P17975385683978357936.a n = A002081 n

end A002081

/-! ## A002081.P12637633014086460828

`A102039(n+2)`
-/

namespace A002081.P12637633014086460828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 2)

end

end A002081.P12637633014086460828

namespace A002081

/-- `A102039(n+2)` -/
def P12637633014086460828.Spec : Prop :=
  ∀ n, P12637633014086460828.a n = A002081 n

end A002081

/-! ## A002081.P5920902297674428892

`A217562(A047541(n+1))`
-/

namespace A002081.P5920902297674428892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (A047541 (n + 1)).toNat

end

end A002081.P5920902297674428892

namespace A002081

/-- `A217562(A047541(n+1))` -/
def P5920902297674428892.Spec : Prop :=
  ∀ n, P5920902297674428892.a n = A002081 n

end A002081

/-! ## A002081.P6422562541308030155

`A004277(A235700(n+1))`
-/

namespace A002081.P6422562541308030155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A235700 (n + 1)).toNat

end

end A002081.P6422562541308030155

namespace A002081

/-- `A004277(A235700(n+1))` -/
def P6422562541308030155.Spec : Prop :=
  ∀ n, P6422562541308030155.a n = A002081 n

end A002081

/-! ## A002081.P15436628620981210227

`2*A081596(a(n-1))` with `a(0)=2`
-/

namespace A002081.P15436628620981210227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A081596 (a (n - 1)).toNat

end

end A002081.P15436628620981210227

namespace A002081

/-- `2*A081596(a(n-1))` -/
def P15436628620981210227.Spec : Prop :=
  ∀ n, P15436628620981210227.a n = A002081 n

end A002081

/-! ## A002081.P10595554570139769455

`A169933(a(n-1)+5)` with `a(0)=2`
-/

namespace A002081.P10595554570139769455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A169933 (a (n - 1) + 5).toNat

end

end A002081.P10595554570139769455

namespace A002081

/-- `A169933(a(n-1)+5)` -/
def P10595554570139769455.Spec : Prop :=
  ∀ n, P10595554570139769455.a n = A002081 n

end A002081

/-! ## A002081.P2663326709264331270

`A014681(A235699(n+1))`
-/

namespace A002081.P2663326709264331270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A235699 (n + 1)).toNat

end

end A002081.P2663326709264331270

namespace A002081

/-- `A014681(A235699(n+1))` -/
def P2663326709264331270.Spec : Prop :=
  ∀ n, P2663326709264331270.a n = A002081 n

end A002081

/-! ## A002081.P18045230775417184372

`eq[A003816(n), A105385(n)]`
-/

namespace A002081.P18045230775417184372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002081.P18045230775417184372

namespace A002081

/-- `eq[A003816(n), A105385(n)]` -/
def P18045230775417184372.Spec : Prop :=
  ∀ n, (P18045230775417184372.a n : ℤ) = A002081 n

end A002081

/-! ## A002081.P12321158024220287652

`eq[A014029(n), A309215(n)]`
-/

namespace A002081.P12321158024220287652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002081.P12321158024220287652

namespace A002081

/-- `eq[A014029(n), A309215(n)]` -/
def P12321158024220287652.Spec : Prop :=
  ∀ n, (P12321158024220287652.a n : ℤ) = A002081 n

end A002081

/-! ## A002081.P6382077181055167345

`eq[A014029(n), A330602(n)]`
-/

namespace A002081.P6382077181055167345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002081.P6382077181055167345

namespace A002081

/-- `eq[A014029(n), A330602(n)]` -/
def P6382077181055167345.Spec : Prop :=
  ∀ n, (P6382077181055167345.a n : ℤ) = A002081 n

end A002081

/-! ## A002081.P5210880830323859018

`eq[A105385(n), A309214(n)]`
-/

namespace A002081.P5210880830323859018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002081.P5210880830323859018

namespace A002081

/-- `eq[A105385(n), A309214(n)]` -/
def P5210880830323859018.Spec : Prop :=
  ∀ n, (P5210880830323859018.a n : ℤ) = A002081 n

end A002081

/-!
# A002083: Narayana-Zidek-Capell numbers: a(n) = 1 for n <= 2. Otherwise a(2n) = 2a(2n-1), a(2n+1) = 2a(2n) - a(n).

The programs for A002083, there is no canonical definition to state claims against.
-/

/-! ## A002083.P16911449439644419362

`A005257(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A002083.P16911449439644419362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A005257 (n - 1) - a (n - 1)

end

end A002083.P16911449439644419362

/-! ## A002083.P11451047993554805789

`Δ[A062178(n)]`
-/

namespace A002083.P11451047993554805789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002083.P11451047993554805789

/-! ## A002083.P5479942686467683414

`A005255(n)+1-A062178(n)`
-/

namespace A002083.P5479942686467683414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 n + (1 - A062178 n)

end

end A002083.P5479942686467683414

/-! ## A002083.P5440841478283604556

`A062178(n+1)-A062178(n)`
-/

namespace A002083.P5440841478283604556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (n + 1) - A062178 n

end

end A002083.P5440841478283604556

/-! ## A002083.P11371306529225375158

`A030625(n+1)/(n+1)-(n+1)`
-/

namespace A002083.P11371306529225375158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030625 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A002083.P11371306529225375158

/-! ## A002083.P12330266751781676426

`A245904(n+1)+A245904(n+1)-A259858(n+1)`
-/

namespace A002083.P12330266751781676426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245904 (n + 1) + (A245904 (n + 1) - A259858 (n + 1))

end

end A002083.P12330266751781676426

/-! ## A002083.P17958669703065947195

`2*A005257(2*n+1)-A005257(2*(n+1))`
-/

namespace A002083.P17958669703065947195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005257 (2 * n + 1) - A005257 (2 * (n + 1))

end

end A002083.P17958669703065947195

/-! ## A002083.P3263742995033521600

`A037254(C(n, 2)+1)`
-/

namespace A002083.P3263742995033521600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (Nat.choose n 2 + 1)

end

end A002083.P3263742995033521600

/-! ## A002083.P4307905658027708527

`A037254(∑[abs(1-n)])`
-/

namespace A002083.P4307905658027708527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002083.P4307905658027708527

/-!
# A002084: Sinh(x) / cos(x) = Sum_{n>=0} a(n)*x^(2n+1)/(2n+1)!.

The programs for A002084, there is no canonical definition to state claims against.
-/

/-! ## A002084.P8689435754357059944

`A003701(Δ[n²])`
-/

namespace A002084.P8689435754357059944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002084.P8689435754357059944

/-! ## A002084.P16985908188019574862

`A062161(Δ[n²])`
-/

namespace A002084.P16985908188019574862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002084.P16985908188019574862

/-! ## A002084.P1263900193309002043

`A336024(Δ[n²])`
-/

namespace A002084.P1263900193309002043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002084.P1263900193309002043

/-! ## A002084.P3195536548022519995

`A380053(Δ[n²])`
-/

namespace A002084.P3195536548022519995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002084.P3195536548022519995

/-! ## A002084.P11383758816886471746

`record[A003701(n*n%2)]`
-/

namespace A002084.P11383758816886471746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002084.P11383758816886471746

/-!
# A002085: From the expansion of sinh(x) / cos(x): a(n) = odd part of A002084(n).

The programs for A002085, there is no canonical definition to state claims against.
-/

/-! ## A002085.P17118152174924160765

`A111196(n)/(n%2+1)`
-/

namespace A002085.P17118152174924160765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111196 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A002085.P17118152174924160765

/-! ## A002085.P1271860634800118578

`A111196(n)/A000034(n)`
-/

namespace A002085.P1271860634800118578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111196 n : ℚ) / (A000034 n : ℚ)

end

end A002085.P1271860634800118578

/-! ## A002085.P9414214137322498690

`A111196(n)/A000041(and(3, n²-3))`
-/

namespace A002085.P9414214137322498690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111196 n : ℚ) / (A000041 (Int.land 3 ((n ^ 2 : ℤ) - 3)).toNat : ℚ)

end

end A002085.P9414214137322498690

/-! ## A002085.P13942303101615714636

`A111196(n)/A014963(A318651(n+1))`
-/

namespace A002085.P13942303101615714636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111196 n : ℚ) / (A014963 (A318651 (n + 1)).toNat : ℚ)

end

end A002085.P13942303101615714636

/-!
# A002086: Number of circulant tournaments on 2n+1 nodes up to Cayley isomorphism.

The programs for A002086, there is no canonical definition to state claims against.
-/

/-! ## A002086.P2072866392459748283

`A329790(A049288(n+1))+A049288(n+2)`
-/

namespace A002086.P2072866392459748283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (A049288 (n + 1)).toNat + A049288 (n + 2)

end

end A002086.P2072866392459748283

/-!
# A002088: Sum of totient function: a(n) = Sum_{k=1..n} phi(k), cf. A000010.

The programs for A002088, the canonical program `A002088.P11293466613211840242` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002088 has offset 0).

The definition of A002088 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A002088.anchor (n : ℕ) : A002088 n = ∑ k ∈ Finset.Icc 1 n, (Nat.totient k : ℤ)` in `Proof.A002.A002088`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002088.P13650539769292343887

`A005728(n)-1`
-/

namespace A002088.P13650539769292343887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

end

end A002088.P13650539769292343887

namespace A002088

/-- `A005728(n)-1` -/
def P13650539769292343887.Spec : Prop :=
  ∀ n, P13650539769292343887.a n = A002088 n

theorem P13650539769292343887.correct : P13650539769292343887.Spec := by
  intro n
  simp only [A002088, Nat.add_sub_cancel, A002088.P13650539769292343887.a, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A005728, A005728.P12032251568510858139.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002088

/-! ## A002088.P4476418441194142984

`A049696(n)/2`
-/

namespace A002088.P4476418441194142984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2

end

end A002088.P4476418441194142984

namespace A002088

/-- `A049696(n)/2` -/
def P4476418441194142984.Spec : Prop :=
  ∀ n, P4476418441194142984.a n = (A002088 n : ℚ)

theorem P4476418441194142984.correct : P4476418441194142984.Spec := by
  intro n
  simp only [A002088, Nat.add_sub_cancel, A002088.P4476418441194142984.a, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A049696, A049696.P12004431397855860570.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002088

/-! ## A002088.P7233465129194100797

`A140466(n)/4`
-/

namespace A002088.P7233465129194100797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 n : ℚ) / 4

end

end A002088.P7233465129194100797

namespace A002088

/-- `A140466(n)/4` -/
def P7233465129194100797.Spec : Prop :=
  ∀ n, P7233465129194100797.a n = (A002088 n : ℚ)

theorem P7233465129194100797.correct : P7233465129194100797.Spec := by
  intro n
  simp only [A002088, Nat.add_sub_cancel, A002088.P7233465129194100797.a, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A140466, A140466.P2617124052483112329.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002088

/-! ## A002088.P10847043594726960765

`floor(A100449(n)/4)`
-/

namespace A002088.P10847043594726960765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100449 n : ℚ) / 4⌋

end

end A002088.P10847043594726960765

namespace A002088

/-- `floor(A100449(n)/4)` -/
def P10847043594726960765.Spec : Prop :=
  ∀ n, P10847043594726960765.a n = A002088 n

end A002088

/-! ## A002088.P8962335469571691680

`∑[∑{d}[n, A007431(#)]]`
-/

namespace A002088.P8962335469571691680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007431 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002088.P8962335469571691680

namespace A002088

/-- `∑[∑{d}[n, A007431(#)]]` -/
def P8962335469571691680.Spec : Prop :=
  ∀ n, P8962335469571691680.a n = A002088 n

end A002088

/-! ## A002088.P11293466613211840242

`a(n-1)+A000010(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002088

/-- `a(n-1)+A000010(n)` -/
def P11293466613211840242.Spec : Prop :=
  ∀ n, P11293466613211840242.a n = A002088 n

theorem P11293466613211840242.correct : P11293466613211840242.Spec := by
  intro n
  simp only [A002088]

end A002088

/-! ## A002088.P325237331476482402

`a(n-1)+A109606(n)+1` with `a(0)=0`
-/

namespace A002088.P325237331476482402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A109606 n + 1)

end

end A002088.P325237331476482402

namespace A002088

/-- `a(n-1)+A109606(n)+1` -/
def P325237331476482402.Spec : Prop :=
  ∀ n, P325237331476482402.a n = A002088 n

theorem P325237331476482402.correct : P325237331476482402.Spec := by
  intro n
  simp only [A002088, Nat.add_sub_cancel, A002088.P325237331476482402.a, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002088

/-! ## A002088.P17516544948261094499

`∑[A000010(abs(1-n)+1)]-1`
-/

namespace A002088.P17516544948261094499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002088.P17516544948261094499

namespace A002088

/-- `∑[A000010(abs(1-n)+1)]-1` -/
def P17516544948261094499.Spec : Prop :=
  ∀ n, P17516544948261094499.a n = A002088 n

end A002088

/-! ## A002088.P16361485023434117056

`a(n-1)+n-A051953(n)` with `a(0)=0`
-/

namespace A002088.P16361485023434117056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A051953 n)

end

end A002088.P16361485023434117056

namespace A002088

/-- `a(n-1)+n-A051953(n)` -/
def P16361485023434117056.Spec : Prop :=
  ∀ n, P16361485023434117056.a n = A002088 n

end A002088

/-! ## A002088.P6301062486376943697

`∑[A000010(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A002088.P6301062486376943697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002088.P6301062486376943697

namespace A002088

/-- `∑[A000010(gcd(n, n*a(n-1)))]` -/
def P6301062486376943697.Spec : Prop :=
  ∀ n, P6301062486376943697.a n = A002088 n

end A002088

/-! ## A002088.P8723749049617167457

`∑[A000010(n-C(a(n-1), n))]` with `a(0)=0`
-/

namespace A002088.P8723749049617167457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 (n - Nat.choose (f1 (n - 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002088.P8723749049617167457

namespace A002088

/-- `∑[A000010(n-C(a(n-1), n))]` -/
def P8723749049617167457.Spec : Prop :=
  ∀ n, P8723749049617167457.a n = A002088 n

end A002088

/-! ## A002088.P4691598630187248402

`A057428(n)+A049643(n)`
-/

namespace A002088.P4691598630187248402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049643 n

end

end A002088.P4691598630187248402

namespace A002088

/-- `A057428(n)+A049643(n)` -/
def P4691598630187248402.Spec : Prop :=
  ∀ n, P4691598630187248402.a n = A002088 n

end A002088

/-! ## A002088.P12847759116713592351

`A049643(n)-A057427(n)`
-/

namespace A002088.P12847759116713592351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n - A057427 n

end

end A002088.P12847759116713592351

namespace A002088

/-- `A049643(n)-A057427(n)` -/
def P12847759116713592351.Spec : Prop :=
  ∀ n, P12847759116713592351.a n = A002088 n

end A002088

/-! ## A002088.P14772435628378152349

`A051953(n+1)+A015613(n+1)`
-/

namespace A002088.P14772435628378152349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A015613 (n + 1)

end

end A002088.P14772435628378152349

namespace A002088

/-- `A051953(n+1)+A015613(n+1)` -/
def P14772435628378152349.Spec : Prop :=
  ∀ n, P14772435628378152349.a n = A002088 n

end A002088

/-! ## A002088.P15872907790381426200

`A092249(n+1)-A000010(n+1)`
-/

namespace A002088.P15872907790381426200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A000010 (n + 1)

end

end A002088.P15872907790381426200

namespace A002088

/-- `A092249(n+1)-A000010(n+1)` -/
def P15872907790381426200.Spec : Prop :=
  ∀ n, P15872907790381426200.a n = A002088 n

end A002088

/-! ## A002088.P886944465914238642

`A015614(n+1)-A109606(n+1)`
-/

namespace A002088.P886944465914238642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) - A109606 (n + 1)

end

end A002088.P886944465914238642

namespace A002088

/-- `A015614(n+1)-A109606(n+1)` -/
def P886944465914238642.Spec : Prop :=
  ∀ n, P886944465914238642.a n = A002088 n

end A002088

/-! ## A002088.P1704677032455773956

`A015614(n+1)+1-A000010(n+1)`
-/

namespace A002088.P1704677032455773956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (1 - A000010 (n + 1))

end

end A002088.P1704677032455773956

namespace A002088

/-- `A015614(n+1)+1-A000010(n+1)` -/
def P1704677032455773956.Spec : Prop :=
  ∀ n, P1704677032455773956.a n = A002088 n

end A002088

/-! ## A002088.P18277013198089452916

`∑[A109606(n+1)+1]-A000010(n+1)`
-/

namespace A002088.P18277013198089452916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000010 (n + 1)

end

end A002088.P18277013198089452916

namespace A002088

/-- `∑[A109606(n+1)+1]-A000010(n+1)` -/
def P18277013198089452916.Spec : Prop :=
  ∀ n, P18277013198089452916.a n = A002088 n

end A002088

/-! ## A002088.P1684673263690961172

`∑[A039649(n+1)]-(A039649(n+1)+n)`
-/

namespace A002088.P1684673263690961172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A039649 (n + 1) + (n : ℤ))

end

end A002088.P1684673263690961172

namespace A002088

/-- `∑[A039649(n+1)]-(A039649(n+1)+n)` -/
def P1684673263690961172.Spec : Prop :=
  ∀ n, P1684673263690961172.a n = A002088 n

end A002088

/-! ## A002088.P17774075598223186140

`A106477(n)+A106481(n)-A000010(n+1)`
-/

namespace A002088.P17774075598223186140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106477 n + (A106481 n - A000010 (n + 1))

end

end A002088.P17774075598223186140

namespace A002088

/-- `A106477(n)+A106481(n)-A000010(n+1)` -/
def P17774075598223186140.Spec : Prop :=
  ∀ n, P17774075598223186140.a n = A002088 n

end A002088

/-!
# A002089: a(n) = 11*4^n.

The programs for A002089, the canonical program `A002089.P1887116606087491611` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002089 has offset 0).

The definition of A002089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*4^n` (program `A002089.P1887116606087491611`, by `A002089.P1887116606087491611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002089.P1887116606087491611

`11*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002089

/-- `11*4^n` -/
def P1887116606087491611.Spec : Prop :=
  ∀ n, (P1887116606087491611.a n : ℤ) = A002089 n

theorem P1887116606087491611.correct : P1887116606087491611.Spec := by
  intro n
  simp only [A002089]

end A002089

/-!
# A002090: Related to Hamilton numbers.

The programs for A002090, there is no canonical definition to state claims against.
-/

/-! ## A002090.P15832713304148157873

`A134294(n+1)+A011750(n)`
-/

namespace A002090.P15832713304148157873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134294 (n + 1) + A011750 n

end

end A002090.P15832713304148157873

/-! ## A002090.P937117932409497216

`A215703(n)+A134294(n+1)`
-/

namespace A002090.P937117932409497216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 n + A134294 (n + 1)

end

end A002090.P937117932409497216

/-! ## A002090.P14362778388014921632

`A299038(n)+A134294(n+1)`
-/

namespace A002090.P14362778388014921632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 n + A134294 (n + 1)

end

end A002090.P14362778388014921632

/-! ## A002090.P17799004144435923792

`A358194(n)+A134294(n+1)`
-/

namespace A002090.P17799004144435923792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 n + A134294 (n + 1)

end

end A002090.P17799004144435923792

/-!
# A002091: From a Goldbach conjecture: the location of records in A185091.

The programs for A002091, there is no canonical definition to state claims against.
-/

/-! ## A002091.P9764367625300444509

`A316355(∑[A259595(∏{p}[n+1, #])])`
-/

namespace A002091.P9764367625300444509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259595 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002091.P9764367625300444509

/-!
# A002092: From a Goldbach conjecture: records in A185091.

The programs for A002092, there is no canonical definition to state claims against.
-/

/-! ## A002092.P7339012437004181197

`A185091((A002091(n+1)+1)/2)`
-/

namespace A002092.P7339012437004181197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (SequenceMachineLib.roundAway ((A002091 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A002092.P7339012437004181197

/-! ## A002092.P4093388619413325992

`record[A185091(n+2)]`
-/

namespace A002092.P4093388619413325992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002092.P4093388619413325992

/-! ## A002092.P5846042706644651477

`A185091(ceil(A002091(n+1)/2))`
-/

namespace A002092.P5846042706644651477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 ⌈(A002091 (n + 1) : ℚ) / 2⌉.toNat

end

end A002092.P5846042706644651477

/-! ## A002092.P10876971576699720193

`A185091(round(A002091(n+1)/2))`
-/

namespace A002092.P10876971576699720193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185091 (SequenceMachineLib.roundAway ((A002091 (n + 1) : ℚ) / 2)).toNat

end

end A002092.P10876971576699720193

/-! ## A002092.P3202728883221813542

`record[or(A069158(n+1), A103506(n+1))]`
-/

namespace A002092.P3202728883221813542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069158 (n + 1)) (A103506 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002092.P3202728883221813542

/-!
# A002093: Highly abundant numbers: numbers k such that sigma(k) > sigma(m) for all m < k.

The programs for A002093, there is no canonical definition to state claims against.
-/

/-! ## A002093.P14752640186265809116

`∪[A181311(n+1), A181312(n+1)]`
-/

namespace A002093.P14752640186265809116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P14752640186265809116

/-! ## A002093.P12566605709476660312

`∪[A004394(n+1), A128699(n+1)]`
-/

namespace A002093.P12566605709476660312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P12566605709476660312

/-! ## A002093.P3351449654129370203

`∪[A034090(n+1), A128699(n+1)]`
-/

namespace A002093.P3351449654129370203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P3351449654129370203

/-! ## A002093.P4518893462004285786

`∪[A097212(n+1), A128699(n+1)]`
-/

namespace A002093.P4518893462004285786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P4518893462004285786

/-! ## A002093.P11206508417566761635

`∪[A128699(n+1), A140999(n+1)]`
-/

namespace A002093.P11206508417566761635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P11206508417566761635

/-! ## A002093.P2631227297415714449

`∪[A128699(n+1), A216365(n+1)]`
-/

namespace A002093.P2631227297415714449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P2631227297415714449

/-! ## A002093.P9761918202134008900

`∪[A077006(n+1), A128699(n+1)]`
-/

namespace A002093.P9761918202134008900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P9761918202134008900

/-! ## A002093.P14474008387535822956

`∪[A094348(n+1), A128699(n+1)]`
-/

namespace A002093.P14474008387535822956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P14474008387535822956

/-! ## A002093.P289077096597960047

`∪[A128699(n+1), A168267(n+1)]`
-/

namespace A002093.P289077096597960047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002093.P289077096597960047

/-!
# A002094: Number of unlabeled connected loop-less graphs on n nodes containing exactly one cycle (of length at least 2) and with all nodes of degree <= 4.

The programs for A002094, there is no canonical definition to state claims against.
-/

/-! ## A002094.P5226054164026322288

`A126874(n+5)-∑[A093387(n+1)]`
-/

namespace A002094.P5226054164026322288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126874 (n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002094.P5226054164026322288

/-! ## A002094.P3228945089240992914

`A112778(A289655(n)+A006228(n+1))`
-/

namespace A002094.P3228945089240992914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A289655 n + A006228 (n + 1)).toNat

end

end A002094.P3228945089240992914

/-! ## A002094.P8060789640818844103

`A003056(A098742(n+1)*A350102(n))`
-/

namespace A002094.P8060789640818844103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A098742 (n + 1) * A350102 n).toNat

end

end A002094.P8060789640818844103

/-! ## A002094.P12228278849173242034

`A051603(n)-A001221(A051570(n+3))`
-/

namespace A002094.P12228278849173242034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051603 n - A001221 (A051570 (n + 3)).toNat

end

end A002094.P12228278849173242034

/-!
# A002095: Number of partitions of n into nonprime parts.

The programs for A002095, there is no canonical definition to state claims against.
-/

/-! ## A002095.P5499452975965098628

`∑[A023895(n)]`
-/

namespace A002095.P5499452975965098628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002095.P5499452975965098628

/-! ## A002095.P14573064492637041328

`A303663(n+1)-(A303663(n)+A023895(n+1))`
-/

namespace A002095.P14573064492637041328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303663 (n + 1) - (A303663 n + A023895 (n + 1))

end

end A002095.P14573064492637041328

/-! ## A002095.P14792390212492193522

`A000041(n)-A235945(n)`
-/

namespace A002095.P14792390212492193522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A235945 n

end

end A002095.P14792390212492193522

/-! ## A002095.P4662820646775189008

`∑[A002865(n)]-A235945(n)`
-/

namespace A002095.P4662820646775189008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A235945 n

end

end A002095.P4662820646775189008

/-! ## A002095.P16500558438425346633

`A000065(n)+1-A235945(n)`
-/

namespace A002095.P16500558438425346633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A235945 n)

end

end A002095.P16500558438425346633

/-! ## A002095.P9636643528736269476

`2*A339395(n)-A302236(n)`
-/

namespace A002095.P9636643528736269476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339395 n - A302236 n

end

end A002095.P9636643528736269476

/-! ## A002095.P4962813494749242066

`A339396(n)+A339395(n)`
-/

namespace A002095.P4962813494749242066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 n + A339395 n

end

end A002095.P4962813494749242066

/-! ## A002095.P5007920555740799967

`A302236(n)+2*A339396(n)`
-/

namespace A002095.P5007920555740799967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302236 n + 2 * A339396 n

end

end A002095.P5007920555740799967

/-! ## A002095.P205045419056972073

`A222656(∑[ceil(n/2)])`
-/

namespace A002095.P205045419056972073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002095.P205045419056972073

/-!
# A002096: Mixed partitions of n.

The programs for A002096, there is no canonical definition to state claims against.
-/

/-! ## A002096.P1435259673217358670

`A235945(n+1)-Δ[A034891(n)]`
-/

namespace A002096.P1435259673217358670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (n + 1) - (f1 (n + 1) - f1 n)

end

end A002096.P1435259673217358670

/-! ## A002096.P14456846099454985955

`A235945(n+1)-A000607(n+1)`
-/

namespace A002096.P14456846099454985955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (n + 1) - A000607 (n + 1)

end

end A002096.P14456846099454985955

/-! ## A002096.P14821215577596238276

`A235945(n+1)+A034891(n)-A034891(n+1)`
-/

namespace A002096.P14821215577596238276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (n + 1) + (A034891 n - A034891 (n + 1))

end

end A002096.P14821215577596238276

/-! ## A002096.P12586998679059521900

`A000041(n+1)-(A002095(n+1)+A000607(n+1))`
-/

namespace A002096.P12586998679059521900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A002095 (n + 1) + A000607 (n + 1))

end

end A002096.P12586998679059521900

/-! ## A002096.P4347624796241944203

`A000196(A202192(n)-A011782(n))`
-/

namespace A002096.P4347624796241944203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A202192 n - A011782 n).toNat

end

end A002096.P4347624796241944203

/-!
# A002098: G.f.: 1/Product_{k>=1} (1-prime(k)*x^prime(k)).

The programs for A002098, there is no canonical definition to state claims against.
-/

/-! ## A002098.P2171867616966901570

`Δ[A008619(A360254(2*n+1)+A321405(n))]`
-/

namespace A002098.P2171867616966901570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A360254 (2 * n + 1) + A321405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002098.P2171867616966901570

/-! ## A002098.P254499586620004797

`xor(A257992(n+2), A331914(A268709(n)))`
-/

namespace A002098.P254499586620004797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A257992 (n + 2)) (A331914 (A268709 n).toNat)

end

end A002098.P254499586620004797

/-! ## A002098.P10011577638203401373

`A298598(n)-A269248(A298597(2*n+5))`
-/

namespace A002098.P10011577638203401373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298598 n - A269248 (A298597 (2 * n + 5)).toNat

end

end A002098.P10011577638203401373

/-! ## A002098.P1512012562461531420

`xor(A014707(n+1), A135660(A094967(2*n+3)))`
-/

namespace A002098.P1512012562461531420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014707 (n + 1)) (A135660 (A094967 (2 * n + 3)).toNat)

end

end A002098.P1512012562461531420

