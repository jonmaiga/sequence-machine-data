import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A180000: a(n) = lcm{1,2,...,n} / swinging_factorial(n) = A003418(n) / A056040(n).

The programs for A180000, the canonical program `A180000.P9582620330911628146` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180000 has offset 0).

The definition of A180000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180000.P9582620330911628146

`A003418(n)/A056040(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180000

/-- `A003418(n)/A056040(n)` -/
def P9582620330911628146.Spec : Prop :=
  ∀ n, P9582620330911628146.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P1845077798425652864

`A263673(n)/A152271(n)`
-/

namespace A180000.P1845077798425652864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A152271 n : ℚ)

end

end A180000.P1845077798425652864

namespace A180000

/-- `A263673(n)/A152271(n)` -/
def P1845077798425652864.Spec : Prop :=
  ∀ n, P1845077798425652864.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P4650433434060597696

`A263673(n)/A057979(n+2)`
-/

namespace A180000.P4650433434060597696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A057979 (n + 2) : ℚ)

end

end A180000.P4650433434060597696

namespace A180000

/-- `A263673(n)/A057979(n+2)` -/
def P4650433434060597696.Spec : Prop :=
  ∀ n, P4650433434060597696.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P7099419121905670904

`2/A133265(n)*A263673(n)`
-/

namespace A180000.P7099419121905670904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A133265 n : ℚ) * (A263673 n : ℚ)

end

end A180000.P7099419121905670904

namespace A180000

/-- `2/A133265(n)*A263673(n)` -/
def P7099419121905670904.Spec : Prop :=
  ∀ n, P7099419121905670904.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P15115552846760259974

`A263673(n)/A008619(A124625(n))`
-/

namespace A180000.P15115552846760259974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A008619 (A124625 n).toNat : ℚ)

end

end A180000.P15115552846760259974

namespace A180000

/-- `A263673(n)/A008619(A124625(n))` -/
def P15115552846760259974.Spec : Prop :=
  ∀ n, P15115552846760259974.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P13817902215521470207

`A263673(n)/A110654(A093178(n))`
-/

namespace A180000.P13817902215521470207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A110654 (A093178 n).toNat : ℚ)

end

end A180000.P13817902215521470207

namespace A180000

/-- `A263673(n)/A110654(A093178(n))` -/
def P13817902215521470207.Spec : Prop :=
  ∀ n, P13817902215521470207.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P18419895981072684595

`A263673(n)/A142150(A133265(n))`
-/

namespace A180000.P18419895981072684595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A142150 (A133265 n).toNat : ℚ)

end

end A180000.P18419895981072684595

namespace A180000

/-- `A263673(n)/A142150(A133265(n))` -/
def P18419895981072684595.Spec : Prop :=
  ∀ n, P18419895981072684595.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P16892028945604182087

`gcd(A263673(A052928(n)), A263673(n))`
-/

namespace A180000.P16892028945604182087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263673 (A052928 n).toNat) (A263673 n)

end

end A180000.P16892028945604182087

namespace A180000

/-- `gcd(A263673(A052928(n)), A263673(n))` -/
def P16892028945604182087.Spec : Prop :=
  ∀ n, (P16892028945604182087.a n : ℤ) = A180000 n

end A180000

/-! ## A180000.P14745578592544549512

`A001405(n)/A056040(n)*A263673(n)`
-/

namespace A180000.P14745578592544549512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A056040 n : ℚ) * (A263673 n : ℚ)

end

end A180000.P14745578592544549512

namespace A180000

/-- `A001405(n)/A056040(n)*A263673(n)` -/
def P14745578592544549512.Spec : Prop :=
  ∀ n, P14745578592544549512.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P12735969030290002119

`A000793(n)/A056040(n)*A225558(n)`
-/

namespace A180000.P12735969030290002119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000793 n : ℚ) / (A056040 n : ℚ) * (A225558 n : ℚ)

end

end A180000.P12735969030290002119

namespace A180000

/-- `A000793(n)/A056040(n)*A225558(n)` -/
def P12735969030290002119.Spec : Prop :=
  ∀ n, P12735969030290002119.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P12074322411848802239

`(A075059(n)-1)/A056040(n)`
-/

namespace A180000.P12074322411848802239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A056040 n : ℚ)

end

end A180000.P12074322411848802239

namespace A180000

/-- `(A075059(n)-1)/A056040(n)` -/
def P12074322411848802239.Spec : Prop :=
  ∀ n, P12074322411848802239.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P11767015825461264533

`∏[A014963(∏{p}[n, #])]/A056040(n)`
-/

namespace A180000.P11767015825461264533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A056040 n : ℚ)

end

end A180000.P11767015825461264533

namespace A180000

/-- `∏[A014963(∏{p}[n, #])]/A056040(n)` -/
def P11767015825461264533.Spec : Prop :=
  ∀ n, P11767015825461264533.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P13170294692150613306

`A003418(n)/(A001405(n)*A152271(n))`
-/

namespace A180000.P13170294692150613306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A001405 n * A152271 n : ℚ)

end

end A180000.P13170294692150613306

namespace A180000

/-- `A003418(n)/(A001405(n)*A152271(n))` -/
def P13170294692150613306.Spec : Prop :=
  ∀ n, P13170294692150613306.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P12082869669163568443

`lcm(A056040(n), A067391(n+1))/A056040(n)`
-/

namespace A180000.P12082869669163568443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A056040 n) (A067391 (n + 1)) : ℚ) / (A056040 n : ℚ)

end

end A180000.P12082869669163568443

namespace A180000

/-- `lcm(A056040(n), A067391(n+1))/A056040(n)` -/
def P12082869669163568443.Spec : Prop :=
  ∀ n, P12082869669163568443.a n = (A180000 n : ℚ)

end A180000

/-! ## A180000.P983013762825569151

`∏[A014963(n+1)]/(A014963(n+1)*A056040(n))`
-/

namespace A180000.P983013762825569151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (n + 1) * A056040 n : ℚ)

end

end A180000.P983013762825569151

namespace A180000

/-- `∏[A014963(n+1)]/(A014963(n+1)*A056040(n))` -/
def P983013762825569151.Spec : Prop :=
  ∀ n, P983013762825569151.a n = (A180000 n : ℚ)

end A180000

/-!
# A180001: Eventual period of a single cell in rule 110 cellular automaton in a cyclic universe of width n.

The programs for A180001, there is no canonical definition to state claims against.
-/

/-! ## A180001.P6707689509983902218

`A204371(n+1)/A127296(A096744(n))`
-/

namespace A180001.P6707689509983902218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204371 (n + 1) : ℚ) / (A127296 (A096744 n).toNat : ℚ)

end

end A180001.P6707689509983902218

/-! ## A180001.P4612767712566773552

`A204371(n+1)/A115573(A127893(n))`
-/

namespace A180001.P4612767712566773552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204371 (n + 1) : ℚ) / (A115573 (A127893 n).toNat : ℚ)

end

end A180001.P4612767712566773552

/-! ## A180001.P2580968272826343289

`A204371(lcm(A062759(n+1), A219347(n)))`
-/

namespace A180001.P2580968272826343289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204371 (Int.lcm (A062759 (n + 1)) (A219347 n))

end

end A180001.P2580968272826343289

/-! ## A180001.P5341736652724597791

`A204371(n+1)/A047988(A028874(n+4))`
-/

namespace A180001.P5341736652724597791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204371 (n + 1) : ℚ) / (A047988 (A028874 (n + 4)).toNat : ℚ)

end

end A180001.P5341736652724597791

/-! ## A180001.P209259129877606139

`A204371(A062759(n+1)%A194777(n+1))`
-/

namespace A180001.P209259129877606139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204371 (Int.tmod (A062759 (n + 1)) (A194777 (n + 1))).toNat

end

end A180001.P209259129877606139

/-!
# A180002: Place a(n) red and b(n) blue balls in an urn; draw 5 balls without replacement; Probability(5 red balls) = Probability(3 red and 2 blue balls).

The programs for A180002, the canonical program `A180002.P14711307796903389757` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180002 has offset 1).

The definition of A180002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180002.P14711307796903389757

`A341895(n+1)+4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180002

/-- `A341895(n+1)+4` -/
def P14711307796903389757.Spec : Prop :=
  ∀ n, P14711307796903389757.a n = A180002 (n + 1)

theorem P14711307796903389757.correct : P14711307796903389757.Spec := by
  intro n
  simp only [A180002, Nat.add_sub_cancel]

end A180002

/-! ## A180002.P9019341971810089995

`(A198943(n+1)+7)/2`
-/

namespace A180002.P9019341971810089995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198943 (n + 1) + 7 : ℚ) / 2

end

end A180002.P9019341971810089995

namespace A180002

/-- `(A198943(n+1)+7)/2` -/
def P9019341971810089995.Spec : Prop :=
  ∀ n, P9019341971810089995.a n = (A180002 (n + 1) : ℚ)

theorem P9019341971810089995.correct : P9019341971810089995.Spec := by
  intro n
  simp only [A180002, Nat.add_sub_cancel, A180002.P9019341971810089995.a, A180002.P14711307796903389757.a, A198943, A198943.P14839835237173230297.a, A341895, A341895.P12794188109723062972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180002

/-! ## A180002.P4245463601265370510

`A014682(A198943(n+1)+7)`
-/

namespace A180002.P4245463601265370510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198943 (n + 1) + 7).toNat

end

end A180002.P4245463601265370510

namespace A180002

/-- `A014682(A198943(n+1)+7)` -/
def P4245463601265370510.Spec : Prop :=
  ∀ n, P4245463601265370510.a n = A180002 (n + 1)

end A180002

/-! ## A180002.P3229880552119579496

`A273943(A198943(n+1)+7)`
-/

namespace A180002.P3229880552119579496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A198943 (n + 1) + 7).toNat

end

end A180002.P3229880552119579496

namespace A180002

/-- `A273943(A198943(n+1)+7)` -/
def P3229880552119579496.Spec : Prop :=
  ∀ n, P3229880552119579496.a n = A180002 (n + 1)

end A180002

/-! ## A180002.P1613440487641997756

`A302042(A198943(n+1)+7)`
-/

namespace A180002.P1613440487641997756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A198943 (n + 1) + 7).toNat

end

end A180002.P1613440487641997756

namespace A180002

/-- `A302042(A198943(n+1)+7)` -/
def P1613440487641997756.Spec : Prop :=
  ∀ n, P1613440487641997756.a n = A180002 (n + 1)

end A180002

/-!
# A180003: Place a(n) blue and b(n) (A180002) red balls in an urn, draw 5 balls without replacement; Probability(5 red balls) = Probability(3 red and 2 blue balls).

The programs for A180003, the canonical program `A180003.P6926800034930917503` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180003 has offset 1).

The definition of A180003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180003.P6926800034930917503

`a(n-1)+38*a(n-3)-38*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=13, a(4)=56, a(5)=247, a(6)=475`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180003

/-- `a(n-1)+38*a(n-3)-38*a(n-4)-a(n-6)+a(n-7)` -/
def P6926800034930917503.Spec : Prop :=
  ∀ n, P6926800034930917503.a n = A180003 (n + 1)

theorem P6926800034930917503.correct : P6926800034930917503.Spec := by
  intro n
  simp only [A180003, Nat.add_sub_cancel]

end A180003

/-! ## A180003.P3946395876439905455

`A341893(n+1)+1`
-/

namespace A180003.P3946395876439905455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341893 (n + 1) + 1

end

end A180003.P3946395876439905455

namespace A180003

/-- `A341893(n+1)+1` -/
def P3946395876439905455.Spec : Prop :=
  ∀ n, P3946395876439905455.a n = A180003 (n + 1)

end A180003

/-! ## A180003.P6765723123738622923

`ceil(A052454(n+1)/2)`
-/

namespace A180003.P6765723123738622923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052454 (n + 1) : ℚ) / 2⌉

end

end A180003.P6765723123738622923

namespace A180003

/-- `ceil(A052454(n+1)/2)` -/
def P6765723123738622923.Spec : Prop :=
  ∀ n, P6765723123738622923.a n = A180003 (n + 1)

end A180003

/-! ## A180003.P3909206925360038857

`(A052454(n+1)+A000034(2*n))/2`
-/

namespace A180003.P3909206925360038857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052454 (n + 1) + A000034 (2 * n) : ℚ) / 2

end

end A180003.P3909206925360038857

namespace A180003

/-- `(A052454(n+1)+A000034(2*n))/2` -/
def P3909206925360038857.Spec : Prop :=
  ∀ n, P3909206925360038857.a n = (A180003 (n + 1) : ℚ)

end A180003

/-! ## A180003.P8026464978199237652

`floor(A180002(n+1)/sqrt(10))`
-/

namespace A180003.P8026464978199237652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180002 (n + 1) : ℝ) / Real.sqrt (10 : ℝ)⌋

end

end A180003.P8026464978199237652

namespace A180003

/-- `floor(A180002(n+1)/sqrt(10))` -/
def P8026464978199237652.Spec : Prop :=
  ∀ n, P8026464978199237652.a n = A180003 (n + 1)

end A180003

/-!
# A180004: a(n) is the nearest integer to n*(27/26).

The programs for A180004, the canonical program `A180004.P5243041503214767891` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180004 has offset 1).

The definition of A180004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180004.P9676504202889506488

`comp[27*n+12]+1`
-/

namespace A180004.P9676504202889506488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A180004.P9676504202889506488

namespace A180004

/-- `comp[27*n+12]+1` -/
def P9676504202889506488.Spec : Prop :=
  ∀ n, (P9676504202889506488.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P7891096911619912294

`floor(sqrt(∑[(n+1)/acot(2)]))`
-/

namespace A180004.P7891096911619912294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / SequenceMachineLib.acot (2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A180004.P7891096911619912294

namespace A180004

/-- `floor(sqrt(∑[(n+1)/acot(2)]))` -/
def P7891096911619912294.Spec : Prop :=
  ∀ n, P7891096911619912294.a n = A180004 (n + 1)

end A180004

/-! ## A180004.P5243041503214767891

`lt[val(2*n+1, 3), 3%(n+3)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180004

/-- `lt[val(2*n+1, 3), 3%(n+3)]` -/
def P5243041503214767891.Spec : Prop :=
  ∀ n, (P5243041503214767891.a n : ℤ) = A180004 (n + 1)

theorem P5243041503214767891.correct : P5243041503214767891.Spec := by
  intro n
  simp only [A180004, Nat.add_sub_cancel]

end A180004

/-! ## A180004.P2478843167547563150

`lt[n^val(2*n+1, 3), (n+1)²]`
-/

namespace A180004.P2478843167547563150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (2 * n + 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180004.P2478843167547563150

namespace A180004

/-- `lt[n^val(2*n+1, 3), (n+1)²]` -/
def P2478843167547563150.Spec : Prop :=
  ∀ n, (P2478843167547563150.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P18363006286206619541

`lt[(n-1)*val(2*n+1, 3), 2*n]`
-/

namespace A180004.P18363006286206619541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.valuation (2 * n + 1) 3 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180004.P18363006286206619541

namespace A180004

/-- `lt[(n-1)*val(2*n+1, 3), 2*n]` -/
def P18363006286206619541.Spec : Prop :=
  ∀ n, (P18363006286206619541.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P18007897422227990958

`∑[char[13*A109613(n)-1]+1]`
-/

namespace A180004.P18007897422227990958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A109613 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180004.P18007897422227990958

namespace A180004

/-- `∑[char[13*A109613(n)-1]+1]` -/
def P18007897422227990958.Spec : Prop :=
  ∀ n, (P18007897422227990958.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P16249686337546952107

`comp[Δ[A022284(A022290(n))]]`
-/

namespace A180004.P16249686337546952107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022284 (A022290 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180004.P16249686337546952107

namespace A180004

/-- `comp[Δ[A022284(A022290(n))]]` -/
def P16249686337546952107.Spec : Prop :=
  ∀ n, (P16249686337546952107.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P9086635641943607479

`∑[A007318(A007318(gcd(n+1, 25-n)))]`
-/

namespace A180004.P9086635641943607479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (Int.gcd (n + 1 : ℤ) (25 - (n : ℤ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180004.P9086635641943607479

namespace A180004

/-- `∑[A007318(A007318(gcd(n+1, 25-n)))]` -/
def P9086635641943607479.Spec : Prop :=
  ∀ n, P9086635641943607479.a n = A180004 (n + 1)

end A180004

/-! ## A180004.P8624653177474005357

`eq[A047789(n), A109012(n+5)]`
-/

namespace A180004.P8624653177474005357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180004.P8624653177474005357

namespace A180004

/-- `eq[A047789(n), A109012(n+5)]` -/
def P8624653177474005357.Spec : Prop :=
  ∀ n, (P8624653177474005357.a n : ℤ) = A180004 (n + 1)

end A180004

/-! ## A180004.P4432577860046069341

`eq[3, A217287(A047789(n))]`
-/

namespace A180004.P4432577860046069341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (A047789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180004.P4432577860046069341

namespace A180004

/-- `eq[3, A217287(A047789(n))]` -/
def P4432577860046069341.Spec : Prop :=
  ∀ n, (P4432577860046069341.a n : ℤ) = A180004 (n + 1)

end A180004

/-!
# A180005: Numbers n with the property that the relation 1-d!/((d-i)!d^i)>1/2 holds for integers d>2 between i-1 and n+i-1.

The programs for A180005, there is no canonical definition to state claims against.
-/

/-! ## A180005.P17811653679607029645

`A308699(n+1)-(char[1]+1+n)`
-/

namespace A180005.P17811653679607029645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 1 + n : ℕ) : ℤ)

end

end A180005.P17811653679607029645

/-! ## A180005.P8435783328216862330

`∑[A180020(n+1)]-floor(n-atan(n))`
-/

namespace A180005.P8435783328216862330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A180005.P8435783328216862330

/-! ## A180005.P7757240446846956174

`∑[A180020(n+1)]-A289207(n)`
-/

namespace A180005.P7757240446846956174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289207 n

end

end A180005.P7757240446846956174

/-! ## A180005.P14207074964072847421

`∑[Δ[A308699(n)]%(n²+1)]-A289207(n)`
-/

namespace A180005.P14207074964072847421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289207 n

end

end A180005.P14207074964072847421

/-! ## A180005.P6613318280231964161

`A072829(n+1)-A033810(a(n-1)+1)` with `a(0)=0`
-/

namespace A180005.P6613318280231964161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072829 (n + 1) - A033810 (a (n - 1) + 1).toNat

end

end A180005.P6613318280231964161

/-! ## A180005.P14902128281293521775

`A072829(n+1)-A182008(a(n-1)+1)` with `a(0)=0`
-/

namespace A180005.P14902128281293521775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072829 (n + 1) - A182008 (a (n - 1) + 1).toNat

end

end A180005.P14902128281293521775

/-! ## A180005.P2633863473943083433

`A072829(n+1)-A182009(a(n-1)+1)` with `a(0)=0`
-/

namespace A180005.P2633863473943083433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A072829 (n + 1) - A182009 (a (n - 1) + 1).toNat

end

end A180005.P2633863473943083433

/-! ## A180005.P883947372978858107

`∑[A180020(n+1)-A043545(A308699(n))]`
-/

namespace A180005.P883947372978858107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 1) - A043545 (A308699 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180005.P883947372978858107

/-! ## A180005.P16568544386939274329

`∑[A180020(n+1)-A157928(A257212(n))]`
-/

namespace A180005.P16568544386939274329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 1) - A157928 (A257212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180005.P16568544386939274329

/-! ## A180005.P10475842889565529109

`A157928(n)+∑[A180020(n+1)-A157928(n)]`
-/

namespace A180005.P10475842889565529109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 1) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180005.P10475842889565529109

/-!
# A180006: Composite numbers that can be obtained from primes by interchanging the first and last digits.

The programs for A180006, there is no canonical definition to state claims against.
-/

/-! ## A180006.P17322390722627023647

`A004086(A076056(n+1)%A244435(2*n+5))`
-/

namespace A180006.P17322390722627023647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A076056 (n + 1)) (A244435 (2 * n + 5))).toNat

end

end A180006.P17322390722627023647

/-! ## A180006.P10939992386001782835

`A071786(A076056(n+1)%A090429(n+1))`
-/

namespace A180006.P10939992386001782835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (Int.tmod (A076056 (n + 1)) (A090429 (n + 1))).toNat

end

end A180006.P10939992386001782835

/-! ## A180006.P16979123112020367950

`A004086(A076056(n+1))%A376874(n+5)`
-/

namespace A180006.P16979123112020367950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A076056 (n + 1)).toNat) (A376874 (n + 5))

end

end A180006.P16979123112020367950

/-! ## A180006.P2537478439667730398

`A004086(∩[A151768(n+1), A307824(n+1)])`
-/

namespace A180006.P2537478439667730398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A180006.P2537478439667730398

/-! ## A180006.P12298581093478544164

`A071786(A076056(n+1))%A103170(n+1)`
-/

namespace A180006.P12298581093478544164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071786 (A076056 (n + 1)).toNat) (A103170 (n + 1))

end

end A180006.P12298581093478544164

/-!
# A180007: Number of Goldbach partitions of 6^n.

The programs for A180007, there is no canonical definition to state claims against.
-/

/-! ## A180007.P7045054597783144234

`A061358(6^(n+1))`
-/

namespace A180007.P7045054597783144234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (6 ^ (n + 1))

end

end A180007.P7045054597783144234

/-! ## A180007.P12019064753890102849

`A322921(6^n)`
-/

namespace A180007.P12019064753890102849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322921 (6 ^ n)

end

end A180007.P12019064753890102849

/-!
# A180009: Triangle T(n,k), read by rows, T(n,1) = mu(n), T(n,2) = T(n,k-1) - T(n-1,k), k > 2, T(n,k) = Sum_{i=1..k-1} ( T(n-i,k-1) - T(n-i,k) ).

The programs for A180009, there is no canonical definition to state claims against.
-/

/-! ## A180009.P13114767875588140149

`A020985(A156586(n))*A180010(n+1)`
-/

namespace A180009.P13114767875588140149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156586 n).toNat * A180010 (n + 1)

end

end A180009.P13114767875588140149

/-! ## A180009.P10697676224549588171

`A020985(A156587(n))*A180010(n+1)`
-/

namespace A180009.P10697676224549588171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156587 n).toNat * A180010 (n + 1)

end

end A180009.P10697676224549588171

/-! ## A180009.P7750232178057239011

`A278347(A152998(n+3)²)`
-/

namespace A180009.P7750232178057239011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278347 (A152998 (n + 3) ^ 2).toNat

end

end A180009.P7750232178057239011

/-! ## A180009.P690072127756144328

`A008683(A080528(record[∏{p}[n, #]]))`
-/

namespace A180009.P690072127756144328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A180009.P690072127756144328

/-! ## A180009.P10501871390694213781

`A330025(A226781(2*(n+1)))`
-/

namespace A180009.P10501871390694213781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A226781 (2 * (n + 1))).toNat

end

end A180009.P10501871390694213781

/-!
# A180010: Triangle T(n,k) read by rows. Matrix inverse of A180009.

The programs for A180010, there is no canonical definition to state claims against.
-/

/-! ## A180010.P16168139537639392038

`A020985(A156586(n))*A180009(n+1)`
-/

namespace A180010.P16168139537639392038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156586 n).toNat * A180009 (n + 1)

end

end A180010.P16168139537639392038

/-! ## A180010.P15257394759849392287

`A020985(A156587(n))*A180009(n+1)`
-/

namespace A180010.P15257394759849392287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A156587 n).toNat * A180009 (n + 1)

end

end A180010.P15257394759849392287

/-! ## A180010.P213146382489405244

`A180009(n+1)*A180009(A236021(A123352(n)))`
-/

namespace A180010.P213146382489405244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180009 (n + 1) * A180009 (A236021 (A123352 n).toNat).toNat

end

end A180010.P213146382489405244

/-! ## A180010.P9034707287470586475

`A029883(A008607(∑[A144922(n+1)]))`
-/

namespace A180010.P9034707287470586475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A008607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A180010.P9034707287470586475

/-! ## A180010.P11115556496005281914

`A016422(A212855(n+1)-A016412(2*n+1))`
-/

namespace A180010.P11115556496005281914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016422 (A212855 (n + 1) - A016412 (2 * n + 1)).toNat

end

end A180010.P11115556496005281914

/-!
# A180012: a(n) = smallest k >= 1 such that k and k*n have the same digit sum.

The programs for A180012, there is no canonical definition to state claims against.
-/

/-! ## A180012.P2750620269909379425

`A348870(A004277(n*a(comp[2*n+11]-n)))` with `a(0)=1`
-/

namespace A180012.P2750620269909379425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348870 (A004277 ((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat).toNat

end

end A180012.P2750620269909379425

/-! ## A180012.P3992492576095351929

`A348870(A062399(A028310(n))+n)`
-/

namespace A180012.P3992492576095351929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348870 (A062399 (A028310 n).toNat + (n : ℤ)).toNat

end

end A180012.P3992492576095351929

/-! ## A180012.P8682538563048766831

`A348870(A120126(A028310(n))+n)`
-/

namespace A180012.P8682538563048766831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348870 (A120126 (A028310 n).toNat + (n : ℤ)).toNat

end

end A180012.P8682538563048766831

/-! ## A180012.P11255712133170482857

`A348870(A351870(A028310(n))+n)`
-/

namespace A180012.P11255712133170482857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348870 (A351870 (A028310 n).toNat + (n : ℤ)).toNat

end

end A180012.P11255712133170482857

/-!
# A180013: Triangular array read by rows: T(n,k) = number of fixed points in the permutations of {1,2,...,n} that have exactly k cycles; n>=1, 1<=k<=n.

The programs for A180013, the canonical program `A180013.P2311112040680813125` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180013 has offset 1).

The definition of A180013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180013.P8595402180855031938

`∑[char[∑[n]]]*A132393(n)`
-/

namespace A180013.P8595402180855031938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A132393 n

end

end A180013.P8595402180855031938

namespace A180013

/-- `∑[char[∑[n]]]*A132393(n)` -/
def P8595402180855031938.Spec : Prop :=
  ∀ n, P8595402180855031938.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P2311112040680813125

`abs(∑[A010054(n)]*A048994(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180013

/-- `abs(∑[A010054(n)]*A048994(n))` -/
def P2311112040680813125.Spec : Prop :=
  ∀ n, P2311112040680813125.a n = A180013 (n + 1)

theorem P2311112040680813125.correct : P2311112040680813125.Spec := by
  intro n
  simp only [A180013, Nat.add_sub_cancel]

end A180013

/-! ## A180013.P8523706306414333902

`abs(A002024(n+1)*A048994(n))`
-/

namespace A180013.P8523706306414333902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (n + 1) * A048994 n|

end

end A180013.P8523706306414333902

namespace A180013

/-- `abs(A002024(n+1)*A048994(n))` -/
def P8523706306414333902.Spec : Prop :=
  ∀ n, P8523706306414333902.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P2868738351020834189

`abs((1-A003057(n+2))*A048994(n))`
-/

namespace A180013.P2868738351020834189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A003057 (n + 2)) * A048994 n|

end

end A180013.P2868738351020834189

namespace A180013

/-- `abs((1-A003057(n+2))*A048994(n))` -/
def P2868738351020834189.Spec : Prop :=
  ∀ n, P2868738351020834189.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P2895782457236403719

`A132393(n)*A262689(A093995(n+1))`
-/

namespace A180013.P2895782457236403719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A262689 (A093995 (n + 1)).toNat

end

end A180013.P2895782457236403719

namespace A180013

/-- `A132393(n)*A262689(A093995(n+1))` -/
def P2895782457236403719.Spec : Prop :=
  ∀ n, P2895782457236403719.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P8576768826559756357

`abs(A023443(A003057(n+2))*A048994(n))`
-/

namespace A180013.P8576768826559756357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 (A003057 (n + 2)).toNat * A048994 n|

end

end A180013.P8576768826559756357

namespace A180013

/-- `abs(A023443(A003057(n+2))*A048994(n))` -/
def P8576768826559756357.Spec : Prop :=
  ∀ n, P8576768826559756357.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P17279194512739377938

`A003057(n+2)*A132393(n)-A132393(n)`
-/

namespace A180013.P17279194512739377938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A132393 n - A132393 n

end

end A180013.P17279194512739377938

namespace A180013

/-- `A003057(n+2)*A132393(n)-A132393(n)` -/
def P17279194512739377938.Spec : Prop :=
  ∀ n, P17279194512739377938.a n = A180013 (n + 1)

end A180013

/-! ## A180013.P16964557574491546385

`A132393(n)*A138036(2*n)`
-/

namespace A180013.P16964557574491546385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A138036 (2 * n)

end

end A180013.P16964557574491546385

namespace A180013

/-- `A132393(n)*A138036(2*n)` -/
def P16964557574491546385.Spec : Prop :=
  ∀ n, P16964557574491546385.a n = A180013 (n + 1)

end A180013

/-!
# A180015: List of Armstrong (narcissistic) numbers in base 8 that are prime (written in base 10).

The programs for A180015, there is no canonical definition to state claims against.
-/

/-! ## A180015.P6065555334045762295

`p?[A010354(n+1)]`
-/

namespace A180015.P6065555334045762295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180015.P6065555334045762295

/-! ## A180015.P5118905730606805489

`p?[record[A010354(A020986(n))]]`
-/

namespace A180015.P5118905730606805489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010354 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180015.P5118905730606805489

/-! ## A180015.P13159888388016664487

`p?[record[A010354(A022446(n))]]`
-/

namespace A180015.P13159888388016664487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010354 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180015.P13159888388016664487

/-! ## A180015.P5531766496146528563

`p?[record[A010354(A028920(n))]]`
-/

namespace A180015.P5531766496146528563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010354 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180015.P5531766496146528563

/-!
# A180016: Partial sums of number of n-step closed paths on hexagonal lattice A002898.

The programs for A180016, there is no canonical definition to state claims against.
-/

/-! ## A180016.P2267509811932546087

`∑[A002898(n)]`
-/

namespace A180016.P2267509811932546087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180016.P2267509811932546087

/-! ## A180016.P1727898037805009031

`A002898(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A180016.P1727898037805009031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002898 n + a (A023443 n).toNat

end

end A180016.P1727898037805009031

/-! ## A180016.P17545230608506811481

`A002898(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A180016.P17545230608506811481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002898 n + a (A028310 n - 1).toNat

end

end A180016.P17545230608506811481

/-! ## A180016.P1529325185478724523

`A002898(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A180016.P1529325185478724523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002898 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A180016.P1529325185478724523

/-! ## A180016.P9018366297319864642

`∑[A328748(∑[n+3]+n+3)]`
-/

namespace A180016.P9018366297319864642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (∑ j ∈ Finset.range (n + 1), f2 j + (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180016.P9018366297319864642

/-!
# A180017: Difference of sums of digits of n in ternary and in binary.

The programs for A180017, the canonical program `A180017.P1955405444060819929` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180017 has offset 0).

The definition of A180017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180017.P6023102244318186460

`A053735(n)-A000120(n)`
-/

namespace A180017.P6023102244318186460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A000120 n

end

end A180017.P6023102244318186460

namespace A180017

/-- `A053735(n)-A000120(n)` -/
def P6023102244318186460.Spec : Prop :=
  ∀ n, P6023102244318186460.a n = A180017 n

end A180017

/-! ## A180017.P1955405444060819929

`A011371(n)-2*A054861(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A180017

/-- `A011371(n)-2*A054861(n)` -/
def P1955405444060819929.Spec : Prop :=
  ∀ n, P1955405444060819929.a n = A180017 n

theorem P1955405444060819929.correct : P1955405444060819929.Spec := by
  intro n
  simp only [A180017]

end A180017

/-! ## A180017.P4818032649103659801

`A230641(n)-A092391(n)`
-/

namespace A180017.P4818032649103659801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - A092391 n

end

end A180017.P4818032649103659801

namespace A180017

/-- `A230641(n)-A092391(n)` -/
def P4818032649103659801.Spec : Prop :=
  ∀ n, P4818032649103659801.a n = A180017 n

end A180017

/-! ## A180017.P6273511123709732733

`A004134(n)-A346502(n)`
-/

namespace A180017.P6273511123709732733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - A346502 n

end

end A180017.P6273511123709732733

namespace A180017

/-- `A004134(n)-A346502(n)` -/
def P6273511123709732733.Spec : Prop :=
  ∀ n, P6273511123709732733.a n = A180017 n

end A180017

/-! ## A180017.P12668444803912097134

`A011371(n)-A344853(n)`
-/

namespace A180017.P12668444803912097134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A344853 n

end

end A180017.P12668444803912097134

namespace A180017

/-- `A011371(n)-A344853(n)` -/
def P12668444803912097134.Spec : Prop :=
  ∀ n, P12668444803912097134.a n = A180017 n

end A180017

/-! ## A180017.P12880402592854140177

`A180018(n)-A180019(n)`
-/

namespace A180017.P12880402592854140177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n - A180019 n

end

end A180017.P12880402592854140177

namespace A180017

/-- `A180018(n)-A180019(n)` -/
def P12880402592854140177.Spec : Prop :=
  ∀ n, P12880402592854140177.a n = A180017 n

end A180017

/-! ## A180017.P17630558304766040555

`A053735(n)-log2(A001316(n))`
-/

namespace A180017.P17630558304766040555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053735 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A180017.P17630558304766040555

namespace A180017

/-- `A053735(n)-log2(A001316(n))` -/
def P17630558304766040555.Spec : Prop :=
  ∀ n, P17630558304766040555.a n = (A180017 n : ℝ)

end A180017

/-! ## A180017.P588672128115756712

`A096288(n)-2*A000120(n)`
-/

namespace A180017.P588672128115756712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n - 2 * A000120 n

end

end A180017.P588672128115756712

namespace A180017

/-- `A096288(n)-2*A000120(n)` -/
def P588672128115756712.Spec : Prop :=
  ∀ n, P588672128115756712.a n = A180017 n

end A180017

/-! ## A180017.P11949848944378387678

`2*A053735(n)-A096288(n)`
-/

namespace A180017.P11949848944378387678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A096288 n

end

end A180017.P11949848944378387678

namespace A180017

/-- `2*A053735(n)-A096288(n)` -/
def P11949848944378387678.Spec : Prop :=
  ∀ n, P11949848944378387678.a n = A180017 n

end A180017

/-! ## A180017.P16755630525523972146

`A230641(n)-(A000120(n)+n)`
-/

namespace A180017.P16755630525523972146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - (A000120 n + (n : ℤ))

end

end A180017.P16755630525523972146

namespace A180017

/-- `A230641(n)-(A000120(n)+n)` -/
def P16755630525523972146.Spec : Prop :=
  ∀ n, P16755630525523972146.a n = A180017 n

end A180017

/-! ## A180017.P18227522573447673404

`∑{digits}[A007089(n), #]-A000120(n)`
-/

namespace A180017.P18227522573447673404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A000120 n

end

end A180017.P18227522573447673404

namespace A180017

/-- `∑{digits}[A007089(n), #]-A000120(n)` -/
def P18227522573447673404.Spec : Prop :=
  ∀ n, P18227522573447673404.a n = A180017 n

end A180017

/-! ## A180017.P17622305556270140545

`A173523(n+1)-(A000120(n)+1)`
-/

namespace A180017.P17622305556270140545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - (A000120 n + 1)

end

end A180017.P17622305556270140545

namespace A180017

/-- `A173523(n+1)-(A000120(n)+1)` -/
def P17622305556270140545.Spec : Prop :=
  ∀ n, P17622305556270140545.a n = A180017 n

end A180017

/-! ## A180017.P4342876068557042357

`A173523(n+1)-A063787(n+1)`
-/

namespace A180017.P4342876068557042357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) - A063787 (n + 1)

end

end A180017.P4342876068557042357

namespace A180017

/-- `A173523(n+1)-A063787(n+1)` -/
def P4342876068557042357.Spec : Prop :=
  ∀ n, P4342876068557042357.a n = A180017 n

end A180017

/-! ## A180017.P7761779514904690793

`A005843(A053735(n))-A096288(n)`
-/

namespace A180017.P7761779514904690793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053735 n).toNat - A096288 n

end

end A180017.P7761779514904690793

namespace A180017

/-- `A005843(A053735(n))-A096288(n)` -/
def P7761779514904690793.Spec : Prop :=
  ∀ n, P7761779514904690793.a n = A180017 n

end A180017

/-! ## A180017.P13214984667734357156

`A005187(n)-(A054861(n)+A004128(n))`
-/

namespace A180017.P13214984667734357156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (A054861 n + A004128 n)

end

end A180017.P13214984667734357156

namespace A180017

/-- `A005187(n)-(A054861(n)+A004128(n))` -/
def P13214984667734357156.Spec : Prop :=
  ∀ n, P13214984667734357156.a n = A180017 n

end A180017

/-! ## A180017.P7258046277438115247

`A007953(n)-(A180019(n)+A000120(n))`
-/

namespace A180017.P7258046277438115247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - (A180019 n + A000120 n)

end

end A180017.P7258046277438115247

namespace A180017

/-- `A007953(n)-(A180019(n)+A000120(n))` -/
def P7258046277438115247.Spec : Prop :=
  ∀ n, P7258046277438115247.a n = A180017 n

end A180017

/-! ## A180017.P6734399232868308007

`A056239(A006047(n))-A056239(A001316(n))`
-/

namespace A180017.P6734399232868308007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006047 n).toNat - A056239 (A001316 n).toNat

end

end A180017.P6734399232868308007

namespace A180017

/-- `A056239(A006047(n))-A056239(A001316(n))` -/
def P6734399232868308007.Spec : Prop :=
  ∀ n, P6734399232868308007.a n = A180017 n

end A180017

/-! ## A180017.P12203431757062358973

`A056239(A331279(n))-A056239(A001316(n))`
-/

namespace A180017.P12203431757062358973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat - A056239 (A001316 n).toNat

end

end A180017.P12203431757062358973

namespace A180017

/-- `A056239(A331279(n))-A056239(A001316(n))` -/
def P12203431757062358973.Spec : Prop :=
  ∀ n, P12203431757062358973.a n = A180017 n

end A180017

/-! ## A180017.P5541869729069471001

`A053735(n)-A048881(2*n)`
-/

namespace A180017.P5541869729069471001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A048881 (2 * n)

end

end A180017.P5541869729069471001

namespace A180017

/-- `A053735(n)-A048881(2*n)` -/
def P5541869729069471001.Spec : Prop :=
  ∀ n, P5541869729069471001.a n = A180017 n

end A180017

/-! ## A180017.P380276401739907133

`A053735(n)-A274009(2*n+1)`
-/

namespace A180017.P380276401739907133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A274009 (2 * n + 1)

end

end A180017.P380276401739907133

namespace A180017

/-- `A053735(n)-A274009(2*n+1)` -/
def P380276401739907133.Spec : Prop :=
  ∀ n, P380276401739907133.a n = A180017 n

end A180017

/-!
# A180018: Difference of sums of digits of n in decimal and in binary representation.

The programs for A180018, the canonical program `A180018.P8181294393802451233` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180018 has offset 0).

The definition of A180018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180018.P8181294393802451233

`A007953(n)-A000120(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180018

/-- `A007953(n)-A000120(n)` -/
def P8181294393802451233.Spec : Prop :=
  ∀ n, P8181294393802451233.a n = A180018 n

theorem P8181294393802451233.correct : P8181294393802451233.Spec := by
  intro n
  simp only [A180018]

end A180018

/-! ## A180018.P9763056548070238379

`∑{digits}[n, #]-(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A180018.P9763056548070238379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))

end

end A180018.P9763056548070238379

namespace A180018

/-- `∑{digits}[n, #]-(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P9763056548070238379.Spec : Prop :=
  ∀ n, P9763056548070238379.a n = A180018 n

end A180018

/-! ## A180018.P4047813831212771795

`∑{digits}[n, #]-∑{digits}[A007088(n), #]`
-/

namespace A180018.P4047813831212771795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A180018.P4047813831212771795

namespace A180018

/-- `∑{digits}[n, #]-∑{digits}[A007088(n), #]` -/
def P4047813831212771795.Spec : Prop :=
  ∀ n, P4047813831212771795.a n = A180018 n

end A180018

/-! ## A180018.P10993181675674929428

`A180019(n)+A180017(n)`
-/

namespace A180018.P10993181675674929428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n + A180017 n

end

end A180018.P10993181675674929428

namespace A180018

/-- `A180019(n)+A180017(n)` -/
def P10993181675674929428.Spec : Prop :=
  ∀ n, P10993181675674929428.a n = A180018 n

end A180018

/-! ## A180018.P3906647663483231166

`A011371(n)-A066568(n)`
-/

namespace A180018.P3906647663483231166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A066568 n

end

end A180018.P3906647663483231166

namespace A180018

/-- `A011371(n)-A066568(n)` -/
def P3906647663483231166.Spec : Prop :=
  ∀ n, P3906647663483231166.a n = A180018 n

end A180018

/-! ## A180018.P12519910883697923436

`A062028(n)-A092391(n)`
-/

namespace A180018.P12519910883697923436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A092391 n

end

end A180018.P12519910883697923436

namespace A180018

/-- `A062028(n)-A092391(n)` -/
def P12519910883697923436.Spec : Prop :=
  ∀ n, P12519910883697923436.a n = A180018 n

theorem P12519910883697923436.correct : P12519910883697923436.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P12519910883697923436.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A092391, A092391.P1831081500129819331.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P3353929088792361011

`A007953(n)-log2(A001316(n))`
-/

namespace A180018.P3353929088792361011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007953 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A180018.P3353929088792361011

namespace A180018

/-- `A007953(n)-log2(A001316(n))` -/
def P3353929088792361011.Spec : Prop :=
  ∀ n, P3353929088792361011.a n = (A180018 n : ℝ)

end A180018

/-! ## A180018.P18079911193409331036

`log2(A329562(n))-A000120(n)`
-/

namespace A180018.P18079911193409331036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) - (A000120 n : ℝ)

end

end A180018.P18079911193409331036

namespace A180018

/-- `log2(A329562(n))-A000120(n)` -/
def P18079911193409331036.Spec : Prop :=
  ∀ n, P18079911193409331036.a n = (A180018 n : ℝ)

end A180018

/-! ## A180018.P3845837792496437927

`A007953(n)+A011371(n)-n`
-/

namespace A180018.P3845837792496437927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A011371 n - (n : ℤ))

end

end A180018.P3845837792496437927

namespace A180018

/-- `A007953(n)+A011371(n)-n` -/
def P3845837792496437927.Spec : Prop :=
  ∀ n, P3845837792496437927.a n = A180018 n

end A180018

/-! ## A180018.P5558799823613983432

`A062028(n)-(A000120(n)+n)`
-/

namespace A180018.P5558799823613983432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (A000120 n + (n : ℤ))

end

end A180018.P5558799823613983432

namespace A180018

/-- `A062028(n)-(A000120(n)+n)` -/
def P5558799823613983432.Spec : Prop :=
  ∀ n, P5558799823613983432.a n = A180018 n

theorem P5558799823613983432.correct : P5558799823613983432.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P5558799823613983432.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P3494001986040445014

`n-(A066568(n)+A000120(n))`
-/

namespace A180018.P3494001986040445014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A066568 n + A000120 n)

end

end A180018.P3494001986040445014

namespace A180018

/-- `n-(A066568(n)+A000120(n))` -/
def P3494001986040445014.Spec : Prop :=
  ∀ n, P3494001986040445014.a n = A180018 n

theorem P3494001986040445014.correct : P3494001986040445014.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P3494001986040445014.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A066568, A066568.P9469533663660008085.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P10378737268076854360

`A011371(n)+1-A160941(n+1)`
-/

namespace A180018.P10378737268076854360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (1 - A160941 (n + 1))

end

end A180018.P10378737268076854360

namespace A180018

/-- `A011371(n)+1-A160941(n+1)` -/
def P10378737268076854360.Spec : Prop :=
  ∀ n, P10378737268076854360.a n = A180018 n

end A180018

/-! ## A180018.P16193042197837210953

`A160939(n+1)-A230300(n+1)`
-/

namespace A180018.P16193042197837210953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - A230300 (n + 1)

end

end A180018.P16193042197837210953

namespace A180018

/-- `A160939(n+1)-A230300(n+1)` -/
def P16193042197837210953.Spec : Prop :=
  ∀ n, P16193042197837210953.a n = A180018 n

theorem P16193042197837210953.correct : P16193042197837210953.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P16193042197837210953.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A160939, A160939.P10335950988782502839.a, A230300, A230300.P756127149429480426.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, A062028, A062028.P8420805724104474199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P13014376282532684120

`∑{digits}[n, #]-A001222(A151787(n+1))`
-/

namespace A180018.P13014376282532684120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A001222 (A151787 (n + 1)).toNat

end

end A180018.P13014376282532684120

namespace A180018

/-- `∑{digits}[n, #]-A001222(A151787(n+1))` -/
def P13014376282532684120.Spec : Prop :=
  ∀ n, P13014376282532684120.a n = A180018 n

end A180018

/-! ## A180018.P8248257007471197307

`A061762(n)-(A007954(n)+A000120(n))`
-/

namespace A180018.P8248257007471197307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - (A007954 n + A000120 n)

end

end A180018.P8248257007471197307

namespace A180018

/-- `A061762(n)-(A007954(n)+A000120(n))` -/
def P8248257007471197307.Spec : Prop :=
  ∀ n, P8248257007471197307.a n = A180018 n

theorem P8248257007471197307.correct : P8248257007471197307.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P8248257007471197307.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A007954, A007954.P17322577641810457605.a, A061762, A061762.P2226516995009236848.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, A187844, A187844.P2226367484960758357.f1, A187844.P2226367484960758357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P5816175842738869189

`A007954(n)+A062329(n)-A000120(n)`
-/

namespace A180018.P5816175842738869189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (A062329 n - A000120 n)

end

end A180018.P5816175842738869189

namespace A180018

/-- `A007954(n)+A062329(n)-A000120(n)` -/
def P5816175842738869189.Spec : Prop :=
  ∀ n, P5816175842738869189.a n = A180018 n

end A180018

/-! ## A180018.P6599760239646040157

`A007953(n)+A023416(n)-A070939(n)`
-/

namespace A180018.P6599760239646040157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A023416 n - A070939 n)

end

end A180018.P6599760239646040157

namespace A180018

/-- `A007953(n)+A023416(n)-A070939(n)` -/
def P6599760239646040157.Spec : Prop :=
  ∀ n, P6599760239646040157.a n = A180018 n

theorem P6599760239646040157.correct : P6599760239646040157.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P6599760239646040157.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A023416, A023416.P8124303482289229133.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P14726782235134840673

`A053735(n)+A180019(n)-A000120(n)`
-/

namespace A180018.P14726782235134840673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (A180019 n - A000120 n)

end

end A180018.P14726782235134840673

namespace A180018

/-- `A053735(n)+A180019(n)-A000120(n)` -/
def P14726782235134840673.Spec : Prop :=
  ∀ n, P14726782235134840673.a n = A180018 n

theorem P14726782235134840673.correct : P14726782235134840673.Spec := by
  intro n
  simp only [A180018, Nat.add_sub_cancel, A180018.P14726782235134840673.a, A180018.P8181294393802451233.a, A000120, A000120.P2816527436160941581.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A180019, A180019.P15303784812221257268.a, A005187, A005187.P3874015513960485494.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180018

/-! ## A180018.P2536831979798208047

`A007953(n)+A272666(n)-A008588(n)`
-/

namespace A180018.P2536831979798208047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A272666 n - A008588 n)

end

end A180018.P2536831979798208047

namespace A180018

/-- `A007953(n)+A272666(n)-A008588(n)` -/
def P2536831979798208047.Spec : Prop :=
  ∀ n, P2536831979798208047.a n = A180018 n

end A180018

/-! ## A180018.P4402544748347658005

`A007953(n)-A005811(A341911(n))`
-/

namespace A180018.P4402544748347658005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A005811 (A341911 n).toNat

end

end A180018.P4402544748347658005

namespace A180018

/-- `A007953(n)-A005811(A341911(n))` -/
def P4402544748347658005.Spec : Prop :=
  ∀ n, P4402544748347658005.a n = A180018 n

end A180018

/-!
# A180019: Difference of sums of digits of n in decimal and in ternary representation.

The programs for A180019, the canonical program `A180019.P15303784812221257268` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180019 has offset 0).

The definition of A180019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180019.P15303784812221257268

`A007953(n)-A053735(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180019

/-- `A007953(n)-A053735(n)` -/
def P15303784812221257268.Spec : Prop :=
  ∀ n, P15303784812221257268.a n = A180019 n

theorem P15303784812221257268.correct : P15303784812221257268.Spec := by
  intro n
  simp only [A180019]

end A180019

/-! ## A180019.P8179870541124509558

`A344853(n)-(n-∑{digits}[n, #])`
-/

namespace A180019.P8179870541124509558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A180019.P8179870541124509558

namespace A180019

/-- `A344853(n)-(n-∑{digits}[n, #])` -/
def P8179870541124509558.Spec : Prop :=
  ∀ n, P8179870541124509558.a n = A180019 n

end A180019

/-! ## A180019.P974281145748278938

`2*A054861(n)-(n-∑{digits}[n, #])`
-/

namespace A180019.P974281145748278938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054861 n - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A180019.P974281145748278938

namespace A180019

/-- `2*A054861(n)-(n-∑{digits}[n, #])` -/
def P974281145748278938.Spec : Prop :=
  ∀ n, P974281145748278938.a n = A180019 n

end A180019

/-! ## A180019.P10840458763310240191

`A062028(n)-A230641(n)`
-/

namespace A180019.P10840458763310240191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A230641 n

end

end A180019.P10840458763310240191

namespace A180019

/-- `A062028(n)-A230641(n)` -/
def P10840458763310240191.Spec : Prop :=
  ∀ n, P10840458763310240191.a n = A180019 n

theorem P10840458763310240191.correct : P10840458763310240191.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P10840458763310240191.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A062028, A062028.P8420805724104474199.a, A230641, A230641.P12572480448472300178.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P996892346554547173

`A180018(n)-A180017(n)`
-/

namespace A180019.P996892346554547173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n - A180017 n

end

end A180019.P996892346554547173

namespace A180019

/-- `A180018(n)-A180017(n)` -/
def P996892346554547173.Spec : Prop :=
  ∀ n, P996892346554547173.a n = A180019 n

end A180019

/-! ## A180019.P1830365472285557776

`A344853(n)-A066568(n)`
-/

namespace A180019.P1830365472285557776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n - A066568 n

end

end A180019.P1830365472285557776

namespace A180019

/-- `A344853(n)-A066568(n)` -/
def P1830365472285557776.Spec : Prop :=
  ∀ n, P1830365472285557776.a n = A180019 n

theorem P1830365472285557776.correct : P1830365472285557776.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P1830365472285557776.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A066568, A066568.P9469533663660008085.a, A344853, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P13362975397714244729

`2*A054861(n)-A066568(n)`
-/

namespace A180019.P13362975397714244729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054861 n - A066568 n

end

end A180019.P13362975397714244729

namespace A180019

/-- `2*A054861(n)-A066568(n)` -/
def P13362975397714244729.Spec : Prop :=
  ∀ n, P13362975397714244729.a n = A180019 n

theorem P13362975397714244729.correct : P13362975397714244729.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P13362975397714244729.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, A066568, A066568.P9469533663660008085.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P11622998156937367403

`n-(A066568(n)+A053735(n))`
-/

namespace A180019.P11622998156937367403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A066568 n + A053735 n)

end

end A180019.P11622998156937367403

namespace A180019

/-- `n-(A066568(n)+A053735(n))` -/
def P11622998156937367403.Spec : Prop :=
  ∀ n, P11622998156937367403.a n = A180019 n

theorem P11622998156937367403.correct : P11622998156937367403.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P11622998156937367403.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A066568, A066568.P9469533663660008085.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P14932477225392348361

`A007953(n)+A344853(n)-n`
-/

namespace A180019.P14932477225392348361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A344853 n - (n : ℤ))

end

end A180019.P14932477225392348361

namespace A180019

/-- `A007953(n)+A344853(n)-n` -/
def P14932477225392348361.Spec : Prop :=
  ∀ n, P14932477225392348361.a n = A180019 n

theorem P14932477225392348361.correct : P14932477225392348361.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P14932477225392348361.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A344853, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P7898972061902852556

`2*A054861(n)-(n-A007953(n))`
-/

namespace A180019.P7898972061902852556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054861 n - ((n : ℤ) - A007953 n)

end

end A180019.P7898972061902852556

namespace A180019

/-- `2*A054861(n)-(n-A007953(n))` -/
def P7898972061902852556.Spec : Prop :=
  ∀ n, P7898972061902852556.a n = A180019 n

theorem P7898972061902852556.correct : P7898972061902852556.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P7898972061902852556.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P10206663116391881063

`n+1-A173523(n+1)-A066568(n)`
-/

namespace A180019.P10206663116391881063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173523 (n + 1) - A066568 n

end

end A180019.P10206663116391881063

namespace A180019

/-- `n+1-A173523(n+1)-A066568(n)` -/
def P10206663116391881063.Spec : Prop :=
  ∀ n, P10206663116391881063.a n = A180019 n

theorem P10206663116391881063.correct : P10206663116391881063.Spec := by
  intro n
  simp only [A180019, Nat.add_sub_cancel, A180019.P10206663116391881063.a, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A066568, A066568.P9469533663660008085.a, A173523, A173523.P2383759421144788857.a, A054861, A054861.P6137810495506521191.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180019

/-! ## A180019.P14815631351294880924

`A007953(n)-(A180017(n)+A000120(n))`
-/

namespace A180019.P14815631351294880924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - (A180017 n + A000120 n)

end

end A180019.P14815631351294880924

namespace A180019

/-- `A007953(n)-(A180017(n)+A000120(n))` -/
def P14815631351294880924.Spec : Prop :=
  ∀ n, P14815631351294880924.a n = A180019 n

end A180019

/-! ## A180019.P7944182612282092021

`A344853(n)-A171181(2*n+1)`
-/

namespace A180019.P7944182612282092021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n - A171181 (2 * n + 1)

end

end A180019.P7944182612282092021

namespace A180019

/-- `A344853(n)-A171181(2*n+1)` -/
def P7944182612282092021.Spec : Prop :=
  ∀ n, P7944182612282092021.a n = A180019 n

end A180019

/-!
# A180020: Numbers k such that the relation 1 - d!/((d-i)!d^i) > 1/2 holds for integers d > 2 between i-1 and n+i-1.

The programs for A180020, there is no canonical definition to state claims against.
-/

/-! ## A180020.P7490092085549507093

`floor(atan(n))*Δ[A308699(n)]`
-/

namespace A180020.P7490092085549507093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * (f1 (n + 1) - f1 n)

end

end A180020.P7490092085549507093

/-! ## A180020.P7772040079272762873

`Δ[A308699(round(acot(n)+n))]`
-/

namespace A180020.P7772040079272762873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P7772040079272762873

/-! ## A180020.P5765262677029033937

`Δ[A308699(C(2, n+1)+n)]`
-/

namespace A180020.P5765262677029033937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (Nat.choose 2 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P5765262677029033937

/-! ## A180020.P16487077524112121734

`Δ[A308699(floor(n-atan(n))+2)]`
-/

namespace A180020.P16487077524112121734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P16487077524112121734

/-! ## A180020.P61279219864412052

`Δ[A308699(2-ceil(atan(n))+n)]`
-/

namespace A180020.P61279219864412052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (2 - ⌈Real.arctan (n : ℝ)⌉ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P61279219864412052

/-! ## A180020.P5616548458858416363

`Δ[A308699(floor(2/(n+1)+n))]`
-/

namespace A180020.P5616548458858416363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 ⌊2 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P5616548458858416363

/-! ## A180020.P14234406823628061736

`Δ[abs(A105811(A308699(n)))]`
-/

namespace A180020.P14234406823628061736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105811 (A308699 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180020.P14234406823628061736

/-! ## A180020.P2822536383071691085

`Δ[A308699(n)]-A130706(n)`
-/

namespace A180020.P2822536383071691085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A130706 n

end

end A180020.P2822536383071691085

/-! ## A180020.P14914367307556232338

`Δ[A308699(n)]*A157928(n)`
-/

namespace A180020.P14914367307556232338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A157928 n

end

end A180020.P14914367307556232338

/-! ## A180020.P17156125093258593560

`Δ[A308699(n)]%A000041(2*n)`
-/

namespace A180020.P17156125093258593560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 (2 * n))

end

end A180020.P17156125093258593560

/-!
# A180021: Second differences of sequence A180005.

The programs for A180021, there is no canonical definition to state claims against.
-/

/-! ## A180021.P3901419111827372147

`Δ[Δ[A308699(n+1)]%(n+1)²]`
-/

namespace A180021.P3901419111827372147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180021.P3901419111827372147

/-! ## A180021.P15259615940259041548

`A000038(n)+Δ[Δ[A308699(n+1)]]`
-/

namespace A180021.P15259615940259041548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A180021.P15259615940259041548

/-! ## A180021.P5636835365138961650

`Δ[Δ[A308699(n+1)]*A057427(n)]`
-/

namespace A180021.P5636835365138961650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180021.P5636835365138961650

/-! ## A180021.P13461208980910189437

`A130706(n+1)+Δ[Δ[A308699(n+1)]]`
-/

namespace A180021.P13461208980910189437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1) + (f1 (n + 1) - f1 n)

end

end A180021.P13461208980910189437

/-! ## A180021.P17154808960432893409

`Δ[Δ[A308699(n+1)]*A157928(n+1)]`
-/

namespace A180021.P17154808960432893409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A157928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180021.P17154808960432893409

/-! ## A180021.P7801385091476981848

`Δ[Δ[A308699(n+1)+A289207(2*n)]]`
-/

namespace A180021.P7801385091476981848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 (n + 1) + A289207 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180021.P7801385091476981848

/-! ## A180021.P10551916741002388612

`Δ[A180020(n+2)]`
-/

namespace A180021.P10551916741002388612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180021.P10551916741002388612

/-! ## A180021.P7966334692270245969

`A180020(n+3)-A180020(n+2)`
-/

namespace A180021.P7966334692270245969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180020 (n + 3) - A180020 (n + 2)

end

end A180021.P7966334692270245969

/-!
# A180022: Primes that can be obtained from other primes by interchanging the first and last digits. The source prime and the resulting prime are written consecutively.

The programs for A180022, there is no canonical definition to state claims against.
-/

/-! ## A180022.P7381505743831137487

`A321523(n+9)`
-/

namespace A180022.P7381505743831137487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321523 (n + 9)

end

end A180022.P7381505743831137487

/-!
# A180024: Smallest prime greater than n-th prime having as many ones in binary representation.

The programs for A180024, there is no canonical definition to state claims against.
-/

/-! ## A180024.P6001853352964272110

`A186522(A238749(n+1))`
-/

namespace A180024.P6001853352964272110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186522 (A238749 (n + 1)).toNat

end

end A180024.P6001853352964272110

/-! ## A180024.P6040083079787516200

`A112927(A238749(n+1)/A060351(n))`
-/

namespace A180024.P6040083079787516200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (SequenceMachineLib.roundAway ((A238749 (n + 1) : ℚ) / (A060351 n : ℚ))).toNat

end

end A180024.P6040083079787516200

/-!
# A180025: Prime numbers 3*n-2 such that n, 2*n-1 and 3*n-2 are prime.

The programs for A180025, there is no canonical definition to state claims against.
-/

/-! ## A180025.P527142229430071753

`p?[A340509(n+1)-1]`
-/

namespace A180025.P527142229430071753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180025.P527142229430071753

/-! ## A180025.P11823625903401767562

`3*A174734(n+1)-2`
-/

namespace A180025.P11823625903401767562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A174734 (n + 1) - 2

end

end A180025.P11823625903401767562

/-! ## A180025.P2833071156958825284

`6*A124408(n+1)+1`
-/

namespace A180025.P2833071156958825284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A124408 (n + 1) + 1

end

end A180025.P2833071156958825284

/-! ## A180025.P16253560716313538216

`6*A105652(n+1)+7`
-/

namespace A180025.P16253560716313538216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A105652 (n + 1) + 7

end

end A180025.P16253560716313538216

/-! ## A180025.P14600044404940902545

`p?[floor(A193227(n+1)/2)]`
-/

namespace A180025.P14600044404940902545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193227 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180025.P14600044404940902545

/-!
# A180026: a(n) is the number of arrangements of all divisors of n of the form d_1=n, d_2, d_3, ..., d_tau(n) such that every ratio d_(i+1)/d_i and d_tau(n)/d_1 is prime or 1/prime.

The programs for A180026, there is no canonical definition to state claims against.
-/

/-! ## A180026.P8320620681699939431

`lcm(A056169(n+1), A323439(A338224(n+1)))`
-/

namespace A180026.P8320620681699939431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056169 (n + 1)) (A323439 (A338224 (n + 1)).toNat)

end

end A180026.P8320620681699939431

/-! ## A180026.P15422259532936471579

`A333755(∏{e}[n+1, ceil(2/#)]^∑{e}[n+1, #])`
-/

namespace A180026.P15422259532936471579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 ((∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A180026.P15422259532936471579

/-! ## A180026.P13539578429859020635

`A328615(∏{e}[n+1, ceil(2/#)]^∏{e}[n+1, #+1])`
-/

namespace A180026.P13539578429859020635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 ((∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

end

end A180026.P13539578429859020635

/-! ## A180026.P1676295326031401569

`A329315(∏{p}[n+1, 5%(#+4)])-∏{p}[n+1, C(#%n, #)]`
-/

namespace A180026.P1676295326031401569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (∏ p ∈ Nat.primeFactors (f1 n), 5 % (p + 4)) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℤ)

end

end A180026.P1676295326031401569

/-! ## A180026.P5397557308702087932

`A215462(A139393(n+1))`
-/

namespace A180026.P5397557308702087932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215462 (A139393 (n + 1)).toNat

end

end A180026.P5397557308702087932

/-!
# A180027: Partial sums of A100706.

The programs for A180027, there is no canonical definition to state claims against.
-/

/-! ## A180027.P1566620882958342446

`∑[floor(10*(10^n)²/9)]`
-/

namespace A180027.P1566620882958342446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180027.P1566620882958342446

/-! ## A180027.P11252212049059251035

`a(n-1)+floor(10^(2*n+1)/9)` with `a(0)=1`
-/

namespace A180027.P11252212049059251035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋

end

end A180027.P11252212049059251035

/-! ## A180027.P9459738354803610640

`record[floor(10^n/9)^(n%2)]+a(n-1)` with `a(0)=1`
-/

namespace A180027.P9459738354803610640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A180027.P9459738354803610640

/-! ## A180027.P12180897712557442056

`A104720(2*n)`
-/

namespace A180027.P12180897712557442056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104720 (2 * n)

end

end A180027.P12180897712557442056

/-! ## A180027.P15038554258095234867

`∑[A267867(n)]+n`
-/

namespace A180027.P15038554258095234867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A180027.P15038554258095234867

/-! ## A180027.P432988000625007292

`∑[A069508(2*n)]-5`
-/

namespace A180027.P432988000625007292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069508 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A180027.P432988000625007292

/-! ## A180027.P4306475071317723136

`A100706(n)+a(n-1)` with `a(0)=1`
-/

namespace A180027.P4306475071317723136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100706 n + a (n - 1)

end

end A180027.P4306475071317723136

/-! ## A180027.P178394136795965153

`∑[10^n]+∑[A138148(n)]`
-/

namespace A180027.P178394136795965153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A180027.P178394136795965153

/-! ## A180027.P13921481296515063069

`∑[A332112(n)]-∑[10^n]`
-/

namespace A180027.P13921481296515063069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332112 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A180027.P13921481296515063069

/-! ## A180027.P17127504944861700466

`∑[A002276(2*n+1)]/2`
-/

namespace A180027.P17127504944861700466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A180027.P17127504944861700466

/-!
# A180028: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 + 3*x)/(1 - 6*x - 3*x^2).

The programs for A180028, the canonical program `A180028.P2037309335746590987` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180028 has offset 0).

The definition of A180028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180028.P2037309335746590987

`6*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180028

/-- `6*a(n-1)+3*a(n-2)` -/
def P2037309335746590987.Spec : Prop :=
  ∀ n, (P2037309335746590987.a n : ℤ) = A180028 n

theorem P2037309335746590987.correct : P2037309335746590987.Spec := by
  intro n
  simp only [A180028]

end A180028

/-! ## A180028.P9794842284488851962

`ogf((1+3x)/(1-6x-3x^2))`
-/

namespace A180028.P9794842284488851962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, -3] n

end

end A180028.P9794842284488851962

namespace A180028

/-- `ogf((1+3x)/(1-6x-3x^2))` -/
def P9794842284488851962.Spec : Prop :=
  ∀ n, P9794842284488851962.a n = A180028 n

end A180028

/-! ## A180028.P7528811556181784907

`round(3^(n/2)*A002531(2*n+1))`
-/

namespace A180028.P7528811556181784907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (A002531 (2 * n + 1) : ℝ))

end

end A180028.P7528811556181784907

namespace A180028

/-- `round(3^(n/2)*A002531(2*n+1))` -/
def P7528811556181784907.Spec : Prop :=
  ∀ n, P7528811556181784907.a n = A180028 n

end A180028

/-! ## A180028.P4935043532687174705

`2*A090018(n)-A141041(n)`
-/

namespace A180028.P4935043532687174705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090018 n - A141041 n

end

end A180028.P4935043532687174705

namespace A180028

/-- `2*A090018(n)-A141041(n)` -/
def P4935043532687174705.Spec : Prop :=
  ∀ n, P4935043532687174705.a n = A180028 n

end A180028

/-! ## A180028.P11594872183168002277

`Δ[A141041(n)/2]`
-/

namespace A180028.P11594872183168002277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141041 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180028.P11594872183168002277

namespace A180028

/-- `Δ[A141041(n)/2]` -/
def P11594872183168002277.Spec : Prop :=
  ∀ n, P11594872183168002277.a n = (A180028 n : ℚ)

end A180028

/-! ## A180028.P1015935113413534664

`Δ[A027151(A004273(n))/2]`
-/

namespace A180028.P1015935113413534664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027151 (A004273 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180028.P1015935113413534664

namespace A180028

/-- `Δ[A027151(A004273(n))/2]` -/
def P1015935113413534664.Spec : Prop :=
  ∀ n, P1015935113413534664.a n = (A180028 n : ℚ)

end A180028

/-! ## A180028.P16796932076687410623

`A141041(2*n+1)%Δ[A141041(n)]`
-/

namespace A180028.P16796932076687410623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141041 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A180028.P16796932076687410623

namespace A180028

/-- `A141041(2*n+1)%Δ[A141041(n)]` -/
def P16796932076687410623.Spec : Prop :=
  ∀ n, P16796932076687410623.a n = A180028 n

end A180028

/-!
# A180029: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 + 2*x)/(1 - 6*x - 2*x^2).

The programs for A180029, the canonical program `A180029.P1565344692144437614` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180029 has offset 0).

The definition of A180029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180029.P1565344692144437614

`6*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180029

/-- `6*a(n-1)+2*a(n-2)` -/
def P1565344692144437614.Spec : Prop :=
  ∀ n, (P1565344692144437614.a n : ℤ) = A180029 n

theorem P1565344692144437614.correct : P1565344692144437614.Spec := by
  intro n
  simp only [A180029]

end A180029

/-! ## A180029.P11665114029371272899

`ogf((1+2x)/(1-6x-2x^2))`
-/

namespace A180029.P11665114029371272899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, -2] n

end

end A180029.P11665114029371272899

namespace A180029

/-- `ogf((1+2x)/(1-6x-2x^2))` -/
def P11665114029371272899.Spec : Prop :=
  ∀ n, P11665114029371272899.a n = A180029 n

end A180029

/-! ## A180029.P8324570821811157241

`2*(3-(3*(1-a(n-1))-a(n-2)))` with `a(0)=1, a(1)=8`
-/

namespace A180029.P8324570821811157241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * (3 - (3 * (1 - a (n - 1)) - a (n - 2)))

end

end A180029.P8324570821811157241

namespace A180029

/-- `2*(3-(3*(1-a(n-1))-a(n-2)))` -/
def P8324570821811157241.Spec : Prop :=
  ∀ n, P8324570821811157241.a n = A180029 n

end A180029

/-! ## A180029.P2446998068345123631

`A254660(n)+A135030(n)`
-/

namespace A180029.P2446998068345123631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254660 n + A135030 n

end

end A180029.P2446998068345123631

namespace A180029

/-- `A254660(n)+A135030(n)` -/
def P2446998068345123631.Spec : Prop :=
  ∀ n, P2446998068345123631.a n = A180029 n

end A180029

/-! ## A180029.P5445757998759289564

`A135030(n+1)+2*A135030(n)`
-/

namespace A180029.P5445757998759289564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135030 (n + 1) + 2 * A135030 n

end

end A180029.P5445757998759289564

namespace A180029

/-- `A135030(n+1)+2*A135030(n)` -/
def P5445757998759289564.Spec : Prop :=
  ∀ n, P5445757998759289564.a n = A180029 n

end A180029

/-! ## A180029.P15877204762356065862

`A254660(n)+sqrt(A099276(n)*A131577(n))`
-/

namespace A180029.P15877204762356065862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254660 n : ℝ) + Real.sqrt (A099276 n * A131577 n : ℝ)

end

end A180029.P15877204762356065862

namespace A180029

/-- `A254660(n)+sqrt(A099276(n)*A131577(n))` -/
def P15877204762356065862.Spec : Prop :=
  ∀ n, P15877204762356065862.a n = (A180029 n : ℝ)

end A180029

/-!
# A180030: Number of n-move paths on a 3 X 3 chessboard of a queen starting or ending in a corner or side square.

The programs for A180030, the canonical program `A180030.P4263653287878356020` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180030 has offset 0).

The definition of A180030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180030.P4263653287878356020

`5*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180030

/-- `5*a(n-1)+8*a(n-2)` -/
def P4263653287878356020.Spec : Prop :=
  ∀ n, (P4263653287878356020.a n : ℤ) = A180030 n

theorem P4263653287878356020.correct : P4263653287878356020.Spec := by
  intro n
  simp only [A180030]

end A180030

/-! ## A180030.P13709213984154492429

`ogf((1+x)/(1-5x-8x^2))`
-/

namespace A180030.P13709213984154492429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -8] n

end

end A180030.P13709213984154492429

namespace A180030

/-- `ogf((1+x)/(1-5x-8x^2))` -/
def P13709213984154492429.Spec : Prop :=
  ∀ n, P13709213984154492429.a n = A180030 n

end A180030

/-! ## A180030.P5500270242918615325

`A015544(n+1)+A015544(n)`
-/

namespace A180030.P5500270242918615325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015544 (n + 1) + A015544 n

end

end A180030.P5500270242918615325

namespace A180030

/-- `A015544(n+1)+A015544(n)` -/
def P5500270242918615325.Spec : Prop :=
  ∀ n, P5500270242918615325.a n = A180030 n

end A180030

/-! ## A180030.P8225231865653753548

`A180031(n)-2*A015544(n)`
-/

namespace A180030.P8225231865653753548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180031 n - 2 * A015544 n

end

end A180030.P8225231865653753548

namespace A180030

/-- `A180031(n)-2*A015544(n)` -/
def P8225231865653753548.Spec : Prop :=
  ∀ n, P8225231865653753548.a n = A180030 n

end A180030

/-! ## A180030.P13856857310611560012

`A180031(n+1)/8`
-/

namespace A180030.P13856857310611560012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180031 (n + 1) : ℚ) / 8

end

end A180030.P13856857310611560012

namespace A180030

/-- `A180031(n+1)/8` -/
def P13856857310611560012.Spec : Prop :=
  ∀ n, P13856857310611560012.a n = (A180030 n : ℚ)

end A180030

/-! ## A180030.P16400429555623119091

`Δ[∑[A180031(n)]/8]`
-/

namespace A180030.P16400429555623119091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180031 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180030.P16400429555623119091

namespace A180030

/-- `Δ[∑[A180031(n)]/8]` -/
def P16400429555623119091.Spec : Prop :=
  ∀ n, P16400429555623119091.a n = (A180030 n : ℚ)

end A180030

/-!
# A180031: Number of n-move paths on a 3 X 3 chessboard of a queen starting or ending in the central square.

The programs for A180031, the canonical program `A180031.P12438010097040755857` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180031 has offset 0).

The definition of A180031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180031.P12438010097040755857

`5*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180031

/-- `5*a(n-1)+8*a(n-2)` -/
def P12438010097040755857.Spec : Prop :=
  ∀ n, (P12438010097040755857.a n : ℤ) = A180031 n

theorem P12438010097040755857.correct : P12438010097040755857.Spec := by
  intro n
  simp only [A180031]

end A180031

/-! ## A180031.P18346987272798827413

`ogf((1+3x)/(1-5x-8x^2))`
-/

namespace A180031.P18346987272798827413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -5, -8] n

end

end A180031.P18346987272798827413

namespace A180031

/-- `ogf((1+3x)/(1-5x-8x^2))` -/
def P18346987272798827413.Spec : Prop :=
  ∀ n, P18346987272798827413.a n = A180031 n

end A180031

/-! ## A180031.P17550207708798878134

`A180030(n)+2*A015544(n)`
-/

namespace A180031.P17550207708798878134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180030 n + 2 * A015544 n

end

end A180031.P17550207708798878134

namespace A180031

/-- `A180030(n)+2*A015544(n)` -/
def P17550207708798878134.Spec : Prop :=
  ∀ n, P17550207708798878134.a n = A180031 n

end A180031

/-! ## A180031.P4161871300217658953

`A180030(n)+A278008(n+1)/3`
-/

namespace A180031.P4161871300217658953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180030 n : ℚ) + (A278008 (n + 1) : ℚ) / 3

end

end A180031.P4161871300217658953

namespace A180031

/-- `A180030(n)+A278008(n+1)/3` -/
def P4161871300217658953.Spec : Prop :=
  ∀ n, P4161871300217658953.a n = (A180031 n : ℚ)

end A180031

/-! ## A180031.P16298194495343330676

`Δ[Δ[A015544(n)/3]]`
-/

namespace A180031.P16298194495343330676
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015544 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180031.P16298194495343330676

namespace A180031

/-- `Δ[Δ[A015544(n)/3]]` -/
def P16298194495343330676.Spec : Prop :=
  ∀ n, P16298194495343330676.a n = (A180031 n : ℚ)

end A180031

/-!
# A180032: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1+x)/(1-5*x-7*x^2).

The programs for A180032, the canonical program `A180032.P1749577675658554451` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180032 has offset 0).

The definition of A180032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180032.P1749577675658554451

`5*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180032

/-- `5*a(n-1)+7*a(n-2)` -/
def P1749577675658554451.Spec : Prop :=
  ∀ n, (P1749577675658554451.a n : ℤ) = A180032 n

theorem P1749577675658554451.correct : P1749577675658554451.Spec := by
  intro n
  simp only [A180032]

end A180032

/-! ## A180032.P11310787268797903421

`ogf((1+x)/(1-5x-7x^2))`
-/

namespace A180032.P11310787268797903421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -7] n

end

end A180032.P11310787268797903421

namespace A180032

/-- `ogf((1+x)/(1-5x-7x^2))` -/
def P11310787268797903421.Spec : Prop :=
  ∀ n, P11310787268797903421.a n = A180032 n

end A180032

/-! ## A180032.P16477840393909252774

`A152240(n)-A015541(n)`
-/

namespace A180032.P16477840393909252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152240 n - A015541 n

end

end A180032.P16477840393909252774

namespace A180032

/-- `A152240(n)-A015541(n)` -/
def P16477840393909252774.Spec : Prop :=
  ∀ n, P16477840393909252774.a n = A180032 n

end A180032

/-! ## A180032.P8241588551021860421

`abs(A152239(n))-A015541(n)`
-/

namespace A180032.P8241588551021860421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152239 n| - A015541 n

end

end A180032.P8241588551021860421

namespace A180032

/-- `abs(A152239(n))-A015541(n)` -/
def P8241588551021860421.Spec : Prop :=
  ∀ n, P8241588551021860421.a n = A180032 n

end A180032

/-! ## A180032.P16621025197808366956

`A015541(n+1)+A015541(n)`
-/

namespace A180032.P16621025197808366956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015541 (n + 1) + A015541 n

end

end A180032.P16621025197808366956

namespace A180032

/-- `A015541(n+1)+A015541(n)` -/
def P16621025197808366956.Spec : Prop :=
  ∀ n, P16621025197808366956.a n = A180032 n

end A180032

/-! ## A180032.P12695666795935904229

`A152240(n+1)/7`
-/

namespace A180032.P12695666795935904229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152240 (n + 1) : ℚ) / 7

end

end A180032.P12695666795935904229

namespace A180032

/-- `A152240(n+1)/7` -/
def P12695666795935904229.Spec : Prop :=
  ∀ n, P12695666795935904229.a n = (A180032 n : ℚ)

end A180032

/-!
# A180033: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 + x)/(1 - 5*x - 5*x^2).

The programs for A180033, the canonical program `A180033.P8469766671820775151` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180033 has offset 0).

The definition of A180033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180033.P8469766671820775151

`5*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180033

/-- `5*a(n-1)+5*a(n-2)` -/
def P8469766671820775151.Spec : Prop :=
  ∀ n, (P8469766671820775151.a n : ℤ) = A180033 n

theorem P8469766671820775151.correct : P8469766671820775151.Spec := by
  intro n
  simp only [A180033]

end A180033

/-! ## A180033.P7976460313357408507

`A057088(n+1)/5`
-/

namespace A180033.P7976460313357408507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057088 (n + 1) : ℚ) / 5

end

end A180033.P7976460313357408507

namespace A180033

/-- `A057088(n+1)/5` -/
def P7976460313357408507.Spec : Prop :=
  ∀ n, P7976460313357408507.a n = (A180033 n : ℚ)

end A180033

/-! ## A180033.P17545218748688470142

`ogf((1+x)/(1-5x-5x^2))`
-/

namespace A180033.P17545218748688470142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -5] n

end

end A180033.P17545218748688470142

namespace A180033

/-- `ogf((1+x)/(1-5x-5x^2))` -/
def P17545218748688470142.Spec : Prop :=
  ∀ n, P17545218748688470142.a n = A180033 n

end A180033

/-! ## A180033.P1606492125066504454

`round((3*ϕ+1)*a(n-1))` with `a(0)=1`
-/

namespace A180033.P1606492125066504454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((3 * Real.goldenRatio + 1) * (a (n - 1) : ℝ))

end

end A180033.P1606492125066504454

namespace A180033

/-- `round((3*ϕ+1)*a(n-1))` -/
def P1606492125066504454.Spec : Prop :=
  ∀ n, P1606492125066504454.a n = A180033 n

end A180033

/-! ## A180033.P8218401272572308528

`5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A180033.P8218401272572308528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A180033.P8218401272572308528

namespace A180033

/-- `5*(a(n-1)+a(n-2))` -/
def P8218401272572308528.Spec : Prop :=
  ∀ n, (P8218401272572308528.a n : ℤ) = A180033 n

theorem P8218401272572308528.correct : P8218401272572308528.Spec := by
  intro n
  simp only [A180033, Nat.add_sub_cancel, A180033.P8218401272572308528.a, A180033.P8469766671820775151.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180033

/-! ## A180033.P2937339915941798904

`5*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=6`
-/

namespace A180033.P2937339915941798904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A180033.P2937339915941798904

namespace A180033

/-- `5*(2-(4/2-a(n-1)-a(n-2)))` -/
def P2937339915941798904.Spec : Prop :=
  ∀ n, P2937339915941798904.a n = (A180033 n : ℚ)

end A180033

/-! ## A180033.P2130407852695640328

`A155119(n+1)/4`
-/

namespace A180033.P2130407852695640328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155119 (n + 1) : ℚ) / 4

end

end A180033.P2130407852695640328

namespace A180033

/-- `A155119(n+1)/4` -/
def P2130407852695640328.Spec : Prop :=
  ∀ n, P2130407852695640328.a n = (A180033 n : ℚ)

end A180033

/-! ## A180033.P15906360021718219655

`A123887(n+1)/6`
-/

namespace A180033.P15906360021718219655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123887 (n + 1) : ℚ) / 6

end

end A180033.P15906360021718219655

namespace A180033

/-- `A123887(n+1)/6` -/
def P15906360021718219655.Spec : Prop :=
  ∀ n, P15906360021718219655.a n = (A180033 n : ℚ)

end A180033

/-! ## A180033.P8967141518713382690

`A123887(n+1)-A057088(n+1)`
-/

namespace A180033.P8967141518713382690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123887 (n + 1) - A057088 (n + 1)

end

end A180033.P8967141518713382690

namespace A180033

/-- `A123887(n+1)-A057088(n+1)` -/
def P8967141518713382690.Spec : Prop :=
  ∀ n, P8967141518713382690.a n = A180033 n

end A180033

/-! ## A180033.P9059744856473267810

`A057088(n+1)-A155119(n+1)`
-/

namespace A180033.P9059744856473267810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057088 (n + 1) - A155119 (n + 1)

end

end A180033.P9059744856473267810

namespace A180033

/-- `A057088(n+1)-A155119(n+1)` -/
def P9059744856473267810.Spec : Prop :=
  ∀ n, P9059744856473267810.a n = A180033 n

end A180033

/-!
# A180034: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 - 2*x)/(1 - 6*x + 2*x^2).

The programs for A180034, the canonical program `A180034.P16585728942072949833` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180034 has offset 0).

The definition of A180034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180034.P16585728942072949833

`6*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180034

/-- `6*a(n-1)-2*a(n-2)` -/
def P16585728942072949833.Spec : Prop :=
  ∀ n, P16585728942072949833.a n = A180034 n

theorem P16585728942072949833.correct : P16585728942072949833.Spec := by
  intro n
  simp only [A180034]

end A180034

/-! ## A180034.P16823796574963978075

`ogf((1-2x)/(1-6x+2x^2))`
-/

namespace A180034.P16823796574963978075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 2] n

end

end A180034.P16823796574963978075

namespace A180034

/-- `ogf((1-2x)/(1-6x+2x^2))` -/
def P16823796574963978075.Spec : Prop :=
  ∀ n, P16823796574963978075.a n = A180034 n

end A180034

/-! ## A180034.P11432525680947177673

`A249221(2*(n+1))-4*A249221(2*n+1)`
-/

namespace A180034.P11432525680947177673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 (2 * (n + 1)) - 4 * A249221 (2 * n + 1)

end

end A180034.P11432525680947177673

namespace A180034

/-- `A249221(2*(n+1))-4*A249221(2*n+1)` -/
def P11432525680947177673.Spec : Prop :=
  ∀ n, P11432525680947177673.a n = A180034 n

end A180034

/-! ## A180034.P13175670482128806496

`A154244(n+2)-5*A154244(n+1)`
-/

namespace A180034.P13175670482128806496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (n + 2) - 5 * A154244 (n + 1)

end

end A180034.P13175670482128806496

namespace A180034

/-- `A154244(n+2)-5*A154244(n+1)` -/
def P13175670482128806496.Spec : Prop :=
  ∀ n, P13175670482128806496.a n = A180034 n

end A180034

/-! ## A180034.P6127891113878748627

`A249221(2*n+3)%(5*A249221(2*n+1))`
-/

namespace A180034.P6127891113878748627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249221 (2 * n + 3)) (5 * A249221 (2 * n + 1))

end

end A180034.P6127891113878748627

namespace A180034

/-- `A249221(2*n+3)%(5*A249221(2*n+1))` -/
def P6127891113878748627.Spec : Prop :=
  ∀ n, P6127891113878748627.a n = A180034 n

end A180034

/-! ## A180034.P15601227551544908023

`A010913(n+1)%(A154244(n+1)+A010913(n))`
-/

namespace A180034.P15601227551544908023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010913 (n + 1)) (A154244 (n + 1) + A010913 n)

end

end A180034.P15601227551544908023

namespace A180034

/-- `A010913(n+1)%(A154244(n+1)+A010913(n))` -/
def P15601227551544908023.Spec : Prop :=
  ∀ n, P15601227551544908023.a n = A180034 n

end A180034

/-! ## A180034.P7327718009868252890

`Δ[A010913(n+1)]%A010913(n)`
-/

namespace A180034.P7327718009868252890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010913 n)

end

end A180034.P7327718009868252890

namespace A180034

/-- `Δ[A010913(n+1)]%A010913(n)` -/
def P7327718009868252890.Spec : Prop :=
  ∀ n, P7327718009868252890.a n = A180034 n

end A180034

/-! ## A180034.P1275716061312636382

`(5*A010913(n+1))%A154244(n+2)`
-/

namespace A180034.P1275716061312636382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A010913 (n + 1)) (A154244 (n + 2))

end

end A180034.P1275716061312636382

namespace A180034

/-- `(5*A010913(n+1))%A154244(n+2)` -/
def P1275716061312636382.Spec : Prop :=
  ∀ n, P1275716061312636382.a n = A180034 n

end A180034

/-! ## A180034.P16689858543859324067

`sqrt((A007751(n)+1)*A000079(n))`
-/

namespace A180034.P16689858543859324067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A007751 n + 1) * A000079 n : ℝ)

end

end A180034.P16689858543859324067

namespace A180034

/-- `sqrt((A007751(n)+1)*A000079(n))` -/
def P16689858543859324067.Spec : Prop :=
  ∀ n, P16689858543859324067.a n = (A180034 n : ℝ)

end A180034

/-!
# A180035: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1+x)/(1-5*x-3*x^2).

The programs for A180035, the canonical program `A180035.P10965535951917474191` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180035 has offset 0).

The definition of A180035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180035.P10965535951917474191

`5*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180035

/-- `5*a(n-1)+3*a(n-2)` -/
def P10965535951917474191.Spec : Prop :=
  ∀ n, (P10965535951917474191.a n : ℤ) = A180035 n

theorem P10965535951917474191.correct : P10965535951917474191.Spec := by
  intro n
  simp only [A180035]

end A180035

/-! ## A180035.P5328570150756228640

`A015536(n+1)+A015536(n)`
-/

namespace A180035.P5328570150756228640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 (n + 1) + A015536 n

end

end A180035.P5328570150756228640

namespace A180035

/-- `A015536(n+1)+A015536(n)` -/
def P5328570150756228640.Spec : Prop :=
  ∀ n, P5328570150756228640.a n = A180035 n

end A180035

/-! ## A180035.P5847634615879185794

`ogf((1+x)/(1-5x-3x^2))`
-/

namespace A180035.P5847634615879185794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -3] n

end

end A180035.P5847634615879185794

namespace A180035

/-- `ogf((1+x)/(1-5x-3x^2))` -/
def P5847634615879185794.Spec : Prop :=
  ∀ n, P5847634615879185794.a n = A180035 n

end A180035

/-! ## A180035.P14888641168475414077

`A180036(n)+A106569(n)`
-/

namespace A180035.P14888641168475414077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180036 n + A106569 n

end

end A180035.P14888641168475414077

namespace A180035

/-- `A180036(n)+A106569(n)` -/
def P14888641168475414077.Spec : Prop :=
  ∀ n, P14888641168475414077.a n = A180035 n

end A180035

/-! ## A180035.P11345425220411196963

`Δ[A015536(n)]-(A015536(n)-A106569(n))`
-/

namespace A180035.P11345425220411196963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A015536 n - A106569 n)

end

end A180035.P11345425220411196963

namespace A180035

/-- `Δ[A015536(n)]-(A015536(n)-A106569(n))` -/
def P11345425220411196963.Spec : Prop :=
  ∀ n, P11345425220411196963.a n = A180035 n

end A180035

/-! ## A180035.P11913628581486533054

`A180036(n+1)/3`
-/

namespace A180035.P11913628581486533054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180036 (n + 1) : ℚ) / 3

end

end A180035.P11913628581486533054

namespace A180035

/-- `A180036(n+1)/3` -/
def P11913628581486533054.Spec : Prop :=
  ∀ n, P11913628581486533054.a n = (A180035 n : ℚ)

end A180035

/-! ## A180035.P618308479397539130

`record[A180036(A193739(n))/3]`
-/

namespace A180035.P618308479397539130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180036 (A193739 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180035.P618308479397539130

namespace A180035

/-- `record[A180036(A193739(n))/3]` -/
def P618308479397539130.Spec : Prop :=
  ∀ n, P618308479397539130.a n = (A180035 n : ℚ)

end A180035

/-!
# A180036: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 - 2*x)/(1 - 5*x - 3*x^2).

The programs for A180036, the canonical program `A180036.P15314097193112909886` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180036 has offset 0).

The definition of A180036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180036.P15314097193112909886

`5*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180036

/-- `5*a(n-1)+3*a(n-2)` -/
def P15314097193112909886.Spec : Prop :=
  ∀ n, (P15314097193112909886.a n : ℤ) = A180036 n

theorem P15314097193112909886.correct : P15314097193112909886.Spec := by
  intro n
  simp only [A180036]

end A180036

/-! ## A180036.P3385053806209358542

`ogf((-1+2x)/(-1+5x+3x^2))`
-/

namespace A180036.P3385053806209358542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, -3] n

end

end A180036.P3385053806209358542

namespace A180036

/-- `ogf((-1+2x)/(-1+5x+3x^2))` -/
def P3385053806209358542.Spec : Prop :=
  ∀ n, P3385053806209358542.a n = A180036 n

end A180036

/-! ## A180036.P1603199430796924391

`A180035(n)-A106569(n)`
-/

namespace A180036.P1603199430796924391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180035 n - A106569 n

end

end A180036.P1603199430796924391

namespace A180036

/-- `A180035(n)-A106569(n)` -/
def P1603199430796924391.Spec : Prop :=
  ∀ n, P1603199430796924391.a n = A180036 n

end A180036

/-! ## A180036.P569548095439946677

`Δ[A015536(n)]-A015536(n)`
-/

namespace A180036.P569548095439946677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015536 n

end

end A180036.P569548095439946677

namespace A180036

/-- `Δ[A015536(n)]-A015536(n)` -/
def P569548095439946677.Spec : Prop :=
  ∀ n, P569548095439946677.a n = A180036 n

end A180036

/-! ## A180036.P12546923223762048949

`A111365(n)+2*A015536(n)`
-/

namespace A180036.P12546923223762048949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111365 n + 2 * A015536 n

end

end A180036.P12546923223762048949

namespace A180036

/-- `A111365(n)+2*A015536(n)` -/
def P12546923223762048949.Spec : Prop :=
  ∀ n, P12546923223762048949.a n = A180036 n

end A180036

/-! ## A180036.P4025606270305275329

`A180035(n)-3*A015536(n)`
-/

namespace A180036.P4025606270305275329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180035 n - 3 * A015536 n

end

end A180036.P4025606270305275329

namespace A180036

/-- `A180035(n)-3*A015536(n)` -/
def P4025606270305275329.Spec : Prop :=
  ∀ n, P4025606270305275329.a n = A180036 n

end A180036

/-! ## A180036.P1242649196702675376

`A015536(n+1)-2*A015536(n)`
-/

namespace A180036.P1242649196702675376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 (n + 1) - 2 * A015536 n

end

end A180036.P1242649196702675376

namespace A180036

/-- `A015536(n+1)-2*A015536(n)` -/
def P1242649196702675376.Spec : Prop :=
  ∀ n, P1242649196702675376.a n = A180036 n

end A180036

/-!
# A180037: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1+x)/(1-5*x-2*x^2).

The programs for A180037, the canonical program `A180037.P7575185545648384203` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180037 has offset 0).

The definition of A180037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180037.P7575185545648384203

`5*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180037

/-- `5*a(n-1)+2*a(n-2)` -/
def P7575185545648384203.Spec : Prop :=
  ∀ n, (P7575185545648384203.a n : ℤ) = A180037 n

theorem P7575185545648384203.correct : P7575185545648384203.Spec := by
  intro n
  simp only [A180037]

end A180037

/-! ## A180037.P7579889335599254285

`ogf((1+x)/(1-5x-2x^2))`
-/

namespace A180037.P7579889335599254285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, -2] n

end

end A180037.P7579889335599254285

namespace A180037

/-- `ogf((1+x)/(1-5x-2x^2))` -/
def P7579889335599254285.Spec : Prop :=
  ∀ n, P7579889335599254285.a n = A180037 n

end A180037

/-! ## A180037.P9087261403844316736

`A180038(n+1)/2`
-/

namespace A180037.P9087261403844316736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180038 (n + 1) : ℚ) / 2

end

end A180037.P9087261403844316736

namespace A180037

/-- `A180038(n+1)/2` -/
def P9087261403844316736.Spec : Prop :=
  ∀ n, P9087261403844316736.a n = (A180037 n : ℚ)

end A180037

/-! ## A180037.P13036860691117340208

`Δ[∑[A180038(n)]/2]`
-/

namespace A180037.P13036860691117340208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180037.P13036860691117340208

namespace A180037

/-- `Δ[∑[A180038(n)]/2]` -/
def P13036860691117340208.Spec : Prop :=
  ∀ n, P13036860691117340208.a n = (A180037 n : ℚ)

end A180037

/-! ## A180037.P7708355470487563088

`A015535(n+1)+A015535(n)`
-/

namespace A180037.P7708355470487563088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 (n + 1) + A015535 n

end

end A180037.P7708355470487563088

namespace A180037

/-- `A015535(n+1)+A015535(n)` -/
def P7708355470487563088.Spec : Prop :=
  ∀ n, P7708355470487563088.a n = A180037 n

end A180037

/-! ## A180037.P16052612879161401294

`A124610(n)-(A015535(n)-Δ[A124610(n)])`
-/

namespace A180037.P16052612879161401294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 n - (A015535 n - (f1 (n + 1) - f1 n))

end

end A180037.P16052612879161401294

namespace A180037

/-- `A124610(n)-(A015535(n)-Δ[A124610(n)])` -/
def P16052612879161401294.Spec : Prop :=
  ∀ n, P16052612879161401294.a n = A180037 n

end A180037

/-! ## A180037.P9761933424435491417

`Δ[Δ[A015535(n)/3]]`
-/

namespace A180037.P9761933424435491417
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015535 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180037.P9761933424435491417

namespace A180037

/-- `Δ[Δ[A015535(n)/3]]` -/
def P9761933424435491417.Spec : Prop :=
  ∀ n, P9761933424435491417.a n = (A180037 n : ℚ)

end A180037

/-!
# A180038: Eight white queens and one red queen on a 3 X 3 chessboard. G.f.: (1 - 3*x)/(1 - 5*x - 2*x^2).

The programs for A180038, the canonical program `A180038.P7283956641746454158` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180038 has offset 0).

The definition of A180038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180038.P7283956641746454158

`5*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180038

/-- `5*a(n-1)+2*a(n-2)` -/
def P7283956641746454158.Spec : Prop :=
  ∀ n, (P7283956641746454158.a n : ℤ) = A180038 n

theorem P7283956641746454158.correct : P7283956641746454158.Spec := by
  intro n
  simp only [A180038]

end A180038

/-! ## A180038.P7698503401631391955

`ogf((-1+3x)/(-1+5x+2x^2))`
-/

namespace A180038.P7698503401631391955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5, -2] n

end

end A180038.P7698503401631391955

namespace A180038

/-- `ogf((-1+3x)/(-1+5x+2x^2))` -/
def P7698503401631391955.Spec : Prop :=
  ∀ n, P7698503401631391955.a n = A180038 n

end A180038

/-! ## A180038.P17881517500908331373

`A124610(n)+A015535(n)`
-/

namespace A180038.P17881517500908331373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 n + A015535 n

end

end A180038.P17881517500908331373

namespace A180038

/-- `A124610(n)+A015535(n)` -/
def P17881517500908331373.Spec : Prop :=
  ∀ n, P17881517500908331373.a n = A180038 n

end A180038

/-! ## A180038.P17773614662781015681

`(A327765(n)-A015535(n))/2`
-/

namespace A180038.P17773614662781015681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327765 n - A015535 n : ℚ) / 2

end

end A180038.P17773614662781015681

namespace A180038

/-- `(A327765(n)-A015535(n))/2` -/
def P17773614662781015681.Spec : Prop :=
  ∀ n, P17773614662781015681.a n = (A180038 n : ℚ)

end A180038

/-! ## A180038.P1046703530049994077

`A015535(n+1)-3*A015535(n)`
-/

namespace A180038.P1046703530049994077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 (n + 1) - 3 * A015535 n

end

end A180038.P1046703530049994077

namespace A180038

/-- `A015535(n+1)-3*A015535(n)` -/
def P1046703530049994077.Spec : Prop :=
  ∀ n, P1046703530049994077.a n = A180038 n

end A180038

/-! ## A180038.P8757799644044927097

`∑[A321045(n)%A189746(n+1)]`
-/

namespace A180038.P8757799644044927097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321045 n) (A189746 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180038.P8757799644044927097

namespace A180038

/-- `∑[A321045(n)%A189746(n+1)]` -/
def P8757799644044927097.Spec : Prop :=
  ∀ n, P8757799644044927097.a n = A180038 n

end A180038

/-! ## A180038.P7476792340275760087

`(a(n-1)²-(-2)^(n+1))/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A180038.P7476792340275760087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) ^ 2 - ((-2) ^ (n + 1) : ℚ)) / a (n - 2)

end

end A180038.P7476792340275760087

namespace A180038

/-- `(a(n-1)²-(-2)^(n+1))/a(n-2)` -/
def P7476792340275760087.Spec : Prop :=
  ∀ n, P7476792340275760087.a n = (A180038 n : ℚ)

end A180038

/-!
# A180039: Combinatorial tetrahedral numbers.

The programs for A180039, there is no canonical definition to state claims against.
-/

/-! ## A180039.P8737246904939150927

`∑[floor(10^∑[n+1]/9)]`
-/

namespace A180039.P8737246904939150927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180039.P8737246904939150927

/-! ## A180039.P8455435195128852821

`A000042(∑[n+1])+a(n-1)` with `a(0)=1`
-/

namespace A180039.P8455435195128852821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A180039.P8455435195128852821

/-! ## A180039.P3805015168316839292

`A290233((n+1)²+n)+a(n-1)` with `a(0)=1`
-/

namespace A180039.P3805015168316839292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290233 ((n + 1) ^ 2 + n) + a (n - 1)

end

end A180039.P3805015168316839292

/-! ## A180039.P8459794862212856593

`A098129(n+1)+A323426(n+1)-A300517(n+1)`
-/

namespace A180039.P8459794862212856593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098129 (n + 1) + (A323426 (n + 1) - A300517 (n + 1))

end

end A180039.P8459794862212856593

/-!
# A180040: Record values in A033273.

The programs for A180040, there is no canonical definition to state claims against.
-/

/-! ## A180040.P10972764193004419306

`A033273(A059992(n+1))`
-/

namespace A180040.P10972764193004419306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A059992 (n + 1)).toNat

end

end A180040.P10972764193004419306

/-! ## A180040.P657353353483822897

`record[A146288(n+1)-A061394(n+1)]`
-/

namespace A180040.P657353353483822897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1) - A061394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180040.P657353353483822897

/-! ## A180040.P16559121885697506697

`record[A033273(A002093(n+1))]`
-/

namespace A180040.P16559121885697506697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A002093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180040.P16559121885697506697

/-! ## A180040.P17315136901271008455

`record[A033273(A025487(n+1))]`
-/

namespace A180040.P17315136901271008455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180040.P17315136901271008455

/-! ## A180040.P15600402878609950983

`record[A033273(A055932(n+1))]`
-/

namespace A180040.P15600402878609950983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180040.P15600402878609950983

/-!
# A180041: Number of Goldbach partitions of (2n)^n.

The programs for A180041, there is no canonical definition to state claims against.
-/

/-! ## A180041.P10467757744500346334

`A224714(A056451(∑[n]))`
-/

namespace A180041.P10467757744500346334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224714 (A056451 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A180041.P10467757744500346334

/-!
# A180043: The number of isomorphism classes of Szasz (uniquely non-associative) groupoids of order n.

The programs for A180043, there is no canonical definition to state claims against.
-/

/-! ## A180043.P9090598533829091574

`n*A292944(A068085(n+1))`
-/

namespace A180043.P9090598533829091574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292944 (A068085 (n + 1)).toNat

end

end A180043.P9090598533829091574

/-!
# A180046: a(n+1) = a(n-3) + a(n-2) - a(n-1) + a(n) starting with 1, 2, 3, 4.

The programs for A180046, the canonical program `A180046.P17850825862577235186` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180046 has offset 1).

The definition of A180046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180046.P13810247340031989253

`ogf((1+x+2x^2+2x^3)/(1-x+x^2-x^3-x^4))`
-/

namespace A180046.P13810247340031989253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 2] [1, -1, 1, -1, -1] n

end

end A180046.P13810247340031989253

namespace A180046

/-- `ogf((1+x+2x^2+2x^3)/(1-x+x^2-x^3-x^4))` -/
def P13810247340031989253.Spec : Prop :=
  ∀ n, P13810247340031989253.a n = A180046 (n + 1)

end A180046

/-! ## A180046.P17850825862577235186

`a(n-5)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180046

/-- `a(n-5)+2*a(n-4)` -/
def P17850825862577235186.Spec : Prop :=
  ∀ n, (P17850825862577235186.a n : ℤ) = A180046 (n + 1)

theorem P17850825862577235186.correct : P17850825862577235186.Spec := by
  intro n
  simp only [A180046, Nat.add_sub_cancel]

end A180046

/-! ## A180046.P11693273071384566454

`a(n-4)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=4`
-/

namespace A180046.P11693273071384566454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 4] fun n a =>
  a (n - 4) + (a (n - 4) + a (n - 5))

end

end A180046.P11693273071384566454

namespace A180046

/-- `a(n-4)+a(n-4)+a(n-5)` -/
def P11693273071384566454.Spec : Prop :=
  ∀ n, (P11693273071384566454.a n : ℤ) = A180046 (n + 1)

end A180046

/-! ## A180046.P6646871343468729476

`a(n-1)-(a(n-2)-a(n-3)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A180046.P6646871343468729476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) - a (n - 4))

end

end A180046.P6646871343468729476

namespace A180046

/-- `a(n-1)-(a(n-2)-a(n-3)-a(n-4))` -/
def P6646871343468729476.Spec : Prop :=
  ∀ n, P6646871343468729476.a n = A180046 (n + 1)

end A180046

/-! ## A180046.P4281925970168543306

`A343885(n+4)+Δ[A343885(n+1)]`
-/

namespace A180046.P4281925970168543306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343885 (n + 4) + (f1 (n + 1) - f1 n)

end

end A180046.P4281925970168543306

namespace A180046

/-- `A343885(n+4)+Δ[A343885(n+1)]` -/
def P4281925970168543306.Spec : Prop :=
  ∀ n, P4281925970168543306.a n = A180046 (n + 1)

end A180046

/-!
# A180047: Coefficient triangle of the numerators of the (n-th convergents to) the continued fraction w/(1 + w/(2 + w/(3 + w/(...)))).

The programs for A180047, there is no canonical definition to state claims against.
-/

/-! ## A180047.P6141789278441128041

`A330609(n+1)`
-/

namespace A180047.P6141789278441128041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 (n + 1)

end

end A180047.P6141789278441128041

/-! ## A180047.P12222349162305377678

`∑[Δ[A330609(n)]%(2^n)]`
-/

namespace A180047.P12222349162305377678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180047.P12222349162305377678

/-! ## A180047.P5299388257857643694

`A271703(A091018(n+1))`
-/

namespace A180047.P5299388257857643694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A091018 (n + 1)).toNat

end

end A180047.P5299388257857643694

/-! ## A180047.P15428698707531717364

`A271703(A056536(n+2)-1)`
-/

namespace A180047.P15428698707531717364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A056536 (n + 2) - 1).toNat

end

end A180047.P15428698707531717364

/-! ## A180047.P1580577280366671170

`A330609(n)-Δ[-A330609(n)]`
-/

namespace A180047.P1580577280366671170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A330609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 n - (f1 (n + 1) - f1 n)

end

end A180047.P1580577280366671170

/-! ## A180047.P16050158734373725835

`∑[Δ[A330609(n)]*A057427(n)]`
-/

namespace A180047.P16050158734373725835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180047.P16050158734373725835

/-! ## A180047.P4187872141247344835

`∑[Δ[A330609(n)]*A178334(n)]`
-/

namespace A180047.P4187872141247344835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180047.P4187872141247344835

/-! ## A180047.P2913550533339796992

`A330609(A029579(2*n))%(2^n)`
-/

namespace A180047.P2913550533339796992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330609 (A029579 (2 * n)).toNat) (2 ^ n : ℤ)

end

end A180047.P2913550533339796992

/-! ## A180047.P7811759162249266452

`gcd(A000038(n+1), A111596(A091018(n+1)))`
-/

namespace A180047.P7811759162249266452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A111596 (A091018 (n + 1)).toNat)

end

end A180047.P7811759162249266452

/-! ## A180047.P12813676514369209484

`lcm(A011973(n+1), A111596(A091018(n+1)))`
-/

namespace A180047.P12813676514369209484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011973 (n + 1)) (A111596 (A091018 (n + 1)).toNat)

end

end A180047.P12813676514369209484

/-!
# A180048: Coefficient triangle of the denominators of the (n-th convergents to) the continued fraction 1/(w+2/(w+3/(w+4/... . Conjectured to equal unsigned version of A137286.

The programs for A180048, the canonical program `A180048.P16246699920453546948` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180048 has offset 0).

The definition of A180048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180048.P16246699920453546948

`T(n-1,k-1)+row(n)*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180048

/-- `T(n-1,k-1)+row(n)*T(n-2,k)` -/
def P16246699920453546948.Spec : Prop :=
  ∀ n, (P16246699920453546948.a n : ℤ) = A180048 n

theorem P16246699920453546948.correct : P16246699920453546948.Spec := by
  intro n
  simp only [A180048]

end A180048

/-! ## A180048.P2560463200204276897

`lcm(A230698(n), A369736(n))`
-/

namespace A180048.P2560463200204276897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A230698 n) (A369736 n)

end

end A180048.P2560463200204276897

namespace A180048

/-- `lcm(A230698(n), A369736(n))` -/
def P2560463200204276897.Spec : Prop :=
  ∀ n, (P2560463200204276897.a n : ℤ) = A180048 n

end A180048

/-! ## A180048.P9822858218912405753

`A128174(n+1)*A230698(n)`
-/

namespace A180048.P9822858218912405753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A230698 n

end

end A180048.P9822858218912405753

namespace A180048

/-- `A128174(n+1)*A230698(n)` -/
def P9822858218912405753.Spec : Prop :=
  ∀ n, P9822858218912405753.a n = A180048 n

end A180048

/-! ## A180048.P10702354020262959137

`and(1, A055461(n+1))*A230698(n)`
-/

namespace A180048.P10702354020262959137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055461 (n + 1)) * A230698 n

end

end A180048.P10702354020262959137

namespace A180048

/-- `and(1, A055461(n+1))*A230698(n)` -/
def P10702354020262959137.Spec : Prop :=
  ∀ n, P10702354020262959137.a n = A180048 n

end A180048

/-! ## A180048.P10012805585696549666

`and(1, A064801(n+1))*A230698(n)`
-/

namespace A180048.P10012805585696549666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064801 (n + 1)) * A230698 n

end

end A180048.P10012805585696549666

namespace A180048

/-- `and(1, A064801(n+1))*A230698(n)` -/
def P10012805585696549666.Spec : Prop :=
  ∀ n, P10012805585696549666.a n = A180048 n

end A180048

/-! ## A180048.P280501614526066495

`A059841(A025581(n))*A230698(n)`
-/

namespace A180048.P280501614526066495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A025581 n).toNat * A230698 n

end

end A180048.P280501614526066495

namespace A180048

/-- `A059841(A025581(n))*A230698(n)` -/
def P280501614526066495.Spec : Prop :=
  ∀ n, P280501614526066495.a n = A180048 n

end A180048

/-! ## A180048.P9224904228138501610

`A000035(A004736(n+1))*A230698(n)`
-/

namespace A180048.P9224904228138501610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (n + 1)).toNat * A230698 n

end

end A180048.P9224904228138501610

namespace A180048

/-- `A000035(A004736(n+1))*A230698(n)` -/
def P9224904228138501610.Spec : Prop :=
  ∀ n, P9224904228138501610.a n = A180048 n

end A180048

/-! ## A180048.P17714795123695607521

`A000035(A094727(n+1))*A230698(n)`
-/

namespace A180048.P17714795123695607521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A094727 (n + 1)).toNat * A230698 n

end

end A180048.P17714795123695607521

namespace A180048

/-- `A000035(A094727(n+1))*A230698(n)` -/
def P17714795123695607521.Spec : Prop :=
  ∀ n, P17714795123695607521.a n = A180048 n

end A180048

/-! ## A180048.P5840660788854258140

`A230698(n)%(A225750(n)*A230698(n))`
-/

namespace A180048.P5840660788854258140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 n) (A225750 n * A230698 n)

end

end A180048.P5840660788854258140

namespace A180048

/-- `A230698(n)%(A225750(n)*A230698(n))` -/
def P5840660788854258140.Spec : Prop :=
  ∀ n, P5840660788854258140.a n = A180048 n

end A180048

/-! ## A180048.P15744419156704830670

`A000035(A154684(n+1))*A230698(n)`
-/

namespace A180048.P15744419156704830670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A154684 (n + 1)).toNat * A230698 n

end

end A180048.P15744419156704830670

namespace A180048

/-- `A000035(A154684(n+1))*A230698(n)` -/
def P15744419156704830670.Spec : Prop :=
  ∀ n, P15744419156704830670.a n = A180048 n

end A180048

/-! ## A180048.P14592268653861655469

`A230698(n)%A158187(A053121(n))`
-/

namespace A180048.P14592268653861655469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 n) (A158187 (A053121 n).toNat)

end

end A180048.P14592268653861655469

namespace A180048

/-- `A230698(n)%A158187(A053121(n))` -/
def P14592268653861655469.Spec : Prop :=
  ∀ n, P14592268653861655469.a n = A180048 n

end A180048

/-! ## A180048.P14298414372582903968

`A010052(A130321(n))*A230698(n)`
-/

namespace A180048.P14298414372582903968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A130321 n).toNat * A230698 n

end

end A180048.P14298414372582903968

namespace A180048

/-- `A010052(A130321(n))*A230698(n)` -/
def P14298414372582903968.Spec : Prop :=
  ∀ n, P14298414372582903968.a n = A180048 n

end A180048

/-!
# A180049: Coefficient triangle of the numerators of the (n-th convergents to) the continued fraction 1/(w+2/(w+3/(w+4/... .

The programs for A180049, there is no canonical definition to state claims against.
-/

/-! ## A180049.P15905693433189275031

`T(n-1,k-1)+(row(n)+1)*T(n-2,k)` with `a(0)=1`
-/

namespace A180049.P15905693433189275031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triUp2 a n

end

end A180049.P15905693433189275031

/-! ## A180049.P14949477177801664371

`comp[∑[4*n]]%2*A248809(n)`
-/

namespace A180049.P14949477177801664371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A248809 n

end

end A180049.P14949477177801664371

/-! ## A180049.P6143170598624544569

`lcm(A248809(n), A369736(n))`
-/

namespace A180049.P6143170598624544569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248809 n) (A369736 n)

end

end A180049.P6143170598624544569

/-! ## A180049.P4180155396326718190

`and(-A097807(n), A248809(n))`
-/

namespace A180049.P4180155396326718190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A097807 n) (A248809 n)

end

end A180049.P4180155396326718190

/-! ## A180049.P11454140132196348850

`A128174(n+1)*A248809(n)`
-/

namespace A180049.P11454140132196348850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A248809 n

end

end A180049.P11454140132196348850

/-! ## A180049.P13963818333716126989

`and(A097807(n+1), A248809(n))`
-/

namespace A180049.P13963818333716126989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097807 (n + 1)) (A248809 n)

end

end A180049.P13963818333716126989

/-! ## A180049.P3107646055389399904

`(2-gcd(2, comp[∑[4*n]]))*A230698(A007401(n+1))`
-/

namespace A180049.P3107646055389399904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * A230698 (A007401 (n + 1)).toNat

end

end A180049.P3107646055389399904

/-! ## A180049.P18012293222022336988

`A059841(A025581(n))*A248809(n)`
-/

namespace A180049.P18012293222022336988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A025581 n).toNat * A248809 n

end

end A180049.P18012293222022336988

/-! ## A180049.P4590998159894985409

`A000035(A101492(n))*A248809(n)`
-/

namespace A180049.P4590998159894985409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A101492 n).toNat * A248809 n

end

end A180049.P4590998159894985409

/-! ## A180049.P10298537245011761603

`A059841(A051933(n))*A248809(n)`
-/

namespace A180049.P10298537245011761603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A051933 n).toNat * A248809 n

end

end A180049.P10298537245011761603

/-!
# A180052: Partial sums of A180039.

The programs for A180052, there is no canonical definition to state claims against.
-/

/-! ## A180052.P8104815251994405191

`∑[A180039(n+1)]`
-/

namespace A180052.P8104815251994405191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180052.P8104815251994405191

/-! ## A180052.P10811424424612586881

`∑[∑[A002275(∑[n+1])]]`
-/

namespace A180052.P10811424424612586881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180052.P10811424424612586881

/-! ## A180052.P14620664067804545368

`∑[∑[A000042(A025747(n))]]`
-/

namespace A180052.P14620664067804545368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A025747 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180052.P14620664067804545368

/-! ## A180052.P11673354137088429132

`∑[∑[A290680(A000096(n))]]`
-/

namespace A180052.P11673354137088429132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290680 (A000096 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180052.P11673354137088429132

/-! ## A180052.P14649165704037327589

`∑[∑[A000042(A000096(n)+1)]]`
-/

namespace A180052.P14649165704037327589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000096 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180052.P14649165704037327589

/-!
# A180053: a(1)=1, a(2)=101, a(n) = 1001*a(n-1) for n > 2.

The programs for A180053, there is no canonical definition to state claims against.
-/

/-! ## A180053.P14688953354732924452

`a(n-1)*A108787(A107975(and(4, a(n-1))+1)+1)` with `a(0)=1`
-/

namespace A180053.P14688953354732924452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A108787 (A107975 (Int.land 4 (a (n - 1)) + 1).toNat + 1).toNat

end

end A180053.P14688953354732924452

/-!
# A180054: In binary expansion, number of 1's in 3n is less than in n.

The programs for A180054, the canonical program `A180054.P16889925413695154586` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180054 has offset 1).

The definition of A180054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180054.P16889925413695154586

`lt[A001316(3*n), 2*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A180054

/-- `lt[A001316(3*n), 2*a(and(n, n-1))]` -/
def P16889925413695154586.Spec : Prop :=
  ∀ n, (P16889925413695154586.a n : ℤ) = A180054 (n + 1)

theorem P16889925413695154586.correct : P16889925413695154586.Spec := by
  intro n
  simp only [A180054, Nat.add_sub_cancel]

end A180054

/-! ## A180054.P13249380293746749516

`lt[A001316(3*n), A001316(n)]`
-/

namespace A180054.P13249380293746749516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P13249380293746749516

namespace A180054

/-- `lt[A001316(3*n), A001316(n)]` -/
def P13249380293746749516.Spec : Prop :=
  ∀ n, (P13249380293746749516.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P14524457769446718114

`eq[1, A159885(A008574(n))]`
-/

namespace A180054.P14524457769446718114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159885 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180054.P14524457769446718114

namespace A180054

/-- `eq[1, A159885(A008574(n))]` -/
def P14524457769446718114.Spec : Prop :=
  ∀ n, (P14524457769446718114.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P1850344516355287325

`eq[A134660(n)%A001316(n), A134660(n)]`
-/

namespace A180054.P1850344516355287325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134660 n) (A001316 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180054.P1850344516355287325

namespace A180054

/-- `eq[A134660(n)%A001316(n), A134660(n)]` -/
def P1850344516355287325.Spec : Prop :=
  ∀ n, (P1850344516355287325.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P1113536141063708003

`lt[A102377(A006257(3*n)), A102377(n)]`
-/

namespace A180054.P1113536141063708003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 (A006257 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P1113536141063708003

namespace A180054

/-- `lt[A102377(A006257(3*n)), A102377(n)]` -/
def P1113536141063708003.Spec : Prop :=
  ∀ n, (P1113536141063708003.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P5489015164744851798

`lt[A000120(3*n), A000120(n)]`
-/

namespace A180054.P5489015164744851798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P5489015164744851798

namespace A180054

/-- `lt[A000120(3*n), A000120(n)]` -/
def P5489015164744851798.Spec : Prop :=
  ∀ n, (P5489015164744851798.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P14116150395392330631

`lt[A048883(3*n), A048883(n)]`
-/

namespace A180054.P14116150395392330631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P14116150395392330631

namespace A180054

/-- `lt[A048883(3*n), A048883(n)]` -/
def P14116150395392330631.Spec : Prop :=
  ∀ n, (P14116150395392330631.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P7582166656104937428

`lt[A071044(3*n), A071044(n)]`
-/

namespace A180054.P7582166656104937428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P7582166656104937428

namespace A180054

/-- `lt[A071044(3*n), A071044(n)]` -/
def P7582166656104937428.Spec : Prop :=
  ∀ n, (P7582166656104937428.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P14191080435245548327

`lt[A088512(3*n), A088512(n)]`
-/

namespace A180054.P14191080435245548327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P14191080435245548327

namespace A180054

/-- `lt[A088512(3*n), A088512(n)]` -/
def P14191080435245548327.Spec : Prop :=
  ∀ n, (P14191080435245548327.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P12301509261665278419

`lt[A102377(3*n), A102377(n)]`
-/

namespace A180054.P12301509261665278419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P12301509261665278419

namespace A180054

/-- `lt[A102377(3*n), A102377(n)]` -/
def P12301509261665278419.Spec : Prop :=
  ∀ n, (P12301509261665278419.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P5407075679675820635

`lt[A131136(3*n), A131136(n)]`
-/

namespace A180054.P5407075679675820635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P5407075679675820635

namespace A180054

/-- `lt[A131136(3*n), A131136(n)]` -/
def P5407075679675820635.Spec : Prop :=
  ∀ n, (P5407075679675820635.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P4816044837511537937

`lt[A162784(3*n), A162784(n)]`
-/

namespace A180054.P4816044837511537937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P4816044837511537937

namespace A180054

/-- `lt[A162784(3*n), A162784(n)]` -/
def P4816044837511537937.Spec : Prop :=
  ∀ n, (P4816044837511537937.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P11664789735092599415

`lt[A180017(n), A180017(3*n)]`
-/

namespace A180054.P11664789735092599415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P11664789735092599415

namespace A180054

/-- `lt[A180017(n), A180017(3*n)]` -/
def P11664789735092599415.Spec : Prop :=
  ∀ n, (P11664789735092599415.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P6801481658589134872

`lt[A295559(3*n), A295559(n)]`
-/

namespace A180054.P6801481658589134872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P6801481658589134872

namespace A180054

/-- `lt[A295559(3*n), A295559(n)]` -/
def P6801481658589134872.Spec : Prop :=
  ∀ n, (P6801481658589134872.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P4656640137887227505

`lt[A151712(A028310(3*n)), A151712(n)]`
-/

namespace A180054.P4656640137887227505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 (A028310 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P4656640137887227505

namespace A180054

/-- `lt[A151712(A028310(3*n)), A151712(n)]` -/
def P4656640137887227505.Spec : Prop :=
  ∀ n, (P4656640137887227505.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P435588662625305476

`lt[A071051(A004277(n)+n), A071051(n)]`
-/

namespace A180054.P435588662625305476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 (A004277 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P435588662625305476

namespace A180054

/-- `lt[A071051(A004277(n)+n), A071051(n)]` -/
def P435588662625305476.Spec : Prop :=
  ∀ n, (P435588662625305476.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P14011424174990736744

`lt[A151712(A004277(n)+n), A151712(n)]`
-/

namespace A180054.P14011424174990736744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 (A004277 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P14011424174990736744

namespace A180054

/-- `lt[A151712(A004277(n)+n), A151712(n)]` -/
def P14011424174990736744.Spec : Prop :=
  ∀ n, (P14011424174990736744.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P2281672837507977894

`eq[A102376(3*n)%A102376(n), A102376(3*n)]`
-/

namespace A180054.P2281672837507977894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102376 (3 * n)) (A102376 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180054.P2281672837507977894

namespace A180054

/-- `eq[A102376(3*n)%A102376(n), A102376(3*n)]` -/
def P2281672837507977894.Spec : Prop :=
  ∀ n, (P2281672837507977894.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P3845854734095789507

`eq[A105321(3*n)%A105321(n), A105321(3*n)]`
-/

namespace A180054.P3845854734095789507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105321 (3 * n)) (A105321 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180054.P3845854734095789507

namespace A180054

/-- `eq[A105321(3*n)%A105321(n), A105321(3*n)]` -/
def P3845854734095789507.Spec : Prop :=
  ∀ n, (P3845854734095789507.a n : ℤ) = A180054 (n + 1)

end A180054

/-! ## A180054.P1758699640035223750

`lt[A324467(3*n), A324467(n)]`
-/

namespace A180054.P1758699640035223750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180054.P1758699640035223750

namespace A180054

/-- `lt[A324467(3*n), A324467(n)]` -/
def P1758699640035223750.Spec : Prop :=
  ∀ n, (P1758699640035223750.a n : ℤ) = A180054 (n + 1)

end A180054

/-!
# A180055: Numbers k such that in binary expansion, the number of 1's in 5*k is less than the number of 1's in k.

The programs for A180055, the canonical program `A180055.P17108974151974231138` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180055 has offset 1).

The definition of A180055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180055.P17108974151974231138

`lt[A001316(5*n), A001316(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A180055

/-- `lt[A001316(5*n), A001316(n)]` -/
def P17108974151974231138.Spec : Prop :=
  ∀ n, (P17108974151974231138.a n : ℤ) = A180055 (n + 1)

theorem P17108974151974231138.correct : P17108974151974231138.Spec := by
  intro n
  simp only [A180055, Nat.add_sub_cancel]

end A180055

/-! ## A180055.P8390369513705118571

`lt[A060632(A008706(n)), A060632(n)]`
-/

namespace A180055.P8390369513705118571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P8390369513705118571

namespace A180055

/-- `lt[A060632(A008706(n)), A060632(n)]` -/
def P8390369513705118571.Spec : Prop :=
  ∀ n, (P8390369513705118571.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P16111789041630812370

`lt[A000120(5*n), A000120(n)]`
-/

namespace A180055.P16111789041630812370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P16111789041630812370

namespace A180055

/-- `lt[A000120(5*n), A000120(n)]` -/
def P16111789041630812370.Spec : Prop :=
  ∀ n, (P16111789041630812370.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P6914400282996857350

`lt[A102376(5*n), A102376(n)]`
-/

namespace A180055.P6914400282996857350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P6914400282996857350

namespace A180055

/-- `lt[A102376(5*n), A102376(n)]` -/
def P6914400282996857350.Spec : Prop :=
  ∀ n, (P6914400282996857350.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P10066440701950310365

`eq[A105321(5*n)%A105321(n), A105321(5*n)]`
-/

namespace A180055.P10066440701950310365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105321 (5 * n)) (A105321 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180055.P10066440701950310365

namespace A180055

/-- `eq[A105321(5*n)%A105321(n), A105321(5*n)]` -/
def P10066440701950310365.Spec : Prop :=
  ∀ n, (P10066440701950310365.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P12027603058137628901

`lt[A038573(5*n), A038573(n)]`
-/

namespace A180055.P12027603058137628901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P12027603058137628901

namespace A180055

/-- `lt[A038573(5*n), A038573(n)]` -/
def P12027603058137628901.Spec : Prop :=
  ∀ n, (P12027603058137628901.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P7835049085018318125

`lt[A102377(5*n), A102377(n)]`
-/

namespace A180055.P7835049085018318125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P7835049085018318125

namespace A180055

/-- `lt[A102377(5*n), A102377(n)]` -/
def P7835049085018318125.Spec : Prop :=
  ∀ n, (P7835049085018318125.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P14868890284738093516

`lt[A088512(A008706(n)), A088512(n)]`
-/

namespace A180055.P14868890284738093516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P14868890284738093516

namespace A180055

/-- `lt[A088512(A008706(n)), A088512(n)]` -/
def P14868890284738093516.Spec : Prop :=
  ∀ n, (P14868890284738093516.a n : ℤ) = A180055 (n + 1)

end A180055

/-! ## A180055.P9349241247888981878

`lt[A105321(10*n), A105321(n)]`
-/

namespace A180055.P9349241247888981878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P9349241247888981878

namespace A180055

/-- `lt[A105321(10*n), A105321(n)]` -/
def P9349241247888981878.Spec : Prop :=
  ∀ n, (P9349241247888981878.a n : ℤ) = A180055 (n + 1)

end A180055

/-!
# A180056: The number of permutations of {1,2,...,2n} with n ascents.

The programs for A180056, there is no canonical definition to state claims against.
-/

/-! ## A180056.P12657163164773411518

`ceil(A177042(n)/2)`
-/

namespace A180056.P12657163164773411518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177042 n : ℚ) / 2⌉

end

end A180056.P12657163164773411518

/-! ## A180056.P16071906376247395626

`A123125(∑[4*n])`
-/

namespace A180056.P16071906376247395626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180056.P16071906376247395626

/-! ## A180056.P5555789511116618958

`A173018(∑[4*n])`
-/

namespace A180056.P5555789511116618958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180056.P5555789511116618958

/-! ## A180056.P16725106975416974885

`A008292(2*n²+1)`
-/

namespace A180056.P16725106975416974885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (2 * n ^ 2 + 1)

end

end A180056.P16725106975416974885

/-! ## A180056.P16726830867327623045

`A014467(A002061(n))`
-/

namespace A180056.P16726830867327623045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (A002061 n).toNat

end

end A180056.P16726830867327623045

/-!
# A180057: The LCM of the n-th row of the triangle of Eulerian numbers, A008292.

The programs for A180057, there is no canonical definition to state claims against.
-/

/-! ## A180057.P15811368358616442966

`A373746(A356617(n+1))`
-/

namespace A180057.P15811368358616442966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373746 (A356617 (n + 1)).toNat

end

end A180057.P15811368358616442966

/-! ## A180057.P8644285618519136456

`A222371(or(n, A349819(n)))`
-/

namespace A180057.P8644285618519136456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (Int.lor (n : ℤ) (A349819 n)).toNat

end

end A180057.P8644285618519136456

/-!
# A180060: a(n) = 2^(2^n mod n) mod n.

The programs for A180060, the canonical program `A180060.P5928127101775026903` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180060 has offset 1).

The definition of A180060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^((2^(n+1))%(n+1)))%(n+1)` (program `A180060.P5928127101775026903`, by `A180060.P5928127101775026903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180060.P3766137158224784385

`(2^A015910(n+1))%(n+1)`
-/

namespace A180060.P3766137158224784385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A015910 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A180060.P3766137158224784385

namespace A180060

/-- `(2^A015910(n+1))%(n+1)` -/
def P3766137158224784385.Spec : Prop :=
  ∀ n, P3766137158224784385.a n = A180060 (n + 1)

end A180060

/-! ## A180060.P5928127101775026903

`(2^((2^(n+1))%(n+1)))%(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180060

/-- `(2^((2^(n+1))%(n+1)))%(n+1)` -/
def P5928127101775026903.Spec : Prop :=
  ∀ n, (P5928127101775026903.a n : ℤ) = A180060 (n + 1)

theorem P5928127101775026903.correct : P5928127101775026903.Spec := by
  intro n
  simp only [A180060, Nat.add_sub_cancel]

end A180060

/-! ## A180060.P4902413260384552047

`A112987(n+1)%(n+1)`
-/

namespace A180060.P4902413260384552047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112987 (n + 1)) (n + 1 : ℤ)

end

end A180060.P4902413260384552047

namespace A180060

/-- `A112987(n+1)%(n+1)` -/
def P4902413260384552047.Spec : Prop :=
  ∀ n, P4902413260384552047.a n = A180060 (n + 1)

end A180060

/-! ## A180060.P8050149905770766405

`A000079(n+1-A082494(n+1))%(n+1)`
-/

namespace A180060.P8050149905770766405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 ((n + 1 : ℤ) - A082494 (n + 1)).toNat) (n + 1 : ℤ)

end

end A180060.P8050149905770766405

namespace A180060

/-- `A000079(n+1-A082494(n+1))%(n+1)` -/
def P8050149905770766405.Spec : Prop :=
  ∀ n, P8050149905770766405.a n = A180060 (n + 1)

end A180060

/-! ## A180060.P11374780729620821533

`A000079(A000079(n+1)%(n+1))%(n+1)`
-/

namespace A180060.P11374780729620821533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (Int.tmod (A000079 (n + 1)) (n + 1 : ℤ)).toNat) (n + 1 : ℤ)

end

end A180060.P11374780729620821533

namespace A180060

/-- `A000079(A000079(n+1)%(n+1))%(n+1)` -/
def P11374780729620821533.Spec : Prop :=
  ∀ n, P11374780729620821533.a n = A180060 (n + 1)

end A180060

/-!
# A180061: Numbers k such that (2^(2^k mod k) mod k) = 4.

The programs for A180061, the canonical program `A180061.P17462486290347262264` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180061 has offset 1).

The definition of A180061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180061.P17462486290347262264

`1+eq[4, A180060(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180061

/-- `1+eq[4, A180060(n+1)]` -/
def P17462486290347262264.Spec : Prop :=
  ∀ n, (P17462486290347262264.a n : ℤ) = A180061 (n + 1)

theorem P17462486290347262264.correct : P17462486290347262264.Spec := by
  intro n
  simp only [A180061, Nat.add_sub_cancel]

end A180061

/-! ## A180061.P8463696379357503093

`eq[4, A180060(A028310(n))]`
-/

namespace A180061.P8463696379357503093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180061.P8463696379357503093

namespace A180061

/-- `eq[4, A180060(A028310(n))]` -/
def P8463696379357503093.Spec : Prop :=
  ∀ n, (P8463696379357503093.a n : ℤ) = A180061 (n + 1)

end A180061

/-! ## A180061.P10415959570155340455

`A020725(eq[4, A180060(n+1)])`
-/

namespace A180061.P10415959570155340455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180061.P10415959570155340455

namespace A180061

/-- `A020725(eq[4, A180060(n+1)])` -/
def P10415959570155340455.Spec : Prop :=
  ∀ n, P10415959570155340455.a n = A180061 (n + 1)

end A180061

/-! ## A180061.P14383067528726518299

`A153152(eq[4, A180060(n+1)])`
-/

namespace A180061.P14383067528726518299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180061.P14383067528726518299

namespace A180061

/-- `A153152(eq[4, A180060(n+1)])` -/
def P14383067528726518299.Spec : Prop :=
  ∀ n, P14383067528726518299.a n = A180061 (n + 1)

end A180061

/-! ## A180061.P8471268103638971980

`eq[4, A180060(A000007(n)+n)]`
-/

namespace A180061.P8471268103638971980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180061.P8471268103638971980

namespace A180061

/-- `eq[4, A180060(A000007(n)+n)]` -/
def P8471268103638971980.Spec : Prop :=
  ∀ n, (P8471268103638971980.a n : ℤ) = A180061 (n + 1)

end A180061

/-! ## A180061.P3289051155285209918

`eq[4, A180060(A233583(n+1))]`
-/

namespace A180061.P3289051155285209918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180060 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180061.P3289051155285209918

namespace A180061

/-- `eq[4, A180060(A233583(n+1))]` -/
def P3289051155285209918.Spec : Prop :=
  ∀ n, (P3289051155285209918.a n : ℤ) = A180061 (n + 1)

end A180061

/-!
# A180062: Irregular triangle by rows derived from variants of Cartan matrices: 1's in the super and subdiagonals and 3,4,4,4,... in the main diagonal alternating with 4,4,4,...

The programs for A180062, there is no canonical definition to state claims against.
-/

/-! ## A180062.P6089683299439076759

`A180063(A091018(n))`
-/

namespace A180062.P6089683299439076759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (A091018 n).toNat

end

end A180062.P6089683299439076759

/-! ## A180062.P7485520720308573274

`A180063(A056536(n+1)-1)`
-/

namespace A180062.P7485520720308573274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (A056536 (n + 1) - 1).toNat

end

end A180062.P7485520720308573274

/-! ## A180062.P10965803765512377086

`A125077(A056536(n+1)%A094144(n+1))`
-/

namespace A180062.P10965803765512377086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125077 (Int.tmod (A056536 (n + 1)) (A094144 (n + 1))).toNat

end

end A180062.P10965803765512377086

/-! ## A180062.P2220098168430916959

`A125077(A056536(n+1))^A014963(A054567(n+1))`
-/

namespace A180062.P2220098168430916959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125077 (A056536 (n + 1)).toNat : ℚ) ^ (A014963 (A054567 (n + 1)).toNat : ℤ)

end

end A180062.P2220098168430916959

/-! ## A180062.P10912404327238407044

`A001222(A005234(n+1))*A125077(A056536(n+1))`
-/

namespace A180062.P10912404327238407044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005234 (n + 1)).toNat * A125077 (A056536 (n + 1)).toNat

end

end A180062.P10912404327238407044

/-!
# A180064: a(n) = n!/A056040(n).

The programs for A180064, the canonical program `A180064.P14840062610617339627` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180064 has offset 0).

The definition of A180064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180064.P14840062610617339627

`floor(n/2)!²`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180064

/-- `floor(n/2)!²` -/
def P14840062610617339627.Spec : Prop :=
  ∀ n, (P14840062610617339627.a n : ℤ) = A180064 n

theorem P14840062610617339627.correct : P14840062610617339627.Spec := by
  intro n
  simp only [A180064]

end A180064

/-! ## A180064.P13548480526421635734

`n!/A056040(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180064.P13548480526421635734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A056040 n : ℚ)

end

end A180064.P13548480526421635734

namespace A180064

/-- `n!/A056040(n)` -/
def P13548480526421635734.Spec : Prop :=
  ∀ n, P13548480526421635734.a n = (A180064 n : ℚ)

end A180064

/-! ## A180064.P8055017629116804272

`A000142(n)/A056040(n)`
-/

namespace A180064.P8055017629116804272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A056040 n : ℚ)

end

end A180064.P8055017629116804272

namespace A180064

/-- `A000142(n)/A056040(n)` -/
def P8055017629116804272.Spec : Prop :=
  ∀ n, P8055017629116804272.a n = (A180064 n : ℚ)

end A180064

/-! ## A180064.P7608292157445021344

`floor(n/2)!^2`
-/

namespace A180064.P7608292157445021344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A180064.P7608292157445021344

namespace A180064

/-- `floor(n/2)!^2` -/
def P7608292157445021344.Spec : Prop :=
  ∀ n, (P7608292157445021344.a n : ℤ) = A180064 n

theorem P7608292157445021344.correct : P7608292157445021344.Spec := by
  intro n
  simp only [A180064, Nat.add_sub_cancel, A180064.P7608292157445021344.a, A180064.P14840062610617339627.a, SequenceMachineLib.memo_apply]

end A180064

/-! ## A180064.P10995372929346693797

`∏[gcd(n, ceil(abs((1-n)/2)))]²`
-/

namespace A180064.P10995372929346693797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A180064.P10995372929346693797

namespace A180064

/-- `∏[gcd(n, ceil(abs((1-n)/2)))]²` -/
def P10995372929346693797.Spec : Prop :=
  ∀ n, (P10995372929346693797.a n : ℤ) = A180064 n

end A180064

/-! ## A180064.P15367957321545687850

`floor(n/2)!*floor(n/2)!`
-/

namespace A180064.P15367957321545687850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

end

end A180064.P15367957321545687850

namespace A180064

/-- `floor(n/2)!*floor(n/2)!` -/
def P15367957321545687850.Spec : Prop :=
  ∀ n, (P15367957321545687850.a n : ℤ) = A180064 n

theorem P15367957321545687850.correct : P15367957321545687850.Spec := by
  intro n
  simp only [A180064, Nat.add_sub_cancel, A180064.P15367957321545687850.a, A180064.P14840062610617339627.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180064

/-! ## A180064.P7448940342324998526

`floor(n/2)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A180064.P7448940342324998526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) / 2⌋ ^ 2 * a (n - 2)

end

end A180064.P7448940342324998526

namespace A180064

/-- `floor(n/2)²*a(n-2)` -/
def P7448940342324998526.Spec : Prop :=
  ∀ n, P7448940342324998526.a n = A180064 n

end A180064

/-! ## A180064.P8194412850965630029

`(ceil(abs((1-n)/2))!^ceil(acot(n)))²`
-/

namespace A180064.P8194412850965630029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)) ^ 2

end

end A180064.P8194412850965630029

namespace A180064

/-- `(ceil(abs((1-n)/2))!^ceil(acot(n)))²` -/
def P8194412850965630029.Spec : Prop :=
  ∀ n, P8194412850965630029.a n = (A180064 n : ℚ)

end A180064

/-! ## A180064.P8607622294697089265

`a(n-2)/floor(n/2)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A180064.P8607622294697089265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (⌊(n : ℚ) / 2⌋ : ℚ) ^ (-2 : ℤ)

end

end A180064.P8607622294697089265

namespace A180064

/-- `a(n-2)/floor(n/2)^(-2)` -/
def P8607622294697089265.Spec : Prop :=
  ∀ n, P8607622294697089265.a n = (A180064 n : ℚ)

end A180064

/-!
# A180065: Smallest strong pseudoprime to base 2 with n prime factors.

The programs for A180065, there is no canonical definition to state claims against.
-/

/-! ## A180065.P1595076033649867570

`A360184(∑[n]+2)`
-/

namespace A180065.P1595076033649867570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360184 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A180065.P1595076033649867570

/-! ## A180065.P10559568032467089285

`record[A360184(n+2)]`
-/

namespace A180065.P10559568032467089285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360184 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180065.P10559568032467089285

/-!
# A180066: Smallest prime factor of 2-strong pseudoprimes.

The programs for A180066, there is no canonical definition to state claims against.
-/

/-! ## A180066.P1533120818144598268

`A020639(A001262(n+1))`
-/

namespace A180066.P1533120818144598268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001262 (n + 1)).toNat

end

end A180066.P1533120818144598268

/-! ## A180066.P14383807079645378197

`A020639(∩[A001567(n+1), A020234(n+1)])`
-/

namespace A180066.P14383807079645378197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A180066.P14383807079645378197

/-! ## A180066.P17670367449883592357

`A020639(∩[A001567(n+1), A020258(n+1)])`
-/

namespace A180066.P17670367449883592357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A180066.P17670367449883592357

/-! ## A180066.P4093733776946873896

`A020639(∩[A006970(n+1), A020234(n+1)])`
-/

namespace A180066.P4093733776946873896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A180066.P4093733776946873896

/-!
# A180068: Number of permutations of 1..n with the sum of squared adjacent differences <= n*(n-1)/2.

The programs for A180068, there is no canonical definition to state claims against.
-/

/-! ## A180068.P16131170868270782522

`A341373(A075900(n))`
-/

namespace A180068.P16131170868270782522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341373 (A075900 n).toNat

end

end A180068.P16131170868270782522

/-! ## A180068.P16482807338231436371

`2*A196416(A002625(n))`
-/

namespace A180068.P16482807338231436371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196416 (A002625 n).toNat

end

end A180068.P16482807338231436371

/-!
# A180069: Number of permutations of 1..n with the sum of squared adjacent differences < n*(n-1)/2.

The programs for A180069, there is no canonical definition to state claims against.
-/

/-! ## A180069.P3776014440843577902

`lcm(2, A008616(A291979(n)))`
-/

namespace A180069.P3776014440843577902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A008616 (A291979 n).toNat)

end

end A180069.P3776014440843577902

/-! ## A180069.P14837124355463152924

`A164836(or(n, A167422(n)))`
-/

namespace A180069.P14837124355463152924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164836 (Int.lor (n : ℤ) (A167422 n)).toNat

end

end A180069.P14837124355463152924

/-!
# A180070: Number of permutations of {1..n} with the sum of squared adjacent differences <= n*(n+1)/2.

The programs for A180070, there is no canonical definition to state claims against.
-/

/-! ## A180070.P994431339642590083

`A340854(ceil(2^(n-1)))-lcm(n, -1%∏{e}[n, #])`
-/

namespace A180070.P994431339642590083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) : ℤ)

end

end A180070.P994431339642590083

/-! ## A180070.P6435560984404009121

`A088018(A391985(n+1))`
-/

namespace A180070.P6435560984404009121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (A391985 (n + 1)).toNat

end

end A180070.P6435560984404009121

/-! ## A180070.P16206691663670619352

`A225530(2*A052960(n))`
-/

namespace A180070.P16206691663670619352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (2 * A052960 n).toNat

end

end A180070.P16206691663670619352

/-!
# A180072: Number of permutations of 1..n with the sum of squared adjacent differences <= (n-1)*n*(n+1)/6.

The programs for A180072, there is no canonical definition to state claims against.
-/

/-! ## A180072.P10082886682524005811

`A329401(floor((ϕ^n)²-n))`
-/

namespace A180072.P10082886682524005811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329401 ⌊(Real.goldenRatio ^ n) ^ 2 - (n : ℝ)⌋.toNat

end

end A180072.P10082886682524005811

/-!
# A180073: Number of permutations of 1..n with the sum of squared adjacent differences < (n-1)*n*(n+1)/6.

The programs for A180073, there is no canonical definition to state claims against.
-/

/-! ## A180073.P1238728426248536088

`A087086(a(n-1)+4)` with `a(0)=0, a(1)=2`
-/

namespace A180073.P1238728426248536088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A087086 (a (n - 1) + 4).toNat

end

end A180073.P1238728426248536088

/-!
# A180074: Squarefree semiprimes s=p*q, p<q, such that 2^s mod s = 2^p.

The programs for A180074, there is no canonical definition to state claims against.
-/

/-! ## A180074.P7211153066959850111

`A162730(A004830(n+1)+1)`
-/

namespace A180074.P7211153066959850111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (A004830 (n + 1) + 1).toNat

end

end A180074.P7211153066959850111

/-! ## A180074.P2561913661734098296

`A162730(comp[A255186(n)-∑[n]])`
-/

namespace A180074.P2561913661734098296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A180074.P2561913661734098296

/-! ## A180074.P6167672869693585096

`A162730(comp[A050535(n+4)]+1)`
-/

namespace A180074.P6167672869693585096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050535 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A180074.P6167672869693585096

/-! ## A180074.P14383844341401882788

`∩[A071941(n+1), A162730(n+1)]`
-/

namespace A180074.P14383844341401882788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180074.P14383844341401882788

/-! ## A180074.P1310480047348672714

`∩[A129492(n+1), A162730(n+1)]`
-/

namespace A180074.P1310480047348672714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180074.P1310480047348672714

/-! ## A180074.P16148346262152302278

`∩[A162730(n+1), A192506(n+1)]`
-/

namespace A180074.P16148346262152302278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180074.P16148346262152302278

/-! ## A180074.P8503580123268252183

`∩[A162730(n+1), A192607(n+1)]`
-/

namespace A180074.P8503580123268252183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180074.P8503580123268252183

/-!
# A180075: If A015910(m) is a power of 2, append log_2(A015910(m)) to the sequence.

The programs for A180075, there is no canonical definition to state claims against.
-/

/-! ## A180075.P970355647074281107

`A140361(p?[A105857((2^(n+1))%(n+1))])`
-/

namespace A180075.P970355647074281107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105857 (2 ^ (n + 1) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180075.P970355647074281107

/-! ## A180075.P5047146182730452579

`A140361(p?[A105857(A015910(n+1))])`
-/

namespace A180075.P5047146182730452579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105857 (A015910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180075.P5047146182730452579

/-! ## A180075.P8024297033310933831

`A193820(p?[A260443(A015910(n+1))])`
-/

namespace A180075.P8024297033310933831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A015910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A180075.P8024297033310933831

/-! ## A180075.P2330199301069254297

`val(A317105(A285290(n)), 2)`
-/

namespace A180075.P2330199301069254297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317105 (A285290 n).toNat).toNat 2

end

end A180075.P2330199301069254297

/-! ## A180075.P2220187818133791084

`A054390(A161435(ceil(10^(n/4)))+1+n+n)`
-/

namespace A180075.P2220187818133791084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A161435 ⌈(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat + 1 + (n : ℤ) + (n : ℤ)).toNat

end

end A180075.P2220187818133791084

/-!
# A180076: a(n+1) = if it exists, smallest number not occurring earlier that is contained in binary representation of a(n), otherwise: a(n+1) = 3*a(n)+1; a(0) = 0.

The programs for A180076, there is no canonical definition to state claims against.
-/

/-! ## A180076.P13049241147689790467

`A180077(A180078(n))`
-/

namespace A180076.P13049241147689790467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180077 (A180078 n).toNat

end

end A180076.P13049241147689790467

/-!
# A180077: Inverse permutation to A180076.

The programs for A180077, there is no canonical definition to state claims against.
-/

/-! ## A180077.P3738911564251003443

`A180076(A180079(n))`
-/

namespace A180077.P3738911564251003443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180076 (A180079 n).toNat

end

end A180077.P3738911564251003443

/-!
# A180078: A180076(A180076(n)).

The programs for A180078, there is no canonical definition to state claims against.
-/

/-! ## A180078.P6113647095049398737

`A180076(A180076(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180078.P6113647095049398737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180076 (A180076 n).toNat

end

end A180078.P6113647095049398737

/-!
# A180079: A180077(A180077(n)).

The programs for A180079, there is no canonical definition to state claims against.
-/

/-! ## A180079.P5869405029775908733

`A180077(A180077(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180079.P5869405029775908733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180077 (A180077 n).toNat

end

end A180079.P5869405029775908733

/-!
# A180080: Record values in A180076.

The programs for A180080, there is no canonical definition to state claims against.
-/

/-! ## A180080.P12515103057940118265

`record[A180076(n)]`
-/

namespace A180080.P12515103057940118265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180080.P12515103057940118265

/-! ## A180080.P5600313567867936408

`A180076(A180081(n+1))`
-/

namespace A180080.P5600313567867936408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180076 (A180081 (n + 1)).toNat

end

end A180080.P5600313567867936408

/-! ## A180080.P17302809362961396978

`record[A180077(A180078(n))]`
-/

namespace A180080.P17302809362961396978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180077 (A180078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180080.P17302809362961396978

/-! ## A180080.P13300579099037595128

`A010442(A263132(n+1))`
-/

namespace A180080.P13300579099037595128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010442 (A263132 (n + 1)).toNat

end

end A180080.P13300579099037595128

/-! ## A180080.P920455516743102971

`lt[A298872(A180077(n)), A123384(2*n+1)]`
-/

namespace A180080.P920455516743102971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298872 (A180077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180080.P920455516743102971

/-!
# A180081: Where record values occur in A180076.

The programs for A180081, there is no canonical definition to state claims against.
-/

/-! ## A180081.P1812004399102448607

`A180077(record[A180076(n)])`
-/

namespace A180081.P1812004399102448607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180081.P1812004399102448607

/-! ## A180081.P2082164141850143207

`A180077(A180080(n+1))`
-/

namespace A180081.P2082164141850143207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180077 (A180080 (n + 1)).toNat

end

end A180081.P2082164141850143207

/-! ## A180081.P8237300462562383208

`eq[A035103(A216377(n+2)), A255852(n)]`
-/

namespace A180081.P8237300462562383208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A216377 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180081.P8237300462562383208

/-! ## A180081.P17492169605666441907

`lt[A233761(2*(n+1)), A194119(A074473(n+1))]`
-/

namespace A180081.P17492169605666441907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233761 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 (A074473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180081.P17492169605666441907

/-! ## A180081.P8517044982215963326

`lt[A095059(n+1), A000290(A175506(3*n+2))]`
-/

namespace A180081.P8517044982215963326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A175506 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180081.P8517044982215963326

/-!
# A180082: Semiprime centered cube numbers: m^3 + (m+1)^3.

The programs for A180082, there is no canonical definition to state claims against.
-/

/-! ## A180082.P11035255474484183973

`A118939(n+1)*A163418(n+1)`
-/

namespace A180082.P11035255474484183973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118939 (n + 1) * A163418 (n + 1)

end

end A180082.P11035255474484183973

/-! ## A180082.P2861386116390675366

`p?[A088503(n+1)]*A163418(n+1)`
-/

namespace A180082.P2861386116390675366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A163418 (n + 1)

end

end A180082.P2861386116390675366

/-! ## A180082.P16819246746492066653

`record[A002383(n+1)*A020639(A088503(n+1))]`
-/

namespace A180082.P16819246746492066653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1) * A020639 (A088503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180082.P16819246746492066653

/-! ## A180082.P12544980242606243844

`A005898(root(A240859(n+1), 3))`
-/

namespace A180082.P12544980242606243844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (SequenceMachineLib.roundAway ((A240859 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A180082.P12544980242606243844

/-! ## A180082.P9590700228056003341

`A005898(floor(sqrt(A163418(n+1))))`
-/

namespace A180082.P9590700228056003341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (Int.sqrt (A163418 (n + 1))).toNat

end

end A180082.P9590700228056003341

/-! ## A180082.P11522126190858871474

`A005898(A249122(p?[A088503(n+1)]))`
-/

namespace A180082.P11522126190858871474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (A249122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A180082.P11522126190858871474

/-! ## A180082.P14340241082377002663

`A213389(A118939(n+1))`
-/

namespace A180082.P14340241082377002663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (A118939 (n + 1)).toNat

end

end A180082.P14340241082377002663

/-! ## A180082.P7056025360273402365

`A079908(p?[A088503(n+1)])/4`
-/

namespace A180082.P7056025360273402365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 4

end

end A180082.P7056025360273402365

/-! ## A180082.P17493860864453285533

`A005898(A004524(p?[A088503(n+1)]))`
-/

namespace A180082.P17493860864453285533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A180082.P17493860864453285533

/-! ## A180082.P15565850857008159501

`record[A014963(A005408(n+1))*A081256(n+2)]`
-/

namespace A180082.P15565850857008159501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005408 (n + 1)).toNat * A081256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180082.P15565850857008159501

/-!
# A180083: Smallest k such that digit sum of k > previous term.

The programs for A180083, there is no canonical definition to state claims against.
-/

/-! ## A180083.P3387250523507950319

`A051885(a(n-1)+1)` with `a(0)=0`
-/

namespace A180083.P3387250523507950319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051885 (a (n - 1) + 1).toNat

end

end A180083.P3387250523507950319

/-! ## A180083.P12079365377345808029

`A226637(A101318(n+1))`
-/

namespace A180083.P12079365377345808029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226637 (A101318 (n + 1)).toNat

end

end A180083.P12079365377345808029

/-! ## A180083.P8361703521114174017

`A051885(A247807(n+1))%A111871(3*(n+1))`
-/

namespace A180083.P8361703521114174017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 (A247807 (n + 1)).toNat) (A111871 (3 * (n + 1)))

end

end A180083.P8361703521114174017

/-! ## A180083.P638869275723714400

`A051885(A032945(n+1)%A095062(3*n+2))`
-/

namespace A180083.P638869275723714400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (Int.tmod (A032945 (n + 1)) (A095062 (3 * n + 2))).toNat

end

end A180083.P638869275723714400

/-! ## A180083.P14973602636732830986

`A051885(A032945(n+1))%A203569(A296898(n+3))`
-/

namespace A180083.P14973602636732830986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 (A032945 (n + 1)).toNat) (A203569 (A296898 (n + 3)).toNat)

end

end A180083.P14973602636732830986

/-!
# A180084: Next smallest n such that digit sum of n >= previous term.

The programs for A180084, there is no canonical definition to state claims against.
-/

/-! ## A180084.P8421042414913040109

`∑[gcd(9, A141840(n+1))²]`
-/

namespace A180084.P8421042414913040109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A141840 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180084.P8421042414913040109

/-! ## A180084.P3509487705518609575

`A276347(n+1)+A127886(A056040(n))`
-/

namespace A180084.P3509487705518609575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276347 (n + 1) + A127886 (A056040 n).toNat

end

end A180084.P3509487705518609575

/-! ## A180084.P17257534098107852729

`A330982(A034838(A330982(A007602(A342650(n+1)))))`
-/

namespace A180084.P17257534098107852729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (A034838 (A330982 (A007602 (A342650 (n + 1)).toNat).toNat).toNat).toNat

end

end A180084.P17257534098107852729

/-! ## A180084.P5659352869057528978

`A287928(A362038(A287928(A362038(A362038(n+1)))))`
-/

namespace A180084.P5659352869057528978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287928 (A362038 (A287928 (A362038 (A362038 (n + 1)).toNat).toNat).toNat).toNat

end

end A180084.P5659352869057528978

/-!
# A180086: Sum of n and floor of each previous term divided by its distance from n.

The programs for A180086, there is no canonical definition to state claims against.
-/

/-! ## A180086.P4026739197381446843

`A100482(n+3)-1`
-/

namespace A180086.P4026739197381446843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100482 (n + 3) - 1

end

end A180086.P4026739197381446843

/-! ## A180086.P11143104789390579944

`∑[abs(Δ[A100482(n+2)])]`
-/

namespace A180086.P11143104789390579944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100482 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180086.P11143104789390579944

/-! ## A180086.P7107570174244297121

`record[A100482(n+1)+A057428(n)]`
-/

namespace A180086.P7107570174244297121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100482 (n + 1) + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180086.P7107570174244297121

/-! ## A180086.P109976452351744920

`A153881(n+2)+A100482(n+3)`
-/

namespace A180086.P109976452351744920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A100482 (n + 3)

end

end A180086.P109976452351744920

/-! ## A180086.P17194972749217408023

`A292461(A014963(4*n+2))+A100482(n+3)`
-/

namespace A180086.P17194972749217408023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (A014963 (4 * n + 2)).toNat + A100482 (n + 3)

end

end A180086.P17194972749217408023

/-!
# A180087: Upper bound for the determinant of a matrix whose entries are a permutation of 1, ..., n^2.

The programs for A180087, the canonical program `A180087.P8460998414860735115` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180087 has offset 1).

The definition of A180087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180087.P8460998414860735115

`floor(sqrt(3*(((n+1)^5+(n+1)^4+(n+1)^3+(n+1)²)/12)^(n+1)*((n+1)²+1)/(n+2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180087

/-- `floor(sqrt(3*(((n+1)^5+(n+1)^4+(n+1)^3+(n+1)²)/12)^(n+1)*((n+1)²+1)/(n+2)))` -/
def P8460998414860735115.Spec : Prop :=
  ∀ n, P8460998414860735115.a n = A180087 (n + 1)

theorem P8460998414860735115.correct : P8460998414860735115.Spec := by
  intro n
  simp only [A180087, Nat.add_sub_cancel]

end A180087

/-!
# A180088: Primes which are the sum of three distinct positive cubes in two or more distinct ways.

The programs for A180088, there is no canonical definition to state claims against.
-/

/-! ## A180088.P9979624664112565961

`p?[A024974(n+1)]`
-/

namespace A180088.P9979624664112565961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A180088.P9979624664112565961

/-! ## A180088.P7270687812458752258

`∩[A007490(n+1), A024974(n+1)]`
-/

namespace A180088.P7270687812458752258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180088.P7270687812458752258

/-! ## A180088.P6845439261801097523

`∩[A024974(n+1), A122723(n+1)]`
-/

namespace A180088.P6845439261801097523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180088.P6845439261801097523

/-! ## A180088.P7215626573547233156

`filter[A024974(n+1), A010051(#)]`
-/

namespace A180088.P7215626573547233156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A180088.P7215626573547233156

/-! ## A180088.P18263050464596821185

`record[A006530(A024974(2*n-n+1))]`
-/

namespace A180088.P18263050464596821185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024974 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180088.P18263050464596821185

/-! ## A180088.P13976184916553372568

`A000027(record[A020639(A024974(n+1))])`
-/

namespace A180088.P13976184916553372568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180088.P13976184916553372568

/-! ## A180088.P7318134666072748865

`record[A000007(n+1)+A020639(A024974(n+1))]`
-/

namespace A180088.P7318134666072748865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A020639 (A024974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180088.P7318134666072748865

/-! ## A180088.P15307653210556026869

`record[A006530(A024974(n+1)%A001235(n+1))]`
-/

namespace A180088.P15307653210556026869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A024974 (n + 1)) (A001235 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180088.P15307653210556026869

/-! ## A180088.P7378147345624106637

`record[A020639(A024974(n+1))%A025397(n+1)]`
-/

namespace A180088.P7378147345624106637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A024974 (n + 1)).toNat) (A025397 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180088.P7378147345624106637

/-! ## A180088.P9287385996986217697

`record[A020639(A024974(n+1))]+A008683(4*(n+1))`
-/

namespace A180088.P9287385996986217697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (4 * (n + 1))

end

end A180088.P9287385996986217697

/-! ## A180088.P8024970805559127559

`A000040(n+2)%2*record[A020639(A024974(n+1))]`
-/

namespace A180088.P8024970805559127559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180088.P8024970805559127559

/-!
# A180089: Semiprimes which are the sum of three distinct positive cubes in two or more distinct ways.

The programs for A180089, there is no canonical definition to state claims against.
-/

/-! ## A180089.P8082417749256068498

`filter[A024974(n+1), A064911(#)]`
-/

namespace A180089.P8082417749256068498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A180089.P8082417749256068498

/-! ## A180089.P12695657194879969335

`filter[A024974(n+1), A280710(#)]`
-/

namespace A180089.P12695657194879969335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A180089.P12695657194879969335

/-! ## A180089.P8288278855706954521

`filter[A024974(n+1), A383575(#)]`
-/

namespace A180089.P8288278855706954521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A180089.P8288278855706954521

/-! ## A180089.P16895245181172705087

`filter[A025400(n+1), A383575(#)]`
-/

namespace A180089.P16895245181172705087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A180089.P16895245181172705087

/-!
# A180091: a(m,n) is the number of ways to split two strings of length m and n, respectively, into the same number of nonempty parts such that at least one of the corresponding parts has length 1.

The programs for A180091, there is no canonical definition to state claims against.
-/

/-! ## A180091.P14001578040053014997

`A047080(A245300(n))`
-/

namespace A180091.P14001578040053014997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A245300 n).toNat

end

end A180091.P14001578040053014997

/-! ## A180091.P11246469134520874762

`or(A067337(n), A102683(A000045(n+3)))`
-/

namespace A180091.P11246469134520874762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067337 n) (A102683 (A000045 (n + 3)).toNat)

end

end A180091.P11246469134520874762

/-! ## A180091.P12635226683246957015

`or(A067337(n), A371931(A000055(n)))`
-/

namespace A180091.P12635226683246957015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067337 n) (A371931 (A000055 n).toNat)

end

end A180091.P12635226683246957015

/-! ## A180091.P18136646486208787793

`A004001(A201377(n)%A090669(2*(n+2)))`
-/

namespace A180091.P18136646486208787793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.tmod (A201377 n) (A090669 (2 * (n + 2)))).toNat

end

end A180091.P18136646486208787793

/-! ## A180091.P12209245855964219421

`or(A067337(n), A083919(A051682(3*n+4)))`
-/

namespace A180091.P12209245855964219421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067337 n) (A083919 (A051682 (3 * n + 4)).toNat)

end

end A180091.P12209245855964219421

/-!
# A180093: Arises in calculating the maximum gap in (inverse) cyclotomic polynomials.

The programs for A180093, there is no canonical definition to state claims against.
-/

/-! ## A180093.P2265313269625145682

`A339658(A170828(n)+1)`
-/

namespace A180093.P2265313269625145682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (A170828 n + 1).toNat

end

end A180093.P2265313269625145682

/-!
# A180094: Number of steps to reach 0 or 1, starting with n and applying the map k -> (number of 1's in binary expansion of k) repeatedly.

The programs for A180094, the canonical program `A180094.P6183651990917072129` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180094 has offset 0).

The definition of A180094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180094.P6183651990917072129

`a(A000120(n))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180094

/-- `a(A000120(n))+1` -/
def P6183651990917072129.Spec : Prop :=
  ∀ n, (P6183651990917072129.a n : ℤ) = A180094 n

theorem P6183651990917072129.correct : P6183651990917072129.Spec := by
  intro n
  simp only [A180094]

end A180094

/-! ## A180094.P6115365407495981428

`A000031(a(A000120(n)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A180094.P6115365407495981428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  A000031 (a (A000120 n).toNat).toNat

end

end A180094.P6115365407495981428

namespace A180094

/-- `A000031(a(A000120(n)))` -/
def P6115365407495981428.Spec : Prop :=
  ∀ n, P6115365407495981428.a n = A180094 n

end A180094

/-! ## A180094.P7911563692664756423

`a(A007814(A001316(n)))+1` with `a(0)=0, a(1)=0`
-/

namespace A180094.P7911563692664756423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A007814 (A001316 n).toNat).toNat + 1

end

end A180094.P7911563692664756423

namespace A180094

/-- `a(A007814(A001316(n)))+1` -/
def P7911563692664756423.Spec : Prop :=
  ∀ n, (P7911563692664756423.a n : ℤ) = A180094 n

end A180094

/-! ## A180094.P11380743755364557095

`A008619(2*a(A000120(n)))` with `a(0)=0, a(1)=0`
-/

namespace A180094.P11380743755364557095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A008619 (2 * a (A000120 n).toNat).toNat

end

end A180094.P11380743755364557095

namespace A180094

/-- `A008619(2*a(A000120(n)))` -/
def P11380743755364557095.Spec : Prop :=
  ∀ n, P11380743755364557095.a n = A180094 n

end A180094

/-! ## A180094.P9582045055134840853

`A078627(A004275(n+1)-n)-1`
-/

namespace A180094.P9582045055134840853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078627 (A004275 (n + 1) - (n : ℤ)).toNat - 1

end

end A180094.P9582045055134840853

namespace A180094

/-- `A078627(A004275(n+1)-n)-1` -/
def P9582045055134840853.Spec : Prop :=
  ∀ n, P9582045055134840853.a n = A180094 n

end A180094

/-! ## A180094.P2741290682271311080

`a(A165277(A062879(n+1)))+1` with `a(0)=0, a(1)=0`
-/

namespace A180094.P2741290682271311080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A165277 (A062879 (n + 1)).toNat).toNat + 1

end

end A180094.P2741290682271311080

namespace A180094

/-- `a(A165277(A062879(n+1)))+1` -/
def P2741290682271311080.Spec : Prop :=
  ∀ n, (P2741290682271311080.a n : ℤ) = A180094 n

end A180094

/-! ## A180094.P16773748054537451345

`a(A001222(A019565(n)))+1` with `a(0)=0, a(1)=0`
-/

namespace A180094.P16773748054537451345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A001222 (A019565 n).toNat).toNat + 1

end

end A180094.P16773748054537451345

namespace A180094

/-- `a(A001222(A019565(n)))+1` -/
def P16773748054537451345.Spec : Prop :=
  ∀ n, (P16773748054537451345.a n : ℤ) = A180094 n

end A180094

/-!
# A180095: a(n) = smallest number k such that three consecutive prime numbers prime(n), prime(n+1) and prime(n+2) are divisors of k, k+1 and k+2 respectively.

The programs for A180095, there is no canonical definition to state claims against.
-/

/-! ## A180095.P4575447350794165622

`A180096(n+1)%A046301(n+1)`
-/

namespace A180095.P4575447350794165622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180096 (n + 1)) (A046301 (n + 1))

end

end A180095.P4575447350794165622

/-! ## A180095.P2413330736558201539

`A180159(n+1)%A046301(n+1)`
-/

namespace A180095.P2413330736558201539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180159 (n + 1)) (A046301 (n + 1))

end

end A180095.P2413330736558201539

/-! ## A180095.P13647259373184346980

`A078455(n+2)-1`
-/

namespace A180095.P13647259373184346980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078455 (n + 2) - 1

end

end A180095.P13647259373184346980

/-! ## A180095.P10805198298637021550

`A142720(2*n+1)+A078455(n+2)`
-/

namespace A180095.P10805198298637021550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142720 (2 * n + 1) + A078455 (n + 2)

end

end A180095.P10805198298637021550

/-! ## A180095.P8512279374032566751

`A180100(n+1)%A046301(n+1)`
-/

namespace A180095.P8512279374032566751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180100 (n + 1)) (A046301 (n + 1))

end

end A180095.P8512279374032566751

/-!
# A180096: a(n) is the smallest number k such that four consecutive prime numbers prime(n), prime(n+1), prime(n+2) and prime(n+3) are divisors of k, k+1, k+2 and k+3 respectively.

The programs for A180096, there is no canonical definition to state claims against.
-/

/-! ## A180096.P2054861275567397273

`A180159(n+1)%A046302(n+1)`
-/

namespace A180096.P2054861275567397273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180159 (n + 1)) (A046302 (n + 1))

end

end A180096.P2054861275567397273

/-! ## A180096.P15931917446440314541

`A180100(n+1)%A046302(n+1)`
-/

namespace A180096.P15931917446440314541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180100 (n + 1)) (A046302 (n + 1))

end

end A180096.P15931917446440314541

/-!
# A180097: Numbers k such that sigma(k) is powerful.

The programs for A180097, the canonical program `A180097.P10343464858030569198` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180097 has offset 1).

The definition of A180097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180097.P14308586541211178347

`eq[1, A055231(A000203(n+1))]+1`
-/

namespace A180097.P14308586541211178347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180097.P14308586541211178347

namespace A180097

/-- `eq[1, A055231(A000203(n+1))]+1` -/
def P14308586541211178347.Spec : Prop :=
  ∀ n, (P14308586541211178347.a n : ℤ) = A180097 (n + 1)

end A180097

/-! ## A180097.P14571238242853791432

`eq[1, A055231(A245092(2*n+1))]+1`
-/

namespace A180097.P14571238242853791432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180097.P14571238242853791432

namespace A180097

/-- `eq[1, A055231(A245092(2*n+1))]+1` -/
def P14571238242853791432.Spec : Prop :=
  ∀ n, (P14571238242853791432.a n : ℤ) = A180097 (n + 1)

end A180097

/-! ## A180097.P10343464858030569198

`record[A000027(n+1)*A112526(A000203(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180097

/-- `record[A000027(n+1)*A112526(A000203(n+1))]` -/
def P10343464858030569198.Spec : Prop :=
  ∀ n, P10343464858030569198.a n = A180097 (n + 1)

theorem P10343464858030569198.correct : P10343464858030569198.Spec := by
  intro n
  simp only [A180097, Nat.add_sub_cancel]

end A180097

/-! ## A180097.P9885262057066102550

`lt[A000007(n+1), A112526(A000203(n+1))]+1`
-/

namespace A180097.P9885262057066102550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A180097.P9885262057066102550

namespace A180097

/-- `lt[A000007(n+1), A112526(A000203(n+1))]+1` -/
def P9885262057066102550.Spec : Prop :=
  ∀ n, (P9885262057066102550.a n : ℤ) = A180097 (n + 1)

end A180097

/-! ## A180097.P18312583799886223444

`record[A008619(2*n+1)*A112526(A000203(n+1))]`
-/

namespace A180097.P18312583799886223444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 1) * A112526 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180097.P18312583799886223444

namespace A180097

/-- `record[A008619(2*n+1)*A112526(A000203(n+1))]` -/
def P18312583799886223444.Spec : Prop :=
  ∀ n, P18312583799886223444.a n = A180097 (n + 1)

end A180097

/-!
# A180098: Sigma(A180097(n)), sum of divisors of A180097(n), numbers n such that sigma(n) is powerful.

The programs for A180098, the canonical program `A180098.P1085840347527911891` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180098 has offset 1).

The definition of A180098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180098.P1085840347527911891

`A000203(A180097(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180098

/-- `A000203(A180097(n+1))` -/
def P1085840347527911891.Spec : Prop :=
  ∀ n, P1085840347527911891.a n = A180098 (n + 1)

theorem P1085840347527911891.correct : P1085840347527911891.Spec := by
  intro n
  simp only [A180098, Nat.add_sub_cancel]

end A180098

/-! ## A180098.P17400288145679362111

`A387726(A180097(2*n+1-n))`
-/

namespace A180098.P17400288145679362111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (A180097 (2 * n + 1 - n)).toNat

end

end A180098.P17400288145679362111

namespace A180098

/-- `A387726(A180097(2*n+1-n))` -/
def P17400288145679362111.Spec : Prop :=
  ∀ n, P17400288145679362111.a n = A180098 (n + 1)

end A180098

/-! ## A180098.P7575477253553284874

`A064987(A180097(n+1))/A180097(A000027(n+1))`
-/

namespace A180098.P7575477253553284874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (A180097 (n + 1)).toNat : ℚ) / (A180097 (A000027 (n + 1)).toNat : ℚ)

end

end A180098.P7575477253553284874

namespace A180098

/-- `A064987(A180097(n+1))/A180097(A000027(n+1))` -/
def P7575477253553284874.Spec : Prop :=
  ∀ n, P7575477253553284874.a n = (A180098 (n + 1) : ℚ)

end A180098

/-! ## A180098.P2777330245871816847

`A326065(2*A180097(n+1))`
-/

namespace A180098.P2777330245871816847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A180097 (n + 1)).toNat

end

end A180098.P2777330245871816847

namespace A180098

/-- `A326065(2*A180097(n+1))` -/
def P2777330245871816847.Spec : Prop :=
  ∀ n, P2777330245871816847.a n = A180098 (n + 1)

end A180098

/-! ## A180098.P10340743233338980234

`∑{d}[eq[1, A055231(A000203(n+1))]+1, #]`
-/

namespace A180098.P10340743233338980234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000203 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A180098.P10340743233338980234

namespace A180098

/-- `∑{d}[eq[1, A055231(A000203(n+1))]+1, #]` -/
def P10340743233338980234.Spec : Prop :=
  ∀ n, (P10340743233338980234.a n : ℤ) = A180098 (n + 1)

end A180098

